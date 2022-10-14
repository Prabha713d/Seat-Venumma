//the class currently storing the data.

class BuildingDetailsStore {
  final details = [
    {
      'Name': 'Electrical Sciences Block',
      'Rooms': {
        'Foyer': [10, 100, "12:47"],
        'Food Court': [10, 100, "12:47"],
        'Gazebo': [10, 100, "12:47"],
      },
      'Usage': [
        'Study',
        'Meetings',
      ],
    },
    {
      'Name': 'Classroom Complex',
      'Rooms': {
        'CRC101': [10, 100, "12:47"],
        'CRC102': [10, 100, "12:47"],
        'CRC103': [10, 100, "12:47"],
        'CRC201': [10, 100, "12:47"],
        'CRC202': [10, 100, "12:47"],
        'CRC203': [10, 100, "12:47"],
      },
      'Usage': [
        'Study',
        'Events',
      ],
    },
    {
      'Name': 'Humanity Sciences Block',
      'Rooms': {
        'Gandhi Hall': [10, 100, "12:47"],
        'Central Lecture Theatre': [10, 100, "12:47"],
        'HSB133': [10, 100, "12:47"],
      },
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Ramanujan Block',
      'Rooms': {
        'RJN101': [10, 100, "12:47"],
        'RJN102': [10, 100, "12:47"],
        'RJN201': [10, 100, "12:47"],
        'RJN202': [10, 100, "12:47"],
      },
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Raman Block',
      'Rooms': {
        'RMN101': [10, 100, "12:47"],
        'RMN102': [10, 100, "12:47"],
        'RMN201': [10, 100, "12:47"],
        'RMN202': [10, 100, "12:47"],
      },
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Central Library',
      'Rooms': {
        'Ground Floor': [10, 100, "12:47"],
        'First Floor': [10, 100, "12:47"],
        'Second Floor': [10, 100, "12:47"],
        'Third Floor': [10, 100, "12:47"],
      },
      'Usage': [
        'Study',
      ],
    },
  ];

  List buildings = [], categories = [];
  var byCat = {};

  bool inList(List haystack, var needle) {
    for (int i = 0; i < haystack.length; i++) {
      if (needle == haystack[i]) {
        return true;
      }
    }
    return false;
  }

  int indexFinder(var needle) {
    for (int i = 0; i < details.length; i++) {
      if (details[i]['Name'] == needle) {
        return i;
      }
    }
    return -1;
  }

  List inMap(Map haystack, var needle) {
    List haystackKeys = haystack.keys.toList();
    for (int i = 0; i < haystackKeys.length; i++) {
      if (needle == haystackKeys[i]) {
        return haystack[needle];
      }
    }
    return [];
  }

  List roomDetailSearcher(String roomName) {
    for (int i = 0; i < details.length; i++) {
      if (inMap(details[i]['Rooms'] as Map, roomName).isNotEmpty) {
        return (inMap(details[i]['Rooms'] as Map, roomName));
      }
    }

    return [];
  }
  //when an object is created to this class, a bunch of lists are intialized.
  //ideally when the backend is constructed, this code should read from there and generate the same lists.

  BuildingDetailsStore() {
    for (int i = 0; i < details.length; i++) {
      var buildName = details[i]['Name'];
      List buildUsage = details[i]['Usage'] as List;

      //adding to overall list of building names
      buildings.add(buildName as String);

      //grouping by category/usage of building
      for (int j = 0; j < buildUsage.length; j++) {
        if (!(inList(categories, buildUsage[j]))) {
          categories.add(buildUsage[j]);
          byCat[buildUsage[j]] = [];
        }
        byCat[buildUsage[j]].add(buildName);
      }
    }
  }
}
