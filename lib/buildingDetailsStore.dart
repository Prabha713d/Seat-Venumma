//the class currently storing the data.

class BuildingDetailsStore {
  final details = [
    {
      'Name': 'Electrical Sciences Block',
      'Rooms': [
        'Foyer',
        'Food Court',
        'Gazebo',
      ],
      'Usage': [
        'Study',
        'Meetings',
      ],
    },
    {
      'Name': 'Classroom Complex',
      'Rooms': [
        'CRC101',
        'CRC102',
        'CRC103',
        'CRC201',
        'CRC202',
        'CRC203',
      ],
      'Usage': [
        'Study',
        'Events',
      ],
    },
    {
      'Name': 'Humanity Sciences Block',
      'Rooms': [
        'Gandhi Hall',
        'Central Lecture Theatre',
        'HSB133',
      ],
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Ramanujan Block',
      'Rooms': [
        'RJN101',
        'RJN102',
        'RJN201',
        'RJN202',
      ],
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Raman Block',
      'Rooms': [
        'RMN101',
        'RMN102',
        'RMN201',
        'RMN202',
      ],
      'Usage': [
        'Events',
        'Meetings',
      ],
    },
    {
      'Name': 'Central Library',
      'Rooms': [
        'Ground Floor',
        'First Floor',
        'Second Floor',
        'Third Floor',
      ],
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
