Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hwloc-annotate?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
begin_hunk_0
@distances_transform_merge_switch_ports = internal unnamed_addr global i1 false, align 4
@.str.51 = private unnamed_addr constant [19 x i8] c"transitive-closure\00", align 1
@distances_transform_closure = internal unnamed_addr global i1 false, align 4
@.str.52 = private unnamed_addr constant [11 x i8] c"remove-obj\00", align 1
@distances_transform_removeobj = internal unnamed_addr global ptr null, align 8
@.str.53 = private unnamed_addr constant [13 x i8] c"replace-objs\00", align 1
@distances_transform_replace_oldtype = internal unnamed_addr global ptr null, align 8
@distances_transform_replace_newtype = internal unnamed_addr global ptr null, align 8
@.str.54 = private unnamed_addr constant [49 x i8] c"Unrecognized distances-transform operation `%s'\0A\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"memattr\00", align 1
@maname = internal unnamed_addr global ptr null, align 8
@maflags = internal unnamed_addr global i64 0, align 8
@mavname = internal unnamed_addr global ptr null, align 8
@mavvalue = internal unnamed_addr global i64 0, align 8
@.str.56 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@mavicpuset = internal unnamed_addr global ptr null, align 8
@.str.58 = private unnamed_addr constant [49 x i8] c"Failed to allocate cpuset for memattr initiator\0A\00", align 1
@maviobjstr = internal unnamed_addr global ptr null, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"cpukind\00", align 1
@ckcpuset = internal unnamed_addr global ptr null, align 8
@.str.60 = private unnamed_addr constant [39 x i8] c"Failed to allocate cpuset for cpukind\0A\00", align 1
@ckefficiency = internal unnamed_addr global i32 -1, align 4
@ckflags = internal unnamed_addr global i64 0, align 8
@.str.61 = private unnamed_addr constant [43 x i8] c"cpukind with info name without info value\0A\00", align 1
@ckiname = internal unnamed_addr global ptr null, align 8
@ckivalue = internal unnamed_addr global ptr null, align 8
@.str.62 = private unnamed_addr constant [34 x i8] c"Unrecognized annotation type: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"--ri missing a info name\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"HWLOC_XML_USERDATA_NOT_DECODED=1\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Failed to register new memattr (%s)\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"Failed to register CPU kind (%s)\0A\00", align 1
@mavid = internal unnamed_addr global i32 0, align 4
@.str.67 = private unnamed_addr constant [35 x i8] c"Failed to find memattr by name %s\0A\00", align 1
@maviobj = internal unnamed_addr global ptr null, align 8
@.str.68 = private unnamed_addr constant [44 x i8] c"Failed to find memattr initiator object %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [65 x i8] c"Only the first object specified is used as a memattr initiator.\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.72 = private unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 1
@.str.73 = private unnamed_addr constant [186 x i8] c"%s compiled for hwloc API 0x%x but running on library API 0x%x.\0AYou may need to point LD_LIBRARY_PATH to the right hwloc library.\0AAborting since the new ABI is not backward compatible.\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"HWLOC_DISTANCES_ADD_FLAG_GROUP\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"HWLOC_DISTANCES_ADD_FLAG_GROUP_INACCURATE\00", align 1
@__const.hwloc_utils_parse_distances_add_flags.possible_flags = private unnamed_addr constant [2 x %struct.hwloc_utils_parsing_flag] [%struct.hwloc_utils_parsing_flag { i64 1, ptr @.str.74 }, %struct.hwloc_utils_parsing_flag { i64 2, ptr @.str.75 }], align 16
@.str.76 = private unnamed_addr constant [14 x i8] c"distances_add\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c",|+\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c" ,|+\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"Duplicate match for %s flag `%s'.\0A\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Failed to parse %s flag `%s'.\0A\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"Supported %s flags are substrings of:\0A\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"HWLOC_MEMATTR_FLAG_HIGHER_FIRST\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"HWLOC_MEMATTR_FLAG_LOWER_FIRST\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"HWLOC_MEMATTR_FLAG_NEED_INITIATOR\00", align 1
@__const.hwloc_utils_parse_memattr_flags.possible_flags = private unnamed_addr constant [3 x %struct.hwloc_utils_parsing_flag] [%struct.hwloc_utils_parsing_flag { i64 1, ptr @.str.86 }, %struct.hwloc_utils_parsing_flag { i64 2, ptr @.str.87 }, %struct.hwloc_utils_parsing_flag { i64 4, ptr @.str.88 }], align 16
@.str.89 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Failed to open distances file %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"Failed to read header line\0A\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"Failed to read kind line\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Failed to read nbobjs line\0A\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"Invalid distances with nbobjs == %u\0A\00", align 1
@.str.96 = private unnamed_addr constant [33 x i8] c"Failed to read object line #%u.\0A\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"Couldn't parse object line #%u.\0A\00", align 1
@.str.98 = private unnamed_addr constant [55 x i8] c"Only the first object specified on line #%u was used.\0A\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"Failed to read object #%u line\0A\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"%u*%u*%u\00", align 1
@.str.101 = private unnamed_addr constant [59 x i8] c"Invalid distances combination (%u*%u*%u=%u instead of %u)\0A\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"Failed to add distances\0A\00", align 1
@.str.103 = private unnamed_addr constant [53 x i8] c"Failed to find a distances structure with name `%s'\0A\00", align 1
@.str.104 = private unnamed_addr constant [45 x i8] c"Found %u distances structure with name `%s'\0A\00", align 1
@.str.105 = private unnamed_addr constant [47 x i8] c"Failed to transform distances `%s' into links\0A\00", align 1
@.str.106 = private unnamed_addr constant [60 x i8] c"Failed to transform distances `%s' by merging switch ports\0A\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"Failed to transform distances `%s' through transitive closure\0A\00", align 1
@.str.108 = private unnamed_addr constant [63 x i8] c"Failed to find object `%s' to remove from distances structure\0A\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c"Removing object #%u from distances structures `%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [59 x i8] c"Failed to transform distances `%s' to remove NULL objects\0A\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"distances_transform_replace_newtype\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"hwloc-annotate.c\00", align 1
@__PRETTY_FUNCTION__.transform_distances = private unnamed_addr constant [48 x i8] c"void transform_distances(hwloc_topology_t, int)\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.114 = private unnamed_addr constant [61 x i8] c"Replacing object #%u in distances structures `%s' with NULL\0A\00", align 1
@.str.115 = private unnamed_addr constant [51 x i8] c"Replacing object #%u in distances structures `%s'\0A\00", align 1
@.str.116 = private unnamed_addr constant [60 x i8] c"Failed to create new distances handle after transformation\0A\00", align 1
@.str.117 = private unnamed_addr constant [67 x i8] c"Failed to set values in new distances handle after transformation\0A\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"Failed to commit new distances handle after transformation\0A\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"Failed to add memattr value (%s)\0A\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"u->buffer\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"./misc.h\00", align 1
@__PRETTY_FUNCTION__.hwloc_utils_userdata_free = private unnamed_addr constant [44 x i8] c"void hwloc_utils_userdata_free(hwloc_obj_t)\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"could not find level specified by location %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [39 x i8] c"found multiple levels for location %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"invalid PCI device %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"invalid OS device %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"invalid Misc object %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"invalid type name %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"HBM\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"MCDRAM\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"ignoring invalid depth %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c"invalid PCI vendor:device matching specification %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [44 x i8] c"invalid OS device subtype specification %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [35 x i8] c"invalid matching specification %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [66 x i8] c"hierarchical location %s only supported with normal object types\0A\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"Failed to parse object index range %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"./hwloc-calc.h\00", align 1
@__PRETTY_FUNCTION__.hwloc_calc_append_iodev_by_index = private unnamed_addr constant [193 x i8] c"int hwloc_calc_append_iodev_by_index(struct hwloc_calc_location_context_s *, hwloc_obj_type_t, int, const char *, void (*)(struct hwloc_calc_location_context_s *, void *, hwloc_obj_t), void *)\00", align 1
@.str.140 = private unnamed_addr constant [58 x i8] c"using matching PCI object #%d bus id %04x:%02x:%02x.%01x\0A\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"invalid range `%s', too long\0A\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"unrecognized range keyword `%s'\0A\00", align 1
@.str.145 = private unnamed_addr constant [47 x i8] c"invalid character at `%s' after range at `%s'\0A\00", align 1
@.str.146 = private unnamed_addr constant [40 x i8] c"missing width at `%s' in range at `%s'\0A\00", align 1
@.str.147 = private unnamed_addr constant [47 x i8] c"invalid character at `%s' after index at `%s'\0A\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"%x:%x.%x\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"%x:%x:%x.%x\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"amount != -1 || !wrap\00", align 1
@__PRETTY_FUNCTION__.hwloc_calc_append_object_range = private unnamed_addr constant [217 x i8] c"int hwloc_calc_append_object_range(struct hwloc_calc_location_context_s *, hwloc_const_bitmap_t, hwloc_const_bitmap_t, int, const char *, void (*)(struct hwloc_calc_location_context_s *, void *, hwloc_obj_t), void *)\00", align 1
@.str.151 = private unnamed_addr constant [82 x i8] c"hierarchical sublocation %s contains types not followed by colon and index range\0A\00", align 1
@.str.152 = private unnamed_addr constant [54 x i8] c"using object #%u depth %d below cpuset %s nodeset %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [63 x i8] c"object #%u depth %d below cpuset %s nodeset %s does not exist\0A\00", align 1
@.str.154 = private unnamed_addr constant [51 x i8] c"failed to use any single object in index range %s\0A\00", align 1
@switch.table.apply_recursive = private unnamed_addr constant [5 x i8] c"\01\02\02\02\03", align 4

; Function Attrs: nofree nounwind uwtable
define hidden void @usage(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 104, i64 1, ptr %1) ; 0 uses
  %fwrite26 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 81, i64 1, ptr %1) ; 0 uses
  %fwrite27 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 21, i64 1, ptr %1) ; 0 uses
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 49, i64 1, ptr %1) ; 0 uses
  %fwrite29 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %1) ; 0 uses
  %fwrite30 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %1) ; 0 uses
  %fwrite31 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %1) ; 0 uses
  %fwrite32 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 32, i64 1, ptr %1) ; 0 uses
  %fwrite33 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 16, i64 1, ptr %1) ; 0 uses
  %fwrite34 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr %1) ; 0 uses
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 27, i64 1, ptr %1) ; 0 uses
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 39, i64 1, ptr %1) ; 0 uses
  %fwrite37 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 67, i64 1, ptr %1) ; 0 uses
  %fwrite38 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 37, i64 1, ptr %1) ; 0 uses
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 50, i64 1, ptr %1) ; 0 uses
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 50, i64 1, ptr %1) ; 0 uses
  %fwrite41 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %1) ; 0 uses
  %fwrite42 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 64, i64 1, ptr %1) ; 0 uses
  %fwrite43 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 9, i64 1, ptr %1) ; 0 uses
  %fwrite44 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 9, i64 1, ptr %1) ; 0 uses
  %fwrite45 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr %1) ; 0 uses
  %fwrite46 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 81, i64 1, ptr %1) ; 0 uses
  %fwrite47 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 31, i64 1, ptr %1) ; 0 uses
  %fwrite48 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 32, i64 1, ptr %1) ; 0 uses
  %fwrite49 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 36, i64 1, ptr %1) ; 0 uses
  %fwrite50 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 28, i64 1, ptr %1) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.hwloc_info_s, align 8       ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.hwloc_calc_location_context_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.g = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 47) #26 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.0160 = select i1 %.not, ptr %i.f, ptr %i.h    ; 2 uses
  %i.i = tail call i32 @hwloc_get_api_version() #25 ; 2 uses
  %.mask.i = and i32 %i.i, -65536
  %.not.i = icmp eq i32 %.mask.i, 131072
  br i1 %.not.i, label %hwloc_utils_check_api_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.73, ptr noundef nonnull %.0160, i32 noundef 132352, i32 noundef %i.i) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

hwloc_utils_check_api_version.exit:               ; preds = %bb.a
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str.26) #25
  %.not176 = icmp eq ptr %i.l, null
  br i1 %.not176, label %bb.c, label %bb.d

bb.c:                                             ; preds = %hwloc_utils_check_api_version.exit
  %i.m = tail call i32 @putenv(ptr noundef nonnull @.str.27) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %hwloc_utils_check_api_version.exit
  %.0163265 = add nsw i32 %0, -1                  ; 2 uses
  %.not177266 = icmp eq i32 %.0163265, 0
  br i1 %.not177266, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.n = add i32 %0, -4                           ; 2 uses
  %.0161269340 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %4 = load ptr, ptr %.0161269340, align 8, !tbaa !16 ; 3 uses
  %5 = load i8, ptr %4, align 1, !tbaa !19
  %6 = icmp eq i8 %5, 45
  br i1 %6, label %.lr.ph344, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %indvars.iv.next295 = add i32 %indvars.iv294341, -1 ; 2 uses
  %.0161269 = getelementptr inbounds nuw i8, ptr %.0161269343, i64 8 ; 2 uses
  %i.o = load ptr, ptr %.0161269, align 8, !tbaa !16 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %.lr.ph344, label %.critedge, !llvm.loop !60

.lr.ph344:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %7 = phi ptr [ %i.o, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 9 uses
  %.0161269343 = phi ptr [ %.0161269, %.lr.ph ], [ %.0161269340, %.lr.ph.preheader ] ; 2 uses
  %.0163270342 = phi i32 [ %.0163, %.lr.ph ], [ %.0163265, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv294341 = phi i32 [ %indvars.iv.next295, %.lr.ph ], [ %i.n, %.lr.ph.preheader ]
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.28) #26
  %.not225 = icmp eq i32 %i.r, 0
  br i1 %.not225, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph344
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.29) #26
  %.not226 = icmp eq i32 %i.s, 0
  br i1 %.not226, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.30) #26
  %.not227 = icmp eq i32 %i.t, 0
  br i1 %.not227, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.31) #26
  %.not228 = icmp eq i32 %i.u, 0
  br i1 %.not228, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(10) @.str.32) #26
  %.not229 = icmp eq i32 %i.v, 0
  br i1 %.not229, label %bb.i, label %sub_1

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %.0160, ptr noundef nonnull @.str.34) ; 0 uses
  tail call void @exit(i32 noundef 0) #29
  unreachable

sub_1:                                            ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %.not285 = icmp eq i8 %i.y, 104
  br i1 %.not285, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %.tail
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(7) @.str.36) #26
  %.not231 = icmp eq i32 %i.ac, 0
  br i1 %.not231, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.tail.thread, %.tail
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ad)
  tail call void @exit(i32 noundef 0) #29
  unreachable

bb.k:                                             ; preds = %.tail.thread
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.37, ptr noundef nonnull %7) #27 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ag)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph344
  %replaceinfos.sink = phi ptr [ @clearinfos, %.lr.ph344 ], [ @clearuserdata, %bb.f ], [ @replaceinfos, %bb.e ], [ @cleardistances, %bb.g ]
  store i1 true, ptr %replaceinfos.sink, align 4
  %.0163 = add nsw i32 %.0163270342, -1           ; 2 uses
  %.not177 = icmp eq i32 %.0163, 0
  br i1 %.not177, label %.critedge.thread, label %.lr.ph, !llvm.loop !60

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv294.lcssa = phi i32 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next295, %.lr.ph ]
  %.pn268.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.0161269343, %.lr.ph ] ; 5 uses
  %.0163.in267.lcssa = phi i32 [ %0, %.lr.ph.preheader ], [ %.0163270342, %.lr.ph ] ; 4 uses
  %.lcssa = phi ptr [ %4, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %i.ah = icmp slt i32 %.0163.in267.lcssa, 4
  br i1 %i.ah, label %.critedge.thread, label %sub_0239

.critedge.thread:                                 ; preds = %bb.l, %bb.d, %.critedge
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ai)
  tail call void @exit(i32 noundef 1) #28
  unreachable

sub_0239:                                         ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn268.lcssa, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %.pn268.lcssa, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not275 = icmp eq i8 %i.an, 45
  br i1 %.not275, label %sub_1240, label %.tail238.thread

sub_1240:                                         ; preds = %sub_0239
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %.not276 = icmp eq i8 %i.ap, 45
  br i1 %.not276, label %.tail238, label %.tail238.thread

.tail238:                                         ; preds = %sub_1240
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.m, label %.tail238.thread

bb.m:                                             ; preds = %.tail238
  %i.at = add nsw i32 %.0163.in267.lcssa, -4      ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn268.lcssa, i64 32 ; 3 uses
  %.not277 = icmp eq i32 %.0163.in267.lcssa, 4
  br i1 %.not277, label %.critedge2, label %sub_0244.preheader

sub_0244.preheader:                               ; preds = %bb.m
  %i.av = zext nneg i32 %i.at to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv294.lcssa, i32 1)
  br label %sub_0244

sub_0244:                                         ; preds = %sub_0244.preheader, %.tail243.thread
  %indvars.iv = phi i64 [ 0, %sub_0244.preheader ], [ %indvars.iv.next, %.tail243.thread ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1
  %.not278 = icmp eq i8 %i.ay, 45
  br i1 %.not278, label %sub_1245, label %.tail243.thread

sub_1245:                                         ; preds = %sub_0244
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %.not279 = icmp eq i8 %i.ba, 45
  br i1 %.not279, label %.tail243, label %.tail243.thread

.tail243:                                         ; preds = %sub_1245
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.critedge2.loopexit.split.loop.exit326, label %.tail243.thread

.tail243.thread:                                  ; preds = %sub_1245, %sub_0244, %.tail243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.be, label %sub_0244, label %.critedge2, !llvm.loop !61

.critedge2.loopexit.split.loop.exit326:           ; preds = %.tail243
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.tail243.thread, %.critedge2.loopexit.split.loop.exit326, %bb.m
  %.0157.lcssa = phi i32 [ 0, %bb.m ], [ %i.bf, %.critedge2.loopexit.split.loop.exit326 ], [ %smax, %.tail243.thread ] ; 4 uses
  %i.bg = icmp eq i32 %.0157.lcssa, %i.at
  br i1 %i.bg, label %.tail248.thread, label %sub_0249

sub_0249:                                         ; preds = %.critedge2
  %i.bh = zext nneg i32 %.0157.lcssa to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %.not280 = icmp eq i8 %i.bk, 45
  br i1 %.not280, label %sub_1250, label %.tail248.thread

sub_1250:                                         ; preds = %sub_0249
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %.not281 = icmp eq i8 %i.bm, 45
  br i1 %.not281, label %.tail248, label %.tail248.thread

.tail248:                                         ; preds = %sub_1250
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %.tail248.thread

.tail248.thread:                                  ; preds = %sub_1250, %sub_0249, %.tail248, %.critedge2
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.bq)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.n:                                             ; preds = %.tail248
  %i.br = add nuw nsw i32 %.0157.lcssa, 1         ; 2 uses
  %i.bs = sub nsw i32 %i.at, %i.br
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt
  br label %bb.o

.tail238.thread:                                  ; preds = %sub_1240, %sub_0239, %.tail238
  %i.bv = add nsw i32 %.0163.in267.lcssa, -4
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn268.lcssa, i64 32
  br label %bb.o

bb.o:                                             ; preds = %.tail238.thread, %bb.n
  %.1164 = phi i32 [ %i.bv, %.tail238.thread ], [ %i.bs, %bb.n ] ; 16 uses
  %.1162 = phi ptr [ %i.bw, %.tail238.thread ], [ %i.bu, %bb.n ] ; 22 uses
  %i.bx = phi i64 [ 16, %.tail238.thread ], [ 24, %bb.n ]
  %.1158 = phi i32 [ 1, %.tail238.thread ], [ %.0157.lcssa, %bb.n ] ; 2 uses
  %i.by = icmp slt i32 %.1164, 1
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.bz)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %.1162, align 8, !tbaa !16 ; 10 uses
  %i.cb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(5) @.str.39) #26
  %.not181 = icmp eq i32 %i.cb, 0
  br i1 %.not181, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.1164, 1
  br i1 %i.cc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.b174 = load i1, ptr @replaceinfos, align 4
  %i.cd = icmp samesign ugt i32 %.1164, 2         ; 2 uses
  %or.cond.not = or i1 %i.cd, %.b174
  br i1 %or.cond.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ce)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  store ptr %i.cg, ptr @infoname, align 8, !tbaa !16
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.1162, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cj = phi ptr [ %i.ci, %bb.v ], [ null, %bb.u ]
  store ptr %i.cj, ptr @infovalue, align 8, !tbaa !16
  br label %bb.cj

bb.x:                                             ; preds = %bb.q
  %i.ck = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(8) @.str.40) #26
  %.not183 = icmp eq i32 %i.ck, 0
  br i1 %.not183, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cl = icmp eq i32 %.1164, 1
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.cm)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  store ptr %i.co, ptr @subtype, align 8, !tbaa !16
  br label %bb.cj

bb.ab:                                            ; preds = %bb.x
  %i.cp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(5) @.str.41) #26
  %.not184 = icmp eq i32 %i.cp, 0
  br i1 %.not184, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.cq = icmp eq i32 %.1164, 1
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.cr)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !16
  %i.cu = call i64 @__isoc23_strtoull(ptr noundef %i.ct, ptr noundef nonnull %i.b, i32 noundef 0) #25 ; 3 uses
  store i64 %i.cu, ptr @sizevalue, align 8, !tbaa !22
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !16  ; 5 uses
  %.not185 = icmp eq ptr %i.cv, null
  br i1 %.not185, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = call i32 @strcasecmp(ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.42) #26
  %.not186 = icmp eq i32 %i.cw, 0
  br i1 %.not186, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = call i32 @strcasecmp(ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.43) #26
  %.not187 = icmp eq i32 %i.cx, 0
  br i1 %.not187, label %.sink.split, label %bb.ah

.sink.split:                                      ; preds = %bb.ag, %bb.af
  %.sink328 = phi i64 [ 10, %bb.af ], [ 20, %bb.ag ]
  %i.cy = shl i64 %i.cu, %.sink328                ; 2 uses
  store i64 %i.cy, ptr @sizevalue, align 8, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag
  %i.cz = phi i64 [ %i.cu, %bb.ag ], [ %i.cy, %.sink.split ] ; 2 uses
  %i.da = call i32 @strcasecmp(ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.44) #26
  %.not188 = icmp eq i32 %i.da, 0
  br i1 %.not188, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.db = shl i64 %i.cz, 30                       ; 2 uses
  store i64 %i.db, ptr @sizevalue, align 8, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dc = phi i64 [ %i.db, %bb.ai ], [ %i.cz, %bb.ah ]
  %i.dd = call i32 @strcasecmp(ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.45) #26
  %.not189 = icmp eq i32 %i.dd, 0
  br i1 %.not189, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.de = shl i64 %i.dc, 40
  store i64 %i.de, ptr @sizevalue, align 8, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.cj

bb.am:                                            ; preds = %bb.ab
  %i.df = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(5) @.str.46) #26
  %.not190 = icmp eq i32 %i.df, 0
  br i1 %.not190, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dg = icmp eq i32 %.1164, 1
  br i1 %i.dg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.dh)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.di = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !16
  store ptr %i.dj, ptr @miscname, align 8, !tbaa !16
  br label %bb.cj

bb.aq:                                            ; preds = %bb.am
  %i.dk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(10) @.str.47) #26
  %.not191 = icmp eq i32 %i.dk, 0
  br i1 %.not191, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.dl = icmp eq i32 %.1164, 1
  br i1 %i.dl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.dm)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !16
  store ptr %i.do, ptr @distancesfilename, align 8, !tbaa !16
  %i.dp = icmp samesign ugt i32 %.1164, 2
  br i1 %i.dp, label %bb.au, label %bb.cj

bb.au:                                            ; preds = %bb.at
  %i.dq = getelementptr inbounds nuw i8, ptr %.1162, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !16
  %i.ds = tail call fastcc i64 @hwloc_utils_parse_flags(ptr noundef %i.dr, ptr noundef @__const.hwloc_utils_parse_distances_add_flags.possible_flags, i32 noundef 2, ptr noundef nonnull @.str.76) ; 2 uses
  store i64 %i.ds, ptr @distancesflags, align 8, !tbaa !24
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %bb.dw, label %bb.cj

bb.av:                                            ; preds = %bb.aq
  %i.du = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(20) @.str.48) #26
  %.not192 = icmp eq i32 %i.du, 0
  br i1 %.not192, label %bb.aw, label %bb.bn

bb.aw:                                            ; preds = %bb.av
  %i.dv = icmp samesign ult i32 %.1164, 3
end_hunk_0
begin_hunk_1_@main:bb.a
  tail call void @usage(ptr nonnull poison, ptr noundef %i.el)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.em = getelementptr inbounds nuw i8, ptr %.1162, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  store ptr %i.en, ptr @distances_transform_replace_oldtype, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %.1162, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !16
  store ptr %i.ep, ptr @distances_transform_replace_newtype, align 8, !tbaa !16
  br label %bb.cj

bb.bm:                                            ; preds = %bb.bi
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.er = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.ea) #27 ; 0 uses
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.es)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.bn:                                            ; preds = %bb.av
  %i.et = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(8) @.str.55) #26
  %.not198 = icmp eq i32 %i.et, 0
  br i1 %.not198, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.eu = icmp samesign ult i32 %.1164, 3
  br i1 %i.eu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.ev)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.ew = icmp eq i32 %.1164, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !16 ; 2 uses
  br i1 %i.ew, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %i.ey, ptr @maname, align 8, !tbaa !16
  %i.ez = getelementptr inbounds nuw i8, ptr %.1162, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !16
  %i.fb = tail call fastcc i64 @hwloc_utils_parse_flags(ptr noundef %i.fa, ptr noundef @__const.hwloc_utils_parse_memattr_flags.possible_flags, i32 noundef 3, ptr noundef nonnull @.str.55)
  store i64 %i.fb, ptr @maflags, align 8, !tbaa !24
  br label %bb.cj

bb.bs:                                            ; preds = %bb.bq
  store ptr %i.ey, ptr @mavname, align 8, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %.1162, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !16
  %i.fe = tail call i64 @__isoc23_strtoull(ptr noundef %i.fd, ptr noundef null, i32 noundef 0) #25
  store i64 %i.fe, ptr @mavvalue, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %.1162, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !16 ; 4 uses
  %i.fh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fg, ptr noundef nonnull dereferenceable(5) @.str.56) #26
  %.not199 = icmp eq i32 %i.fh, 0
  br i1 %.not199, label %bb.cj, label %sub_0254

sub_0254:                                         ; preds = %bb.bs
  %i.fi = load i8, ptr %i.fg, align 1
  %.not282 = icmp eq i8 %i.fi, 48
  br i1 %.not282, label %.tail253, label %.tail253.thread

.tail253:                                         ; preds = %sub_0254
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, 120
  br i1 %i.fl, label %bb.bt, label %.tail253.thread

bb.bt:                                            ; preds = %.tail253
  %i.fm = tail call noalias ptr @hwloc_bitmap_alloc() #25 ; 3 uses
  store ptr %i.fm, ptr @mavicpuset, align 8, !tbaa !26
  %.not201 = icmp eq ptr %i.fm, null
  br i1 %.not201, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.58, i64 48, i64 1, ptr %i.fn) #30 ; 0 uses
  br label %bb.dw

bb.bv:                                            ; preds = %bb.bt
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !16
  %i.fp = tail call i32 @hwloc_bitmap_sscanf(ptr noundef nonnull %i.fm, ptr noundef %i.fo) #25 ; 0 uses
  br label %bb.cj

.tail253.thread:                                  ; preds = %sub_0254, %.tail253
  store ptr %i.fg, ptr @maviobjstr, align 8, !tbaa !16
  br label %bb.cj

bb.bw:                                            ; preds = %bb.bn
  %i.fq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(8) @.str.59) #26
  %.not202 = icmp eq i32 %i.fq, 0
  br i1 %.not202, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %bb.bw
  %i.fr = icmp samesign ult i32 %.1164, 4
  br i1 %i.fr, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.fs)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ft = tail call noalias ptr @hwloc_bitmap_alloc() #25 ; 3 uses
  store ptr %i.ft, ptr @ckcpuset, align 8, !tbaa !26
  %.not203 = icmp eq ptr %i.ft, null
  br i1 %.not203, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite204 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 38, i64 1, ptr %i.fu) #30 ; 0 uses
  br label %bb.dw

bb.cb:                                            ; preds = %bb.bz
  %i.fv = getelementptr inbounds nuw i8, ptr %.1162, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !16
  %i.fx = tail call i32 @hwloc_bitmap_sscanf(ptr noundef nonnull %i.ft, ptr noundef %i.fw) #25 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1162, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !16
  %i.ga = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fz, ptr noundef null, i32 noundef 10) #25, !inline_history !0
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr @ckefficiency, align 4, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %.1162, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !16
  %i.ge = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.gd, ptr noundef null, i32 noundef 10) #25, !inline_history !0
  %sext = shl i64 %i.ge, 32
  %i.gf = ashr exact i64 %sext, 32
  store i64 %i.gf, ptr @ckflags, align 8, !tbaa !24
  %i.gg = icmp eq i32 %.1164, 5
  br i1 %i.gg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite207 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 42, i64 1, ptr %i.gh) #30 ; 0 uses
  br label %bb.dw

bb.cd:                                            ; preds = %bb.cb
  %i.gi = icmp samesign ugt i32 %.1164, 5
  br i1 %i.gi, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.gj = getelementptr inbounds nuw i8, ptr %.1162, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !16 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !19
  %.not205 = icmp eq i8 %i.gl, 0
  br i1 %.not205, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gm = getelementptr inbounds nuw i8, ptr %.1162, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !16 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !19
  %.not206 = icmp eq i8 %i.go, 0
  br i1 %.not206, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.gk, ptr @ckiname, align 8, !tbaa !16
  store ptr %i.gn, ptr @ckivalue, align 8, !tbaa !16
  br label %bb.cj

bb.ch:                                            ; preds = %bb.bw
  %i.gp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(5) @.str.56) #26
  %.not208 = icmp eq i32 %i.gp, 0
  br i1 %.not208, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.ca) #27 ; 0 uses
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @usage(ptr nonnull poison, ptr noundef %i.gs)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.cj:                                            ; preds = %bb.aa, %bb.ap, %bb.bb, %bb.bh, %bb.bl, %bb.bd, %bb.az, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.ch, %bb.br, %bb.bv, %.tail253.thread, %bb.bs, %bb.at, %bb.au, %bb.al, %bb.w
  %.b = load i1, ptr @replaceinfos, align 4
  %i.gt = load ptr, ptr @infoname, align 8
  %i.gu = icmp eq ptr %i.gt, null
  %or.cond5.not = select i1 %.b, i1 %i.gu, i1 false
  br i1 %or.cond5.not, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite210 = call i64 @fwrite(ptr nonnull @.str.63, i64 25, i64 1, ptr %i.gv) #30 ; 0 uses
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @usage(ptr nonnull poison, ptr noundef %i.gw)
  call void @exit(i32 noundef 1) #28
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.gx = call i32 @hwloc_topology_init(ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.gz = call i32 @hwloc_topology_set_all_types_filter(ptr noundef %i.gy, i32 noundef 0) #25 ; 0 uses
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.hb = call i32 @hwloc_topology_set_flags(ptr noundef %i.ha, i64 noundef 9) #25 ; 0 uses
  %i.hc = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.hd = call i32 @hwloc_topology_set_xml(ptr noundef %i.hc, ptr noundef nonnull %.lcssa) #25
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.dv, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hf = call i32 @putenv(ptr noundef nonnull @.str.64) #25 ; 0 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @hwloc_topology_set_userdata_import_callback(ptr noundef %i.hg, ptr noundef nonnull @hwloc_utils_userdata_import_cb) #25
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @hwloc_topology_set_userdata_export_callback(ptr noundef %i.hh, ptr noundef nonnull @hwloc_utils_userdata_export_cb) #25
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.hj = call i32 @hwloc_topology_load(ptr noundef %i.hi) #25
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %bb.dv, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.hm = call i32 @hwloc_topology_get_depth(ptr noundef %i.hl) #26 ; 4 uses
  %.b175 = load i1, ptr @cleardistances, align 4
  br i1 %.b175, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.hn = call i32 @hwloc_distances_remove(ptr noundef %i.hl) #25 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ho = load ptr, ptr @distancesfilename, align 8, !tbaa !16
  %.not211 = icmp eq ptr %i.ho, null
  br i1 %.not211, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !63
  call fastcc void @add_distances(ptr noundef %i.hp, i32 noundef %i.hm)
  br label %bb.dt

bb.cr:                                            ; preds = %bb.cp
  %i.hq = load ptr, ptr @distances_transform_name, align 8, !tbaa !16
  %.not212 = icmp eq ptr %i.hq, null
  br i1 %.not212, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !63
  call fastcc void @transform_distances(ptr noundef %i.hr, i32 noundef %i.hm)
  br label %bb.dt

bb.ct:                                            ; preds = %bb.cr
  %i.hs = load ptr, ptr @maname, align 8, !tbaa !16 ; 2 uses
  %.not213 = icmp eq ptr %i.hs, null
  br i1 %.not213, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.hu = load i64, ptr @maflags, align 8, !tbaa !24
  %i.hv = call i32 @hwloc_memattr_register(ptr noundef %i.ht, ptr noundef nonnull %i.hs, i64 noundef %i.hu, ptr noundef nonnull %i.c) #25
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %bb.cv, label %.thread

.thread:                                          ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.dt

bb.cv:                                            ; preds = %bb.cu
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hy = tail call ptr @__errno_location() #31
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !27
  %i.ia = call ptr @strerror(i32 noundef %i.hz) #25
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.65, ptr noundef %i.ia) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.dv

bb.cw:                                            ; preds = %bb.ct
  %i.ic = load ptr, ptr @ckcpuset, align 8, !tbaa !26 ; 2 uses
  %.not214 = icmp eq ptr %i.ic, null
  br i1 %.not214, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.id = load ptr, ptr @ckiname, align 8, !tbaa !16 ; 2 uses
  store ptr %i.id, ptr %2, align 8, !tbaa !30
  %i.ie = load ptr, ptr @ckivalue, align 8, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !31
  %i.ig = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ih = load i32, ptr @ckefficiency, align 4, !tbaa !27
  %.not224 = icmp ne ptr %i.id, null              ; 2 uses
  %i.ii = zext i1 %.not224 to i32
  %. = select i1 %.not224, ptr %2, ptr null
  %i.ij = load i64, ptr @ckflags, align 8, !tbaa !24
  %i.ik = call i32 @hwloc_cpukinds_register(ptr noundef %i.ig, ptr noundef nonnull %i.ic, i32 noundef %i.ih, i32 noundef %i.ii, ptr noundef %., i64 noundef %i.ij) #25
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.im = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.in = tail call ptr @__errno_location() #31
  %i.io = load i32, ptr %i.in, align 4, !tbaa !27
  %i.ip = call ptr @strerror(i32 noundef %i.io) #25
  %i.iq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.66, ptr noundef %i.ip) #27 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.dt

bb.da:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 0, ptr %i.d, align 8, !tbaa !24
  %i.ir = load ptr, ptr @mavname, align 8, !tbaa !16 ; 2 uses
  %.not215 = icmp eq ptr %i.ir, null
  br i1 %.not215, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.it = call fastcc i32 @hwloc_utils_parse_memattr_name(ptr noundef %i.is, ptr noundef %i.ir) ; 3 uses
  store i32 %i.it, ptr @mavid, align 4, !tbaa !27
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.iw = load ptr, ptr @mavname, align 8, !tbaa !16
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.67, ptr noundef %i.iw) #27 ; 0 uses
  br label %.thread236

bb.dd:                                            ; preds = %bb.db
  %i.iy = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.iz = call i32 @hwloc_memattr_get_flags(ptr noundef %i.iy, i32 noundef %i.it, ptr noundef nonnull %i.d) #25 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %i.ja = load ptr, ptr @maviobjstr, align 8, !tbaa !16 ; 2 uses
  %.not216 = icmp eq ptr %i.ja, null
  br i1 %.not216, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jb = load i64, ptr %i.d, align 8, !tbaa !24
  %i.jc = and i64 %i.jb, 4
  %.not217 = icmp eq i64 %i.jc, 0
  br i1 %.not217, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.jd = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.je = call fastcc ptr @get_unique_obj(ptr noundef %i.jd, i32 noundef %i.hm, ptr noundef nonnull %i.ja, ptr noundef %i.e) ; 2 uses
  store ptr %i.je, ptr @maviobj, align 8, !tbaa !33
  %.not218.not = icmp eq ptr %i.je, null
  br i1 %.not218.not, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jf = load i32, ptr %i.e, align 4, !tbaa !27
  %.not219 = icmp eq i32 %i.jf, 0
  br i1 %.not219, label %.thread233, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite220 = call i64 @fwrite(ptr nonnull @.str.69, i64 64, i64 1, ptr %i.jg) #30 ; 0 uses
  br label %.thread233

.thread233:                                       ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dg
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ji = load ptr, ptr @maviobjstr, align 8, !tbaa !16
  %i.jj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jh, ptr noundef nonnull @.str.68, ptr noundef %i.ji) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.thread236

bb.dk:                                            ; preds = %.thread233, %bb.df, %bb.de
  %.not283 = icmp eq i32 %.1158, 0
  br i1 %.not283, label %._crit_edge, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.dk
  %8 = getelementptr inbounds nuw i8, ptr %.pn268.lcssa, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 %i.bx
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 20
  %wide.trip.count = zext i32 %.1158 to i64
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph274, %bb.ds
  %indvars.iv299 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next300, %bb.ds ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv299
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !16 ; 5 uses
  %i.jr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jq, ptr noundef nonnull dereferenceable(4) @.str.70) #26
  %.not221 = icmp eq i32 %i.jr, 0
  br i1 %.not221, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.jt = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.js, i32 noundef 0, i32 noundef 0) #26
  call fastcc void @apply_recursive(ptr noundef %i.js, ptr noundef %i.jt)
  br label %bb.ds

bb.dn:                                            ; preds = %bb.dl
  %i.ju = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jq, ptr noundef nonnull dereferenceable(5) @.str.71) #26
  %.not222 = icmp eq i32 %i.ju, 0
  br i1 %.not222, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.jw = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.jv, i32 noundef 0, i32 noundef 0) #26
  call fastcc void @apply(ptr noundef %i.jv, ptr noundef %i.jw)
  br label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  %i.jx = call i64 @strspn(ptr noundef nonnull %i.jq, ptr noundef nonnull @.str.72) #26 ; 3 uses
  %.not223 = icmp eq i64 %i.jx, 0
  br i1 %.not223, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !19
  switch i8 %i.jz, label %bb.ds [
    i8 58, label %bb.dr
    i8 61, label %bb.dr
    i8 91, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.ka, ptr %3, align 8, !tbaa !35
  store i32 %i.hm, ptr %i.jl, align 8, !tbaa !36
  store i32 -1, ptr %i.jm, align 4, !tbaa !37
  store i32 1, ptr %i.jn, align 8, !tbaa !38
  store i32 0, ptr %i.jo, align 4, !tbaa !39
  %i.kb = call fastcc i32 @hwloc_calc_process_location(ptr noundef %3, ptr noundef nonnull %i.jq, i64 noundef %i.jx, ptr noundef nonnull @hwloc_calc_process_location_annotate_cb, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dp, %bb.dr, %bb.dq, %bb.do, %bb.dm
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.dl, !llvm.loop !62

.thread236:                                       ; preds = %bb.dc, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.dv

._crit_edge:                                      ; preds = %bb.ds, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.dt

bb.dt:                                            ; preds = %._crit_edge, %.thread, %bb.cs, %bb.cz, %bb.cq
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.kd = call i32 @hwloc_topology_export_xml(ptr noundef %i.kc, ptr noundef %i.ak, i64 noundef 0) #25
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.kg = call fastcc ptr @hwloc_get_root_obj(ptr noundef %i.kf) #26
  call fastcc void @hwloc_utils_userdata_free_recursive(ptr noundef %i.kg)
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @hwloc_topology_destroy(ptr noundef %i.kh) #25
  call void @exit(i32 noundef 0) #29
  unreachable

bb.dv:                                            ; preds = %.thread236, %bb.cv, %bb.cm, %bb.cl
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.kj = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.ki, i32 noundef 0, i32 noundef 0) #26
  call fastcc void @hwloc_utils_userdata_free_recursive(ptr noundef %i.kj)
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @hwloc_topology_destroy(ptr noundef %i.kk) #25
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dt, %bb.au, %bb.dv, %bb.cc, %bb.ca, %bb.bu
  %i.kl = load ptr, ptr @mavicpuset, align 8, !tbaa !26
  call void @hwloc_bitmap_free(ptr noundef %i.kl) #25
  %i.km = load ptr, ptr @ckcpuset, align 8, !tbaa !26
  call void @hwloc_bitmap_free(ptr noundef %i.km) #25
  call void @exit(i32 noundef 1) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #9

declare i32 @hwloc_bitmap_sscanf(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @hwloc_topology_init(ptr noundef) local_unnamed_addr #9

declare i32 @hwloc_topology_set_all_types_filter(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @hwloc_topology_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @hwloc_topology_set_xml(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @hwloc_topology_set_userdata_import_callback(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal void @hwloc_utils_userdata_import_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.b ]  ; 2 uses
  %i.b = load ptr, ptr %.0, align 8, !tbaa !65    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #32 ; 5 uses
  store ptr %i.d, ptr %.0, align 8, !tbaa !65
  %i.e = tail call noalias ptr @strdup(ptr noundef %2) #25
  store ptr %i.e, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.f, align 8, !tbaa !43
  %i.g = tail call noalias ptr @strdup(ptr noundef %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !45
  ret void
}

declare void @hwloc_topology_set_userdata_export_callback(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @hwloc_utils_userdata_export_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 232
  %.012 = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.014 = phi ptr [ %.0, %bb.c ], [ %.012, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr %.014, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call i32 @hwloc_export_obj_userdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull %i.c, i64 noundef %i.f) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
end_hunk_1
