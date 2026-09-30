Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/crc32_chorba_c?download=true
begin_hunk_0
@653 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 816, i32 19 }, ptr @399, ptr @66 }
@654 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 816, i32 33 }, ptr @399, ptr @66 }
@655 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 817, i32 46 }, ptr @399, ptr @66 }
@656 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 818, i32 33 }, ptr @399, ptr @66 }
@657 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 833, i32 11 }, ptr @390 }
@658 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 836, i32 15 } }
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
  %i.e = icmp ne ptr %1, null                     ; 105 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 456 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.gl
  %i.g = add i64 %i.d, 118784                     ; 2 uses
  %i.h = add i64 %i.d, 118792                     ; 2 uses
  %i.i = add i64 %i.d, 118800                     ; 2 uses
  %i.j = add i64 %i.d, 118808                     ; 2 uses
  %i.k = add i64 %i.d, 118816                     ; 2 uses
  %i.l = add i64 %i.d, 118824                     ; 2 uses
  %i.m = add i64 %i.d, 118832                     ; 2 uses
  %i.n = add i64 %i.d, 118840                     ; 2 uses
  %i.o = add i64 %i.d, 118848                     ; 2 uses
  %i.p = add i64 %i.d, 118856                     ; 2 uses
  %i.q = add i64 %i.d, 118864                     ; 2 uses
  %i.r = add i64 %i.d, 118872                     ; 2 uses
  %i.s = add i64 %i.d, 118880                     ; 2 uses
  %i.t = add i64 %i.d, 118888                     ; 2 uses
  %i.u = add i64 %i.d, 118896                     ; 2 uses
  %i.v = add i64 %i.d, 118904                     ; 2 uses
  %i.w = add i64 %i.d, 118912                     ; 2 uses
  %i.x = add i64 %i.d, 118920                     ; 2 uses
  %i.y = add i64 %i.d, 118928                     ; 2 uses
  %i.z = add i64 %i.d, 118936                     ; 2 uses
  %i.aa = add i64 %i.d, 118944                    ; 2 uses
  %i.ab = add i64 %i.d, 118952                    ; 2 uses
  %i.ac = add i64 %i.d, 118960                    ; 2 uses
  %i.ad = add i64 %i.f, 118960
  %i.ae = add i64 %i.d, 118968                    ; 2 uses
  %i.af = add i64 %i.f, 118968
  %i.ag = add i64 %i.d, 118976                    ; 2 uses
  %i.ah = add i64 %i.f, 118976
  %i.ai = add i64 %i.d, 118984                    ; 2 uses
  %i.aj = add i64 %i.f, 118984
  %i.ak = add i64 %i.d, 118992                    ; 2 uses
  %i.al = add i64 %i.f, 118992
  %i.am = add i64 %i.d, 119000                    ; 2 uses
  %i.an = add i64 %i.f, 119000
  %i.ao = add i64 %i.d, 119008                    ; 2 uses
  %i.ap = add i64 %i.f, 119008
  %i.aq = add i64 %i.d, 119016                    ; 2 uses
  %i.ar = add i64 %i.f, 119016
  %i.as = add i64 %i.d, 119024                    ; 2 uses
  %i.at = add i64 %i.f, 119024
  %i.au = add i64 %i.d, 119032                    ; 2 uses
  %i.av = add i64 %i.f, 119032
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 118784 ; 2 uses
  %i.ax = icmp ne i64 %i.g, 0
  %i.ay = icmp ult ptr %1, inttoptr (i64 -118784 to ptr)
  %i.az = and i1 %i.ax, %i.ay
  %i.ba = and i1 %i.e, %i.az
  br i1 %i.ba, label %bb.gn, label %bb.gm, !prof !13, !nosanitize !14

bb.b:                                             ; preds = %bb.a, %bb.gl
  %.09521383 = phi i64 [ 0, %bb.a ], [ %i.sz, %bb.gl ]
  %.09531382 = phi i64 [ 0, %bb.a ], [ %i.sk, %bb.gl ]
  %.09561381 = phi i64 [ 0, %bb.a ], [ %i.rv, %bb.gl ]
  %.09591380 = phi i64 [ 0, %bb.a ], [ %i.rg, %bb.gl ]
  %.09621379 = phi i64 [ 0, %bb.a ], [ %i.qr, %bb.gl ]
  %.09651378 = phi i64 [ 0, %bb.a ], [ %i.qc, %bb.gl ]
  %.09681377 = phi i64 [ 0, %bb.a ], [ %i.pn, %bb.gl ]
  %.09711376 = phi i64 [ 0, %bb.a ], [ %i.oy, %bb.gl ]
  %.09741375 = phi i64 [ 0, %bb.a ], [ %i.oj, %bb.gl ]
  %.09771374 = phi i64 [ 0, %bb.a ], [ %i.nu, %bb.gl ]
  %.09801373 = phi i64 [ 0, %bb.a ], [ %i.nf, %bb.gl ]
  %.09831372 = phi i64 [ 0, %bb.a ], [ %i.tr, %bb.gl ]
  %.09861371 = phi i64 [ 0, %bb.a ], [ %i.tq, %bb.gl ]
  %.09891370 = phi i64 [ 0, %bb.a ], [ %i.tp, %bb.gl ]
  %.09921369 = phi i64 [ 0, %bb.a ], [ %i.to, %bb.gl ]
  %.09951368 = phi i64 [ 0, %bb.a ], [ %i.tn, %bb.gl ]
  %.09981367 = phi i64 [ 0, %bb.a ], [ %i.tl, %bb.gl ]
  %.010011366 = phi i64 [ 0, %bb.a ], [ %i.tj, %bb.gl ]
  %.010041365 = phi i64 [ 0, %bb.a ], [ %i.th, %bb.gl ]
  %.010071364 = phi i64 [ 0, %bb.a ], [ %i.tf, %bb.gl ]
  %.010101363 = phi i64 [ 0, %bb.a ], [ %i.td, %bb.gl ]
  %.010131362 = phi i64 [ %i.c, %bb.a ], [ %i.tb, %bb.gl ]
  %.010161361 = phi i64 [ 0, %bb.a ], [ %i.zv, %bb.gl ] ; 5 uses
  %i.bb = lshr exact i64 %.010161361, 3           ; 32 uses
  %i.bc = trunc nuw nsw i64 %i.bb to i32          ; 2 uses
  %i.bd = add nuw nsw i32 %i.bc, 14848
  %i.be = and i32 %i.bd, 16352                    ; 10 uses
  %i.bf = add nuw nsw i32 %i.bc, 14880
  %i.bg = and i32 %i.bf, 16352                    ; 22 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.010161361 ; 2 uses
  %i.bi = add i64 %.010161361, %i.d, !nosanitize !14 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = xor i1 %i.e, %i.bj
  %i.bl = icmp uge i64 %i.bi, %i.d, !nosanitize !14
  %i.bm = and i1 %i.bl, %i.bk, !nosanitize !14
  br i1 %i.bm, label %bb.d, label %bb.c, !prof !13, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @1, i64 %i.d, i64 %i.bi) #6, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bn = ptrtoint ptr %i.bh to i64, !nosanitize !14 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !14
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !14
  %i.bq = and i1 %i.e, %i.bp
  br i1 %i.bq, label %bb.f, label %bb.e, !prof !13, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.bn) #6, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bs = xor i64 %i.br, %.010131362              ; 4 uses
  %i.bt = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bt, 3
  %i.bw = add i64 %i.bv, %i.d, !nosanitize !14    ; 3 uses
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = icmp uge i64 %i.bw, %i.d, !nosanitize !14
  %i.bz = and i1 %i.bx, %i.by
  %i.ca = and i1 %i.e, %i.bz
  br i1 %i.ca, label %bb.h, label %bb.g, !prof !13, !nosanitize !14

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %i.d, i64 %i.bw) #6, !nosanitize !14
  br label %bb.h, !nosanitize !14

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = ptrtoint ptr %i.bu to i64, !nosanitize !14 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !nosanitize !14
  %i.cd = icmp eq i64 %i.cc, 0, !nosanitize !14
  br i1 %i.cd, label %bb.j, label %bb.i, !prof !13, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.cb) #6, !nosanitize !14
  br label %bb.j, !nosanitize !14

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ce = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.cf = xor i64 %i.ce, %.010101363              ; 4 uses
  %i.cg = or disjoint i64 %i.bb, 2                ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.ci = shl nuw nsw i64 %i.cg, 3
  %i.cj = add i64 %i.ci, %i.d, !nosanitize !14    ; 3 uses
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = icmp uge i64 %i.cj, %i.d, !nosanitize !14
  %i.cm = and i1 %i.ck, %i.cl
  %i.cn = and i1 %i.e, %i.cm
  br i1 %i.cn, label %bb.l, label %bb.k, !prof !13, !nosanitize !14

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.d, i64 %i.cj) #6, !nosanitize !14
  br label %bb.l, !nosanitize !14

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.co = ptrtoint ptr %i.ch to i64, !nosanitize !14 ; 2 uses
  %i.cp = and i64 %i.co, 7, !nosanitize !14
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !14
  br i1 %i.cq, label %bb.n, label %bb.m, !prof !13, !nosanitize !14

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %i.co) #6, !nosanitize !14
  br label %bb.n, !nosanitize !14

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cr = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.cs = xor i64 %i.cr, %.010071364              ; 4 uses
  %i.ct = or disjoint i64 %i.bb, 3                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct ; 2 uses
  %i.cv = shl nuw nsw i64 %i.ct, 3
  %i.cw = add i64 %i.cv, %i.d, !nosanitize !14    ; 3 uses
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = icmp uge i64 %i.cw, %i.d, !nosanitize !14
  %i.cz = and i1 %i.cx, %i.cy
  %i.da = and i1 %i.e, %i.cz
  br i1 %i.da, label %bb.p, label %bb.o, !prof !13, !nosanitize !14

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.d, i64 %i.cw) #6, !nosanitize !14
  br label %bb.p, !nosanitize !14

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = ptrtoint ptr %i.cu to i64, !nosanitize !14 ; 2 uses
  %i.dc = and i64 %i.db, 7, !nosanitize !14
  %i.dd = icmp eq i64 %i.dc, 0, !nosanitize !14
  br i1 %i.dd, label %bb.r, label %bb.q, !prof !13, !nosanitize !14

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @9, i64 %i.db) #6, !nosanitize !14
  br label %bb.r, !nosanitize !14

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.de = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.df = xor i64 %i.de, %.010041365              ; 4 uses
  %i.dg = or disjoint i64 %i.bb, 4                ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dg ; 2 uses
  %i.di = shl nuw nsw i64 %i.dg, 3
  %i.dj = add i64 %i.di, %i.d, !nosanitize !14    ; 3 uses
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = icmp uge i64 %i.dj, %i.d, !nosanitize !14
  %i.dm = and i1 %i.dk, %i.dl
  %i.dn = and i1 %i.e, %i.dm
  br i1 %i.dn, label %bb.t, label %bb.s, !prof !13, !nosanitize !14

end_hunk_0
begin_hunk_1_@crc32_chorba_118960_nondestructive:bb.a
  %i.clo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cln ; 2 uses
  %i.clp = icmp ult i64 %.3, 9223372036854775784
  %i.clq = shl i64 %i.cln, 3
  %i.clr = add i64 %i.clq, %i.d, !nosanitize !14  ; 3 uses
  %i.cls = icmp eq i64 %i.clr, 0
  %i.clt = xor i1 %i.e, %i.cls
  %i.clu = icmp uge i64 %i.clr, %i.d, !nosanitize !14
  %i.clv = and i1 %i.clp, %i.clu, !nosanitize !14
  %i.clw = and i1 %i.clt, %i.clv, !nosanitize !14
  br i1 %i.clw, label %bb.aeg, label %bb.aef, !prof !13, !nosanitize !14

bb.aef:                                           ; preds = %bb.aee
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @411, i64 %i.d, i64 %i.clr) #6, !nosanitize !14
  br label %bb.aeg, !nosanitize !14

bb.aeg:                                           ; preds = %bb.aef, %bb.aee
  %i.clx = ptrtoint ptr %i.clo to i64, !nosanitize !14 ; 2 uses
  %i.cly = and i64 %i.clx, 7, !nosanitize !14
  %i.clz = icmp eq i64 %i.cly, 0, !nosanitize !14
  br i1 %i.clz, label %bb.aei, label %bb.aeh, !prof !13, !nosanitize !14

bb.aeh:                                           ; preds = %bb.aeg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @412, i64 %i.clx) #6, !nosanitize !14
  br label %bb.aei, !nosanitize !14

bb.aei:                                           ; preds = %bb.aeh, %bb.aeg
  %i.cma = load i64, ptr %i.clo, align 8, !tbaa !16
  %i.cmb = and i64 %i.cln, 16383                  ; 2 uses
  %i.cmc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cmb
  %i.cmd = shl nuw nsw i64 %i.cmb, 3
  %i.cme = add i64 %i.cmd, %i.f, !nosanitize !14  ; 2 uses
  %.not1200 = icmp ult i64 %i.cme, %i.f, !nosanitize !14
  br i1 %.not1200, label %bb.aej, label %bb.aek, !prof !17, !nosanitize !14

bb.aej:                                           ; preds = %bb.aei
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @413, i64 %i.f, i64 %i.cme) #6, !nosanitize !14
  br label %bb.aek, !nosanitize !14

bb.aek:                                           ; preds = %bb.aei, %bb.aej
  %i.cmf = load i64, ptr %i.cmc, align 8, !tbaa !16
  %i.cmg = xor i64 %i.cjr, %i.clh
  %i.cmh = xor i64 %i.cmg, %i.clm
  %i.cmi = xor i64 %i.cmh, %.0948                 ; 19 uses
  %i.cmj = xor i64 %i.cjq, %i.ckq
  %i.cmk = xor i64 %i.cmj, %i.cma
  %i.cml = xor i64 %i.cmk, %i.cmf
  %i.cmm = xor i64 %i.cml, %.0947                 ; 19 uses
  %i.cmn = icmp ult i64 %i.cmi, 140737488355328
  br i1 %i.cmn, label %bb.ael, label %.thread1350, !prof !13, !nosanitize !14

.thread1350:                                      ; preds = %bb.aek
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @414, i64 %i.cmi, i64 17) #7, !nosanitize !14
  br label %bb.aem

bb.ael:                                           ; preds = %bb.aek
  %i.cmo = icmp samesign ult i64 %i.cmi, 512
  br i1 %i.cmo, label %.thread1352, label %bb.aem, !prof !21, !nosanitize !14

.thread1352:                                      ; preds = %bb.ael
  %i.cmp = mul nuw i64 %i.cmi, 36028797019095040
  %i.cmq = shl nuw nsw i64 %i.cmi, 19
  br label %bb.aep

bb.aem:                                           ; preds = %bb.ael, %.thread1350
  %i.cmr = shl i64 %i.cmi, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @415, i64 %i.cmi, i64 55) #7, !nosanitize !14
  %i.cms = shl i64 %i.cmi, 55
  %i.cmt = xor i64 %i.cmr, %i.cms                 ; 2 uses
  %i.cmu = lshr i64 %i.cmi, 9                     ; 2 uses
  %i.cmv = icmp ult i64 %i.cmi, 35184372088832
  br i1 %i.cmv, label %bb.aen, label %.thread1353, !prof !19, !nosanitize !14

.thread1353:                                      ; preds = %bb.aem
  %i.cmw = lshr i64 %i.cmi, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @416, i64 %i.cmi, i64 19) #7, !nosanitize !14
  %i.cmx = shl i64 %i.cmi, 19
  %i.cmy = or disjoint i64 %i.cmw, %i.cmx
  %i.cmz = xor i64 %i.cmy, %i.cmu
  %i.cna = lshr i64 %i.cmi, 45
  br label %bb.aeo

bb.aen:                                           ; preds = %bb.aem
  %i.cnb = shl nuw i64 %i.cmi, 19
  %i.cnc = xor i64 %i.cmu, %i.cnb                 ; 2 uses
  %i.cnd = icmp samesign ult i64 %i.cmi, 1048576
  br i1 %i.cnd, label %bb.aep, label %bb.aeo, !prof !20, !nosanitize !14

bb.aeo:                                           ; preds = %.thread1353, %bb.aen
  %i.cne = phi i64 [ %i.cna, %.thread1353 ], [ 0, %bb.aen ]
  %i.cnf = phi i64 [ %i.cmz, %.thread1353 ], [ %i.cnc, %bb.aen ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @417, i64 %i.cmi, i64 44) #7, !nosanitize !14
  br label %bb.aep, !nosanitize !14

bb.aep:                                           ; preds = %.thread1352, %bb.aeo, %bb.aen
  %i.cng = phi i64 [ 0, %.thread1352 ], [ %i.cne, %bb.aeo ], [ 0, %bb.aen ]
  %i.cnh = phi i64 [ %i.cmq, %.thread1352 ], [ %i.cnf, %bb.aeo ], [ %i.cnc, %bb.aen ]
  %i.cni = phi i64 [ %i.cmp, %.thread1352 ], [ %i.cmt, %bb.aeo ], [ %i.cmt, %bb.aen ]
  %i.cnj = shl i64 %i.cmi, 44
  %i.cnk = add nuw nsw i64 %i.cng, %i.cnj
  %i.cnl = lshr i64 %i.cmi, 20
  %i.cnm = icmp ult i64 %i.cmm, 140737488355328
  br i1 %i.cnm, label %bb.aeq, label %.thread1354, !prof !13, !nosanitize !14

.thread1354:                                      ; preds = %bb.aep
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @418, i64 %i.cmm, i64 17) #7, !nosanitize !14
  br label %bb.aer

bb.aeq:                                           ; preds = %bb.aep
  %i.cnn = icmp samesign ult i64 %i.cmm, 512
  br i1 %i.cnn, label %.thread1356, label %bb.aer, !prof !21, !nosanitize !14

.thread1356:                                      ; preds = %bb.aeq
  %i.cno = mul nuw i64 %i.cmm, 36028797019095040
  %i.cnp = shl nuw nsw i64 %i.cmm, 19
  br label %bb.aeu

bb.aer:                                           ; preds = %bb.aeq, %.thread1354
  %i.cnq = shl i64 %i.cmm, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @419, i64 %i.cmm, i64 55) #7, !nosanitize !14
  %i.cnr = shl i64 %i.cmm, 55
  %i.cns = xor i64 %i.cnq, %i.cnr                 ; 2 uses
  %i.cnt = lshr i64 %i.cmm, 9                     ; 2 uses
  %i.cnu = icmp ult i64 %i.cmm, 35184372088832
  br i1 %i.cnu, label %bb.aes, label %.thread1357, !prof !19, !nosanitize !14

.thread1357:                                      ; preds = %bb.aer
  %i.cnv = lshr i64 %i.cmm, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @420, i64 %i.cmm, i64 19) #7, !nosanitize !14
  %i.cnw = shl i64 %i.cmm, 19
  %i.cnx = or disjoint i64 %i.cnv, %i.cnw
  %i.cny = xor i64 %i.cnx, %i.cnt
  %i.cnz = lshr i64 %i.cmm, 45
  br label %bb.aet

bb.aes:                                           ; preds = %bb.aer
  %i.coa = shl nuw i64 %i.cmm, 19
  %i.cob = xor i64 %i.cnt, %i.coa                 ; 2 uses
  %i.coc = icmp samesign ult i64 %i.cmm, 1048576
  br i1 %i.coc, label %bb.aeu, label %bb.aet, !prof !20, !nosanitize !14

bb.aet:                                           ; preds = %.thread1357, %bb.aes
  %i.cod = phi i64 [ %i.cnz, %.thread1357 ], [ 0, %bb.aes ]
  %i.coe = phi i64 [ %i.cny, %.thread1357 ], [ %i.cob, %bb.aes ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @421, i64 %i.cmm, i64 44) #7, !nosanitize !14
  br label %bb.aeu, !nosanitize !14

bb.aeu:                                           ; preds = %.thread1356, %bb.aet, %bb.aes
  %i.cof = phi i64 [ 0, %.thread1356 ], [ %i.cod, %bb.aet ], [ 0, %bb.aes ]
  %i.cog = phi i64 [ %i.cnp, %.thread1356 ], [ %i.coe, %bb.aet ], [ %i.cob, %bb.aes ]
  %i.coh = phi i64 [ %i.cno, %.thread1356 ], [ %i.cns, %bb.aet ], [ %i.cns, %bb.aes ]
  %i.coi = shl i64 %i.cmm, 44
  %i.coj = add nuw nsw i64 %i.cof, %i.coi
  %i.cok = lshr i64 %i.cmm, 20
  %i.col = xor i64 %i.cks, %i.cju
  %i.com = xor i64 %i.col, %i.cnh
  %i.con = xor i64 %i.com, %i.coh
  %i.coo = xor i64 %i.cnk, %i.ckt
  %i.cop = xor i64 %i.coo, %i.cog
  %i.coq = xor i64 %i.coj, %i.cnl
  %i.cor = xor i64 %i.cjt, %i.ckp
  %i.cos = xor i64 %i.cor, %i.cni
  %i.cot = xor i64 %i.cos, %.0946
  %i.cou = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3, i64 32), !nosanitize !14 ; 2 uses
  %i.cov = extractvalue { i64, i1 } %i.cou, 0, !nosanitize !14
  %i.cow = extractvalue { i64, i1 } %i.cou, 1, !nosanitize !14
  br i1 %i.cow, label %bb.aev, label %bb.aew, !prof !17, !nosanitize !14

bb.aev:                                           ; preds = %bb.aeu
  call void @__ubsan_handle_add_overflow(ptr nonnull @422, i64 %.3, i64 32) #7, !nosanitize !14
  br label %bb.aew, !nosanitize !14

bb.aew:                                           ; preds = %bb.aev, %bb.aeu
  %indvars.iv.next1479 = add i64 %indvars.iv1478, -32
  br label %bb.acy, !llvm.loop !27

bb.aex:                                           ; preds = %bb.ada
  %i.cox = and i64 %.3, -8
  %i.coy = add i64 %i.cox, %i.d, !nosanitize !14  ; 3 uses
  %i.coz = icmp eq i64 %i.coy, 0
  %i.cpa = xor i1 %i.e, %i.coz
  %i.cpb = icmp uge i64 %i.coy, %i.d, !nosanitize !14
  %i.cpc = and i1 %i.cpb, %i.cpa
  %i.cpd = and i1 %i.cpc, %i.chi
  br i1 %i.cpd, label %bb.aez, label %bb.aey, !prof !13, !nosanitize !14

bb.aey:                                           ; preds = %bb.aex
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @423, i64 %i.d, i64 %i.coy) #6, !nosanitize !14
  br label %bb.aez, !nosanitize !14

bb.aez:                                           ; preds = %bb.aey, %bb.aex
  %i.cpe = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %.3), !nosanitize !14 ; 2 uses
  %i.cpf = extractvalue { i64, i1 } %i.cpe, 0, !nosanitize !14
  %i.cpg = extractvalue { i64, i1 } %i.cpe, 1, !nosanitize !14 ; 2 uses
  br i1 %i.cpg, label %bb.afa, label %bb.afb, !prof !17, !nosanitize !14

bb.afa:                                           ; preds = %bb.aez
  call void @__ubsan_handle_sub_overflow(ptr nonnull @424, i64 %2, i64 %.3) #7, !nosanitize !14
  br label %bb.afb, !nosanitize !14

bb.afb:                                           ; preds = %bb.aez, %bb.afa
  %.not1481 = icmp eq ptr %1, null
  br i1 %.not1481, label %bb.afc, label %bb.afd, !prof !17, !nosanitize !14

bb.afc:                                           ; preds = %bb.afb
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @425) #6, !nosanitize !14
  br label %bb.afd, !nosanitize !14

bb.afd:                                           ; preds = %bb.afc, %bb.afb
  %i.cph = ptrtoint ptr %i.chh to i64, !nosanitize !14 ; 2 uses
  %i.cpi = and i64 %i.cph, 7, !nosanitize !14
  %i.cpj = icmp eq i64 %i.cpi, 0, !nosanitize !14
  br i1 %i.cpj, label %bb.aff, label %bb.afe, !prof !13, !nosanitize !14

bb.afe:                                           ; preds = %bb.afd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @427, i64 %i.cph) #6, !nosanitize !14
  br label %bb.aff, !nosanitize !14

bb.aff:                                           ; preds = %bb.afe, %bb.afd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %i.chh, i64 %i.cpf, i1 false)
  %i.cpk = load i64, ptr %i.b, align 16, !tbaa !16
  %i.cpl = xor i64 %i.cpk, %.0950
  store i64 %i.cpl, ptr %i.b, align 16, !tbaa !16
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cpn = ptrtoint ptr %i.b to i64, !nosanitize !14 ; 9 uses
  %i.cpo = load i64, ptr %i.cpm, align 8, !tbaa !16
  %i.cpp = xor i64 %i.cpo, %.0949
  store i64 %i.cpp, ptr %i.cpm, align 8, !tbaa !16
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.not1189 = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not1189, label %.thread1358, label %bb.afg, !prof !17, !nosanitize !14

.thread1358:                                      ; preds = %bb.aff
  %i.cpr = add i64 %i.cpn, 16, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @428, i64 %i.cpn, i64 %i.cpr) #6, !nosanitize !14
  %i.cps = load i64, ptr %i.cpq, align 16, !tbaa !16
  %i.cpt = xor i64 %i.cps, %.0948
  store i64 %i.cpt, ptr %i.cpq, align 16, !tbaa !16
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.afh

bb.afg:                                           ; preds = %bb.aff
  %i.cpv = load i64, ptr %i.cpq, align 16, !tbaa !16
  %i.cpw = xor i64 %i.cpv, %.0948
  store i64 %i.cpw, ptr %i.cpq, align 16, !tbaa !16
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.not1190 = icmp ugt ptr %i.b, inttoptr (i64 -25 to ptr)
  br i1 %.not1190, label %bb.afh, label %bb.afi, !prof !19, !nosanitize !14

bb.afh:                                           ; preds = %.thread1358, %bb.afg
  %i.cpy = phi ptr [ %i.cpu, %.thread1358 ], [ %i.cpx, %bb.afg ]
  %i.cpz = add i64 %i.cpn, 24, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @429, i64 %i.cpn, i64 %i.cpz) #6, !nosanitize !14
  br label %bb.afi, !nosanitize !14

bb.afi:                                           ; preds = %bb.afg, %bb.afh
  %i.cqa = phi ptr [ %i.cpx, %bb.afg ], [ %i.cpy, %bb.afh ] ; 2 uses
  %i.cqb = load i64, ptr %i.cqa, align 8, !tbaa !16
  %i.cqc = xor i64 %i.cqb, %.0947
  store i64 %i.cqc, ptr %i.cqa, align 8, !tbaa !16
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not1191 = icmp ugt ptr %i.b, inttoptr (i64 -33 to ptr)
  br i1 %.not1191, label %bb.afj, label %bb.afk, !prof !17, !nosanitize !14

bb.afj:                                           ; preds = %bb.afi
  %i.cqe = add i64 %i.cpn, 32, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @430, i64 %i.cpn, i64 %i.cqe) #6, !nosanitize !14
  br label %bb.afk, !nosanitize !14

bb.afk:                                           ; preds = %bb.afi, %bb.afj
  %i.cqf = load i64, ptr %i.cqd, align 16, !tbaa !16
  %i.cqg = xor i64 %i.cqf, %.0946
  store i64 %i.cqg, ptr %i.cqd, align 16, !tbaa !16
  br label %bb.afl

bb.afl:                                           ; preds = %bb.afx, %bb.afk
  %.01019 = phi i32 [ 0, %bb.afk ], [ %i.cqy, %bb.afx ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.afk ], [ %i.cqz, %bb.afx ] ; 6 uses
  br i1 %i.cpg, label %bb.afm, label %bb.afn, !prof !17, !nosanitize !14

bb.afm:                                           ; preds = %bb.afl
  call void @__ubsan_handle_sub_overflow(ptr nonnull @431, i64 %2, i64 %.3) #7, !nosanitize !14
  br label %bb.afn, !nosanitize !14

bb.afn:                                           ; preds = %bb.afm, %bb.afl
  %exitcond1480.not = icmp eq i64 %.0, %indvars.iv1478
  br i1 %exitcond1480.not, label %bb.afo, label %bb.afp

bb.afo:                                           ; preds = %bb.afn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.01019

bb.afp:                                           ; preds = %bb.afn
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.cqi = add i64 %.0, %i.cpn, !nosanitize !14   ; 2 uses
  %.not1192 = icmp ult i64 %i.cqi, %i.cpn, !nosanitize !14
  br i1 %.not1192, label %bb.afq, label %bb.afr, !prof !17, !nosanitize !14

bb.afq:                                           ; preds = %bb.afp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @432, i64 %i.cpn, i64 %i.cqi) #6, !nosanitize !14
  br label %bb.afr, !nosanitize !14

bb.afr:                                           ; preds = %bb.afp, %bb.afq
  %i.cqj = load i8, ptr %i.cqh, align 1, !tbaa !22
  %i.cqk = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 %.3), !nosanitize !14 ; 2 uses
  %i.cql = extractvalue { i64, i1 } %i.cqk, 0, !nosanitize !14
  %i.cqm = extractvalue { i64, i1 } %i.cqk, 1, !nosanitize !14
  br i1 %i.cqm, label %bb.afs, label %bb.aft, !prof !17, !nosanitize !14

bb.afs:                                           ; preds = %bb.afr
  call void @__ubsan_handle_add_overflow(ptr nonnull @433, i64 %.0, i64 %.3) #7, !nosanitize !14
  br label %bb.aft, !nosanitize !14

bb.aft:                                           ; preds = %bb.afr, %bb.afs
  %i.cqn = and i64 %i.cql, 131071                 ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cqn
  %i.cqp = add i64 %i.cqn, %i.f, !nosanitize !14  ; 2 uses
  %.not1194 = icmp ult i64 %i.cqp, %i.f, !nosanitize !14
  br i1 %.not1194, label %bb.afu, label %bb.afv, !prof !17, !nosanitize !14

bb.afu:                                           ; preds = %bb.aft
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @434, i64 %i.f, i64 %i.cqp) #6, !nosanitize !14
  br label %bb.afv, !nosanitize !14

bb.afv:                                           ; preds = %bb.aft, %bb.afu
  %i.cqq = load i8, ptr %i.cqo, align 1, !tbaa !22
  %.01019.tr = trunc i32 %.01019 to i8
  %i.cqr = xor i8 %i.cqj, %.01019.tr
  %.narrow = xor i8 %i.cqr, %i.cqq
  %i.cqs = zext i8 %.narrow to i64                ; 2 uses
  %i.cqt = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.cqs
  %i.cqu = shl nuw nsw i64 %i.cqs, 2
  %i.cqv = add i64 %i.cqu, ptrtoint (ptr @crc_table to i64), !nosanitize !14 ; 2 uses
  %.not1196 = icmp ult i64 %i.cqv, ptrtoint (ptr @crc_table to i64), !nosanitize !14
  br i1 %.not1196, label %bb.afw, label %bb.afx, !prof !17, !nosanitize !14

bb.afw:                                           ; preds = %bb.afv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @435, i64 ptrtoint (ptr @crc_table to i64), i64 %i.cqv) #6, !nosanitize !14
  br label %bb.afx, !nosanitize !14

bb.afx:                                           ; preds = %bb.afv, %bb.afw
  %i.cqw = load i32, ptr %i.cqt, align 4, !tbaa !23
  %i.cqx = lshr i32 %.01019, 8
  %i.cqy = xor i32 %i.cqw, %i.cqx
  %i.cqz = add i64 %.0, 1
  br label %bb.afl, !llvm.loop !28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_out_of_bounds(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_32768_nondestructive(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 50 uses
  %i.b = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  %i.c = zext i32 %0 to i64
  store i64 %i.c, ptr %i.a, align 16, !tbaa !16
  %i.d = ptrtoint ptr %1 to i64                   ; 39 uses
  %i.e = icmp ne ptr %1, null                     ; 18 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 135 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.gs, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.gs ], [ %2, %bb.a ] ; 2 uses
  %.0195 = phi i64 [ %i.rs, %bb.gs ], [ 0, %bb.a ] ; 88 uses
  %i.g = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0195, i64 2400), !nosanitize !14 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0, !nosanitize !14 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.g, 1, !nosanitize !14
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_add_overflow(ptr nonnull @437, i64 %.0195, i64 2400) #7, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 64), !nosanitize !14 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0, !nosanitize !14
  %i.l = extractvalue { i64, i1 } %i.j, 1, !nosanitize !14
  br i1 %i.l, label %bb.e, label %bb.f, !prof !17, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_add_overflow(ptr nonnull @438, i64 %i.h, i64 64) #7, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp ult i64 %i.k, %2
  br i1 %i.m, label %bb.g, label %bb.gt

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i64 %.0195, 3                       ; 42 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = icmp sgt i64 %.0195, -1                  ; 2 uses
  %i.q = add i64 %.0195, %i.d, !nosanitize !14    ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = xor i1 %i.e, %i.r
  %i.t = icmp uge i64 %i.q, %i.d, !nosanitize !14
  %i.u = and i1 %i.t, %i.s
  %i.v = and i1 %i.p, %i.u
  br i1 %i.v, label %bb.i, label %bb.h, !prof !13, !nosanitize !14

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @439, i64 %i.d, i64 %i.q) #6, !nosanitize !14
  br label %bb.i, !nosanitize !14

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = ptrtoint ptr %i.o to i64, !nosanitize !14 ; 2 uses
  %i.x = and i64 %i.w, 7, !nosanitize !14
  %i.y = icmp eq i64 %i.x, 0, !nosanitize !14
  %i.z = and i1 %i.e, %i.y
  br i1 %i.z, label %bb.k, label %bb.j, !prof !13, !nosanitize !14

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @441, i64 %i.w) #6, !nosanitize !14
  br label %bb.k, !nosanitize !14

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !16
  %i.ab = icmp ult i64 %.0195, 32768
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !13, !nosanitize !14

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @442, i64 %i.n) #6, !nosanitize !14
  br label %bb.m, !nosanitize !14

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.ad = add i64 %.0195, %i.f, !nosanitize !14   ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.f, !nosanitize !14
  %i.af = and i1 %i.p, %i.ae, !nosanitize !14
  br i1 %i.af, label %bb.o, label %bb.n, !prof !13, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @443, i64 %i.f, i64 %i.ad) #6, !nosanitize !14
  br label %bb.o, !nosanitize !14

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ah = xor i64 %i.ag, %i.aa                    ; 4 uses
  %i.ai = add nuw nsw i64 %i.n, 1                 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = icmp ult i64 %.0195, 9223372036854775800 ; 2 uses
  %i.al = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.am = add i64 %i.al, %i.d, !nosanitize !14    ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = icmp uge i64 %i.am, %i.d, !nosanitize !14
  %i.ap = and i1 %i.an, %i.ao
  %i.aq = and i1 %i.ap, %i.e
  %i.ar = and i1 %i.ak, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.p, !prof !13, !nosanitize !14

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @444, i64 %i.d, i64 %i.am) #6, !nosanitize !14
  br label %bb.q, !nosanitize !14

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = ptrtoint ptr %i.aj to i64, !nosanitize !14 ; 2 uses
  %i.at = and i64 %i.as, 7, !nosanitize !14
  %i.au = icmp eq i64 %i.at, 0, !nosanitize !14
  br i1 %i.au, label %bb.s, label %bb.r, !prof !13, !nosanitize !14

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @445, i64 %i.as) #6, !nosanitize !14
  br label %bb.s, !nosanitize !14

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.aw = icmp ult i64 %.0195, 32760
  br i1 %i.aw, label %bb.u, label %bb.t, !prof !13, !nosanitize !14

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @446, i64 %i.ai) #6, !nosanitize !14
  br label %bb.u, !nosanitize !14

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ay = add i64 %i.al, %i.f, !nosanitize !14    ; 2 uses
  %i.az = icmp uge i64 %i.ay, %i.f, !nosanitize !14
  %i.ba = and i1 %i.ak, %i.az, !nosanitize !14
  br i1 %i.ba, label %bb.w, label %bb.v, !prof !13, !nosanitize !14

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @447, i64 %i.f, i64 %i.ay) #6, !nosanitize !14
  br label %bb.w, !nosanitize !14

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.bc = xor i64 %i.bb, %i.av                    ; 4 uses
  %i.bd = add nuw nsw i64 %i.n, 2                 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = icmp ult i64 %.0195, 9223372036854775792 ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.bh = add i64 %i.bg, %i.d, !nosanitize !14    ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = icmp uge i64 %i.bh, %i.d, !nosanitize !14
  %i.bk = and i1 %i.bi, %i.bj
  %i.bl = and i1 %i.bk, %i.e
  %i.bm = and i1 %i.bf, %i.bl
  br i1 %i.bm, label %bb.y, label %bb.x, !prof !13, !nosanitize !14

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @448, i64 %i.d, i64 %i.bh) #6, !nosanitize !14
  br label %bb.y, !nosanitize !14

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bn = ptrtoint ptr %i.be to i64, !nosanitize !14 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !14
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !14
  br i1 %i.bp, label %bb.aa, label %bb.z, !prof !13, !nosanitize !14

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @449, i64 %i.bn) #6, !nosanitize !14
  br label %bb.aa, !nosanitize !14

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !16
  %i.br = icmp ult i64 %.0195, 32752
  br i1 %i.br, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !14

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @450, i64 %i.bd) #6, !nosanitize !14
  br label %bb.ac, !nosanitize !14

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bt = add i64 %i.bg, %i.f, !nosanitize !14    ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %i.f, !nosanitize !14
  %i.bv = and i1 %i.bf, %i.bu, !nosanitize !14
  br i1 %i.bv, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !14

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @451, i64 %i.f, i64 %i.bt) #6, !nosanitize !14
  br label %bb.ae, !nosanitize !14

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bx = xor i64 %i.bw, %i.bq                    ; 4 uses
  %i.by = add nuw nsw i64 %i.n, 3                 ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.ca = icmp ult i64 %.0195, 9223372036854775784 ; 2 uses
  %i.cb = shl nuw nsw i64 %i.by, 3                ; 2 uses
  %i.cc = add i64 %i.cb, %i.d, !nosanitize !14    ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp uge i64 %i.cc, %i.d, !nosanitize !14
  %i.cf = and i1 %i.cd, %i.ce
  %i.cg = and i1 %i.cf, %i.e
  %i.ch = and i1 %i.ca, %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.af, !prof !13, !nosanitize !14

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @452, i64 %i.d, i64 %i.cc) #6, !nosanitize !14
  br label %bb.ag, !nosanitize !14

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ci = ptrtoint ptr %i.bz to i64, !nosanitize !14 ; 2 uses
  %i.cj = and i64 %i.ci, 7, !nosanitize !14
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !14
  br i1 %i.ck, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !14

bb.ah:                                            ; preds = %bb.ag
end_hunk_1
begin_hunk_2_@crc32_chorba_32768_nondestructive:bb.a
bb.in:                                            ; preds = %bb.im
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @561, i64 %i.d, i64 %i.xd) #6, !nosanitize !14
  br label %bb.io, !nosanitize !14

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.xj = ptrtoint ptr %i.xa to i64, !nosanitize !14 ; 2 uses
  %i.xk = and i64 %i.xj, 7, !nosanitize !14
  %i.xl = icmp eq i64 %i.xk, 0, !nosanitize !14
  %i.xm = and i1 %i.e, %i.xl
  br i1 %i.xm, label %bb.iq, label %bb.ip, !prof !13, !nosanitize !14

bb.ip:                                            ; preds = %bb.io
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @562, i64 %i.xj) #6, !nosanitize !14
  br label %bb.iq, !nosanitize !14

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.xn = load i64, ptr %i.xa, align 8, !tbaa !16
  %i.xo = add nuw nsw i64 %i.ry, 3                ; 3 uses
  %i.xp = icmp ult i64 %.1, 32744
  br i1 %i.xp, label %bb.is, label %bb.ir, !prof !13, !nosanitize !14

bb.ir:                                            ; preds = %bb.iq
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @563, i64 %i.xo) #6, !nosanitize !14
  br label %bb.is, !nosanitize !14

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.xo
  %i.xr = icmp ult i64 %.1, 9223372036854775784
  %i.xs = shl nuw nsw i64 %i.xo, 3
  %i.xt = add i64 %i.xs, %i.f, !nosanitize !14    ; 2 uses
  %i.xu = icmp uge i64 %i.xt, %i.f, !nosanitize !14
  %i.xv = and i1 %i.xr, %i.xu, !nosanitize !14
  br i1 %i.xv, label %bb.iu, label %bb.it, !prof !13, !nosanitize !14

bb.it:                                            ; preds = %bb.is
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @564, i64 %i.f, i64 %i.xt) #6, !nosanitize !14
  br label %bb.iu, !nosanitize !14

bb.iu:                                            ; preds = %bb.is, %bb.it
  %i.xw = load i64, ptr %i.xq, align 8, !tbaa !16
  %i.xx = xor i64 %i.us, %i.wm
  %i.xy = xor i64 %i.xx, %i.wv
  %i.xz = xor i64 %i.xy, %.0192                   ; 19 uses
  %i.ya = xor i64 %i.ur, %i.vr
  %i.yb = xor i64 %i.ya, %i.xn
  %i.yc = xor i64 %i.yb, %i.xw
  %i.yd = xor i64 %i.yc, %.0191                   ; 19 uses
  %i.ye = icmp ult i64 %i.xz, 140737488355328
  br i1 %i.ye, label %bb.iv, label %.thread262, !prof !13, !nosanitize !14

.thread262:                                       ; preds = %bb.iu
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @565, i64 %i.xz, i64 17) #7, !nosanitize !14
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.yf = icmp samesign ult i64 %i.xz, 512
  br i1 %i.yf, label %.thread264, label %bb.iw, !prof !21, !nosanitize !14

.thread264:                                       ; preds = %bb.iv
  %i.yg = mul nuw i64 %i.xz, 36028797019095040
  %i.yh = shl nuw nsw i64 %i.xz, 19
  br label %bb.iz

bb.iw:                                            ; preds = %bb.iv, %.thread262
  %i.yi = shl i64 %i.xz, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @566, i64 %i.xz, i64 55) #7, !nosanitize !14
  %i.yj = shl i64 %i.xz, 55
  %i.yk = xor i64 %i.yi, %i.yj                    ; 2 uses
  %i.yl = lshr i64 %i.xz, 9                       ; 2 uses
  %i.ym = icmp ult i64 %i.xz, 35184372088832
  br i1 %i.ym, label %bb.ix, label %.thread265, !prof !19, !nosanitize !14

.thread265:                                       ; preds = %bb.iw
  %i.yn = lshr i64 %i.xz, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @567, i64 %i.xz, i64 19) #7, !nosanitize !14
  %i.yo = shl i64 %i.xz, 19
  %i.yp = or disjoint i64 %i.yn, %i.yo
  %i.yq = xor i64 %i.yp, %i.yl
  %i.yr = lshr i64 %i.xz, 45
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.ys = shl nuw i64 %i.xz, 19
  %i.yt = xor i64 %i.yl, %i.ys                    ; 2 uses
  %i.yu = icmp samesign ult i64 %i.xz, 1048576
  br i1 %i.yu, label %bb.iz, label %bb.iy, !prof !20, !nosanitize !14

bb.iy:                                            ; preds = %.thread265, %bb.ix
  %i.yv = phi i64 [ %i.yr, %.thread265 ], [ 0, %bb.ix ]
  %i.yw = phi i64 [ %i.yq, %.thread265 ], [ %i.yt, %bb.ix ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @568, i64 %i.xz, i64 44) #7, !nosanitize !14
  br label %bb.iz, !nosanitize !14

bb.iz:                                            ; preds = %.thread264, %bb.iy, %bb.ix
  %i.yx = phi i64 [ 0, %.thread264 ], [ %i.yv, %bb.iy ], [ 0, %bb.ix ]
  %i.yy = phi i64 [ %i.yh, %.thread264 ], [ %i.yw, %bb.iy ], [ %i.yt, %bb.ix ]
  %i.yz = phi i64 [ %i.yg, %.thread264 ], [ %i.yk, %bb.iy ], [ %i.yk, %bb.ix ]
  %i.za = shl i64 %i.xz, 44
  %i.zb = add nuw nsw i64 %i.yx, %i.za
  %i.zc = lshr i64 %i.xz, 20
  %i.zd = icmp ult i64 %i.yd, 140737488355328
  br i1 %i.zd, label %bb.ja, label %.thread266, !prof !13, !nosanitize !14

.thread266:                                       ; preds = %bb.iz
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @569, i64 %i.yd, i64 17) #7, !nosanitize !14
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.ze = icmp samesign ult i64 %i.yd, 512
  br i1 %i.ze, label %.thread268, label %bb.jb, !prof !21, !nosanitize !14

.thread268:                                       ; preds = %bb.ja
  %i.zf = mul nuw i64 %i.yd, 36028797019095040
  %i.zg = shl nuw nsw i64 %i.yd, 19
  br label %bb.je

bb.jb:                                            ; preds = %bb.ja, %.thread266
  %i.zh = shl i64 %i.yd, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @570, i64 %i.yd, i64 55) #7, !nosanitize !14
  %i.zi = shl i64 %i.yd, 55
  %i.zj = xor i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = lshr i64 %i.yd, 9                       ; 2 uses
  %i.zl = icmp ult i64 %i.yd, 35184372088832
  br i1 %i.zl, label %bb.jc, label %.thread269, !prof !19, !nosanitize !14

.thread269:                                       ; preds = %bb.jb
  %i.zm = lshr i64 %i.yd, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @571, i64 %i.yd, i64 19) #7, !nosanitize !14
  %i.zn = shl i64 %i.yd, 19
  %i.zo = or disjoint i64 %i.zm, %i.zn
  %i.zp = xor i64 %i.zo, %i.zk
  %i.zq = lshr i64 %i.yd, 45
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.zr = shl nuw i64 %i.yd, 19
  %i.zs = xor i64 %i.zk, %i.zr                    ; 2 uses
  %i.zt = icmp samesign ult i64 %i.yd, 1048576
  br i1 %i.zt, label %bb.je, label %bb.jd, !prof !20, !nosanitize !14

bb.jd:                                            ; preds = %.thread269, %bb.jc
  %i.zu = phi i64 [ %i.zq, %.thread269 ], [ 0, %bb.jc ]
  %i.zv = phi i64 [ %i.zp, %.thread269 ], [ %i.zs, %bb.jc ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @572, i64 %i.yd, i64 44) #7, !nosanitize !14
  br label %bb.je, !nosanitize !14

bb.je:                                            ; preds = %.thread268, %bb.jd, %bb.jc
  %i.zw = phi i64 [ 0, %.thread268 ], [ %i.zu, %bb.jd ], [ 0, %bb.jc ]
  %i.zx = phi i64 [ %i.zg, %.thread268 ], [ %i.zv, %bb.jd ], [ %i.zs, %bb.jc ]
  %i.zy = phi i64 [ %i.zf, %.thread268 ], [ %i.zj, %bb.jd ], [ %i.zj, %bb.jc ]
  %i.zz = shl i64 %i.yd, 44
  %i.aaa = add nuw nsw i64 %i.zw, %i.zz
  %i.aab = lshr i64 %i.yd, 20
  %i.aac = xor i64 %i.vt, %i.uv
  %i.aad = xor i64 %i.aac, %i.yy
  %i.aae = xor i64 %i.aad, %i.zy
  %i.aaf = xor i64 %i.zb, %i.vu
  %i.aag = xor i64 %i.aaf, %i.zx
  %i.aah = xor i64 %i.aaa, %i.zc
  %i.aai = xor i64 %i.uu, %i.vq
  %i.aaj = xor i64 %i.aai, %i.yz
  %i.aak = xor i64 %i.aaj, %.0190
  %i.aal = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 32), !nosanitize !14 ; 2 uses
  %i.aam = extractvalue { i64, i1 } %i.aal, 0, !nosanitize !14
  %i.aan = extractvalue { i64, i1 } %i.aal, 1, !nosanitize !14
  br i1 %i.aan, label %bb.jf, label %bb.jg, !prof !17, !nosanitize !14

bb.jf:                                            ; preds = %bb.je
  call void @__ubsan_handle_add_overflow(ptr nonnull @573, i64 %.1, i64 32) #7, !nosanitize !14
  br label %bb.jg, !nosanitize !14

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %indvars.iv.next273 = add i64 %indvars.iv272, -32
  br label %bb.gu, !llvm.loop !30

bb.jh:                                            ; preds = %bb.gw
  %i.aao = and i64 %.1, -8
  %i.aap = add i64 %i.aao, %i.d, !nosanitize !14  ; 3 uses
  %i.aaq = icmp eq i64 %i.aap, 0
  %i.aar = xor i1 %i.e, %i.aaq
  %i.aas = icmp uge i64 %i.aap, %i.d, !nosanitize !14
  %i.aat = and i1 %i.aas, %i.aar
  %i.aau = and i1 %i.aat, %i.sa
  br i1 %i.aau, label %bb.jj, label %bb.ji, !prof !13, !nosanitize !14

bb.ji:                                            ; preds = %bb.jh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @574, i64 %i.d, i64 %i.aap) #6, !nosanitize !14
  br label %bb.jj, !nosanitize !14

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.aav = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %.1), !nosanitize !14 ; 2 uses
  %i.aaw = extractvalue { i64, i1 } %i.aav, 0, !nosanitize !14
  %i.aax = extractvalue { i64, i1 } %i.aav, 1, !nosanitize !14 ; 2 uses
  br i1 %i.aax, label %bb.jk, label %bb.jl, !prof !17, !nosanitize !14

bb.jk:                                            ; preds = %bb.jj
  call void @__ubsan_handle_sub_overflow(ptr nonnull @575, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.jl, !nosanitize !14

bb.jl:                                            ; preds = %bb.jj, %bb.jk
  %.not274 = icmp eq ptr %1, null
  br i1 %.not274, label %bb.jm, label %bb.jn, !prof !17, !nosanitize !14

bb.jm:                                            ; preds = %bb.jl
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @576) #6, !nosanitize !14
  br label %bb.jn, !nosanitize !14

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.aay = ptrtoint ptr %i.rz to i64, !nosanitize !14 ; 2 uses
  %i.aaz = and i64 %i.aay, 7, !nosanitize !14
  %i.aba = icmp eq i64 %i.aaz, 0, !nosanitize !14
  br i1 %i.aba, label %bb.jp, label %bb.jo, !prof !13, !nosanitize !14

bb.jo:                                            ; preds = %bb.jn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @578, i64 %i.aay) #6, !nosanitize !14
  br label %bb.jp, !nosanitize !14

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %i.rz, i64 %i.aaw, i1 false)
  %i.abb = load i64, ptr %i.b, align 16, !tbaa !16
  %i.abc = xor i64 %i.abb, %.0194
  store i64 %i.abc, ptr %i.b, align 16, !tbaa !16
  %i.abd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.abe = ptrtoint ptr %i.b to i64, !nosanitize !14 ; 9 uses
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !16
  %i.abg = xor i64 %i.abf, %.0193
  store i64 %i.abg, ptr %i.abd, align 8, !tbaa !16
  %i.abh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.not248 = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not248, label %.thread270, label %bb.jq, !prof !17, !nosanitize !14

.thread270:                                       ; preds = %bb.jp
  %i.abi = add i64 %i.abe, 16, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @579, i64 %i.abe, i64 %i.abi) #6, !nosanitize !14
  %i.abj = load i64, ptr %i.abh, align 16, !tbaa !16
  %i.abk = xor i64 %i.abj, %.0192
  store i64 %i.abk, ptr %i.abh, align 16, !tbaa !16
  %i.abl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.abm = load i64, ptr %i.abh, align 16, !tbaa !16
  %i.abn = xor i64 %i.abm, %.0192
  store i64 %i.abn, ptr %i.abh, align 16, !tbaa !16
  %i.abo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.not249 = icmp ugt ptr %i.b, inttoptr (i64 -25 to ptr)
  br i1 %.not249, label %bb.jr, label %bb.js, !prof !19, !nosanitize !14

bb.jr:                                            ; preds = %.thread270, %bb.jq
  %i.abp = phi ptr [ %i.abl, %.thread270 ], [ %i.abo, %bb.jq ]
  %i.abq = add i64 %i.abe, 24, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @580, i64 %i.abe, i64 %i.abq) #6, !nosanitize !14
  br label %bb.js, !nosanitize !14

bb.js:                                            ; preds = %bb.jq, %bb.jr
  %i.abr = phi ptr [ %i.abo, %bb.jq ], [ %i.abp, %bb.jr ] ; 2 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !16
  %i.abt = xor i64 %i.abs, %.0191
  store i64 %i.abt, ptr %i.abr, align 8, !tbaa !16
  %i.abu = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not250 = icmp ugt ptr %i.b, inttoptr (i64 -33 to ptr)
  br i1 %.not250, label %bb.jt, label %bb.ju, !prof !17, !nosanitize !14

bb.jt:                                            ; preds = %bb.js
  %i.abv = add i64 %i.abe, 32, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @581, i64 %i.abe, i64 %i.abv) #6, !nosanitize !14
  br label %bb.ju, !nosanitize !14

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %i.abw = load i64, ptr %i.abu, align 16, !tbaa !16
  %i.abx = xor i64 %i.abw, %.0190
  store i64 %i.abx, ptr %i.abu, align 16, !tbaa !16
  br label %bb.jv

bb.jv:                                            ; preds = %bb.kh, %bb.ju
  %.0196 = phi i32 [ 0, %bb.ju ], [ %i.aco, %bb.kh ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.ju ], [ %i.acp, %bb.kh ] ; 6 uses
  br i1 %i.aax, label %bb.jw, label %bb.jx, !prof !17, !nosanitize !14

bb.jw:                                            ; preds = %bb.jv
  call void @__ubsan_handle_sub_overflow(ptr nonnull @582, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.jx, !nosanitize !14

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %exitcond.not = icmp eq i64 %.0, %indvars.iv272
  br i1 %exitcond.not, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0196

bb.jz:                                            ; preds = %bb.jx
  %i.aby = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.abz = add i64 %.0, %i.abe, !nosanitize !14   ; 2 uses
  %.not251 = icmp ult i64 %i.abz, %i.abe, !nosanitize !14
  br i1 %.not251, label %bb.ka, label %bb.kb, !prof !17, !nosanitize !14

bb.ka:                                            ; preds = %bb.jz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @583, i64 %i.abe, i64 %i.abz) #6, !nosanitize !14
  br label %bb.kb, !nosanitize !14

bb.kb:                                            ; preds = %bb.jz, %bb.ka
  %i.aca = load i8, ptr %i.aby, align 1, !tbaa !22
  %i.acb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 %.1), !nosanitize !14 ; 2 uses
  %i.acc = extractvalue { i64, i1 } %i.acb, 0, !nosanitize !14 ; 2 uses
  %i.acd = extractvalue { i64, i1 } %i.acb, 1, !nosanitize !14
  br i1 %i.acd, label %bb.kc, label %bb.kd, !prof !17, !nosanitize !14

bb.kc:                                            ; preds = %bb.kb
  call void @__ubsan_handle_add_overflow(ptr nonnull @584, i64 %.0, i64 %.1) #7, !nosanitize !14
  br label %bb.kd, !nosanitize !14

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acc
  %i.acf = add i64 %i.acc, %i.f, !nosanitize !14  ; 2 uses
  %.not253 = icmp ult i64 %i.acf, %i.f, !nosanitize !14
  br i1 %.not253, label %bb.ke, label %bb.kf, !prof !17, !nosanitize !14

bb.ke:                                            ; preds = %bb.kd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @585, i64 %i.f, i64 %i.acf) #6, !nosanitize !14
  br label %bb.kf, !nosanitize !14

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %i.acg = load i8, ptr %i.ace, align 1, !tbaa !22
  %.0196.tr = trunc i32 %.0196 to i8
  %i.ach = xor i8 %i.aca, %.0196.tr
  %.narrow = xor i8 %i.ach, %i.acg
  %i.aci = zext i8 %.narrow to i64                ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.aci
  %i.ack = shl nuw nsw i64 %i.aci, 2
  %i.acl = add i64 %i.ack, ptrtoint (ptr @crc_table to i64), !nosanitize !14 ; 2 uses
  %.not255 = icmp ult i64 %i.acl, ptrtoint (ptr @crc_table to i64), !nosanitize !14
  br i1 %.not255, label %bb.kg, label %bb.kh, !prof !17, !nosanitize !14

bb.kg:                                            ; preds = %bb.kf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @586, i64 ptrtoint (ptr @crc_table to i64), i64 %i.acl) #6, !nosanitize !14
  br label %bb.kh, !nosanitize !14

bb.kh:                                            ; preds = %bb.kf, %bb.kg
  %i.acm = load i32, ptr %i.acj, align 4, !tbaa !23
  %i.acn = lshr i32 %.0196, 8
  %i.aco = xor i32 %i.acm, %i.acn
  %i.acp = add i64 %.0, 1
  br label %bb.jv, !llvm.loop !31
}

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_small_nondestructive(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = zext i32 %0 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 135 uses
  %i.d = icmp ne ptr %1, null                     ; 55 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0800 = phi i64 [ %i.b, %bb.a ], [ %i.bkh, %.backedge ] ; 2 uses
  %.0798 = phi i64 [ 0, %bb.a ], [ %i.bkb, %.backedge ] ; 2 uses
  %.0796 = phi i64 [ 0, %bb.a ], [ %i.bkd, %.backedge ] ; 2 uses
  %.0794 = phi i64 [ 0, %bb.a ], [ %i.bke, %.backedge ] ; 2 uses
  %.0792 = phi i64 [ 0, %bb.a ], [ %i.bjy, %.backedge ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bkj, %.backedge ] ; 15 uses
  %i.e = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 256), !nosanitize !14 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0, !nosanitize !14 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.e, 1, !nosanitize !14
  br i1 %i.g, label %bb.c, label %bb.d, !prof !17, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_add_overflow(ptr nonnull @587, i64 %.0, i64 256) #7, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 40), !nosanitize !14 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0, !nosanitize !14 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.h, 1, !nosanitize !14
  br i1 %i.j, label %bb.e, label %bb.f, !prof !17, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_add_overflow(ptr nonnull @588, i64 %i.f, i64 40) #7, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.i, i64 32), !nosanitize !14 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0, !nosanitize !14 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.k, 1, !nosanitize !14
  br i1 %i.m, label %bb.g, label %bb.h, !prof !17, !nosanitize !14

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_add_overflow(ptr nonnull @589, i64 %i.i, i64 32) #7, !nosanitize !14
  br label %bb.h, !nosanitize !14

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.l, i64 32), !nosanitize !14 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0, !nosanitize !14
  %i.p = extractvalue { i64, i1 } %i.n, 1, !nosanitize !14
  br i1 %i.p, label %bb.i, label %bb.j, !prof !17, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_add_overflow(ptr nonnull @590, i64 %i.l, i64 32) #7, !nosanitize !14
  br label %bb.j, !nosanitize !14

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = icmp ult i64 %i.o, %2
  br i1 %i.q, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.r = lshr i64 %.0, 3                          ; 8 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = icmp sgt i64 %.0, -1
  %i.u = add i64 %.0, %i.c, !nosanitize !14       ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = xor i1 %i.d, %i.v
  %i.x = icmp uge i64 %i.u, %i.c, !nosanitize !14
  %i.y = and i1 %i.t, %i.x, !nosanitize !14
  %i.z = and i1 %i.w, %i.y, !nosanitize !14
  br i1 %i.z, label %bb.m, label %bb.l, !prof !13, !nosanitize !14

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @591, i64 %i.c, i64 %i.u) #6, !nosanitize !14
  br label %bb.m, !nosanitize !14

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = ptrtoint ptr %i.s to i64, !nosanitize !14 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !14
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !14
  %i.ad = and i1 %i.d, %i.ac
  br i1 %i.ad, label %bb.o, label %bb.n, !prof !13, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @592, i64 %i.aa) #6, !nosanitize !14
  br label %bb.o, !nosanitize !14

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !16
  %i.af = add nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = icmp ult i64 %.0, 9223372036854775800
  %i.ai = shl i64 %i.af, 3
  %i.aj = add i64 %i.ai, %i.c, !nosanitize !14    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.d, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.c, !nosanitize !14
  %i.an = and i1 %i.ah, %i.am, !nosanitize !14
  %i.ao = and i1 %i.al, %i.an, !nosanitize !14
  br i1 %i.ao, label %bb.q, label %bb.p, !prof !13, !nosanitize !14

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @593, i64 %i.c, i64 %i.aj) #6, !nosanitize !14
  br label %bb.q, !nosanitize !14

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ap = ptrtoint ptr %i.ag to i64, !nosanitize !14 ; 2 uses
  %i.aq = and i64 %i.ap, 7, !nosanitize !14
  %i.ar = icmp eq i64 %i.aq, 0, !nosanitize !14
  br i1 %i.ar, label %bb.s, label %bb.r, !prof !13, !nosanitize !14

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @594, i64 %i.ap) #6, !nosanitize !14
  br label %bb.s, !nosanitize !14

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.at = add nuw nsw i64 %i.r, 2                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = icmp ult i64 %.0, 9223372036854775792
  %i.aw = shl i64 %i.at, 3
  %i.ax = add i64 %i.aw, %i.c, !nosanitize !14    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = xor i1 %i.d, %i.ay
  %i.ba = icmp uge i64 %i.ax, %i.c, !nosanitize !14
  %i.bb = and i1 %i.av, %i.ba, !nosanitize !14
  %i.bc = and i1 %i.az, %i.bb, !nosanitize !14
  br i1 %i.bc, label %bb.u, label %bb.t, !prof !13, !nosanitize !14

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @595, i64 %i.c, i64 %i.ax) #6, !nosanitize !14
  br label %bb.u, !nosanitize !14

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = ptrtoint ptr %i.au to i64, !nosanitize !14 ; 2 uses
  %i.be = and i64 %i.bd, 7, !nosanitize !14
  %i.bf = icmp eq i64 %i.be, 0, !nosanitize !14
  br i1 %i.bf, label %bb.w, label %bb.v, !prof !13, !nosanitize !14

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @596, i64 %i.bd) #6, !nosanitize !14
  br label %bb.w, !nosanitize !14

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !16
  %i.bh = add nuw nsw i64 %i.r, 3                 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bj = icmp ult i64 %.0, 9223372036854775784
  %i.bk = shl i64 %i.bh, 3
  %i.bl = add i64 %i.bk, %i.c, !nosanitize !14    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = xor i1 %i.d, %i.bm
  %i.bo = icmp uge i64 %i.bl, %i.c, !nosanitize !14
  %i.bp = and i1 %i.bj, %i.bo, !nosanitize !14
  %i.bq = and i1 %i.bn, %i.bp, !nosanitize !14
  br i1 %i.bq, label %bb.y, label %bb.x, !prof !13, !nosanitize !14

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @597, i64 %i.c, i64 %i.bl) #6, !nosanitize !14
  br label %bb.y, !nosanitize !14

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = ptrtoint ptr %i.bi to i64, !nosanitize !14 ; 2 uses
  %i.bs = and i64 %i.br, 7, !nosanitize !14
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !14
  br i1 %i.bt, label %bb.aa, label %bb.z, !prof !13, !nosanitize !14

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @598, i64 %i.br) #6, !nosanitize !14
  br label %bb.aa, !nosanitize !14

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bv = add nuw nsw i64 %i.r, 4                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bx = icmp ult i64 %.0, 9223372036854775776
  %i.by = shl i64 %i.bv, 3
  %i.bz = add i64 %i.by, %i.c, !nosanitize !14    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = xor i1 %i.d, %i.ca
  %i.cc = icmp uge i64 %i.bz, %i.c, !nosanitize !14
  %i.cd = and i1 %i.bx, %i.cc, !nosanitize !14
  %i.ce = and i1 %i.cb, %i.cd, !nosanitize !14
  br i1 %i.ce, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !14

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @599, i64 %i.c, i64 %i.bz) #6, !nosanitize !14
  br label %bb.ac, !nosanitize !14

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = ptrtoint ptr %i.bw to i64, !nosanitize !14 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !nosanitize !14
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !14
  br i1 %i.ch, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !14

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @600, i64 %i.cf) #6, !nosanitize !14
  br label %bb.ae, !nosanitize !14

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.cj = add nuw nsw i64 %i.r, 5                 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = icmp ult i64 %.0, 9223372036854775768
  %i.cm = shl i64 %i.cj, 3
  %i.cn = add i64 %i.cm, %i.c, !nosanitize !14    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = xor i1 %i.d, %i.co
end_hunk_2
begin_hunk_3_@crc32_chorba_small_nondestructive:bb.a
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @822, i64 %i.c, i64 %i.bny) #6, !nosanitize !14
  br label %bb.ny, !nosanitize !14

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %i.boe = ptrtoint ptr %i.bnv to i64, !nosanitize !14 ; 2 uses
  %i.bof = and i64 %i.boe, 7, !nosanitize !14
  %i.bog = icmp eq i64 %i.bof, 0, !nosanitize !14
  br i1 %i.bog, label %bb.oa, label %bb.nz, !prof !13, !nosanitize !14

bb.nz:                                            ; preds = %bb.ny
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @823, i64 %i.boe) #6, !nosanitize !14
  br label %bb.oa, !nosanitize !14

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %i.boh = load i64, ptr %i.bnv, align 8, !tbaa !16
  %i.boi = add nuw nsw i64 %i.bks, 3              ; 2 uses
  %i.boj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.boi ; 2 uses
  %i.bok = icmp ult i64 %.1, 9223372036854775784
  %i.bol = shl i64 %i.boi, 3
  %i.bom = add i64 %i.bol, %i.c, !nosanitize !14  ; 3 uses
  %i.bon = icmp eq i64 %i.bom, 0
  %i.boo = xor i1 %i.d, %i.bon
  %i.bop = icmp uge i64 %i.bom, %i.c, !nosanitize !14
  %i.boq = and i1 %i.bok, %i.bop, !nosanitize !14
  %i.bor = and i1 %i.boo, %i.boq, !nosanitize !14
  br i1 %i.bor, label %bb.oc, label %bb.ob, !prof !13, !nosanitize !14

bb.ob:                                            ; preds = %bb.oa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @824, i64 %i.c, i64 %i.bom) #6, !nosanitize !14
  br label %bb.oc, !nosanitize !14

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %i.bos = ptrtoint ptr %i.boj to i64, !nosanitize !14 ; 2 uses
  %i.bot = and i64 %i.bos, 7, !nosanitize !14
  %i.bou = icmp eq i64 %i.bot, 0, !nosanitize !14
  br i1 %i.bou, label %bb.oe, label %bb.od, !prof !13, !nosanitize !14

bb.od:                                            ; preds = %bb.oc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @825, i64 %i.bos) #6, !nosanitize !14
  br label %bb.oe, !nosanitize !14

bb.oe:                                            ; preds = %bb.od, %bb.oc
  %i.bov = load i64, ptr %i.boj, align 8, !tbaa !16
  %i.bow = xor i64 %i.bmr, %i.boh
  %i.box = xor i64 %i.bow, %.1797                 ; 19 uses
  %i.boy = xor i64 %i.bmq, %i.bnq
  %i.boz = xor i64 %i.boy, %i.bov
  %i.bpa = xor i64 %i.boz, %.1795                 ; 19 uses
  %i.bpb = icmp ult i64 %i.box, 140737488355328
  br i1 %i.bpb, label %bb.of, label %.thread931, !prof !13, !nosanitize !14

.thread931:                                       ; preds = %bb.oe
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @826, i64 %i.box, i64 17) #7, !nosanitize !14
  br label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.bpc = icmp samesign ult i64 %i.box, 512
  br i1 %i.bpc, label %.thread933, label %bb.og, !prof !21, !nosanitize !14

.thread933:                                       ; preds = %bb.of
  %i.bpd = mul nuw i64 %i.box, 36028797019095040
  %i.bpe = shl nuw nsw i64 %i.box, 19
  br label %bb.oj

bb.og:                                            ; preds = %bb.of, %.thread931
  %i.bpf = shl i64 %i.box, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @827, i64 %i.box, i64 55) #7, !nosanitize !14
  %i.bpg = shl i64 %i.box, 55
  %i.bph = xor i64 %i.bpf, %i.bpg                 ; 2 uses
  %i.bpi = lshr i64 %i.box, 9                     ; 2 uses
  %i.bpj = icmp ult i64 %i.box, 35184372088832
  br i1 %i.bpj, label %bb.oh, label %.thread934, !prof !19, !nosanitize !14

.thread934:                                       ; preds = %bb.og
  %i.bpk = lshr i64 %i.box, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @828, i64 %i.box, i64 19) #7, !nosanitize !14
  %i.bpl = shl i64 %i.box, 19
  %i.bpm = or disjoint i64 %i.bpk, %i.bpl
  %i.bpn = xor i64 %i.bpm, %i.bpi
  %i.bpo = lshr i64 %i.box, 45
  br label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bpp = shl nuw i64 %i.box, 19
  %i.bpq = xor i64 %i.bpi, %i.bpp                 ; 2 uses
  %i.bpr = icmp samesign ult i64 %i.box, 1048576
  br i1 %i.bpr, label %bb.oj, label %bb.oi, !prof !20, !nosanitize !14

bb.oi:                                            ; preds = %.thread934, %bb.oh
  %i.bps = phi i64 [ %i.bpo, %.thread934 ], [ 0, %bb.oh ]
  %i.bpt = phi i64 [ %i.bpn, %.thread934 ], [ %i.bpq, %bb.oh ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @829, i64 %i.box, i64 44) #7, !nosanitize !14
  br label %bb.oj, !nosanitize !14

bb.oj:                                            ; preds = %.thread933, %bb.oi, %bb.oh
  %i.bpu = phi i64 [ 0, %.thread933 ], [ %i.bps, %bb.oi ], [ 0, %bb.oh ]
  %i.bpv = phi i64 [ %i.bpe, %.thread933 ], [ %i.bpt, %bb.oi ], [ %i.bpq, %bb.oh ]
  %i.bpw = phi i64 [ %i.bpd, %.thread933 ], [ %i.bph, %bb.oi ], [ %i.bph, %bb.oh ]
  %i.bpx = shl i64 %i.box, 44
  %i.bpy = add nuw nsw i64 %i.bpu, %i.bpx
  %i.bpz = lshr i64 %i.box, 20
  %i.bqa = icmp ult i64 %i.bpa, 140737488355328
  br i1 %i.bqa, label %bb.ok, label %.thread935, !prof !13, !nosanitize !14

.thread935:                                       ; preds = %bb.oj
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @830, i64 %i.bpa, i64 17) #7, !nosanitize !14
  br label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.bqb = icmp samesign ult i64 %i.bpa, 512
  br i1 %i.bqb, label %.thread937, label %bb.ol, !prof !21, !nosanitize !14

.thread937:                                       ; preds = %bb.ok
  %i.bqc = mul nuw i64 %i.bpa, 36028797019095040
  %i.bqd = shl nuw nsw i64 %i.bpa, 19
  br label %bb.oo

bb.ol:                                            ; preds = %bb.ok, %.thread935
  %i.bqe = shl i64 %i.bpa, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @831, i64 %i.bpa, i64 55) #7, !nosanitize !14
  %i.bqf = shl i64 %i.bpa, 55
  %i.bqg = xor i64 %i.bqe, %i.bqf                 ; 2 uses
  %i.bqh = lshr i64 %i.bpa, 9                     ; 2 uses
  %i.bqi = icmp ult i64 %i.bpa, 35184372088832
  br i1 %i.bqi, label %bb.om, label %.thread938, !prof !19, !nosanitize !14

.thread938:                                       ; preds = %bb.ol
  %i.bqj = lshr i64 %i.bpa, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @832, i64 %i.bpa, i64 19) #7, !nosanitize !14
  %i.bqk = shl i64 %i.bpa, 19
  %i.bql = or disjoint i64 %i.bqj, %i.bqk
  %i.bqm = xor i64 %i.bql, %i.bqh
  %i.bqn = lshr i64 %i.bpa, 45
  br label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.bqo = shl nuw i64 %i.bpa, 19
  %i.bqp = xor i64 %i.bqh, %i.bqo                 ; 2 uses
  %i.bqq = icmp samesign ult i64 %i.bpa, 1048576
  br i1 %i.bqq, label %bb.oo, label %bb.on, !prof !20, !nosanitize !14

bb.on:                                            ; preds = %.thread938, %bb.om
  %i.bqr = phi i64 [ %i.bqn, %.thread938 ], [ 0, %bb.om ]
  %i.bqs = phi i64 [ %i.bqm, %.thread938 ], [ %i.bqp, %bb.om ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @833, i64 %i.bpa, i64 44) #7, !nosanitize !14
  br label %bb.oo, !nosanitize !14

bb.oo:                                            ; preds = %.thread937, %bb.on, %bb.om
  %i.bqt = phi i64 [ 0, %.thread937 ], [ %i.bqr, %bb.on ], [ 0, %bb.om ]
  %i.bqu = phi i64 [ %i.bqd, %.thread937 ], [ %i.bqs, %bb.on ], [ %i.bqp, %bb.om ]
  %i.bqv = phi i64 [ %i.bqc, %.thread937 ], [ %i.bqg, %bb.on ], [ %i.bqg, %bb.om ]
  %i.bqw = shl i64 %i.bpa, 44
  %i.bqx = add nuw nsw i64 %i.bqt, %i.bqw
  %i.bqy = lshr i64 %i.bpa, 20
  %i.bqz = xor i64 %i.bns, %i.bmu
  %i.bra = xor i64 %i.bqz, %i.bpv
  %i.brb = xor i64 %i.bra, %i.bqv
  %i.brc = xor i64 %i.bpy, %i.bnt
  %i.brd = xor i64 %i.brc, %i.bqu
  %i.bre = xor i64 %i.bqx, %i.bpz
  %i.brf = xor i64 %i.bmt, %i.bnp
  %i.brg = xor i64 %i.brf, %i.bpw
  %i.brh = xor i64 %i.brg, %.1793
  %i.bri = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 32), !nosanitize !14 ; 2 uses
  %i.brj = extractvalue { i64, i1 } %i.bri, 0, !nosanitize !14
  %i.brk = extractvalue { i64, i1 } %i.bri, 1, !nosanitize !14
  br i1 %i.brk, label %bb.op, label %.preheader.backedge, !prof !17, !nosanitize !14

bb.op:                                            ; preds = %bb.oo
  call void @__ubsan_handle_add_overflow(ptr nonnull @834, i64 %.1, i64 32) #7, !nosanitize !14
  br label %.preheader.backedge, !nosanitize !14

.preheader.backedge:                              ; preds = %bb.op, %bb.oo
  br label %.preheader, !llvm.loop !33

bb.oq:                                            ; preds = %bb.nd
  %i.brl = and i64 %.1, -8
  %i.brm = add i64 %i.brl, %i.c, !nosanitize !14  ; 3 uses
  %i.brn = icmp eq i64 %i.brm, 0
  %i.bro = xor i1 %i.d, %i.brn
  %i.brp = icmp uge i64 %i.brm, %i.c, !nosanitize !14
  %i.brq = and i1 %i.brp, %i.bro
  %i.brr = and i1 %i.brq, %i.bku
  br i1 %i.brr, label %bb.os, label %bb.or, !prof !13, !nosanitize !14

bb.or:                                            ; preds = %bb.oq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @835, i64 %i.c, i64 %i.brm) #6, !nosanitize !14
  br label %bb.os, !nosanitize !14

bb.os:                                            ; preds = %bb.or, %bb.oq
  %i.brs = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %.1), !nosanitize !14 ; 2 uses
  %i.brt = extractvalue { i64, i1 } %i.brs, 0, !nosanitize !14 ; 2 uses
  %i.bru = extractvalue { i64, i1 } %i.brs, 1, !nosanitize !14 ; 2 uses
  br i1 %i.bru, label %bb.ot, label %bb.ou, !prof !17, !nosanitize !14

bb.ot:                                            ; preds = %bb.os
  call void @__ubsan_handle_sub_overflow(ptr nonnull @836, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.ou, !nosanitize !14

bb.ou:                                            ; preds = %bb.os, %bb.ot
  %.not941 = icmp eq ptr %1, null
  br i1 %.not941, label %bb.ov, label %bb.ow, !prof !17, !nosanitize !14

bb.ov:                                            ; preds = %bb.ou
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @837) #6, !nosanitize !14
  br label %bb.ow, !nosanitize !14

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %i.brv = ptrtoint ptr %i.bkt to i64, !nosanitize !14 ; 2 uses
  %i.brw = and i64 %i.brv, 7, !nosanitize !14
  %i.brx = icmp eq i64 %i.brw, 0, !nosanitize !14
  br i1 %i.brx, label %bb.oy, label %bb.ox, !prof !13, !nosanitize !14

bb.ox:                                            ; preds = %bb.ow
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @838, i64 %i.brv) #6, !nosanitize !14
  br label %bb.oy, !nosanitize !14

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %i.bkt, i64 %i.brt, i1 false)
  %i.bry = load i64, ptr %i.a, align 16, !tbaa !16
  %i.brz = xor i64 %i.bry, %.1801
  store i64 %i.brz, ptr %i.a, align 16, !tbaa !16
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bsb = ptrtoint ptr %i.a to i64, !nosanitize !14 ; 6 uses
  %i.bsc = load i64, ptr %i.bsa, align 8, !tbaa !16
  %i.bsd = xor i64 %i.bsc, %.1799
  store i64 %i.bsd, ptr %i.bsa, align 8, !tbaa !16
  %i.bse = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.not809 = icmp eq ptr %i.a, inttoptr (i64 -16 to ptr)
  br i1 %.not809, label %.thread939, label %bb.oz, !prof !17, !nosanitize !14

.thread939:                                       ; preds = %bb.oy
  %i.bsf = add i64 %i.bsb, 16, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @839, i64 %i.bsb, i64 %i.bsf) #6, !nosanitize !14
  %i.bsg = load i64, ptr %i.bse, align 16, !tbaa !16
  %i.bsh = xor i64 %i.bsg, %.1797
  store i64 %i.bsh, ptr %i.bse, align 16, !tbaa !16
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.bsj = load i64, ptr %i.bse, align 16, !tbaa !16
  %i.bsk = xor i64 %i.bsj, %.1797
  store i64 %i.bsk, ptr %i.bse, align 16, !tbaa !16
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.not810 = icmp ugt ptr %i.a, inttoptr (i64 -25 to ptr)
  br i1 %.not810, label %bb.pa, label %bb.pb, !prof !19, !nosanitize !14

bb.pa:                                            ; preds = %.thread939, %bb.oz
  %i.bsm = phi ptr [ %i.bsi, %.thread939 ], [ %i.bsl, %bb.oz ]
  %i.bsn = add i64 %i.bsb, 24, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @840, i64 %i.bsb, i64 %i.bsn) #6, !nosanitize !14
  br label %bb.pb, !nosanitize !14

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  %i.bso = phi ptr [ %i.bsl, %bb.oz ], [ %i.bsm, %bb.pa ] ; 2 uses
  %i.bsp = load i64, ptr %i.bso, align 8, !tbaa !16
  %i.bsq = xor i64 %i.bsp, %.1795
  store i64 %i.bsq, ptr %i.bso, align 8, !tbaa !16
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.not811 = icmp ugt ptr %i.a, inttoptr (i64 -33 to ptr)
  br i1 %.not811, label %bb.pc, label %bb.pd, !prof !17, !nosanitize !14

bb.pc:                                            ; preds = %bb.pb
  %i.bss = add i64 %i.bsb, 32, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @841, i64 %i.bsb, i64 %i.bss) #6, !nosanitize !14
  br label %bb.pd, !nosanitize !14

bb.pd:                                            ; preds = %bb.pb, %bb.pc
  %i.bst = load i64, ptr %i.bsr, align 16, !tbaa !16
  %i.bsu = xor i64 %i.bst, %.1793
  store i64 %i.bsu, ptr %i.bsr, align 16, !tbaa !16
  br i1 %i.bru, label %bb.pe, label %bb.pf, !prof !17, !nosanitize !14

bb.pe:                                            ; preds = %bb.pd
  call void @__ubsan_handle_sub_overflow(ptr nonnull @842, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.pf, !nosanitize !14

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %i.bsv = call i32 @crc32_braid_internal(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.brt) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.bsv
}

declare i32 @crc32_braid_internal(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !34 {
bb.a:
  %i.a = xor i32 %0, -1                           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 7                          ; 6 uses
  %i.e = or disjoint i64 %i.d, 72
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @crc32_braid_internal(i32 noundef %i.a, ptr noundef %1, i64 noundef %i.d) #6
  %i.h = sub nuw i64 %2, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %i.h, %bb.c ], [ %2, %bb.b ]  ; 5 uses
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.a, %bb.b ]  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 3 uses
  %i.j = add i64 %i.d, %i.b, !nosanitize !14      ; 3 uses
  %i.k = icmp ne ptr %1, null, !nosanitize !14
  %i.l = icmp eq i64 %i.j, 0
  %i.m = xor i1 %i.k, %i.l
  %i.n = icmp uge i64 %i.j, %i.b, !nosanitize !14
  %i.o = and i1 %i.n, %i.m, !nosanitize !14
  br i1 %i.o, label %bb.f, label %bb.e, !prof !13, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @843, i64 %i.b, i64 %i.j) #6, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = icmp ugt i64 %.028, 524288
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @crc32_chorba_118960_nondestructive(i32 noundef %.0, ptr noundef %i.i, i64 noundef %.028)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = add nsw i64 %.028, -8193
  %or.cond = icmp ult i64 %i.r, 24576
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @crc32_chorba_32768_nondestructive(i32 noundef %.0, ptr noundef %i.i, i64 noundef %.028)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.t = call i32 @crc32_chorba_small_nondestructive(i32 noundef %.0, ptr noundef %i.i, i64 noundef %.028)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.u = call i32 @crc32_braid_internal(i32 noundef %i.a, ptr noundef %1, i64 noundef %2) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.k
  %.1 = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.i ], [ %i.t, %bb.j ], [ %i.u, %bb.k ]
  %i.v = xor i32 %.1, -1
  ret i32 %i.v
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { uwtable }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{i32 -1056584962, i32 805666523}
!13 = !{!"branch_weights", i32 1048575, i32 1}
!14 = !{}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"branch_weights", i32 0, i32 -2147483648}
!20 = !{!"branch_weights", i32 1073741824, i32 1073741824}
!21 = !{!"branch_weights", i32 -2147483648, i32 0}
!22 = !{!8, !8, i64 0}
!23 = !{!9, !9, i64 0}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = !{i32 -1056584962, i32 411946090}
end_hunk_3
