
# react-native-app-metadata

## Getting started

`$ npm install react-native-app-metadata --save`

### Mostly automatic installation

`$ react-native link react-native-app-metadata`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-app-metadata` and add `RNAppMetadata.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAppMetadata.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import io.wj.rnappmetadata.RNAppMetadataPackage;` to the imports at the top of the file
  - Add `new RNAppMetadataPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-app-metadata'
  	project(':react-native-app-metadata').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-app-metadata/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-app-metadata')
  	```


## Usage
```javascript
import AppMetadata from 'react-native-app-metadata';

// constant
console.log("     Version: " + AppMetadata.Version);
console.log("ShortVersion: " + AppMetadata.ShortVersion);
console.log("    BundleId: " + AppMetadata.BundleIdentifier);
console.log("  BundleName: " + AppMetadata.BundleName);

// method: getAppMetadataBy
AppMetadata.getAppMetadataBy("somekey")
.then((value)=>{
    console.log(value);
})
.catch((err)=>{
    console.log(err);
});
```
  
