Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tab-complete?download=true
inline.NumInlined: 136
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.2732 = private unnamed_addr constant [17 x i8] c"security_barrier\00", align 1
@.str.2733 = private unnamed_addr constant [17 x i8] c"security_invoker\00", align 1
@.str.2734 = private unnamed_addr constant [46 x i8] c"pg_catalog.pg_class c, pg_catalog.pg_policy p\00", align 1
@.str.2735 = private unnamed_addr constant [17 x i8] c"c.oid=p.polrelid\00", align 1
@.str.2736 = private unnamed_addr constant [10 x i8] c"p.polname\00", align 1
@Query_for_list_of_tables_for_policy = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2734, ptr @.str.2735, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 1, [7 x i8] zeroinitializer, ptr null, ptr @.str.2736, ptr null, ptr null }, align 8
@.str.2738 = private unnamed_addr constant [19 x i8] c"c.relkind IN ('g')\00", align 1
@.str.2739 = private unnamed_addr constant [34 x i8] c"pg_catalog.quote_ident(c.relname)\00", align 1
@Query_for_list_of_propgraphs = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2738, ptr @.str.2685, ptr @.str.2686, ptr @.str.2739, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2741 = private unnamed_addr constant [47 x i8] c"pg_catalog.pg_class c, pg_catalog.pg_rewrite r\00", align 1
@.str.2742 = private unnamed_addr constant [17 x i8] c"c.oid=r.ev_class\00", align 1
@.str.2743 = private unnamed_addr constant [11 x i8] c"r.rulename\00", align 1
@Query_for_list_of_tables_for_rule = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2741, ptr @.str.2742, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 1, [7 x i8] zeroinitializer, ptr null, ptr @.str.2743, ptr null, ptr null }, align 8
@.str.2745 = private unnamed_addr constant [47 x i8] c"pg_catalog.pg_class c, pg_catalog.pg_trigger t\00", align 1
@.str.2746 = private unnamed_addr constant [16 x i8] c"c.oid=t.tgrelid\00", align 1
@.str.2747 = private unnamed_addr constant [9 x i8] c"t.tgname\00", align 1
@Query_for_list_of_tables_for_trigger = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2745, ptr @.str.2746, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 1, [7 x i8] zeroinitializer, ptr null, ptr @.str.2747, ptr null, ptr null }, align 8
@.str.2749 = private unnamed_addr constant [21 x i8] c"pg_catalog.pg_type t\00", align 1
@.str.2750 = private unnamed_addr constant [124 x i8] c"(t.typrelid = 0  OR (SELECT c.relkind = 'c'     FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)) AND t.typname !~ '^_'\00", align 1
@Keywords_for_list_of_datatypes = internal constant [8 x ptr] [ptr @.str.1693, ptr @.str.2752, ptr @.str.2753, ptr @.str.2754, ptr @.str.1692, ptr @.str.2755, ptr @.str.1691, ptr null], align 16
@Query_for_list_of_datatypes = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2749, ptr @.str.2750, ptr @.str.2729, ptr @.str.2730, ptr @.str.2728, i8 0, [7 x i8] zeroinitializer, ptr @Keywords_for_list_of_datatypes, ptr null, ptr null, ptr null }, align 8
@.str.2752 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.2753 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.2754 = private unnamed_addr constant [17 x i8] c"double precision\00", align 1
@.str.2755 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.2756 = private unnamed_addr constant [70 x i8] c"pg_catalog.pg_class c1, pg_catalog.pg_class c2, pg_catalog.pg_index i\00", align 1
@.str.2757 = private unnamed_addr constant [60 x i8] c"c1.oid=i.indrelid and i.indexrelid=c2.oid and i.indisunique\00", align 1
@.str.2758 = private unnamed_addr constant [11 x i8] c"c2.relname\00", align 1
@.str.2759 = private unnamed_addr constant [11 x i8] c"c1.relname\00", align 1
@.str.2760 = private unnamed_addr constant [39 x i8] c"pg_catalog.pg_table_is_visible(c1.oid)\00", align 1
@.str.2761 = private unnamed_addr constant [16 x i8] c"c1.relnamespace\00", align 1
@Query_for_unique_index_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2756, ptr @.str.2757, ptr null, ptr null, ptr @.str.2758, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2763 = private unnamed_addr constant [48 x i8] c"pg_catalog.pg_rewrite r, pg_catalog.pg_class c1\00", align 1
@.str.2764 = private unnamed_addr constant [18 x i8] c"r.ev_class=c1.oid\00", align 1
@Query_for_rule_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2763, ptr @.str.2764, ptr null, ptr null, ptr @.str.2743, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2766 = private unnamed_addr constant [48 x i8] c"pg_catalog.pg_trigger t, pg_catalog.pg_class c1\00", align 1
@.str.2767 = private unnamed_addr constant [40 x i8] c"t.tgrelid=c1.oid and not t.tgisinternal\00", align 1
@Query_for_trigger_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2766, ptr @.str.2767, ptr null, ptr null, ptr @.str.2747, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2769 = private unnamed_addr constant [53 x i8] c"pg_catalog.pg_constraint con, pg_catalog.pg_class c1\00", align 1
@.str.2770 = private unnamed_addr constant [20 x i8] c"con.conrelid=c1.oid\00", align 1
@Query_for_constraint_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2769, ptr @.str.2770, ptr null, ptr null, ptr @.str.2727, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2772 = private unnamed_addr constant [45 x i8] c"con.conrelid=c1.oid and not con.convalidated\00", align 1
@Query_for_constraint_of_table_not_validated = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2769, ptr @.str.2772, ptr null, ptr null, ptr @.str.2727, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2774 = private unnamed_addr constant [42 x i8] c"c1.oid=i.indrelid and i.indexrelid=c2.oid\00", align 1
@Query_for_index_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2756, ptr @.str.2774, ptr null, ptr null, ptr @.str.2758, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2776 = private unnamed_addr constant [32 x i8] c"autovacuum_analyze_scale_factor\00", align 1
@.str.2777 = private unnamed_addr constant [29 x i8] c"autovacuum_analyze_threshold\00", align 1
@.str.2778 = private unnamed_addr constant [19 x i8] c"autovacuum_enabled\00", align 1
@.str.2779 = private unnamed_addr constant [26 x i8] c"autovacuum_freeze_max_age\00", align 1
@.str.2780 = private unnamed_addr constant [26 x i8] c"autovacuum_freeze_min_age\00", align 1
@.str.2781 = private unnamed_addr constant [28 x i8] c"autovacuum_freeze_table_age\00", align 1
@.str.2782 = private unnamed_addr constant [36 x i8] c"autovacuum_multixact_freeze_max_age\00", align 1
@.str.2783 = private unnamed_addr constant [36 x i8] c"autovacuum_multixact_freeze_min_age\00", align 1
@.str.2784 = private unnamed_addr constant [38 x i8] c"autovacuum_multixact_freeze_table_age\00", align 1
@.str.2785 = private unnamed_addr constant [28 x i8] c"autovacuum_parallel_workers\00", align 1
@.str.2786 = private unnamed_addr constant [29 x i8] c"autovacuum_vacuum_cost_delay\00", align 1
@.str.2787 = private unnamed_addr constant [29 x i8] c"autovacuum_vacuum_cost_limit\00", align 1
@.str.2788 = private unnamed_addr constant [38 x i8] c"autovacuum_vacuum_insert_scale_factor\00", align 1
@.str.2789 = private unnamed_addr constant [35 x i8] c"autovacuum_vacuum_insert_threshold\00", align 1
@.str.2790 = private unnamed_addr constant [32 x i8] c"autovacuum_vacuum_max_threshold\00", align 1
@.str.2791 = private unnamed_addr constant [31 x i8] c"autovacuum_vacuum_scale_factor\00", align 1
@.str.2792 = private unnamed_addr constant [28 x i8] c"autovacuum_vacuum_threshold\00", align 1
@.str.2793 = private unnamed_addr constant [28 x i8] c"log_autovacuum_min_duration\00", align 1
@.str.2794 = private unnamed_addr constant [29 x i8] c"log_autoanalyze_min_duration\00", align 1
@.str.2795 = private unnamed_addr constant [17 x i8] c"parallel_workers\00", align 1
@.str.2796 = private unnamed_addr constant [25 x i8] c"toast.autovacuum_enabled\00", align 1
@.str.2797 = private unnamed_addr constant [32 x i8] c"toast.autovacuum_freeze_max_age\00", align 1
@.str.2798 = private unnamed_addr constant [32 x i8] c"toast.autovacuum_freeze_min_age\00", align 1
@.str.2799 = private unnamed_addr constant [34 x i8] c"toast.autovacuum_freeze_table_age\00", align 1
@.str.2800 = private unnamed_addr constant [42 x i8] c"toast.autovacuum_multixact_freeze_max_age\00", align 1
@.str.2801 = private unnamed_addr constant [42 x i8] c"toast.autovacuum_multixact_freeze_min_age\00", align 1
@.str.2802 = private unnamed_addr constant [44 x i8] c"toast.autovacuum_multixact_freeze_table_age\00", align 1
@.str.2803 = private unnamed_addr constant [35 x i8] c"toast.autovacuum_vacuum_cost_delay\00", align 1
@.str.2804 = private unnamed_addr constant [35 x i8] c"toast.autovacuum_vacuum_cost_limit\00", align 1
@.str.2805 = private unnamed_addr constant [44 x i8] c"toast.autovacuum_vacuum_insert_scale_factor\00", align 1
@.str.2806 = private unnamed_addr constant [41 x i8] c"toast.autovacuum_vacuum_insert_threshold\00", align 1
@.str.2807 = private unnamed_addr constant [38 x i8] c"toast.autovacuum_vacuum_max_threshold\00", align 1
@.str.2808 = private unnamed_addr constant [37 x i8] c"toast.autovacuum_vacuum_scale_factor\00", align 1
@.str.2809 = private unnamed_addr constant [34 x i8] c"toast.autovacuum_vacuum_threshold\00", align 1
@.str.2810 = private unnamed_addr constant [34 x i8] c"toast.log_autovacuum_min_duration\00", align 1
@.str.2811 = private unnamed_addr constant [27 x i8] c"toast.vacuum_index_cleanup\00", align 1
@.str.2812 = private unnamed_addr constant [43 x i8] c"toast.vacuum_max_eager_freeze_failure_rate\00", align 1
@.str.2813 = private unnamed_addr constant [22 x i8] c"toast.vacuum_truncate\00", align 1
@.str.2814 = private unnamed_addr constant [19 x i8] c"toast_tuple_target\00", align 1
@.str.2815 = private unnamed_addr constant [19 x i8] c"user_catalog_table\00", align 1
@.str.2816 = private unnamed_addr constant [21 x i8] c"vacuum_index_cleanup\00", align 1
@.str.2817 = private unnamed_addr constant [37 x i8] c"vacuum_max_eager_freeze_failure_rate\00", align 1
@.str.2818 = private unnamed_addr constant [16 x i8] c"vacuum_truncate\00", align 1
@.str.2819 = private unnamed_addr constant [73 x i8] c"pg_catalog.pg_class c1, pg_catalog.pg_class c2, pg_catalog.pg_inherits i\00", align 1
@.str.2820 = private unnamed_addr constant [63 x i8] c"c1.oid=i.inhparent and i.inhrelid=c2.oid and c2.relispartition\00", align 1
@.str.2821 = private unnamed_addr constant [39 x i8] c"pg_catalog.pg_table_is_visible(c2.oid)\00", align 1
@.str.2822 = private unnamed_addr constant [16 x i8] c"c2.relnamespace\00", align 1
@Query_for_partition_of_table = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2819, ptr @.str.2820, ptr @.str.2821, ptr @.str.2822, ptr @.str.2758, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2759, ptr @.str.2760, ptr @.str.2761 }, align 8
@.str.2824 = private unnamed_addr constant [99 x i8] c"(SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid) AND t.typname !~ '^_'\00", align 1
@Query_for_list_of_composite_datatypes = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2749, ptr @.str.2824, ptr @.str.2729, ptr @.str.2730, ptr @.str.2728, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2826 = private unnamed_addr constant [43 x i8] c"pg_catalog.pg_enum e, pg_catalog.pg_type t\00", align 1
@.str.2827 = private unnamed_addr constant [20 x i8] c"t.oid = e.enumtypid\00", align 1
@.str.2828 = private unnamed_addr constant [36 x i8] c"pg_catalog.quote_literal(enumlabel)\00", align 1
@Query_for_list_of_enum_values_quoted = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2826, ptr @.str.2827, ptr null, ptr null, ptr @.str.2828, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2728, ptr @.str.2729, ptr @.str.2730 }, align 8
@.str.2830 = private unnamed_addr constant [12 x i8] c"e.enumlabel\00", align 1
@Query_for_list_of_enum_values_unquoted = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2826, ptr @.str.2827, ptr null, ptr null, ptr @.str.2830, i8 0, [7 x i8] zeroinitializer, ptr null, ptr @.str.2728, ptr @.str.2729, ptr @.str.2730 }, align 8
@.str.2832 = private unnamed_addr constant [34 x i8] c"c.relkind IN ('r', 'p', 'm', 'f')\00", align 1
@Query_for_list_of_analyzables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2832, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2834 = private unnamed_addr constant [16 x i8] c"p.prokind = 'p'\00", align 1
@Query_for_list_of_procedures = internal constant [2 x { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 110000, [4 x i8] zeroinitializer, ptr @.str.2709, ptr @.str.2834, ptr @.str.2712, ptr @.str.2713, ptr @.str.2711, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 16
@.str.2836 = private unnamed_addr constant [29 x i8] c"c.relkind IN ('r', 'p', 'm')\00", align 1
@Query_for_list_of_clusterables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2836, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2838 = private unnamed_addr constant [52 x i8] c"pg_catalog.pg_class c, pg_catalog.pg_constraint con\00", align 1
@.str.2839 = private unnamed_addr constant [47 x i8] c"c.oid=con.conrelid and c.relkind IN ('r', 'p')\00", align 1
@Query_for_list_of_tables_for_constraint = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2838, ptr @.str.2839, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 1, [7 x i8] zeroinitializer, ptr null, ptr @.str.2727, ptr null, ptr null }, align 8
@.str.2841 = private unnamed_addr constant [16 x i8] c"t.typtype = 'd'\00", align 1
@Query_for_list_of_domains = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2749, ptr @.str.2841, ptr @.str.2729, ptr @.str.2730, ptr @.str.2728, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2843 = private unnamed_addr constant [19 x i8] c"c.relkind IN ('f')\00", align 1
@Query_for_list_of_foreign_tables = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2683, ptr @.str.2843, ptr @.str.2685, ptr @.str.2686, ptr @.str.2687, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2845 = private unnamed_addr constant [26 x i8] c"pg_catalog.pg_ts_config c\00", align 1
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
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 368), align 8
  store ptr %1, ptr @rl_readline_name, align 8
  store ptr @psql_completion, ptr @rl_attempted_completion_function, align 8
  store ptr @quote_file_name, ptr @rl_filename_quoting_function, align 8
  store ptr @dequote_file_name, ptr @rl_filename_dequoting_function, align 8
  store ptr @.str, ptr @rl_basic_word_break_characters, align 8
  store ptr @.str.1, ptr @rl_completer_quote_characters, align 8
  %2 = tail call ptr @pg_malloc(i64 noundef 256) #10 ; 7 uses
  br label %bb.a

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %4, align 1
  store ptr %2, ptr @rl_filename_quote_characters, align 8
  store i1 true, ptr @completion_max_records, align 4
  ret void

bb.a:                                             ; preds = %bb.a, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.4, %bb.a ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %5 = trunc nuw i64 %indvars.iv.next to i8
  store i8 %5, ptr %i.a, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %6 = trunc nuw i64 %indvars.iv.next.1 to i8
  store i8 %6, ptr %i.b, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.1
  %7 = trunc nuw i64 %indvars.iv.next.2 to i8
  store i8 %7, ptr %i.c, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.2
  %8 = trunc nuw i64 %indvars.iv.next.3 to i8
  store i8 %8, ptr %i.d, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.3
  %9 = trunc nuw i64 %indvars.iv.next.4 to i8
  store i8 %9, ptr %i.e, align 1
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 255
  br i1 %exitcond.not.4, label %3, label %bb.a, !llvm.loop !14
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
  br i1 %i.cn, label %bb.z, label %.preheader151

bb.z:                                             ; preds = %bb.y
  store i1 false, ptr @completion_case_sensitive, align 1
  store ptr @sql_commands, ptr @completion_charpp, align 8
  br label %.thread.sink.split

.preheader151:                                    ; preds = %bb.y, %.critedge.thread
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

.split:                                           ; preds = %.preheader151
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call fastcc zeroext i1 @MatchesArray(i1 noundef zeroext true, i32 noundef %.072101.i, ptr noundef %i.ag, i32 noundef %i.cs, ptr noundef %i.cu)
  br i1 %i.cv, label %.critedge, label %.critedge.thread

bb.aa:                                            ; preds = %.preheader151
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
  %i.dd = trunc i64 %indvars.iv.i96 to i32
  %i.de = xor i32 %i.dd, -1
  %i.df = add i32 %.072101.i, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.dc, ptr noundef %i.di, i1 noundef zeroext false)
  br i1 %i.dj, label %bb.ab, label %.critedge.thread

bb.ac:                                            ; preds = %.preheader151
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = icmp slt i32 %.072101.i, %i.dl
  br i1 %i.do, label %.critedge.thread, label %.lr.ph.preheader.i99

.lr.ph.preheader.i99:                             ; preds = %bb.ac
  %wide.trip.count.i100 = zext nneg i32 %i.dl to i64
  br label %.lr.ph.i101

bb.ad:                                            ; preds = %.lr.ph.i101
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %wide.trip.count.i100
  br i1 %exitcond.not.i105, label %.critedge, label %.lr.ph.i101, !llvm.loop !0

.lr.ph.i101:                                      ; preds = %bb.ad, %.lr.ph.preheader.i99
  %indvars.iv.i102 = phi i64 [ 0, %.lr.ph.preheader.i99 ], [ %indvars.iv.next.i104, %bb.ad ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i102
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = trunc i64 %indvars.iv.i102 to i32
  %i.ds = xor i32 %i.dr, -1
  %i.dt = add i32 %.072101.i, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.dq, ptr noundef %i.dw, i1 noundef zeroext true)
  br i1 %i.dx, label %bb.ad, label %.critedge.thread

bb.ae:                                            ; preds = %.preheader151
  %i.dy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dz = load i32, ptr %i.dy, align 8            ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = icmp slt i32 %.072101.i, %i.dz
  br i1 %i.ec, label %.critedge.thread, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.ae
  %wide.trip.count.i109 = zext nneg i32 %i.dz to i64
  br label %.lr.ph.i110

bb.af:                                            ; preds = %.lr.ph.i110
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i109
  br i1 %exitcond.not.i114, label %.critedge, label %.lr.ph.i110, !llvm.loop !1

.lr.ph.i110:                                      ; preds = %bb.af, %.lr.ph.preheader.i108
  %indvars.iv.i111 = phi i64 [ 0, %.lr.ph.preheader.i108 ], [ %indvars.iv.next.i113, %bb.af ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i111
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = trunc i64 %indvars.iv.i111 to i32
  %i.eg = xor i32 %i.ef, -1
  %i.eh = add i32 %i.dz, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.ee, ptr noundef %i.ek, i1 noundef zeroext false)
  br i1 %i.el, label %bb.af, label %.critedge.thread

bb.ag:                                            ; preds = %.preheader151
  %i.em = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.en = load i32, ptr %i.em, align 8            ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp slt i32 %.072101.i, %i.en
  br i1 %i.eq, label %.critedge.thread, label %.lr.ph.preheader.i116

.lr.ph.preheader.i116:                            ; preds = %bb.ag
  %wide.trip.count.i117 = zext nneg i32 %i.en to i64
  br label %.lr.ph.i118

bb.ah:                                            ; preds = %.lr.ph.i118
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i117
  br i1 %exitcond.not.i122, label %.critedge, label %.lr.ph.i118, !llvm.loop !1

.lr.ph.i118:                                      ; preds = %bb.ah, %.lr.ph.preheader.i116
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next.i121, %bb.ah ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i119
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = trunc i64 %indvars.iv.i119 to i32
  %i.eu = xor i32 %i.et, -1
  %i.ev = add i32 %i.en, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.es, ptr noundef %i.ey, i1 noundef zeroext true)
  br i1 %i.ez, label %bb.ah, label %.critedge.thread

HeadMatchesArray.exit:                            ; preds = %.preheader151
  %i.fa = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call fastcc zeroext i1 @MatchesArray(i1 noundef zeroext false, i32 noundef %.072101.i, ptr noundef %i.ag, i32 noundef %i.fb, ptr noundef %i.fd)
  br i1 %i.fe, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %HeadMatchesArray.exit, %.split
  %i.ff = load i32, ptr %i.co, align 8
  %i.fg = tail call fastcc ptr @match_previous_words(i32 noundef %i.ff, ptr noundef nonnull %i.f, i32 noundef %1, ptr noundef %i.ag, i32 noundef %.072101.i) ; 2 uses
  %.not88 = icmp eq ptr %i.fg, null
  br i1 %.not88, label %.critedge.thread, label %.thread.thread

.critedge.thread:                                 ; preds = %.lr.ph.i118, %.lr.ph.i110, %.lr.ph.i101, %.lr.ph.i95, %bb.ag, %bb.ac, %bb.ae, %bb.aa, %.split, %HeadMatchesArray.exit, %.preheader151, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 981
  br i1 %exitcond.not, label %.loopexit, label %.preheader151, !llvm.loop !18

.loopexit:                                        ; preds = %.critedge.thread, %bb.u, %bb.x, %bb.w, %bb.t, %bb.r
  %.4 = phi ptr [ %i.cd, %bb.r ], [ %i.cg, %bb.t ], [ %i.ch, %bb.u ], [ %i.cl, %bb.w ], [ %i.cm, %bb.x ], [ null, %.critedge.thread ] ; 2 uses
  %i.fh = icmp eq ptr %.4, null
  %i.fi = icmp sgt i32 %.072101.i, 0
  %or.cond = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.ao
  %i.fj = phi ptr [ %i.ga, %bb.ao ], [ @.str.1586, %.loopexit ]
  %.0164 = phi ptr [ %i.fz, %bb.ao ], [ @words_after_create, %.loopexit ] ; 7 uses
  %i.fk = load ptr, ptr %i.ag, align 8
  %i.fl = tail call i32 @pg_strcasecmp(ptr noundef %i.fk, ptr noundef nonnull %i.fj) #10
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.preheader
  %i.fn = getelementptr inbounds nuw i8, ptr %.0164, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not90 = icmp eq ptr %i.fo, null
  br i1 %.not90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.fo, ptr @completion_charp, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  store ptr %i.fq, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %.0164, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not91 = icmp eq ptr %i.fs, null
  br i1 %.not91, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.fs, ptr @completion_vquery, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8
  store ptr %i.fu, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %.0164, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not92 = icmp eq ptr %i.fw, null
  br i1 %.not92, label %.thread142, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.fw, ptr @completion_squery, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8
  store ptr %i.fy, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  br label %.thread.sink.split

bb.ao:                                            ; preds = %.preheader
  %i.fz = getelementptr inbounds nuw i8, ptr %.0164, i64 48 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not89 = icmp eq ptr %i.ga, null
  br i1 %.not89, label %.thread142, label %.preheader, !llvm.loop !19

.thread.sink.split:                               ; preds = %bb.aj, %bb.an, %bb.al, %bb.z
  %complete_from_list.sink = phi ptr [ @complete_from_list, %bb.z ], [ @complete_from_versioned_query, %bb.al ], [ @complete_from_versioned_schema_query, %bb.an ], [ @complete_from_query, %bb.aj ]
  %i.gb = tail call ptr @rl_completion_matches(ptr noundef nonnull %i.f, ptr noundef nonnull %complete_from_list.sink) #10
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  %.6 = phi ptr [ %.4, %.loopexit ], [ %i.gb, %.thread.sink.split ] ; 2 uses
  %i.gc = icmp eq ptr %.6, null
  br i1 %i.gc, label %.thread142, label %.thread.thread

.thread142:                                       ; preds = %bb.ao, %bb.am, %.thread
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @.str.128, ptr @completion_charp, align 8
  %i.gd = tail call ptr @rl_completion_matches(ptr noundef nonnull %i.f, ptr noundef nonnull @complete_from_const) #10
  store i32 0, ptr @rl_completion_append_character, align 4
  store i32 1, ptr @rl_completion_suppress_quote, align 4
  br label %.thread.thread

.thread.thread:                                   ; preds = %.critedge, %.thread142, %.thread
  %.7 = phi ptr [ %i.gd, %.thread142 ], [ %.6, %.thread ], [ %i.fg, %.critedge ]
  tail call void @free(ptr noundef %i.ag) #10
  tail call void @free(ptr noundef %i.aj) #10
  tail call void @free(ptr noundef %i.f) #10
  %i.ge = load ptr, ptr @completion_ref_object, align 8
  tail call void @free(ptr noundef %i.ge) #10
  store ptr null, ptr @completion_ref_object, align 8
  %i.gf = load ptr, ptr @completion_ref_schema, align 8
  tail call void @free(ptr noundef %i.gf) #10
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
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.c = add i64 %i.b, 2
  %i.d = tail call ptr @pg_malloc(i64 noundef %i.c) #10 ; 4 uses
  store i8 39, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %0) #10 ; 0 uses
  %i.g = load ptr, ptr @completion_charp, align 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.j = tail call ptr @strtokx(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull @.str.1, i8 noundef signext %i.h, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %i.i) #10
  tail call void @free(ptr noundef %i.d) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @completion_charp, align 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.n = tail call ptr @strtokx(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull @.str.1, i8 noundef signext %i.l, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ]  ; 2 uses
  %.not = icmp eq ptr %.0, null
  %spec.select = select i1 %.not, ptr %0, ptr %.0
  %i.o = tail call ptr @pg_strdup(ptr noundef %spec.select) #10
  ret ptr %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @pnstrdup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rl_completion_matches(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_list(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.m, %bb.a
  %.tr16 = phi i32 [ %1, %bb.a ], [ %i.bq, %bb.m ] ; 2 uses
  %i.a = icmp eq i32 %.tr16, 0
  br i1 %i.a, label %bb.b, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse
  %.pre = load i32, ptr @complete_from_list.list_index, align 4
  %.pre34.pre = load i8, ptr @complete_from_list.casesensitive, align 1, !range !9
  br label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr @complete_from_list.string_length, align 4
  %.b15 = load i1, ptr @completion_case_sensitive, align 1
  %i.d = zext i1 %.b15 to i8                      ; 2 uses
  store i8 %i.d, ptr @complete_from_list.casesensitive, align 1
  store i32 0, ptr @complete_from_list.matches, align 4
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse._crit_edge, %bb.b
  %.pre31 = phi i8 [ %.pre34.pre, %tailrecurse._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = phi i32 [ %.pre, %tailrecurse._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr @completion_charpp, align 8 ; 3 uses
  %i.g = add i32 %i.e, 1                          ; 3 uses
  store i32 %i.g, ptr @complete_from_list.list_index, align 4
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = trunc nuw i8 %.pre31 to i1
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = load i32, ptr @complete_from_list.string_length, align 4
  %i.m = sext i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %.thread.us, %.lr.ph.split.us
  %i.n = phi i32 [ %i.g, %.lr.ph.split.us ], [ %i.r, %.thread.us ] ; 2 uses
  %i.o = phi ptr [ %i.j, %.lr.ph.split.us ], [ %i.u, %.thread.us ] ; 2 uses
  %i.p = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %i.o, i64 noundef %i.m) #12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.split.us, label %.thread.us

.thread.us:                                       ; preds = %bb.d
  %i.r = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.r, ptr @complete_from_list.list_index, align 4
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.u, null
  br i1 %.not.us, label %._crit_edge, label %bb.d, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %i.v = phi i8 [ %i.be, %.thread ], [ 0, %.lr.ph ]
  %i.w = phi i32 [ %i.bi, %.thread ], [ %i.g, %.lr.ph ]
  %i.x = phi ptr [ %i.bg, %.thread ], [ %i.f, %.lr.ph ]
  %i.y = phi i8 [ %i.bh, %.thread ], [ 0, %.lr.ph ]
  %i.z = phi ptr [ %i.bl, %.thread ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.aa = trunc nuw i8 %i.y to i1
  %i.ab = load i32, ptr @complete_from_list.string_length, align 4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.ad = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %i.z, i64 noundef %i.ac) #12
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split.us, label %.thread

.split.us:                                        ; preds = %bb.e, %bb.d
  %.us-phi = phi ptr [ %i.o, %bb.d ], [ %i.z, %bb.e ]
  %i.af = load i32, ptr @complete_from_list.matches, align 4
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @complete_from_list.matches, align 4
  br label %pg_strdup_keyword_case.exit.sink.split

bb.f:                                             ; preds = %.lr.ph.split
  %i.ah = tail call i32 @pg_strncasecmp(ptr noundef %0, ptr noundef nonnull %i.z, i64 noundef %i.ac) #10
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.f
  %.pre30 = load i8, ptr @complete_from_list.casesensitive, align 1, !range !9 ; 2 uses
  %.pre32 = load ptr, ptr @completion_charpp, align 8
  %.pre33 = load i32, ptr @complete_from_list.list_index, align 4
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %.b = load i1, ptr @completion_case_sensitive, align 1
  br i1 %.b, label %pg_strdup_keyword_case.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val = load i8, ptr %0, align 1
  %i.aj = tail call ptr @pg_strdup(ptr noundef nonnull %i.z) #10 ; 8 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 3
  br i1 %i.al, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond.i = icmp ult i32 %i.ak, 2
  br i1 %or.cond.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.am = tail call ptr @__ctype_b_loc() #11
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = zext i8 %.val to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.ar = and i16 %i.aq, 512
  %.not.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = icmp eq i32 %i.ak, 1
  %i.at = and i16 %i.aq, 1024
  %.not18.i = icmp eq i16 %i.at, 0
  %or.cond11.i = and i1 %i.as, %.not18.i
  br i1 %or.cond11.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.au = load i8, ptr %i.aj, align 1             ; 2 uses
  %.not204.i = icmp eq i8 %i.au, 0
  br i1 %.not204.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.l, %.lr.ph6.i
  %i.av = phi i8 [ %i.ay, %.lr.ph6.i ], [ %i.au, %bb.l ]
  %.05.i = phi ptr [ %i.ax, %.lr.ph6.i ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aw = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.av) #10
  store i8 %i.aw, ptr %.05.i, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %.not20.i = icmp eq i8 %i.ay, 0
  br i1 %.not20.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i, !llvm.loop !2

.thread.i:                                        ; preds = %bb.k, %bb.i
  %i.az = load i8, ptr %i.aj, align 1             ; 2 uses
  %.not192.i = icmp eq i8 %i.az, 0
  br i1 %.not192.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
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
  %i.k = trunc i64 %indvars.iv.i to i32
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %3, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.j, ptr noundef %i.p, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %HeadMatchesArray.exit, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = icmp slt i32 %1, %i.s
  br i1 %i.t, label %HeadMatchesArray.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %bb.d
  %i.u = icmp eq i64 %indvars.iv, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i41

bb.e:                                             ; preds = %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %indvars.iv
  br i1 %exitcond.not.i45, label %.loopexit, label %.lr.ph.i41, !llvm.loop !0

.lr.ph.i41:                                       ; preds = %.preheader.i38, %bb.e
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i44, %bb.e ], [ 0, %.preheader.i38 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i42
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = trunc i64 %indvars.iv.i42 to i32
  %i.y = xor i32 %i.x, -1
  %i.z = add i32 %1, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.w, ptr noundef %i.ac, i1 noundef zeroext %0)
  br i1 %i.ad, label %bb.e, label %HeadMatchesArray.exit

.loopexit:                                        ; preds = %bb.e, %.preheader.i38
  %i.ae = xor i32 %i.s, -1
  %i.af = add i32 %3, %i.ae                       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = icmp slt i32 %1, %i.af
  br i1 %i.ah, label %HeadMatchesArray.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %.loopexit
  %i.ai = icmp slt i32 %i.af, 1
  br i1 %i.ai, label %HeadMatchesArray.exit, label %.lr.ph.preheader.i48

.lr.ph.preheader.i48:                             ; preds = %.preheader.i47
  %wide.trip.count.i49 = zext nneg i32 %i.af to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i48
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %indvars.iv.next.i53, %.lr.ph.i50 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i51
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = trunc i64 %indvars.iv.i51 to i32
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %i.af, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call fastcc zeroext i1 @word_matches(ptr noundef %i.ak, ptr noundef %i.aq, i1 noundef zeroext %0) ; 2 uses
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp ne i64 %indvars.iv.next.i53, %wide.trip.count.i49
  %or.cond89.not = select i1 %i.ar, i1 %exitcond.not.i54, i1 false
  br i1 %or.cond89.not, label %.lr.ph.i50, label %HeadMatchesArray.exit, !llvm.loop !1

HeadMatchesArray.exit:                            ; preds = %.lr.ph.i41, %.lr.ph.i50, %.lr.ph.i, %.preheader.i47, %.preheader.i, %.loopexit, %bb.d, %.thread58, %bb.a
  %.033 = phi i1 [ %i.q, %.lr.ph.i ], [ false, %bb.a ], [ true, %.preheader.i ], [ false, %.thread58 ], [ true, %.preheader.i47 ], [ false, %bb.d ], [ false, %.loopexit ], [ %i.ar, %.lr.ph.i50 ], [ false, %.lr.ph.i41 ]
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
end_hunk_0
begin_hunk_1_@match_previous_words:bb.a
  store ptr @.str.1476, ptr @completion_charp, align 8
  store ptr null, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  %i.bco = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_query) #10
  br label %ends_with.exit1273.thread

bb.als:                                           ; preds = %bb.a
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2602, ptr @completion_charpp, align 8
  %i.bcp = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.alt:                                           ; preds = %bb.a
  %i.bcq = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2612)
  br i1 %i.bcq, label %bb.alu, label %bb.alv

bb.alu:                                           ; preds = %bb.alt
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2627, ptr @completion_charpp, align 8
  %i.bcr = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.alv:                                           ; preds = %bb.alt
  %i.bcs = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2626)
  br i1 %i.bcs, label %bb.alw, label %bb.alx

bb.alw:                                           ; preds = %bb.alv
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2636, ptr @completion_charpp, align 8
  %i.bct = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.alx:                                           ; preds = %bb.alv
  %i.bcu = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2613)
  br i1 %i.bcu, label %bb.aly, label %bb.alz

bb.aly:                                           ; preds = %bb.alx
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2640, ptr @completion_charpp, align 8
  %i.bcv = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.alz:                                           ; preds = %bb.alx
  %i.bcw = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2616)
  br i1 %i.bcw, label %bb.ama, label %bb.amb

bb.ama:                                           ; preds = %bb.alz
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2644, ptr @completion_charpp, align 8
  %i.bcx = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amb:                                           ; preds = %bb.alz
  %i.bcy = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2646)
  br i1 %i.bcy, label %bb.amc, label %ends_with.exit1273.thread

bb.amc:                                           ; preds = %bb.amb
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2647, ptr @completion_charpp, align 8
  %i.bcz = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amd:                                           ; preds = %bb.a
  %i.bda = tail call fastcc ptr @complete_from_variables(ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.128, i1 noundef zeroext true)
  br label %ends_with.exit1273.thread

bb.ame:                                           ; preds = %bb.a
  %i.bdb = tail call fastcc ptr @complete_from_variables(ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.128, i1 noundef zeroext false)
  br label %ends_with.exit1273.thread

bb.amf:                                           ; preds = %bb.a
  %i.bdc = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2650)
  br i1 %i.bdc, label %bb.amg, label %bb.amh

bb.amg:                                           ; preds = %bb.amf
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2651, ptr @completion_charpp, align 8
  %i.bdd = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amh:                                           ; preds = %bb.amf
  %i.bde = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2652)
  br i1 %i.bde, label %bb.ami, label %bb.amj

bb.ami:                                           ; preds = %bb.amh
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2653, ptr @completion_charpp, align 8
  %i.bdf = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amj:                                           ; preds = %bb.amh
  %i.bdg = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2658)
  br i1 %i.bdg, label %bb.amk, label %bb.aml

bb.amk:                                           ; preds = %bb.amj
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2659, ptr @completion_charpp, align 8
  %i.bdh = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.aml:                                           ; preds = %bb.amj
  %i.bdi = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2664)
  br i1 %i.bdi, label %bb.amm, label %bb.amn

bb.amm:                                           ; preds = %bb.aml
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2665, ptr @completion_charpp, align 8
  %i.bdj = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amn:                                           ; preds = %bb.aml
  %i.bdk = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2667)
  br i1 %i.bdk, label %bb.amo, label %bb.amp

bb.amo:                                           ; preds = %bb.amn
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2668, ptr @completion_charpp, align 8
  %i.bdl = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amp:                                           ; preds = %bb.amn
  %i.bdm = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2672)
  br i1 %i.bdm, label %bb.amq, label %bb.amr

bb.amq:                                           ; preds = %bb.amp
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2673, ptr @completion_charpp, align 8
  %i.bdn = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amr:                                           ; preds = %bb.amp
  %i.bdo = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2675)
  br i1 %i.bdo, label %bb.ams, label %bb.amt

bb.ams:                                           ; preds = %bb.amr
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2676, ptr @completion_charpp, align 8
  %i.bdp = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amt:                                           ; preds = %bb.amr
  %i.bdq = tail call zeroext i1 (i1, i32, ptr, i32, ...) @TailMatchesImpl(i1 noundef zeroext true, i32 noundef %4, ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2678)
  br i1 %i.bdq, label %bb.amu, label %ends_with.exit1273.thread

bb.amu:                                           ; preds = %bb.amt
  store i1 true, ptr @completion_case_sensitive, align 1
  store ptr @match_previous_words.list.2679, ptr @completion_charpp, align 8
  %i.bdr = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_list) #10
  br label %ends_with.exit1273.thread

bb.amv:                                           ; preds = %bb.a
  store ptr @Query_for_list_of_routines, ptr @completion_squery, align 8
  store ptr null, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  %i.bds = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_schema_query) #10
  br label %ends_with.exit1273.thread

bb.amw:                                           ; preds = %bb.a
  store ptr @Query_for_list_of_views, ptr @completion_squery, align 8
  store ptr null, ptr @completion_charpp, align 8
  store i1 false, ptr @completion_verbatim, align 1
  %i.bdt = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_schema_query) #10
  br label %ends_with.exit1273.thread

bb.amx:                                           ; preds = %bb.a
  store ptr @.str.2682, ptr @completion_charp, align 8
  store ptr null, ptr @completion_charpp, align 8
  store i8 0, ptr @completion_force_quote, align 1
  %i.bdu = tail call ptr @rl_completion_matches(ptr noundef %1, ptr noundef nonnull @complete_from_files) #10
  br label %ends_with.exit1273.thread

ends_with.exit1273.thread:                        ; preds = %ends_with.exit1287, %bb.abr, %bb.vn, %bb.vh, %bb.pf, %bb.kc, %bb.ap, %bb.ab, %bb.afy, %bb.age, %bb.a, %bb.amg, %bb.amk, %bb.amo, %bb.ams, %bb.amu, %bb.amt, %bb.amq, %bb.amm, %bb.ami, %bb.alu, %bb.aly, %bb.amb, %bb.amc, %bb.ama, %bb.alw, %bb.alp, %bb.alq, %bb.alk, %bb.aln, %bb.alo, %bb.alm, %bb.aks, %bb.akw, %bb.ala, %bb.ale, %bb.alh, %bb.ali, %bb.alg, %bb.alc, %bb.aky, %bb.aku, %bb.ako, %bb.akq, %bb.akp, %bb.aiw, %bb.aix, %bb.aiu, %bb.aiv, %bb.aii, %bb.aij, %bb.aik, %bb.aif, %bb.aig, %bb.aih, %bb.aid, %bb.aie, %bb.aia, %bb.aib, %bb.ahu, %ends_with.exit1327.thread, %bb.ahx, %bb.ahw, %bb.ahd, %bb.ahg, %bb.ahi, %bb.ahh, %bb.ahf, %bb.afo, %bb.afs, %bb.afx, %bb.afq, %bb.aet, %bb.aeu, %bb.aev, %bb.aek, %ends_with.exit1319.thread, %bb.aen, %bb.aem, %bb.aea, %ends_with.exit1315.thread, %bb.aed, %bb.aec, %bb.abv, %bb.abw, %ends_with.exit1311, %bb.abs, %bb.aaz, %bb.aba, %bb.aaw, %bb.aax, %bb.aat, %bb.aau, %bb.aaq, %bb.aar, %bb.aan, %bb.aao, %bb.aah, %bb.aai, %bb.aal, %bb.aak, %bb.yv, %bb.yz, %bb.zd, %bb.zj, %bb.zn, %bb.zr, %bb.zv, %bb.zy, %bb.zx, %bb.zt, %bb.zp, %bb.zl, %bb.zg, %bb.zh, %bb.zb, %bb.yx, %bb.yr, %bb.ys, %bb.ym, %bb.yp, %bb.yo, %bb.xv, %bb.xw, %bb.xu, %bb.ya, %bb.yd, %bb.ye, %bb.yc, %bb.xy, %bb.xo, %bb.xp, %bb.xl, %bb.xm, %bb.wx, %bb.xa, %bb.xd, %bb.xe, %bb.xc, %bb.wz, %ends_with.exit1305, %bb.vo, %ends_with.exit1303, %bb.vi, %bb.uk, %bb.ul, %bb.uh, %bb.ui, %bb.tl, %bb.to, %bb.tp, %bb.tn, %bb.tf, %bb.ti, %bb.tj, %bb.th, %bb.ta, %bb.tc, %bb.tb, %bb.st, %bb.su, %bb.sq, %bb.sr, %bb.sn, %bb.so, %bb.sk, %bb.sl, %bb.sf, %bb.sg, %bb.sc, %bb.sd, %bb.rz, %bb.sa, %bb.ru, %bb.rv, %bb.rr, %bb.rs, %ends_with.exit1301, %ends_with.exit1301.thread, %ends_with.exit1299, %ends_with.exit1299.thread, %ends_with.exit1297, %ends_with.exit1297.thread, %ends_with.exit1295, %bb.pg, %bb.ow, %bb.ox, %bb.ou, %bb.ov, %bb.os, %bb.ot, %bb.nr, %bb.ns, %bb.nt, %bb.mq, %bb.mt, %bb.mu, %bb.ms, %bb.lu, %bb.lv, %bb.ma, %bb.me, %bb.mh, %bb.mi, %bb.mg, %bb.mc, %bb.ly, %bb.lz, %bb.ln, %bb.lm, %bb.lq, %bb.lp, %bb.kb, %bb.kd, %bb.jp, %bb.js, %bb.ju, %bb.jt, %bb.jr, %bb.iz, %ends_with.exit1281.thread, %bb.jc, %bb.jb, %bb.ey, %bb.ez, %bb.co, %bb.cp, %ends_with.exit1277, %ends_with.exit1277.thread, %ends_with.exit1275, %bb.aq, %bb.af, %bb.ag, %ends_with.exit1273, %bb.ac, %bb.t, %ends_with.exit1271.thread, %bb.r, %ends_with.exit1269.thread, %bb.p, %ends_with.exit1267.thread, %bb.n, %ends_with.exit.thread, %bb.c, %bb.d, %bb.amx, %bb.amw, %bb.amv, %bb.ame, %bb.amd, %bb.als, %bb.alr, %bb.akm, %bb.akl, %bb.akk, %bb.akj, %bb.aki, %bb.akh, %bb.akg, %bb.akf, %bb.ake, %bb.akd, %bb.akc, %bb.akb, %bb.aka, %bb.ajz, %bb.ajy, %bb.ajx, %bb.ajw, %bb.ajv, %bb.aju, %bb.ajt, %bb.ajs, %bb.ajr, %bb.ajq, %bb.ajp, %bb.ajo, %bb.ajn, %bb.ajm, %bb.ajl, %bb.ajk, %bb.ajj, %bb.aji, %bb.ajh, %bb.ajg, %bb.ajf, %bb.aje, %bb.ajd, %bb.ajc, %bb.ajb, %bb.aja, %bb.aiz, %bb.aiy, %bb.ait, %bb.ais, %bb.aio, %bb.ain, %bb.aim, %bb.ail, %bb.aic, %bb.ahz, %bb.ahy, %bb.aht, %bb.ahs, %bb.ahr, %bb.ahq, %bb.ahp, %bb.aho, %bb.ahn, %bb.ahm, %bb.ahl, %bb.ahk, %bb.ahj, %bb.ahc, %bb.ahb, %bb.aha, %bb.agz, %bb.agy, %bb.agx, %bb.agw, %bb.agv, %bb.agu, %bb.agt, %bb.ags, %bb.agr, %bb.agq, %bb.agp, %bb.ago, %bb.agn, %bb.agm, %bb.agl, %bb.agk, %bb.agj, %bb.agi, %bb.agh, %bb.agg, %bb.agf, %bb.afn, %bb.afm, %bb.afl, %bb.afk, %bb.afj, %bb.afi, %bb.afh, %bb.afg, %bb.aff, %bb.afe, %bb.afd, %bb.afc, %bb.afb, %bb.afa, %bb.aez, %bb.aey, %bb.aex, %bb.aew, %bb.aes, %bb.aer, %bb.aeq, %bb.aep, %bb.aeo, %bb.aej, %bb.aei, %bb.aeh, %bb.aeg, %bb.aef, %bb.aee, %bb.adz, %bb.ady, %bb.adx, %bb.adw, %bb.adv, %bb.adu, %bb.adt, %bb.ads, %bb.adr, %bb.adq, %bb.adp, %bb.ado, %bb.adn, %bb.adm, %bb.adl, %bb.adk, %bb.adj, %bb.adi, %bb.adh, %bb.adg, %bb.adf, %bb.ade, %bb.add, %bb.adc, %bb.adb, %bb.ada, %bb.acz, %bb.acy, %bb.acx, %bb.acw, %bb.acv, %bb.acu, %bb.act, %bb.acs, %bb.acr, %bb.acq, %bb.acp, %bb.aco, %bb.acn, %bb.acm, %bb.acl, %bb.ack, %bb.acj, %bb.aci, %bb.ach, %bb.acg, %bb.acf, %bb.ace, %bb.acd, %bb.acc, %bb.acb, %bb.aca, %bb.abz, %bb.aby, %bb.abx, %bb.abu, %bb.abt, %bb.abq, %bb.abp, %bb.abo, %bb.abn, %bb.abm, %bb.abl, %bb.abk, %bb.abj, %bb.abi, %bb.abh, %bb.abg, %bb.abf, %bb.abe, %bb.abd, %bb.abc, %bb.abb, %bb.aag, %bb.aaf, %bb.aae, %bb.aad, %bb.aac, %bb.aab, %bb.aaa, %bb.zz, %bb.yt, %bb.yk, %bb.yj, %bb.yi, %bb.yh, %bb.yg, %bb.yf, %bb.xq, %bb.xn, %bb.xk, %bb.xj, %bb.xi, %bb.xh, %bb.xg, %bb.xf, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl, %bb.wk, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf, %bb.we, %bb.wd, %bb.wc, %bb.wb, %bb.wa, %bb.vz, %bb.vy, %bb.vx, %bb.vw, %bb.vv, %bb.vu, %bb.vt, %bb.vs, %bb.vr, %bb.vq, %bb.vp, %bb.vm, %bb.vl, %bb.vk, %bb.vj, %bb.vg, %bb.vf, %bb.ve, %bb.vd, %bb.vc, %bb.vb, %bb.va, %bb.uz, %bb.uy, %bb.ux, %bb.uw, %bb.uv, %bb.uu, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.uf, %bb.ue, %bb.ud, %bb.uc, %bb.ub, %bb.ua, %bb.tz, %bb.ty, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.td, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.ss, %bb.si, %bb.sh, %bb.rx, %bb.rw, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pi, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.lt, %bb.ls, %bb.lr, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.2 = phi ptr [ null, %bb.a ], [ %i.ep, %bb.c ], [ %i.eq, %bb.d ], [ %i.er, %bb.e ], [ %i.es, %bb.f ], [ %i.et, %bb.g ], [ %i.eu, %bb.h ], [ %i.ev, %bb.i ], [ %i.ew, %bb.j ], [ %i.ex, %bb.k ], [ %i.ey, %bb.l ], [ %i.ff, %bb.n ], [ %i.fi, %ends_with.exit.thread ], [ %i.fp, %bb.p ], [ %i.fs, %ends_with.exit1267.thread ], [ %i.fz, %bb.r ], [ %i.gc, %ends_with.exit1269.thread ], [ %i.gj, %bb.t ], [ %i.gm, %ends_with.exit1271.thread ], [ %i.gn, %bb.u ], [ %i.go, %bb.v ], [ %i.gp, %bb.w ], [ %i.gq, %bb.x ], [ %i.gr, %bb.y ], [ %i.gs, %bb.z ], [ %i.gt, %bb.aa ], [ %i.ha, %bb.ac ], [ null, %ends_with.exit1273 ], [ %i.hb, %bb.ad ], [ %i.he, %bb.ae ], [ null, %bb.af ], [ %i.hg, %bb.ag ], [ %i.hh, %bb.ah ], [ %i.hi, %bb.ai ], [ %i.hj, %bb.aj ], [ %i.hk, %bb.ak ], [ %i.hl, %bb.al ], [ %i.hm, %bb.am ], [ %i.hn, %bb.an ], [ %i.ho, %bb.ao ], [ %i.hv, %bb.aq ], [ null, %ends_with.exit1275 ], [ null, %ends_with.exit1277 ], [ %i.ic, %ends_with.exit1277.thread ], [ %i.id, %bb.as ], [ %i.ie, %bb.at ], [ %i.if, %bb.au ], [ %i.ig, %bb.av ], [ %i.ih, %bb.aw ], [ %i.ii, %bb.ax ], [ %i.ij, %bb.ay ], [ %i.ik, %bb.az ], [ %i.il, %bb.ba ], [ %i.bdu, %bb.amx ], [ %i.im, %bb.bb ], [ %i.in, %bb.bc ], [ %i.io, %bb.bd ], [ %i.ip, %bb.be ], [ %i.iq, %bb.bf ], [ %i.ir, %bb.bg ], [ %i.iu, %bb.bh ], [ %i.iv, %bb.bi ], [ %i.iw, %bb.bj ], [ %i.ix, %bb.bk ], [ %i.iy, %bb.bl ], [ %i.iz, %bb.bm ], [ %i.ja, %bb.bn ], [ %i.jb, %bb.bo ], [ %i.jc, %bb.bp ], [ %i.jd, %bb.bq ], [ %i.je, %bb.br ], [ %i.jh, %bb.bs ], [ %i.ji, %bb.bt ], [ %i.jj, %bb.bu ], [ %i.jk, %bb.bv ], [ %i.jl, %bb.bw ], [ %i.jm, %bb.bx ], [ %i.jn, %bb.by ], [ %i.jo, %bb.bz ], [ %i.jp, %bb.ca ], [ %i.jq, %bb.cb ], [ %i.jt, %bb.cc ], [ %i.ju, %bb.cd ], [ %i.jv, %bb.ce ], [ %i.bdt, %bb.amw ], [ %i.jw, %bb.cf ], [ %i.jx, %bb.cg ], [ %i.jy, %bb.ch ], [ %i.jz, %bb.ci ], [ %i.ka, %bb.cj ], [ %i.kb, %bb.ck ], [ %i.kc, %bb.cl ], [ %i.kd, %bb.cm ], [ %i.ke, %bb.cn ], [ null, %bb.co ], [ %i.kg, %bb.cp ], [ %i.kh, %bb.cq ], [ %i.ki, %bb.cr ], [ %i.kj, %bb.cs ], [ %i.kk, %bb.ct ], [ %i.kn, %bb.cu ], [ %i.ko, %bb.cv ], [ %i.kp, %bb.cw ], [ %i.kq, %bb.cx ], [ %i.kr, %bb.cy ], [ %i.ks, %bb.cz ], [ %i.kt, %bb.da ], [ %i.ku, %bb.db ], [ %i.kv, %bb.dc ], [ %i.kw, %bb.dd ], [ %i.kx, %bb.de ], [ %i.ky, %bb.df ], [ %i.kz, %bb.dg ], [ %i.lc, %bb.dh ], [ %i.ld, %bb.di ], [ %i.le, %bb.dj ], [ %i.lf, %bb.dk ], [ %i.lg, %bb.dl ], [ %i.lh, %bb.dm ], [ %i.li, %bb.dn ], [ %i.lj, %bb.do ], [ %i.lk, %bb.dp ], [ %i.ll, %bb.dq ], [ %i.lm, %bb.dr ], [ %i.ln, %bb.ds ], [ %i.lo, %bb.dt ], [ %i.lp, %bb.du ], [ %i.ls, %bb.dv ], [ %i.lv, %bb.dw ], [ %i.lw, %bb.dx ], [ %i.lx, %bb.dy ], [ %i.ly, %bb.dz ], [ %i.lz, %bb.ea ], [ %i.ma, %bb.eb ], [ %i.mb, %bb.ec ], [ %i.mc, %bb.ed ], [ %i.md, %bb.ee ], [ %i.me, %bb.ef ], [ %i.mf, %bb.eg ], [ %i.mi, %bb.eh ], [ %i.ml, %bb.ei ], [ %i.mm, %bb.ej ], [ %i.mn, %bb.ek ], [ %i.mo, %bb.el ], [ %i.mp, %bb.em ], [ %i.mq, %bb.en ], [ %i.mr, %bb.eo ], [ %i.mu, %bb.ep ], [ %i.mv, %bb.eq ], [ %i.mw, %bb.er ], [ %i.mx, %bb.es ], [ %i.my, %bb.et ], [ %i.mz, %bb.eu ], [ %i.na, %bb.ev ], [ %i.nb, %bb.ew ], [ %i.nc, %bb.ex ], [ %i.ne, %bb.ez ], [ null, %bb.ey ], [ %i.nf, %bb.fa ], [ %i.ng, %bb.fb ], [ %i.nj, %bb.fc ], [ %i.nk, %bb.fd ], [ %i.nl, %bb.fe ], [ %i.nm, %bb.ff ], [ %i.nn, %bb.fg ], [ %i.nq, %bb.fh ], [ %i.nr, %bb.fi ], [ %i.ns, %bb.fj ], [ %i.nt, %bb.fk ], [ %i.nu, %bb.fl ], [ %i.nv, %bb.fm ], [ %i.ny, %bb.fn ], [ %i.ob, %bb.fo ], [ %i.oc, %bb.fp ], [ %i.of, %bb.fq ], [ %i.oi, %bb.fr ], [ %i.ol, %bb.fs ], [ %i.oo, %bb.ft ], [ %i.op, %bb.fu ], [ %i.oq, %bb.fv ], [ %i.ot, %bb.fw ], [ %i.ow, %bb.fx ], [ %i.oz, %bb.fy ], [ %i.pc, %bb.fz ], [ %i.pd, %bb.ga ], [ %i.pe, %bb.gb ], [ %i.pf, %bb.gc ], [ %i.pg, %bb.gd ], [ %i.pj, %bb.ge ], [ %i.pm, %bb.gf ], [ %i.pp, %bb.gg ], [ %i.ps, %bb.gh ], [ %i.pv, %bb.gi ], [ %i.pw, %bb.gj ], [ %i.px, %bb.gk ], [ %i.py, %bb.gl ], [ %i.qb, %bb.gm ], [ %i.qe, %bb.gn ], [ %i.qh, %bb.go ], [ %i.qi, %bb.gp ], [ %i.qj, %bb.gq ], [ %i.qk, %bb.gr ], [ %i.ql, %bb.gs ], [ %i.qm, %bb.gt ], [ %i.qn, %bb.gu ], [ %i.qo, %bb.gv ], [ %i.qp, %bb.gw ], [ %i.qq, %bb.gx ], [ %i.qr, %bb.gy ], [ %i.qs, %bb.gz ], [ %i.qt, %bb.ha ], [ %i.bds, %bb.amv ], [ %i.qu, %bb.hb ], [ %i.qv, %bb.hc ], [ %i.qy, %bb.hd ], [ %i.qz, %bb.he ], [ %i.ra, %bb.hf ], [ %i.rb, %bb.hg ], [ %i.rc, %bb.hh ], [ %i.rd, %bb.hi ], [ %i.re, %bb.hj ], [ %i.rh, %bb.hk ], [ %i.ri, %bb.hl ], [ %i.rj, %bb.hm ], [ %i.rk, %bb.hn ], [ %i.rl, %bb.ho ], [ %i.rm, %bb.hp ], [ %i.rn, %bb.hq ], [ %i.rq, %bb.hr ], [ %i.rr, %bb.hs ], [ %i.rs, %bb.ht ], [ %i.rv, %bb.hu ], [ %i.rw, %bb.hv ], [ %i.rx, %bb.hw ], [ %i.ry, %bb.hx ], [ %i.rz, %bb.hy ], [ %i.sa, %bb.hz ], [ %i.sb, %bb.ia ], [ %i.sc, %bb.ib ], [ %i.sd, %bb.ic ], [ %i.se, %bb.id ], [ %i.sf, %bb.ie ], [ %i.sg, %bb.if ], [ %i.sh, %bb.ig ], [ %i.si, %bb.ih ], [ %i.sj, %bb.ii ], [ %i.sm, %bb.ij ], [ %i.sn, %bb.ik ], [ %i.so, %bb.il ], [ %i.sp, %bb.im ], [ %i.sq, %bb.in ], [ %i.sr, %bb.io ], [ %i.tc, %bb.ir ], [ %i.td, %bb.is ], [ %i.te, %bb.it ], [ %i.tf, %bb.iu ], [ %i.tg, %bb.iv ], [ %i.th, %bb.iw ], [ %i.ti, %bb.ix ], [ %i.tj, %bb.iy ], [ null, %bb.iz ], [ %i.tq, %bb.jb ], [ %i.ts, %bb.jc ], [ null, %ends_with.exit1281.thread ], [ %i.tt, %bb.jd ], [ %i.tw, %bb.je ], [ %i.tx, %bb.jf ], [ %i.ty, %bb.jg ], [ %i.tz, %bb.jh ], [ %i.ua, %bb.ji ], [ %i.ub, %bb.jj ], [ %i.uc, %bb.jk ], [ %i.ud, %bb.jl ], [ %i.ue, %bb.jm ], [ %i.uf, %bb.jn ], [ %i.ug, %bb.jo ], [ null, %bb.jp ], [ %i.un, %bb.jr ], [ %i.up, %bb.js ], [ %i.ur, %bb.ju ], [ null, %bb.jt ], [ %i.us, %bb.jv ], [ %i.ut, %bb.jw ], [ %i.uu, %bb.jx ], [ %i.uv, %bb.jy ], [ %i.uw, %bb.jz ], [ %i.uz, %bb.ka ], [ null, %bb.kb ], [ %i.vg, %bb.kd ], [ null, %ends_with.exit1287 ], [ %i.vh, %bb.ke ], [ %i.vi, %bb.kf ], [ %i.vj, %bb.kg ], [ %i.vk, %bb.kh ], [ %i.vl, %bb.ki ], [ %i.vo, %bb.kj ], [ %i.vp, %bb.kk ], [ %i.vq, %bb.kl ], [ %i.vr, %bb.km ], [ %i.vs, %bb.kn ], [ %i.vt, %bb.ko ], [ %i.vu, %bb.kp ], [ %i.vv, %bb.kq ], [ %i.vy, %bb.kr ], [ %i.vz, %bb.ks ], [ %i.wa, %bb.kt ], [ %i.wb, %bb.ku ], [ %i.we, %bb.kv ], [ %i.wf, %bb.kw ], [ %i.wg, %bb.kx ], [ %i.wh, %bb.ky ], [ %i.wi, %bb.kz ], [ %i.wj, %bb.la ], [ %i.wk, %bb.lb ], [ %i.wl, %bb.lc ], [ %i.wo, %bb.ld ], [ %i.wp, %bb.le ], [ %i.ws, %bb.lf ], [ %i.wt, %bb.lg ], [ %i.wu, %bb.lh ], [ %i.wv, %bb.li ], [ %i.ww, %bb.lj ], [ %i.wz, %bb.lm ], [ %i.xa, %bb.ln ], [ %i.xb, %bb.lp ], [ %i.xc, %bb.lq ], [ %i.xf, %bb.lr ], [ %i.xg, %bb.ls ], [ %i.xh, %bb.lt ], [ null, %bb.lu ], [ null, %bb.lv ], [ %i.xq, %bb.ly ], [ %i.xr, %bb.lz ], [ %i.xt, %bb.ma ], [ %i.xv, %bb.mc ], [ %i.xx, %bb.me ], [ %i.xz, %bb.mg ], [ %i.yb, %bb.mi ], [ null, %bb.mh ], [ %i.yc, %bb.mj ], [ %i.yd, %bb.mk ], [ %i.ye, %bb.ml ], [ %i.yf, %bb.mm ], [ %i.yg, %bb.mn ], [ %i.yh, %bb.mo ], [ %i.yj, %bb.mq ], [ %i.yl, %bb.ms ], [ %i.yn, %bb.mu ], [ null, %bb.mt ], [ %i.yo, %bb.mv ], [ %i.yp, %bb.mw ], [ %i.yq, %bb.mx ], [ %i.yr, %bb.my ], [ %i.ys, %bb.mz ], [ %i.yt, %bb.na ], [ %i.yu, %bb.nb ], [ %i.yv, %bb.nc ], [ %i.yw, %bb.nd ], [ %i.yz, %bb.ne ], [ %i.za, %bb.nf ], [ %i.zb, %bb.ng ], [ %i.zc, %bb.nh ], [ %i.zd, %bb.ni ], [ %i.ze, %bb.nj ], [ %i.zf, %bb.nk ], [ %i.zg, %bb.nl ], [ %i.zh, %bb.nm ], [ %i.zi, %bb.nn ], [ %i.zl, %bb.no ], [ %i.zo, %bb.np ], [ %i.zp, %bb.nq ], [ null, %bb.nr ], [ null, %bb.ns ], [ %i.zs, %bb.nt ], [ %i.zt, %bb.nu ], [ %i.zu, %bb.nv ], [ %i.zv, %bb.nw ], [ %i.zw, %bb.nx ], [ %i.zx, %bb.ny ], [ %i.zy, %bb.nz ], [ %i.zz, %bb.oa ], [ %i.aaa, %bb.ob ], [ %i.aab, %bb.oc ], [ %i.aac, %bb.od ], [ %i.aad, %bb.oe ], [ %i.aae, %bb.of ], [ %i.aaf, %bb.og ], [ %i.aag, %bb.oh ], [ %i.aah, %bb.oi ], [ %i.aai, %bb.oj ], [ %i.aaj, %bb.ok ], [ %i.aak, %bb.ol ], [ %i.aal, %bb.om ], [ %i.aam, %bb.on ], [ %i.aan, %bb.oo ], [ %i.aao, %bb.op ], [ %i.aap, %bb.oq ], [ %i.aaq, %bb.or ], [ %i.aas, %bb.ot ], [ null, %bb.os ], [ %i.aau, %bb.ov ], [ null, %bb.ou ], [ %i.aaw, %bb.ox ], [ null, %bb.ow ], [ %i.aax, %bb.oy ], [ %i.aay, %bb.oz ], [ %i.aaz, %bb.pa ], [ %i.aba, %bb.pb ], [ %i.abb, %bb.pc ], [ %i.abc, %bb.pd ], [ %i.abd, %bb.pe ], [ %i.abk, %bb.pg ], [ null, %ends_with.exit1295 ], [ null, %ends_with.exit1297 ], [ %i.abr, %ends_with.exit1297.thread ], [ %i.abs, %bb.pi ], [ null, %ends_with.exit1299 ], [ %i.abz, %ends_with.exit1299.thread ], [ %i.aca, %bb.pk ], [ %i.acb, %bb.pl ], [ %i.ace, %bb.pm ], [ %i.acf, %bb.pn ], [ %i.acg, %bb.po ], [ null, %ends_with.exit1301 ], [ %i.acn, %ends_with.exit1301.thread ], [ %i.aco, %bb.pq ], [ %i.acp, %bb.pr ], [ %i.acq, %bb.ps ], [ %i.acr, %bb.pt ], [ %i.acs, %bb.pu ], [ %i.act, %bb.pv ], [ %i.acu, %bb.pw ], [ %i.acv, %bb.px ], [ %i.acw, %bb.py ], [ %i.acx, %bb.pz ], [ %i.acy, %bb.qa ], [ %i.acz, %bb.qb ], [ %i.ada, %bb.qc ], [ %i.adb, %bb.qd ], [ %i.adc, %bb.qe ], [ %i.add, %bb.qf ], [ %i.ade, %bb.qg ], [ %i.adf, %bb.qh ], [ %i.adg, %bb.qi ], [ %i.adh, %bb.qj ], [ %i.adi, %bb.qk ], [ %i.adj, %bb.ql ], [ %i.adk, %bb.qm ], [ %i.adl, %bb.qn ], [ %i.adm, %bb.qo ], [ %i.adn, %bb.qp ], [ %i.ado, %bb.qq ], [ %i.adp, %bb.qr ], [ %i.adq, %bb.qs ], [ %i.adr, %bb.qt ], [ %i.ads, %bb.qu ], [ %i.adt, %bb.qv ], [ %i.adu, %bb.qw ], [ %i.adv, %bb.qx ], [ %i.adw, %bb.qy ], [ %i.adx, %bb.qz ], [ %i.ady, %bb.ra ], [ %i.adz, %bb.rb ], [ %i.aea, %bb.rc ], [ %i.aed, %bb.rd ], [ %i.aee, %bb.re ], [ %i.aef, %bb.rf ], [ %i.aeg, %bb.rg ], [ %i.aeh, %bb.rh ], [ %i.bdd, %bb.amg ], [ %i.bdf, %bb.ami ], [ %i.bdh, %bb.amk ], [ %i.bdj, %bb.amm ], [ %i.bdl, %bb.amo ], [ %i.bdn, %bb.amq ], [ %i.bdp, %bb.ams ], [ %i.bdr, %bb.amu ], [ null, %bb.amt ], [ %i.bdb, %bb.ame ], [ %i.aei, %bb.ri ], [ %i.aej, %bb.rj ], [ %i.aek, %bb.rk ], [ %i.ael, %bb.rl ], [ %i.aem, %bb.rm ], [ %i.aen, %bb.rn ], [ %i.aeo, %bb.ro ], [ %i.aep, %bb.rp ], [ %i.aes, %bb.rr ], [ %i.aet, %bb.rs ], [ %i.aew, %bb.ru ], [ %i.aex, %bb.rv ], [ %i.aey, %bb.rw ], [ %i.aez, %bb.rx ], [ %i.afc, %bb.rz ], [ %i.afd, %bb.sa ], [ %i.afg, %bb.sc ], [ %i.afh, %bb.sd ], [ %i.afk, %bb.sf ], [ %i.afl, %bb.sg ], [ %i.afm, %bb.sh ], [ %i.afn, %bb.si ], [ %i.afq, %bb.sk ], [ %i.afr, %bb.sl ], [ %i.afu, %bb.sn ], [ %i.afv, %bb.so ], [ %i.afy, %bb.sq ], [ %i.afz, %bb.sr ], [ %i.aga, %bb.ss ], [ null, %bb.st ], [ %i.agc, %bb.su ], [ %i.agd, %bb.sv ], [ %i.age, %bb.sw ], [ %i.agf, %bb.sx ], [ %i.agg, %bb.sy ], [ %i.agi, %bb.ta ], [ %i.agk, %bb.tc ], [ null, %bb.tb ], [ %i.agl, %bb.td ], [ %i.agn, %bb.tf ], [ %i.agp, %bb.th ], [ %i.agr, %bb.tj ], [ null, %bb.ti ], [ %i.agt, %bb.tl ], [ %i.agv, %bb.tn ], [ %i.agx, %bb.tp ], [ null, %bb.to ], [ %i.agy, %bb.tq ], [ %i.agz, %bb.tr ], [ %i.aha, %bb.ts ], [ %i.ahb, %bb.tt ], [ %i.ahc, %bb.tu ], [ %i.ahd, %bb.tv ], [ %i.ahe, %bb.tw ], [ %i.ahf, %bb.tx ], [ %i.ahg, %bb.ty ], [ %i.ahh, %bb.tz ], [ %i.ahi, %bb.ua ], [ %i.ahj, %bb.ub ], [ %i.ahk, %bb.uc ], [ %i.ahl, %bb.ud ], [ %i.ahm, %bb.ue ], [ %i.ahn, %bb.uf ], [ %i.ahq, %bb.uh ], [ %i.ahr, %bb.ui ], [ %i.ahu, %bb.uk ], [ %i.ahv, %bb.ul ], [ %i.ahw, %bb.um ], [ %i.ahx, %bb.un ], [ %i.ahy, %bb.uo ], [ %i.ahz, %bb.up ], [ %i.aia, %bb.uq ], [ %i.aib, %bb.ur ], [ %i.aic, %bb.us ], [ %i.aid, %bb.ut ], [ %i.aie, %bb.uu ], [ %i.aif, %bb.uv ], [ %i.aig, %bb.uw ], [ %i.aih, %bb.ux ], [ %i.aii, %bb.uy ], [ %i.aij, %bb.uz ], [ %i.aik, %bb.va ], [ %i.ain, %bb.vb ], [ %i.aio, %bb.vc ], [ %i.aip, %bb.vd ], [ %i.aiq, %bb.ve ], [ %i.air, %bb.vf ], [ %i.ais, %bb.vg ], [ %i.aiz, %bb.vi ], [ null, %ends_with.exit1303 ], [ %i.aja, %bb.vj ], [ %i.ajd, %bb.vk ], [ %i.aje, %bb.vl ], [ %i.ajf, %bb.vm ], [ %i.ajm, %bb.vo ], [ null, %ends_with.exit1305 ], [ %i.ajn, %bb.vp ], [ %i.ajo, %bb.vq ], [ %i.ajp, %bb.vr ], [ %i.ajq, %bb.vs ], [ %i.ajr, %bb.vt ], [ %i.ajs, %bb.vu ], [ %i.ajt, %bb.vv ], [ %i.aju, %bb.vw ], [ %i.ajv, %bb.vx ], [ %i.ajw, %bb.vy ], [ %i.ajx, %bb.vz ], [ %i.ajy, %bb.wa ], [ %i.akb, %bb.wb ], [ %i.akc, %bb.wc ], [ %i.akd, %bb.wd ], [ %i.ake, %bb.we ], [ %i.akf, %bb.wf ], [ %i.akg, %bb.wg ], [ %i.akh, %bb.wh ], [ %i.aki, %bb.wi ], [ %i.akl, %bb.wj ], [ %i.akm, %bb.wk ], [ %i.akn, %bb.wl ], [ %i.ako, %bb.wm ], [ %i.akp, %bb.wn ], [ %i.aks, %bb.wo ], [ %i.akt, %bb.wp ], [ %i.aku, %bb.wq ], [ %i.akv, %bb.wr ], [ %i.akw, %bb.ws ], [ %i.akz, %bb.wt ], [ %i.ala, %bb.wu ], [ %i.alb, %bb.wv ], [ %i.alc, %bb.ww ], [ null, %bb.wx ], [ %i.alj, %bb.wz ], [ %i.all, %bb.xa ], [ %i.aln, %bb.xc ], [ %i.alp, %bb.xe ], [ null, %bb.xd ], [ %i.alq, %bb.xf ], [ %i.alr, %bb.xg ], [ %i.als, %bb.xh ], [ %i.alt, %bb.xi ], [ %i.alu, %bb.xj ], [ %i.alv, %bb.xk ], [ null, %bb.xl ], [ %i.alx, %bb.xm ], [ %i.aly, %bb.xn ], [ null, %bb.xo ], [ %i.ama, %bb.xp ], [ %i.amb, %bb.xq ], [ %i.amf, %bb.xu ], [ %i.amh, %bb.xw ], [ null, %bb.xv ], [ %i.ami, %bb.xy ], [ %i.amk, %bb.ya ], [ %i.amm, %bb.yc ], [ %i.amo, %bb.ye ], [ null, %bb.yd ], [ %i.amp, %bb.yf ], [ %i.amq, %bb.yg ], [ %i.amr, %bb.yh ], [ %i.ams, %bb.yi ], [ %i.amt, %bb.yj ], [ %i.amu, %bb.yk ], [ %i.amw, %bb.ym ], [ %i.amy, %bb.yo ], [ %i.amz, %bb.yp ], [ %i.anb, %bb.yr ], [ %i.anc, %bb.ys ], [ %i.and, %bb.yt ], [ %i.anf, %bb.yv ], [ %i.anh, %bb.yx ], [ %i.anj, %bb.yz ], [ %i.anl, %bb.zb ], [ %i.ann, %bb.zd ], [ %i.anq, %bb.zg ], [ %i.anr, %bb.zh ], [ %i.ant, %bb.zj ], [ %i.anv, %bb.zl ], [ %i.anx, %bb.zn ], [ %i.anz, %bb.zp ], [ %i.aob, %bb.zr ], [ %i.aod, %bb.zt ], [ %i.aof, %bb.zv ], [ %i.aoh, %bb.zx ], [ %i.aoi, %bb.zy ], [ %i.aoj, %bb.zz ], [ %i.aok, %bb.aaa ], [ %i.aol, %bb.aab ], [ %i.aom, %bb.aac ], [ %i.aon, %bb.aad ], [ %i.aoo, %bb.aae ], [ %i.aop, %bb.aaf ], [ %i.aoq, %bb.aag ], [ null, %bb.aah ], [ null, %bb.aai ], [ %i.aou, %bb.aak ], [ %i.aov, %bb.aal ], [ %i.aox, %bb.aan ], [ %i.aoy, %bb.aao ], [ %i.apa, %bb.aaq ], [ %i.apb, %bb.aar ], [ %i.apd, %bb.aat ], [ %i.ape, %bb.aau ], [ %i.apg, %bb.aaw ], [ %i.aph, %bb.aax ], [ %i.apj, %bb.aaz ], [ %i.apk, %bb.aba ], [ %i.apl, %bb.abb ], [ %i.apm, %bb.abc ], [ %i.apn, %bb.abd ], [ %i.apo, %bb.abe ], [ %i.app, %bb.abf ], [ %i.apq, %bb.abg ], [ %i.apr, %bb.abh ], [ %i.aps, %bb.abi ], [ %i.apt, %bb.abj ], [ %i.apu, %bb.abk ], [ %i.apv, %bb.abl ], [ %i.apw, %bb.abm ], [ %i.apx, %bb.abn ], [ %i.apy, %bb.abo ], [ %i.aqb, %bb.abp ], [ %i.aqc, %bb.abq ], [ %i.aqj, %bb.abs ], [ null, %ends_with.exit1311 ], [ %i.aqk, %bb.abt ], [ %i.aql, %bb.abu ], [ null, %bb.abv ], [ %i.aqn, %bb.abw ], [ %i.aqo, %bb.abx ], [ %i.aqp, %bb.aby ], [ %i.aqq, %bb.abz ], [ %i.aqr, %bb.aca ], [ %i.aqs, %bb.acb ], [ %i.aqt, %bb.acc ], [ %i.aqu, %bb.acd ], [ %i.aqv, %bb.ace ], [ %i.aqw, %bb.acf ], [ %i.aqx, %bb.acg ], [ %i.aqy, %bb.ach ], [ %i.aqz, %bb.aci ], [ %i.ara, %bb.acj ], [ %i.arb, %bb.ack ], [ %i.arc, %bb.acl ], [ %i.arf, %bb.acm ], [ %i.ari, %bb.acn ], [ %i.arl, %bb.aco ], [ %i.arm, %bb.acp ], [ %i.arn, %bb.acq ], [ %i.aro, %bb.acr ], [ %i.arp, %bb.acs ], [ %i.arq, %bb.act ], [ %i.arr, %bb.acu ], [ %i.ars, %bb.acv ], [ %i.art, %bb.acw ], [ %i.aru, %bb.acx ], [ %i.arv, %bb.acy ], [ %i.arw, %bb.acz ], [ %i.arz, %bb.ada ], [ %i.asa, %bb.adb ], [ %i.asb, %bb.adc ], [ %i.asc, %bb.add ], [ %i.asd, %bb.ade ], [ %i.ase, %bb.adf ], [ %i.asf, %bb.adg ], [ %i.asg, %bb.adh ], [ %i.ash, %bb.adi ], [ %i.asi, %bb.adj ], [ %i.asj, %bb.adk ], [ %i.ask, %bb.adl ], [ %i.asl, %bb.adm ], [ %i.asm, %bb.adn ], [ %i.asn, %bb.ado ], [ %i.aso, %bb.adp ], [ %i.asp, %bb.adq ], [ %i.asq, %bb.adr ], [ %i.asr, %bb.ads ], [ %i.ass, %bb.adt ], [ %i.ast, %bb.adu ], [ %i.asu, %bb.adv ], [ %i.asv, %bb.adw ], [ %i.asw, %bb.adx ], [ %i.asx, %bb.ady ], [ %i.asy, %bb.adz ], [ null, %bb.aea ], [ %i.atf, %bb.aec ], [ %i.ath, %bb.aed ], [ null, %ends_with.exit1315.thread ], [ %i.ati, %bb.aee ], [ %i.atj, %bb.aef ], [ %i.atk, %bb.aeg ], [ %i.atl, %bb.aeh ], [ %i.ato, %bb.aei ], [ %i.atr, %bb.aej ], [ null, %bb.aek ], [ %i.aty, %bb.aem ], [ %i.aua, %bb.aen ], [ null, %ends_with.exit1319.thread ], [ %i.aub, %bb.aeo ], [ %i.auc, %bb.aep ], [ %i.aud, %bb.aeq ], [ %i.aue, %bb.aer ], [ %i.auf, %bb.aes ], [ null, %bb.aet ], [ null, %bb.aeu ], [ %i.aui, %bb.aev ], [ %i.auj, %bb.aew ], [ %i.auk, %bb.aex ], [ %i.aul, %bb.aey ], [ %i.aum, %bb.aez ], [ %i.aun, %bb.afa ], [ %i.auo, %bb.afb ], [ %i.aup, %bb.afc ], [ %i.auq, %bb.afd ], [ %i.aur, %bb.afe ], [ %i.aus, %bb.aff ], [ %i.aut, %bb.afg ], [ %i.auu, %bb.afh ], [ %i.auv, %bb.afi ], [ %i.auw, %bb.afj ], [ %i.aux, %bb.afk ], [ %i.auy, %bb.afl ], [ %i.auz, %bb.afm ], [ %i.ava, %bb.afn ], [ null, %bb.afo ], [ %i.avd, %bb.afq ], [ %i.avf, %bb.afs ], [ %i.avp, %bb.afx ], [ null, %bb.amb ], [ %i.awa, %bb.agf ], [ %i.awb, %bb.agg ], [ %i.awc, %bb.agh ], [ %i.awd, %bb.agi ], [ %i.awe, %bb.agj ], [ %i.awf, %bb.agk ], [ %i.awg, %bb.agl ], [ %i.awh, %bb.agm ], [ %i.awi, %bb.agn ], [ %i.awj, %bb.ago ], [ %i.awk, %bb.agp ], [ %i.awl, %bb.agq ], [ %i.awm, %bb.agr ], [ %i.awn, %bb.ags ], [ %i.awq, %bb.agt ], [ %i.awr, %bb.agu ], [ %i.awu, %bb.agv ], [ %i.awv, %bb.agw ], [ %i.aww, %bb.agx ], [ %i.awx, %bb.agy ], [ %i.awy, %bb.agz ], [ %i.awz, %bb.aha ], [ %i.axa, %bb.ahb ], [ %i.axb, %bb.ahc ], [ null, %bb.ahd ], [ %i.axi, %bb.ahf ], [ %i.axk, %bb.ahg ], [ %i.axm, %bb.ahi ], [ null, %bb.ahh ], [ %i.axn, %bb.ahj ], [ %i.axo, %bb.ahk ], [ %i.axp, %bb.ahl ], [ %i.axq, %bb.ahm ], [ %i.axr, %bb.ahn ], [ %i.axu, %bb.aho ], [ %i.axv, %bb.ahp ], [ %i.axw, %bb.ahq ], [ %i.axx, %bb.ahr ], [ %i.bda, %bb.amd ], [ %i.axy, %bb.ahs ], [ %i.axz, %bb.aht ], [ null, %bb.ahu ], [ %i.ayg, %bb.ahw ], [ %i.ayi, %bb.ahx ], [ null, %ends_with.exit1327.thread ], [ %i.ayj, %bb.ahy ], [ %i.aym, %bb.ahz ], [ null, %bb.aia ], [ %i.ayo, %bb.aib ], [ %i.ayp, %bb.aic ], [ null, %bb.aid ], [ %i.ayr, %bb.aie ], [ null, %bb.aif ], [ null, %bb.aig ], [ %i.ayu, %bb.aih ], [ null, %bb.aii ], [ null, %bb.aij ], [ %i.ayx, %bb.aik ], [ %i.ayy, %bb.ail ], [ %i.azb, %bb.aim ], [ %i.aze, %bb.ain ], [ %i.azf, %bb.aio ], [ %i.azo, %bb.ais ], [ %i.azp, %bb.ait ], [ null, %bb.aiu ], [ %i.azr, %bb.aiv ], [ null, %bb.aiw ], [ %i.azu, %bb.aix ], [ %i.azv, %bb.aiy ], [ %i.azw, %bb.aiz ], [ %i.azx, %bb.aja ], [ %i.azy, %bb.ajb ], [ %i.azz, %bb.ajc ], [ %i.baa, %bb.ajd ], [ %i.bab, %bb.aje ], [ %i.bac, %bb.ajf ], [ %i.bad, %bb.ajg ], [ %i.bae, %bb.ajh ], [ %i.baf, %bb.aji ], [ %i.bag, %bb.ajj ], [ %i.bah, %bb.ajk ], [ %i.bai, %bb.ajl ], [ %i.baj, %bb.ajm ], [ %i.bak, %bb.ajn ], [ %i.bal, %bb.ajo ], [ %i.bam, %bb.ajp ], [ %i.ban, %bb.ajq ], [ %i.bao, %bb.ajr ], [ %i.bap, %bb.ajs ], [ %i.baq, %bb.ajt ], [ %i.bar, %bb.aju ], [ %i.bas, %bb.ajv ], [ %i.bat, %bb.ajw ], [ %i.bau, %bb.ajx ], [ %i.bav, %bb.ajy ], [ %i.baw, %bb.ajz ], [ %i.bax, %bb.aka ], [ %i.bay, %bb.akb ], [ %i.baz, %bb.akc ], [ %i.bba, %bb.akd ], [ %i.bbb, %bb.ake ], [ %i.bbc, %bb.akf ], [ %i.bbd, %bb.akg ], [ %i.bbe, %bb.akh ], [ %i.bbf, %bb.aki ], [ %i.bbg, %bb.akj ], [ %i.bbh, %bb.akk ], [ %i.bbi, %bb.akl ], [ %i.bbj, %bb.akm ], [ %i.bbl, %bb.ako ], [ %i.bbn, %bb.akq ], [ null, %bb.akp ], [ %i.bbp, %bb.aks ], [ %i.bbr, %bb.aku ], [ %i.bbt, %bb.akw ], [ %i.bbv, %bb.aky ], [ %i.bbx, %bb.ala ], [ %i.bbz, %bb.alc ], [ %i.bcb, %bb.ale ], [ %i.bcd, %bb.alg ], [ %i.bcf, %bb.ali ], [ null, %bb.alh ], [ %i.bch, %bb.alk ], [ %i.bcj, %bb.alm ], [ %i.bcl, %bb.alo ], [ null, %bb.aln ], [ null, %bb.alp ], [ %i.bcn, %bb.alq ], [ %i.bco, %bb.alr ], [ %i.bcp, %bb.als ], [ %i.bcr, %bb.alu ], [ %i.bct, %bb.alw ], [ %i.bcv, %bb.aly ], [ %i.bcx, %bb.ama ], [ %i.bcz, %bb.amc ], [ %i.avz, %bb.age ], [ null, %bb.afy ], [ null, %bb.vn ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.kc ], [ null, %bb.pf ], [ null, %bb.vh ], [ null, %bb.abr ]
  ret ptr %.2
}

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_query(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @completion_charp, align 8
  %i.b = load ptr, ptr @completion_charpp, align 8
  %.b = load i1, ptr @completion_verbatim, align 1
  %i.c = tail call fastcc ptr @_complete_from_query(ptr noundef %i.a, ptr noundef null, ptr noundef %i.b, i1 noundef zeroext %.b, ptr noundef %0, i32 noundef %1)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_versioned_query(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @completion_vquery, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %i.c = load i32, ptr %.0, align 8
  %i.d = icmp slt i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @completion_charpp, align 8
  %.b = load i1, ptr @completion_verbatim, align 1
  %i.j = tail call fastcc ptr @_complete_from_query(ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %i.i, i1 noundef zeroext %.b, ptr noundef %0, i32 noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.06 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_versioned_schema_query(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @completion_squery, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ]  ; 4 uses
  %i.c = load i32, ptr %.0, align 8
  %i.d = icmp slt i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 88
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !27

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @completion_charpp, align 8
  %.b = load i1, ptr @completion_verbatim, align 1
  %i.j = tail call fastcc ptr @_complete_from_query(ptr noundef null, ptr noundef nonnull %.0, ptr noundef %i.i, i1 noundef zeroext %.b, ptr noundef %0, i32 noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.06 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %pg_strdup_keyword_case.exit

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @completion_case_sensitive, align 1
  %i.b = load ptr, ptr @completion_charp, align 8 ; 2 uses
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @pg_strdup(ptr noundef %i.b) #10
  br label %pg_strdup_keyword_case.exit

bb.d:                                             ; preds = %bb.b
  %.val = load i8, ptr %0, align 1
  %i.d = tail call ptr @pg_strdup(ptr noundef %i.b) #10 ; 8 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i = icmp ult i32 %i.e, 2
  br i1 %or.cond.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__ctype_b_loc() #11
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext i8 %.val to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = and i16 %i.k, 512
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = icmp eq i32 %i.e, 1
  %i.n = and i16 %i.k, 1024
  %.not18.i = icmp eq i16 %i.n, 0
  %or.cond11.i = and i1 %i.m, %.not18.i
  br i1 %or.cond11.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.o = load i8, ptr %i.d, align 1               ; 2 uses
  %.not204.i = icmp eq i8 %i.o, 0
  br i1 %.not204.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.h, %.lr.ph6.i
  %i.p = phi i8 [ %i.s, %.lr.ph6.i ], [ %i.o, %bb.h ]
  %.05.i = phi ptr [ %i.r, %.lr.ph6.i ], [ %i.d, %bb.h ] ; 2 uses
  %i.q = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.p) #10
  store i8 %i.q, ptr %.05.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not20.i = icmp eq i8 %i.s, 0
  br i1 %.not20.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i, !llvm.loop !2

.thread.i:                                        ; preds = %bb.g, %bb.e
  %i.t = load i8, ptr %i.d, align 1               ; 2 uses
  %.not192.i = icmp eq i8 %i.t, 0
  br i1 %.not192.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %i.u = phi i8 [ %i.x, %.lr.ph.i ], [ %i.t, %.thread.i ]
  %.13.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.d, %.thread.i ] ; 2 uses
  %i.v = tail call zeroext i8 @pg_toupper(i8 noundef zeroext %i.u) #10
  store i8 %i.v, ptr %.13.i, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.not19.i = icmp eq i8 %i.x, 0
  br i1 %.not19.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i, !llvm.loop !3

pg_strdup_keyword_case.exit:                      ; preds = %.lr.ph.i, %.lr.ph6.i, %.thread.i, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ %i.d, %bb.h ], [ %i.d, %.lr.ph6.i ], [ %i.d, %.thread.i ], [ %i.d, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @pg_malloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare ptr @pg_strdup(ptr noundef) local_unnamed_addr #2

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
  %i.i = trunc i64 %indvars.iv.i to i32
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %1, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call fastcc zeroext i1 @word_matches(ptr noundef %i.h, ptr noundef %i.n, i1 noundef zeroext false) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count
  %or.cond.not = select i1 %i.o, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %HeadMatchesArray.exit, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %.promoted to i64
  %i.q = getelementptr i8, ptr %i.e, i64 %i.p
  %i.r = add nuw nsw i32 %.promoted, 8            ; 2 uses
  store i32 %i.r, ptr %4, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.promoted15, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %.promoted15, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.u = phi i32 [ %i.r, %bb.c ], [ %.promoted, %bb.d ] ; 4 uses
  %i.v = phi ptr [ %i.q, %bb.c ], [ %.promoted15, %bb.d ]
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %i.a, align 16
  %exitcond.not = icmp eq i32 %3, 1
  br i1 %exitcond.not, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %i.u, 41
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  store ptr %i.y, ptr %i.c, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %i.ab = add nuw nsw i32 %i.u, 8                 ; 2 uses
  store i32 %i.ab, ptr %4, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.t, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.ad = phi i32 [ %i.ab, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.t, %bb.g ]
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp ult i32 %i.ad, 41
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aj = zext nneg i32 %i.ad to i64
  %i.ak = getelementptr i8, ptr %i.e, i64 %i.aj
  %i.al = add nuw nsw i32 %i.ad, 8                ; 2 uses
  store i32 %i.al, ptr %4, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = phi ptr [ %i.ac, %bb.l ], [ %i.ai, %bb.k ] ; 3 uses
  %i.an = phi i32 [ %i.al, %bb.l ], [ %i.ad, %bb.k ] ; 4 uses
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ac, %bb.k ]
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %i.aq, align 16
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult i32 %i.an, 41
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  store ptr %i.as, ptr %i.c, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = zext nneg i32 %i.an to i64
  %i.au = getelementptr i8, ptr %i.e, i64 %i.at
  %i.av = add nuw nsw i32 %i.an, 8                ; 2 uses
  store i32 %i.av, ptr %4, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = phi ptr [ %i.am, %bb.p ], [ %i.as, %bb.o ] ; 3 uses
  %i.ax = phi i32 [ %i.av, %bb.p ], [ %i.an, %bb.o ] ; 4 uses
  %i.ay = phi ptr [ %i.au, %bb.p ], [ %i.am, %bb.o ]
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.az, ptr %i.ba, align 8
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult i32 %i.ax, 41
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  store ptr %i.bc, ptr %i.c, align 8
end_hunk_1
begin_hunk_2_@TailMatchesImpl:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = phi ptr [ %i.ac, %bb.l ], [ %i.ai, %bb.k ] ; 3 uses
  %i.an = phi i32 [ %i.al, %bb.l ], [ %i.ad, %bb.k ] ; 4 uses
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ac, %bb.k ]
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %i.aq, align 16
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult i32 %i.an, 41
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  store ptr %i.as, ptr %i.c, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = zext nneg i32 %i.an to i64
  %i.au = getelementptr i8, ptr %i.e, i64 %i.at
  %i.av = add nuw nsw i32 %i.an, 8                ; 2 uses
  store i32 %i.av, ptr %4, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = phi ptr [ %i.am, %bb.p ], [ %i.as, %bb.o ] ; 3 uses
  %i.ax = phi i32 [ %i.av, %bb.p ], [ %i.an, %bb.o ] ; 4 uses
  %i.ay = phi ptr [ %i.au, %bb.p ], [ %i.am, %bb.o ]
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.az, ptr %i.ba, align 8
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult i32 %i.ax, 41
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  store ptr %i.bc, ptr %i.c, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bd = zext nneg i32 %i.ax to i64
  %i.be = getelementptr i8, ptr %i.e, i64 %i.bd
  %i.bf = add nuw nsw i32 %i.ax, 8                ; 2 uses
  store i32 %i.bf, ptr %4, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = phi ptr [ %i.aw, %bb.t ], [ %i.bc, %bb.s ] ; 3 uses
  %i.bh = phi i32 [ %i.bf, %bb.t ], [ %i.ax, %bb.s ] ; 4 uses
  %i.bi = phi ptr [ %i.be, %bb.t ], [ %i.aw, %bb.s ]
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bj, ptr %i.bk, align 16
  %exitcond.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond.not.4, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = icmp ult i32 %i.bh, 41
  br i1 %i.bl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bn = zext nneg i32 %i.bh to i64
  %i.bo = getelementptr i8, ptr %i.e, i64 %i.bn
  %i.bp = add nuw nsw i32 %i.bh, 8                ; 2 uses
  store i32 %i.bp, ptr %4, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bq = phi ptr [ %i.bg, %bb.x ], [ %i.bm, %bb.w ] ; 3 uses
  %i.br = phi i32 [ %i.bp, %bb.x ], [ %i.bh, %bb.w ] ; 4 uses
  %i.bs = phi ptr [ %i.bo, %bb.x ], [ %i.bg, %bb.w ]
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %exitcond.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond.not.5, label %.preheader.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp ult i32 %i.br, 41
  br i1 %i.bv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  store ptr %i.bw, ptr %i.c, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bx = zext nneg i32 %i.br to i64
  %i.by = getelementptr i8, ptr %i.e, i64 %i.bx
  %i.bz = add nuw nsw i32 %i.br, 8                ; 2 uses
  store i32 %i.bz, ptr %4, align 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ca = phi ptr [ %i.bq, %bb.ab ], [ %i.bw, %bb.aa ] ; 2 uses
  %i.cb = phi i32 [ %i.bz, %bb.ab ], [ %i.br, %bb.aa ] ; 3 uses
  %i.cc = phi ptr [ %i.by, %bb.ab ], [ %i.bq, %bb.aa ]
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.cd, ptr %i.ce, align 16
  %exitcond.not.6 = icmp eq i32 %3, 7
  br i1 %exitcond.not.6, label %.preheader.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = icmp ult i32 %i.cb, 41
  br i1 %i.cf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr i8, ptr %i.ca, i64 8
  store ptr %i.cg, ptr %i.c, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ch = zext nneg i32 %i.cb to i64
  %i.ci = getelementptr i8, ptr %i.e, i64 %i.ch
  %i.cj = add nuw nsw i32 %i.cb, 8
  store i32 %i.cj, ptr %4, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ck = phi ptr [ %i.ci, %bb.af ], [ %i.ca, %bb.ae ]
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.cl, ptr %i.cm, align 8
  br label %.preheader.i

TailMatchesArray.exit:                            ; preds = %.lr.ph.i, %bb.a
  %.010 = phi i1 [ false, %bb.a ], [ %i.o, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @complete_from_files(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i32 0, ptr @complete_from_files.list_index, align 4
  store i1 false, ptr @complete_from_files.files_done, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.b.pr = load i1, ptr @complete_from_files.files_done, align 1
  br i1 %.b.pr, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  store i32 1, ptr @rl_completion_suppress_quote, align 4
  %i.b = load i8, ptr %0, align 1
  %i.c = icmp eq i8 %i.b, 39
  br i1 %i.c, label %bb.d, label %_complete_from_files.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @completion_force_quote, align 1
  br label %_complete_from_files.exit

_complete_from_files.exit:                        ; preds = %bb.c, %bb.d
  %i.d = tail call ptr @rl_filename_completion_function(ptr noundef nonnull %0, i32 noundef %1) #10 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_complete_from_files.exit
  store i1 true, ptr @complete_from_files.files_done, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.e = load ptr, ptr @completion_charpp, align 8
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.g
  %i.f = load ptr, ptr @completion_charpp, align 8
  %i.g = load i32, ptr @complete_from_files.list_index, align 4 ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr @complete_from_files.list_index, align 4
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.m = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef %i.l) #10
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %.preheader, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr @completion_force_quote, align 1
  %.val = load i8, ptr %0, align 1
  %i.o = tail call ptr @pg_strdup(ptr noundef nonnull %i.k) #10 ; 8 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond.i = icmp ult i32 %i.p, 2
  br i1 %or.cond.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.r = tail call ptr @__ctype_b_loc() #11
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext i8 %.val to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = and i16 %i.v, 512
  %.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = icmp eq i32 %i.p, 1
  %i.y = and i16 %i.v, 1024
  %.not18.i = icmp eq i16 %i.y, 0
  %or.cond11.i = and i1 %i.x, %.not18.i
  br i1 %or.cond11.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.z = load i8, ptr %i.o, align 1               ; 2 uses
  %.not204.i = icmp eq i8 %i.z, 0
  br i1 %.not204.i, label %.critedge, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.l, %.lr.ph6.i
  %i.aa = phi i8 [ %i.ad, %.lr.ph6.i ], [ %i.z, %bb.l ]
  %.05.i = phi ptr [ %i.ac, %.lr.ph6.i ], [ %i.o, %bb.l ] ; 2 uses
  %i.ab = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.aa) #10
  store i8 %i.ab, ptr %.05.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not20.i = icmp eq i8 %i.ad, 0
  br i1 %.not20.i, label %.critedge, label %.lr.ph6.i, !llvm.loop !2

.thread.i:                                        ; preds = %bb.k, %bb.i
  %i.ae = load i8, ptr %i.o, align 1              ; 2 uses
  %.not192.i = icmp eq i8 %i.ae, 0
  br i1 %.not192.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %i.af = phi i8 [ %i.ai, %.lr.ph.i ], [ %i.ae, %.thread.i ]
  %.13.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.o, %.thread.i ] ; 2 uses
  %i.ag = tail call zeroext i8 @pg_toupper(i8 noundef zeroext %i.af) #10
  store i8 %i.ag, ptr %.13.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %.not19.i = icmp eq i8 %i.ai, 0
  br i1 %.not19.i, label %.critedge, label %.lr.ph.i, !llvm.loop !3

.critedge:                                        ; preds = %.preheader, %.lr.ph.i, %.lr.ph6.i, %.thread.i, %bb.l, %_complete_from_files.exit, %bb.f
  %.1 = phi ptr [ %i.d, %_complete_from_files.exit ], [ null, %bb.f ], [ %i.o, %.lr.ph6.i ], [ %i.o, %bb.l ], [ %i.o, %.lr.ph.i ], [ %i.o, %.thread.i ], [ null, %.preheader ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @MatchesImpl(i1 zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 3, 6) %3, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 8 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = add nsw i32 %3, -1
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.promoted = load i32, ptr %4, align 16         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 16             ; 5 uses
  %.promoted15 = load ptr, ptr %i.d, align 8      ; 3 uses
  %i.g = icmp ult i32 %.promoted, 41
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.t, %bb.p, %bb.l
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.h = call fastcc zeroext i1 @MatchesArray(i1 noundef zeroext false, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %.promoted to i64
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = add nuw nsw i32 %.promoted, 8            ; 2 uses
  store i32 %i.k, ptr %4, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.promoted15, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.promoted15, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  %i.n = phi i32 [ %i.k, %bb.d ], [ %.promoted, %bb.e ] ; 4 uses
  %i.o = phi ptr [ %i.j, %bb.d ], [ %.promoted15, %bb.e ]
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %i.p, ptr %i.a, align 16
  %i.q = icmp ult i32 %i.n, 41
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  store ptr %i.r, ptr %i.d, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr i8, ptr %i.f, i64 %i.s
  %i.u = add nuw nsw i32 %i.n, 8                  ; 2 uses
  store i32 %i.u, ptr %4, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi ptr [ %i.m, %bb.h ], [ %i.r, %bb.g ] ; 3 uses
  %i.w = phi i32 [ %i.u, %bb.h ], [ %i.n, %bb.g ] ; 4 uses
  %i.x = phi ptr [ %i.t, %bb.h ], [ %i.m, %bb.g ]
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = icmp ult i32 %i.w, 41
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  store ptr %i.ab, ptr %i.d, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.w, 8                 ; 2 uses
  store i32 %i.ae, ptr %4, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.v, %bb.k ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = phi i32 [ %i.ae, %bb.k ], [ %i.w, %bb.j ] ; 4 uses
  %i.ah = phi ptr [ %i.ad, %bb.k ], [ %i.v, %bb.j ]
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ai, ptr %i.aj, align 16
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %bb.c, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp ult i32 %i.ag, 41
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  store ptr %i.al, ptr %i.d, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr i8, ptr %i.f, i64 %i.am
  %i.ao = add nuw nsw i32 %i.ag, 8                ; 2 uses
  store i32 %i.ao, ptr %4, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = phi ptr [ %i.af, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %i.aq = phi i32 [ %i.ao, %bb.o ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ar = phi ptr [ %i.an, %bb.o ], [ %i.af, %bb.n ]
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.as, ptr %i.at, align 8
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %bb.c, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp ult i32 %i.aq, 41
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.av, ptr %i.d, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = getelementptr i8, ptr %i.f, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.aq, 8
  store i32 %i.ay, ptr %4, align 16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = phi ptr [ %i.ax, %bb.s ], [ %i.ap, %bb.r ]
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ba, ptr %i.bb, align 16
  br label %bb.c

bb.u:                                             ; preds = %bb.a, %bb.c
  %.010 = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_guctype(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PQExpBufferData, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 2 uses
  %i.b = shl i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = tail call ptr @pg_malloc(i64 noundef %i.c) #10 ; 3 uses
  %i.e = load ptr, ptr @pset, align 8
  %i.f = tail call i64 @PQescapeStringConn(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef null) #10 ; 0 uses
  call void @initPQExpBuffer(ptr noundef nonnull %1) #10
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %1, ptr noundef nonnull @.str.2892, ptr noundef %i.d) #10
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = load ptr, ptr @pset, align 8             ; 2 uses
  %i.j = icmp ne ptr %i.i, null
  %or.cond.i = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.b, label %exec_query.exit

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @PQstatus(ptr noundef nonnull %i.i) #10
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %exec_query.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @pset, align 8
  %i.m = call ptr @PQexec(ptr noundef %i.l, ptr noundef nonnull %i.g) #10 ; 3 uses
  %i.n = call i32 @PQresultStatus(ptr noundef %i.m) #10
  %.not10.i = icmp eq i32 %i.n, 2
  br i1 %.not10.i, label %exec_query.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PQclear(ptr noundef %i.m) #10
  br label %exec_query.exit

exec_query.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.07.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  call void @termPQExpBuffer(ptr noundef nonnull %1) #10
  call void @free(ptr noundef %i.d) #10
  %i.o = call i32 @PQresultStatus(ptr noundef %.07.i) #10
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %exec_query.exit
  %i.q = call i32 @PQntuples(ptr noundef %.07.i) #10
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @PQgetvalue(ptr noundef %.07.i, i32 noundef 0, i32 noundef 0) #10
  %i.t = call ptr @pg_strdup(ptr noundef %i.s) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %exec_query.exit
  %.0 = phi ptr [ %i.t, %bb.f ], [ null, %bb.e ], [ null, %exec_query.exit ]
  call void @PQclear(ptr noundef %.07.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare zeroext i1 @recognized_connection_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_or_drop_command_generator(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr @create_or_drop_command_generator.string_length, align 4
  store i32 1, ptr @create_or_drop_command_generator.list_index, align 4
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr @create_or_drop_command_generator.list_index, align 4 ; 3 uses
  %i.d = add i32 %.pre, 1
  store i32 %i.d, ptr @create_or_drop_command_generator.list_index, align 4
  %.not12 = icmp eq i32 %.pre, 51
  br i1 %.not12, label %pg_strdup_keyword_case.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.b
  %.pn.in.ph = phi i32 [ %.pre, %bb.b ], [ 0, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.pn.in = phi i32 [ %.pre16, %bb.i ], [ %.pn.in.ph, %.lr.ph.preheader ]
  %.pn = sext i32 %.pn.in to i64
  %.in = getelementptr inbounds [48 x i8], ptr @words_after_create, i64 %.pn
  %i.e = load ptr, ptr %.in, align 16             ; 2 uses
  %i.f = load i32, ptr @create_or_drop_command_generator.string_length, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = tail call i32 @pg_strncasecmp(ptr noundef %i.e, ptr noundef %0, i64 noundef %i.g) #10
  %i.i = icmp eq i32 %i.h, 0
  %.pre16 = load i32, ptr @create_or_drop_command_generator.list_index, align 4 ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.j = add i32 %.pre16, -1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [48 x i8], ptr @words_after_create, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, %2
  %.not8 = icmp eq i32 %i.o, 0
  br i1 %.not8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.val = load i8, ptr %0, align 1
  %i.p = tail call ptr @pg_strdup(ptr noundef %i.e) #10 ; 8 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i = icmp ult i32 %i.q, 2
  br i1 %or.cond.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__ctype_b_loc() #11
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i8 %.val to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  %i.x = and i16 %i.w, 512
  %.not.i = icmp eq i16 %i.x, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.q, 1
  %i.z = and i16 %i.w, 1024
  %.not18.i = icmp eq i16 %i.z, 0
  %or.cond11.i = and i1 %i.y, %.not18.i
  br i1 %or.cond11.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.aa = load i8, ptr %i.p, align 1              ; 2 uses
  %.not204.i = icmp eq i8 %i.aa, 0
  br i1 %.not204.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.h, %.lr.ph6.i
  %i.ab = phi i8 [ %i.ae, %.lr.ph6.i ], [ %i.aa, %bb.h ]
  %.05.i = phi ptr [ %i.ad, %.lr.ph6.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.ac = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.ab) #10
  store i8 %i.ac, ptr %.05.i, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not20.i = icmp eq i8 %i.ae, 0
  br i1 %.not20.i, label %pg_strdup_keyword_case.exit, label %.lr.ph6.i, !llvm.loop !2

.thread.i:                                        ; preds = %bb.g, %bb.e
  %i.af = load i8, ptr %i.p, align 1              ; 2 uses
  %.not192.i = icmp eq i8 %i.af, 0
  br i1 %.not192.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %i.ag = phi i8 [ %i.aj, %.lr.ph.i ], [ %i.af, %.thread.i ]
  %.13.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.p, %.thread.i ] ; 2 uses
  %i.ah = tail call zeroext i8 @pg_toupper(i8 noundef zeroext %i.ag) #10
  store i8 %i.ah, ptr %.13.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %.not19.i = icmp eq i8 %i.aj, 0
  br i1 %.not19.i, label %pg_strdup_keyword_case.exit, label %.lr.ph.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.c, %.lr.ph
  %i.ak = add i32 %.pre16, 1
  store i32 %i.ak, ptr @create_or_drop_command_generator.list_index, align 4
  %.not = icmp eq i32 %.pre16, 51
  br i1 %.not, label %pg_strdup_keyword_case.exit, label %.lr.ph, !llvm.loop !30

pg_strdup_keyword_case.exit:                      ; preds = %bb.i, %.lr.ph.i, %.lr.ph6.i, %bb.b, %.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.b ], [ %i.p, %bb.h ], [ %i.p, %.lr.ph.i ], [ %i.p, %.thread.i ], [ %i.p, %.lr.ph6.i ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_complete_from_query(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.PQExpBufferData, align 8    ; 32 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = icmp eq i32 %5, 0
  br i1 %i.c, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr @_complete_from_query.list_index, align 4
  store i32 0, ptr @_complete_from_query.num_schema_only, align 4
  store i32 0, ptr @_complete_from_query.num_query_other, align 4
  store i32 0, ptr @_complete_from_query.num_keywords, align 4
  %i.d = load ptr, ptr @_complete_from_query.result, align 8
  tail call void @PQclear(ptr noundef %i.d) #10
  store ptr null, ptr @_complete_from_query.result, align 8
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @pg_strdup(ptr noundef %4) #10 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call fastcc void @parse_identifier(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @_complete_from_query.schemaquoted, ptr noundef nonnull @_complete_from_query.objectquoted)
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %.pre, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ne i8 %i.g, 0
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr @_complete_from_query.non_empty_object, align 1
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #12
  %i.k = shl i64 %i.j, 1
  %i.l = add i64 %i.k, 2
  %i.m = tail call ptr @pg_malloc(i64 noundef %i.l) #10 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %bb.e
  %.018.i = phi ptr [ %i.f, %bb.e ], [ %.220.i, %.loopexit.i ] ; 11 uses
  %.017.i = phi ptr [ %i.m, %bb.e ], [ %.3.i, %.loopexit.i ] ; 5 uses
  %.018.i339 = ptrtoaddr ptr %.018.i to i64
  %i.n = load i8, ptr %.018.i, align 1            ; 2 uses
  switch i8 %i.n, label %bb.h [
    i8 0, label %make_like_pattern.exit
    i8 95, label %bb.g
    i8 37, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  store i8 92, ptr %.017.i, align 1
  %.pr.i = load i8, ptr %.018.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i8 [ %i.n, %bb.f ], [ %.pr.i, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %.017.i, %bb.f ], [ %i.o, %bb.g ] ; 9 uses
  %.1.i338 = ptrtoaddr ptr %.1.i to i64
  %.not23.i = icmp sgt i8 %i.p, -1
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.r = tail call i32 @PQmblenBounded(ptr noundef nonnull %.018.i, i32 noundef %i.q) #10 ; 7 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.i
  %i.t = zext nneg i32 %i.r to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  %i.u = sub i64 %.018.i339, %.1.i338
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond355 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond355, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check340 = icmp ult i32 %i.r, 32
  br i1 %min.iters.check340, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.t, 28
  %n.vec = and i64 %i.t, 2147483616               ; 6 uses
  %i.w = trunc nuw nsw i64 %n.vec to i32
  %i.x = sub nsw i32 %i.r, %i.w
  %i.y = getelementptr i8, ptr %.1.i, i64 %n.vec  ; 2 uses
  %i.z = getelementptr i8, ptr %.018.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1.i, i64 %index ; 2 uses
  %next.gep341 = getelementptr i8, ptr %.018.i, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep341, align 1
  %wide.load342 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load342, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec345 = and i64 %i.t, 2147483644            ; 5 uses
  %i.ad = trunc nuw nsw i64 %n.vec345 to i32
  %i.ae = sub nsw i32 %i.r, %i.ad
  %i.af = getelementptr i8, ptr %.1.i, i64 %n.vec345 ; 2 uses
  %i.ag = getelementptr i8, ptr %.018.i, i64 %n.vec345 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index346 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next350, %vec.epilog.vector.body ] ; 3 uses
  %next.gep347 = getelementptr i8, ptr %.1.i, i64 %index346
  %next.gep348 = getelementptr i8, ptr %.018.i, i64 %index346
  %wide.load349 = load <4 x i8>, ptr %next.gep348, align 1
  store <4 x i8> %wide.load349, ptr %next.gep347, align 1
  %index.next350 = add nuw i64 %index346, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next350, %n.vec345
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n351 = icmp eq i64 %n.vec345, %i.t
  br i1 %cmp.n351, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.ph = phi i32 [ %i.r, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.225.i.ph = phi ptr [ %.1.i, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.11924.i.ph = phi ptr [ %.018.i, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.026.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.225.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11924.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.11924.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ai = add nsw i32 %.026.i, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %.11924.i, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.11924.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.225.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %.225.i, align 1
  %i.am = icmp samesign ugt i32 %.026.i, 1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.p, ptr %.1.i, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.i
  %.220.i = phi ptr [ %i.an, %bb.j ], [ %.018.i, %bb.i ], [ %i.ag, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.aj, %.lr.ph.i ]
  %.3.i = phi ptr [ %i.ao, %bb.j ], [ %.1.i, %bb.i ], [ %i.af, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.al, %.lr.ph.i ]
  br label %bb.f, !llvm.loop !34

make_like_pattern.exit:                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  store i8 37, ptr %.017.i, align 1
  store i8 0, ptr %i.ap, align 1
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #12 ; 2 uses
  %i.ar = shl i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = tail call ptr @pg_malloc(i64 noundef %i.as) #10 ; 6 uses
  %i.au = load ptr, ptr @pset, align 8
  %i.av = tail call i64 @PQescapeStringConn(ptr noundef %i.au, ptr noundef %i.at, ptr noundef nonnull %i.m, i64 noundef %i.aq, ptr noundef null) #10 ; 0 uses
  tail call void @free(ptr noundef %i.m) #10
  %i.aw = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %make_like_pattern.exit
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #12 ; 2 uses
  %i.ay = shl i64 %i.ax, 1
  %i.az = or disjoint i64 %i.ay, 1
  %i.ba = tail call ptr @pg_malloc(i64 noundef %i.az) #10 ; 2 uses
  %i.bb = load ptr, ptr @pset, align 8
  %i.bc = tail call i64 @PQescapeStringConn(ptr noundef %i.bb, ptr noundef %i.ba, ptr noundef nonnull %i.aw, i64 noundef %i.ax, ptr noundef null) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %make_like_pattern.exit, %bb.k
  %.0119 = phi ptr [ %i.ba, %bb.k ], [ null, %make_like_pattern.exit ] ; 2 uses
  %i.bd = load ptr, ptr @completion_ref_object, align 8 ; 3 uses
  %.not145 = icmp eq ptr %i.bd, null
  br i1 %.not145, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #12 ; 2 uses
  %i.bf = shl i64 %i.be, 1
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = tail call ptr @pg_malloc(i64 noundef %i.bg) #10 ; 2 uses
  %i.bi = load ptr, ptr @pset, align 8
  %i.bj = tail call i64 @PQescapeStringConn(ptr noundef %i.bi, ptr noundef %i.bh, ptr noundef nonnull %i.bd, i64 noundef %i.be, ptr noundef null) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0118 = phi ptr [ %i.bh, %bb.m ], [ null, %bb.l ] ; 4 uses
  %i.bk = load ptr, ptr @completion_ref_schema, align 8 ; 3 uses
  %.not146 = icmp eq ptr %i.bk, null
  br i1 %.not146, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #12 ; 2 uses
  %i.bm = shl i64 %i.bl, 1
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = tail call ptr @pg_malloc(i64 noundef %i.bn) #10 ; 2 uses
  %i.bp = load ptr, ptr @pset, align 8
  %i.bq = tail call i64 @PQescapeStringConn(ptr noundef %i.bp, ptr noundef %i.bo, ptr noundef nonnull %i.bk, i64 noundef %i.bl, ptr noundef null) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0117 = phi ptr [ %i.bo, %bb.o ], [ null, %bb.n ] ; 4 uses
  call void @initPQExpBuffer(ptr noundef nonnull %6) #10
  %.not147 = icmp eq ptr %1, null
  br i1 %.not147, label %bb.at, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.2689) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bv = load i8, ptr %i.bu, align 8, !range !9, !noundef !10
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.2690) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2691, ptr noundef %i.by, ptr noundef %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = load ptr, ptr @completion_ref_schema, align 8
  %i.cf = icmp ne ptr %i.ce, null
  %or.cond = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.2692) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.2693) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not151 = icmp eq ptr %i.ch, null
  br i1 %.not151, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2694, ptr noundef nonnull %i.ch) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = load ptr, ptr %i.bx, align 8
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2695, ptr noundef %i.ci, ptr noundef %i.at) #10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not152 = icmp eq ptr %i.ck, null
  br i1 %.not152, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2696, ptr noundef nonnull %i.ck) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not153 = icmp eq ptr %i.cm, null
  br i1 %.not153, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2697, ptr noundef nonnull %i.cm, ptr noundef %.0118) #10
  %i.cn = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.co = icmp ne ptr %i.cn, null
  %i.cp = load ptr, ptr @completion_ref_schema, align 8
  %i.cq = icmp ne ptr %i.cp, null
  %or.cond5 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond5, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2698, ptr noundef nonnull %i.cn, ptr noundef %.0117) #10
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not154 = icmp eq ptr %i.cs, null
  br i1 %.not154, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2696, ptr noundef nonnull %i.cs) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad, %bb.aa
  %i.ct = load ptr, ptr %i.bz, align 8
  %i.cu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(22) @.str.2683) #12
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %sub_0, label %bb.ag

sub_0:                                            ; preds = %bb.af
  %i.cw = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1
  %.not256 = icmp eq i8 %i.cx, 112
  br i1 %.not256, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %.not257 = icmp eq i8 %i.cz, 103
  br i1 %.not257, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = icmp eq i8 %i.db, 95
  br i1 %i.dc, label %bb.ag, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.2700) #10
  br label %bb.ag

bb.ag:                                            ; preds = %.tail.thread, %.tail, %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %.not156 = icmp eq ptr %i.de, null
  br i1 %.not156, label %bb.au, label %sub_0233

sub_0233:                                         ; preds = %bb.ag
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2701, ptr noundef %i.at) #10
  %i.df = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1
  %.not258 = icmp eq i8 %i.dg, 112
  br i1 %.not258, label %sub_1234, label %.tail232.thread

sub_1234:                                         ; preds = %sub_0233
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.di = load i8, ptr %i.dh, align 1
  %.not259 = icmp eq i8 %i.di, 103
  br i1 %.not259, label %.tail232, label %.tail232.thread

.tail232:                                         ; preds = %sub_1234
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 2
end_hunk_2
begin_hunk_3_@_complete_from_query:bb.a

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2697, ptr noundef nonnull %i.ee, ptr noundef %.0118) #10
  %i.ef = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.eg = icmp ne ptr %i.ef, null
  %i.eh = load ptr, ptr @completion_ref_schema, align 8
  %i.ei = icmp ne ptr %i.eh, null
  %or.cond9 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond9, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2698, ptr noundef nonnull %i.ef, ptr noundef %.0117) #10
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not150 = icmp eq ptr %i.ek, null
  br i1 %.not150, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2696, ptr noundef nonnull %i.ek) #10
  br label %bb.au

bb.at:                                            ; preds = %bb.p
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %i.at, ptr noundef %.0118, ptr noundef %.0117) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.ah, %bb.ag, %bb.aq, %bb.as, %bb.ar, %bb.ao, %bb.at
  %.b = load i1, ptr @completion_max_records, align 4
  %i.el = select i1 %.b, i32 1000, i32 0
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.2707, i32 noundef %i.el) #10
  %i.em = load ptr, ptr %6, align 8               ; 2 uses
  %i.en = icmp ne ptr %i.em, null
  %i.eo = load ptr, ptr @pset, align 8            ; 2 uses
  %i.ep = icmp ne ptr %i.eo, null
  %or.cond.i = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond.i, label %bb.av, label %exec_query.exit

bb.av:                                            ; preds = %bb.au
  %i.eq = call i32 @PQstatus(ptr noundef nonnull %i.eo) #10
  %.not.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i, label %bb.aw, label %exec_query.exit

bb.aw:                                            ; preds = %bb.av
  %i.er = load ptr, ptr @pset, align 8
  %i.es = call ptr @PQexec(ptr noundef %i.er, ptr noundef nonnull %i.em) #10 ; 3 uses
  %i.et = call i32 @PQresultStatus(ptr noundef %i.es) #10
  %.not10.i = icmp eq i32 %i.et, 2
  br i1 %.not10.i, label %exec_query.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @PQclear(ptr noundef %i.es) #10
  br label %exec_query.exit

exec_query.exit:                                  ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %.07.i = phi ptr [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.ax ], [ %i.es, %bb.aw ]
  store ptr %.07.i, ptr @_complete_from_query.result, align 8
  call void @termPQExpBuffer(ptr noundef nonnull %6) #10
  call void @free(ptr noundef %i.aw) #10
  %i.eu = load ptr, ptr %i.b, align 8
  call void @free(ptr noundef %i.eu) #10
  call void @free(ptr noundef %i.at) #10
  call void @free(ptr noundef %.0119) #10
  call void @free(ptr noundef %.0118) #10
  call void @free(ptr noundef %.0117) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ay

bb.ay:                                            ; preds = %exec_query.exit, %bb.a
  %i.ev = load ptr, ptr @_complete_from_query.result, align 8 ; 2 uses
  %.not158 = icmp eq ptr %i.ev, null
  br i1 %.not158, label %.thread225, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ew = call i32 @PQresultStatus(ptr noundef nonnull %i.ev) #10
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %.preheader241, label %.thread225

.preheader241:                                    ; preds = %bb.az
  %i.ey = load i32, ptr @_complete_from_query.list_index, align 4
  %i.ez = load ptr, ptr @_complete_from_query.result, align 8
  %i.fa = call i32 @PQntuples(ptr noundef %i.ez) #10
  %i.fb = icmp slt i32 %i.ey, %i.fa
  br i1 %i.fb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader241
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.fc = load ptr, ptr @_complete_from_query.result, align 8
  %i.fd = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fe = call i32 @PQgetisnull(ptr noundef %i.fc, i32 noundef %i.fd, i32 noundef 0) #10
  %.not164.us = icmp eq i32 %i.fe, 0
  br i1 %.not164.us, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.split.us
  %i.ff = load ptr, ptr @_complete_from_query.result, align 8
  %i.fg = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fh = call ptr @PQgetvalue(ptr noundef %i.ff, i32 noundef %i.fg, i32 noundef 0) #10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.split.us
  %.0112.us = phi ptr [ null, %.lr.ph.split.us ], [ %i.fh, %bb.ba ]
  %i.fi = load ptr, ptr @_complete_from_query.result, align 8
  %i.fj = call i32 @PQnfields(ptr noundef %i.fi) #10
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.bc, label %.split.us

bb.bc:                                            ; preds = %bb.bb
  %i.fl = load ptr, ptr @_complete_from_query.result, align 8
  %i.fm = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fn = call i32 @PQgetisnull(ptr noundef %i.fl, i32 noundef %i.fm, i32 noundef 1) #10
  %.not165.us = icmp eq i32 %i.fn, 0
  br i1 %.not165.us, label %bb.bd, label %.split.us

bb.bd:                                            ; preds = %bb.bc
  %i.fo = load ptr, ptr @_complete_from_query.result, align 8
  %i.fp = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fq = call ptr @PQgetvalue(ptr noundef %i.fo, i32 noundef %i.fp, i32 noundef 1) #10 ; 0 uses
  br label %.split.us

.split.us:                                        ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.fr = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_complete_from_query.list_index, align 4
  %i.ft = load i32, ptr @_complete_from_query.num_query_other, align 4
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr @_complete_from_query.num_query_other, align 4
  %i.fv = call ptr @pg_strdup(ptr noundef %.0112.us) #10
  br label %.thread222

.lr.ph.split:                                     ; preds = %.lr.ph, %identifier_needs_quotes.exit.thread
  %i.fw = load ptr, ptr @_complete_from_query.result, align 8
  %i.fx = load i32, ptr @_complete_from_query.list_index, align 4
  %i.fy = call i32 @PQgetisnull(ptr noundef %i.fw, i32 noundef %i.fx, i32 noundef 0) #10
  %.not164 = icmp eq i32 %i.fy, 0
  br i1 %.not164, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.split
  %i.fz = load ptr, ptr @_complete_from_query.result, align 8
  %i.ga = load i32, ptr @_complete_from_query.list_index, align 4
  %i.gb = call ptr @PQgetvalue(ptr noundef %i.fz, i32 noundef %i.ga, i32 noundef 0) #10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.split
  %.0112 = phi ptr [ null, %.lr.ph.split ], [ %i.gb, %bb.be ] ; 13 uses
  %i.gc = load ptr, ptr @_complete_from_query.result, align 8
  %i.gd = call i32 @PQnfields(ptr noundef %i.gc) #10
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gf = load ptr, ptr @_complete_from_query.result, align 8
  %i.gg = load i32, ptr @_complete_from_query.list_index, align 4
  %i.gh = call i32 @PQgetisnull(ptr noundef %i.gf, i32 noundef %i.gg, i32 noundef 1) #10
  %.not165 = icmp eq i32 %i.gh, 0
  br i1 %.not165, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gi = load ptr, ptr @_complete_from_query.result, align 8
  %i.gj = load i32, ptr @_complete_from_query.list_index, align 4
  %i.gk = call ptr @PQgetvalue(ptr noundef %i.gi, i32 noundef %i.gj, i32 noundef 1) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0111 = phi ptr [ null, %bb.bg ], [ %i.gk, %bb.bh ], [ null, %bb.bf ] ; 15 uses
  %i.gl = load i32, ptr @_complete_from_query.list_index, align 4
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr @_complete_from_query.list_index, align 4
  %i.gn = load i8, ptr @_complete_from_query.non_empty_object, align 1, !range !9, !noundef !10
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bj, label %identifier_needs_quotes.exit175

bb.bj:                                            ; preds = %bb.bi
  %i.gp = icmp eq ptr %.0112, null
  %i.gq = load i8, ptr @_complete_from_query.objectquoted, align 1, !range !9
  %i.gr = trunc nuw i8 %i.gq to i1
  %or.cond11 = select i1 %i.gp, i1 true, i1 %i.gr
  br i1 %or.cond11, label %identifier_needs_quotes.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gs = load i8, ptr %.0112, align 1            ; 2 uses
  %i.gt = add i8 %i.gs, -97
  %or.cond.i167 = icmp ult i8 %i.gt, 26
  %i.gu = icmp eq i8 %i.gs, 95
  %or.cond11.i = or i1 %i.gu, %or.cond.i167
  br i1 %or.cond11.i, label %bb.bl, label %identifier_needs_quotes.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.gv = call i64 @strspn(ptr noundef nonnull %.0112, ptr noundef nonnull @.str.2708) #12
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0112) #12
  %.not.i168 = icmp eq i64 %i.gv, %i.gw
  br i1 %.not.i168, label %bb.bm, label %identifier_needs_quotes.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gx = call i32 @ScanKeywordLookup(ptr noundef nonnull %.0112, ptr noundef nonnull @ScanKeywords) #10 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.bn, label %identifier_needs_quotes.exit, !llvm.loop !35

bb.bn:                                            ; preds = %bb.bm
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw i8, ptr @ScanKeywordCategories, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1
  %.not10.i169 = icmp eq i8 %i.hb, 0
  br i1 %.not10.i169, label %identifier_needs_quotes.exit, label %identifier_needs_quotes.exit.thread, !llvm.loop !35

identifier_needs_quotes.exit:                     ; preds = %bb.bn, %bb.bm, %bb.bj
  %i.hc = icmp eq ptr %.0111, null
  %i.hd = load i8, ptr @_complete_from_query.schemaquoted, align 1, !range !9
  %i.he = trunc nuw i8 %i.hd to i1
  %or.cond13 = select i1 %i.hc, i1 true, i1 %i.he
  br i1 %or.cond13, label %identifier_needs_quotes.exit175, label %bb.bo

bb.bo:                                            ; preds = %identifier_needs_quotes.exit
  %i.hf = load i8, ptr %.0111, align 1            ; 2 uses
  %i.hg = add i8 %i.hf, -97
  %or.cond.i170 = icmp ult i8 %i.hg, 26
  %i.hh = icmp eq i8 %i.hf, 95
  %or.cond11.i171 = or i1 %i.hh, %or.cond.i170
  br i1 %or.cond11.i171, label %bb.bp, label %identifier_needs_quotes.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.hi = call i64 @strspn(ptr noundef nonnull %.0111, ptr noundef nonnull @.str.2708) #12
  %i.hj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111) #12
  %.not.i173 = icmp eq i64 %i.hi, %i.hj
  br i1 %.not.i173, label %bb.bq, label %identifier_needs_quotes.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.hk = call i32 @ScanKeywordLookup(ptr noundef nonnull %.0111, ptr noundef nonnull @ScanKeywords) #10 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %bb.br, label %identifier_needs_quotes.exit175, !llvm.loop !35

bb.br:                                            ; preds = %bb.bq
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @ScanKeywordCategories, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %.not10.i174 = icmp eq i8 %i.ho, 0
  br i1 %.not10.i174, label %identifier_needs_quotes.exit175, label %identifier_needs_quotes.exit.thread, !llvm.loop !35

identifier_needs_quotes.exit175:                  ; preds = %bb.br, %bb.bq, %identifier_needs_quotes.exit, %bb.bi
  %i.hp = icmp eq ptr %.0112, null                ; 3 uses
  %i.hq = icmp ne ptr %.0111, null
  %or.cond15 = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %or.cond15, label %.thread, label %bb.bs

.thread:                                          ; preds = %identifier_needs_quotes.exit175
  %i.hr = load i32, ptr @_complete_from_query.num_schema_only, align 4
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr @_complete_from_query.num_schema_only, align 4
  %i.ht = load i8, ptr @_complete_from_query.schemaquoted, align 1, !range !9, !noundef !10
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = load i8, ptr @_complete_from_query.objectquoted, align 1, !range !9, !noundef !10
  %i.hw = trunc nuw i8 %i.hv to i1                ; 2 uses
  %i.hx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111) #12 ; 2 uses
  br i1 %i.hu, label %.thread.i, label %bb.bu

bb.bs:                                            ; preds = %identifier_needs_quotes.exit175
  %i.hy = load i32, ptr @_complete_from_query.num_query_other, align 4
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_complete_from_query.num_query_other, align 4
  %i.ia = load i8, ptr @_complete_from_query.schemaquoted, align 1, !range !9, !noundef !10
  %i.ib = trunc nuw i8 %i.ia to i1                ; 2 uses
  %i.ic = load i8, ptr @_complete_from_query.objectquoted, align 1, !range !9, !noundef !10
  %i.id = trunc nuw i8 %i.ic to i1                ; 3 uses
  %.not.i176 = icmp eq ptr %.0111, null
  br i1 %.not.i176, label %.loopexit95.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ie = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111) #12 ; 2 uses
  br i1 %i.ib, label %.thread.i, label %bb.bu

bb.bu:                                            ; preds = %.thread, %bb.bt
  %i.if = phi i64 [ %i.hx, %.thread ], [ %i.ie, %bb.bt ] ; 5 uses
  %i.ig = phi i1 [ %i.hw, %.thread ], [ %i.id, %bb.bt ] ; 5 uses
  %i.ih = add i64 %i.if, 2                        ; 2 uses
  %i.ii = load i8, ptr %.0111, align 1            ; 2 uses
  %i.ij = add i8 %i.ii, -97
  %or.cond.i.i = icmp ult i8 %i.ij, 26
  %i.ik = icmp eq i8 %i.ii, 95
  %or.cond11.i.i = or i1 %i.ik, %or.cond.i.i
  br i1 %or.cond11.i.i, label %bb.bv, label %.thread.i

bb.bv:                                            ; preds = %bb.bu
  %i.il = call i64 @strspn(ptr noundef nonnull %.0111, ptr noundef nonnull @.str.2708) #12
  %.not.i.i = icmp eq i64 %i.il, %i.if
  br i1 %.not.i.i, label %bb.bw, label %.thread.i

bb.bw:                                            ; preds = %bb.bv
  %i.im = call i32 @ScanKeywordLookup(ptr noundef nonnull %.0111, ptr noundef nonnull @ScanKeywords) #10 ; 2 uses
  %i.in = icmp sgt i32 %i.im, -1
  br i1 %i.in, label %bb.bx, label %.loopexit95.i

bb.bx:                                            ; preds = %bb.bw
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = getelementptr inbounds nuw i8, ptr @ScanKeywordCategories, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1
  %.not10.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not10.i.i, label %.loopexit95.i, label %.thread.i

.thread.i:                                        ; preds = %.thread, %bb.bx, %bb.bv, %bb.bu, %bb.bt
  %i.ir = phi i64 [ %i.hx, %.thread ], [ %i.if, %bb.bx ], [ %i.if, %bb.bv ], [ %i.if, %bb.bu ], [ %i.ie, %bb.bt ]
  %i.is = phi i1 [ %i.hw, %.thread ], [ %i.ig, %bb.bx ], [ %i.ig, %bb.bv ], [ %i.ig, %bb.bu ], [ %i.id, %bb.bt ]
  %i.it = add i64 %i.ir, 4
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.thread.i
  %.056.i = phi i64 [ %i.it, %.thread.i ], [ %.157.i, %bb.ca ] ; 3 uses
  %.054.i = phi ptr [ %.0111, %.thread.i ], [ %i.iw, %bb.ca ] ; 2 uses
  %i.iu = load i8, ptr %.054.i, align 1
  switch i8 %i.iu, label %bb.ca [
    i8 0, label %.loopexit95.i
    i8 34, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by
  %i.iv = add i64 %.056.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.157.i = phi i64 [ %i.iv, %bb.bz ], [ %.056.i, %bb.by ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.054.i, i64 1
  br label %bb.by, !llvm.loop !36

.loopexit95.i:                                    ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bs
  %.not.i176205 = phi i1 [ true, %bb.bs ], [ false, %bb.bx ], [ false, %bb.bw ], [ false, %bb.by ]
  %i.ix = phi i1 [ %i.id, %bb.bs ], [ %i.ig, %bb.bx ], [ %i.ig, %bb.bw ], [ %i.is, %bb.by ] ; 2 uses
  %.165.i = phi i1 [ %i.ib, %bb.bs ], [ false, %bb.bx ], [ false, %bb.bw ], [ true, %bb.by ] ; 2 uses
  %.258.i = phi i64 [ 1, %bb.bs ], [ %i.ih, %bb.bx ], [ %i.ih, %bb.bw ], [ %.056.i, %bb.by ] ; 2 uses
  br i1 %i.hp, label %.loopexit.i177, label %bb.cb

bb.cb:                                            ; preds = %.loopexit95.i
  %i.iy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0112) #12 ; 2 uses
  %i.iz = add i64 %i.iy, %.258.i                  ; 3 uses
  br i1 %i.ix, label %.thread89.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = load i8, ptr %.0112, align 1            ; 2 uses
  %i.jb = add i8 %i.ja, -97
  %or.cond.i79.i = icmp ult i8 %i.jb, 26
  %i.jc = icmp eq i8 %i.ja, 95
  %or.cond11.i80.i = or i1 %i.jc, %or.cond.i79.i
  br i1 %or.cond11.i80.i, label %bb.cd, label %.thread89.i

bb.cd:                                            ; preds = %bb.cc
  %i.jd = call i64 @strspn(ptr noundef nonnull %.0112, ptr noundef nonnull @.str.2708) #12
  %.not.i82.i = icmp eq i64 %i.jd, %i.iy
  br i1 %.not.i82.i, label %bb.ce, label %.thread89.i

bb.ce:                                            ; preds = %bb.cd
  %i.je = call i32 @ScanKeywordLookup(ptr noundef nonnull %.0112, ptr noundef nonnull @ScanKeywords) #10 ; 2 uses
  %i.jf = icmp sgt i32 %i.je, -1
  br i1 %i.jf, label %bb.cf, label %.loopexit.i177

bb.cf:                                            ; preds = %bb.ce
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw i8, ptr @ScanKeywordCategories, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1
  %.not10.i83.i = icmp eq i8 %i.ji, 0
  br i1 %.not10.i83.i, label %.loopexit.i177, label %.thread89.i

.thread89.i:                                      ; preds = %bb.cf, %bb.cd, %bb.cc, %bb.cb
  %i.jj = add i64 %i.iz, 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %.thread89.i
  %.359.i = phi i64 [ %i.jj, %.thread89.i ], [ %.460.i, %bb.ci ] ; 3 uses
  %.053.i = phi ptr [ %.0112, %.thread89.i ], [ %i.jm, %bb.ci ] ; 2 uses
  %i.jk = load i8, ptr %.053.i, align 1
  switch i8 %i.jk, label %bb.ci [
    i8 0, label %.loopexit.i177
    i8 34, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.jl = add i64 %.359.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.460.i = phi i64 [ %i.jl, %bb.ch ], [ %.359.i, %bb.cg ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.053.i, i64 1
  br label %bb.cg, !llvm.loop !37

.loopexit.i177:                                   ; preds = %bb.cg, %bb.cf, %bb.ce, %.loopexit95.i
  %.163.i = phi i1 [ %i.ix, %.loopexit95.i ], [ false, %bb.cf ], [ false, %bb.ce ], [ true, %bb.cg ] ; 2 uses
  %.561.i = phi i64 [ %.258.i, %.loopexit95.i ], [ %i.iz, %bb.cf ], [ %i.iz, %bb.ce ], [ %.359.i, %bb.cg ]
  %i.jn = call ptr @pg_malloc(i64 noundef %.561.i) #10 ; 5 uses
  br i1 %.not.i176205, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %.loopexit.i177
  br i1 %.165.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store i8 34, ptr %i.jn, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.055.i = phi ptr [ %i.jo, %bb.ck ], [ %i.jn, %bb.cj ] ; 2 uses
  %i.jp = load i8, ptr %.0111, align 1            ; 2 uses
  %.not7796.i = icmp eq i8 %i.jp, 0
  br i1 %.not7796.i, label %._crit_edge.i, label %.lr.ph.i178

._crit_edge.i:                                    ; preds = %bb.cn, %bb.cl
  %.1.lcssa.i = phi ptr [ %.055.i, %bb.cl ], [ %.2.i, %bb.cn ] ; 3 uses
  br i1 %.165.i, label %bb.co, label %bb.cp

.lr.ph.i178:                                      ; preds = %bb.cl, %bb.cn
  %i.jq = phi i8 [ %i.jw, %bb.cn ], [ %i.jp, %bb.cl ]
  %.05298.i = phi ptr [ %i.jv, %bb.cn ], [ %.0111, %bb.cl ] ; 2 uses
  %.197.i = phi ptr [ %.2.i, %bb.cn ], [ %.055.i, %bb.cl ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.197.i, i64 1 ; 2 uses
  store i8 %i.jq, ptr %.197.i, align 1
  %i.js = load i8, ptr %.05298.i, align 1
  %i.jt = icmp eq i8 %i.js, 34
  br i1 %i.jt, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i178
  %i.ju = getelementptr inbounds nuw i8, ptr %.197.i, i64 2
  store i8 34, ptr %i.jr, align 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i178
  %.2.i = phi ptr [ %i.ju, %bb.cm ], [ %i.jr, %.lr.ph.i178 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.05298.i, i64 1 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1             ; 2 uses
  %.not77.i = icmp eq i8 %i.jw, 0
  br i1 %.not77.i, label %._crit_edge.i, label %.lr.ph.i178, !llvm.loop !38

bb.co:                                            ; preds = %._crit_edge.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
  store i8 34, ptr %.1.lcssa.i, align 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge.i
  %.3.i179 = phi ptr [ %i.jx, %bb.co ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.3.i179, i64 1
  store i8 46, ptr %.3.i179, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit.i177
  %.4.i = phi ptr [ %i.jy, %bb.cp ], [ %i.jn, %.loopexit.i177 ] ; 4 uses
  br i1 %i.hp, label %requote_identifier.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br i1 %.163.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.jz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 34, ptr %.4.i, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.5.i = phi ptr [ %i.jz, %bb.cs ], [ %.4.i, %bb.cr ] ; 2 uses
  %i.ka = load i8, ptr %.0112, align 1            ; 2 uses
  %.not7899.i = icmp eq i8 %i.ka, 0
  br i1 %.not7899.i, label %._crit_edge104.i, label %.lr.ph103.i

._crit_edge104.i:                                 ; preds = %bb.cv, %bb.ct
  %.6.lcssa.i = phi ptr [ %.5.i, %bb.ct ], [ %.7.i, %bb.cv ] ; 3 uses
  br i1 %.163.i, label %bb.cw, label %requote_identifier.exit

.lr.ph103.i:                                      ; preds = %bb.ct, %bb.cv
  %i.kb = phi i8 [ %i.kh, %bb.cv ], [ %i.ka, %bb.ct ]
  %.0101.i = phi ptr [ %i.kg, %bb.cv ], [ %.0112, %bb.ct ] ; 2 uses
  %.6100.i = phi ptr [ %.7.i, %bb.cv ], [ %.5.i, %bb.ct ] ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.6100.i, i64 1 ; 2 uses
  store i8 %i.kb, ptr %.6100.i, align 1
  %i.kd = load i8, ptr %.0101.i, align 1
  %i.ke = icmp eq i8 %i.kd, 34
  br i1 %i.ke, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.lr.ph103.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.6100.i, i64 2
  store i8 34, ptr %i.kc, align 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph103.i
  %.7.i = phi ptr [ %i.kf, %bb.cu ], [ %i.kc, %.lr.ph103.i ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0101.i, i64 1 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1             ; 2 uses
  %.not78.i = icmp eq i8 %i.kh, 0
  br i1 %.not78.i, label %._crit_edge104.i, label %.lr.ph103.i, !llvm.loop !39

bb.cw:                                            ; preds = %._crit_edge104.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.6.lcssa.i, i64 1
  store i8 34, ptr %.6.lcssa.i, align 1
  br label %requote_identifier.exit

requote_identifier.exit:                          ; preds = %bb.cq, %._crit_edge104.i, %bb.cw
  %.8.i = phi ptr [ %i.ki, %bb.cw ], [ %.6.lcssa.i, %._crit_edge104.i ], [ %.4.i, %bb.cq ]
  store i8 0, ptr %.8.i, align 1
  br label %.thread222

identifier_needs_quotes.exit.thread:              ; preds = %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %i.kj = load i32, ptr @_complete_from_query.list_index, align 4
  %i.kk = load ptr, ptr @_complete_from_query.result, align 8
  %i.kl = call i32 @PQntuples(ptr noundef %i.kk) #10
  %i.km = icmp slt i32 %i.kj, %i.kl
  br i1 %i.km, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %identifier_needs_quotes.exit.thread, %.preheader241
  %i.kn = load i32, ptr @_complete_from_query.list_index, align 4
  %i.ko = load ptr, ptr @_complete_from_query.result, align 8
  %i.kp = call i32 @PQntuples(ptr noundef %i.ko) #10
  %i.kq = sub i32 %i.kn, %i.kp                    ; 4 uses
  %.not159 = icmp eq ptr %1, null
  br i1 %.not159, label %.thread214, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8            ; 3 uses
  %.not160 = icmp eq ptr %i.ks, null
  br i1 %.not160, label %.thread214, label %.preheader240

.preheader240:                                    ; preds = %bb.cx
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %.not161248 = icmp eq ptr %i.kt, null
  br i1 %.not161248, label %.thread214, label %.lr.ph251

.lr.ph251:                                        ; preds = %.preheader240, %pg_strdup_keyword_case.exit
  %i.ku = phi ptr [ %i.ma, %pg_strdup_keyword_case.exit ], [ %i.kt, %.preheader240 ] ; 2 uses
  %.0109250 = phi ptr [ %i.kv, %pg_strdup_keyword_case.exit ], [ %i.ks, %.preheader240 ]
  %.0113249 = phi i32 [ %i.kw, %pg_strdup_keyword_case.exit ], [ %i.kq, %.preheader240 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0109250, i64 8 ; 2 uses
  %i.kw = add i32 %.0113249, -1                   ; 2 uses
  %i.kx = icmp sgt i32 %.0113249, 0
  br i1 %i.kx, label %pg_strdup_keyword_case.exit, label %bb.cy, !llvm.loop !40

bb.cy:                                            ; preds = %.lr.ph251
  %i.ky = load i32, ptr @_complete_from_query.list_index, align 4
  %i.kz = add i32 %i.ky, 1
  store i32 %i.kz, ptr @_complete_from_query.list_index, align 4
  %i.la = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %i.lb = call i32 @pg_strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull %i.ku, i64 noundef %i.la) #10
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.cz, label %pg_strdup_keyword_case.exit

bb.cz:                                            ; preds = %bb.cy
  %i.ld = load i32, ptr @_complete_from_query.num_keywords, align 4
  %i.le = add i32 %i.ld, 1
  store i32 %i.le, ptr @_complete_from_query.num_keywords, align 4
  %.val166 = load i8, ptr %4, align 1
  %i.lf = call ptr @pg_strdup(ptr noundef nonnull %i.ku) #10 ; 8 uses
  %i.lg = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.lh = icmp eq i32 %i.lg, 3
  br i1 %i.lh, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %or.cond.i180 = icmp ult i32 %i.lg, 2
  br i1 %or.cond.i180, label %bb.db, label %.thread.i181

bb.db:                                            ; preds = %bb.da
  %i.li = tail call ptr @__ctype_b_loc() #11
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = zext i8 %.val166 to i64
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2            ; 2 uses
  %i.ln = and i16 %i.lm, 512
  %.not.i184 = icmp eq i16 %i.ln, 0
  br i1 %.not.i184, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.lo = icmp eq i32 %i.lg, 1
  %i.lp = and i16 %i.lm, 1024
  %.not18.i = icmp eq i16 %i.lp, 0
  %or.cond11.i185 = and i1 %i.lo, %.not18.i
  br i1 %or.cond11.i185, label %bb.dd, label %.thread.i181

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cz
  %i.lq = load i8, ptr %i.lf, align 1             ; 2 uses
  %.not204.i = icmp eq i8 %i.lq, 0
  br i1 %.not204.i, label %.thread222, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.dd, %.lr.ph6.i
  %i.lr = phi i8 [ %i.lu, %.lr.ph6.i ], [ %i.lq, %bb.dd ]
  %.05.i = phi ptr [ %i.lt, %.lr.ph6.i ], [ %i.lf, %bb.dd ] ; 2 uses
  %i.ls = call zeroext i8 @pg_tolower(i8 noundef zeroext %i.lr) #10
  store i8 %i.ls, ptr %.05.i, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1             ; 2 uses
  %.not20.i = icmp eq i8 %i.lu, 0
  br i1 %.not20.i, label %.thread222, label %.lr.ph6.i, !llvm.loop !2

.thread.i181:                                     ; preds = %bb.dc, %bb.da
  %i.lv = load i8, ptr %i.lf, align 1             ; 2 uses
  %.not192.i = icmp eq i8 %i.lv, 0
  br i1 %.not192.i, label %.thread222, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.thread.i181, %.lr.ph.i182
  %i.lw = phi i8 [ %i.lz, %.lr.ph.i182 ], [ %i.lv, %.thread.i181 ]
  %.13.i = phi ptr [ %i.ly, %.lr.ph.i182 ], [ %i.lf, %.thread.i181 ] ; 2 uses
  %i.lx = call zeroext i8 @pg_toupper(i8 noundef zeroext %i.lw) #10
  store i8 %i.lx, ptr %.13.i, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.13.i, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1             ; 2 uses
  %.not19.i = icmp eq i8 %i.lz, 0
  br i1 %.not19.i, label %.thread222, label %.lr.ph.i182, !llvm.loop !3

pg_strdup_keyword_case.exit:                      ; preds = %bb.cy, %.lr.ph251
  %i.ma = load ptr, ptr %i.kv, align 8            ; 2 uses
  %.not161 = icmp eq ptr %i.ma, null
  br i1 %.not161, label %.thread214, label %.lr.ph251

.thread214:                                       ; preds = %pg_strdup_keyword_case.exit, %.preheader240, %bb.cx, %._crit_edge
  %.2115 = phi i32 [ %i.kq, %._crit_edge ], [ %i.kq, %bb.cx ], [ %i.kq, %.preheader240 ], [ %i.kw, %pg_strdup_keyword_case.exit ]
  %.not162 = icmp eq ptr %2, null
  br i1 %.not162, label %.thread225, label %.preheader

.preheader:                                       ; preds = %.thread214
  %i.mb = load ptr, ptr %2, align 8               ; 2 uses
  %.not163252 = icmp eq ptr %i.mb, null
  br i1 %.not163252, label %.thread225, label %.lr.ph255

.lr.ph255:                                        ; preds = %.preheader, %pg_strdup_keyword_case.exit200
  %i.mc = phi ptr [ %i.ni, %pg_strdup_keyword_case.exit200 ], [ %i.mb, %.preheader ] ; 2 uses
  %.0254 = phi ptr [ %i.md, %pg_strdup_keyword_case.exit200 ], [ %2, %.preheader ]
  %.3116253 = phi i32 [ %i.me, %pg_strdup_keyword_case.exit200 ], [ %.2115, %.preheader ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0254, i64 8 ; 2 uses
  %i.me = add i32 %.3116253, -1
  %i.mf = icmp sgt i32 %.3116253, 0
  br i1 %i.mf, label %pg_strdup_keyword_case.exit200, label %bb.de, !llvm.loop !41

bb.de:                                            ; preds = %.lr.ph255
  %i.mg = load i32, ptr @_complete_from_query.list_index, align 4
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr @_complete_from_query.list_index, align 4
  %i.mi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %i.mj = call i32 @pg_strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull %i.mc, i64 noundef %i.mi) #10
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.df, label %pg_strdup_keyword_case.exit200

bb.df:                                            ; preds = %bb.de
  %i.ml = load i32, ptr @_complete_from_query.num_keywords, align 4
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr @_complete_from_query.num_keywords, align 4
  %.val = load i8, ptr %4, align 1
  %i.mn = call ptr @pg_strdup(ptr noundef nonnull %i.mc) #10 ; 8 uses
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 476), align 4 ; 3 uses
  %i.mp = icmp eq i32 %i.mo, 3
  br i1 %i.mp, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %or.cond.i186 = icmp ult i32 %i.mo, 2
  br i1 %or.cond.i186, label %bb.dh, label %.thread.i187

bb.dh:                                            ; preds = %bb.dg
  %i.mq = tail call ptr @__ctype_b_loc() #11
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = zext i8 %.val to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2            ; 2 uses
  %i.mv = and i16 %i.mu, 512
  %.not.i193 = icmp eq i16 %i.mv, 0
  br i1 %.not.i193, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.mw = icmp eq i32 %i.mo, 1
  %i.mx = and i16 %i.mu, 1024
  %.not18.i198 = icmp eq i16 %i.mx, 0
  %or.cond11.i199 = and i1 %i.mw, %.not18.i198
  br i1 %or.cond11.i199, label %bb.dj, label %.thread.i187

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.df
  %i.my = load i8, ptr %i.mn, align 1             ; 2 uses
  %.not204.i194 = icmp eq i8 %i.my, 0
  br i1 %.not204.i194, label %.thread222, label %.lr.ph6.i195

.lr.ph6.i195:                                     ; preds = %bb.dj, %.lr.ph6.i195
  %i.mz = phi i8 [ %i.nc, %.lr.ph6.i195 ], [ %i.my, %bb.dj ]
  %.05.i196 = phi ptr [ %i.nb, %.lr.ph6.i195 ], [ %i.mn, %bb.dj ] ; 2 uses
  %i.na = call zeroext i8 @pg_tolower(i8 noundef zeroext %i.mz) #10
  store i8 %i.na, ptr %.05.i196, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i196, i64 1 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1             ; 2 uses
  %.not20.i197 = icmp eq i8 %i.nc, 0
  br i1 %.not20.i197, label %.thread222, label %.lr.ph6.i195, !llvm.loop !2

.thread.i187:                                     ; preds = %bb.di, %bb.dg
  %i.nd = load i8, ptr %i.mn, align 1             ; 2 uses
  %.not192.i188 = icmp eq i8 %i.nd, 0
  br i1 %.not192.i188, label %.thread222, label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %.thread.i187, %.lr.ph.i189
  %i.ne = phi i8 [ %i.nh, %.lr.ph.i189 ], [ %i.nd, %.thread.i187 ]
  %.13.i190 = phi ptr [ %i.ng, %.lr.ph.i189 ], [ %i.mn, %.thread.i187 ] ; 2 uses
  %i.nf = call zeroext i8 @pg_toupper(i8 noundef zeroext %i.ne) #10
  store i8 %i.nf, ptr %.13.i190, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.13.i190, i64 1 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1             ; 2 uses
  %.not19.i191 = icmp eq i8 %i.nh, 0
  br i1 %.not19.i191, label %.thread222, label %.lr.ph.i189, !llvm.loop !3

pg_strdup_keyword_case.exit200:                   ; preds = %bb.de, %.lr.ph255
  %i.ni = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not163 = icmp eq ptr %i.ni, null
  br i1 %.not163, label %.thread225, label %.lr.ph255

.thread225:                                       ; preds = %pg_strdup_keyword_case.exit200, %.preheader, %.thread214, %bb.az, %bb.ay
  %i.nj = load i32, ptr @_complete_from_query.num_schema_only, align 4
  %i.nk = icmp sgt i32 %i.nj, 0
  %i.nl = load i32, ptr @_complete_from_query.num_query_other, align 4
  %i.nm = icmp eq i32 %i.nl, 0
  %or.cond17 = select i1 %i.nk, i1 %i.nm, i1 false
  %i.nn = load i32, ptr @_complete_from_query.num_keywords, align 4
  %i.no = icmp eq i32 %i.nn, 0
  %or.cond19 = select i1 %or.cond17, i1 %i.no, i1 false
  br i1 %or.cond19, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.thread225
  store i32 0, ptr @rl_completion_append_character, align 4
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.thread225
  %i.np = load ptr, ptr @_complete_from_query.result, align 8
  call void @PQclear(ptr noundef %i.np) #10
  store ptr null, ptr @_complete_from_query.result, align 8
  br label %.thread222

.thread222:                                       ; preds = %.lr.ph.i182, %.lr.ph6.i, %.lr.ph.i189, %.lr.ph6.i195, %.thread.i187, %bb.dj, %requote_identifier.exit, %.split.us, %.thread.i181, %bb.dd, %bb.dl
  %.11 = phi ptr [ null, %bb.dl ], [ %i.fv, %.split.us ], [ %i.lf, %.lr.ph6.i ], [ %i.lf, %.thread.i181 ], [ %i.mn, %.lr.ph.i189 ], [ %i.lf, %bb.dd ], [ %i.jn, %requote_identifier.exit ], [ %i.mn, %bb.dj ], [ %i.mn, %.lr.ph6.i195 ], [ %i.mn, %.thread.i187 ], [ %i.lf, %.lr.ph.i182 ]
  ret ptr %.11
}

declare void @PQclear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_identifier(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef captures(none) initializes((0, 1)) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.d = tail call i32 @pg_encoding_max_length(i32 noundef %i.c) #10
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  %i.f = tail call ptr @pg_malloc(i64 noundef %i.b) #10 ; 4 uses
  store i8 0, ptr %4, align 1
  store i8 0, ptr %3, align 1
  %i.g = load i8, ptr %0, align 1                 ; 2 uses
  %.not76 = icmp eq i8 %i.g, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %.not70 = xor i1 %i.e, true
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.loopexit
  %i.h = phi i8 [ %i.g, %.lr.ph82 ], [ %i.bg, %.loopexit ] ; 10 uses
  %.081 = phi ptr [ %0, %.lr.ph82 ], [ %.2, %.loopexit ] ; 4 uses
  %.05480 = phi i8 [ 0, %.lr.ph82 ], [ %.155, %.loopexit ] ; 8 uses
  %.05679 = phi ptr [ %i.f, %.lr.ph82 ], [ %.258, %.loopexit ] ; 9 uses
  %.05978 = phi ptr [ %i.f, %.lr.ph82 ], [ %.160, %.loopexit ] ; 8 uses
  %.06177 = phi ptr [ null, %.lr.ph82 ], [ %.162, %.loopexit ] ; 8 uses
  %.0567989 = ptrtoaddr ptr %.05679 to i64
  %.08190 = ptrtoaddr ptr %.081 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.081, i64 1 ; 10 uses
  %i.j = icmp eq i8 %i.h, 34
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw i8 %.05480 to i1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.i, align 1
  %i.m = icmp eq i8 %i.l, 34
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.05679, i64 1
  store i8 34, ptr %.05679, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.081, i64 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = xor i8 %.05480, 1
  store i8 1, ptr %4, align 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.q = icmp ne i8 %i.h, 46
  %i.r = trunc nuw i8 %.05480 to i1               ; 2 uses
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %.05679, align 1
  tail call void @free(ptr noundef %.06177) #10
  %i.s = tail call ptr @pg_malloc(i64 noundef %i.b) #10 ; 2 uses
  %i.t = load i8, ptr %4, align 1, !range !9, !noundef !10
  store i8 %i.t, ptr %3, align 1
  store i8 0, ptr %4, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %.not66 = icmp sgt i8 %i.h, -1                  ; 2 uses
  %or.cond69 = or i1 %i.e, %.not66
  br i1 %or.cond69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  %i.v = tail call i32 @PQmblenBounded(ptr noundef nonnull %.081, i32 noundef %i.u) #10
  store i8 %i.h, ptr %.05679, align 1
  %.15772 = getelementptr inbounds nuw i8, ptr %.05679, i64 1 ; 6 uses
  %i.w = add i32 %i.v, -1                         ; 7 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.j
  %i.y = zext nneg i32 %i.w to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 4
  %i.z = sub i64 %.08190, %.0567989
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond106 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond106, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i32 %i.w, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 28
  %n.vec = and i64 %i.y, 2147483616               ; 6 uses
  %i.ab = trunc nuw nsw i64 %n.vec to i32
  %i.ac = sub nsw i32 %i.w, %i.ab
  %i.ad = getelementptr i8, ptr %.15772, i64 %n.vec ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %n.vec  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.15772, i64 %index ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.i, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep92, align 1
  %wide.load93 = load <16 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load93, ptr %i.ag, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec96 = and i64 %i.y, 2147483644             ; 5 uses
  %i.ai = trunc nuw nsw i64 %n.vec96 to i32
  %i.aj = sub nsw i32 %i.w, %i.ai
  %i.ak = getelementptr i8, ptr %.15772, i64 %n.vec96 ; 2 uses
  %i.al = getelementptr i8, ptr %i.i, i64 %n.vec96 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %.15772, i64 %index97
  %next.gep99 = getelementptr i8, ptr %i.i, i64 %index97
  %wide.load100 = load <4 x i8>, ptr %next.gep99, align 1
  store <4 x i8> %wide.load100, ptr %next.gep98, align 1
  %index.next101 = add nuw i64 %index97, 4        ; 2 uses
  %i.am = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %n.vec96, %i.y
  br i1 %cmp.n102, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.w, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.15774.ph = phi ptr [ %.15772, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.173.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.an = phi i32 [ %i.aq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %.15774 = phi ptr [ %.157, %.lr.ph ], [ %.15774.ph, %.lr.ph.preheader ] ; 2 uses
  %.173 = phi ptr [ %i.ao, %.lr.ph ], [ %.173.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.173, align 1
  store i8 %i.ap, ptr %.15774, align 1
  %.157 = getelementptr inbounds nuw i8, ptr %.15774, i64 1 ; 2 uses
  %i.aq = add nsw i32 %i.an, -1
  %i.ar = icmp samesign ugt i32 %i.an, 1
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !44

bb.k:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add i8 %i.h, -65
  %or.cond4 = icmp ult i8 %i.as, 26
  br i1 %or.cond4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = or disjoint i8 %i.h, 32
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %or.cond71 = or i1 %.not66, %.not70
  br i1 %or.cond71, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr @__ctype_b_loc() #11
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = zext i8 %i.h to i64                     ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 256
  %.not68 = icmp eq i16 %i.az, 0
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @__ctype_tolower_loc() #11
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.aw
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = trunc i32 %i.bd to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.n, %bb.k
  %.053 = phi i8 [ %i.h, %bb.k ], [ %i.at, %bb.m ], [ %i.be, %bb.p ], [ %i.h, %bb.o ], [ %i.h, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05679, i64 1
  store i8 %.053, ptr %.05679, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.h, %bb.q, %bb.e, %bb.f
  %.162 = phi ptr [ %.06177, %bb.e ], [ %.06177, %bb.f ], [ %.06177, %bb.q ], [ %.05978, %bb.h ], [ %.06177, %bb.j ], [ %.06177, %middle.block ], [ %.06177, %vec.epilog.middle.block ], [ %.06177, %.lr.ph ] ; 2 uses
  %.160 = phi ptr [ %.05978, %bb.e ], [ %.05978, %bb.f ], [ %.05978, %bb.q ], [ %i.s, %bb.h ], [ %.05978, %bb.j ], [ %.05978, %middle.block ], [ %.05978, %vec.epilog.middle.block ], [ %.05978, %.lr.ph ] ; 2 uses
  %.258 = phi ptr [ %i.n, %bb.e ], [ %.05679, %bb.f ], [ %i.bf, %bb.q ], [ %i.s, %bb.h ], [ %.15772, %bb.j ], [ %i.ad, %middle.block ], [ %i.ak, %vec.epilog.middle.block ], [ %.157, %.lr.ph ] ; 2 uses
  %.155 = phi i8 [ 1, %bb.e ], [ %i.p, %bb.f ], [ %.05480, %bb.q ], [ 0, %bb.h ], [ %.05480, %bb.j ], [ %.05480, %middle.block ], [ %.05480, %vec.epilog.middle.block ], [ %.05480, %.lr.ph ]
  %.2 = phi ptr [ %i.o, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.q ], [ %i.i, %bb.h ], [ %i.i, %bb.j ], [ %i.ae, %middle.block ], [ %i.al, %vec.epilog.middle.block ], [ %i.ao, %.lr.ph ] ; 2 uses
  %i.bg = load i8, ptr %.2, align 1               ; 2 uses
  %.not = icmp eq i8 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !45

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.061.lcssa = phi ptr [ null, %bb.a ], [ %.162, %.loopexit ]
  %.059.lcssa = phi ptr [ %i.f, %bb.a ], [ %.160, %.loopexit ]
  %.056.lcssa = phi ptr [ %i.f, %bb.a ], [ %.258, %.loopexit ]
  store i8 0, ptr %.056.lcssa, align 1
  store ptr %.061.lcssa, ptr %1, align 8
  store ptr %.059.lcssa, ptr %2, align 8
  ret void
}

declare void @initPQExpBuffer(ptr noundef) local_unnamed_addr #2

declare void @appendPQExpBufferStr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @appendPQExpBuffer(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @termPQExpBuffer(ptr noundef) local_unnamed_addr #2

declare i32 @PQresultStatus(ptr noundef) local_unnamed_addr #2

declare i32 @PQntuples(ptr noundef) local_unnamed_addr #2

declare i32 @PQgetisnull(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PQgetvalue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PQnfields(ptr noundef) local_unnamed_addr #2

declare i32 @pg_encoding_max_length(i32 noundef) local_unnamed_addr #2

declare i32 @PQmblenBounded(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

declare i64 @PQescapeStringConn(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PQstatus(ptr noundef) local_unnamed_addr #2

declare ptr @PQexec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @ScanKeywordLookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rl_filename_completion_function(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @quote_if_needed(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

declare ptr @strtokx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !8}
!1 = distinct !{!1, !8}
!2 = distinct !{!2, !8}
!3 = distinct !{!3, !8}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 28}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8, !22}
!22 = !{!"llvm.loop.unswitch.partial.disable"}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8, !11, !12}
!32 = distinct !{!32, !8, !11, !12}
!33 = distinct !{!33, !8, !11}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8, !11, !12}
!43 = distinct !{!43, !8, !11, !12}
!44 = distinct !{!44, !8, !11}
!45 = distinct !{!45, !8}
end_hunk_3
