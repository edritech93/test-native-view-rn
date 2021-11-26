import React, {useState} from 'react';
import {View, Text, StyleSheet} from 'react-native';
import MyCustomView from './MyCustomView.js';

export default function App(props) {
  const [status, setStatus] = useState(false);

  const _onClick = event => {
    alert('Received params: ' + JSON.stringify(event));
    setStatus(!status);
  };

  return (
    <View style={styles.container}>
      <Text> App </Text>
      <MyCustomView
        status={status}
        onClick={_onClick}
        style={{width: 100, height: 100}}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
