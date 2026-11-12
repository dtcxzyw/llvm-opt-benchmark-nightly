Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/crc32_chorba_c?download=true
begin_hunk_0
@659 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 836, i32 15 }, ptr @440, i8 3, i8 0 }
@660 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 837, i32 15 } }
@661 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 837, i32 15 }, ptr @440, i8 3, i8 0 }
@662 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 845, i32 19 }, ptr @399, ptr @66 }
@663 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 845, i32 33 }, ptr @399, ptr @66 }
@664 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 846, i32 46 }, ptr @399, ptr @66 }
@665 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 847, i32 33 }, ptr @399, ptr @66 }
@666 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 850, i32 19 }, ptr @399, ptr @66 }
@667 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 850, i32 33 }, ptr @399, ptr @66 }
@668 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 851, i32 46 }, ptr @399, ptr @66 }
@669 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 852, i32 33 }, ptr @399, ptr @66 }
@670 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 855, i32 15 } }
@671 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 855, i32 15 }, ptr @440, i8 3, i8 0 }
@672 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 856, i32 15 } }
@673 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 856, i32 15 }, ptr @440, i8 3, i8 0 }
@674 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 864, i32 19 }, ptr @399, ptr @66 }
@675 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 864, i32 33 }, ptr @399, ptr @66 }
@676 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 865, i32 46 }, ptr @399, ptr @66 }
@677 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 866, i32 33 }, ptr @399, ptr @66 }
@678 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 869, i32 19 }, ptr @399, ptr @66 }
@679 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 869, i32 33 }, ptr @399, ptr @66 }
@680 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 870, i32 46 }, ptr @399, ptr @66 }
@681 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 871, i32 33 }, ptr @399, ptr @66 }
@682 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 886, i32 11 }, ptr @390 }
@683 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 889, i32 15 } }
@684 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 889, i32 15 }, ptr @440, i8 3, i8 0 }
@685 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 890, i32 15 } }
@686 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 890, i32 15 }, ptr @440, i8 3, i8 0 }
@687 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 898, i32 19 }, ptr @399, ptr @66 }
@688 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 898, i32 33 }, ptr @399, ptr @66 }
@689 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 899, i32 46 }, ptr @399, ptr @66 }
@690 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 900, i32 33 }, ptr @399, ptr @66 }
@691 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 903, i32 19 }, ptr @399, ptr @66 }
@692 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 903, i32 33 }, ptr @399, ptr @66 }
@693 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 904, i32 46 }, ptr @399, ptr @66 }
@694 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 905, i32 33 }, ptr @399, ptr @66 }
@695 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 908, i32 15 } }
@696 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 908, i32 15 }, ptr @440, i8 3, i8 0 }
@697 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 909, i32 15 } }
@698 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 909, i32 15 }, ptr @440, i8 3, i8 0 }
@699 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 917, i32 19 }, ptr @399, ptr @66 }
@700 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 917, i32 33 }, ptr @399, ptr @66 }
@701 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 918, i32 46 }, ptr @399, ptr @66 }
@702 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 919, i32 33 }, ptr @399, ptr @66 }
@703 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 922, i32 19 }, ptr @399, ptr @66 }
@704 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 922, i32 33 }, ptr @399, ptr @66 }
@705 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 923, i32 46 }, ptr @399, ptr @66 }
@706 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 924, i32 33 }, ptr @399, ptr @66 }
@707 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 939, i32 11 }, ptr @390 }
@708 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 942, i32 15 } }
@709 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 942, i32 15 }, ptr @440, i8 3, i8 0 }
@710 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 943, i32 15 } }
@711 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 943, i32 15 }, ptr @440, i8 3, i8 0 }
@712 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 951, i32 19 }, ptr @399, ptr @66 }
@713 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 951, i32 33 }, ptr @399, ptr @66 }
@714 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 952, i32 46 }, ptr @399, ptr @66 }
@715 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 953, i32 33 }, ptr @399, ptr @66 }
@716 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 956, i32 19 }, ptr @399, ptr @66 }
@717 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 956, i32 33 }, ptr @399, ptr @66 }
@718 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 957, i32 46 }, ptr @399, ptr @66 }
@719 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 958, i32 33 }, ptr @399, ptr @66 }
@720 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 961, i32 15 } }
@721 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 961, i32 15 }, ptr @440, i8 3, i8 0 }
@722 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 962, i32 15 } }
@723 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 962, i32 15 }, ptr @440, i8 3, i8 0 }
@724 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 970, i32 19 }, ptr @399, ptr @66 }
@725 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 970, i32 33 }, ptr @399, ptr @66 }
@726 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 971, i32 46 }, ptr @399, ptr @66 }
@727 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 972, i32 33 }, ptr @399, ptr @66 }
@728 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 975, i32 19 }, ptr @399, ptr @66 }
@729 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 975, i32 33 }, ptr @399, ptr @66 }
@730 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 976, i32 46 }, ptr @399, ptr @66 }
@731 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 977, i32 33 }, ptr @399, ptr @66 }
@732 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 992, i32 11 }, ptr @390 }
@733 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 995, i32 15 } }
@734 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 995, i32 15 }, ptr @440, i8 3, i8 0 }
@735 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 996, i32 15 } }
@736 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 996, i32 15 }, ptr @440, i8 3, i8 0 }
@737 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1004, i32 19 }, ptr @399, ptr @66 }
@738 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1004, i32 33 }, ptr @399, ptr @66 }
@739 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1005, i32 46 }, ptr @399, ptr @66 }
@740 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1006, i32 33 }, ptr @399, ptr @66 }
@741 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1009, i32 19 }, ptr @399, ptr @66 }
@742 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1009, i32 33 }, ptr @399, ptr @66 }
@743 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1010, i32 46 }, ptr @399, ptr @66 }
@744 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1011, i32 33 }, ptr @399, ptr @66 }
@745 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1014, i32 15 } }
@746 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1014, i32 15 }, ptr @440, i8 3, i8 0 }
@747 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1015, i32 15 } }
@748 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1015, i32 15 }, ptr @440, i8 3, i8 0 }
@749 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1023, i32 19 }, ptr @399, ptr @66 }
@750 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1023, i32 33 }, ptr @399, ptr @66 }
@751 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1024, i32 46 }, ptr @399, ptr @66 }
@752 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1025, i32 33 }, ptr @399, ptr @66 }
@753 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 19 }, ptr @399, ptr @66 }
@754 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1028, i32 33 }, ptr @399, ptr @66 }
@755 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1029, i32 46 }, ptr @399, ptr @66 }
@756 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1030, i32 33 }, ptr @399, ptr @66 }
@757 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1045, i32 11 }, ptr @390 }
@758 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1048, i32 15 } }
@759 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1048, i32 15 }, ptr @440, i8 3, i8 0 }
@760 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1049, i32 15 } }
@761 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1049, i32 15 }, ptr @440, i8 3, i8 0 }
@762 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1057, i32 19 }, ptr @399, ptr @66 }
@763 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1057, i32 33 }, ptr @399, ptr @66 }
@764 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1058, i32 46 }, ptr @399, ptr @66 }
@765 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1059, i32 33 }, ptr @399, ptr @66 }
@766 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1062, i32 19 }, ptr @399, ptr @66 }
@767 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1062, i32 33 }, ptr @399, ptr @66 }
@768 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1063, i32 46 }, ptr @399, ptr @66 }
@769 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1064, i32 33 }, ptr @399, ptr @66 }
@770 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1067, i32 15 } }
@771 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1067, i32 15 }, ptr @440, i8 3, i8 0 }
@772 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 15 } }
@773 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1068, i32 15 }, ptr @440, i8 3, i8 0 }
@774 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1076, i32 19 }, ptr @399, ptr @66 }
@775 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1076, i32 33 }, ptr @399, ptr @66 }
@776 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1077, i32 46 }, ptr @399, ptr @66 }
@777 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1078, i32 33 }, ptr @399, ptr @66 }
@778 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1081, i32 19 }, ptr @399, ptr @66 }
@779 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1081, i32 33 }, ptr @399, ptr @66 }
@780 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1082, i32 46 }, ptr @399, ptr @66 }
@781 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1083, i32 33 }, ptr @399, ptr @66 }
@782 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1098, i32 11 }, ptr @390 }
@783 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1101, i32 15 } }
@784 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1101, i32 15 }, ptr @440, i8 3, i8 0 }
@785 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1102, i32 15 } }
@786 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1102, i32 15 }, ptr @440, i8 3, i8 0 }
@787 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1110, i32 19 }, ptr @399, ptr @66 }
@788 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1110, i32 33 }, ptr @399, ptr @66 }
@789 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1111, i32 46 }, ptr @399, ptr @66 }
@790 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1112, i32 33 }, ptr @399, ptr @66 }
@791 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1115, i32 19 }, ptr @399, ptr @66 }
@792 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1115, i32 33 }, ptr @399, ptr @66 }
@793 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1116, i32 46 }, ptr @399, ptr @66 }
@794 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1117, i32 33 }, ptr @399, ptr @66 }
@795 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1120, i32 15 } }
@796 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1120, i32 15 }, ptr @440, i8 3, i8 0 }
@797 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1121, i32 15 } }
@798 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1121, i32 15 }, ptr @440, i8 3, i8 0 }
@799 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1129, i32 19 }, ptr @399, ptr @66 }
@800 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1129, i32 33 }, ptr @399, ptr @66 }
@801 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1130, i32 46 }, ptr @399, ptr @66 }
@802 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1131, i32 33 }, ptr @399, ptr @66 }
@803 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 19 }, ptr @399, ptr @66 }
@804 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1134, i32 33 }, ptr @399, ptr @66 }
@805 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1135, i32 46 }, ptr @399, ptr @66 }
@806 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1136, i32 33 }, ptr @399, ptr @66 }
@807 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 686, i32 45 }, ptr @390 }
@808 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1152, i32 14 }, ptr @390 }
@809 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1152, i32 19 }, ptr @390 }
@810 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1168, i32 15 } }
@811 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1168, i32 15 }, ptr @440, i8 3, i8 0 }
@812 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1169, i32 15 } }
@813 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1169, i32 15 }, ptr @440, i8 3, i8 0 }
@814 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1177, i32 19 }, ptr @399, ptr @66 }
@815 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1177, i32 33 }, ptr @399, ptr @66 }
@816 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1178, i32 46 }, ptr @399, ptr @66 }
@817 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1179, i32 33 }, ptr @399, ptr @66 }
@818 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1182, i32 19 }, ptr @399, ptr @66 }
@819 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1182, i32 33 }, ptr @399, ptr @66 }
@820 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1183, i32 46 }, ptr @399, ptr @66 }
@821 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1184, i32 33 }, ptr @399, ptr @66 }
@822 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1187, i32 15 } }
@823 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1187, i32 15 }, ptr @440, i8 3, i8 0 }
@824 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1188, i32 15 } }
@825 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1188, i32 15 }, ptr @440, i8 3, i8 0 }
@826 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1196, i32 19 }, ptr @399, ptr @66 }
@827 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1196, i32 33 }, ptr @399, ptr @66 }
@828 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1197, i32 46 }, ptr @399, ptr @66 }
@829 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1198, i32 33 }, ptr @399, ptr @66 }
@830 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1201, i32 19 }, ptr @399, ptr @66 }
@831 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1201, i32 33 }, ptr @399, ptr @66 }
@832 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1202, i32 46 }, ptr @399, ptr @66 }
@833 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1203, i32 33 }, ptr @399, ptr @66 }
@834 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1152, i32 34 }, ptr @390 }
@835 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1227, i32 24 } }
@836 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1227, i32 52 }, ptr @390 }
@837 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 1227, i32 19 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@838 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1227, i32 19 }, ptr @577, i8 3, i8 0 }
@839 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1230, i32 5 } }
@840 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1231, i32 5 } }
@841 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1232, i32 5 } }
@842 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 1234, i32 58 }, ptr @390 }
@843 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1464, i32 40 } }

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_118960_nondestructive(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = alloca [16384 x i64], align 16           ; 211 uses
  %i.b = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = zext i32 %0 to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 271 uses
  %i.e = icmp ne ptr %1, null                     ; 106 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 456 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.gl
  %i.g = add i64 %i.d, 118784                     ; 2 uses
  %3 = icmp ult ptr %1, inttoptr (i64 -118784 to ptr)
  %i.h = add i64 %i.d, 118792                     ; 2 uses
  %4 = icmp ult ptr %1, inttoptr (i64 -118792 to ptr)
  %i.i = add i64 %i.d, 118800                     ; 2 uses
  %5 = icmp ult ptr %1, inttoptr (i64 -118800 to ptr)
  %i.j = add i64 %i.d, 118808                     ; 2 uses
  %6 = icmp ult ptr %1, inttoptr (i64 -118808 to ptr)
  %i.k = add i64 %i.d, 118816                     ; 2 uses
  %7 = icmp ult ptr %1, inttoptr (i64 -118816 to ptr)
  %i.l = add i64 %i.d, 118824                     ; 2 uses
  %8 = icmp ult ptr %1, inttoptr (i64 -118824 to ptr)
  %i.m = add i64 %i.d, 118832                     ; 2 uses
  %9 = icmp ult ptr %1, inttoptr (i64 -118832 to ptr)
  %i.n = add i64 %i.d, 118840                     ; 2 uses
  %10 = icmp ult ptr %1, inttoptr (i64 -118840 to ptr)
  %i.o = add i64 %i.d, 118848                     ; 2 uses
  %11 = icmp ult ptr %1, inttoptr (i64 -118848 to ptr)
  %i.p = add i64 %i.d, 118856                     ; 2 uses
  %12 = icmp ult ptr %1, inttoptr (i64 -118856 to ptr)
  %i.q = add i64 %i.d, 118864                     ; 2 uses
  %13 = icmp ult ptr %1, inttoptr (i64 -118864 to ptr)
  %i.r = add i64 %i.d, 118872                     ; 2 uses
  %14 = icmp ult ptr %1, inttoptr (i64 -118872 to ptr)
  %i.s = add i64 %i.d, 118880                     ; 2 uses
  %15 = icmp ult ptr %1, inttoptr (i64 -118880 to ptr)
  %i.t = add i64 %i.d, 118888                     ; 2 uses
  %16 = icmp ult ptr %1, inttoptr (i64 -118888 to ptr)
  %i.u = add i64 %i.d, 118896                     ; 2 uses
  %17 = icmp ult ptr %1, inttoptr (i64 -118896 to ptr)
  %i.v = add i64 %i.d, 118904                     ; 2 uses
  %18 = icmp ult ptr %1, inttoptr (i64 -118904 to ptr)
  %i.w = add i64 %i.d, 118912                     ; 2 uses
  %19 = icmp ult ptr %1, inttoptr (i64 -118912 to ptr)
  %i.x = add i64 %i.d, 118920                     ; 2 uses
  %20 = icmp ult ptr %1, inttoptr (i64 -118920 to ptr)
  %i.y = add i64 %i.d, 118928                     ; 2 uses
  %21 = icmp ult ptr %1, inttoptr (i64 -118928 to ptr)
  %i.z = add i64 %i.d, 118936                     ; 2 uses
  %22 = icmp ult ptr %1, inttoptr (i64 -118936 to ptr)
  %i.aa = add i64 %i.d, 118944                    ; 2 uses
  %23 = icmp ult ptr %1, inttoptr (i64 -118944 to ptr)
  %i.ab = add i64 %i.d, 118952                    ; 2 uses
  %24 = icmp ult ptr %1, inttoptr (i64 -118952 to ptr)
  %i.ac = add i64 %i.d, 118960                    ; 2 uses
  %25 = icmp ult ptr %1, inttoptr (i64 -118960 to ptr)
  %i.ad = add i64 %i.f, 118960
  %.not1268 = icmp ugt ptr %i.a, inttoptr (i64 -118961 to ptr)
  %i.ae = add i64 %i.d, 118968                    ; 2 uses
  %26 = icmp ult ptr %1, inttoptr (i64 -118968 to ptr)
  %i.af = add i64 %i.f, 118968
  %.not1269 = icmp ugt ptr %i.a, inttoptr (i64 -118969 to ptr)
  %i.ag = add i64 %i.d, 118976                    ; 2 uses
  %27 = icmp ult ptr %1, inttoptr (i64 -118976 to ptr)
  %i.ah = add i64 %i.f, 118976
  %.not1270 = icmp ugt ptr %i.a, inttoptr (i64 -118977 to ptr)
  %i.ai = add i64 %i.d, 118984                    ; 2 uses
  %28 = icmp ult ptr %1, inttoptr (i64 -118984 to ptr)
  %i.aj = add i64 %i.f, 118984
  %.not1271 = icmp ugt ptr %i.a, inttoptr (i64 -118985 to ptr)
  %i.ak = add i64 %i.d, 118992                    ; 2 uses
  %29 = icmp ult ptr %1, inttoptr (i64 -118992 to ptr)
  %i.al = add i64 %i.f, 118992
  %.not1272 = icmp ugt ptr %i.a, inttoptr (i64 -118993 to ptr)
  %i.am = add i64 %i.d, 119000                    ; 2 uses
  %30 = icmp ult ptr %1, inttoptr (i64 -119000 to ptr)
  %i.an = add i64 %i.f, 119000
  %.not1273 = icmp ugt ptr %i.a, inttoptr (i64 -119001 to ptr)
  %i.ao = add i64 %i.d, 119008                    ; 2 uses
  %31 = icmp ult ptr %1, inttoptr (i64 -119008 to ptr)
  %i.ap = add i64 %i.f, 119008
  %.not1274 = icmp ugt ptr %i.a, inttoptr (i64 -119009 to ptr)
  %i.aq = add i64 %i.d, 119016                    ; 2 uses
  %32 = icmp ult ptr %1, inttoptr (i64 -119016 to ptr)
  %i.ar = add i64 %i.f, 119016
  %.not1275 = icmp ugt ptr %i.a, inttoptr (i64 -119017 to ptr)
  %i.as = add i64 %i.d, 119024                    ; 2 uses
  %33 = icmp ult ptr %1, inttoptr (i64 -119024 to ptr)
  %i.at = add i64 %i.f, 119024
  %.not1276 = icmp ugt ptr %i.a, inttoptr (i64 -119025 to ptr)
  %i.au = add i64 %i.d, 119032                    ; 2 uses
  %34 = icmp ult ptr %1, inttoptr (i64 -119032 to ptr)
  %i.av = add i64 %i.f, 119032
  %.not1277 = icmp ugt ptr %i.a, inttoptr (i64 -119033 to ptr)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 118784 ; 2 uses
  %i.ax = icmp ne i64 %i.g, 0
  %i.ay = and i1 %i.ax, %3
  %i.az = and i1 %i.e, %i.ay
  br i1 %i.az, label %bb.gn, label %bb.gm, !prof !13, !nosanitize !14

bb.b:                                             ; preds = %bb.a, %bb.gl
  %.09521383 = phi i64 [ 0, %bb.a ], [ %i.sy, %bb.gl ]
  %.09531382 = phi i64 [ 0, %bb.a ], [ %i.sj, %bb.gl ]
  %.09561381 = phi i64 [ 0, %bb.a ], [ %i.ru, %bb.gl ]
  %.09591380 = phi i64 [ 0, %bb.a ], [ %i.rf, %bb.gl ]
  %.09621379 = phi i64 [ 0, %bb.a ], [ %i.qq, %bb.gl ]
  %.09651378 = phi i64 [ 0, %bb.a ], [ %i.qb, %bb.gl ]
  %.09681377 = phi i64 [ 0, %bb.a ], [ %i.pm, %bb.gl ]
  %.09711376 = phi i64 [ 0, %bb.a ], [ %i.ox, %bb.gl ]
  %.09741375 = phi i64 [ 0, %bb.a ], [ %i.oi, %bb.gl ]
  %.09771374 = phi i64 [ 0, %bb.a ], [ %i.nt, %bb.gl ]
  %.09801373 = phi i64 [ 0, %bb.a ], [ %i.ne, %bb.gl ]
  %.09831372 = phi i64 [ 0, %bb.a ], [ %i.tq, %bb.gl ]
  %.09861371 = phi i64 [ 0, %bb.a ], [ %i.tp, %bb.gl ]
  %.09891370 = phi i64 [ 0, %bb.a ], [ %i.to, %bb.gl ]
  %.09921369 = phi i64 [ 0, %bb.a ], [ %i.tn, %bb.gl ]
  %.09951368 = phi i64 [ 0, %bb.a ], [ %i.tm, %bb.gl ]
  %.09981367 = phi i64 [ 0, %bb.a ], [ %i.tk, %bb.gl ]
  %.010011366 = phi i64 [ 0, %bb.a ], [ %i.ti, %bb.gl ]
  %.010041365 = phi i64 [ 0, %bb.a ], [ %i.tg, %bb.gl ]
  %.010071364 = phi i64 [ 0, %bb.a ], [ %i.te, %bb.gl ]
  %.010101363 = phi i64 [ 0, %bb.a ], [ %i.tc, %bb.gl ]
  %.010131362 = phi i64 [ %i.c, %bb.a ], [ %i.ta, %bb.gl ]
  %.010161361 = phi i64 [ 0, %bb.a ], [ %i.zu, %bb.gl ] ; 5 uses
  %i.ba = lshr exact i64 %.010161361, 3           ; 32 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 14848
  %i.bd = and i32 %i.bc, 16352                    ; 10 uses
  %i.be = add nuw nsw i32 %i.bb, 14880
  %i.bf = and i32 %i.be, 16352                    ; 22 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.010161361 ; 2 uses
  %i.bh = add i64 %.010161361, %i.d, !nosanitize !14 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = xor i1 %i.e, %i.bi
  %i.bk = icmp uge i64 %i.bh, %i.d, !nosanitize !14
  %i.bl = and i1 %i.bk, %i.bj, !nosanitize !14
  br i1 %i.bl, label %bb.d, label %bb.c, !prof !13, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @1, i64 %i.d, i64 %i.bh) #6, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bm = ptrtoint ptr %i.bg to i64, !nosanitize !14 ; 2 uses
  %i.bn = and i64 %i.bm, 7, !nosanitize !14
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !14
  %i.bp = and i1 %i.e, %i.bo
  br i1 %i.bp, label %bb.f, label %bb.e, !prof !13, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.bm) #6, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.br = xor i64 %i.bq, %.010131362              ; 4 uses
  %i.bs = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bs, 3
  %i.bv = add i64 %i.bu, %i.d, !nosanitize !14    ; 3 uses
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = icmp uge i64 %i.bv, %i.d, !nosanitize !14
  %i.by = and i1 %i.bw, %i.bx
  %i.bz = and i1 %i.e, %i.by
  br i1 %i.bz, label %bb.h, label %bb.g, !prof !13, !nosanitize !14

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %i.d, i64 %i.bv) #6, !nosanitize !14
  br label %bb.h, !nosanitize !14

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ca = ptrtoint ptr %i.bt to i64, !nosanitize !14 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !nosanitize !14
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !14
  br i1 %i.cc, label %bb.j, label %bb.i, !prof !13, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.ca) #6, !nosanitize !14
  br label %bb.j, !nosanitize !14

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cd = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.ce = xor i64 %i.cd, %.010101363              ; 4 uses
  %i.cf = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cf ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cf, 3
  %i.ci = add i64 %i.ch, %i.d, !nosanitize !14    ; 3 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp uge i64 %i.ci, %i.d, !nosanitize !14
  %i.cl = and i1 %i.cj, %i.ck
  %i.cm = and i1 %i.e, %i.cl
  br i1 %i.cm, label %bb.l, label %bb.k, !prof !13, !nosanitize !14

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.d, i64 %i.ci) #6, !nosanitize !14
  br label %bb.l, !nosanitize !14

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = ptrtoint ptr %i.cg to i64, !nosanitize !14 ; 2 uses
  %i.co = and i64 %i.cn, 7, !nosanitize !14
  %i.cp = icmp eq i64 %i.co, 0, !nosanitize !14
  br i1 %i.cp, label %bb.n, label %bb.m, !prof !13, !nosanitize !14

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %i.cn) #6, !nosanitize !14
  br label %bb.n, !nosanitize !14

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cq = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cr = xor i64 %i.cq, %.010071364              ; 4 uses
  %i.cs = or disjoint i64 %i.ba, 3                ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs ; 2 uses
  %i.cu = shl nuw nsw i64 %i.cs, 3
  %i.cv = add i64 %i.cu, %i.d, !nosanitize !14    ; 3 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = icmp uge i64 %i.cv, %i.d, !nosanitize !14
  %i.cy = and i1 %i.cw, %i.cx
  %i.cz = and i1 %i.e, %i.cy
  br i1 %i.cz, label %bb.p, label %bb.o, !prof !13, !nosanitize !14

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.d, i64 %i.cv) #6, !nosanitize !14
  br label %bb.p, !nosanitize !14

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = ptrtoint ptr %i.ct to i64, !nosanitize !14 ; 2 uses
  %i.db = and i64 %i.da, 7, !nosanitize !14
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !14
  br i1 %i.dc, label %bb.r, label %bb.q, !prof !13, !nosanitize !14

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @9, i64 %i.da) #6, !nosanitize !14
  br label %bb.r, !nosanitize !14

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dd = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.de = xor i64 %i.dd, %.010041365              ; 4 uses
  %i.df = or disjoint i64 %i.ba, 4                ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.df ; 2 uses
  %i.dh = shl nuw nsw i64 %i.df, 3
  %i.di = add i64 %i.dh, %i.d, !nosanitize !14    ; 3 uses
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = icmp uge i64 %i.di, %i.d, !nosanitize !14
  %i.dl = and i1 %i.dj, %i.dk
  %i.dm = and i1 %i.e, %i.dl
  br i1 %i.dm, label %bb.t, label %bb.s, !prof !13, !nosanitize !14

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.d, i64 %i.di) #6, !nosanitize !14
  br label %bb.t, !nosanitize !14

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = ptrtoint ptr %i.dg to i64, !nosanitize !14 ; 2 uses
  %i.do = and i64 %i.dn, 7, !nosanitize !14
  %i.dp = icmp eq i64 %i.do, 0, !nosanitize !14
  br i1 %i.dp, label %bb.v, label %bb.u, !prof !13, !nosanitize !14

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.dn) #6, !nosanitize !14
  br label %bb.v, !nosanitize !14

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dq = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.dr = xor i64 %i.dq, %.010011366              ; 4 uses
  %i.ds = or disjoint i64 %i.ba, 5                ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ds ; 2 uses
  %i.du = shl nuw nsw i64 %i.ds, 3
  %i.dv = add i64 %i.du, %i.d, !nosanitize !14    ; 3 uses
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = icmp uge i64 %i.dv, %i.d, !nosanitize !14
  %i.dy = and i1 %i.dw, %i.dx
  %i.dz = and i1 %i.e, %i.dy
  br i1 %i.dz, label %bb.x, label %bb.w, !prof !13, !nosanitize !14

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.d, i64 %i.dv) #6, !nosanitize !14
  br label %bb.x, !nosanitize !14

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ea = ptrtoint ptr %i.dt to i64, !nosanitize !14 ; 2 uses
  %i.eb = and i64 %i.ea, 7, !nosanitize !14
  %i.ec = icmp eq i64 %i.eb, 0, !nosanitize !14
  br i1 %i.ec, label %bb.z, label %bb.y, !prof !13, !nosanitize !14

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.ea) #6, !nosanitize !14
  br label %bb.z, !nosanitize !14

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ed = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.ee = xor i64 %i.ed, %.09981367               ; 4 uses
  %i.ef = or disjoint i64 %i.ba, 6                ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ef ; 2 uses
  %i.eh = shl nuw nsw i64 %i.ef, 3
  %i.ei = add i64 %i.eh, %i.d, !nosanitize !14    ; 3 uses
  %i.ej = icmp ne i64 %i.ei, 0
end_hunk_0
begin_hunk_1_@crc32_chorba_118960_nondestructive:bb.a

bb.fn:                                            ; preds = %bb.fl, %bb.fm
  store i64 %i.ma, ptr %i.xj, align 8, !tbaa !16
  %i.xm = or disjoint i32 %i.bf, 10
  %i.xn = zext nneg i32 %i.xm to i64              ; 2 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.xn
  %i.xp = shl nuw nsw i64 %i.xn, 3
  %i.xq = add i64 %i.xp, %i.f, !nosanitize !14    ; 2 uses
  %.not1332 = icmp ult i64 %i.xq, %i.f, !nosanitize !14
  br i1 %.not1332, label %bb.fo, label %bb.fp, !prof !17, !nosanitize !14

bb.fo:                                            ; preds = %bb.fn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @88, i64 %i.f, i64 %i.xq) #6, !nosanitize !14
  br label %bb.fp, !nosanitize !14

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  store i64 %i.mp, ptr %i.xo, align 16, !tbaa !16
  %i.xr = or disjoint i32 %i.bf, 11
  %i.xs = zext nneg i32 %i.xr to i64              ; 2 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.xs
  %i.xu = shl nuw nsw i64 %i.xs, 3
  %i.xv = add i64 %i.xu, %i.f, !nosanitize !14    ; 2 uses
  %.not1333 = icmp ult i64 %i.xv, %i.f, !nosanitize !14
  br i1 %.not1333, label %bb.fq, label %bb.fr, !prof !17, !nosanitize !14

bb.fq:                                            ; preds = %bb.fp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @89, i64 %i.f, i64 %i.xv) #6, !nosanitize !14
  br label %bb.fr, !nosanitize !14

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  store i64 %i.ne, ptr %i.xt, align 8, !tbaa !16
  %i.xw = or disjoint i32 %i.bf, 12
  %i.xx = zext nneg i32 %i.xw to i64              ; 2 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.xx
  %i.xz = shl nuw nsw i64 %i.xx, 3
  %i.ya = add i64 %i.xz, %i.f, !nosanitize !14    ; 2 uses
  %.not1334 = icmp ult i64 %i.ya, %i.f, !nosanitize !14
  br i1 %.not1334, label %bb.fs, label %bb.ft, !prof !17, !nosanitize !14

bb.fs:                                            ; preds = %bb.fr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @90, i64 %i.f, i64 %i.ya) #6, !nosanitize !14
  br label %bb.ft, !nosanitize !14

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  store i64 %i.nt, ptr %i.xy, align 16, !tbaa !16
  %i.yb = or disjoint i32 %i.bf, 13
  %i.yc = zext nneg i32 %i.yb to i64              ; 2 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yc
  %i.ye = shl nuw nsw i64 %i.yc, 3
  %i.yf = add i64 %i.ye, %i.f, !nosanitize !14    ; 2 uses
  %.not1335 = icmp ult i64 %i.yf, %i.f, !nosanitize !14
  br i1 %.not1335, label %bb.fu, label %bb.fv, !prof !17, !nosanitize !14

bb.fu:                                            ; preds = %bb.ft
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @91, i64 %i.f, i64 %i.yf) #6, !nosanitize !14
  br label %bb.fv, !nosanitize !14

bb.fv:                                            ; preds = %bb.ft, %bb.fu
  store i64 %i.oi, ptr %i.yd, align 8, !tbaa !16
  %i.yg = or disjoint i32 %i.bf, 14
  %i.yh = zext nneg i32 %i.yg to i64              ; 2 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yh
  %i.yj = shl nuw nsw i64 %i.yh, 3
  %i.yk = add i64 %i.yj, %i.f, !nosanitize !14    ; 2 uses
  %.not1336 = icmp ult i64 %i.yk, %i.f, !nosanitize !14
  br i1 %.not1336, label %bb.fw, label %bb.fx, !prof !17, !nosanitize !14

bb.fw:                                            ; preds = %bb.fv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %i.f, i64 %i.yk) #6, !nosanitize !14
  br label %bb.fx, !nosanitize !14

bb.fx:                                            ; preds = %bb.fv, %bb.fw
  store i64 %i.ox, ptr %i.yi, align 16, !tbaa !16
  %i.yl = or disjoint i32 %i.bf, 15
  %i.ym = zext nneg i32 %i.yl to i64              ; 2 uses
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ym
  %i.yo = shl nuw nsw i64 %i.ym, 3
  %i.yp = add i64 %i.yo, %i.f, !nosanitize !14    ; 2 uses
  %.not1337 = icmp ult i64 %i.yp, %i.f, !nosanitize !14
  br i1 %.not1337, label %bb.fy, label %bb.fz, !prof !17, !nosanitize !14

bb.fy:                                            ; preds = %bb.fx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @93, i64 %i.f, i64 %i.yp) #6, !nosanitize !14
  br label %bb.fz, !nosanitize !14

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  store i64 %i.pm, ptr %i.yn, align 8, !tbaa !16
  %i.yq = or disjoint i32 %i.bf, 16
  %i.yr = zext nneg i32 %i.yq to i64              ; 2 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yr
  %i.yt = shl nuw nsw i64 %i.yr, 3
  %i.yu = add i64 %i.yt, %i.f, !nosanitize !14    ; 2 uses
  %.not1338 = icmp ult i64 %i.yu, %i.f, !nosanitize !14
  br i1 %.not1338, label %bb.ga, label %bb.gb, !prof !17, !nosanitize !14

bb.ga:                                            ; preds = %bb.fz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @94, i64 %i.f, i64 %i.yu) #6, !nosanitize !14
  br label %bb.gb, !nosanitize !14

bb.gb:                                            ; preds = %bb.fz, %bb.ga
  store i64 %i.qb, ptr %i.ys, align 16, !tbaa !16
  %i.yv = or disjoint i32 %i.bf, 17
  %i.yw = zext nneg i32 %i.yv to i64              ; 2 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yw
  %i.yy = shl nuw nsw i64 %i.yw, 3
  %i.yz = add i64 %i.yy, %i.f, !nosanitize !14    ; 2 uses
  %.not1339 = icmp ult i64 %i.yz, %i.f, !nosanitize !14
  br i1 %.not1339, label %bb.gc, label %bb.gd, !prof !17, !nosanitize !14

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @95, i64 %i.f, i64 %i.yz) #6, !nosanitize !14
  br label %bb.gd, !nosanitize !14

bb.gd:                                            ; preds = %bb.gb, %bb.gc
  store i64 %i.qq, ptr %i.yx, align 8, !tbaa !16
  %i.za = or disjoint i32 %i.bf, 18
  %i.zb = zext nneg i32 %i.za to i64              ; 2 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.zb
  %i.zd = shl nuw nsw i64 %i.zb, 3
  %i.ze = add i64 %i.zd, %i.f, !nosanitize !14    ; 2 uses
  %.not1340 = icmp ult i64 %i.ze, %i.f, !nosanitize !14
  br i1 %.not1340, label %bb.ge, label %bb.gf, !prof !17, !nosanitize !14

bb.ge:                                            ; preds = %bb.gd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @96, i64 %i.f, i64 %i.ze) #6, !nosanitize !14
  br label %bb.gf, !nosanitize !14

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  store i64 %i.rf, ptr %i.zc, align 16, !tbaa !16
  %i.zf = or disjoint i32 %i.bf, 19
  %i.zg = zext nneg i32 %i.zf to i64              ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.zg
  %i.zi = shl nuw nsw i64 %i.zg, 3
  %i.zj = add i64 %i.zi, %i.f, !nosanitize !14    ; 2 uses
  %.not1341 = icmp ult i64 %i.zj, %i.f, !nosanitize !14
  br i1 %.not1341, label %bb.gg, label %bb.gh, !prof !17, !nosanitize !14

bb.gg:                                            ; preds = %bb.gf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @97, i64 %i.f, i64 %i.zj) #6, !nosanitize !14
  br label %bb.gh, !nosanitize !14

bb.gh:                                            ; preds = %bb.gf, %bb.gg
  store i64 %i.ru, ptr %i.zh, align 8, !tbaa !16
  %i.zk = or disjoint i32 %i.bf, 20
  %i.zl = zext nneg i32 %i.zk to i64              ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.zl
  %i.zn = shl nuw nsw i64 %i.zl, 3
  %i.zo = add i64 %i.zn, %i.f, !nosanitize !14    ; 2 uses
  %.not1342 = icmp ult i64 %i.zo, %i.f, !nosanitize !14
  br i1 %.not1342, label %bb.gi, label %bb.gj, !prof !17, !nosanitize !14

bb.gi:                                            ; preds = %bb.gh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @98, i64 %i.f, i64 %i.zo) #6, !nosanitize !14
  br label %bb.gj, !nosanitize !14

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  store i64 %i.sj, ptr %i.zm, align 16, !tbaa !16
  %i.zp = or disjoint i32 %i.bf, 21
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.zq
  %i.zs = shl nuw nsw i64 %i.zq, 3
  %i.zt = add i64 %i.zs, %i.f, !nosanitize !14    ; 2 uses
  %.not1343 = icmp ult i64 %i.zt, %i.f, !nosanitize !14
  br i1 %.not1343, label %bb.gk, label %bb.gl, !prof !17, !nosanitize !14

bb.gk:                                            ; preds = %bb.gj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @99, i64 %i.f, i64 %i.zt) #6, !nosanitize !14
  br label %bb.gl, !nosanitize !14

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  store i64 %i.sy, ptr %i.zr, align 8, !tbaa !16
  %i.zu = add nuw nsw i64 %.010161361, 256
  %i.zv = icmp samesign ult i64 %.010161361, 118528
  br i1 %i.zv, label %bb.b, label %.lr.ph, !llvm.loop !24

.preheader:                                       ; preds = %bb.md, %bb.me
  store i64 %i.ake, ptr %i.anh, align 8, !tbaa !16
  %i.zw = add i64 %2, -119040
  br label %bb.mf

bb.gm:                                            ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.d, i64 %i.g) #6, !nosanitize !14
  br label %bb.gn, !nosanitize !14

bb.gn:                                            ; preds = %bb.gm, %.lr.ph
  %i.zx = ptrtoint ptr %i.aw to i64, !nosanitize !14 ; 2 uses
  %i.zy = and i64 %i.zx, 7, !nosanitize !14
  %i.zz = icmp eq i64 %i.zy, 0, !nosanitize !14
  %i.aaa = and i1 %i.e, %i.zz
  br i1 %i.aaa, label %bb.gp, label %bb.go, !prof !13, !nosanitize !14

bb.go:                                            ; preds = %bb.gn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @101, i64 %i.zx) #6, !nosanitize !14
  br label %bb.gp, !nosanitize !14

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.aab = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.aac = xor i64 %i.aab, %i.ta                  ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 118792
  %i.aae = icmp ne i64 %i.h, 0
  %i.aaf = and i1 %i.aae, %4
  %i.aag = and i1 %i.e, %i.aaf
  br i1 %i.aag, label %bb.gr, label %bb.gq, !prof !13, !nosanitize !14

bb.gq:                                            ; preds = %bb.gp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.d, i64 %i.h) #6, !nosanitize !14
  br label %bb.gr, !nosanitize !14

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %i.aah = load i64, ptr %i.aad, align 8, !tbaa !16
  %i.aai = xor i64 %i.aah, %i.tc                  ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 118800
  %i.aak = icmp ne i64 %i.i, 0
  %i.aal = and i1 %i.aak, %5
  %i.aam = and i1 %i.e, %i.aal
  br i1 %i.aam, label %bb.gt, label %bb.gs, !prof !13, !nosanitize !14

bb.gs:                                            ; preds = %bb.gr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.d, i64 %i.i) #6, !nosanitize !14
  br label %bb.gt, !nosanitize !14

bb.gt:                                            ; preds = %bb.gr, %bb.gs
  %i.aan = load i64, ptr %i.aaj, align 8, !tbaa !16
  %i.aao = xor i64 %i.aan, %i.te                  ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 118808
  %i.aaq = icmp ne i64 %i.j, 0
  %i.aar = and i1 %i.aaq, %6
  %i.aas = and i1 %i.e, %i.aar
  br i1 %i.aas, label %bb.gv, label %bb.gu, !prof !13, !nosanitize !14

bb.gu:                                            ; preds = %bb.gt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @104, i64 %i.d, i64 %i.j) #6, !nosanitize !14
  br label %bb.gv, !nosanitize !14

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  %i.aat = load i64, ptr %i.aap, align 8, !tbaa !16
  %i.aau = xor i64 %i.aat, %i.tg                  ; 4 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 118816
  %i.aaw = icmp ne i64 %i.k, 0
  %i.aax = and i1 %i.aaw, %7
  %i.aay = and i1 %i.e, %i.aax
  br i1 %i.aay, label %bb.gx, label %bb.gw, !prof !13, !nosanitize !14

bb.gw:                                            ; preds = %bb.gv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.d, i64 %i.k) #6, !nosanitize !14
  br label %bb.gx, !nosanitize !14

bb.gx:                                            ; preds = %bb.gv, %bb.gw
  %i.aaz = load i64, ptr %i.aav, align 8, !tbaa !16
  %i.aba = xor i64 %i.aaz, %i.ti                  ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 118824
  %i.abc = icmp ne i64 %i.l, 0
  %i.abd = and i1 %i.abc, %8
  %i.abe = and i1 %i.e, %i.abd
  br i1 %i.abe, label %bb.gz, label %bb.gy, !prof !13, !nosanitize !14

bb.gy:                                            ; preds = %bb.gx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @106, i64 %i.d, i64 %i.l) #6, !nosanitize !14
  br label %bb.gz, !nosanitize !14

bb.gz:                                            ; preds = %bb.gx, %bb.gy
  %i.abf = load i64, ptr %i.abb, align 8, !tbaa !16
  %i.abg = xor i64 %i.abf, %i.tk                  ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 118832
  %i.abi = icmp ne i64 %i.m, 0
  %i.abj = and i1 %i.abi, %9
  %i.abk = and i1 %i.e, %i.abj
  br i1 %i.abk, label %bb.hb, label %bb.ha, !prof !13, !nosanitize !14

bb.ha:                                            ; preds = %bb.gz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.d, i64 %i.m) #6, !nosanitize !14
  br label %bb.hb, !nosanitize !14

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  %i.abl = load i64, ptr %i.abh, align 8, !tbaa !16
  %i.abm = xor i64 %i.abl, %i.tm                  ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 118840
  %i.abo = icmp ne i64 %i.n, 0
  %i.abp = and i1 %i.abo, %10
  %i.abq = and i1 %i.e, %i.abp
  br i1 %i.abq, label %bb.hd, label %bb.hc, !prof !13, !nosanitize !14

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @108, i64 %i.d, i64 %i.n) #6, !nosanitize !14
  br label %bb.hd, !nosanitize !14

bb.hd:                                            ; preds = %bb.hb, %bb.hc
  %i.abr = load i64, ptr %i.abn, align 8, !tbaa !16
  %i.abs = xor i64 %i.tn, %i.abr
  %i.abt = xor i64 %i.abs, %i.aac                 ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 118848
  %i.abv = icmp ne i64 %i.o, 0
  %i.abw = and i1 %i.abv, %11
  %i.abx = and i1 %i.e, %i.abw
  br i1 %i.abx, label %bb.hf, label %bb.he, !prof !13, !nosanitize !14

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @109, i64 %i.d, i64 %i.o) #6, !nosanitize !14
  br label %bb.hf, !nosanitize !14

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %i.aby = load i64, ptr %i.abu, align 8, !tbaa !16
  %i.abz = xor i64 %i.to, %i.aby
  %i.aca = xor i64 %i.abz, %i.aai                 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 118856
  %i.acc = icmp ne i64 %i.p, 0
  %i.acd = and i1 %i.acc, %12
  %i.ace = and i1 %i.e, %i.acd
  br i1 %i.ace, label %bb.hh, label %bb.hg, !prof !13, !nosanitize !14

bb.hg:                                            ; preds = %bb.hf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.d, i64 %i.p) #6, !nosanitize !14
  br label %bb.hh, !nosanitize !14

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %i.acf = load i64, ptr %i.acb, align 8, !tbaa !16
  %i.acg = xor i64 %i.tp, %i.acf
  %i.ach = xor i64 %i.acg, %i.aao                 ; 4 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 118864
  %i.acj = icmp ne i64 %i.q, 0
  %i.ack = and i1 %i.acj, %13
  %i.acl = and i1 %i.e, %i.ack
  br i1 %i.acl, label %bb.hj, label %bb.hi, !prof !13, !nosanitize !14

bb.hi:                                            ; preds = %bb.hh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 %i.d, i64 %i.q) #6, !nosanitize !14
  br label %bb.hj, !nosanitize !14

bb.hj:                                            ; preds = %bb.hh, %bb.hi
  %i.acm = load i64, ptr %i.aci, align 8, !tbaa !16
  %i.acn = xor i64 %i.tq, %i.acm
  %i.aco = xor i64 %i.acn, %i.aau                 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 118872
  %i.acq = icmp ne i64 %i.r, 0
  %i.acr = and i1 %i.acq, %14
  %i.acs = and i1 %i.e, %i.acr
  br i1 %i.acs, label %bb.hl, label %bb.hk, !prof !13, !nosanitize !14

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @112, i64 %i.d, i64 %i.r) #6, !nosanitize !14
  br label %bb.hl, !nosanitize !14

bb.hl:                                            ; preds = %bb.hj, %bb.hk
  %i.act = load i64, ptr %i.acp, align 8, !tbaa !16
  %i.acu = xor i64 %i.ne, %i.act
  %i.acv = xor i64 %i.acu, %i.aac
  %i.acw = xor i64 %i.acv, %i.aba                 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 118880
  %i.acy = icmp ne i64 %i.s, 0
  %i.acz = and i1 %i.acy, %15
  %i.ada = and i1 %i.e, %i.acz
  br i1 %i.ada, label %bb.hn, label %bb.hm, !prof !13, !nosanitize !14

bb.hm:                                            ; preds = %bb.hl
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.d, i64 %i.s) #6, !nosanitize !14
  br label %bb.hn, !nosanitize !14

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  %i.adb = load i64, ptr %i.acx, align 8, !tbaa !16
  %i.adc = xor i64 %i.nt, %i.adb
  %i.add = xor i64 %i.adc, %i.aai
  %i.ade = xor i64 %i.add, %i.abg                 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 118888
  %i.adg = icmp ne i64 %i.t, 0
  %i.adh = and i1 %i.adg, %16
  %i.adi = and i1 %i.e, %i.adh
  br i1 %i.adi, label %bb.hp, label %bb.ho, !prof !13, !nosanitize !14

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @114, i64 %i.d, i64 %i.t) #6, !nosanitize !14
  br label %bb.hp, !nosanitize !14

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  %i.adj = load i64, ptr %i.adf, align 8, !tbaa !16
  %i.adk = xor i64 %i.oi, %i.adj
  %i.adl = xor i64 %i.adk, %i.aao
  %i.adm = xor i64 %i.adl, %i.abm                 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 118896
  %i.ado = icmp ne i64 %i.u, 0
  %i.adp = and i1 %i.ado, %17
  %i.adq = and i1 %i.e, %i.adp
  br i1 %i.adq, label %bb.hr, label %bb.hq, !prof !13, !nosanitize !14

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.d, i64 %i.u) #6, !nosanitize !14
  br label %bb.hr, !nosanitize !14

bb.hr:                                            ; preds = %bb.hp, %bb.hq
  %i.adr = load i64, ptr %i.adn, align 8, !tbaa !16
  %i.ads = xor i64 %i.ox, %i.adr
  %i.adt = xor i64 %i.ads, %i.aau
  %i.adu = xor i64 %i.adt, %i.abt                 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 118904
  %i.adw = icmp ne i64 %i.v, 0
  %i.adx = and i1 %i.adw, %18
  %i.ady = and i1 %i.e, %i.adx
  br i1 %i.ady, label %bb.ht, label %bb.hs, !prof !13, !nosanitize !14

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @116, i64 %i.d, i64 %i.v) #6, !nosanitize !14
  br label %bb.ht, !nosanitize !14

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %i.adz = load i64, ptr %i.adv, align 8, !tbaa !16
  %i.aea = xor i64 %i.pm, %i.adz
  %i.aeb = xor i64 %i.aea, %i.aba
  %i.aec = xor i64 %i.aeb, %i.aca                 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 118912
  %i.aee = icmp ne i64 %i.w, 0
  %i.aef = and i1 %i.aee, %19
  %i.aeg = and i1 %i.e, %i.aef
  br i1 %i.aeg, label %bb.hv, label %bb.hu, !prof !13, !nosanitize !14

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @117, i64 %i.d, i64 %i.w) #6, !nosanitize !14
  br label %bb.hv, !nosanitize !14

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %i.aeh = load i64, ptr %i.aed, align 8, !tbaa !16
  %i.aei = xor i64 %i.qb, %i.aeh
  %i.aej = xor i64 %i.aei, %i.abg
  %i.aek = xor i64 %i.aej, %i.ach                 ; 4 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 118920
  %i.aem = icmp ne i64 %i.x, 0
  %i.aen = and i1 %i.aem, %20
  %i.aeo = and i1 %i.e, %i.aen
  br i1 %i.aeo, label %bb.hx, label %bb.hw, !prof !13, !nosanitize !14

bb.hw:                                            ; preds = %bb.hv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @118, i64 %i.d, i64 %i.x) #6, !nosanitize !14
  br label %bb.hx, !nosanitize !14

bb.hx:                                            ; preds = %bb.hv, %bb.hw
  %i.aep = load i64, ptr %i.ael, align 8, !tbaa !16
  %i.aeq = xor i64 %i.qq, %i.aep
  %i.aer = xor i64 %i.aeq, %i.abm
  %i.aes = xor i64 %i.aer, %i.aco                 ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 118928
  %i.aeu = icmp ne i64 %i.y, 0
  %i.aev = and i1 %i.aeu, %21
  %i.aew = and i1 %i.e, %i.aev
  br i1 %i.aew, label %bb.hz, label %bb.hy, !prof !13, !nosanitize !14

bb.hy:                                            ; preds = %bb.hx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @119, i64 %i.d, i64 %i.y) #6, !nosanitize !14
  br label %bb.hz, !nosanitize !14

bb.hz:                                            ; preds = %bb.hx, %bb.hy
  %i.aex = load i64, ptr %i.aet, align 8, !tbaa !16
  %i.aey = xor i64 %i.rf, %i.aex
  %i.aez = xor i64 %i.aey, %i.abt
  %i.afa = xor i64 %i.aez, %i.acw                 ; 4 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 118936
  %i.afc = icmp ne i64 %i.z, 0
  %i.afd = and i1 %i.afc, %22
  %i.afe = and i1 %i.e, %i.afd
  br i1 %i.afe, label %bb.ib, label %bb.ia, !prof !13, !nosanitize !14

bb.ia:                                            ; preds = %bb.hz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @120, i64 %i.d, i64 %i.z) #6, !nosanitize !14
  br label %bb.ib, !nosanitize !14

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %i.aff = load i64, ptr %i.afb, align 8, !tbaa !16
  %i.afg = xor i64 %i.ru, %i.aff
  %i.afh = xor i64 %i.afg, %i.aca
  %i.afi = xor i64 %i.afh, %i.ade                 ; 4 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 118944
  %i.afk = icmp ne i64 %i.aa, 0
  %i.afl = and i1 %i.afk, %23
  %i.afm = and i1 %i.e, %i.afl
  br i1 %i.afm, label %bb.id, label %bb.ic, !prof !13, !nosanitize !14

bb.ic:                                            ; preds = %bb.ib
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @121, i64 %i.d, i64 %i.aa) #6, !nosanitize !14
  br label %bb.id, !nosanitize !14

bb.id:                                            ; preds = %bb.ib, %bb.ic
  %i.afn = load i64, ptr %i.afj, align 8, !tbaa !16
  %i.afo = xor i64 %i.sj, %i.afn
  %i.afp = xor i64 %i.afo, %i.ach
  %i.afq = xor i64 %i.afp, %i.adm                 ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 118952
  %i.afs = icmp ne i64 %i.ab, 0
  %i.aft = and i1 %i.afs, %24
  %i.afu = and i1 %i.e, %i.aft
  br i1 %i.afu, label %bb.if, label %bb.ie, !prof !13, !nosanitize !14

bb.ie:                                            ; preds = %bb.id
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @122, i64 %i.d, i64 %i.ab) #6, !nosanitize !14
  br label %bb.if, !nosanitize !14

bb.if:                                            ; preds = %bb.id, %bb.ie
  %i.afv = load i64, ptr %i.afr, align 8, !tbaa !16
  %i.afw = xor i64 %i.afv, %i.sy                  ; 2 uses
  %i.afx = xor i64 %i.adu, %i.aco
  %i.afy = xor i64 %i.afx, %i.afw                 ; 4 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 118960
  %i.aga = icmp ne i64 %i.ac, 0
  %i.agb = and i1 %i.aga, %25
  %i.agc = and i1 %i.e, %i.agb
  br i1 %i.agc, label %bb.ih, label %bb.ig, !prof !13, !nosanitize !14

bb.ig:                                            ; preds = %bb.if
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @123, i64 %i.d, i64 %i.ac) #6, !nosanitize !14
  br label %bb.ih, !nosanitize !14

bb.ih:                                            ; preds = %bb.if, %bb.ig
  %i.agd = load i64, ptr %i.afz, align 8, !tbaa !16
  %i.age = getelementptr inbounds nuw i8, ptr %i.a, i64 118960
  br i1 %.not1268, label %bb.ii, label %bb.ij, !prof !17, !nosanitize !14

bb.ii:                                            ; preds = %bb.ih
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @124, i64 %i.f, i64 %i.ad) #6, !nosanitize !14
  br label %bb.ij, !nosanitize !14

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %i.agf = load i64, ptr %i.age, align 16, !tbaa !16
  %i.agg = xor i64 %i.agd, %i.agf
  %i.agh = xor i64 %i.agg, %i.aac                 ; 2 uses
  %i.agi = xor i64 %i.aec, %i.acw
  %i.agj = xor i64 %i.agi, %i.agh                 ; 4 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 118968
  %i.agl = icmp ne i64 %i.ae, 0
  %i.agm = and i1 %i.agl, %26
  %i.agn = and i1 %i.e, %i.agm
  br i1 %i.agn, label %bb.il, label %bb.ik, !prof !13, !nosanitize !14

bb.ik:                                            ; preds = %bb.ij
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @125, i64 %i.d, i64 %i.ae) #6, !nosanitize !14
  br label %bb.il, !nosanitize !14

bb.il:                                            ; preds = %bb.ij, %bb.ik
  %i.ago = load i64, ptr %i.agk, align 8, !tbaa !16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.a, i64 118968
  br i1 %.not1269, label %bb.im, label %bb.in, !prof !17, !nosanitize !14

bb.im:                                            ; preds = %bb.il
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @126, i64 %i.f, i64 %i.af) #6, !nosanitize !14
  br label %bb.in, !nosanitize !14

bb.in:                                            ; preds = %bb.il, %bb.im
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !16
  %i.agr = xor i64 %i.ago, %i.agq
  %i.ags = xor i64 %i.agr, %i.aai                 ; 2 uses
  %i.agt = xor i64 %i.aek, %i.ade
  %i.agu = xor i64 %i.agt, %i.ags                 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 118976
  %i.agw = icmp ne i64 %i.ag, 0
  %i.agx = and i1 %i.agw, %27
  %i.agy = and i1 %i.e, %i.agx
  br i1 %i.agy, label %bb.ip, label %bb.io, !prof !13, !nosanitize !14

bb.io:                                            ; preds = %bb.in
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @127, i64 %i.d, i64 %i.ag) #6, !nosanitize !14
  br label %bb.ip, !nosanitize !14

bb.ip:                                            ; preds = %bb.in, %bb.io
  %i.agz = load i64, ptr %i.agv, align 8, !tbaa !16
  %i.aha = getelementptr inbounds nuw i8, ptr %i.a, i64 118976
  br i1 %.not1270, label %bb.iq, label %bb.ir, !prof !17, !nosanitize !14

bb.iq:                                            ; preds = %bb.ip
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @128, i64 %i.f, i64 %i.ah) #6, !nosanitize !14
  br label %bb.ir, !nosanitize !14

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %i.ahb = load i64, ptr %i.aha, align 16, !tbaa !16
  %i.ahc = xor i64 %i.agz, %i.ahb
  %i.ahd = xor i64 %i.ahc, %i.aao                 ; 2 uses
  %i.ahe = xor i64 %i.aes, %i.adm
  %i.ahf = xor i64 %i.ahe, %i.ahd                 ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 118984
  %i.ahh = icmp ne i64 %i.ai, 0
  %i.ahi = and i1 %i.ahh, %28
  %i.ahj = and i1 %i.e, %i.ahi
  br i1 %i.ahj, label %bb.it, label %bb.is, !prof !13, !nosanitize !14

bb.is:                                            ; preds = %bb.ir
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @129, i64 %i.d, i64 %i.ai) #6, !nosanitize !14
  br label %bb.it, !nosanitize !14

bb.it:                                            ; preds = %bb.ir, %bb.is
  %i.ahk = load i64, ptr %i.ahg, align 8, !tbaa !16
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 118984
  br i1 %.not1271, label %bb.iu, label %bb.iv, !prof !17, !nosanitize !14

bb.iu:                                            ; preds = %bb.it
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @130, i64 %i.f, i64 %i.aj) #6, !nosanitize !14
  br label %bb.iv, !nosanitize !14

bb.iv:                                            ; preds = %bb.it, %bb.iu
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !16
  %i.ahn = xor i64 %i.ahk, %i.ahm
  %i.aho = xor i64 %i.ahn, %i.aau                 ; 2 uses
  %i.ahp = xor i64 %i.afa, %i.adu
  %i.ahq = xor i64 %i.ahp, %i.aho                 ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 118992
  %i.ahs = icmp ne i64 %i.ak, 0
  %i.aht = and i1 %i.ahs, %29
  %i.ahu = and i1 %i.e, %i.aht
  br i1 %i.ahu, label %bb.ix, label %bb.iw, !prof !13, !nosanitize !14

bb.iw:                                            ; preds = %bb.iv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @131, i64 %i.d, i64 %i.ak) #6, !nosanitize !14
  br label %bb.ix, !nosanitize !14

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %i.ahv = load i64, ptr %i.ahr, align 8, !tbaa !16
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.a, i64 118992
  br i1 %.not1272, label %bb.iy, label %bb.iz, !prof !17, !nosanitize !14

bb.iy:                                            ; preds = %bb.ix
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @132, i64 %i.f, i64 %i.al) #6, !nosanitize !14
  br label %bb.iz, !nosanitize !14

bb.iz:                                            ; preds = %bb.ix, %bb.iy
  %i.ahx = load i64, ptr %i.ahw, align 16, !tbaa !16
  %i.ahy = xor i64 %i.ahv, %i.ahx
  %i.ahz = xor i64 %i.ahy, %i.aba                 ; 2 uses
  %i.aia = xor i64 %i.afi, %i.aec
  %i.aib = xor i64 %i.aia, %i.ahz                 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 119000
  %i.aid = icmp ne i64 %i.am, 0
  %i.aie = and i1 %i.aid, %30
  %i.aif = and i1 %i.e, %i.aie
  br i1 %i.aif, label %bb.jb, label %bb.ja, !prof !13, !nosanitize !14

bb.ja:                                            ; preds = %bb.iz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @133, i64 %i.d, i64 %i.am) #6, !nosanitize !14
  br label %bb.jb, !nosanitize !14

bb.jb:                                            ; preds = %bb.iz, %bb.ja
  %i.aig = load i64, ptr %i.aic, align 8, !tbaa !16
  %i.aih = getelementptr inbounds nuw i8, ptr %i.a, i64 119000
  br i1 %.not1273, label %bb.jc, label %bb.jd, !prof !17, !nosanitize !14

bb.jc:                                            ; preds = %bb.jb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @134, i64 %i.f, i64 %i.an) #6, !nosanitize !14
  br label %bb.jd, !nosanitize !14

bb.jd:                                            ; preds = %bb.jb, %bb.jc
  %i.aii = load i64, ptr %i.aih, align 8, !tbaa !16
  %i.aij = xor i64 %i.aig, %i.aii
  %i.aik = xor i64 %i.aij, %i.abg                 ; 2 uses
  %i.ail = xor i64 %i.afq, %i.aek
  %i.aim = xor i64 %i.ail, %i.aik                 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 119008
  %i.aio = icmp ne i64 %i.ao, 0
  %i.aip = and i1 %i.aio, %31
  %i.aiq = and i1 %i.e, %i.aip
  br i1 %i.aiq, label %bb.jf, label %bb.je, !prof !13, !nosanitize !14

bb.je:                                            ; preds = %bb.jd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @135, i64 %i.d, i64 %i.ao) #6, !nosanitize !14
  br label %bb.jf, !nosanitize !14

bb.jf:                                            ; preds = %bb.jd, %bb.je
  %i.air = load i64, ptr %i.ain, align 8, !tbaa !16
  %i.ais = getelementptr inbounds nuw i8, ptr %i.a, i64 119008
  br i1 %.not1274, label %bb.jg, label %bb.jh, !prof !17, !nosanitize !14

bb.jg:                                            ; preds = %bb.jf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @136, i64 %i.f, i64 %i.ap) #6, !nosanitize !14
  br label %bb.jh, !nosanitize !14

bb.jh:                                            ; preds = %bb.jf, %bb.jg
  %i.ait = load i64, ptr %i.ais, align 16, !tbaa !16
  %i.aiu = xor i64 %i.air, %i.ait
  %i.aiv = xor i64 %i.aiu, %i.abm                 ; 2 uses
  %i.aiw = xor i64 %i.afy, %i.aes
  %i.aix = xor i64 %i.aiw, %i.aiv                 ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 119016
  %i.aiz = icmp ne i64 %i.aq, 0
  %i.aja = and i1 %i.aiz, %32
  %i.ajb = and i1 %i.e, %i.aja
  br i1 %i.ajb, label %bb.jj, label %bb.ji, !prof !13, !nosanitize !14

bb.ji:                                            ; preds = %bb.jh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @137, i64 %i.d, i64 %i.aq) #6, !nosanitize !14
  br label %bb.jj, !nosanitize !14

bb.jj:                                            ; preds = %bb.jh, %bb.ji
  %i.ajc = load i64, ptr %i.aiy, align 8, !tbaa !16
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 119016
  br i1 %.not1275, label %bb.jk, label %bb.jl, !prof !17, !nosanitize !14

bb.jk:                                            ; preds = %bb.jj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @138, i64 %i.f, i64 %i.ar) #6, !nosanitize !14
  br label %bb.jl, !nosanitize !14

bb.jl:                                            ; preds = %bb.jj, %bb.jk
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !16
  %i.ajf = xor i64 %i.ajc, %i.aje
  %i.ajg = xor i64 %i.ajf, %i.abt                 ; 2 uses
  %i.ajh = xor i64 %i.agj, %i.afa
  %i.aji = xor i64 %i.ajh, %i.ajg                 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 119024
  %i.ajk = icmp ne i64 %i.as, 0
  %i.ajl = and i1 %i.ajk, %33
  %i.ajm = and i1 %i.e, %i.ajl
  br i1 %i.ajm, label %bb.jn, label %bb.jm, !prof !13, !nosanitize !14

bb.jm:                                            ; preds = %bb.jl
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @139, i64 %i.d, i64 %i.as) #6, !nosanitize !14
  br label %bb.jn, !nosanitize !14

bb.jn:                                            ; preds = %bb.jl, %bb.jm
  %i.ajn = load i64, ptr %i.ajj, align 8, !tbaa !16
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.a, i64 119024
  br i1 %.not1276, label %bb.jo, label %bb.jp, !prof !17, !nosanitize !14

bb.jo:                                            ; preds = %bb.jn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @140, i64 %i.f, i64 %i.at) #6, !nosanitize !14
  br label %bb.jp, !nosanitize !14

bb.jp:                                            ; preds = %bb.jn, %bb.jo
  %i.ajp = load i64, ptr %i.ajo, align 16, !tbaa !16
  %i.ajq = xor i64 %i.ajn, %i.ajp
  %i.ajr = xor i64 %i.ajq, %i.aca                 ; 2 uses
  %i.ajs = xor i64 %i.agu, %i.afi
  %i.ajt = xor i64 %i.ajs, %i.ajr                 ; 3 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 119032
  %i.ajv = icmp ne i64 %i.au, 0
  %i.ajw = and i1 %i.ajv, %34
  %i.ajx = and i1 %i.e, %i.ajw
  br i1 %i.ajx, label %bb.jr, label %bb.jq, !prof !13, !nosanitize !14

bb.jq:                                            ; preds = %bb.jp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @141, i64 %i.d, i64 %i.au) #6, !nosanitize !14
  br label %bb.jr, !nosanitize !14

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %i.ajy = load i64, ptr %i.aju, align 8, !tbaa !16
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.a, i64 119032
  br i1 %.not1277, label %bb.js, label %bb.jt, !prof !17, !nosanitize !14

bb.js:                                            ; preds = %bb.jr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @142, i64 %i.f, i64 %i.av) #6, !nosanitize !14
  br label %bb.jt, !nosanitize !14

bb.jt:                                            ; preds = %bb.jr, %bb.js
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !16
  %i.akb = xor i64 %i.ajy, %i.aka
  %i.akc = xor i64 %i.akb, %i.ach                 ; 2 uses
  %i.akd = xor i64 %i.ahf, %i.afq
  %i.ake = xor i64 %i.akd, %i.akc                 ; 3 uses
  %i.akf = xor i64 %i.afw, %i.adu
  %i.akg = xor i64 %i.akf, %i.ahq
  %i.akh = xor i64 %i.agh, %i.aec
  %i.aki = xor i64 %i.akh, %i.aib
  %i.akj = xor i64 %i.ags, %i.aek
  %i.akk = xor i64 %i.akj, %i.aim
  %i.akl = xor i64 %i.ahd, %i.aes
  %i.akm = xor i64 %i.akl, %i.aix
  %i.akn = xor i64 %i.aho, %i.afa
  %i.ako = xor i64 %i.akn, %i.aji
  %i.akp = xor i64 %i.ahz, %i.afi
  %i.akq = xor i64 %i.akp, %i.ajt
  %i.akr = xor i64 %i.aik, %i.afq
  %i.aks = xor i64 %i.akr, %i.ake
  %i.akt = xor i64 %i.aiv, %i.afy
  %i.aku = xor i64 %i.ajg, %i.agj
  %i.akv = xor i64 %i.ajr, %i.agu
  %i.akw = xor i64 %i.akc, %i.ahf
  %i.akx = getelementptr inbounds nuw i8, ptr %i.a, i64 106672
  %.not1278 = icmp ugt ptr %i.a, inttoptr (i64 -106673 to ptr)
  br i1 %.not1278, label %bb.ju, label %bb.jv, !prof !17, !nosanitize !14

bb.ju:                                            ; preds = %bb.jt
  %i.aky = add i64 %i.f, 106672, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @143, i64 %i.f, i64 %i.aky) #6, !nosanitize !14
  br label %bb.jv, !nosanitize !14

bb.jv:                                            ; preds = %bb.jt, %bb.ju
  store i64 %i.aac, ptr %i.akx, align 16, !tbaa !16
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 106680
  %.not1279 = icmp ugt ptr %i.a, inttoptr (i64 -106681 to ptr)
  br i1 %.not1279, label %bb.jw, label %bb.jx, !prof !17, !nosanitize !14

bb.jw:                                            ; preds = %bb.jv
  %i.ala = add i64 %i.f, 106680, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @144, i64 %i.f, i64 %i.ala) #6, !nosanitize !14
  br label %bb.jx, !nosanitize !14

bb.jx:                                            ; preds = %bb.jv, %bb.jw
  store i64 %i.aai, ptr %i.akz, align 8, !tbaa !16
  %i.alb = getelementptr inbounds nuw i8, ptr %i.a, i64 106688
  %.not1280 = icmp ugt ptr %i.a, inttoptr (i64 -106689 to ptr)
  br i1 %.not1280, label %bb.jy, label %bb.jz, !prof !17, !nosanitize !14

bb.jy:                                            ; preds = %bb.jx
  %i.alc = add i64 %i.f, 106688, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @145, i64 %i.f, i64 %i.alc) #6, !nosanitize !14
  br label %bb.jz, !nosanitize !14

bb.jz:                                            ; preds = %bb.jx, %bb.jy
  store i64 %i.aao, ptr %i.alb, align 16, !tbaa !16
  %i.ald = getelementptr inbounds nuw i8, ptr %i.a, i64 106696
  %.not1281 = icmp ugt ptr %i.a, inttoptr (i64 -106697 to ptr)
  br i1 %.not1281, label %bb.ka, label %bb.kb, !prof !17, !nosanitize !14

bb.ka:                                            ; preds = %bb.jz
  %i.ale = add i64 %i.f, 106696, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @146, i64 %i.f, i64 %i.ale) #6, !nosanitize !14
  br label %bb.kb, !nosanitize !14

bb.kb:                                            ; preds = %bb.jz, %bb.ka
  store i64 %i.aau, ptr %i.ald, align 8, !tbaa !16
  %i.alf = getelementptr inbounds nuw i8, ptr %i.a, i64 106704
  %.not1282 = icmp ugt ptr %i.a, inttoptr (i64 -106705 to ptr)
  br i1 %.not1282, label %bb.kc, label %bb.kd, !prof !17, !nosanitize !14

bb.kc:                                            ; preds = %bb.kb
  %i.alg = add i64 %i.f, 106704, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @147, i64 %i.f, i64 %i.alg) #6, !nosanitize !14
  br label %bb.kd, !nosanitize !14

bb.kd:                                            ; preds = %bb.kb, %bb.kc
  store i64 %i.aba, ptr %i.alf, align 16, !tbaa !16
  %i.alh = getelementptr inbounds nuw i8, ptr %i.a, i64 106712
  %.not1283 = icmp ugt ptr %i.a, inttoptr (i64 -106713 to ptr)
  br i1 %.not1283, label %bb.ke, label %bb.kf, !prof !17, !nosanitize !14

bb.ke:                                            ; preds = %bb.kd
  %i.ali = add i64 %i.f, 106712, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @148, i64 %i.f, i64 %i.ali) #6, !nosanitize !14
  br label %bb.kf, !nosanitize !14

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  store i64 %i.abg, ptr %i.alh, align 8, !tbaa !16
  %i.alj = getelementptr inbounds nuw i8, ptr %i.a, i64 106720
  %.not1284 = icmp ugt ptr %i.a, inttoptr (i64 -106721 to ptr)
  br i1 %.not1284, label %bb.kg, label %bb.kh, !prof !17, !nosanitize !14

bb.kg:                                            ; preds = %bb.kf
  %i.alk = add i64 %i.f, 106720, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @149, i64 %i.f, i64 %i.alk) #6, !nosanitize !14
  br label %bb.kh, !nosanitize !14

bb.kh:                                            ; preds = %bb.kf, %bb.kg
  store i64 %i.abm, ptr %i.alj, align 16, !tbaa !16
  %i.all = getelementptr inbounds nuw i8, ptr %i.a, i64 106728
  %.not1285 = icmp ugt ptr %i.a, inttoptr (i64 -106729 to ptr)
  br i1 %.not1285, label %bb.ki, label %bb.kj, !prof !17, !nosanitize !14

bb.ki:                                            ; preds = %bb.kh
  %i.alm = add i64 %i.f, 106728, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @150, i64 %i.f, i64 %i.alm) #6, !nosanitize !14
  br label %bb.kj, !nosanitize !14

bb.kj:                                            ; preds = %bb.kh, %bb.ki
  store i64 %i.abt, ptr %i.all, align 8, !tbaa !16
  %i.aln = getelementptr inbounds nuw i8, ptr %i.a, i64 106736
  %.not1286 = icmp ugt ptr %i.a, inttoptr (i64 -106737 to ptr)
  br i1 %.not1286, label %bb.kk, label %bb.kl, !prof !17, !nosanitize !14

bb.kk:                                            ; preds = %bb.kj
  %i.alo = add i64 %i.f, 106736, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @151, i64 %i.f, i64 %i.alo) #6, !nosanitize !14
  br label %bb.kl, !nosanitize !14

bb.kl:                                            ; preds = %bb.kj, %bb.kk
  store i64 %i.aca, ptr %i.aln, align 16, !tbaa !16
  %i.alp = getelementptr inbounds nuw i8, ptr %i.a, i64 106744
  %.not1287 = icmp ugt ptr %i.a, inttoptr (i64 -106745 to ptr)
  br i1 %.not1287, label %bb.km, label %bb.kn, !prof !17, !nosanitize !14

bb.km:                                            ; preds = %bb.kl
  %i.alq = add i64 %i.f, 106744, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @152, i64 %i.f, i64 %i.alq) #6, !nosanitize !14
  br label %bb.kn, !nosanitize !14

bb.kn:                                            ; preds = %bb.kl, %bb.km
  store i64 %i.ach, ptr %i.alp, align 8, !tbaa !16
  %i.alr = getelementptr inbounds nuw i8, ptr %i.a, i64 106752
  %.not1288 = icmp ugt ptr %i.a, inttoptr (i64 -106753 to ptr)
  br i1 %.not1288, label %bb.ko, label %bb.kp, !prof !17, !nosanitize !14

bb.ko:                                            ; preds = %bb.kn
  %i.als = add i64 %i.f, 106752, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @153, i64 %i.f, i64 %i.als) #6, !nosanitize !14
  br label %bb.kp, !nosanitize !14

bb.kp:                                            ; preds = %bb.kn, %bb.ko
  store i64 %i.aco, ptr %i.alr, align 16, !tbaa !16
  %i.alt = getelementptr inbounds nuw i8, ptr %i.a, i64 106760
  %.not1290 = icmp ugt ptr %i.a, inttoptr (i64 -106761 to ptr)
  br i1 %.not1290, label %bb.kq, label %bb.kr, !prof !17, !nosanitize !14

bb.kq:                                            ; preds = %bb.kp
  %i.alu = add i64 %i.f, 106760, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @154, i64 %i.f, i64 %i.alu) #6, !nosanitize !14
  br label %bb.kr, !nosanitize !14

bb.kr:                                            ; preds = %bb.kp, %bb.kq
  store i64 %i.acw, ptr %i.alt, align 8, !tbaa !16
  %i.alv = getelementptr inbounds nuw i8, ptr %i.a, i64 106768
  %.not1291 = icmp ugt ptr %i.a, inttoptr (i64 -106769 to ptr)
  br i1 %.not1291, label %bb.ks, label %bb.kt, !prof !17, !nosanitize !14

bb.ks:                                            ; preds = %bb.kr
  %i.alw = add i64 %i.f, 106768, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 %i.f, i64 %i.alw) #6, !nosanitize !14
  br label %bb.kt, !nosanitize !14

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  store i64 %i.ade, ptr %i.alv, align 16, !tbaa !16
  %i.alx = getelementptr inbounds nuw i8, ptr %i.a, i64 106776
  %.not1292 = icmp ugt ptr %i.a, inttoptr (i64 -106777 to ptr)
  br i1 %.not1292, label %bb.ku, label %bb.kv, !prof !17, !nosanitize !14

bb.ku:                                            ; preds = %bb.kt
  %i.aly = add i64 %i.f, 106776, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @156, i64 %i.f, i64 %i.aly) #6, !nosanitize !14
  br label %bb.kv, !nosanitize !14

bb.kv:                                            ; preds = %bb.kt, %bb.ku
  store i64 %i.adm, ptr %i.alx, align 8, !tbaa !16
  %i.alz = getelementptr inbounds nuw i8, ptr %i.a, i64 106784
  %.not1293 = icmp ugt ptr %i.a, inttoptr (i64 -106785 to ptr)
  br i1 %.not1293, label %bb.kw, label %bb.kx, !prof !17, !nosanitize !14

bb.kw:                                            ; preds = %bb.kv
  %i.ama = add i64 %i.f, 106784, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @157, i64 %i.f, i64 %i.ama) #6, !nosanitize !14
  br label %bb.kx, !nosanitize !14

bb.kx:                                            ; preds = %bb.kv, %bb.kw
  store i64 %i.adu, ptr %i.alz, align 16, !tbaa !16
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 106792
  %.not1294 = icmp ugt ptr %i.a, inttoptr (i64 -106793 to ptr)
  br i1 %.not1294, label %bb.ky, label %bb.kz, !prof !17, !nosanitize !14

bb.ky:                                            ; preds = %bb.kx
end_hunk_1
