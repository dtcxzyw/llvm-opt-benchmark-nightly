Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ofsinfo?download=true
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"fsinfo\00", align 1
@H5O_MSG_FSINFO = local_unnamed_addr constant [1 x { i32, [4 x i8], ptr, i64, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, i64, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str, i64 152, i32 0, [4 x i8] zeroinitializer, ptr @H5O__fsinfo_decode, ptr @H5O__fsinfo_encode, ptr @H5O__fsinfo_copy, ptr @H5O__fsinfo_size, ptr null, ptr @H5O__fsinfo_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @H5O__fsinfo_debug }], align 16
@H5O_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Ofsinfo.c\00", align 1
@__func__.H5O_fsinfo_set_version = private unnamed_addr constant [23 x i8] c"H5O_fsinfo_set_version\00", align 1
@H5E_FUNC_g = external local_unnamed_addr global i64, align 8
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"interface initialization failed\00", align 1
@H5O_fsinfo_ver_bounds = internal unnamed_addr constant [7 x i32] [i32 256, i32 256, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@H5E_OHDR_g = external local_unnamed_addr global i64, align 8
@H5E_BADRANGE_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"File space info message's version out of bounds\00", align 1
@__func__.H5O_fsinfo_check_version = private unnamed_addr constant [25 x i8] c"H5O_fsinfo_check_version\00", align 1
@__func__.H5O__fsinfo_decode = private unnamed_addr constant [19 x i8] c"H5O__fsinfo_decode\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@H5E_OVERFLOW_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"ran off end of input buffer while decoding\00", align 1
@H5E_FILE_g = external local_unnamed_addr global i64, align 8
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"unable to get file size\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADVALUE_g = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid file space strategy\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"invalid page size in file space info\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"H5O_fsinfo_t\00", align 1
@H5_H5O_fsinfo_t_reg_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], ptr, i64, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @.str.10, i64 152, ptr null }, align 8
@__func__.H5O__fsinfo_copy = private unnamed_addr constant [17 x i8] c"H5O__fsinfo_copy\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%*s%-*s \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"File space strategy:\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"H5F_FSPACE_STRATEGY_FSM_AGGR\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"H5F_FSPACE_STRATEGY_PAGE\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"H5F_FSPACE_STRATEGY_AGGR\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"H5F_FSPACE_STRATEGY_NONE\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"%*s%-*s %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Free-space persist:\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"%*s%-*s %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Free-space section threshold:\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"File space page size:\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"%*s%-*s %zu\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Page end metadata threshold:\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"eoa_pre_fsm_fsalloc:\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Free space manager address:\00", align 1
@switch.table.H5O__fsinfo_debug = private unnamed_addr constant [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 8

; Function Attrs: nounwind uwtable
define internal ptr @H5O__fsinfo_decode(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, i64 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 66 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %5, i64 %4
  %i.c = getelementptr i8, ptr %i.b, i64 -1       ; 25 uses
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread169, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5O_fsinfo_t_reg_free_list) #6 ; 46 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.preheader182

.preheader182:                                    ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 48       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i8 -1, i64 96, i1 false), !tbaa !17
  %i.m = icmp slt i64 %4, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %i.o = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 106, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.thread169

bb.d:                                             ; preds = %.preheader182
  %i.q = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.r = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 113, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %.preheader182
  %i.t = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 7 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !10
  %i.v = load i8, ptr %5, align 1, !tbaa !18      ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  store i8 0, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr i8, ptr %i.j, i64 16       ; 3 uses
  store i64 1, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %i.j, i64 24
  store i64 4096, ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr i8, ptr %i.j, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr i8, ptr %i.j, i64 40      ; 2 uses
  store i64 -1, ptr %i.ab, align 8, !tbaa !24
  %i.ac = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.ad = icmp ugt ptr %i.u, %i.c
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.af = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.ag = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.ah = zext i8 %i.ag to i64
  %i.ai = ptrtoint ptr %i.u to i64
  %i.aj = add i64 %i.t, 1                         ; 7 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %.not164 = icmp ugt i64 %i.ak, %i.ah
  br i1 %.not164, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.am = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.an = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 128, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !10
  %i.ap = load i8, ptr %i.u, align 1, !tbaa !18
  %i.aq = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.aq, label %bb.m [
    i8 4, label %bb.j
    i8 8, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.ao, align 1
  %i.as = zext i32 %i.ar to i64
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.av, 16
  %i.ba = shl nuw nsw i64 %i.ay, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bf, 16
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = zext i8 %i.bn to i64
  %i.bp = or disjoint i64 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bp, 16
  %i.bu = shl nuw nsw i64 %i.bs, 8
  %i.bv = or disjoint i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by
  %i.ca = shl nuw i64 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = zext i8 %i.cc to i64
  %i.ce = or disjoint i64 %i.ca, %i.cd
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.cf = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 8
  %i.cl = or disjoint i64 %i.ck, %i.cg
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %bb.l
  %.sink206 = phi i64 [ 4, %bb.l ], [ 10, %bb.k ], [ 6, %bb.j ]
  %.1.ph = phi i64 [ %i.cl, %bb.l ], [ %i.ce, %bb.k ], [ %i.as, %bb.j ]
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %.sink206
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %.1 = phi i64 [ 0, %bb.i ], [ %.1.ph, %.sink.split ] ; 2 uses
  switch i8 %i.ap, label %bb.ak [
    i8 1, label %bb.n
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !25
  store i8 1, ptr %i.x, align 8, !tbaa !20
  store i64 %.1, ptr %i.y, align 8, !tbaa !21
  %i.co = tail call i64 @H5F_get_eoa(ptr noundef %0, i32 noundef 0) #6 ; 2 uses
  store i64 %i.co, ptr %i.ab, align 8, !tbaa !24
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.cq = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165 = icmp eq i8 %i.cq, 0
  br i1 %.not165, label %bb.s, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %i.cs = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !17
  %i.ct = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 139, i64 noundef %i.cr, i64 noundef %i.cs, ptr noundef nonnull @.str.6) #6 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %.preheader
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cv = icmp ugt ptr %i.cu, %i.c
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.cx = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.cy = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.cz = zext i8 %i.cy to i64
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.aj, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.cz
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u, %bb.t, %bb.p, %bb.q
  %i.de = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.df = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.dg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 143, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.q, %.preheader
  %i.dh = getelementptr i8, ptr %i.j, i64 48
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.dh) #6
  %i.di = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165.1 = icmp eq i8 %i.di, 0
  br i1 %.not165.1, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.dk = icmp ugt ptr %i.dj, %i.c
  br i1 %i.dk, label %bb.r, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.dm = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.dn = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.do = zext i8 %i.dn to i64
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.aj, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.do
  br i1 %i.ds, label %bb.r, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.dt = getelementptr i8, ptr %i.j, i64 56
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.dt) #6
  %i.du = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165.2 = icmp eq i8 %i.du, 0
  br i1 %.not165.2, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.dw = icmp ugt ptr %i.dv, %i.c
  br i1 %i.dw, label %bb.r, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.dy = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.dz = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.ea = zext i8 %i.dz to i64
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.aj, %i.ec
  %i.ee = icmp ult i64 %i.ed, %i.ea
  br i1 %i.ee, label %bb.r, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ef = getelementptr i8, ptr %i.j, i64 64
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.ef) #6
  %i.eg = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165.3 = icmp eq i8 %i.eg, 0
  br i1 %.not165.3, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ei = icmp ugt ptr %i.eh, %i.c
  br i1 %i.ei, label %bb.r, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.ek = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.el = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.em = zext i8 %i.el to i64
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.aj, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.em
  br i1 %i.eq, label %bb.r, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.er = getelementptr i8, ptr %i.j, i64 72
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.er) #6
  %i.es = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165.4 = icmp eq i8 %i.es, 0
  br i1 %.not165.4, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.eu = icmp ugt ptr %i.et, %i.c
  br i1 %i.eu, label %bb.r, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.ew = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.ex = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.ey = zext i8 %i.ex to i64
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.aj, %i.fa
  %i.fc = icmp ult i64 %i.fb, %i.ey
  br i1 %i.fc, label %bb.r, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.fd = getelementptr i8, ptr %i.j, i64 80
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.fd) #6
  %i.fe = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not165.5 = icmp eq i8 %i.fe, 0
  br i1 %.not165.5, label %.loopexit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fg = icmp ugt ptr %i.ff, %i.c
  br i1 %i.fg, label %bb.r, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.fi = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.fj = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.fk = zext i8 %i.fj to i64
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.aj, %i.fm
  %i.fo = icmp ult i64 %i.fn, %i.fk
  br i1 %i.fo, label %bb.r, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ag, %bb.ae
  %i.fp = getelementptr i8, ptr %i.j, i64 88
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.fp) #6
  br label %.loopexit

bb.ah:                                            ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.fq, align 4, !tbaa !25
  store i64 %.1, ptr %i.y, align 8, !tbaa !21
  br label %.loopexit

bb.ai:                                            ; preds = %bb.m
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 2, ptr %i.fr, align 4, !tbaa !25
  br label %.loopexit

bb.aj:                                            ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 3, ptr %i.fs, align 4, !tbaa !25
  br label %.loopexit

bb.ak:                                            ; preds = %bb.m
  %i.ft = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !17
  %i.fu = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.fv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 164, i64 noundef %i.ft, i64 noundef %i.fu, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %.thread

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ah, %bb.ai, %bb.aj
  store i32 1, ptr %i.j, align 8, !tbaa !26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i8 1, ptr %i.fw, align 8, !tbaa !28
  br label %.thread169

bb.al:                                            ; preds = %bb.e
  %i.fx = zext i8 %i.v to i32
  store i32 %i.fx, ptr %i.j, align 8, !tbaa !26
  %i.fy = icmp ugt ptr %i.u, %i.c
  br i1 %i.fy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = ptrtoint ptr %i.u to i64
  %i.ga = add i64 %i.t, 1                         ; 17 uses
  %i.gb = sub i64 %i.ga, %i.fz
  %i.gc = icmp ult i64 %i.gb, 2
  br i1 %i.gc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.gd = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ge = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.gf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 176, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.ao:                                            ; preds = %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.gh = load i8, ptr %i.u, align 1, !tbaa !18
  %i.gi = zext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !25
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 6 uses
  store ptr %i.gk, ptr %i.a, align 8, !tbaa !10
  %i.gl = load i8, ptr %i.gg, align 1, !tbaa !18
  %i.gm = icmp ne i8 %i.gl, 0
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.go = zext i1 %i.gm to i8
  store i8 %i.go, ptr %i.gn, align 8, !tbaa !20
  %i.gp = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %.not = icmp eq i8 %i.gp, 0
  br i1 %.not, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = icmp ugt ptr %i.gk, %i.c
  br i1 %i.gq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gr = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.gs = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.gt = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.gu = zext i8 %i.gt to i64
  %i.gv = ptrtoint ptr %i.gk to i64
  %i.gw = sub i64 %i.ga, %i.gv
  %i.gx = icmp ult i64 %i.gw, %i.gu
  br i1 %i.gx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.gy = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.gz = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.ha = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 181, i64 noundef %i.gy, i64 noundef %i.gz, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.as:                                            ; preds = %bb.ao, %bb.aq
  %i.hb = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.hb, label %bb.aw [
    i8 4, label %bb.at
    i8 8, label %bb.au
    i8 2, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hd = load i32, ptr %i.gk, align 1
  %i.he = zext i32 %i.hd to i64
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !21
  br label %.sink.split207

bb.au:                                            ; preds = %bb.as
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !18
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !18
  %i.hl = zext i8 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hi, 16
  %i.hn = shl nuw nsw i64 %i.hl, 8
  %i.ho = or disjoint i64 %i.hm, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !18
  %i.hr = zext i8 %i.hq to i64
  %i.hs = or disjoint i64 %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !18
  %i.hv = zext i8 %i.hu to i64
  %i.hw = shl nuw nsw i64 %i.hs, 16
  %i.hx = shl nuw nsw i64 %i.hv, 8
  %i.hy = or disjoint i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !18
  %i.ib = zext i8 %i.ia to i64
  %i.ic = or disjoint i64 %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !18
  %i.if = zext i8 %i.ie to i64
  %i.ig = shl i64 %i.ic, 16
  %i.ih = shl nuw nsw i64 %i.if, 8
  %i.ii = or disjoint i64 %i.ig, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !18
  %i.il = zext i8 %i.ik to i64
  %i.im = or disjoint i64 %i.ii, %i.il
  %i.in = shl nuw i64 %i.im, 8
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = zext i8 %i.ip to i64
  %i.ir = or disjoint i64 %i.in, %i.iq
  store i64 %i.ir, ptr %i.hf, align 8, !tbaa !21
  br label %.sink.split207

bb.av:                                            ; preds = %bb.as
  %i.is = load i8, ptr %i.gk, align 1, !tbaa !18
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !18
  %i.ix = zext i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 8
  %i.iz = or disjoint i64 %i.iy, %i.it
  store i64 %i.iz, ptr %i.iu, align 8, !tbaa !21
  br label %.sink.split207

.sink.split207:                                   ; preds = %bb.at, %bb.au, %bb.av
  %.sink208 = phi i64 [ 5, %bb.av ], [ 11, %bb.au ], [ 7, %bb.at ]
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 %.sink208 ; 2 uses
  store ptr %i.ja, ptr %i.a, align 8, !tbaa !10
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split207, %bb.as
  %i.jb = phi ptr [ %i.gk, %bb.as ], [ %i.ja, %.sink.split207 ] ; 17 uses
  %i.jc = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %.not161 = icmp eq i8 %i.jc, 0
  br i1 %.not161, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jd = icmp ugt ptr %i.jb, %i.c
  br i1 %i.jd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.je = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.jf = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6 ; 0 uses
  %i.jg = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.jh = zext i8 %i.jg to i64
  %i.ji = ptrtoint ptr %i.jb to i64
  %i.jj = sub i64 %i.ga, %i.ji
  %i.jk = icmp ult i64 %i.jj, %i.jh
  br i1 %i.jk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.jl = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.jm = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.jn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 185, i64 noundef %i.jl, i64 noundef %i.jm, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.ba:                                            ; preds = %bb.aw, %bb.ay
  %i.jo = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.jo, label %._crit_edge [
    i8 4, label %bb.bb
    i8 8, label %bb.bc
    i8 2, label %bb.bd
  ]

._crit_edge:                                      ; preds = %bb.ba
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.jp = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.jq = load i32, ptr %i.jb, align 1
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !22
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 2 uses
  store ptr %i.js, ptr %i.a, align 8, !tbaa !10
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.jt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jb, i64 7
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !18
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jb, i64 6
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !18
  %i.jz = zext i8 %i.jy to i64
  %i.ka = shl nuw nsw i64 %i.jw, 16
  %i.kb = shl nuw nsw i64 %i.jz, 8
  %i.kc = or disjoint i64 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jb, i64 5
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !18
  %i.kf = zext i8 %i.ke to i64
  %i.kg = or disjoint i64 %i.kc, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !18
  %i.kj = zext i8 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kg, 16
  %i.kl = shl nuw nsw i64 %i.kj, 8
  %i.km = or disjoint i64 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !18
  %i.kp = zext i8 %i.ko to i64
  %i.kq = or disjoint i64 %i.km, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !18
  %i.kt = zext i8 %i.ks to i64
  %i.ku = shl i64 %i.kq, 16
  %i.kv = shl nuw nsw i64 %i.kt, 8
  %i.kw = or disjoint i64 %i.ku, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !18
  %i.kz = zext i8 %i.ky to i64
  %i.la = or disjoint i64 %i.kw, %i.kz
  %i.lb = shl nuw i64 %i.la, 8
  %i.lc = load i8, ptr %i.jb, align 1, !tbaa !18
  %i.ld = zext i8 %i.lc to i64
  %i.le = or disjoint i64 %i.lb, %i.ld            ; 2 uses
  store i64 %i.le, ptr %i.jt, align 8, !tbaa !22
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  store ptr %i.lf, ptr %i.a, align 8, !tbaa !10
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.lg = load i8, ptr %i.jb, align 1, !tbaa !18
  %i.lh = zext i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !18
  %i.ll = zext i8 %i.lk to i64
  %i.lm = shl nuw nsw i64 %i.ll, 8
  %i.ln = or disjoint i64 %i.lm, %i.lh            ; 2 uses
  store i64 %i.ln, ptr %i.li, align 8, !tbaa !22
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jb, i64 2 ; 2 uses
  store ptr %i.lo, ptr %i.a, align 8, !tbaa !10
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge, %bb.bd, %bb.bc, %bb.bb
  %i.lp = phi ptr [ %i.jb, %._crit_edge ], [ %i.lo, %bb.bd ], [ %i.lf, %bb.bc ], [ %i.js, %bb.bb ] ; 5 uses
  %i.lq = phi i64 [ %.pre, %._crit_edge ], [ %i.ln, %bb.bd ], [ %i.le, %bb.bc ], [ %i.jr, %bb.bb ]
  %i.lr = add i64 %i.lq, -1073741825
  %or.cond166 = icmp ult i64 %i.lr, -1073741824
  br i1 %or.cond166, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ls = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.lt = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.lu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 189, i64 noundef %i.ls, i64 noundef %i.lt, ptr noundef nonnull @.str.9) #6 ; 0 uses
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %i.lv = icmp ugt ptr %i.lp, %i.c
  %i.lw = ptrtoint ptr %i.lp to i64
  %i.lx = sub i64 %i.ga, %i.lw
  %i.ly = icmp ult i64 %i.lx, 2
  %or.cond = select i1 %i.lv, i1 true, i1 %i.ly
  br i1 %or.cond, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ma = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.mb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 192, i64 noundef %i.lz, i64 noundef %i.ma, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.bi:                                            ; preds = %bb.bg
  %i.mc = load i8, ptr %i.lp, align 1, !tbaa !18
  %i.md = zext i8 %i.mc to i64                    ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 %i.md, ptr %i.me, align 8, !tbaa !23
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  store ptr %i.mf, ptr %i.a, align 8, !tbaa !10
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !18
  %i.mh = zext i8 %i.mg to i64
  %i.mi = shl nuw nsw i64 %i.mh, 8
  %i.mj = or disjoint i64 %i.mi, %i.md
  store i64 %i.mj, ptr %i.me, align 8, !tbaa !23
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 3 uses
  store ptr %i.mk, ptr %i.a, align 8, !tbaa !10
  %i.ml = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not162 = icmp eq i8 %i.ml, 0
  br i1 %.not162, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mm = icmp ugt ptr %i.mk, %i.c
  br i1 %i.mm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mn = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.mo = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.mp = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.mq = zext i8 %i.mp to i64
  %i.mr = ptrtoint ptr %i.mk to i64
  %i.ms = sub i64 %i.ga, %i.mr
  %i.mt = icmp ult i64 %i.ms, %i.mq
  br i1 %i.mt, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.mu = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.mv = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.mw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 196, i64 noundef %i.mu, i64 noundef %i.mv, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %i.mx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.mx) #6
  %i.my = load i8, ptr %i.gn, align 8, !tbaa !20, !range !13, !noundef !14
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %.preheader180, label %.loopexit181

.preheader180:                                    ; preds = %bb.bm
  %i.na = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163 = icmp eq i8 %i.na, 0
  br i1 %.not163, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.preheader180
  %i.nb = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.nc = icmp ugt ptr %i.nb, %i.c
  br i1 %i.nc, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nd = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.ne = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.nf = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.ng = zext i8 %i.nf to i64
  %i.nh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ga, %i.ni
  %i.nk = icmp ult i64 %i.nj, %i.ng
  br i1 %i.nk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bn, %bb.bo
  %i.nl = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.nm = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !17
  %i.nn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_decode, i32 noundef 204, i64 noundef %i.nl, i64 noundef %i.nm, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread

bb.bq:                                            ; preds = %bb.bo, %.preheader180
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #6
  %i.no = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.1 = icmp eq i8 %i.no, 0
  br i1 %.not163.1, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.nq = icmp ugt ptr %i.np, %i.c
  br i1 %i.nq, label %bb.bp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nr = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.ns = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.nt = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.nu = zext i8 %i.nt to i64
  %i.nv = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.ga, %i.nw
  %i.ny = icmp ult i64 %i.nx, %i.nu
  br i1 %i.ny, label %bb.bp, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %i.nz = getelementptr i8, ptr %i.j, i64 56
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.nz) #6
  %i.oa = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.2 = icmp eq i8 %i.oa, 0
  br i1 %.not163.2, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.oc = icmp ugt ptr %i.ob, %i.c
  br i1 %i.oc, label %bb.bp, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.od = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.oe = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.of = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.og = zext i8 %i.of to i64
  %i.oh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = sub i64 %i.ga, %i.oi
  %i.ok = icmp ult i64 %i.oj, %i.og
  br i1 %i.ok, label %bb.bp, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %i.ol = getelementptr i8, ptr %i.j, i64 64
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ol) #6
  %i.om = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.3 = icmp eq i8 %i.om, 0
  br i1 %.not163.3, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.on = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.oo = icmp ugt ptr %i.on, %i.c
  br i1 %i.oo, label %bb.bp, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.op = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.oq = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.or = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.os = zext i8 %i.or to i64
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = sub i64 %i.ga, %i.ou
  %i.ow = icmp ult i64 %i.ov, %i.os
  br i1 %i.ow, label %bb.bp, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %i.ox = getelementptr i8, ptr %i.j, i64 72
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ox) #6
  %i.oy = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.4 = icmp eq i8 %i.oy, 0
  br i1 %.not163.4, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oz = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.pa = icmp ugt ptr %i.oz, %i.c
  br i1 %i.pa, label %bb.bp, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pb = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.pc = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.pd = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.pe = zext i8 %i.pd to i64
  %i.pf = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = sub i64 %i.ga, %i.pg
  %i.pi = icmp ult i64 %i.ph, %i.pe
  br i1 %i.pi, label %bb.bp, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.pj = getelementptr i8, ptr %i.j, i64 80
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.pj) #6
  %i.pk = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.5 = icmp eq i8 %i.pk, 0
  br i1 %.not163.5, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pl = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.pm = icmp ugt ptr %i.pl, %i.c
  br i1 %i.pm, label %bb.bp, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pn = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.po = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.pp = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.pq = zext i8 %i.pp to i64
  %i.pr = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.ga, %i.ps
  %i.pu = icmp ult i64 %i.pt, %i.pq
  br i1 %i.pu, label %bb.bp, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.pv = getelementptr i8, ptr %i.j, i64 88
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.pv) #6
  %i.pw = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.6 = icmp eq i8 %i.pw, 0
  br i1 %.not163.6, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.px = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.py = icmp ugt ptr %i.px, %i.c
  br i1 %i.py, label %bb.bp, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pz = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qa = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qb = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.qc = zext i8 %i.qb to i64
  %i.qd = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = sub i64 %i.ga, %i.qe
  %i.qg = icmp ult i64 %i.qf, %i.qc
  br i1 %i.qg, label %bb.bp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %i.qh = getelementptr i8, ptr %i.j, i64 96
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.qh) #6
  %i.qi = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.7 = icmp eq i8 %i.qi, 0
  br i1 %.not163.7, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.qk = icmp ugt ptr %i.qj, %i.c
  br i1 %i.qk, label %bb.bp, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ql = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qm = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qn = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.qo = zext i8 %i.qn to i64
  %i.qp = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = sub i64 %i.ga, %i.qq
  %i.qs = icmp ult i64 %i.qr, %i.qo
  br i1 %i.qs, label %bb.bp, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.qt = getelementptr i8, ptr %i.j, i64 104
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.qt) #6
  %i.qu = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.8 = icmp eq i8 %i.qu, 0
  br i1 %.not163.8, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qv = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.qw = icmp ugt ptr %i.qv, %i.c
  br i1 %i.qw, label %bb.bp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qx = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qy = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.qz = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.ra = zext i8 %i.qz to i64
  %i.rb = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = sub i64 %i.ga, %i.rc
  %i.re = icmp ult i64 %i.rd, %i.ra
  br i1 %i.re, label %bb.bp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %i.rf = getelementptr i8, ptr %i.j, i64 112
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.rf) #6
  %i.rg = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.9 = icmp eq i8 %i.rg, 0
  br i1 %.not163.9, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rh = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ri = icmp ugt ptr %i.rh, %i.c
  br i1 %i.ri, label %bb.bp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rj = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.rk = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.rl = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.rm = zext i8 %i.rl to i64
  %i.rn = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = sub i64 %i.ga, %i.ro
  %i.rq = icmp ult i64 %i.rp, %i.rm
  br i1 %i.rq, label %bb.bp, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %i.rr = getelementptr i8, ptr %i.j, i64 120
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.rr) #6
  %i.rs = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.10 = icmp eq i8 %i.rs, 0
  br i1 %.not163.10, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rt = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ru = icmp ugt ptr %i.rt, %i.c
  br i1 %i.ru, label %bb.bp, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rv = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.rw = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.rx = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.ry = zext i8 %i.rx to i64
  %i.rz = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = sub i64 %i.ga, %i.sa
  %i.sc = icmp ult i64 %i.sb, %i.ry
  br i1 %i.sc, label %bb.bp, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  %i.sd = getelementptr i8, ptr %i.j, i64 128
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.sd) #6
  %i.se = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %.not163.11 = icmp eq i8 %i.se, 0
  br i1 %.not163.11, label %.loopexit181.loopexit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sf = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.sg = icmp ugt ptr %i.sf, %i.c
  br i1 %i.sg, label %bb.bp, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sh = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.si = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6 ; 0 uses
  %i.sj = call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.sk = zext i8 %i.sj to i64
  %i.sl = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = sub i64 %i.ga, %i.sm
  %i.so = icmp ult i64 %i.sn, %i.sk
  br i1 %i.so, label %bb.bp, label %.loopexit181.loopexit

.loopexit181.loopexit:                            ; preds = %bb.cw, %bb.cu
  %i.sp = getelementptr i8, ptr %i.j, i64 136
  call void @H5F_addr_decode(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.sp) #6
  br label %.loopexit181

.loopexit181:                                     ; preds = %.loopexit181.loopexit, %bb.bm
  %i.sq = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i8 0, ptr %i.sq, align 8, !tbaa !28
  br label %.thread169

.thread:                                          ; preds = %bb.d, %bb.an, %bb.ar, %bb.az, %bb.bf, %bb.bh, %bb.bl, %bb.bp, %bb.h, %bb.ak, %bb.o, %bb.r
  %i.sr = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_fsinfo_t_reg_free_list, ptr noundef nonnull %i.j) #6 ; 0 uses
  br label %.thread169

.thread169:                                       ; preds = %bb.c, %.loopexit181, %.loopexit, %bb.a, %.thread
  %.2 = phi ptr [ null, %.thread ], [ null, %bb.c ], [ null, %bb.a ], [ %i.j, %.loopexit181 ], [ %i.j, %.loopexit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5O__fsinfo_encode(ptr noundef %0, i1 zeroext %1, i64 %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.loopexit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 8, !tbaa !26
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.i, ptr %3, align 1, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.m, ptr %i.j, align 1, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !20, !range !13, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 5 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !10
  store i8 %i.p, ptr %i.n, align 1, !tbaa !18
  %i.r = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.r, label %bb.f [
    i8 4, label %bb.c
    i8 8, label %bb.d
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.q, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i64, ptr %i.s, align 8, !tbaa !21
  %i.x = lshr i64 %i.w, 8
  %i.y = trunc i64 %i.x to i8
  store i8 %i.y, ptr %i.v, align 1, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !21
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !21
  %i.af = lshr i64 %i.ae, 24
  %i.ag = trunc i64 %i.af to i8
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !18
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21 ; 8 uses
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.aj, ptr %i.q, align 1, !tbaa !18
  %i.al = lshr i64 %i.ai, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !18
  %i.ao = lshr i64 %i.ai, 16
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !18
  %i.ar = lshr i64 %i.ai, 24
  %i.as = trunc i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !18
  %i.au = lshr i64 %i.ai, 32
  %i.av = trunc i64 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.av, ptr %i.at, align 1, !tbaa !18
  %i.ax = lshr i64 %i.ai, 40
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !18
  %i.ba = lshr i64 %i.ai, 48
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !18
  %i.bd = lshr i64 %i.ai, 56
  %i.be = trunc nuw i64 %i.bd to i8
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !18
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bh = trunc i64 %i.bg to i8
  store i8 %i.bh, ptr %i.q, align 1, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = trunc i64 %i.bk to i8
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.sink62 = phi i64 [ 7, %bb.c ], [ 11, %bb.d ], [ 5, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %.sink62 ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %i.bn = phi ptr [ %i.q, %bb.b ], [ %i.bm, %.sink.split ] ; 16 uses
  %i.bo = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.bo, label %bb.j [
    i8 4, label %bb.g
    i8 8, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !22
  %i.br = trunc i64 %i.bq to i8
  store i8 %i.br, ptr %i.bn, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bt = load i64, ptr %i.bp, align 8, !tbaa !22
  %i.bu = lshr i64 %i.bt, 8
  %i.bv = trunc i64 %i.bu to i8
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !22
  %i.by = lshr i64 %i.bx, 16
  %i.bz = trunc i64 %i.by to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.cb = load i64, ptr %i.bp, align 8, !tbaa !22
  %i.cc = lshr i64 %i.cb, 24
  %i.cd = trunc i64 %i.cc to i8
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !18
  br label %.sink.split63

bb.h:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !22 ; 8 uses
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.cg, ptr %i.bn, align 1, !tbaa !18
  %i.ci = lshr i64 %i.cf, 8
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !18
  %i.cl = lshr i64 %i.cf, 16
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !18
  %i.co = lshr i64 %i.cf, 24
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !18
  %i.cr = lshr i64 %i.cf, 32
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !18
  %i.cu = lshr i64 %i.cf, 40
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !18
  %i.cx = lshr i64 %i.cf, 48
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !18
  %i.da = lshr i64 %i.cf, 56
  %i.db = trunc nuw i64 %i.da to i8
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !18
  br label %.sink.split63

bb.i:                                             ; preds = %bb.f
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.de = trunc i64 %i.dd to i8
  store i8 %i.de, ptr %i.bn, align 1, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.dh = lshr i64 %i.dg, 8
  %i.di = trunc i64 %i.dh to i8
  store i8 %i.di, ptr %i.df, align 1, !tbaa !18
  br label %.sink.split63

.sink.split63:                                    ; preds = %bb.i, %bb.h, %bb.g
  %.sink64 = phi i64 [ 4, %bb.g ], [ 8, %bb.h ], [ 2, %bb.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink64 ; 2 uses
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.sink.split63, %bb.f
  %i.dk = phi ptr [ %i.bn, %bb.f ], [ %i.dj, %.sink.split63 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !23
  %i.dn = trunc i64 %i.dm to i8
  store i8 %i.dn, ptr %i.dk, align 1, !tbaa !18
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !23
  %i.dr = lshr i64 %i.dq, 8
  %i.ds = trunc i64 %i.dr to i8
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.dv) #6
  %i.dw = load i8, ptr %i.o, align 8, !tbaa !20, !range !13, !noundef !14
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.dz) #6
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.eb) #6
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ed) #6
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ef) #6
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.eh) #6
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ej) #6
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.el) #6
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.en = load i64, ptr %i.em, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.en) #6
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ep) #6
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.er) #6
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.et = load i64, ptr %i.es, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.et) #6
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !17
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ev) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.j, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @H5O__fsinfo_copy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !15

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5O_fsinfo_t_reg_free_list) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %i.j = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O__fsinfo_copy, i32 noundef 284, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.07 = phi ptr [ %1, %bb.b ], [ %i.g, %bb.c ]   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.07, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false), !tbaa.struct !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ %.07, %bb.e ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 3831) i64 @H5O__fsinfo_size(ptr noundef %0, i1 zeroext %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.h = zext i8 %i.g to i64
  %i.i = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  %i.j = zext i8 %i.i to i64
  %i.k = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.l = zext i8 %i.k to i64
  %i.m = add nuw nsw i64 %i.h, 5
  %i.n = add nuw nsw i64 %i.m, %i.j
  %i.o = add nuw nsw i64 %i.n, %i.l               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !20, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #6
  %i.t = zext i8 %i.s to i64
  %i.u = mul nuw nsw i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.v, %bb.c ], [ %i.o, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5O__fsinfo_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_fsinfo_t_reg_free_list, ptr noundef %0) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @H5O__fsinfo_debug(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.14) #6 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 2 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.H5O__fsinfo_debug, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %.str.20.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %bb.b ]
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef nonnull %.str.20.sink) #6 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !20, !range !13, !noundef !14
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, ptr @.str.23, ptr @.str.24
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.p) #6 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.26, i64 noundef %i.s) #6 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.27, i64 noundef %i.v) #6 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.29, i64 noundef %i.y) #6 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.30, i64 noundef %i.ab) #6 ; 0 uses
  %i.ad = load i8, ptr %i.m, align 8, !tbaa !20, !range !13, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.ag) #6 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.aj) #6 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.am) #6 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.ap) #6 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.as) #6 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.av) #6 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.ay) #6 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.bb) #6 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.be) #6 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.bh) #6 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.bk) #6 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef nonnull @.str.31, i64 noundef %i.bn) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_fsinfo_set_version(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !12
  %i.f = tail call i32 @H5O__init_package() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13
  %.pre15 = load i8, ptr @H5_libterm_g, align 1, !range !13
  %.pre16 = trunc nuw i8 %.pre to i1
  %.pre17 = trunc nuw i8 %.pre15 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !12
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !17
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O_fsinfo_set_version, i32 noundef 436, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi18 = phi i1 [ %.pre17, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre16, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi18, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.i, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr @H5O_fsinfo_ver_bounds, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %.not.inv = icmp ugt i32 %0, 1
  %.012 = select i1 %.not.inv, i32 %i.o, i32 1    ; 2 uses
  %i.p = icmp ult i32 %1, 2
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %1 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr @H5O_fsinfo_ver_bounds, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = icmp ugt i32 %.012, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.u = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.v = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !17
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O_fsinfo_set_version, i32 noundef 450, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %.012, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.h, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @H5O__init_package() local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_fsinfo_check_version(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !12
  %i.f = tail call i32 @H5O__init_package() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13
  %.pre6 = load i8, ptr @H5_libterm_g, align 1, !range !13
  %.pre7 = trunc nuw i8 %.pre to i1
  %.pre8 = trunc nuw i8 %.pre6 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !12
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !17
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O_fsinfo_check_version, i32 noundef 473, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi9 = phi i1 [ %.pre8, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre7, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi9, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.h, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ult i32 %0, 2
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %0 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @H5O_fsinfo_ver_bounds, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = load i32, ptr %1, align 8, !tbaa !26
  %i.r = icmp ugt i32 %i.q, %i.p
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.t = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !17
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5O_fsinfo_check_version, i32 noundef 481, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #2

declare i64 @H5F_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #2

declare void @H5F_addr_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!4, !4, i64 0}
!19 = !{!"H5O_fsinfo_t", !5, i64 0, !5, i64 4, !11, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !4, i64 48, !11, i64 144}
!20 = !{!19, !11, i64 8}
!21 = !{!19, !16, i64 16}
!22 = !{!19, !16, i64 24}
!23 = !{!19, !16, i64 32}
!24 = !{!19, !16, i64 40}
end_hunk_0
