- Requires Java 8
- optionally prettier and prettier-plugin-apex 
  
- Checkout 'apex-for-zuora'
- Build from source `./mvnw clean install -DskipTests`
- Run `java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate --type-mappings=AnyType=String --additional-properties classPrefix=UNDO -i keylight/swagger3_only_needed_endpoints_and_models.yaml -g apex -o out/zuora_client`
- Optionally run `prettier --write out/zuora_client/force-app/main/default/classes/*.cls`
- Compare with your favorite diff tool to the code already in the undo project 
