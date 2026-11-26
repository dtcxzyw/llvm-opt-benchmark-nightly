Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/json?download=true
inline.NumInlined: 1400
inline.NumDeleted: 238
begin_hunk_0
@_ZTVN5Catch8Matchers9StdString15ContainsMatcherE = external constant { [6 x ptr], [3 x ptr] }, align 8
@_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE = external constant { [5 x ptr], [3 x ptr] }, align 8
@.str.135 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/include/vcpkg/base/expected.h\00", align 1
@__func__._ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"{\22key\22:\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"\22value\22\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"val.is_object()\00", align 1
@.str.140 = private unnamed_addr constant [118 x i8] c"val.object(vcpkg::LineInfo { 252, \22/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg-test/json.cpp\22, __func__ }).size() == 0\00", align 1
@__func__._ZL20C_A_T_C_H_T_E_S_T_18v = private unnamed_addr constant [21 x i8] c"C_A_T_C_H_T_E_S_T_18\00", align 1
@.str.141 = private unnamed_addr constant [13115 x i8] c"[\0A  {\0A    \22_id\22: \225e7a86c71cf688019f4c4b9f\22,\0A    \22index\22: 0,\0A    \22guid\22: \220e3c8a89-9960-4d87-8634-f9d3fcdaf735\22,\0A    \22isActive\22: false,\0A    \22balance\22: \22$2,473.46\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 21,\0A    \22eyeColor\22: \22blue\22,\0A    \22name\22: {\0A      \22first\22: \22Dana\22,\0A      \22last\22: \22Romero\22\0A    },\0A    \22company\22: \22NETPLODE\22,\0A    \22email\22: \22dana.romero@netplode.info\22,\0A    \22phone\22: \22+1 (981) 479-2769\22,\0A    \22address\22: \22501 Cass Place, Strykersville, Missouri, 8329\22,\0A    \22about\22: \22Incididunt in fugiat ipsum proident aliqua voluptate Lorem nostrud laboris ut velit minim. Dolor culpa magna tempor cupidatat. Id esse quis ipsum incididunt. Aliqua deserunt aliquip esse minim cillum esse aliquip veniam non labore dolor incididunt. Sint ea consectetur exercitation aliqua proident reprehenderit tempor ea eu. Amet ipsum labore magna elit.\22,\0A    \22registered\22: \22Wednesday, September 4, 2019 8:29 AM\22,\0A    \22latitude\22: \22-49.844379\22,\0A    \22longitude\22: \22-5.565357\22,\0A    \22tags\22: [\0A      \22dolor\22,\0A      \22fugiat\22,\0A      \22ea\22,\0A      \22nisi\22,\0A      \22non\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Elena Suarez\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Pruitt Leach\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Pugh Robinson\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Dana! You have 8 unread messages.\22,\0A    \22favoriteFruit\22: \22apple\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c70efbf62ab5579408\22,\0A    \22index\22: 1,\0A    \22guid\22: \222c64c2d3-a830-4598-a399-f68f798ba6dc\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$1,838.58\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 33,\0A    \22eyeColor\22: \22brown\22,\0A    \22name\22: {\0A      \22first\22: \22Ladonna\22,\0A      \22last\22: \22Willis\22\0A    },\0A    \22company\22: \22JOVIOLD\22,\0A    \22email\22: \22ladonna.willis@joviold.us\22,\0A    \22phone\22: \22+1 (921) 591-2296\22,\0A    \22address\22: \22441 Highland Place, Leyner, Pennsylvania, 1788\22,\0A    \22about\22: \22Consequat deserunt nisi sit ex occaecat. Magna pariatur irure nisi duis laborum proident ipsum duis. Tempor qui consectetur consequat sunt proident ex ad id sint cupidatat sint.\22,\0A    \22registered\22: \22Wednesday, January 13, 2016 6:03 PM\22,\0A    \22latitude\22: \22-62.130182\22,\0A    \22longitude\22: \22-102.884995\22,\0A    \22tags\22: [\0A      \22fugiat\22,\0A      \22ipsum\22,\0A      \22ut\22,\0A      \22pariatur\22,\0A      \22enim\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Gamble Rose\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Olive Horn\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Benita Ochoa\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Ladonna! You have 6 unread messages.\22,\0A    \22favoriteFruit\22: \22banana\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c71e30c95bbb0ff386\22,\0A    \22index\22: 2,\0A    \22guid\22: \2204e45222-d785-461b-99be-b330585eb1a1\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$3,591.60\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 32,\0A    \22eyeColor\22: \22brown\22,\0A    \22name\22: {\0A      \22first\22: \22Lee\22,\0A      \22last\22: \22Buckley\22\0A    },\0A    \22company\22: \22TELEQUIET\22,\0A    \22email\22: \22lee.buckley@telequiet.biz\22,\0A    \22phone\22: \22+1 (897) 511-2132\22,\0A    \22address\22: \22675 Argyle Road, Kempton, Ohio, 4411\22,\0A    \22about\22: \22Sunt aliquip excepteur veniam fugiat consequat commodo ex est nulla laboris cillum enim. Laboris cupidatat et ipsum anim reprehenderit officia officia aute aliqua tempor. Incididunt sunt cupidatat mollit deserunt id nisi esse elit nisi est eiusmod aliquip. Lorem cillum ipsum quis aliquip laboris ex minim eu quis. Dolore incididunt officia labore enim Lorem in occaecat aliquip. Mollit ad duis non non qui et Lorem cillum.\22,\0A    \22registered\22: \22Tuesday, January 16, 2018 3:14 PM\22,\0A    \22latitude\22: \22-51.283144\22,\0A    \22longitude\22: \22-112.569722\22,\0A    \22tags\22: [\0A      \22id\22,\0A      \22veniam\22,\0A      \22dolor\22,\0A      \22nulla\22,\0A      \22pariatur\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Dina Craft\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Ashlee Ferrell\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Mcbride Gill\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Lee! You have 7 unread messages.\22,\0A    \22favoriteFruit\22: \22banana\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c70e08bf0c278749f9\22,\0A    \22index\22: 3,\0A    \22guid\22: \220928ccac-e028-405a-a614-76628ba131b4\22,\0A    \22isActive\22: false,\0A    \22balance\22: \22$2,867.88\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 26,\0A    \22eyeColor\22: \22green\22,\0A    \22name\22: {\0A      \22first\22: \22Chen\22,\0A      \22last\22: \22Rosa\22\0A    },\0A    \22company\22: \22EXPOSA\22,\0A    \22email\22: \22chen.rosa@exposa.me\22,\0A    \22phone\22: \22+1 (956) 519-3064\22,\0A    \22address\22: \22239 Amersfort Place, Fillmore, South Carolina, 2443\22,\0A    \22about\22: \22Est ipsum cillum proident veniam voluptate enim sit eu excepteur veniam sit. Sunt aliqua qui incididunt id irure nulla qui. Et consequat ad anim proident minim dolor quis aliquip Lorem qui fugiat voluptate ex.\22,\0A    \22registered\22: \22Wednesday, April 9, 2014 12:45 PM\22,\0A    \22latitude\22: \22-15.222992\22,\0A    \22longitude\22: \2276.730424\22,\0A    \22tags\22: [\0A      \22eiusmod\22,\0A      \22sit\22,\0A      \22do\22,\0A      \22aute\22,\0A      \22ea\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Huff Townsend\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Stacie Downs\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Liza Barron\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Chen! You have 8 unread messages.\22,\0A    \22favoriteFruit\22: \22banana\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c7086fc15efc387abc\22,\0A    \22index\22: 4,\0A    \22guid\22: \22c71e62aa-8428-44cd-a2a5-7c30aaf963fe\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$3,022.64\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 32,\0A    \22eyeColor\22: \22blue\22,\0A    \22name\22: {\0A      \22first\22: \22Walton\22,\0A      \22last\22: \22Mendez\22\0A    },\0A    \22company\22: \22BUZZNESS\22,\0A    \22email\22: \22walton.mendez@buzzness.tv\22,\0A    \22phone\22: \22+1 (849) 560-2058\22,\0A    \22address\22: \22507 Colonial Court, Collins, New York, 7941\22,\0A    \22about\22: \22Et nisi in excepteur velit non incididunt sit. Consectetur magna sunt dolor eu Lorem adipisicing incididunt laborum consequat proident. Laboris ut dolor laboris esse ut dolor adipisicing ad fugiat commodo fugiat incididunt pariatur anim. Amet reprehenderit aute fugiat incididunt irure eu duis sint amet aliquip excepteur tempor dolore. Anim reprehenderit commodo irure sint et tempor occaecat fugiat ex commodo consectetur. Id ex dolor et culpa mollit. Voluptate magna est ex proident deserunt ullamco enim quis nulla cupidatat voluptate culpa exercitation Lorem.\22,\0A    \22registered\22: \22Tuesday, May 9, 2017 2:38 PM\22,\0A    \22latitude\22: \2286.083203\22,\0A    \22longitude\22: \2257.386268\22,\0A    \22tags\22: [\0A      \22Lorem\22,\0A      \22aute\22,\0A      \22proident\22,\0A      \22eu\22,\0A      \22incididunt\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Byers Sims\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Suzanne Gonzalez\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Vicki Velasquez\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Walton! You have 5 unread messages.\22,\0A    \22favoriteFruit\22: \22banana\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c7dc9b82ffcb2868a2\22,\0A    \22index\22: 5,\0A    \22guid\22: \2276f1c1cc-9164-43df-8858-633ee696df1c\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$2,625.28\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 40,\0A    \22eyeColor\22: \22green\22,\0A    \22name\22: {\0A      \22first\22: \22Wise\22,\0A      \22last\22: \22Head\22\0A    },\0A    \22company\22: \22FARMEX\22,\0A    \22email\22: \22wise.head@farmex.com\22,\0A    \22phone\22: \22+1 (850) 478-3280\22,\0A    \22address\22: \22425 Kent Street, Witmer, New Jersey, 2411\22,\0A    \22about\22: \22Velit amet fugiat enim occaecat do. Nulla sint officia anim ullamco. Ea quis excepteur excepteur enim ullamco. Amet aliqua mollit ad excepteur minim voluptate in velit sunt elit duis quis consequat nulla. Est dolor quis culpa aute id occaecat adipisicing mollit do consectetur fugiat. Mollit elit ex nostrud pariatur. Deserunt proident et voluptate occaecat labore occaecat Lorem exercitation est minim magna.\22,\0A    \22registered\22: \22Monday, March 23, 2015 10:14 PM\22,\0A    \22latitude\22: \2229.880281\22,\0A    \22longitude\22: \22126.094567\22,\0A    \22tags\22: [\0A      \22enim\22,\0A      \22sunt\22,\0A      \22cupidatat\22,\0A      \22officia\22,\0A      \22aute\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Fuentes Tyler\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Flora Massey\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Manuela Parks\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Wise! You have 8 unread messages.\22,\0A    \22favoriteFruit\22: \22strawberry\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c7b3605b4ab198b25f\22,\0A    \22index\22: 6,\0A    \22guid\22: \22818a0d46-9595-4066-a819-c93979220983\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$3,193.77\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 30,\0A    \22eyeColor\22: \22brown\22,\0A    \22name\22: {\0A      \22first\22: \22Baldwin\22,\0A      \22last\22: \22Mcguire\22\0A    },\0A    \22company\22: \22ZILCH\22,\0A    \22email\22: \22baldwin.mcguire@zilch.io\22,\0A    \22phone\22: \22+1 (803) 562-3968\22,\0A    \22address\22: \22address replaced\22,\0A    \22about\22: \22Nostrud exercitation Lorem reprehenderit commodo aliquip. Exercitation exercitation proident aliquip et do cillum id ad ad reprehenderit ipsum elit nostrud. Occaecat velit sit commodo aliquip esse.\22,\0A    \22registered\22: \22Saturday, January 14, 2017 3:13 AM\22,\0A    \22latitude\22: \22-38.674801\22,\0A    \22longitude\22: \2278.160951\22,\0A    \22tags\22: [\0A      \22reprehenderit\22,\0A      \22eu\22,\0A      \22magna\22,\0A      \22nulla\22,\0A      \22non\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Austin Gonzales\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Polly Mcknight\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Lucy Wagner\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Baldwin! You have 7 unread messages.\22,\0A    \22favoriteFruit\22: \22banana\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c700d93af1dcbe69f3\22,\0A    \22index\22: 7,\0A    \22guid\22: \2209dc8fc1-207f-45f2-9d2c-f1e70e278e9a\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$3,895.90\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 21,\0A    \22eyeColor\22: \22brown\22,\0A    \22name\22: {\0A      \22first\22: \22Key\22,\0A      \22last\22: \22Bolton\22\0A    },\0A    \22company\22: \22MAGNINA\22,\0A    \22email\22: \22key.bolton@magnina.net\22,\0A    \22phone\22: \22+1 (918) 466-2785\22,\0A    \22address\22: \22139 Blake Court, Chautauqua, Georgia, 3570\22,\0A    \22about\22: \22Cupidatat excepteur reprehenderit eiusmod aute ea commodo ipsum pariatur dolore veniam adipisicing dolor. Excepteur ex in laborum cupidatat cillum cillum qui dolore consequat excepteur. Lorem deserunt eiusmod esse proident et ullamco reprehenderit ad ea. Cupidatat veniam deserunt magna eu labore ipsum et officia officia irure non eiusmod.\22,\0A    \22registered\22: \22Wednesday, October 5, 2016 8:28 AM\22,\0A    \22latitude\22: \2289.82294\22,\0A    \22longitude\22: \2245.807834\22,\0A    \22tags\22: [\0A      \22et\22,\0A      \22excepteur\22,\0A      \22sunt\22,\0A      \22ea\22,\0A      \22irure\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Farmer Adkins\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Summers Huffman\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Lessie Holden\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Key! You have 9 unread messages.\22,\0A    \22favoriteFruit\22: \22strawberry\22\0A  },\0A  {\0A    \22_id\22: \225e7a86c7a3fcbd25660a493d\22,\0A    \22index\22: 8,\0A    \22guid\22: \227d58a9c2-6940-499e-ba24-75227b1a09d9\22,\0A    \22isActive\22: true,\0A    \22balance\22: \22$1,606.76\22,\0A    \22picture\22: \22http://placehold.it/32x32\22,\0A    \22age\22: 31,\0A    \22eyeColor\22: \22green\22,\0A    \22name\22: {\0A      \22first\22: \22Gonzales\22,\0A      \22last\22: \22Manning\22\0A    },\0A    \22company\22: \22ORGANICA\22,\0A    \22email\22: \22gonzales.manning@organica.name\22,\0A    \22phone\22: \22+1 (993) 556-2745\22,\0A    \22address\22: \22690 Regent Place, Rodman, Marshall Islands, 7114\22,\0A    \22about\22: \22Magna ullamco voluptate nostrud et magna ea aute sint id quis proident ad excepteur ullamco. Aliquip nostrud qui quis duis occaecat commodo laborum labore aute. Mollit ullamco in qui eu voluptate dolore aute mollit sint do sit nulla aliqua. Occaecat laborum ex velit ea ex ad eiusmod enim fugiat.\22,\0A    \22registered\22: \22Monday, December 1, 2014 6:32 AM\22,\0A    \22latitude\22: \2248.780262\22,\0A    \22longitude\22: \22-75.333042\22,\0A    \22tags\22: [\0A      \22non\22,\0A      \22laborum\22,\0A      \22et\22,\0A      \22Lorem\22,\0A      \22id\22\0A    ],\0A    \22range\22: [\0A      0,\0A      1,\0A      2,\0A      3,\0A      4,\0A      5,\0A      6,\0A      7,\0A      8,\0A      9\0A    ],\0A    \22friends\22: [\0A      {\0A        \22id\22: 0,\0A        \22name\22: \22Hester Finch\22\0A      },\0A      {\0A        \22id\22: 1,\0A        \22name\22: \22Tia Cooley\22\0A      },\0A      {\0A        \22id\22: 2,\0A        \22name\22: \22Cathryn Howe\22\0A      }\0A    ],\0A    \22greeting\22: \22Hello, Gonzales! You have 5 unread messages.\22,\0A    \22favoriteFruit\22: \22apple\22\0A  }\0A]\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.142 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.144 = private unnamed_addr constant [4 x i8] c"{\0A,\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.146 = private unnamed_addr constant [151 x i8] c"res.error() == LocalizedString::from_raw(R\22(filename:2:1: error: Unexpected character; expected property name\0A  on expression: ,\0A                 ^)\22)\00", align 1
@.str.147 = private unnamed_addr constant [104 x i8] c"filename:2:1: error: Unexpected character; expected property name\0A  on expression: ,\0A                 ^\00", align 1
@_ZTVN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE, ptr @_ZNK5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_E29streamReconstructedExpressionERSo, ptr @_ZN5Catch20ITransientExpressionD2Ev, ptr @_ZN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_ED0Ev] }, comdat, align 8
@_ZTIN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE, ptr @_ZTIN5Catch20ITransientExpressionE }, comdat, align 8
@_ZTSN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE = linkonce_odr dso_local constant [53 x i8] c"N5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_EE\00", comdat, align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"LL\22\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"{\22name\22: 1, \22name\22: 2}\00", align 1
@.str.151 = private unnamed_addr constant [175 x i8] c"res.error() == LocalizedString::from_raw(R\22(filename:1:13: error: Duplicated key \22name\22 in an object\0A  on expression: {\22name\22: 1, \22name\22: 2}\0A                             ^)\22)\00", align 1
@.str.152 = private unnamed_addr constant [128 x i8] c"filename:1:13: error: Duplicated key \22name\22 in an object\0A  on expression: {\22name\22: 1, \22name\22: 2}\0A                             ^\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"\22\CE\94x/\CE\94t\22 \22\22\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.155 = private unnamed_addr constant [160 x i8] c"res.error() == LocalizedString::from_raw(R\22(filename:1:9: error: Unexpected character; expected EOF\0A  on expression: \22\CE\94x/\CE\94t\22 \22\22\0A                         ^)\22)\00", align 1
@.str.156 = private unnamed_addr constant [113 x i8] c"filename:1:9: error: Unexpected character; expected EOF\0A  on expression: \22\CE\94x/\CE\94t\22 \22\22\0A                         ^\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"\22\E5\A7\90\E5\A7\90a\EF\BC\A1\22 \22\22\00", align 1
@.str.158 = private unnamed_addr constant [165 x i8] c"res.error() == LocalizedString::from_raw(R\22(filename:1:8: error: Unexpected character; expected EOF\0A  on expression: \22\E5\A7\90\E5\A7\90a\EF\BC\A1\22 \22\22\0A                           ^)\22)\00", align 1
@.str.159 = private unnamed_addr constant [118 x i8] c"filename:1:8: error: Unexpected character; expected EOF\0A  on expression: \22\E5\A7\90\E5\A7\90a\EF\BC\A1\22 \22\22\0A                           ^\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"\22e\CC\81\22 \22\22\00", align 1
@.str.161 = private unnamed_addr constant [153 x i8] c"res.error() == LocalizedString::from_raw(R\22(filename:1:6: error: Unexpected character; expected EOF\0A  on expression: \22e\CC\81\22 \22\22\0A                      ^)\22)\00", align 1
@.str.162 = private unnamed_addr constant [106 x i8] c"filename:1:6: error: Unexpected character; expected EOF\0A  on expression: \22e\CC\81\22 \22\22\0A                      ^\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_json.cpp, ptr null }]

; Function Attrs: nounwind
declare noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_0v() #1 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.vcpkg::StringView", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %9 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %10 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %11 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %17 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %18 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %20 = alloca %"class.Catch::BinaryExpr.2", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 44, ptr %i.b, align 8, !tbaa !15
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !17
  %i.e = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.30, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr @.str.31, ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 7, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr @.str, ptr %9, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 28, ptr %i.i, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.32) #17
  %i.j = load ptr, ptr %10, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = load i64, ptr %i.k, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.j, i64 %i.l, i32 noundef 1)
          to label %bb.a unwind label %bb.o

bb.a:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !97
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #17, !noalias !97
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c, !noalias !97

bb.b:                                             ; preds = %bb.a
  call void @_ZN5vcpkg4Json5Value6stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %i.m = load ptr, ptr %4, align 8, !tbaa !17, !noalias !97 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !97
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #19, !noalias !97
  unreachable

_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !97
  invoke void @_ZN5vcpkg4Json9stringifyB5cxx11ERKNS0_5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 34, ptr %i.a, align 1, !tbaa !18, !noalias !98
  %i.t = load ptr, ptr %6, align 8, !tbaa !17, !noalias !98
  %i.u = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !98 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.v, ptr %15, align 8, !tbaa !13, !alias.scope !99
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !19, !alias.scope !99
  store i8 0, ptr %i.v, align 8, !tbaa !18, !alias.scope !99
  %i.x = add i64 %i.u, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.x)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19, !alias.scope !99
  %i.z = icmp eq i64 %i.y, 4611686018427387903
  br i1 %i.z, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !19, !alias.scope !99
  %i.ac = sub i64 4611686018427387903, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.u
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #20
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.t, i64 noundef %i.u)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ag = load ptr, ptr %15, align 8, !tbaa !17, !alias.scope !99 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.v
  br i1 %i.ah, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !19, !noalias !100
  %i.aj = and i64 %i.ai, -2
  %i.ak = icmp eq i64 %i.aj, 4611686018427387902
  br i1 %i.ak, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #20
          to label %.noexc18 unwind label %bb.q, !noalias !100

.noexc18:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %.noexc19 unwind label %bb.q, !noalias !100 ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.am, ptr %14, align 8, !tbaa !13, !alias.scope !100
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !19 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc19
  store ptr %i.an, ptr %14, align 8, !tbaa !17, !alias.scope !100
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18
  store i64 %i.au, ptr %i.am, align 8, !tbaa !18, !alias.scope !100
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.av = phi i64 [ %i.ar, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !19, !alias.scope !100
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !17
  store i64 0, ptr %i.aw, align 8, !tbaa !19
  store i8 0, ptr %i.ao, align 8, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !101 ; 3 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !19, !noalias !101
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %14, align 8, !tbaa !17, !noalias !101
  %i.be = load ptr, ptr %12, align 8, !tbaa !17, !noalias !101
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.be, ptr %i.bd, i64 %i.az), !noalias !101
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  %i.bg = zext i1 %i.bf to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = phi i8 [ 0, %bb.j ], [ %i.bg, %bb.l ], [ 1, %bb.k ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.38) #17, !noalias !101
  %i.bi = load ptr, ptr %3, align 8, !noalias !101
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !101
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !25, !alias.scope !101
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !26, !alias.scope !101
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE, i64 16), ptr %11, align 8, !tbaa !28, !alias.scope !101
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.bn, align 8, !tbaa !30, !alias.scope !101
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !31, !alias.scope !101
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.bk, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15, !alias.scope !101
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %14, ptr %i.bp, align 8, !tbaa !30, !alias.scope !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(10) %11)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #17
  %i.bq = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.am
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.n
  %i.bs = load i64, ptr %i.am, align 8, !tbaa !18
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.bu = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.v
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.v, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.by = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !18
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.t

bb.o:                                             ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ah

bb.p:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.r:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #17
  %i.ch = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.am
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.r
  %i.cj = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.cg, %bb.r ] ; 2 uses
  %i.cl = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.v
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.f
  %.sink = phi ptr [ %i.ag, %bb.f ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.cn = load i64, ptr %i.v, align 8, !tbaa !18
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.co) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.cp = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.body
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !18
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn.pn.pn, %.body ]
  %.47 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn, 0
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.cu = call ptr @__cxa_begin_catch(ptr %.47) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.u unwind label %bb.af

end_hunk_0
begin_hunk_1_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
bb.do:                                            ; preds = %bb.dm, %bb.dn
  %.pn72 = phi { ptr, i32 } [ %i.kk, %bb.dn ], [ %i.kj, %bb.dm ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %52) #17
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.db
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %bb.do ], [ %i.jc, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  br label %bb.hh

bb.dq:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit127
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  br label %bb.hh

bb.dr:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit130
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  br label %bb.ec

bb.ds:                                            ; preds = %.body131
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.ea

bb.dt:                                            ; preds = %bb.ds, %bb.dl
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %58)
          to label %bb.du unwind label %bb.ea

bb.du:                                            ; preds = %bb.dt
  %i.kn = getelementptr inbounds nuw i8, ptr %58, i64 58
  %i.ko = load i8, ptr %i.kn, align 2, !tbaa !38, !range !39, !noundef !40
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %_ZN5Catch16AssertionHandlerD2Ev.exit134, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kq = getelementptr inbounds nuw i8, ptr %58, i64 64
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !28
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef nonnull align 8 dereferenceable(72) %58)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit134 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit134:          ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  store ptr @.str.31, ptr %63, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 7, ptr %i.kx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  store ptr @.str, ptr %64, align 8, !tbaa !21
  %i.ky = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 161, ptr %i.ky, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull @.str.98) #17
  %i.kz = load ptr, ptr %65, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.lb = load i64, ptr %i.la, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %62, ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %64, ptr %i.kz, i64 %i.lb, i32 noundef 1)
          to label %bb.dx unwind label %bb.ed

bb.dx:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.lc = call noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_numberEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.ld = zext i1 %i.lc to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.le, align 8, !tbaa !25, !alias.scope !332
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !26, !alias.scope !332
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !28, !alias.scope !332
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.ld, ptr %i.lg, align 2, !tbaa !51, !alias.scope !332
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %62, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.dy unwind label %.body136

.body136:                                         ; preds = %bb.dx
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  %i.lj = call ptr @__cxa_begin_catch(ptr %i.li) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %bb.ee unwind label %bb.eq

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ef

bb.dz:                                            ; preds = %.body131
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eb unwind label %bb.hi

bb.ea:                                            ; preds = %bb.dt, %bb.ds
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %.pn75 = phi { ptr, i32 } [ %i.ll, %bb.ea ], [ %i.lk, %bb.dz ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %58) #17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dr
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.eb ], [ %i.km, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  br label %bb.hh

bb.ed:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit134
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  br label %bb.et

bb.ee:                                            ; preds = %.body136
  invoke void @__cxa_end_catch()
          to label %bb.ef unwind label %bb.er

bb.ef:                                            ; preds = %bb.ee, %bb.dy
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %bb.eg unwind label %bb.er

bb.eg:                                            ; preds = %bb.ef
  %i.ln = getelementptr inbounds nuw i8, ptr %62, i64 58
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !38, !range !39, !noundef !40
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %_ZN5Catch16AssertionHandlerD2Ev.exit139, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lq = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !28
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %i.lu = load ptr, ptr %i.lt, align 8
  invoke void %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit139 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit139:          ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  store ptr @.str.106, ptr %67, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 12, ptr %i.lx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  store ptr @.str, ptr %68, align 8, !tbaa !21
  %i.ly = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 162, ptr %i.ly, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull @.str.107) #17
  %i.lz = load ptr, ptr %69, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.mb = load i64, ptr %i.ma, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr %i.lz, i64 %i.mb, i32 noundef 1)
          to label %bb.ej unwind label %bb.eu

bb.ej:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 162, ptr %71, align 8, !tbaa !53
  %i.mc = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr @.str, ptr %i.mc, align 8, !tbaa !54
  %i.md = getelementptr inbounds nuw i8, ptr %71, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.md, align 8, !tbaa !55
  %i.me = call noundef double @_ZNK5vcpkg4Json5Value6numberENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %71) #17
  store double %i.me, ptr %i.g, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #17
  invoke void @_ZN5Catch8Matchers9WithinULPEdm(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::Floating::WithinUlpsMatcher") align 8 %72, double noundef f0x40C81CD6E631F8A1, i64 noundef 3)
          to label %bb.ek unwind label %bb.ev

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.mf = load ptr, ptr %72, align 8, !tbaa !28, !noalias !333
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !333
  %i.mi = invoke noundef zeroext i1 %i.mh(ptr noundef nonnull align 8 dereferenceable(65) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.ew, !noalias !333, !inline_history !314

.noexc:                                           ; preds = %bb.ek
  %i.mj = zext i1 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i8 1, ptr %i.mk, align 8, !tbaa !25, !alias.scope !333
  %i.ml = getelementptr inbounds nuw i8, ptr %70, i64 9
  store i8 %i.mj, ptr %i.ml, align 1, !tbaa !26, !alias.scope !333
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28, !alias.scope !333
  %i.mm = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %i.g, ptr %i.mm, align 8, !tbaa !325, !alias.scope !333
  %i.mn = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers4Impl18MatcherUntypedBaseE, i64 16), ptr %i.mn, align 8, !tbaa !28, !alias.scope !333
  %i.mo = getelementptr inbounds nuw i8, ptr %70, i64 32 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %70, i64 48 ; 3 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !13, !alias.scope !333
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !17, !noalias !333 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !19, !noalias !333 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !333
  store i64 %i.mt, ptr %i.b, align 8, !tbaa !15, !noalias !333
  %i.mu = icmp ugt i64 %i.mt, 15
  br i1 %i.mu, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc
  %i.mv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.en ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.mv, ptr %i.mo, align 8, !tbaa !17, !alias.scope !333
  %i.mw = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !333
  store i64 %i.mw, ptr %i.mq, align 8, !tbaa !18, !alias.scope !333
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i, %.noexc
  %i.mx = phi ptr [ %i.mv, %.noexc.i.i ], [ %i.mq, %.noexc ] ; 2 uses
  switch i64 %i.mt, label %bb.em [
    i64 1, label %bb.el
    i64 0, label %bb.eo
  ]

bb.el:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.my = load i8, ptr %i.mr, align 1, !tbaa !18
  store i8 %i.my, ptr %i.mx, align 1, !tbaa !18
  br label %bb.eo

bb.em:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %i.mr, i64 %i.mt, i1 false)
  br label %bb.eo

bb.en:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %70) #17
  br label %.body141

bb.eo:                                            ; preds = %bb.em, %bb.el, %._crit_edge.i.i.i.i.i.i.i
  %i.na = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !333 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !19, !alias.scope !333
  %i.nc = load ptr, ptr %i.mo, align 8, !tbaa !17, !alias.scope !333
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  store i8 0, ptr %i.nd, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !333
  %i.ne = getelementptr inbounds nuw i8, ptr %70, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 16), ptr %i.mn, align 8, !tbaa !28, !alias.scope !333
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 64), ptr %i.ne, align 8, !tbaa !28, !alias.scope !333
  %i.nf = getelementptr inbounds nuw i8, ptr %70, i64 72
  %i.ng = getelementptr inbounds nuw i8, ptr %72, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nf, ptr noundef nonnull align 8 dereferenceable(17) %i.ng, i64 17, i1 false)
  %i.nh = getelementptr inbounds nuw i8, ptr %70, i64 96
  store ptr @.str.108, ptr %i.nh, align 8, !tbaa !31
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 104
  store i64 31, ptr %.sroa.5176.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 8 dereferenceable(10) %70)
          to label %bb.ep unwind label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.mn) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %70) #17, !inline_history !66
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  br label %bb.fa

bb.eq:                                            ; preds = %.body136
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.es unwind label %bb.hi

bb.er:                                            ; preds = %bb.ef, %bb.ee
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  %.pn78 = phi { ptr, i32 } [ %i.nj, %bb.er ], [ %i.ni, %bb.eq ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %62) #17
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ed
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %bb.es ], [ %i.lm, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  br label %bb.hh

bb.eu:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit139
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.fm

bb.ev:                                            ; preds = %bb.ej
  %i.nl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ey

bb.ew:                                            ; preds = %bb.ek
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body141

bb.ex:                                            ; preds = %bb.eo
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.mn) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %70) #17, !inline_history !66
  br label %.body141

.body141:                                         ; preds = %bb.ew, %bb.en, %bb.ex
  %.pn81 = phi { ptr, i32 } [ %i.nn, %bb.ex ], [ %i.nm, %bb.ew ], [ %i.mz, %bb.en ]
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %72) #17
  br label %bb.ey

bb.ey:                                            ; preds = %.body141, %bb.ev
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %.body141 ], [ %i.nl, %bb.ev ]
  %.2743 = extractvalue { ptr, i32 } %.pn81.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  %i.no = call ptr @__cxa_begin_catch(ptr %.2743) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %bb.ez unwind label %bb.fj

bb.ez:                                            ; preds = %bb.ey
  invoke void @__cxa_end_catch()
          to label %bb.fa unwind label %bb.fk

bb.fa:                                            ; preds = %bb.ez, %bb.ep
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %bb.fb unwind label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.np = getelementptr inbounds nuw i8, ptr %66, i64 58
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !38, !range !39, !noundef !40
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %_ZN5Catch16AssertionHandlerD2Ev.exit143, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ns = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 112
  %i.nw = load ptr, ptr %i.nv, align 8
  invoke void %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit143 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit143:          ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #17
  invoke void @_ZN5vcpkg4Json5parseENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %73, ptr nonnull @.str.109, i64 11, ptr nonnull @.str.41, i64 4)
          to label %bb.fe unwind label %bb.fn

bb.fe:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  %i.nz = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(33) %13, ptr noundef nonnull align 8 dereferenceable(33) %73) #17 ; 0 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %73, i64 32
  %i.ob = load i8, ptr %i.oa, align 8, !tbaa !47, !range !39, !noundef !40
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.od = load ptr, ptr %73, align 8, !tbaa !17   ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144: ; preds = %bb.ff
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !18
  %i.oh = add i64 %i.og, 1
end_hunk_1
begin_hunk_2_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %.pn82 = phi { ptr, i32 } [ %i.ow, %bb.fk ], [ %i.ov, %bb.fj ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %66) #17
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.eu
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.fl ], [ %i.nk, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  br label %bb.hh

bb.fn:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  br label %bb.hh

bb.fo:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #17
  br label %bb.fz

bb.fp:                                            ; preds = %.body147
  invoke void @__cxa_end_catch()
          to label %bb.fq unwind label %bb.fx

bb.fq:                                            ; preds = %bb.fp, %bb.fi
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.fr unwind label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  %i.oz = getelementptr inbounds nuw i8, ptr %74, i64 58
  %i.pa = load i8, ptr %i.oz, align 2, !tbaa !38, !range !39, !noundef !40
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %_ZN5Catch16AssertionHandlerD2Ev.exit150, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pc = getelementptr inbounds nuw i8, ptr %74, i64 64
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !28
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 112
  %i.pg = load ptr, ptr %i.pf, align 8
  invoke void %i.pg(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit150 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit150:          ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #17
  store ptr @.str.31, ptr %79, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 7, ptr %i.pj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #17
  store ptr @.str, ptr %80, align 8, !tbaa !21
  %i.pk = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 165, ptr %i.pk, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull @.str.98) #17
  %i.pl = load ptr, ptr %81, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.pn = load i64, ptr %i.pm, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %80, ptr %i.pl, i64 %i.pn, i32 noundef 1)
          to label %bb.fu unwind label %bb.ga

bb.fu:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  %i.po = call noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_numberEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.pp = zext i1 %i.po to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.pq, align 8, !tbaa !25, !alias.scope !335
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.pp, ptr %i.pr, align 1, !tbaa !26, !alias.scope !335
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %0, align 8, !tbaa !28, !alias.scope !335
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.pp, ptr %i.ps, align 2, !tbaa !51, !alias.scope !335
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(10) %0)
          to label %bb.fv unwind label %.body152

.body152:                                         ; preds = %bb.fu
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  %i.pv = call ptr @__cxa_begin_catch(ptr %i.pu) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %bb.gb unwind label %bb.gn

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %bb.gc

bb.fw:                                            ; preds = %.body147
  %i.pw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fy unwind label %bb.hi

bb.fx:                                            ; preds = %bb.fq, %bb.fp
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %.pn85 = phi { ptr, i32 } [ %i.px, %bb.fx ], [ %i.pw, %bb.fw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %74) #17
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fo
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %bb.fy ], [ %i.oy, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  br label %bb.hh

bb.ga:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit150
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  br label %bb.gq

bb.gb:                                            ; preds = %.body152
  invoke void @__cxa_end_catch()
          to label %bb.gc unwind label %bb.go

bb.gc:                                            ; preds = %bb.gb, %bb.fv
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %bb.gd unwind label %bb.go

bb.gd:                                            ; preds = %bb.gc
  %i.pz = getelementptr inbounds nuw i8, ptr %78, i64 58
  %i.qa = load i8, ptr %i.pz, align 2, !tbaa !38, !range !39, !noundef !40
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %_ZN5Catch16AssertionHandlerD2Ev.exit155, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qc = getelementptr inbounds nuw i8, ptr %78, i64 64
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !28
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 112
  %i.qg = load ptr, ptr %i.qf, align 8
  invoke void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit155 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit155:          ; preds = %bb.gd, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #17
  store ptr @.str.106, ptr %83, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 12, ptr %i.qj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #17
  store ptr @.str, ptr %84, align 8, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 166, ptr %i.qk, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull @.str.110) #17
  %i.ql = load ptr, ptr %85, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.qn = load i64, ptr %i.qm, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %82, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %84, ptr %i.ql, i64 %i.qn, i32 noundef 1)
          to label %bb.gg unwind label %bb.gr

bb.gg:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i32 166, ptr %87, align 8, !tbaa !53
  %i.qo = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr @.str, ptr %i.qo, align 8, !tbaa !54
  %i.qp = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.qp, align 8, !tbaa !55
  %i.qq = call noundef double @_ZNK5vcpkg4Json5Value6numberENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %87) #17
  store double %i.qq, ptr %i.h, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #17
  invoke void @_ZN5Catch8Matchers9WithinULPEdm(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::Floating::WithinUlpsMatcher") align 8 %88, double noundef f0xC0C81CD6E631F8A1, i64 noundef 3)
          to label %bb.gh unwind label %bb.gs

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.qr = load ptr, ptr %88, align 8, !tbaa !28, !noalias !336
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !336
  %i.qu = invoke noundef zeroext i1 %i.qt(ptr noundef nonnull align 8 dereferenceable(65) %88, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc160 unwind label %bb.gt, !noalias !336, !inline_history !314

.noexc160:                                        ; preds = %bb.gh
  %i.qv = zext i1 %i.qu to i8
  %i.qw = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i8 1, ptr %i.qw, align 8, !tbaa !25, !alias.scope !336
  %i.qx = getelementptr inbounds nuw i8, ptr %86, i64 9
  store i8 %i.qv, ptr %i.qx, align 1, !tbaa !26, !alias.scope !336
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28, !alias.scope !336
  %i.qy = getelementptr inbounds nuw i8, ptr %86, i64 16
  store ptr %i.h, ptr %i.qy, align 8, !tbaa !325, !alias.scope !336
  %i.qz = getelementptr inbounds nuw i8, ptr %86, i64 24 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers4Impl18MatcherUntypedBaseE, i64 16), ptr %i.qz, align 8, !tbaa !28, !alias.scope !336
  %i.ra = getelementptr inbounds nuw i8, ptr %86, i64 32 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %86, i64 48 ; 3 uses
  store ptr %i.rc, ptr %i.ra, align 8, !tbaa !13, !alias.scope !336
  %i.rd = load ptr, ptr %i.rb, align 8, !tbaa !17, !noalias !336 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !19, !noalias !336 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !336
  store i64 %i.rf, ptr %i.a, align 8, !tbaa !15, !noalias !336
  %i.rg = icmp ugt i64 %i.rf, 15
  br i1 %i.rg, label %.noexc.i.i.i.i.i.i158, label %._crit_edge.i.i.i.i.i.i.i157

.noexc.i.i.i.i.i.i158:                            ; preds = %.noexc160
  %i.rh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ra, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i159 unwind label %bb.gk ; 2 uses

.noexc.i.i159:                                    ; preds = %.noexc.i.i.i.i.i.i158
  store ptr %i.rh, ptr %i.ra, align 8, !tbaa !17, !alias.scope !336
  %i.ri = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !336
  store i64 %i.ri, ptr %i.rc, align 8, !tbaa !18, !alias.scope !336
  br label %._crit_edge.i.i.i.i.i.i.i157

._crit_edge.i.i.i.i.i.i.i157:                     ; preds = %.noexc.i.i159, %.noexc160
  %i.rj = phi ptr [ %i.rh, %.noexc.i.i159 ], [ %i.rc, %.noexc160 ] ; 2 uses
  switch i64 %i.rf, label %bb.gj [
    i64 1, label %bb.gi
    i64 0, label %bb.gl
  ]

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i157
  %i.rk = load i8, ptr %i.rd, align 1, !tbaa !18
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !18
  br label %bb.gl

bb.gj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rj, ptr align 1 %i.rd, i64 %i.rf, i1 false)
  br label %bb.gl

bb.gk:                                            ; preds = %.noexc.i.i.i.i.i.i158
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %86) #17
  br label %.body161

bb.gl:                                            ; preds = %bb.gj, %bb.gi, %._crit_edge.i.i.i.i.i.i.i157
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !336 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %86, i64 40
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !19, !alias.scope !336
  %i.ro = load ptr, ptr %i.ra, align 8, !tbaa !17, !alias.scope !336
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rm
  store i8 0, ptr %i.rp, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !336
  %i.rq = getelementptr inbounds nuw i8, ptr %86, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 16), ptr %i.qz, align 8, !tbaa !28, !alias.scope !336
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 64), ptr %i.rq, align 8, !tbaa !28, !alias.scope !336
  %i.rr = getelementptr inbounds nuw i8, ptr %86, i64 72
  %i.rs = getelementptr inbounds nuw i8, ptr %88, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.rr, ptr noundef nonnull align 8 dereferenceable(17) %i.rs, i64 17, i1 false)
  %i.rt = getelementptr inbounds nuw i8, ptr %86, i64 96
  store ptr @.str.111, ptr %i.rt, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %86, i64 104
  store i64 32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %82, ptr noundef nonnull align 8 dereferenceable(10) %86)
          to label %bb.gm unwind label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.qz) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %86) #17, !inline_history !66
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  br label %bb.gx

bb.gn:                                            ; preds = %.body152
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gp unwind label %bb.hi

bb.go:                                            ; preds = %bb.gc, %bb.gb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %.pn88 = phi { ptr, i32 } [ %i.rv, %bb.go ], [ %i.ru, %bb.gn ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %78) #17
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.ga
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.gp ], [ %i.py, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  br label %bb.hh

bb.gr:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit155
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #17
  br label %bb.hg

bb.gs:                                            ; preds = %bb.gg
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gh
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  br label %.body161

bb.gu:                                            ; preds = %bb.gl
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.qz) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %86) #17, !inline_history !66
  br label %.body161

.body161:                                         ; preds = %bb.gt, %bb.gk, %bb.gu
  %.pn91 = phi { ptr, i32 } [ %i.rz, %bb.gu ], [ %i.ry, %bb.gt ], [ %i.rl, %bb.gk ]
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %88) #17
  br label %bb.gv

bb.gv:                                            ; preds = %.body161, %bb.gs
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body161 ], [ %i.rx, %bb.gs ]
  %.35 = extractvalue { ptr, i32 } %.pn91.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  %i.sa = call ptr @__cxa_begin_catch(ptr %.35) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %bb.gw unwind label %bb.hd

bb.gw:                                            ; preds = %bb.gv
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw, %bb.gm
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %bb.gy unwind label %bb.he

bb.gy:                                            ; preds = %bb.gx
  %i.sb = getelementptr inbounds nuw i8, ptr %82, i64 58
  %i.sc = load i8, ptr %i.sb, align 2, !tbaa !38, !range !39, !noundef !40
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZN5Catch16AssertionHandlerD2Ev.exit164, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.se = getelementptr inbounds nuw i8, ptr %82, i64 64
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !28
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 112
  %i.si = load ptr, ptr %i.sh, align 8
  invoke void %i.si(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit164 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit164:          ; preds = %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #17
  %i.sl = load i8, ptr %i.n, align 8, !tbaa !47, !range !39, !noundef !40
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit164
  %i.sn = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i165: ; preds = %bb.hb
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !18
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sr) #18
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167

bb.hc:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit164
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %13) #17
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167

end_hunk_2
begin_hunk_3_@_ZL20C_A_T_C_H_T_E_S_T_14v:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 219, ptr %i.bg, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.131) #17
  %i.bh = load ptr, ptr %16, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.bh, i64 %i.bj, i32 noundef 1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.bk = load i8, ptr %i.o, align 8, !tbaa !47, !range !39, !noundef !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bl, align 8, !tbaa !25, !alias.scope !411
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !26, !alias.scope !411
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %1, align 8, !tbaa !28, !alias.scope !411
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bk, ptr %i.bn, align 2, !tbaa !51, !alias.scope !411
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.q unwind label %.body32

.body32:                                          ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %bb.y unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.z

bb.r:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.bi

bb.s:                                             ; preds = %bb.h, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.br, %bb.r ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bg

bb.v:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.w:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.w
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.v
  %.pn15 = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.bu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bg

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ao

bb.y:                                             ; preds = %.body32
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.am

bb.z:                                             ; preds = %bb.y, %bb.q
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 58
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !38, !range !39, !noundef !40
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5Catch16AssertionHandlerD2Ev.exit37, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit37 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit37:           ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store ptr @.str.106, ptr %18, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 12, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store ptr @.str, ptr %19, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 220, ptr %i.cm, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.132) #17
  %i.cn = load ptr, ptr %20, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cp = load i64, ptr %i.co, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.cn, i64 %i.cp, i32 noundef 1)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store i32 233, ptr %0, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.135, ptr %i.cq, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @__func__._ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv, ptr %i.cr, align 8, !tbaa !55
  %i.cs = load i8, ptr %i.o, align 8, !tbaa !47, !range !39, !noundef !40
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #19
  unreachable

_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg15LocalizedString4dataB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.cx, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 32, ptr %i.a, align 8, !tbaa !15
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.aq    ; 2 uses

.noexc:                                           ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  store ptr %i.cy, ptr %23, align 8, !tbaa !17
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cy, ptr noundef nonnull align 1 dereferenceable(32) @.str.133, i64 32, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !19
  %i.db = load ptr, ptr %23, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void @_ZN5Catch8Matchers8ContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13CaseSensitive6ChoiceE(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::StdString::ContainsMatcher") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 0)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.dd = load ptr, ptr %22, align 8, !tbaa !28, !noalias !412
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !noalias !412
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(120) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %.noexc38 unwind label %bb.as, !noalias !412, !inline_history !0

.noexc38:                                         ; preds = %bb.ah
  %i.dh = zext i1 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 1, ptr %i.di, align 8, !tbaa !25, !alias.scope !412
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 9
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !26, !alias.scope !412
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEE, i64 16), ptr %21, align 8, !tbaa !28, !alias.scope !412
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.cw, ptr %i.dk, align 8, !tbaa !30, !alias.scope !412
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  invoke void @_ZN5Catch8Matchers9StdString17StringMatcherBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %22)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc38
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(160) %21) #17
  br label %.body39

bb.aj:                                            ; preds = %.noexc38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers9StdString15ContainsMatcherE, i64 16), ptr %i.dl, align 8, !tbaa !28, !alias.scope !412
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString15ContainsMatcherE, i64 64), ptr %i.dn, align 8, !tbaa !28, !alias.scope !412
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 144
  store ptr @.str.134, ptr %i.do, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 152
  store i64 51, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(10) %21)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEE, i64 16), ptr %21, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 16), ptr %i.dl, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 56), ptr %i.dn, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !17 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41: ; preds = %bb.ak
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !18
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #18, !inline_history !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !18
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #18, !inline_history !67
  br label %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit

_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(120) %i.dl) #17, !inline_history !67
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(160) %21) #17, !inline_history !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 16), ptr %22, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 56), ptr %i.eb, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %22, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !17 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !17 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !18
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #18
  br label %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit

_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(120) %22) #17
  %i.eo = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.cx
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit
  %i.eq = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.aw

bb.al:                                            ; preds = %.body32
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.bi

bb.am:                                            ; preds = %bb.z, %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.pn17 = phi { ptr, i32 } [ %i.et, %bb.am ], [ %i.es, %bb.al ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.an ], [ %i.ca, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bg

bb.ap:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit37
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bf

bb.aq:                                            ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.ar:                                            ; preds = %.noexc
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

bb.as:                                            ; preds = %bb.ah
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  br label %.body39

bb.at:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %21) #17
  br label %.body39

.body39:                                          ; preds = %bb.as, %bb.ai, %bb.at
  %.pn20 = phi { ptr, i32 } [ %i.ey, %bb.at ], [ %i.ex, %bb.as ], [ %i.dm, %bb.ai ]
  call void @_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %22) #17
  br label %bb.au

bb.au:                                            ; preds = %.body39, %bb.ar
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %.body39 ], [ %i.ew, %bb.ar ] ; 2 uses
  %i.ez = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cx
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.au
  %i.fb = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.aq
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.aq ], [ %.pn20.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn20.pn, %bb.au ]
  %.711 = extractvalue { ptr, i32 } %.pn20.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.fd = call ptr @__cxa_begin_catch(ptr %.711) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !38, !range !39, !noundef !40
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %_ZN5Catch16AssertionHandlerD2Ev.exit51, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
end_hunk_3
begin_hunk_4_@_ZL20C_A_T_C_H_T_E_S_T_16v:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 242, ptr %i.bg, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.131) #17
  %i.bh = load ptr, ptr %16, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.bh, i64 %i.bj, i32 noundef 1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.bk = load i8, ptr %i.o, align 8, !tbaa !47, !range !39, !noundef !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bl, align 8, !tbaa !25, !alias.scope !420
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !26, !alias.scope !420
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %1, align 8, !tbaa !28, !alias.scope !420
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bk, ptr %i.bn, align 2, !tbaa !51, !alias.scope !420
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.q unwind label %.body32

.body32:                                          ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %bb.y unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.z

bb.r:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.bi

bb.s:                                             ; preds = %bb.h, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.br, %bb.r ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bg

bb.v:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.w:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.w
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.v
  %.pn15 = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.bu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bg

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ao

bb.y:                                             ; preds = %.body32
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.am

bb.z:                                             ; preds = %bb.y, %bb.q
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 58
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !38, !range !39, !noundef !40
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5Catch16AssertionHandlerD2Ev.exit37, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit37 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit37:           ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store ptr @.str.106, ptr %18, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 12, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store ptr @.str, ptr %19, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 243, ptr %i.cm, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.132) #17
  %i.cn = load ptr, ptr %20, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cp = load i64, ptr %i.co, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.cn, i64 %i.cp, i32 noundef 1)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store i32 233, ptr %0, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.135, ptr %i.cq, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @__func__._ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv, ptr %i.cr, align 8, !tbaa !55
  %i.cs = load i8, ptr %i.o, align 8, !tbaa !47, !range !39, !noundef !40
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #19
  unreachable

_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg15LocalizedString4dataB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.cx, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 32, ptr %i.a, align 8, !tbaa !15
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.aq    ; 2 uses

.noexc:                                           ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  store ptr %i.cy, ptr %23, align 8, !tbaa !17
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cy, ptr noundef nonnull align 1 dereferenceable(32) @.str.133, i64 32, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !19
  %i.db = load ptr, ptr %23, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void @_ZN5Catch8Matchers8ContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13CaseSensitive6ChoiceE(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::StdString::ContainsMatcher") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 0)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.dd = load ptr, ptr %22, align 8, !tbaa !28, !noalias !421
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !noalias !421
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(120) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %.noexc38 unwind label %bb.as, !noalias !421, !inline_history !0

.noexc38:                                         ; preds = %bb.ah
  %i.dh = zext i1 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 1, ptr %i.di, align 8, !tbaa !25, !alias.scope !421
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 9
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !26, !alias.scope !421
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEE, i64 16), ptr %21, align 8, !tbaa !28, !alias.scope !421
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.cw, ptr %i.dk, align 8, !tbaa !30, !alias.scope !421
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  invoke void @_ZN5Catch8Matchers9StdString17StringMatcherBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %22)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc38
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(160) %21) #17
  br label %.body39

bb.aj:                                            ; preds = %.noexc38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers9StdString15ContainsMatcherE, i64 16), ptr %i.dl, align 8, !tbaa !28, !alias.scope !421
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString15ContainsMatcherE, i64 64), ptr %i.dn, align 8, !tbaa !28, !alias.scope !421
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 144
  store ptr @.str.134, ptr %i.do, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 152
  store i64 51, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(10) %21)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEE, i64 16), ptr %21, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 16), ptr %i.dl, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 56), ptr %i.dn, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !17 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41: ; preds = %bb.ak
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !18
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #18, !inline_history !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !18
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #18, !inline_history !67
  br label %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit

_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(120) %i.dl) #17, !inline_history !67
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(160) %21) #17, !inline_history !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 16), ptr %22, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers9StdString17StringMatcherBaseE, i64 56), ptr %i.eb, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %22, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !17 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !17 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !18
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #18
  br label %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit

_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(120) %22) #17
  %i.eo = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.cx
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit
  %i.eq = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.aw

bb.al:                                            ; preds = %.body32
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.bi

bb.am:                                            ; preds = %bb.z, %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.pn17 = phi { ptr, i32 } [ %i.et, %bb.am ], [ %i.es, %bb.al ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.an ], [ %i.ca, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bg

bb.ap:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit37
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bf

bb.aq:                                            ; preds = %_ZNR5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEE5errorEv.exit
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.ar:                                            ; preds = %.noexc
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

bb.as:                                            ; preds = %bb.ah
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  br label %.body39

bb.at:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %21) #17
  br label %.body39

.body39:                                          ; preds = %bb.as, %bb.ai, %bb.at
  %.pn20 = phi { ptr, i32 } [ %i.ey, %bb.at ], [ %i.ex, %bb.as ], [ %i.dm, %bb.ai ]
  call void @_ZN5Catch8Matchers9StdString17StringMatcherBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %22) #17
  br label %bb.au

bb.au:                                            ; preds = %.body39, %bb.ar
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %.body39 ], [ %i.ew, %bb.ar ] ; 2 uses
  %i.ez = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cx
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.au
  %i.fb = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.aq
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.aq ], [ %.pn20.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn20.pn, %bb.au ]
  %.711 = extractvalue { ptr, i32 } %.pn20.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.fd = call ptr @__cxa_begin_catch(ptr %.711) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !38, !range !39, !noundef !40
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %_ZN5Catch16AssertionHandlerD2Ev.exit51, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
end_hunk_4
begin_hunk_5_@_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev:bb.a
  br i1 %i.f, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #17
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5vcpkg4Json5Value7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch9UnaryExprIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !13, !alias.scope !487
  %i.c = load ptr, ptr @_ZN5Catch6Detail17unprintableStringB5cxx11E, align 8, !tbaa !17, !noalias !487 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Catch6Detail17unprintableStringB5cxx11E, i64 8), align 8, !tbaa !19, !noalias !487 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !487
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15, !noalias !487
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !17, !alias.scope !487
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !487
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18, !alias.scope !487
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.i = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.c, i64 %i.d, i1 false)
  br label %_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.b, %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !487 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19, !alias.scope !487
  %i.l = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !487
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !487
  %i.n = load ptr, ptr %2, align 8, !tbaa !17
  %i.o = load i64, ptr %i.k, align 8, !tbaa !19
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.n, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !18
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch9UnaryExprIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch9UnaryExprIbE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(11) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !490, !range !39, !noalias !491, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  call void @_ZN5Catch11StringMakerIbvE7convertB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i1 noundef zeroext %i.c)
  %i.d = load ptr, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch9UnaryExprIbED0Ev(ptr noundef nonnull align 8 dereferenceable(11) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

declare void @_ZN5Catch11StringMakerIbvE7convertB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5vcpkg4Json5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json5ValueaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_stringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNK5vcpkg4Json5Value6stringENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL19C_A_T_C_H_T_E_S_T_4vENK3$_0clB5cxx11EN5vcpkg10StringViewE"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 34)
          to label %.noexc unwind label %bb.f, !noalias !496 ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !13, !alias.scope !496
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.d, ptr %4, align 8, !tbaa !17, !alias.scope !496
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  store i64 %i.k, ptr %i.c, align 8, !tbaa !18, !alias.scope !496
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !19, !alias.scope !496
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  store i64 0, ptr %i.m, align 8, !tbaa !19
  store i8 0, ptr %i.e, align 8, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.l, i64 noundef 0, i64 noundef 1, i8 noundef signext 34)
          to label %.noexc6 unwind label %bb.g, !noalias !497 ; 6 uses

.noexc6:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !13, !alias.scope !497
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.d:                                             ; preds = %.noexc6
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.noexc6
  store ptr %i.q, ptr %0, align 8, !tbaa !17, !alias.scope !497
  %i.x = load i64, ptr %i.r, align 8, !tbaa !18
  store i64 %i.x, ptr %i.p, align 8, !tbaa !18, !alias.scope !497
  %.phi.trans.insert.i4 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i5 = load i64, ptr %.phi.trans.insert.i4, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !19, !alias.scope !497
  store ptr %i.r, ptr %i.o, align 8, !tbaa !17
  store i64 0, ptr %i.z, align 8, !tbaa !19
  store i8 0, ptr %i.r, align 8, !tbaa !18
  %i.ab = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.af = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.g
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.al, %bb.g ]
  %i.aq = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKmRKiE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !503, !nonnull !40, !align !42
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !504
  call void @_ZN5Catch11StringMakerImvE7convertB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !505, !nonnull !40, !align !79
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56, !noalias !506
  invoke void @_ZN5Catch11StringMakerIivE7convertB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.g)
          to label %_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.h = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.m = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.y = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKmRKiED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

declare void @_ZN5Catch11StringMakerImvE7convertB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #4

end_hunk_5
begin_hunk_6_@_ZN5Catch11StringMakerIA4_cvE7convertB5cxx11EPKc:bb.a
          to label %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit unwind label %bb.f

_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit
  %i.p = load i64, ptr %i.b, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.u = load i64, ptr %i.b, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKN5vcpkg10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !524, !nonnull !40, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !525
  call void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !525
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch20ReusableStringStreamlsIN5vcpkg10StringViewEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c, !noalias !525 ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !525
  br label %common.resume

_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !525
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !526, !nonnull !40, !align !42
  invoke void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7convertERKS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit unwind label %bb.e

_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit: ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit
  %i.h = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.m = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.e:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.f:                                             ; preds = %_ZN5Catch6Detail9stringifyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.y = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKN5vcpkg10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKN5vcpkg10StringViewES4_E29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %3 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536, !nonnull !40, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !537
  call void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !537
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch20ReusableStringStreamlsIN5vcpkg10StringViewEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c, !noalias !537 ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !537
  br label %common.resume

_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !537
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !538, !nonnull !40, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !539
  invoke void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.h, !noalias !539

.noexc:                                           ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch20ReusableStringStreamlsIN5vcpkg10StringViewEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !539 ; 0 uses

bb.d:                                             ; preds = %.noexc
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !539
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !539
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.m = load i64, ptr %i.k, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.o = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.h:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.t, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.aa = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKN5vcpkg10StringViewES4_ED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKN5vcpkg10StringViewERA2_KcE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !545, !nonnull !40, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !546
  call void @_ZN5Catch20ReusableStringStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !546
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch20ReusableStringStreamlsIN5vcpkg10StringViewEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c, !noalias !546 ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !546
  br label %common.resume

_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b
  call void @_ZN5Catch20ReusableStringStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !546
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !547, !nonnull !40
  invoke void @_ZN5Catch11StringMakerIA2_cvE7convertB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(2) %i.g)
          to label %_ZN5Catch6Detail9stringifyIA2_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.e

_ZN5Catch6Detail9stringifyIA2_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA2_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.h = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.m = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.e:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.f:                                             ; preds = %_ZN5Catch6Detail9stringifyIA2_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.y = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
end_hunk_6
begin_hunk_7_@_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE:bb.a
.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn17 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10)) unnamed_addr #0

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5vcpkgeqERKNS_15LocalizedStringES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_E29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !616, !nonnull !40, !align !42
  call void @_ZN5Catch11StringMakerIN5vcpkg15LocalizedStringEvE7convertB5cxx11ERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !617, !nonnull !40, !align !42
  invoke void @_ZN5Catch11StringMakerIN5vcpkg15LocalizedStringEvE7convertB5cxx11ERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZN5Catch6Detail9stringifyIN5vcpkg15LocalizedStringEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIN5vcpkg15LocalizedStringEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg15LocalizedStringEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.k = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIN5vcpkg15LocalizedStringEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.w = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.z = load i64, ptr %i.x, align 8, !tbaa !18
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKN5vcpkg15LocalizedStringES4_ED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch11StringMakerIN5vcpkg15LocalizedStringEvE7convertB5cxx11ERKS2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg15LocalizedString4dataB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17, !noalias !624
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !624 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !13, !alias.scope !625
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !625
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !625
  %i.g = add i64 %i.d, 3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19, !alias.scope !625
  %i.i = add i64 %i.h, -4611686018427387901
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.148, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19, !alias.scope !625
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !625 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !625
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %common.resume.op = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.u = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !626
  %i.v = icmp eq i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #20
          to label %.noexc unwind label %bb.g, !noalias !626

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.149, i64 noundef 1)
          to label %.noexc2 unwind label %bb.g, !noalias !626 ; 6 uses

.noexc2:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !13, !alias.scope !626
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc2
  store ptr %i.y, ptr %0, align 8, !tbaa !17, !alias.scope !626
  %i.af = load i64, ptr %i.z, align 8, !tbaa !18
  store i64 %i.af, ptr %i.x, align 8, !tbaa !18, !alias.scope !626
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !19, !alias.scope !626
  store ptr %i.z, ptr %i.w, align 8, !tbaa !17
  store i64 0, ptr %i.ah, align 8, !tbaa !19
  store i8 0, ptr %i.z, align 8, !tbaa !18
  %i.aj = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.al = load i64, ptr %i.e, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.g
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_json.cpp() #13 section ".text.startup" {
bb.a:
  %0 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %7 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %10 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %12 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %17 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %20 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %22 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %27 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %30 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %31 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %32 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %34 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %35 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %36 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %37 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %38 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %40 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %42 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %45 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %46 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %47 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %48 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %49 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %50 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %51 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %52 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %54 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %55 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %56 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %57 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %58 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %60 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %61 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %62 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %64 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %65 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %67 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %69 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_0v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #17
  store ptr @.str, ptr %65, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 25, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  store ptr @.str.29, ptr %66, align 8, !tbaa !627
  %i.c = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull @.str.1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %69) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(32) %67) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.e = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_2v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #17
  store ptr @.str, ptr %60, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 32, ptr %i.f, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #17
  store ptr @.str.29, ptr %61, align 8, !tbaa !627
  %i.g = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull @.str.4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %64) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar3E, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(32) %62) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar3E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.i = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_4v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  store ptr @.str, ptr %55, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 47, ptr %i.j, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  store ptr @.str.29, ptr %56, align 8, !tbaa !627
  %i.k = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull @.str.6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %59) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar5E, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(32) %57) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
end_hunk_7
begin_hunk_8_@_GLOBAL__sub_I_json.cpp:bb.a
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar13E, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(32) %37) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar13E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.ac = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_14v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  store ptr @.str, ptr %30, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 213, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  store ptr @.str.29, ptr %31, align 8, !tbaa !627
  %i.ae = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str.16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar15E, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(32) %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar15E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.ag = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_16v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  store ptr @.str, ptr %25, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 236, ptr %i.ah, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  store ptr @.str.29, ptr %26, align 8, !tbaa !627
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar17E, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(32) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.aj = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar17E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.ak = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_18v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr @.str, ptr %20, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 246, ptr %i.al, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr @.str.29, ptr %21, align 8, !tbaa !627
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str.20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar19E, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(32) %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.an = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar19E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.ao = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_20v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr @.str, ptr %15, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 255, ptr %i.ap, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr @.str.29, ptr %16, align 8, !tbaa !627
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar21E, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar21E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.as = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_22v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr @.str, ptr %10, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 269, ptr %i.at, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr @.str.29, ptr %11, align 8, !tbaa !627
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar23E, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar23E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.aw = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_24v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr @.str, ptr %5, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 279, ptr %i.ax, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr @.str.29, ptr %6, align 8, !tbaa !627
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar25E, ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.az = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar25E, ptr nonnull @__dso_handle) #17 ; 0 uses
  %i.ba = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL20C_A_T_C_H_T_E_S_T_26v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @.str, ptr %0, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 288, ptr %i.bb, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @.str.29, ptr %1, align 8, !tbaa !627
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.28) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2) #17
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_115autoRegistrar27E, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.bd = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_115autoRegistrar27E, ptr nonnull @__dso_handle) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !6, i64 16}
!17 = !{!16, !11, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!16, !14, i64 8}
!20 = !{!"_ZTSN5Catch14SourceLineInfoE", !11, i64 0, !14, i64 8}
!21 = !{!20, !11, i64 0}
!22 = !{!20, !14, i64 8}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSN5Catch20ITransientExpressionE", !23, i64 8, !23, i64 9}
!25 = !{!24, !23, i64 8}
!26 = !{!24, !23, i64 9}
!27 = !{!"vtable pointer", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!"_ZTSN5Catch9StringRefE", !11, i64 0, !14, i64 8}
!33 = !{!"_ZTSN5Catch17ResultDisposition5FlagsE", !6, i64 0}
!34 = !{!"_ZTSN5Catch13AssertionInfoE", !32, i64 0, !20, i64 16, !32, i64 32, !33, i64 48}
!35 = !{!"_ZTSN5Catch17AssertionReactionE", !23, i64 0, !23, i64 1}
!36 = !{!"p1 _ZTSN5Catch14IResultCaptureE", !10, i64 0}
!37 = !{!"_ZTSN5Catch16AssertionHandlerE", !34, i64 0, !35, i64 56, !23, i64 58, !36, i64 64}
!38 = !{!37, !23, i64 58}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!37, !36, i64 64}
!42 = !{i64 8}
!43 = !{!"_ZTSN5vcpkg10StringViewE", !11, i64 0, !14, i64 8}
!44 = !{!43, !11, i64 0}
!45 = !{!43, !14, i64 8}
!46 = !{!"_ZTSN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEEE", !6, i64 0, !23, i64 32}
!47 = !{!46, !23, i64 32}
!48 = !{!"p1 _ZTSN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEEE", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSN5Catch9UnaryExprIbEE", !24, i64 0, !23, i64 10}
!51 = !{!50, !23, i64 10}
!52 = !{!"_ZTSN5vcpkg8LineInfoE", !7, i64 0, !11, i64 8, !11, i64 16}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !11, i64 8}
!55 = !{!52, !11, i64 16}
!56 = !{!7, !7, i64 0}
!57 = !{!"p1 long", !10, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"p1 int", !10, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSN5vcpkg10StringViewE", !10, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"double", !6, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 double", !10, i64 0}
!66 = !{ptr @_ZN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEED2Ev}
!67 = !{ptr @_ZN5Catch9MatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEED2Ev}
!68 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!69 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!70 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!71 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !14, i64 8}
!72 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!73 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!74 = !{!"_ZTSSt6locale", !73, i64 0}
!75 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !68, i64 24, !69, i64 28, !69, i64 32, !70, i64 40, !71, i64 48, !6, i64 64, !7, i64 192, !72, i64 200, !74, i64 208}
!76 = !{!75, !14, i64 16}
!77 = !{!"p1 _ZTSN5vcpkg15LocalizedStringE", !10, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{i64 4}
!80 = !{!"_ZTSN5Catch8Matchers4Impl18MatcherUntypedBaseE", !16, i64 8}
!81 = !{!"_ZTSN5Catch13CaseSensitive6ChoiceE", !6, i64 0}
!82 = !{!"_ZTSN5Catch8Matchers9StdString11CasedStringE", !81, i64 0, !16, i64 8}
!83 = distinct !{!83, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!84 = distinct !{!84, !83, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!86 = distinct !{!86, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!88 = distinct !{!88, !87, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!90 = distinct !{!90, !89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZN5Catch7ExprLhsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIS6_EEKNS_10BinaryExprIS8_RKT_EESE_"}
!92 = distinct !{!92, !91, !"_ZN5Catch7ExprLhsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIS6_EEKNS_10BinaryExprIS8_RKT_EESE_: argument 0"}
!93 = distinct !{!93, i1 true, !"_ZN5vcpkg4Json5Value6stringIA4_cTnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_S8_"}
!94 = distinct !{!94, !93, !"_ZN5vcpkg4Json5Value6stringIA4_cTnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_S8_: argument 0"}
!95 = distinct !{!95, i1 true, !"_ZN5Catch7ExprLhsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIA10_cEEKNS_10BinaryExprIS8_RKT_EESF_"}
!96 = distinct !{!96, !95, !"_ZN5Catch7ExprLhsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIA10_cEEKNS_10BinaryExprIS8_RKT_EESF_: argument 0"}
!97 = !{!84}
!98 = !{!86}
!99 = !{!88, !86}
!100 = !{!90}
!101 = !{!92}
!102 = !{!94}
!103 = !{!96}
!104 = distinct !{!104, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!105 = distinct !{!105, !104, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!107 = distinct !{!107, !106, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!109 = distinct !{!109, !108, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!111 = distinct !{!111, !110, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!113 = distinct !{!113, !112, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!115 = distinct !{!115, !114, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!117 = distinct !{!117, !116, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!119 = distinct !{!119, !118, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!120 = !{!105}
!121 = !{!107}
!122 = !{!109}
!123 = !{!111}
!124 = !{!113}
!125 = !{!115}
!126 = !{!117}
!127 = !{!119}
!128 = distinct !{!128, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!129 = distinct !{!129, !128, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!131 = distinct !{!131, !130, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!133 = distinct !{!133, !132, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!134 = distinct !{!134, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!135 = distinct !{!135, !134, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!136 = distinct !{!136, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!137 = distinct !{!137, !136, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!138 = distinct !{!138, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA4_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!139 = distinct !{!139, !138, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA4_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!140 = distinct !{!140, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!141 = distinct !{!141, !140, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!143 = distinct !{!143, !142, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEKNS_10BinaryExprIS4_RKT_EESG_"}
!145 = distinct !{!145, !144, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEKNS_10BinaryExprIS4_RKT_EESG_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!147 = distinct !{!147, !146, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!149 = distinct !{!149, !148, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!151 = distinct !{!151, !150, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!152 = distinct !{!152, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!153 = distinct !{!153, !152, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!154 = distinct !{!154, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!155 = distinct !{!155, !154, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!156 = distinct !{!156, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!157 = distinct !{!157, !156, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!158 = !{!129}
!159 = !{!131}
!160 = !{!133}
!161 = !{!135}
!162 = !{!137}
!163 = !{!139}
!164 = !{!141}
!165 = !{!143}
!166 = !{!145}
!167 = !{!147}
!168 = !{!149}
!169 = !{!151}
!170 = !{!153}
!171 = !{!155}
!172 = !{!157}
!173 = distinct !{!173, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!174 = distinct !{!174, !173, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!176 = distinct !{!176, !175, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!178 = distinct !{!178, !177, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!180 = distinct !{!180, !179, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!182 = distinct !{!182, !181, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!184 = distinct !{!184, !183, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!186 = distinct !{!186, !185, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!188 = distinct !{!188, !187, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!190 = distinct !{!190, !189, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!191 = distinct !{!191, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!192 = distinct !{!192, !191, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!194 = distinct !{!194, !193, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!195 = distinct !{!195, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!196 = distinct !{!196, !195, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!197 = distinct !{!197, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!198 = distinct !{!198, !197, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!199 = distinct !{!199, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!200 = distinct !{!200, !199, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!201 = distinct !{!201, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!202 = distinct !{!202, !201, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!203 = distinct !{!203, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!204 = distinct !{!204, !203, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!205 = distinct !{!205, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!206 = distinct !{!206, !205, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!207 = distinct !{!207, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!208 = distinct !{!208, !207, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!209 = distinct !{!209, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!210 = distinct !{!210, !209, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!211 = distinct !{!211, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!212 = distinct !{!212, !211, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!213 = distinct !{!213, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!214 = distinct !{!214, !213, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA2_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!215 = distinct !{!215, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!216 = distinct !{!216, !215, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!217 = distinct !{!217, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!218 = distinct !{!218, !217, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!219 = distinct !{!219, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA38_cEEKNS_10BinaryExprIS4_RKT_EESB_"}
!220 = distinct !{!220, !219, !"_ZN5Catch7ExprLhsIRKN5vcpkg10StringViewEEeqIA38_cEEKNS_10BinaryExprIS4_RKT_EESB_: argument 0"}
!221 = !{!174}
!222 = !{!176}
!223 = !{!178}
!224 = !{!180}
!225 = !{!182}
!226 = !{!184}
!227 = !{!186}
!228 = !{!188}
!229 = !{!190}
!230 = !{!192}
!231 = !{!194}
!232 = !{!196}
!233 = !{!198}
!234 = !{!200}
!235 = !{!202}
!236 = !{!204}
!237 = !{!206}
!238 = !{!208}
!239 = !{!210}
!240 = !{!212}
!241 = !{!214}
!242 = !{!216}
!243 = !{!218}
!244 = !{!220}
!245 = distinct !{!245, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!246 = distinct !{!246, !245, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!247 = distinct !{!247, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!248 = distinct !{!248, !247, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!249 = distinct !{!249, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!250 = distinct !{!250, !249, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!251 = distinct !{!251, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!252 = distinct !{!252, !251, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!253 = distinct !{!253, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!254 = distinct !{!254, !253, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!255 = distinct !{!255, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!256 = distinct !{!256, !255, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!257 = distinct !{!257, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!258 = distinct !{!258, !257, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!259 = distinct !{!259, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!260 = distinct !{!260, !259, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!261 = distinct !{!261, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!262 = distinct !{!262, !261, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!263 = distinct !{!263, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!264 = distinct !{!264, !263, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!265 = distinct !{!265, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!266 = distinct !{!266, !265, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!267 = distinct !{!267, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIlEEKNS_10BinaryExprIS2_RKT_EES8_"}
!268 = distinct !{!268, !267, !"_ZN5Catch7ExprLhsIRKlEeqIlEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!269 = distinct !{!269, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!270 = distinct !{!270, !269, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!271 = distinct !{!271, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!272 = distinct !{!272, !271, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!273 = distinct !{!273, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIlEEKNS_10BinaryExprIS2_RKT_EES8_"}
!274 = distinct !{!274, !273, !"_ZN5Catch7ExprLhsIRKlEeqIlEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!275 = !{!246}
!276 = !{!248}
!277 = !{!250}
!278 = !{!252}
!279 = !{!254}
!280 = !{!256}
!281 = !{!258}
!282 = !{!260}
!283 = !{!262}
!284 = !{!264}
!285 = !{!266}
!286 = !{!268}
!287 = !{!270}
!288 = !{!272}
!289 = !{!274}
!290 = distinct !{!290, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!291 = distinct !{!291, !290, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!292 = distinct !{!292, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!293 = distinct !{!293, !292, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!294 = distinct !{!294, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!295 = distinct !{!295, !294, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!296 = distinct !{!296, i1 true, !"_ZN5Catch7ExprLhsIRKdEeqIdEEKNS_10BinaryExprIS2_RKT_EES8_"}
!297 = distinct !{!297, !296, !"_ZN5Catch7ExprLhsIRKdEeqIdEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!298 = distinct !{!298, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!299 = distinct !{!299, !298, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!300 = distinct !{!300, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!301 = distinct !{!301, !300, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!302 = distinct !{!302, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!303 = distinct !{!303, !302, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!304 = distinct !{!304, i1 true, !"_ZN5Catch7ExprLhsIRKdEeqIdEEKNS_10BinaryExprIS2_RKT_EES8_"}
!305 = distinct !{!305, !304, !"_ZN5Catch7ExprLhsIRKdEeqIdEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!306 = distinct !{!306, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!307 = distinct !{!307, !306, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!308 = distinct !{!308, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!309 = distinct !{!309, !308, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!310 = distinct !{!310, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!311 = distinct !{!311, !310, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!312 = distinct !{!312, i1 true, !"_ZN5Catch13makeMatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEENS_9MatchExprIT_T0_EERKS5_RKS6_RKNS_9StringRefE"}
!313 = distinct !{!313, !312, !"_ZN5Catch13makeMatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEENS_9MatchExprIT_T0_EERKS5_RKS6_RKNS_9StringRefE: argument 0"}
!314 = distinct !{null, null}
!315 = distinct !{!315, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!316 = distinct !{!316, !315, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!317 = distinct !{!317, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!318 = distinct !{!318, !317, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!319 = distinct !{!319, i1 true, !"_ZN5Catch13makeMatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEENS_9MatchExprIT_T0_EERKS5_RKS6_RKNS_9StringRefE"}
!320 = distinct !{!320, !319, !"_ZN5Catch13makeMatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEENS_9MatchExprIT_T0_EERKS5_RKS6_RKNS_9StringRefE: argument 0"}
!321 = !{!291}
!322 = !{!293}
!323 = !{!295}
!324 = !{!297}
!325 = !{!65, !65, i64 0}
!326 = !{!299}
!327 = !{!301}
!328 = !{!303}
!329 = !{!305}
!330 = !{!307}
!331 = !{!309}
!332 = !{!311}
!333 = !{!313}
!334 = !{!316}
!335 = !{!318}
!336 = !{!320}
!337 = distinct !{!337, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!338 = distinct !{!338, !337, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!339 = distinct !{!339, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!340 = distinct !{!340, !339, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!341 = distinct !{!341, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!342 = distinct !{!342, !341, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!343 = distinct !{!343, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!344 = distinct !{!344, !343, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!345 = distinct !{!345, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!346 = distinct !{!346, !345, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!347 = distinct !{!347, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!348 = distinct !{!348, !347, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!349 = distinct !{!349, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!350 = distinct !{!350, !349, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!351 = distinct !{!351, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!352 = distinct !{!352, !351, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!353 = distinct !{!353, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!354 = distinct !{!354, !353, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!355 = distinct !{!355, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!356 = distinct !{!356, !355, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!357 = distinct !{!357, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!358 = distinct !{!358, !357, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!359 = distinct !{!359, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!360 = distinct !{!360, !359, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!361 = distinct !{!361, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!362 = distinct !{!362, !361, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!363 = distinct !{!363, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!364 = distinct !{!364, !363, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!365 = distinct !{!365, i1 true, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!366 = distinct !{!366, !365, !"_ZN5Catch7ExprLhsIRKlEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!367 = distinct !{!367, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!368 = distinct !{!368, !367, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!369 = distinct !{!369, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!370 = distinct !{!370, !369, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!371 = distinct !{!371, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!372 = distinct !{!372, !371, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!373 = distinct !{!373, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!374 = distinct !{!374, !373, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!375 = distinct !{!375, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!376 = distinct !{!376, !375, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!377 = distinct !{!377, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!378 = distinct !{!378, !377, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!379 = !{!338}
!380 = !{!340}
!381 = !{!"p1 _ZTSN5vcpkg4Json5ValueE", !10, i64 0}
!382 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg4Json5ValueESaIS2_EE17_Vector_impl_dataE", !381, i64 0, !381, i64 8, !381, i64 16}
!383 = !{!382, !381, i64 8}
!384 = !{!382, !381, i64 0}
!385 = !{!342}
!386 = !{!344}
!387 = !{!346}
!388 = !{!348}
!389 = !{!350}
!390 = !{!352}
!391 = !{!354}
!392 = !{!356}
!393 = !{!358}
!394 = !{!360}
!395 = !{!362}
!396 = !{!364}
!397 = !{!366}
!398 = !{!368}
!399 = !{!370}
!400 = !{!372}
!401 = !{!374}
!402 = !{!376}
!403 = !{!378}
!404 = distinct !{!404, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!405 = distinct !{!405, !404, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!407 = distinct !{!407, !406, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!408 = distinct !{!408, i1 true, !"_ZN5Catch13makeMatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEENS_9MatchExprIT_T0_EERKSB_RKSC_RKNS_9StringRefE"}
!409 = distinct !{!409, !408, !"_ZN5Catch13makeMatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEENS_9MatchExprIT_T0_EERKSB_RKSC_RKNS_9StringRefE: argument 0"}
!410 = !{!405}
!411 = !{!407}
!412 = !{!409}
!413 = distinct !{!413, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!414 = distinct !{!414, !413, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!415 = distinct !{!415, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!416 = distinct !{!416, !415, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!417 = distinct !{!417, i1 true, !"_ZN5Catch13makeMatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEENS_9MatchExprIT_T0_EERKSB_RKSC_RKNS_9StringRefE"}
!418 = distinct !{!418, !417, !"_ZN5Catch13makeMatchExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8Matchers9StdString15ContainsMatcherEEENS_9MatchExprIT_T0_EERKSB_RKSC_RKNS_9StringRefE: argument 0"}
!419 = !{!414}
!420 = !{!416}
!421 = !{!418}
!422 = distinct !{!422, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!423 = distinct !{!423, !422, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!424 = distinct !{!424, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!425 = distinct !{!425, !424, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!426 = distinct !{!426, i1 true, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_"}
!427 = distinct !{!427, !426, !"_ZN5Catch7ExprLhsIRKmEeqIiEEKNS_10BinaryExprIS2_RKT_EES8_: argument 0"}
!428 = !{!423}
!429 = !{!425}
!430 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEE", !10, i64 0}
!431 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE17_Vector_impl_dataE", !430, i64 0, !430, i64 8, !430, i64 16}
!432 = !{!431, !430, i64 8}
!433 = !{!431, !430, i64 0}
!434 = !{!427}
!435 = distinct !{!435, i1 true, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv"}
!436 = distinct !{!436, !435, !"_ZNK5Catch7ExprLhsIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEE13makeUnaryExprEv: argument 0"}
!437 = !{!436}
!438 = distinct !{!438, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!439 = distinct !{!439, !438, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!440 = distinct !{!440, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!441 = distinct !{!441, !440, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!442 = !{!439}
!443 = !{!441}
!444 = distinct !{!444, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!445 = distinct !{!445, !444, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!446 = distinct !{!446, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!447 = distinct !{!447, !446, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!448 = !{!445}
!449 = !{!447}
!450 = distinct !{!450, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!451 = distinct !{!451, !450, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!452 = distinct !{!452, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!453 = distinct !{!453, !452, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!454 = distinct !{!454, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!455 = distinct !{!455, !454, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!456 = distinct !{!456, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!457 = distinct !{!457, !456, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!458 = distinct !{!458, i1 true, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv"}
!459 = distinct !{!459, !458, !"_ZNK5Catch7ExprLhsIbE13makeUnaryExprEv: argument 0"}
!460 = distinct !{!460, i1 true, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_"}
!461 = distinct !{!461, !460, !"_ZN5Catch7ExprLhsIRKN5vcpkg15LocalizedStringEEeqIS2_EEKNS_10BinaryExprIS4_RKT_EESA_: argument 0"}
!462 = !{!451}
!463 = !{!453}
!464 = !{!455}
!465 = !{!457}
!466 = !{!459}
!467 = !{!461}
!468 = !{!"_ZTSN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE", !24, i64 0, !29, i64 16, !32, i64 24, !29, i64 40}
!469 = !{!468, !29, i64 16}
!470 = !{!468, !29, i64 40}
!471 = !{!"_ZTSN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA10_KcEE", !24, i64 0, !29, i64 16, !32, i64 24, !11, i64 40}
!472 = !{!471, !29, i64 16}
!473 = !{!471, !11, i64 40}
!474 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!475 = !{!"_ZTSN5vcpkg4Json9JsonStyle7NewlineE", !6, i64 0}
!476 = !{!475, !475, i64 0}
!477 = !{i64 0, i64 4, !476, i64 8, i64 8, !15}
!478 = distinct !{!478, i1 true, !"_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!479 = distinct !{!479, !478, !"_ZN5Catch6Detail9stringifyIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!480 = distinct !{!480, i1 true, !"_ZN5Catch11StringMakerIN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEvE7convertIS6_EENSt9enable_ifIXntgssr5Catch6Detail18IsStreamInsertableIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKSA_"}
!481 = distinct !{!481, !480, !"_ZN5Catch11StringMakerIN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEvE7convertIS6_EENSt9enable_ifIXntgssr5Catch6Detail18IsStreamInsertableIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKSA_: argument 0"}
!482 = distinct !{!482, i1 true, !"_ZN5Catch6Detail19convertUnstreamableIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt9enable_ifIXaantsr3std7is_enumIT_EE5valuentsr3std10is_base_ofISt9exceptionS9_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS9_"}
!483 = distinct !{!483, !482, !"_ZN5Catch6Detail19convertUnstreamableIN5vcpkg9ExpectedTINS2_4Json10ParsedJsonENS2_15LocalizedStringEEEEENSt9enable_ifIXaantsr3std7is_enumIT_EE5valuentsr3std10is_base_ofISt9exceptionS9_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS9_: argument 0"}
!484 = !{!479}
!485 = !{!481}
!486 = !{!483}
!487 = !{!483, !481, !479}
!488 = distinct !{!488, i1 true, !"_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!489 = distinct !{!489, !488, !"_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!490 = !{!23, !23, i64 0}
!491 = !{!489}
!492 = distinct !{!492, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_"}
!493 = distinct !{!493, !492, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_: argument 0"}
!494 = distinct !{!494, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!495 = distinct !{!495, !494, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!496 = !{!493}
!497 = !{!495}
!498 = distinct !{!498, i1 true, !"_ZN5Catch6Detail9stringifyImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!499 = distinct !{!499, !498, !"_ZN5Catch6Detail9stringifyImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!501 = distinct !{!501, !500, !"_ZN5Catch6Detail9stringifyIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!502 = !{!"_ZTSN5Catch10BinaryExprIRKmRKiEE", !24, i64 0, !57, i64 16, !32, i64 24, !59, i64 40}
!503 = !{!502, !57, i64 16}
!504 = !{!499}
!505 = !{!502, !59, i64 40}
!506 = !{!501}
!507 = distinct !{!507, i1 true, !"_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!508 = distinct !{!508, !507, !"_ZN5Catch6Detail9stringifyIN5vcpkg10StringViewEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!509 = distinct !{!509, i1 true, !"_ZN5Catch11StringMakerIN5vcpkg10StringViewEvE7convertIS2_EENSt9enable_ifIXgssr5Catch6Detail18IsStreamInsertableIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS6_"}
!510 = distinct !{!510, !509, !"_ZN5Catch11StringMakerIN5vcpkg10StringViewEvE7convertIS2_EENSt9enable_ifIXgssr5Catch6Detail18IsStreamInsertableIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS6_: argument 0"}
!511 = !{!"_ZTSN5Catch10BinaryExprIRKN5vcpkg10StringViewERA4_KcEE", !24, i64 0, !61, i64 16, !32, i64 24, !11, i64 40}
!512 = !{!511, !61, i64 16}
!513 = !{!510, !508}
!514 = !{!511, !11, i64 40}
end_hunk_8
