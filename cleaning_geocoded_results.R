for(i in 1:length(geocode_results)){
  dynamic_j<-length(geocode_results[[i]]$results[[1]]$address_components)
  for(j in 1:dynamic_j){
    if(length(geocode_results[[i]]$results[[1]]$address_components[[j]]$types)>2){
      geocode_results[[i]]$results[[1]]$address_components[[j]]$types<-geocode_results[[i]]$results[[1]]$address_components[[j]]$types[(length(geocode_results[[i]]$results[[1]]$address_components[[j]]$types)-1):length(geocode_results[[i]]$results[[1]]$address_components[[j]]$types)]
    }
  }
  if(length(geocode_results[[i]]$results[[1]]$types)>2){
    geocode_results[[i]]$results[[1]]$types<-geocode_results[[i]]$results[[1]]$types[(length(geocode_results[[i]]$results[[1]]$types)-1):length(geocode_results[[i]]$results[[1]]$types)]
  }
  if(length(geocode_results[[i]]$results[[1]]$types)<1){
    geocode_results[[i]]$results[[1]]$types<-"Unknown"
  }
  dynamic_k<-length(geocode_results[[i]]$results[[1]]$address_components)
  for(k in 1:dynamic_k){
    if(length(geocode_results[[i]]$results[[1]]$address_components[[k]]$types)<1){
      geocode_results[[i]]$results[[1]]$address_components[[k]]$types<-"Unknown"
    }
  }
  if(length(geocode_results[[i]]$results[[1]]$postcode_localities)>2){
    geocode_results[[i]]$results[[1]]$postcode_localities<-geocode_results[[i]]$results[[1]]$postcode_localities[(length(geocode_results[[i]]$results[[1]]$postcode_localities)-1):length(geocode_results[[i]]$results[[1]]$postcode_localities)]
  }
}
