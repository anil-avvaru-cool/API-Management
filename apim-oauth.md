# OAuth

## Backend 
apim-resource - Backend
Expose an API, copy URI, Add APP Roles

## Client
apim-user
API permissions
Client secret

## Oauth policy
Design > InBound policy
Configure Validate-Jwt policy for the api

```xml
<validate-jwt header-name="Authorization" require-scheme="Bearer">
  <openid-config url="https://login.microsoftonline.com/29ad1eb0-dd56-4db3-8cb8-0f4e138d1537/v2.0/.well-known/openid-configuration" />    
   <required-claims>
    <claim name="aud" match="any">
      <value>{{appScope}}</value>
      <!-- APIM > Name Value Collection > appScope value=api://63109f93-6abd-4722-a10e-ab72471028e0 -->
    </claim>
    <!-- if there are multiple possible allowed claim, then add additional claim elements -->
  </required-claims>
</validate-jwt>
```

## Generate token with postman



