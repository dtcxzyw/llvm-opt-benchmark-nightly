Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tab-complete?download=true
inline.NumInlined: 136
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.2846 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_ts_config_is_visible(c.oid)\00", align 1
@.str.2847 = private unnamed_addr constant [15 x i8] c"c.cfgnamespace\00", align 1
@.str.2848 = private unnamed_addr constant [10 x i8] c"c.cfgname\00", align 1
@Query_for_list_of_ts_configurations = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2845, ptr null, ptr @.str.2846, ptr @.str.2847, ptr @.str.2848, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2850 = private unnamed_addr constant [24 x i8] c"pg_catalog.pg_ts_dict d\00", align 1
@.str.2851 = private unnamed_addr constant [40 x i8] c"pg_catalog.pg_ts_dict_is_visible(d.oid)\00", align 1
@.str.2852 = private unnamed_addr constant [16 x i8] c"d.dictnamespace\00", align 1
@.str.2853 = private unnamed_addr constant [11 x i8] c"d.dictname\00", align 1
@Query_for_list_of_ts_dictionaries = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2850, ptr null, ptr @.str.2851, ptr @.str.2852, ptr @.str.2853, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2855 = private unnamed_addr constant [26 x i8] c"pg_catalog.pg_ts_parser p\00", align 1
@.str.2856 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_ts_parser_is_visible(p.oid)\00", align 1
@.str.2857 = private unnamed_addr constant [15 x i8] c"p.prsnamespace\00", align 1
@.str.2858 = private unnamed_addr constant [10 x i8] c"p.prsname\00", align 1
@Query_for_list_of_ts_parsers = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2855, ptr null, ptr @.str.2856, ptr @.str.2857, ptr @.str.2858, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2860 = private unnamed_addr constant [28 x i8] c"pg_catalog.pg_ts_template t\00", align 1
@.str.2861 = private unnamed_addr constant [44 x i8] c"pg_catalog.pg_ts_template_is_visible(t.oid)\00", align 1
@.str.2862 = private unnamed_addr constant [16 x i8] c"t.tmplnamespace\00", align 1
@.str.2863 = private unnamed_addr constant [11 x i8] c"t.tmplname\00", align 1
@Query_for_list_of_ts_templates = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2860, ptr null, ptr @.str.2861, ptr @.str.2862, ptr @.str.2863, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@complete_from_files.list_index = internal unnamed_addr global i32 0, align 4
@complete_from_files.files_done = internal unnamed_addr global i1 false, align 1
@.str.2865 = private unnamed_addr constant [26 x i8] c"pg_catalog.pg_collation c\00", align 1
@.str.2866 = private unnamed_addr constant [89 x i8] c"c.collencoding IN (-1, pg_catalog.pg_char_to_encoding(pg_catalog.getdatabaseencoding()))\00", align 1
@.str.2867 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_collation_is_visible(c.oid)\00", align 1
@.str.2868 = private unnamed_addr constant [16 x i8] c"c.collnamespace\00", align 1
@.str.2869 = private unnamed_addr constant [11 x i8] c"c.collname\00", align 1
@Query_for_list_of_collations = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2865, ptr @.str.2866, ptr @.str.2867, ptr @.str.2868, ptr @.str.2869, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@Query_for_list_of_indexables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2836, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2872 = private unnamed_addr constant [19 x i8] c"c.relkind IN ('p')\00", align 1
@Query_for_list_of_partitioned_tables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2872, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2874 = private unnamed_addr constant [19 x i8] c"c.relkind IN ('v')\00", align 1
@Query_for_list_of_views = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2874, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2876 = private unnamed_addr constant [17 x i8] c"p.prokind != 'p'\00", align 1
@Query_for_list_of_functions = internal constant [2 x { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 110000, [4 x i8] zeroinitializer, ptr @.str.2709, ptr @.str.2876, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2709, ptr null, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], align 16
@.str.2878 = private unnamed_addr constant [34 x i8] c"c.relkind IN ('r', 'f', 'v', 'p')\00", align 1
@Query_for_list_of_updatables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2878, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2880 = private unnamed_addr constant [44 x i8] c"c.relkind IN ('r', 'S', 'v', 'm', 'f', 'p')\00", align 1
@Query_for_list_of_selectables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2880, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@Query_for_list_of_routines = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2709, ptr null, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2883 = private unnamed_addr constant [19 x i8] c"c.relkind IN ('S')\00", align 1
@Query_for_list_of_sequences = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2883, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2885 = private unnamed_addr constant [30 x i8] c"c.relkind IN ('r', 'v', 'p') \00", align 1
@Query_for_list_of_mergetargets = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2885, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2887 = private unnamed_addr constant [27 x i8] c"pg_catalog.pg_constraint c\00", align 1
@.str.2888 = private unnamed_addr constant [16 x i8] c"c.conrelid <> 0\00", align 1
@.str.2889 = private unnamed_addr constant [15 x i8] c"c.connamespace\00", align 1
@.str.2890 = private unnamed_addr constant [10 x i8] c"c.conname\00", align 1
@Query_for_list_of_constraints_with_schema = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2887, ptr @.str.2888, ptr null, ptr @.str.2889, ptr @.str.2890, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2892 = private unnamed_addr constant [97 x i8] c"SELECT vartype FROM pg_catalog.pg_settings WHERE pg_catalog.lower(name) = pg_catalog.lower('%s')\00", align 1
@.str.2893 = private unnamed_addr constant [29 x i8] c"c.relkind IN ('r', 'f', 'p')\00", align 1
@Query_for_list_of_truncatables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2893, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2895 = private unnamed_addr constant [16 x i8] c"p.prokind = 'a'\00", align 1
@.str.2896 = private unnamed_addr constant [11 x i8] c"p.proisagg\00", align 1
@Query_for_list_of_aggregates = internal constant [2 x { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 110000, [4 x i8] zeroinitializer, ptr @.str.2709, ptr @.str.2895, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2709, ptr @.str.2896, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], align 16
@.str.2898 = private unnamed_addr constant [25 x i8] c"pg_catalog.pg_opfamily c\00", align 1
@.str.2899 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_opfamily_is_visible(c.oid)\00", align 1
@.str.2900 = private unnamed_addr constant [15 x i8] c"c.opfnamespace\00", align 1
@.str.2901 = private unnamed_addr constant [10 x i8] c"c.opfname\00", align 1
@Query_for_list_of_operator_families = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2898, ptr null, ptr @.str.2899, ptr @.str.2900, ptr @.str.2901, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2903 = private unnamed_addr constant [16 x i8] c"c.relkind = 'I'\00", align 1
@Query_for_list_of_partitioned_indexes = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2903, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2905 = private unnamed_addr constant [24 x i8] c"c.relkind IN ('p', 'I')\00", align 1
@Query_for_list_of_partitioned_relations = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2905, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2907 = private unnamed_addr constant [76 x i8] c" SELECT pubname    FROM pg_catalog.pg_publication   WHERE pubname LIKE '%s'\00", align 1
@Query_for_list_of_publications = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 100000, [4 x i8] zeroinitializer, ptr @.str.2907 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2909 = private unnamed_addr constant [185 x i8] c" SELECT s.subname    FROM pg_catalog.pg_subscription s, pg_catalog.pg_database d   WHERE s.subname LIKE '%s'     AND d.datname = pg_catalog.current_database()     AND s.subdbid = d.oid\00", align 1
@Query_for_list_of_subscriptions = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 100000, [4 x i8] zeroinitializer, ptr @.str.2909 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2911 = private unnamed_addr constant [30 x i8] c"pg_catalog.pg_statistic_ext s\00", align 1
@.str.2912 = private unnamed_addr constant [47 x i8] c"pg_catalog.pg_statistics_obj_is_visible(s.oid)\00", align 1
@.str.2913 = private unnamed_addr constant [15 x i8] c"s.stxnamespace\00", align 1
@.str.2914 = private unnamed_addr constant [10 x i8] c"s.stxname\00", align 1
@Query_for_list_of_statistics = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2911, ptr null, ptr @.str.2912, ptr @.str.2913, ptr @.str.2914, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@Query_for_list_of_relations = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr null, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2917 = private unnamed_addr constant [69 x i8] c"SELECT conname FROM pg_catalog.pg_conversion WHERE conname LIKE '%s'\00", align 1
@.str.2918 = private unnamed_addr constant [19 x i8] c"DEFAULT PRIVILEGES\00", align 1
@.str.2919 = private unnamed_addr constant [11 x i8] c"OR REPLACE\00", align 1
@.str.2920 = private unnamed_addr constant [66 x i8] c"SELECT rulename FROM pg_catalog.pg_rules WHERE rulename LIKE '%s'\00", align 1
@.str.2921 = private unnamed_addr constant [85 x i8] c"SELECT tgname FROM pg_catalog.pg_trigger WHERE tgname LIKE '%s' AND NOT tgisinternal\00", align 1
@Keywords_for_user_thing = internal constant [2 x ptr] [ptr @.str.2597, ptr null], align 16
@.str.2922 = private unnamed_addr constant [17 x i8] c"USER MAPPING FOR\00", align 1
@words_after_create = internal unnamed_addr constant [52 x { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1586, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.200, ptr null, ptr null, ptr @Query_for_list_of_aggregates, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1587, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.261, ptr null, ptr null, ptr @Query_for_list_of_collations, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.551, ptr null, ptr null, ptr @Query_for_list_of_ts_configurations, ptr null, i32 7, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.263, ptr @.str.2917, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.265, ptr @.str.1660, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2918, ptr null, ptr null, ptr null, ptr null, i32 3, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.549, ptr null, ptr null, ptr @Query_for_list_of_ts_dictionaries, ptr null, i32 7, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.345, ptr null, ptr null, ptr @Query_for_list_of_domains, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1588, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.275, ptr @.str.2585, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1897, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1898, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.202, ptr null, ptr null, ptr @Query_for_list_of_functions, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.571, ptr @.str.1476, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.296, ptr null, ptr null, ptr @Query_for_list_of_indexes, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.317, ptr @.str.1908, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1899, ptr null, ptr null, ptr null, ptr null, i32 3, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1589, ptr null, ptr null, ptr @Query_for_list_of_matviews, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.281, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2919, ptr null, ptr null, ptr null, ptr null, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.194, ptr null, ptr null, ptr null, ptr null, i32 5, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.630, ptr null, ptr null, ptr @Query_for_list_of_ts_parsers, ptr null, i32 7, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.398, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.204, ptr null, ptr null, ptr @Query_for_list_of_procedures, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1901, ptr null, ptr null, ptr @Query_for_list_of_propgraphs, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.218, ptr null, ptr @Query_for_list_of_publications, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1275, ptr @.str.1476, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.206, ptr null, ptr null, ptr @Query_for_list_of_routines, ptr null, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.419, ptr @.str.2920, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.243, ptr @.str.2056, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.357, ptr null, ptr null, ptr @Query_for_list_of_sequences, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.248, ptr @.str.1544, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.308, ptr null, ptr null, ptr @Query_for_list_of_statistics, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.246, ptr null, ptr @Query_for_list_of_subscriptions, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.366, ptr null, ptr null, ptr null, ptr null, i32 3, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.176, ptr null, ptr null, ptr @Query_for_list_of_tables, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.192, ptr @.str.1580, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2218, ptr null, ptr null, ptr null, ptr null, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.632, ptr null, ptr null, ptr @Query_for_list_of_ts_templates, ptr null, i32 7, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2290, ptr null, ptr null, ptr null, ptr null, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1590, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.634, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.270, ptr @.str.2921, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.553, ptr null, ptr null, ptr @Query_for_list_of_datatypes, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.441, ptr null, ptr null, ptr null, ptr null, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.781, ptr null, ptr null, ptr null, ptr null, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.574, ptr @.str.1476, ptr null, ptr null, ptr @Keywords_for_user_thing, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2922, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.323, ptr null, ptr null, ptr @Query_for_list_of_views, ptr null, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.2924 = private unnamed_addr constant [7 x i8] c" \09\0D\0A\22`\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initialize_readline() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 368), align 8
  store ptr %i.a, ptr @rl_readline_name, align 8
  store ptr @psql_completion, ptr @rl_attempted_completion_function, align 8
  store ptr @quote_file_name, ptr @rl_filename_quoting_function, align 8
  store ptr @dequote_file_name, ptr @rl_filename_dequoting_function, align 8
  store ptr @.str, ptr @rl_basic_word_break_characters, align 8
  store ptr @.str.1, ptr @rl_completer_quote_characters, align 8
  %i.b = tail call ptr @pg_malloc(i64 noundef 256) #10 ; 7 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 255
  store i8 0, ptr %i.c, align 1
  store ptr %i.b, ptr @rl_filename_quote_characters, align 8
  store i1 true, ptr @completion_max_records, align 4
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.c ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.e = trunc nuw i64 %indvars.iv.next to i8
  store i8 %i.e, ptr %i.d, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.g = trunc nuw i64 %indvars.iv.next.1 to i8
  store i8 %i.g, ptr %i.f, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.1
  %i.i = trunc nuw i64 %indvars.iv.next.2 to i8
  store i8 %i.i, ptr %i.h, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.2
  %i.k = trunc nuw i64 %indvars.iv.next.3 to i8
  store i8 %i.k, ptr %i.j, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.3
  %i.m = trunc nuw i64 %indvars.iv.next.4 to i8
  store i8 %i.m, ptr %i.l, align 1
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 255
  br i1 %exitcond.not.4, label %bb.b, label %bb.c, !llvm.loop !14
}

; Function Attrs: nounwind uwtable
define internal ptr @psql_completion(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @rl_line_buffer, align 8
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = sub i32 %2, %1                           ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @pnstrdup(ptr noundef %i.c, i64 noundef %i.e) #10 ; 13 uses
  %i.g = icmp sgt i32 %2, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.d, -1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i8 [ %i.k, %bb.b ], [ 0, %bb.a ]
  store i8 %i.l, ptr @completion_last_char, align 1
  store i32 32, ptr @rl_completion_append_character, align 4
  store ptr null, ptr @completion_charp, align 8
  store ptr null, ptr @completion_charpp, align 8
  store ptr null, ptr @completion_vquery, align 8
  store ptr null, ptr @completion_squery, align 8
  store ptr null, ptr @completion_ref_object, align 8
  store ptr null, ptr @completion_ref_schema, align 8
  %i.m = load ptr, ptr @tab_completion_query_buf, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %.not84.i = icmp eq i64 %i.o, 0
  br i1 %.not84.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add i32 %1, 2
  %i.r = add i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64
  %i.t = tail call ptr @pg_malloc(i64 noundef %i.s) #10 ; 5 uses
  %i.u = load ptr, ptr @tab_completion_query_buf, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %sext.i = shl i64 %i.o, 32
  %i.w = ashr exact i64 %sext.i, 32               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.v, i64 %i.w, i1 false)
  %i.x = add i32 %i.p, 1                          ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  store i8 10, ptr %i.y, align 1
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 %i.z
  %i.ab = load ptr, ptr @rl_line_buffer, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ab, i64 %i.b, i1 false)
  %i.ac = add i32 %i.x, %1                        ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr @rl_line_buffer, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %i.b, %bb.f ], [ %i.ad, %bb.e ]
  %.077.i = phi i32 [ %1, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.076.i = phi ptr [ %i.af, %bb.f ], [ %i.t, %bb.e ] ; 6 uses
  %i.ag = tail call ptr @pg_malloc_mul(i64 noundef 8, i64 noundef %.pre-phi) #10 ; 10 uses
  %i.ah = shl i32 %.077.i, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @pg_malloc(i64 noundef %i.ai) #10 ; 2 uses
  %i.ak = zext i32 %.077.i to i64
  %indvars.iv.next.i228 = add nsw i64 %i.ak, -1   ; 2 uses
  %indvars.i229 = trunc i64 %indvars.iv.next.i228 to i32 ; 2 uses
  %i.al = icmp sgt i32 %indvars.i229, -1
  br i1 %i.al, label %.lr.ph, label %.thread91.i

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i230, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.am = icmp sgt i32 %indvars.i, -1
  br i1 %i.am, label %.lr.ph, label %.thread91.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.i231 = phi i32 [ %indvars.i, %bb.h ], [ %indvars.i229, %bb.g ]
  %indvars.iv.next.i230 = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %indvars.iv.next.i228, %bb.g ] ; 2 uses
  %i.an = and i64 %indvars.iv.next.i230, 2147483647
  %i.ao = getelementptr inbounds nuw i8, ptr %.076.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.aq, i64 13)
  %.not85.i = icmp eq ptr %memchr.i, null
  br i1 %.not85.i, label %bb.h, label %.preheader97.lr.ph.i, !llvm.loop !15

.preheader97.lr.ph.i:                             ; preds = %.lr.ph
  %i.ar = tail call ptr @__ctype_b_loc() #11
  br label %.preheader97.i

.preheader97.i:                                   ; preds = %._crit_edge.i, %.preheader97.lr.ph.i
  %.072112.i = phi i32 [ 0, %.preheader97.lr.ph.i ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %.074111.i = phi ptr [ %i.aj, %.preheader97.lr.ph.i ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %.178110.i = phi i32 [ %indvars.i231, %.preheader97.lr.ph.i ], [ %i.bz, %._crit_edge.i ]
  %i.as = load ptr, ptr %i.ar, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader97.i
  %.171102.i = phi i32 [ %.178110.i, %.preheader97.i ], [ %i.ba, %bb.j ] ; 5 uses
  %i.at = zext nneg i32 %.171102.i to i64         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.076.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 8192
  %.not86.i = icmp eq i16 %i.az, 0
  br i1 %.not86.i, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %.not138.i = icmp eq i32 %.171102.i, 0
  br i1 %.not138.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %.171102.i, -1
  %i.bb = icmp sgt i32 %.171102.i, 0
  br i1 %i.bb, label %bb.i, label %.thread91.i, !llvm.loop !16

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %bb.p ], [ %i.at, %.preheader.i ] ; 5 uses
  %.065105.i = phi i32 [ %.1.i, %bb.p ], [ 0, %.preheader.i ] ; 5 uses
  %.066104.i = phi i8 [ %spec.select.i, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.076.i, i64 %indvars.iv120.i ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = icmp eq i8 %i.bd, 34
  %i.bf = zext i1 %i.be to i8                     ; 2 uses
  %spec.select.i = xor i8 %.066104.i, %i.bf
  %.not96.i = icmp eq i8 %.066104.i, %i.bf
  br i1 %.not96.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph.i
  switch i8 %i.bd, label %bb.n [
    i8 41, label %bb.l
    i8 40, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = add i32 %.065105.i, 1
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bh = add i32 %.065105.i, -1                  ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %._crit_edge.loopexit.split.loop.exit133.i, label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %.065105.i, 0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %i.bc, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i32
  %memchr87.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.bm, i64 13)
  %.not88.i = icmp eq ptr %memchr87.i, null
  br i1 %.not88.i, label %bb.p, label %._crit_edge.loopexit.split.loop.exit135.i

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph.i
  %.1.i = phi i32 [ %.065105.i, %.lr.ph.i ], [ %i.bg, %bb.l ], [ %i.bh, %bb.m ], [ 0, %bb.o ], [ %.065105.i, %bb.n ]
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, -1
  %i.bn = icmp sgt i64 %indvars.iv120.i, 1
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !17

._crit_edge.loopexit.split.loop.exit133.i:        ; preds = %bb.m
  %i.bo = trunc nuw nsw i64 %indvars.iv120.i to i32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.split.loop.exit135.i:        ; preds = %bb.o
  %i.bp = trunc nuw nsw i64 %indvars.iv120.i to i32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.p, %._crit_edge.loopexit.split.loop.exit135.i, %._crit_edge.loopexit.split.loop.exit133.i
  %.069.lcssa.ph.i = phi i32 [ %i.bo, %._crit_edge.loopexit.split.loop.exit133.i ], [ %i.bp, %._crit_edge.loopexit.split.loop.exit135.i ], [ 0, %bb.p ] ; 2 uses
  %.pre.i = zext nneg i32 %.069.lcssa.ph.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.069.lcssa.i = phi i32 [ %.069.lcssa.ph.i, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.bq = add i32 %.072112.i, 1                   ; 2 uses
  %i.br = sext i32 %.072112.i to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.br
  store ptr %.074111.i, ptr %i.bs, align 8
  %i.bt = add i32 %.171102.i, 1
  %i.bu = sub i32 %i.bt, %.069.lcssa.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.076.i, i64 %.pre-phi.i
  %i.bw = sext i32 %i.bu to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.074111.i, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %.074111.i, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 0, ptr %i.bx, align 1
  %i.bz = add nsw i32 %.069.lcssa.i, -1
  %i.ca = icmp sgt i32 %.069.lcssa.i, 0
  br i1 %i.ca, label %.preheader97.i, label %.thread91.i

.thread91.i:                                      ; preds = %bb.h, %._crit_edge.i, %bb.j, %bb.g
  %.072101.i = phi i32 [ 0, %bb.g ], [ %i.bq, %._crit_edge.i ], [ %.072112.i, %bb.j ], [ 0, %bb.h ] ; 11 uses
  %i.cb = load ptr, ptr @rl_line_buffer, align 8
  %.not89.i = icmp eq ptr %.076.i, %i.cb
  br i1 %.not89.i, label %get_previous_words.exit, label %bb.q

bb.q:                                             ; preds = %.thread91.i
  tail call void @free(ptr noundef %.076.i) #10
  br label %get_previous_words.exit

get_previous_words.exit:                          ; preds = %.thread91.i, %bb.q
  %i.cc = load i8, ptr %i.f, align 1
  switch i8 %i.cc, label %bb.y [
    i8 92, label %bb.r
    i8 58, label %bb.s
  ]

bb.r:                                             ; preds = %get_previous_words.exit
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @psql_completion.backslash_commands, ptr @completion_charpp, align 8
  %i.cd = tail call ptr @rl_completion_matches(ptr noundef nonnull %i.f, ptr noundef nonnull @complete_from_list) #10
  br label %.loopexit

bb.s:                                             ; preds = %get_previous_words.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %bb.x [
    i8 58, label %bb.y
    i8 39, label %bb.t
    i8 34, label %bb.u
    i8 123, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call fastcc ptr @complete_from_variables(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i1 noundef zeroext true)
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.ch = tail call fastcc ptr @complete_from_variables(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i1 noundef zeroext true)
  br label %.loopexit

bb.v:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 63
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = tail call fastcc ptr @complete_from_variables(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i1 noundef zeroext true)
  br label %.loopexit

bb.x:                                             ; preds = %bb.s, %bb.v
  %i.cm = tail call fastcc ptr @complete_from_variables(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, i1 noundef zeroext true)
  br label %.loopexit

bb.y:                                             ; preds = %bb.s, %get_previous_words.exit
  %i.cn = icmp eq i32 %.072101.i, 0
  br i1 %i.cn, label %bb.z, label %.preheader151.a

bb.z:                                             ; preds = %bb.y
  store i1 false, ptr @completion_case_sensitive, align 1
  store ptr @sql_commands, ptr @completion_charpp, align 8
  br label %.thread.sink.split

.preheader151.a:                                  ; preds = %bb.y, %.critedge.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.thread ], [ 0, %bb.y ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr @tcpatterns, i64 %indvars.iv ; 14 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  switch i32 %i.cq, label %.critedge.thread [
    i32 0, label %HeadMatchesArray.exit
    i32 1, label %.split
    i32 2, label %bb.aa
    i32 3, label %bb.ac
    i32 4, label %bb.ae
    i32 5, label %bb.ag
  ]

.split:                                           ; preds = %.preheader151.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call fastcc zeroext i1 @MatchesArray(i1 noundef zeroext true, i32 noundef %.072101.i, ptr noundef %i.ag, i32 noundef %i.cs, ptr noundef %i.cu)
  br i1 %i.cv, label %.critedge, label %.critedge.thread

bb.aa:                                            ; preds = %.preheader151.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cx = load i32, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = icmp slt i32 %.072101.i, %i.cx
  br i1 %i.da, label %.critedge.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %wide.trip.count.i = zext nneg i32 %i.cx to i64
  br label %.lr.ph.i95

bb.ab:                                            ; preds = %.lr.ph.i95
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i97, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i95, !llvm.loop !0

.lr.ph.i95:                                       ; preds = %bb.ab, %.lr.ph.preheader.i
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i97, %bb.ab ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i96
  %i.dc = load ptr, ptr %i.db, align 8
  %3 = trunc i64 %indvars.iv.i96 to i32
  %4 = xor i32 %3, -1
  %5 = add i32 %.072101.i, %4
  %6 = sext i32 %5 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %6
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.dc, ptr noundef %i.de, i1 noundef zeroext false)
  br i1 %i.df, label %bb.ab, label %.critedge.thread

bb.ac:                                            ; preds = %.preheader151.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dh = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp slt i32 %.072101.i, %i.dh
  br i1 %i.dk, label %.critedge.thread, label %.lr.ph.preheader.i99

.lr.ph.preheader.i99:                             ; preds = %bb.ac
  %wide.trip.count.i100 = zext nneg i32 %i.dh to i64
  br label %.lr.ph.i101

bb.ad:                                            ; preds = %.lr.ph.i101
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %wide.trip.count.i100
  br i1 %exitcond.not.i105, label %.critedge, label %.lr.ph.i101, !llvm.loop !0

.lr.ph.i101:                                      ; preds = %bb.ad, %.lr.ph.preheader.i99
  %indvars.iv.i102 = phi i64 [ 0, %.lr.ph.preheader.i99 ], [ %indvars.iv.next.i104, %bb.ad ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i102
  %i.dm = load ptr, ptr %i.dl, align 8
  %7 = trunc i64 %indvars.iv.i102 to i32
  %8 = xor i32 %7, -1
  %9 = add i32 %.072101.i, %8
  %10 = sext i32 %9 to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %10
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.dm, ptr noundef %i.do, i1 noundef zeroext true)
  br i1 %i.dp, label %bb.ad, label %.critedge.thread

bb.ae:                                            ; preds = %.preheader151.a
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dr = load i32, ptr %i.dq, align 8            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = icmp slt i32 %.072101.i, %i.dr
  br i1 %i.du, label %.critedge.thread, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.ae
  %wide.trip.count.i109 = zext nneg i32 %i.dr to i64
  br label %.lr.ph.i110

bb.af:                                            ; preds = %.lr.ph.i110
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i109
  br i1 %exitcond.not.i114, label %.critedge, label %.lr.ph.i110, !llvm.loop !1

.lr.ph.i110:                                      ; preds = %bb.af, %.lr.ph.preheader.i108
  %indvars.iv.i111 = phi i64 [ 0, %.lr.ph.preheader.i108 ], [ %indvars.iv.next.i113, %bb.af ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i111
  %i.dw = load ptr, ptr %i.dv, align 8
  %11 = trunc i64 %indvars.iv.i111 to i32
  %12 = xor i32 %11, -1
  %13 = add i32 %i.dr, %12
  %14 = sext i32 %13 to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %14
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.dw, ptr noundef %i.dy, i1 noundef zeroext false)
  br i1 %i.dz, label %bb.af, label %.critedge.thread

bb.ag:                                            ; preds = %.preheader151.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.eb = load i32, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = icmp slt i32 %.072101.i, %i.eb
  br i1 %i.ee, label %.critedge.thread, label %.lr.ph.preheader.i116

.lr.ph.preheader.i116:                            ; preds = %bb.ag
  %wide.trip.count.i117 = zext nneg i32 %i.eb to i64
  br label %.lr.ph.i118

bb.ah:                                            ; preds = %.lr.ph.i118
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i117
  br i1 %exitcond.not.i122, label %.critedge, label %.lr.ph.i118, !llvm.loop !1

.lr.ph.i118:                                      ; preds = %bb.ah, %.lr.ph.preheader.i116
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next.i121, %bb.ah ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i119
  %i.eg = load ptr, ptr %i.ef, align 8
  %15 = trunc i64 %indvars.iv.i119 to i32
  %16 = xor i32 %15, -1
  %17 = add i32 %i.eb, %16
  %18 = sext i32 %17 to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %18
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.eg, ptr noundef %i.ei, i1 noundef zeroext true)
  br i1 %i.ej, label %bb.ah, label %.critedge.thread

HeadMatchesArray.exit:                            ; preds = %.preheader151.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call fastcc zeroext i1 @MatchesArray(i1 noundef zeroext false, i32 noundef %.072101.i, ptr noundef %i.ag, i32 noundef %i.el, ptr noundef %i.en)
  br i1 %i.eo, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %HeadMatchesArray.exit, %.split
  %i.ep = load i32, ptr %i.co, align 8
  %i.eq = tail call fastcc ptr @match_previous_words(i32 noundef %i.ep, ptr noundef nonnull %i.f, i32 noundef %1, ptr noundef %i.ag, i32 noundef %.072101.i) ; 2 uses
  %.not88 = icmp eq ptr %i.eq, null
  br i1 %.not88, label %.critedge.thread, label %.thread.thread

.critedge.thread:                                 ; preds = %.lr.ph.i118, %.lr.ph.i110, %.lr.ph.i101, %.lr.ph.i95, %bb.ag, %bb.ac, %bb.ae, %bb.aa, %.split, %HeadMatchesArray.exit, %.preheader151.a, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 981
  br i1 %exitcond.not, label %.loopexit, label %.preheader151.a, !llvm.loop !18

.loopexit:                                        ; preds = %.critedge.thread, %bb.u, %bb.x, %bb.w, %bb.t, %bb.r
  %.4 = phi ptr [ %i.cd, %bb.r ], [ %i.cg, %bb.t ], [ %i.ch, %bb.u ], [ %i.cl, %bb.w ], [ %i.cm, %bb.x ], [ null, %.critedge.thread ] ; 2 uses
  %i.er = icmp eq ptr %.4, null
  %i.es = icmp sgt i32 %.072101.i, 0
  %or.cond = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.ao
  %i.et = phi ptr [ %i.fk, %bb.ao ], [ @.str.1586, %.loopexit ]
  %.0164 = phi ptr [ %i.fj, %bb.ao ], [ @words_after_create, %.loopexit ] ; 7 uses
  %i.eu = load ptr, ptr %i.ag, align 8
  %i.ev = tail call i32 @pg_strcasecmp(ptr noundef %i.eu, ptr noundef nonnull %i.et) #10
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %.0164, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not90 = icmp eq ptr %i.ey, null
  br i1 %.not90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ey, ptr @completion_charp, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8
  store ptr %i.fa, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %.0164, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not91 = icmp eq ptr %i.fc, null
  br i1 %.not91, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.fc, ptr @completion_vquery, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8
  store ptr %i.fe, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %.0164, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not92 = icmp eq ptr %i.fg, null
  br i1 %.not92, label %.thread142, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.fg, ptr @completion_squery, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8
  store ptr %i.fi, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.ao:                                            ; preds = %.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %.0164, i64 48 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not89 = icmp eq ptr %i.fk, null
  br i1 %.not89, label %.thread142, label %.preheader, !llvm.loop !19

.thread.sink.split:                               ; preds = %bb.aj, %bb.an, %bb.al, %bb.z
  %complete_from_list.sink = phi ptr [ @complete_from_list, %bb.z ], [ @complete_from_versioned_query, %bb.al ], [ @complete_from_versioned_schema_query, %bb.an ], [ @complete_from_query, %bb.aj ]
  %i.fl = tail call ptr @rl_completion_matches(ptr noundef nonnull %i.f, ptr noundef nonnull %complete_from_list.sink) #10
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  %.6 = phi ptr [ %.4, %.loopexit ], [ %i.fl, %.thread.sink.split ] ; 2 uses
  %i.fm = icmp eq ptr %.6, null
  br i1 %i.fm, label %.thread142, label %.thread.thread

.thread142:                                       ; preds = %bb.ao, %bb.am, %.thread
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @.str.128, ptr @completion_charp, align 8
  %i.fn = tail call ptr @rl_completion_matches(ptr noundef nonnull %i.f, ptr noundef nonnull @complete_from_const) #10
  store i32 0, ptr @rl_completion_append_character, align 4
  store i32 1, ptr @rl_completion_suppress_quote, align 4
  br label %.thread.thread

.thread.thread:                                   ; preds = %.critedge, %.thread142, %.thread
  %.7 = phi ptr [ %i.fn, %.thread142 ], [ %.6, %.thread ], [ %i.eq, %.critedge ]
  tail call void @free(ptr noundef %i.ag) #10
  tail call void @free(ptr noundef %i.aj) #10
  tail call void @free(ptr noundef %i.f) #10
  %i.fo = load ptr, ptr @completion_ref_object, align 8
  tail call void @free(ptr noundef %i.fo) #10
  store ptr null, ptr @completion_ref_object, align 8
  %i.fp = load ptr, ptr @completion_ref_schema, align 8
  tail call void @free(ptr noundef %i.fp) #10
  store ptr null, ptr @completion_ref_schema, align 8
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @quote_file_name(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load ptr, ptr @completion_charp, align 8
  %i.b = load i8, ptr %i.a, align 1
  %i.c = load i8, ptr @completion_force_quote, align 1, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.f = tail call ptr @quote_if_needed(ptr noundef %0, ptr noundef nonnull @.str.2924, i8 noundef signext 39, i8 noundef signext %i.b, i1 noundef zeroext %i.d, i32 noundef %i.e) #10 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @pg_strdup(ptr noundef %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]  ; 4 uses
  %i.h = load i8, ptr %.0, align 1
  %i.i = icmp eq i8 %i.h, 39
  %i.j = load i8, ptr @completion_last_char, align 1
  %i.k = icmp ne i8 %i.j, 39
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq i32 %1, 1
  br i1 %.not18, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %2, align 1
  %i.m = icmp eq i8 %i.l, 39
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = call i32 @stat(ptr noundef %0, ptr noundef nonnull %3) #10
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 61440
  %i.r = icmp eq i32 %i.q, 16384
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #12
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  store i8 0, ptr %i.u, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c
  store i32 0, ptr @rl_completion_suppress_quote, align 4
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i8, ptr %2, align 1
  %.not22 = icmp eq i8 %i.v, 39
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %2, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @dequote_file_name(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 39
end_hunk_0
begin_hunk_1_@complete_from_list:bb.a
  %i.ba = phi i8 [ %i.bd, %.lr.ph.i ], [ %i.az, %.thread.i ]
  %.13.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.aj, %.thread.i ] ; 2 uses
  %i.bb = tail call zeroext i8 @pg_toupper(i8 noundef zeroext %i.ba) #10
  store i8 %i.bb, ptr %.13.i, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %.not19.i = icmp eq i8 %i.bd, 0
  br i1 %.not19.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i, !llvm.loop !3

.thread:                                          ; preds = %..thread_crit_edge, %bb.e
  %i.be = phi i8 [ %i.v, %bb.e ], [ %.pre30, %..thread_crit_edge ] ; 2 uses
  %i.bf = phi i32 [ %i.w, %bb.e ], [ %.pre33, %..thread_crit_edge ] ; 2 uses
  %i.bg = phi ptr [ %i.x, %bb.e ], [ %.pre32, %..thread_crit_edge ] ; 2 uses
  %i.bh = phi i8 [ 1, %bb.e ], [ %.pre30, %..thread_crit_edge ]
  %i.bi = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bi, ptr @complete_from_list.list_index, align 4
  %i.bj = sext i32 %i.bf to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !21

._crit_edge:                                      ; preds = %.thread, %.thread.us, %bb.c
  %i.bm = phi i8 [ 1, %.thread.us ], [ %.pre31, %bb.c ], [ %i.be, %.thread ]
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i32, ptr @complete_from_list.matches, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.m, label %pg_strdup_keyword_case.exit

bb.m:                                             ; preds = %._crit_edge
  store i8 0, ptr @complete_from_list.casesensitive, align 1
  store i32 0, ptr @complete_from_list.list_index, align 4
  %i.bq = add i32 %.tr16, 1
  br label %tailrecurse

pg_strdup_keyword_case.exit.sink.split:           ; preds = %bb.g, %.split.us
  %.lcssa.sink = phi ptr [ %.us-phi, %.split.us ], [ %i.z, %bb.g ]
  %i.br = tail call ptr @pg_strdup(ptr noundef nonnull %.lcssa.sink) #10
  br label %pg_strdup_keyword_case.exit

pg_strdup_keyword_case.exit:                      ; preds = %._crit_edge, %.lr.ph.i, %.lr.ph6.i, %pg_strdup_keyword_case.exit.sink.split, %.thread.i, %bb.l
  %.0 = phi ptr [ %i.aj, %.thread.i ], [ %i.aj, %.lr.ph6.i ], [ %i.br, %pg_strdup_keyword_case.exit.sink.split ], [ %i.aj, %.lr.ph.i ], [ %i.aj, %bb.l ], [ null, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @complete_from_variables(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pg_malloc_mul(i64 noundef 8, i64 noundef 101) #10 ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 416), align 8
  %.0.in28 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.029 = load ptr, ptr %.0.in28, align 8         ; 3 uses
  %.not30 = icmp eq ptr %.029, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.034.us = phi ptr [ %.0.us, %bb.d ], [ %.029, %.lr.ph ] ; 3 uses
  %.02233.us = phi i32 [ %.1.us, %bb.d ], [ 100, %.lr.ph ] ; 4 uses
  %.02332.us = phi i32 [ %.124.us, %bb.d ], [ 0, %.lr.ph ] ; 4 uses
  %.02531.us = phi ptr [ %.126.us, %bb.d ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.not12.us = icmp eq ptr %i.d, null
  br i1 %.not12.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = load ptr, ptr %.034.us, align 8
  %.not.i.us = icmp slt i32 %.02332.us, %.02233.us
  br i1 %.not.i.us, label %append_variable_names.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %.02233.us, 1                    ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @pg_realloc_mul(ptr noundef %.02531.us, i64 noundef 8, i64 noundef %i.h) #10
  br label %append_variable_names.exit.us

append_variable_names.exit.us:                    ; preds = %bb.c, %bb.b
  %.227.us = phi ptr [ %.02531.us, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.2.us = phi i32 [ %.02233.us, %bb.b ], [ %i.f, %bb.c ]
  %i.j = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.129, ptr noundef %1, ptr noundef %i.e, ptr noundef %2) #10
  %i.k = add i32 %.02332.us, 1
  %i.l = sext i32 %.02332.us to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.227.us, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %append_variable_names.exit.us, %.lr.ph.split.us
  %.126.us = phi ptr [ %.02531.us, %.lr.ph.split.us ], [ %.227.us, %append_variable_names.exit.us ] ; 2 uses
  %.124.us = phi i32 [ %.02332.us, %.lr.ph.split.us ], [ %i.k, %append_variable_names.exit.us ] ; 2 uses
  %.1.us = phi i32 [ %.02233.us, %.lr.ph.split.us ], [ %.2.us, %append_variable_names.exit.us ]
  %.0.in.us = getelementptr inbounds nuw i8, ptr %.034.us, i64 32
  %.0.us = load ptr, ptr %.0.in.us, align 8       ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %append_variable_names.exit
  %.034 = phi ptr [ %.0, %append_variable_names.exit ], [ %.029, %.lr.ph ] ; 2 uses
  %.02233 = phi i32 [ %.2, %append_variable_names.exit ], [ 100, %.lr.ph ] ; 3 uses
  %.02332 = phi i32 [ %i.t, %append_variable_names.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.02531 = phi ptr [ %.227, %append_variable_names.exit ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %.034, align 8
  %.not.i = icmp slt i32 %.02332, %.02233
  br i1 %.not.i, label %append_variable_names.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.o = shl i32 %.02233, 1                       ; 2 uses
  %i.p = or disjoint i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @pg_realloc_mul(ptr noundef %.02531, i64 noundef 8, i64 noundef %i.q) #10
  br label %append_variable_names.exit

append_variable_names.exit:                       ; preds = %.lr.ph.split, %bb.e
  %.227 = phi ptr [ %.02531, %.lr.ph.split ], [ %i.r, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %.02233, %.lr.ph.split ], [ %i.o, %bb.e ]
  %i.s = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.129, ptr noundef %1, ptr noundef %i.n, ptr noundef %2) #10
  %i.t = add i32 %.02332, 1                       ; 2 uses
  %i.u = sext i32 %.02332 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.227, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !23

._crit_edge:                                      ; preds = %append_variable_names.exit, %bb.d, %bb.a
  %.025.lcssa = phi ptr [ %i.a, %bb.a ], [ %.126.us, %bb.d ], [ %.227, %append_variable_names.exit ] ; 4 uses
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %.124.us, %bb.d ], [ %i.t, %append_variable_names.exit ] ; 3 uses
  %i.w = sext i32 %.023.lcssa to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.025.lcssa, i64 %i.w
  store ptr null, ptr %i.x, align 8
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr %.025.lcssa, ptr @completion_charpp, align 8
  %i.y = tail call ptr @rl_completion_matches(ptr noundef %0, ptr noundef nonnull @complete_from_list) #10
  %i.z = icmp sgt i32 %.023.lcssa, 0
  br i1 %i.z, label %.lr.ph39.preheader, label %._crit_edge40

.lr.ph39.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %.023.lcssa to i64
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %indvars.iv = phi i64 [ 0, %.lr.ph39.preheader ], [ %indvars.iv.next, %.lr.ph39 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.025.lcssa, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @free(ptr noundef %i.ab) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !24

._crit_edge40:                                    ; preds = %.lr.ph39, %._crit_edge
  tail call void @free(ptr noundef nonnull %.025.lcssa) #10
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @MatchesArray(i1 noundef zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1
  %i.b = icmp slt i32 %1, %i.a
  br i1 %i.b, label %HeadMatchesArray.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.thread58

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread58, label %.lr.ph, !llvm.loop !25

.thread58:                                        ; preds = %bb.c, %.preheader
  %.not37 = icmp eq i32 %1, %3
  br i1 %.not37, label %.preheader.i, label %HeadMatchesArray.exit

.preheader.i:                                     ; preds = %.thread58
  %i.h = icmp slt i32 %3, 1
  br i1 %i.h, label %HeadMatchesArray.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %5 = trunc i64 %indvars.iv.i to i32
  %6 = xor i32 %5, -1
  %7 = add i32 %3, %6
  %8 = sext i32 %7 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.j, ptr noundef %i.l, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.m, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %HeadMatchesArray.exit, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.o = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.p = icmp slt i32 %1, %i.o
  br i1 %i.p, label %HeadMatchesArray.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %bb.d
  %i.q = icmp eq i64 %indvars.iv, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph.i41

bb.e:                                             ; preds = %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %indvars.iv
  br i1 %exitcond.not.i45, label %.loopexit, label %.lr.ph.i41, !llvm.loop !0

.lr.ph.i41:                                       ; preds = %.preheader.i38, %bb.e
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i44, %bb.e ], [ 0, %.preheader.i38 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i42
  %i.s = load ptr, ptr %i.r, align 8
  %9 = trunc i64 %indvars.iv.i42 to i32
  %10 = xor i32 %9, -1
  %11 = add i32 %1, %10
  %12 = sext i32 %11 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %12
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.s, ptr noundef %i.u, i1 noundef zeroext %0)
  br i1 %i.v, label %bb.e, label %HeadMatchesArray.exit

.loopexit:                                        ; preds = %bb.e, %.preheader.i38
  %i.w = xor i32 %i.o, -1
  %i.x = add i32 %3, %i.w                         ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = icmp slt i32 %1, %i.x
  br i1 %i.z, label %HeadMatchesArray.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %.loopexit
  %i.aa = icmp slt i32 %i.x, 1
  br i1 %i.aa, label %HeadMatchesArray.exit, label %.lr.ph.preheader.i48

.lr.ph.preheader.i48:                             ; preds = %.preheader.i47
  %wide.trip.count.i49 = zext nneg i32 %i.x to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i48
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %indvars.iv.next.i53, %.lr.ph.i50 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i51
  %i.ac = load ptr, ptr %i.ab, align 8
  %13 = trunc i64 %indvars.iv.i51 to i32
  %14 = xor i32 %13, -1
  %15 = add i32 %i.x, %14
  %16 = sext i32 %15 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.ac, ptr noundef %i.ae, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp ne i64 %indvars.iv.next.i53, %wide.trip.count.i49
  %or.cond89.not = select i1 %i.af, i1 %exitcond.not.i54, i1 false
  br i1 %or.cond89.not, label %.lr.ph.i50, label %HeadMatchesArray.exit, !llvm.loop !1

HeadMatchesArray.exit:                            ; preds = %.lr.ph.i41, %.lr.ph.i50, %.lr.ph.i, %.preheader.i47, %.preheader.i, %.loopexit, %bb.d, %.thread58, %bb.a
  %.033 = phi i1 [ %i.m, %.lr.ph.i ], [ false, %bb.a ], [ true, %.preheader.i ], [ false, %.thread58 ], [ true, %.preheader.i47 ], [ false, %bb.d ], [ false, %.loopexit ], [ %i.af, %.lr.ph.i50 ], [ false, %.lr.ph.i41 ]
  ret i1 %.033
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match_previous_words(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca i8, align 1                       ; 3 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %i.k = alloca i8, align 1                       ; 3 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %i.p = alloca i8, align 1                       ; 3 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = alloca i8, align 1                       ; 3 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %i.u = alloca i8, align 1                       ; 3 uses
  %i.v = alloca i8, align 1                       ; 3 uses
  %i.w = alloca i8, align 1                       ; 3 uses
  %i.x = alloca i8, align 1                       ; 3 uses
  %i.y = alloca i8, align 1                       ; 3 uses
  %i.z = alloca i8, align 1                       ; 3 uses
  %i.aa = alloca i8, align 1                      ; 3 uses
  %i.ab = alloca i8, align 1                      ; 3 uses
  %i.ac = alloca i8, align 1                      ; 3 uses
  %i.ad = alloca i8, align 1                      ; 3 uses
  %i.ae = alloca i8, align 1                      ; 3 uses
  %i.af = alloca i8, align 1                      ; 3 uses
  %i.ag = alloca i8, align 1                      ; 3 uses
  %i.ah = alloca i8, align 1                      ; 3 uses
  %i.ai = alloca i8, align 1                      ; 3 uses
  %i.aj = alloca i8, align 1                      ; 3 uses
  %i.ak = alloca i8, align 1                      ; 3 uses
  %i.al = alloca i8, align 1                      ; 3 uses
  %i.am = alloca i8, align 1                      ; 3 uses
  %i.an = alloca i8, align 1                      ; 3 uses
  %i.ao = alloca i8, align 1                      ; 3 uses
  %i.ap = alloca i8, align 1                      ; 3 uses
  %i.aq = alloca i8, align 1                      ; 3 uses
  %i.ar = alloca i8, align 1                      ; 3 uses
  %i.as = alloca i8, align 1                      ; 3 uses
  %i.at = alloca i8, align 1                      ; 3 uses
  %i.au = alloca i8, align 1                      ; 3 uses
  %i.av = alloca i8, align 1                      ; 3 uses
  %i.aw = alloca i8, align 1                      ; 3 uses
  %i.ax = alloca i8, align 1                      ; 3 uses
  %i.ay = alloca i8, align 1                      ; 3 uses
  %i.az = alloca i8, align 1                      ; 3 uses
  %i.ba = alloca i8, align 1                      ; 3 uses
  %i.bb = alloca i8, align 1                      ; 3 uses
  %i.bc = alloca i8, align 1                      ; 3 uses
  %i.bd = alloca i8, align 1                      ; 3 uses
  %i.be = alloca i8, align 1                      ; 3 uses
  %i.bf = alloca i8, align 1                      ; 3 uses
  %i.bg = alloca i8, align 1                      ; 3 uses
  %i.bh = alloca i8, align 1                      ; 3 uses
  %i.bi = alloca i8, align 1                      ; 3 uses
  %i.bj = alloca i8, align 1                      ; 3 uses
  %i.bk = alloca i8, align 1                      ; 3 uses
  %i.bl = alloca i8, align 1                      ; 3 uses
  %i.bm = alloca i8, align 1                      ; 3 uses
  %i.bn = alloca i8, align 1                      ; 3 uses
  %i.bo = alloca i8, align 1                      ; 3 uses
  %i.bp = alloca i8, align 1                      ; 3 uses
  %i.bq = alloca i8, align 1                      ; 3 uses
  %i.br = alloca i8, align 1                      ; 3 uses
  %i.bs = alloca i8, align 1                      ; 3 uses
  %i.bt = alloca i8, align 1                      ; 3 uses
  %i.bu = alloca i8, align 1                      ; 3 uses
  %i.bv = alloca i8, align 1                      ; 3 uses
  %i.bw = alloca i8, align 1                      ; 3 uses
  %i.bx = alloca i8, align 1                      ; 3 uses
  %i.by = alloca i8, align 1                      ; 3 uses
  %i.bz = alloca i8, align 1                      ; 3 uses
  %i.ca = alloca i8, align 1                      ; 3 uses
  %i.cb = alloca i8, align 1                      ; 3 uses
  %i.cc = alloca i8, align 1                      ; 3 uses
  %i.cd = alloca i8, align 1                      ; 3 uses
  %i.ce = alloca i8, align 1                      ; 3 uses
  %i.cf = alloca i8, align 1                      ; 3 uses
  %i.cg = alloca i8, align 1                      ; 3 uses
  %i.ch = alloca i8, align 1                      ; 3 uses
  %i.ci = alloca i8, align 1                      ; 3 uses
  %i.cj = alloca i8, align 1                      ; 3 uses
  %i.ck = alloca i8, align 1                      ; 3 uses
  %i.cl = alloca i8, align 1                      ; 3 uses
  %i.cm = alloca i8, align 1                      ; 3 uses
  %i.cn = alloca i8, align 1                      ; 3 uses
  %i.co = alloca i8, align 1                      ; 3 uses
  %i.cp = alloca i8, align 1                      ; 3 uses
  %i.cq = alloca i8, align 1                      ; 3 uses
  %i.cr = alloca i8, align 1                      ; 3 uses
  %i.cs = alloca i8, align 1                      ; 3 uses
  %i.ct = alloca i8, align 1                      ; 3 uses
  %i.cu = alloca i8, align 1                      ; 3 uses
  %i.cv = alloca i8, align 1                      ; 3 uses
  %i.cw = alloca i8, align 1                      ; 3 uses
  %i.cx = alloca i8, align 1                      ; 3 uses
  %i.cy = alloca i8, align 1                      ; 3 uses
  %i.cz = alloca i8, align 1                      ; 3 uses
  %i.da = alloca i8, align 1                      ; 3 uses
  %i.db = alloca i8, align 1                      ; 3 uses
  %i.dc = alloca i8, align 1                      ; 3 uses
  %i.dd = alloca i8, align 1                      ; 3 uses
  %i.de = alloca i8, align 1                      ; 3 uses
  %i.df = alloca i8, align 1                      ; 3 uses
  %i.dg = alloca i8, align 1                      ; 3 uses
  %i.dh = alloca i8, align 1                      ; 3 uses
  %i.di = alloca i8, align 1                      ; 3 uses
  %i.dj = alloca i8, align 1                      ; 3 uses
  %i.dk = alloca i8, align 1                      ; 3 uses
  %i.dl = alloca i8, align 1                      ; 3 uses
  %i.dm = alloca i8, align 1                      ; 3 uses
  %i.dn = alloca i8, align 1                      ; 3 uses
  %i.do = alloca i8, align 1                      ; 3 uses
  %i.dp = alloca i8, align 1                      ; 3 uses
  %i.dq = alloca i8, align 1                      ; 3 uses
  %i.dr = alloca i8, align 1                      ; 3 uses
  %i.ds = alloca i8, align 1                      ; 3 uses
  %i.dt = alloca i8, align 1                      ; 3 uses
  %i.du = alloca i8, align 1                      ; 3 uses
  %i.dv = alloca i8, align 1                      ; 3 uses
  %i.dw = alloca i8, align 1                      ; 3 uses
  %i.dx = alloca i8, align 1                      ; 3 uses
  %i.dy = alloca i8, align 1                      ; 3 uses
  %i.dz = alloca i8, align 1                      ; 3 uses
  %i.ea = alloca i8, align 1                      ; 3 uses
  %i.eb = alloca i8, align 1                      ; 3 uses
  %i.ec = alloca i8, align 1                      ; 3 uses
  %i.ed = alloca i8, align 1                      ; 3 uses
  %i.ee = alloca i8, align 1                      ; 3 uses
  %i.ef = alloca i8, align 1                      ; 3 uses
  %i.eg = alloca i8, align 1                      ; 3 uses
  %i.eh = alloca i8, align 1                      ; 3 uses
  %i.ei = alloca i8, align 1                      ; 3 uses
  %i.ej = alloca i8, align 1                      ; 3 uses
  %i.ek = alloca i8, align 1                      ; 3 uses
  %i.el = alloca i8, align 1                      ; 3 uses
  %i.em = alloca i8, align 1                      ; 3 uses
  %i.en = alloca i8, align 1                      ; 3 uses
  switch i32 %0, label %ends_with.exit1273.thread [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.o
    i32 12, label %bb.q
    i32 13, label %bb.s
    i32 14, label %bb.u
    i32 15, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.x
    i32 18, label %bb.y
    i32 19, label %bb.z
    i32 20, label %bb.aa
    i32 21, label %bb.ab
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 24, label %bb.af
    i32 25, label %bb.ah
    i32 26, label %bb.ai
    i32 27, label %bb.aj
    i32 28, label %bb.ak
    i32 29, label %bb.al
    i32 30, label %bb.am
    i32 31, label %bb.an
    i32 32, label %bb.ao
    i32 33, label %bb.ap
    i32 34, label %bb.ar
    i32 35, label %bb.as
    i32 36, label %bb.at
    i32 37, label %bb.au
    i32 38, label %bb.av
    i32 39, label %bb.aw
    i32 40, label %bb.ax
end_hunk_1
begin_hunk_2_@pg_strncasecmp
declare i32 @pg_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @pg_tolower(i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @pg_toupper(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @pg_realloc_mul(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @psprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @word_matches(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread69, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %i.c = icmp eq i8 %i.b, 33
  br i1 %i.c, label %tailrecurse, label %.lr.ph._crit_edge

tailrecurse:                                      ; preds = %.lr.ph.preheader, %tailrecurse
  %accumulator.tr8196 = phi i1 [ %i.e, %tailrecurse ], [ false, %.lr.ph.preheader ]
  %.tr8295 = phi ptr [ %i.d, %tailrecurse ], [ %0, %.lr.ph.preheader ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr8295, i64 1 ; 3 uses
  %i.e = xor i1 %accumulator.tr8196, true         ; 2 uses
  %i.f = load i8, ptr %i.d, align 1
  %i.g = icmp eq i8 %i.f, 33
  br i1 %i.g, label %tailrecurse, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %tailrecurse, %.lr.ph.preheader
  %.tr82.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %i.d, %tailrecurse ] ; 2 uses
  %accumulator.tr81.lcssa = phi i1 [ false, %.lr.ph.preheader ], [ %i.e, %tailrecurse ] ; 6 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %.lr.ph._crit_edge, %.critedge67.us
  %.057.us = phi ptr [ %i.af, %.critedge67.us ], [ %.tr82.lcssa, %.lr.ph._crit_edge ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.split.us
  %.052.us = phi ptr [ null, %.split.us ], [ %.1.us, %bb.d ] ; 4 uses
  %.0.us = phi ptr [ %.057.us, %.split.us ], [ %i.k, %bb.d ] ; 6 uses
  %i.j = load i8, ptr %.0.us, align 1             ; 2 uses
  switch i8 %i.j, label %bb.d [
    i8 0, label %.critedge.us
    i8 124, label %.critedge.us
    i8 42, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.us = phi ptr [ %.0.us, %bb.c ], [ %.052.us, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.us, i64 1
  br label %bb.b, !llvm.loop !28

.critedge.us:                                     ; preds = %bb.b, %bb.b
  %.not64.us = icmp eq ptr %.052.us, null
  %i.l = ptrtoint ptr %.057.us to i64             ; 2 uses
  br i1 %.not64.us, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.critedge.us
  %i.m = ptrtoint ptr %.052.us to i64             ; 2 uses
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = ptrtoint ptr %.0.us to i64
  %i.p = xor i64 %i.m, -1
  %i.q = add i64 %i.o, %i.p                       ; 3 uses
  %i.r = add i64 %i.q, %i.n
  %.not65.us = icmp ult i64 %i.h, %i.r
  br i1 %.not65.us, label %.critedge67.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %.057.us, i64 noundef %i.n) #12
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %.critedge67.us

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 0, %i.q
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.052.us, i64 1
  %i.x = tail call i32 @strncmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.q) #12
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread69, label %.critedge67.us

bb.h:                                             ; preds = %.critedge.us
  %i.z = ptrtoint ptr %.0.us to i64
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = icmp eq i64 %i.h, %i.aa
  br i1 %i.ab, label %bb.i, label %.critedge67.us

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %.057.us, i64 noundef %i.h) #12
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread69, label %.critedge67.us

.critedge67.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ae = icmp eq i8 %i.j, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.0.us, i64 1
  br i1 %i.ae, label %.thread69, label %.split.us

.split:                                           ; preds = %.lr.ph._crit_edge, %.critedge67
  %.057 = phi ptr [ %i.bd, %.critedge67 ], [ %.tr82.lcssa, %.lr.ph._crit_edge ] ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.split
  %.052 = phi ptr [ null, %.split ], [ %.1, %bb.l ] ; 4 uses
  %.0 = phi ptr [ %.057, %.split ], [ %i.ah, %bb.l ] ; 7 uses
  %i.ag = load i8, ptr %.0, align 1
  switch i8 %i.ag, label %bb.l [
    i8 0, label %.critedge
    i8 124, label %.critedge
    i8 42, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.1 = phi ptr [ %.0, %bb.k ], [ %.052, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.j, !llvm.loop !28

.critedge:                                        ; preds = %bb.j, %bb.j
  %.not64 = icmp eq ptr %.052, null
  %i.ai = ptrtoint ptr %.057 to i64               ; 2 uses
  br i1 %.not64, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.aj = ptrtoint ptr %.052 to i64               ; 2 uses
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = ptrtoint ptr %.0 to i64
  %i.am = xor i64 %i.aj, -1
  %i.an = add i64 %i.al, %i.am                    ; 3 uses
  %i.ao = add i64 %i.an, %i.ak
  %.not65 = icmp ult i64 %i.h, %i.ao
  br i1 %.not65, label %.critedge67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 @pg_strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %.057, i64 noundef %i.ak) #10
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %.critedge67

bb.o:                                             ; preds = %bb.n
  %i.ar = sub i64 0, %i.an
  %i.as = getelementptr inbounds i8, ptr %i.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.052, i64 1
  %i.au = tail call i32 @pg_strncasecmp(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef %i.an) #10
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.thread69, label %.critedge67

bb.p:                                             ; preds = %.critedge
  %i.aw = ptrtoint ptr %.0 to i64
  %i.ax = sub i64 %i.aw, %i.ai
  %i.ay = icmp eq i64 %i.h, %i.ax
  br i1 %i.ay, label %bb.q, label %.critedge67

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i32 @pg_strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %.057, i64 noundef %i.h) #10
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread69, label %.critedge67

.critedge67:                                      ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.bb = load i8, ptr %.0, align 1
  %i.bc = icmp eq i8 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %i.bc, label %.thread69, label %.split

.thread69:                                        ; preds = %.critedge67, %bb.o, %bb.q, %.critedge67.us, %bb.i, %bb.g, %bb.a
  %accumulator.tr80 = phi i1 [ %accumulator.tr81.lcssa, %.critedge67.us ], [ false, %bb.a ], [ %accumulator.tr81.lcssa, %bb.g ], [ %accumulator.tr81.lcssa, %bb.i ], [ %accumulator.tr81.lcssa, %bb.q ], [ %accumulator.tr81.lcssa, %bb.o ], [ %accumulator.tr81.lcssa, %.critedge67 ]
  %.4 = phi i1 [ false, %.critedge67.us ], [ true, %bb.a ], [ true, %bb.i ], [ true, %bb.g ], [ false, %.critedge67 ], [ true, %bb.o ], [ true, %bb.q ]
  %accumulator.ret.tr = xor i1 %accumulator.tr80, %.4
  ret i1 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HeadMatchesImpl(i1 zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 8) %3, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 10 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = icmp slt i32 %1, %3
  br i1 %i.b, label %HeadMatchesArray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.promoted = load i32, ptr %4, align 16         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 16             ; 7 uses
  %.promoted15 = load ptr, ptr %i.c, align 8      ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.f = icmp ult i32 %.promoted, 41
  br i1 %i.f, label %bb.c, label %bb.d

.preheader.i:                                     ; preds = %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  call void @llvm.va_end.p0(ptr nonnull %4)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8
  %5 = trunc i64 %indvars.iv.i to i32
  %6 = xor i32 %5, -1
  %7 = add i32 %1, %6
  %8 = sext i32 %7 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call fastcc zeroext i1 @word_matches(ptr noundef %i.h, ptr noundef %i.j, i1 noundef zeroext false) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count
  %or.cond.not = select i1 %i.k, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %HeadMatchesArray.exit, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %.promoted to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = add nuw nsw i32 %.promoted, 8            ; 2 uses
  store i32 %i.n, ptr %4, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.promoted15, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.promoted15, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %.promoted, %bb.d ] ; 4 uses
  %i.r = phi ptr [ %i.m, %bb.c ], [ %.promoted15, %bb.d ]
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.a, align 16
  %exitcond.not = icmp eq i32 %3, 1
  br i1 %exitcond.not, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i32 %i.q, 41
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  store ptr %i.u, ptr %i.c, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.q to i64
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %i.x = add nuw nsw i32 %i.q, 8                  ; 2 uses
  store i32 %i.x, ptr %4, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %i.p, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.z = phi i32 [ %i.x, %bb.h ], [ %i.q, %bb.g ] ; 4 uses
  %i.aa = phi ptr [ %i.w, %bb.h ], [ %i.p, %bb.g ]
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult i32 %i.z, 41
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  store ptr %i.ae, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = getelementptr i8, ptr %i.e, i64 %i.af
  %i.ah = add nuw nsw i32 %i.z, 8                 ; 2 uses
  store i32 %i.ah, ptr %4, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.y, %bb.l ], [ %i.ae, %bb.k ] ; 3 uses
  %i.aj = phi i32 [ %i.ah, %bb.l ], [ %i.z, %bb.k ] ; 4 uses
  %i.ak = phi ptr [ %i.ag, %bb.l ], [ %i.y, %bb.k ]
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.am, align 16
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ult i32 %i.aj, 41
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr i8, ptr %i.e, i64 %i.ap
  %i.ar = add nuw nsw i32 %i.aj, 8                ; 2 uses
  store i32 %i.ar, ptr %4, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = phi ptr [ %i.ai, %bb.p ], [ %i.ao, %bb.o ] ; 3 uses
  %i.at = phi i32 [ %i.ar, %bb.p ], [ %i.aj, %bb.o ] ; 4 uses
  %i.au = phi ptr [ %i.aq, %bb.p ], [ %i.ai, %bb.o ]
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.av, ptr %i.aw, align 8
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp ult i32 %i.at, 41
  br i1 %i.ax, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %i.bb = add nuw nsw i32 %i.at, 8                ; 2 uses
  store i32 %i.bb, ptr %4, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bc = phi ptr [ %i.as, %bb.t ], [ %i.ay, %bb.s ] ; 3 uses
  %i.bd = phi i32 [ %i.bb, %bb.t ], [ %i.at, %bb.s ] ; 4 uses
  %i.be = phi ptr [ %i.ba, %bb.t ], [ %i.as, %bb.s ]
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bf, ptr %i.bg, align 16
  %exitcond.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond.not.4, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp ult i32 %i.bd, 41
  br i1 %i.bh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bj
  %i.bl = add nuw nsw i32 %i.bd, 8                ; 2 uses
  store i32 %i.bl, ptr %4, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bm = phi ptr [ %i.bc, %bb.x ], [ %i.bi, %bb.w ] ; 2 uses
  %i.bn = phi i32 [ %i.bl, %bb.x ], [ %i.bd, %bb.w ] ; 3 uses
  %i.bo = phi ptr [ %i.bk, %bb.x ], [ %i.bc, %bb.w ]
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.bp, ptr %i.bq, align 8
  %exitcond.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond.not.5, label %.preheader.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = icmp ult i32 %i.bn, 41
  br i1 %i.br, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  store ptr %i.bs, ptr %i.c, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = getelementptr i8, ptr %i.e, i64 %i.bt
  %i.bv = add nuw nsw i32 %i.bn, 8
  store i32 %i.bv, ptr %4, align 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bw = phi ptr [ %i.bu, %bb.ab ], [ %i.bm, %bb.aa ]
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bx, ptr %i.by, align 16
  br label %.preheader.i

HeadMatchesArray.exit:                            ; preds = %.lr.ph.i, %bb.a
  %.010 = phi i1 [ false, %bb.a ], [ %i.k, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @create_command_generator(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @create_or_drop_command_generator(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @drop_command_generator(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @create_or_drop_command_generator(ptr noundef %0, i32 noundef %1, i32 noundef 2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_schema_query(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @completion_squery, align 8
  %i.b = load ptr, ptr @completion_charpp, align 8
  %.b = load i1, ptr @completion_verbatim, align 1
  %i.c = tail call fastcc ptr @_complete_from_query(ptr noundef null, ptr noundef %i.a, ptr noundef %i.b, i1 noundef zeroext %.b, ptr noundef %0, i32 noundef %1)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @alter_command_generator(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @create_or_drop_command_generator(ptr noundef %0, i32 noundef %1, i32 noundef 4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @TailMatchesImpl(i1 noundef zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 9) %3, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 11 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = icmp slt i32 %1, %3
  br i1 %i.b, label %TailMatchesArray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.promoted = load i32, ptr %4, align 16         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 16             ; 8 uses
  %.promoted15 = load ptr, ptr %i.c, align 8      ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.f = icmp ult i32 %.promoted, 41
  br i1 %i.f, label %bb.c, label %bb.d

.preheader.i:                                     ; preds = %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  call void @llvm.va_end.p0(ptr nonnull %4)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8
  %5 = trunc i64 %indvars.iv.i to i32
  %6 = xor i32 %5, -1
  %7 = add i32 %3, %6
  %8 = sext i32 %7 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call fastcc zeroext i1 @word_matches(ptr noundef %i.h, ptr noundef %i.j, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count
  %or.cond.not = select i1 %i.k, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %TailMatchesArray.exit, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %.promoted to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = add nuw nsw i32 %.promoted, 8            ; 2 uses
  store i32 %i.n, ptr %4, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.promoted15, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.promoted15, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %.promoted, %bb.d ] ; 4 uses
  %i.r = phi ptr [ %i.m, %bb.c ], [ %.promoted15, %bb.d ]
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.a, align 16
  %exitcond.not = icmp eq i32 %3, 1
  br i1 %exitcond.not, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i32 %i.q, 41
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  store ptr %i.u, ptr %i.c, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.q to i64
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %i.x = add nuw nsw i32 %i.q, 8                  ; 2 uses
  store i32 %i.x, ptr %4, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %i.p, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.z = phi i32 [ %i.x, %bb.h ], [ %i.q, %bb.g ] ; 4 uses
  %i.aa = phi ptr [ %i.w, %bb.h ], [ %i.p, %bb.g ]
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult i32 %i.z, 41
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  store ptr %i.ae, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = getelementptr i8, ptr %i.e, i64 %i.af
  %i.ah = add nuw nsw i32 %i.z, 8                 ; 2 uses
  store i32 %i.ah, ptr %4, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.y, %bb.l ], [ %i.ae, %bb.k ] ; 3 uses
  %i.aj = phi i32 [ %i.ah, %bb.l ], [ %i.z, %bb.k ] ; 4 uses
  %i.ak = phi ptr [ %i.ag, %bb.l ], [ %i.y, %bb.k ]
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.am, align 16
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ult i32 %i.aj, 41
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr i8, ptr %i.e, i64 %i.ap
  %i.ar = add nuw nsw i32 %i.aj, 8                ; 2 uses
  store i32 %i.ar, ptr %4, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = phi ptr [ %i.ai, %bb.p ], [ %i.ao, %bb.o ] ; 3 uses
  %i.at = phi i32 [ %i.ar, %bb.p ], [ %i.aj, %bb.o ] ; 4 uses
  %i.au = phi ptr [ %i.aq, %bb.p ], [ %i.ai, %bb.o ]
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.av, ptr %i.aw, align 8
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp ult i32 %i.at, 41
  br i1 %i.ax, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %i.bb = add nuw nsw i32 %i.at, 8                ; 2 uses
  store i32 %i.bb, ptr %4, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bc = phi ptr [ %i.as, %bb.t ], [ %i.ay, %bb.s ] ; 3 uses
  %i.bd = phi i32 [ %i.bb, %bb.t ], [ %i.at, %bb.s ] ; 4 uses
  %i.be = phi ptr [ %i.ba, %bb.t ], [ %i.as, %bb.s ]
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bf, ptr %i.bg, align 16
  %exitcond.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond.not.4, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp ult i32 %i.bd, 41
  br i1 %i.bh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bj
  %i.bl = add nuw nsw i32 %i.bd, 8                ; 2 uses
  store i32 %i.bl, ptr %4, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bm = phi ptr [ %i.bc, %bb.x ], [ %i.bi, %bb.w ] ; 3 uses
  %i.bn = phi i32 [ %i.bl, %bb.x ], [ %i.bd, %bb.w ] ; 4 uses
  %i.bo = phi ptr [ %i.bk, %bb.x ], [ %i.bc, %bb.w ]
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.bp, ptr %i.bq, align 8
  %exitcond.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond.not.5, label %.preheader.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = icmp ult i32 %i.bn, 41
  br i1 %i.br, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  store ptr %i.bs, ptr %i.c, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = getelementptr i8, ptr %i.e, i64 %i.bt
  %i.bv = add nuw nsw i32 %i.bn, 8                ; 2 uses
  store i32 %i.bv, ptr %4, align 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bw = phi ptr [ %i.bm, %bb.ab ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.bx = phi i32 [ %i.bv, %bb.ab ], [ %i.bn, %bb.aa ] ; 3 uses
  %i.by = phi ptr [ %i.bu, %bb.ab ], [ %i.bm, %bb.aa ]
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bz, ptr %i.ca, align 16
  %exitcond.not.6 = icmp eq i32 %3, 7
  br i1 %exitcond.not.6, label %.preheader.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp ult i32 %i.bx, 41
  br i1 %i.cb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.cc, ptr %i.c, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cd = zext nneg i32 %i.bx to i64
  %i.ce = getelementptr i8, ptr %i.e, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.bx, 8
  store i32 %i.cf, ptr %4, align 16
  br label %bb.ag

end_hunk_2
