import React from 'react';
import { requireNativeComponent } from 'react-native';
 
const RCTCustomView = requireNativeComponent('RCTMyCustomView', MyCustomView, {});
 
class MyCustomView extends React.PureComponent {
    _onClick = (event) => {
        if (!this.props.onClick) {
            return;
        }
 
        // process raw event
        this.props.onClick(event.nativeEvent);
    }
 
    render() {
        return <RCTCustomView {...this.props} onClick={this._onClick}/>
    }
}

export default MyCustomView;