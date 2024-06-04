function run(tunnelOriginator, resourceTestersPhones, channelJs) {
    try {
      if (channelJs == "blip") {
        return true;
      }
  
      const defaultTesterPhone = {
        adriano: "552481117731",
        adriano: "558182740129",
        anderson: "553191140265",
        felipe: "555195532447",
        flavio: "553181139287",
        henrique: "551993758497",
        ias: "553195464170",
        jean: "558196024492",
        pedro: "557998794942",
        nikael: "553798315740",
        letBusiness: "553184443312",
        letPersonal: "553183364676",
        roscoe: "553182698734",
        ste: "553194115690",
        thiagoPersonal: "553198558575",
        thiagoBusiness: "553184240423",
        patrick: "553190720501",
        agatha: "558182740129"
      };
  
      const allResourceTesters = JSON.parse(resourceTestersPhones);
  
      const allTesterPhone = { ...defaultTesterPhone, ...allResourceTesters };
  
      const allTestersNumbers = verifyIsValidPhoneNumber(allTesterPhone);
  
      let tunnelOriginatorNumber = tunnelOriginator.split("@")[0].slice(2);
  
      if (tunnelOriginatorNumber.length == 11)
        tunnelOriginatorNumber = tunnelOriginatorNumber.slice(0, 2) + tunnelOriginatorNumber.slice(3);
  
      const isInternTester = allTestersNumbers.includes(tunnelOriginatorNumber);
  
      if (isInternTester) return true;
  
      return false;
    } catch (e) {
      return false;
    }
  }
  
  function verifyIsValidPhoneNumber(allNumbers) {
    const allValidNumbersForTunnelOriginator = Object.values(allNumbers).reduce(
      (acc, everyPhoneNumber) => {
        if (everyPhoneNumber.length == 10) acc.push(everyPhoneNumber);
        if (everyPhoneNumber.length == 11)
          acc.push(`${everyPhoneNumber.slice(0, 2)}${everyPhoneNumber.slice(3)}`);
        if (everyPhoneNumber.length == 12) acc.push(everyPhoneNumber.slice(2));
        return acc;
      },
      []
    );
  
    return allValidNumbersForTunnelOriginator;
  }