Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5mkgrp?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
@.str.8 = private unnamed_addr constant [28 x i8] c"%s: Creating parent groups\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not create group '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Could not close group '%s'??\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: created group '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Could not close link creation property list\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Could not close output file '%s'??\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Could not close file access property list\0A\00", align 1
@H5_optarg = external local_unnamed_addr global ptr, align 8
@H5_optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"missing file name\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"missing group name(s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"unable to create FAPL for file access\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"unable to set VOL on fapl for file\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"unable to set VFD on fapl for file\0A\00", align 1
@rawoutstream = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [35 x i8] c"usage: %s [OPTIONS] FILE GROUP...\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"   OPTIONS\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"      -h, --help         Print a usage message and exit\0A\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"      -l, --latest       Use latest version of file format to create groups\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"      -p, --parents      No error if existing, make parent groups as needed\0A\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"      -v, --verbose      Print information about OBJECTS and OPTIONS\0A\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"      -V, --version      Print version number and exit\0A\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"      --vol-value        Value (ID) of the VOL connector to use for opening the\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"                         HDF5 file specified\0A\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"      --vol-name         Name of the VOL connector to use for opening the\0A\00", align 1
@.str.30 = private unnamed_addr constant [82 x i8] c"      --vol-info         VOL-specific info to pass to the VOL connector used for\0A\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"                         opening the HDF5 file specified\0A\00", align 1
@.str.32 = private unnamed_addr constant [87 x i8] c"                         If none of the above options are used to specify a VOL, then\0A\00", align 1
@.str.33 = private unnamed_addr constant [92 x i8] c"                         the VOL named by HDF5_VOL_CONNECTOR (or the native VOL connector,\0A\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"                         if that environment variable is unset) will be used\0A\00", align 1
@.str.35 = private unnamed_addr constant [78 x i8] c"      --vfd-value        Value (ID) of the VFL driver to use for opening the\0A\00", align 1
@.str.36 = private unnamed_addr constant [72 x i8] c"      --vfd-name         Name of the VFL driver to use for opening the\0A\00", align 1
@.str.37 = private unnamed_addr constant [79 x i8] c"      --vfd-info         VFD-specific info to pass to the VFL driver used for\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"hlpvV\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"vol-value\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"vol-name\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"vol-info\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"vfd-value\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"vfd-name\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"vfd-info\00", align 1
@l_opts = internal global [12 x { ptr, i32, i8, [3 x i8] }] [{ ptr, i32, i8, [3 x i8] } { ptr @.str.40, i32 0, i8 104, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.41, i32 0, i8 108, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.42, i32 0, i8 112, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.43, i32 0, i8 118, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.44, i32 0, i8 86, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.45, i32 1, i8 49, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.46, i32 1, i8 50, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.47, i32 1, i8 51, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.48, i32 1, i8 52, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.49, i32 1, i8 53, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } { ptr @.str.50, i32 1, i8 54, [3 x i8] zeroinitializer }, { ptr, i32, i8, [3 x i8] } zeroinitializer], align 16

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.h5tools_vol_info_t, align 8 ; 7 uses
  %3 = alloca %struct.h5tools_vfd_info_t, align 8 ; 7 uses
  tail call void @h5tools_setprogname(ptr noundef nonnull @.str) #12
  tail call void @h5tools_setstatus(i32 noundef 0) #12
  tail call void @h5tools_init() #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @params_g, i8 0, i64 48, i1 false)
  %i.a = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !9
  %i.b = tail call i64 @H5Pcreate(i64 noundef %i.a) #12 ; 2 uses
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.1) #12
  tail call fastcc void @leave(i32 noundef 1)
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @h5tools_getprogname() #12
  tail call fastcc void @usage(ptr noundef %i.e)
  tail call fastcc void @leave(i32 noundef 0)
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = tail call i32 @H5_get_option(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @l_opts) #12 ; 2 uses
  %.not9.i = icmp eq i32 %i.f, -1
  br i1 %.not9.i, label %bb.t, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %.lr.ph.i
  %i.k = phi ptr [ null, %.lr.ph.i ], [ %i.ad, %bb.s ] ; 8 uses
  %i.l = phi ptr [ null, %.lr.ph.i ], [ %i.ae, %bb.s ] ; 8 uses
  %i.m = phi i32 [ %i.f, %.lr.ph.i ], [ %i.ah, %bb.s ]
  %i.n = phi i32 [ 0, %.lr.ph.i ], [ %i.ag, %bb.s ] ; 7 uses
  %i.o = phi i32 [ 0, %.lr.ph.i ], [ %i.af, %bb.s ] ; 7 uses
  %sext.i = shl i32 %i.m, 24
  %i.p = ashr exact i32 %sext.i, 24
  switch i32 %i.p, label %bb.r [
    i32 104, label %bb.g
    i32 108, label %bb.h
    i32 112, label %bb.i
    i32 118, label %bb.j
    i32 86, label %bb.k
    i32 49, label %bb.l
    i32 50, label %bb.m
    i32 51, label %bb.n
    i32 52, label %bb.o
    i32 53, label %bb.p
    i32 54, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @h5tools_getprogname() #12
  tail call fastcc void @usage(ptr noundef %i.q)
  tail call fastcc void @leave(i32 noundef 0)
  unreachable

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 8), align 8, !tbaa !18
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 10), align 2, !tbaa !19
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 9), align 1, !tbaa !20
  br label %bb.s

bb.k:                                             ; preds = %bb.f
  %i.r = tail call ptr @h5tools_getprogname() #12
  tail call void @print_version(ptr noundef %i.r) #12
  tail call fastcc void @leave(i32 noundef 0)
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  %i.t = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef 10) #12, !inline_history !22
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.j, align 8, !tbaa !23
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 40), align 8, !tbaa !24
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  store ptr %i.v, ptr %i.j, align 8, !tbaa !23
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 40), align 8, !tbaa !24
  br label %bb.s

bb.n:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  br label %bb.s

bb.o:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  %i.y = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.x, ptr noundef null, i32 noundef 10) #12, !inline_history !22
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.h, align 8, !tbaa !23
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 41), align 1, !tbaa !25
  br label %bb.s

bb.p:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !23
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 41), align 1, !tbaa !25
  br label %bb.s

bb.q:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr @H5_optarg, align 8, !tbaa !21
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.ac = tail call ptr @h5tools_getprogname() #12
  tail call fastcc void @usage(ptr noundef %i.ac)
  tail call fastcc void @leave(i32 noundef 1)
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %i.ad = phi ptr [ %i.k, %bb.q ], [ %i.k, %bb.p ], [ %i.k, %bb.o ], [ %i.w, %bb.n ], [ %i.k, %bb.m ], [ %i.k, %bb.l ], [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ %i.k, %bb.h ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %bb.q ], [ %i.l, %bb.p ], [ %i.l, %bb.o ], [ %i.l, %bb.n ], [ %i.l, %bb.m ], [ %i.l, %bb.l ], [ %i.l, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.h ] ; 2 uses
  %i.af = phi i32 [ %i.o, %bb.q ], [ %i.o, %bb.p ], [ %i.o, %bb.o ], [ %i.o, %bb.n ], [ 0, %bb.m ], [ 1, %bb.l ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.ag = phi i32 [ %i.n, %bb.q ], [ 0, %bb.p ], [ 1, %bb.o ], [ %i.n, %bb.n ], [ %i.n, %bb.m ], [ %i.n, %bb.l ], [ %i.n, %bb.j ], [ %i.n, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %i.ah = tail call i32 @H5_get_option(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @l_opts) #12 ; 2 uses
  %.not.i = icmp eq i32 %i.ah, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !26

._crit_edge.i:                                    ; preds = %bb.s
  store ptr %i.ae, ptr %i.g, align 8
  store ptr %i.ad, ptr %i.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i, %bb.e
  %.lcssa5.i = phi i32 [ %i.af, %._crit_edge.i ], [ 0, %bb.e ]
  %.lcssa.i = phi i32 [ %i.ag, %._crit_edge.i ], [ 0, %bb.e ]
  store i32 %.lcssa.i, ptr %3, align 8
  store i32 %.lcssa5.i, ptr %2, align 8
  %i.ai = load i32, ptr @H5_optind, align 4, !tbaa !28 ; 3 uses
  %.not34.i = icmp sgt i32 %0, %i.ai
  br i1 %.not34.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.15) #12
  %i.aj = tail call ptr @h5tools_getprogname() #12
  tail call fastcc void @usage(ptr noundef %i.aj)
  tail call fastcc void @leave(i32 noundef 1)
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = tail call noalias ptr @strdup(ptr noundef %i.am) #12
  store ptr %i.an, ptr @params_g, align 8, !tbaa !29
  %i.ao = add nsw i32 %i.ai, 1                    ; 4 uses
  store i32 %i.ao, ptr @H5_optind, align 4, !tbaa !28
  %.not35.i = icmp sgt i32 %0, %i.ao
  br i1 %.not35.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.16) #12
  %i.ap = tail call ptr @h5tools_getprogname() #12
  tail call fastcc void @usage(ptr noundef %i.ap)
  tail call fastcc void @leave(i32 noundef 1)
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.aq = sub i32 %0, %i.ao                       ; 2 uses
  %4 = sext i32 %i.aq to i64                      ; 2 uses
  store i64 %4, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 16), align 8, !tbaa !30
  %i.ar = shl nsw i64 %4, 3
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #13 ; 2 uses
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 24), align 8, !tbaa !31
  %5 = sext i32 %i.ao to i64
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i, %bb.x
  %.021.i.a = phi i64 [ %5, %bb.x ], [ %indvars.iv.next.i, %.lr.ph23.i ] ; 2 uses
  %.021.i = phi i64 [ 0, %bb.x ], [ %i.ax, %.lr.ph23.i ] ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %.021.i.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.av = tail call noalias ptr @strdup(ptr noundef %i.au) #12
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.021.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !21
  %i.ax = add nuw nsw i64 %.021.i, 1              ; 2 uses
  %indvars.iv.next.i = add nsw i64 %.021.i.a, 1   ; 2 uses
  %6 = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %6, ptr @H5_optind, align 4, !tbaa !28
  %lftr.wideiv = trunc i64 %i.ax to i32
  %exitcond = icmp eq i32 %i.aq, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge24.i, label %.lr.ph23.i, !llvm.loop !32

._crit_edge24.i:                                  ; preds = %.lr.ph23.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 40), align 8, !tbaa !24, !range !33, !noundef !34
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 41), align 1, !range !33
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond.i = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond.i, label %bb.y, label %parse_command_line.exit

bb.y:                                             ; preds = %._crit_edge24.i
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  %i.bd = tail call i64 @h5tools_get_new_fapl(i64 noundef %i.bc) #12 ; 4 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.17) #12
  tail call fastcc void @leave(i32 noundef 1)
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 40), align 8, !tbaa !24, !range !33, !noundef !34
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bh = call i32 @h5tools_set_fapl_vol(i64 noundef %i.bd, ptr noundef nonnull %2) #12
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.18) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 41), align 1, !tbaa !25, !range !33, !noundef !34
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bl = call i32 @h5tools_set_fapl_vfd(i64 noundef %i.bd, ptr noundef nonnull %3) #12
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.19) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  store i64 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  br label %parse_command_line.exit

parse_command_line.exit:                          ; preds = %._crit_edge24.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @h5tools_error_report() #12
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 8), align 8, !tbaa !18, !range !33, !noundef !34
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %parse_command_line.exit
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  %i.bq = call i32 @H5Pset_libver_bounds(i64 noundef %i.bp, i32 noundef 5, i32 noundef 5) #12
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.3) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.bs = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 9), align 1, !tbaa !20, !range !33, !noundef !34
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bu = call ptr @h5tools_getprogname() #12
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %i.bu) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %parse_command_line.exit
  %i.bw = load ptr, ptr @params_g, align 8, !tbaa !29
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 40), align 8, !tbaa !24, !range !33, !noundef !34
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 41), align 1, !range !33
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = select i1 %i.bz, i1 true, i1 %i.cb
  %i.cd = call i64 @h5tools_fopen(ptr noundef %i.bw, i32 noundef 1, i64 noundef %i.bx, i1 noundef zeroext %i.cc, ptr noundef null, i64 noundef 0) #12 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.cf = load ptr, ptr @params_g, align 8, !tbaa !29
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 32), align 8, !tbaa !11
  %i.ch = call i64 @H5Fcreate(ptr noundef %i.cf, i32 noundef 4, i64 noundef 0, i64 noundef %i.cg) #12 ; 2 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.cj = load ptr, ptr @params_g, align 8, !tbaa !29
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.5, ptr noundef %i.cj) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

.thread:                                          ; preds = %bb.al, %bb.am
  %.01619 = phi i64 [ %i.ch, %bb.am ], [ %i.cd, %bb.al ] ; 2 uses
  %i.ck = load i64, ptr @H5P_CLS_LINK_CREATE_ID_g, align 8, !tbaa !9
  %i.cl = call i64 @H5Pcreate(i64 noundef %i.ck) #12 ; 4 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.6) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.ap:                                            ; preds = %.thread
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 10), align 2, !tbaa !19, !range !33, !noundef !34
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.cp = call i32 @H5Pset_create_intermediate_group(i64 noundef %i.cl, i32 noundef 1) #12
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.7) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 9), align 1, !tbaa !20, !range !33, !noundef !34
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ct = call ptr @h5tools_getprogname() #12
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.ct) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ap
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 16), align 8, !tbaa !30
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %bb.ba
  %.025 = phi i64 [ %i.dq, %bb.ba ], [ 0, %bb.au ] ; 5 uses
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 24), align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.025
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.cz = call i64 @H5Gcreate2(i64 noundef %.01619, ptr noundef %i.cy, i64 noundef %i.cl, i64 noundef 0, i64 noundef 0) #12 ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 24), align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.025
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !21
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.9, ptr noundef %i.dd) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.aw:                                            ; preds = %.lr.ph
  %i.de = call i32 @H5Gclose(i64 noundef %i.cz) #12
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 24), align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.025
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.10, ptr noundef %i.di) #12
  call fastcc void @leave(i32 noundef 1)
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 9), align 1, !tbaa !20, !range !33, !noundef !34
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dl = call ptr @h5tools_getprogname() #12
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 24), align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.025
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.dl, ptr noundef %i.do) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dq = add nuw i64 %.025, 1                    ; 2 uses
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @params_g, i64 16), align 8, !tbaa !30
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.ba, %bb.au
  %i.dt = call i32 @H5Pclose(i64 noundef %i.cl) #12
  %i.du = icmp slt i32 %i.dt, 0
end_hunk_0
