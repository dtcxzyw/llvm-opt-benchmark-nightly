Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5debug?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.81 = private unnamed_addr constant [33 x i8] c"Fixed array header block usage:\0A\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"\09h5debug <filename> <Fixed Array header address> <object header address>\0A\00", align 1
@.str.84 = private unnamed_addr constant [124 x i8] c"ERROR: Need fixed array header address and object header address containing the layout message in order to dump data block\0A\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"fixed array data block usage:\0A\00", align 1
@.str.86 = private unnamed_addr constant [89 x i8] c"\09h5debug <filename> <data block address> <array header address> <object header address>\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"Signature:\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"unknown signature\0A\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"An error occurred!\0A\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"Error in closing file!\0A\00", align 1
@H5B2_TEST = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_INDIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_FILT_INDIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_DIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_FILT_DIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5G_BT2_NAME = external constant [1 x %struct.H5B2_class_t], align 16
@H5G_BT2_CORDER = external constant [1 x %struct.H5B2_class_t], align 16
@H5SM_INDEX = external constant [1 x %struct.H5B2_class_t], align 16
@H5A_BT2_NAME = external constant [1 x %struct.H5B2_class_t], align 16
@H5A_BT2_CORDER = external constant [1 x %struct.H5B2_class_t], align 16
@H5B2_TEST2 = external constant [1 x %struct.H5B2_class_t], align 16
@.str.94 = private unnamed_addr constant [30 x i8] c"Unknown v2 B-tree subtype %u\0A\00", align 1
@H5EA_CLS_TEST = external constant [1 x %struct.H5EA_class_t], align 16
@H5EA_CLS_CHUNK = external constant [1 x %struct.H5EA_class_t], align 16
@H5EA_CLS_FILT_CHUNK = external constant [1 x %struct.H5EA_class_t], align 16
@.str.95 = private unnamed_addr constant [35 x i8] c"Unknown extensible array class %u\0A\00", align 1
@H5FA_CLS_TEST = external constant [1 x %struct.H5FA_class_t], align 16
@H5FA_CLS_CHUNK = external constant [1 x %struct.H5FA_class_t], align 16
@H5FA_CLS_FILT_CHUNK = external constant [1 x %struct.H5FA_class_t], align 16
@.str.96 = private unnamed_addr constant [30 x i8] c"Unknown fixed array class %u\0A\00", align 1
@switch.table.get_H5B2_class = private unnamed_addr constant [13 x ptr] [ptr @H5B2_TEST, ptr @H5HF_HUGE_BT2_INDIR, ptr @H5HF_HUGE_BT2_FILT_INDIR, ptr @H5HF_HUGE_BT2_DIR, ptr @H5HF_HUGE_BT2_FILT_DIR, ptr @H5G_BT2_NAME, ptr @H5G_BT2_CORDER, ptr @H5SM_INDEX, ptr @H5A_BT2_NAME, ptr @H5A_BT2_CORDER, ptr @H5D_BT2, ptr @H5D_BT2_FILT, ptr @H5B2_TEST2], align 8
@switch.table.get_H5EA_class = private unnamed_addr constant [3 x ptr] [ptr @H5EA_CLS_CHUNK, ptr @H5EA_CLS_FILT_CHUNK, ptr @H5EA_CLS_TEST], align 8
@switch.table.get_H5FA_class = private unnamed_addr constant [3 x ptr] [ptr @H5FA_CLS_CHUNK, ptr @H5FA_CLS_FILT_CHUNK, ptr @H5FA_CLS_TEST], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 6) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i64], align 16              ; 45 uses
  %i.b = alloca [8 x i8], align 1                 ; 44 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  %i.e = alloca [33 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store ptr null, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.f = icmp eq i32 %0, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef %i.h) #11 ; 0 uses
  br label %.thread444

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @H5open() #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %i.l) #12 ; 0 uses
  br label %.thread444

bb.e:                                             ; preds = %bb.c
  %i.n = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.o = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.p = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !21
  %i.q = call i64 @H5Pcreate(i64 noundef %i.p) #10 ; 5 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.t = call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.s) #12 ; 0 uses
  br label %.thread444

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.v, i32 noundef 37) #13
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @H5Pset_fapl_family(i64 noundef %i.q, i64 noundef 0, i64 noundef 0) #10
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %._crit_edge464.a

._crit_edge464.a:                                 ; preds = %bb.h
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aa = call i64 @fwrite(ptr nonnull @.str.3, i64 37, i64 1, ptr %i.z) #12 ; 0 uses
  br label %.thread397

bb.j:                                             ; preds = %._crit_edge464.a, %bb.g
  %i.ab = phi ptr [ %.pre, %._crit_edge464.a ], [ %i.v, %bb.g ]
  %i.ac = call i64 @H5Fopen(ptr noundef %i.ab, i32 noundef 0, i64 noundef %i.q) #10 ; 27 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = call i64 @fwrite(ptr nonnull @.str.4, i64 17, i64 1, ptr %i.ae) #12 ; 0 uses
  br label %.thread397

bb.l:                                             ; preds = %bb.j
  %i.ag = call i32 @H5CX_push(ptr noundef nonnull %2) #10
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aj = call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %i.ai) #12 ; 0 uses
  br label %.thread397

bb.n:                                             ; preds = %bb.l
  %i.ak = call ptr @H5VL_vol_object(i64 noundef %i.ac) #10 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.an = call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr %i.am) #12 ; 0 uses
  br label %.thread397

bb.p:                                             ; preds = %bb.n
  %i.ao = call ptr @H5VL_object_data(ptr noundef nonnull %i.ak) #10 ; 27 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ar = call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %i.aq) #12 ; 0 uses
  br label %.thread397

bb.r:                                             ; preds = %bb.p
  %i.as = call i32 @H5AC_ignore_tags(ptr noundef nonnull %i.ao) #10
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.av = call i64 @fwrite(ptr nonnull @.str.8, i64 28, i64 1, ptr %i.au) #12 ; 0 uses
  br label %.thread397

bb.t:                                             ; preds = %bb.r
  %i.aw = icmp sgt i32 %0, 2
  br i1 %i.aw, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  br label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.az = call i64 @__isoc23_strtoll(ptr noundef %i.ay, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %.not449.a = icmp eq i32 %0, 3
  br i1 %.not449.a, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = add nsw i32 %0, -3
  %i.bb = icmp samesign ugt i32 %0, 13
  br i1 %i.bb, label %bb.w, label %.lr.ph.preheader

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.9, i32 noundef 10) #11 ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v, %bb.w
  %.0279 = phi i32 [ 10, %bb.w ], [ %i.ba, %bb.v ]
  %i.be = zext nneg i32 %.0279 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0275452 = phi i64 [ %i.bk, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0275452
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = call i64 @__isoc23_strtoll(ptr noundef %i.bh, ptr noundef null, i32 noundef 0) #10
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0275452
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !21
  %i.bk = add nuw nsw i64 %.0275452, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.u
  %.0281387 = phi i64 [ 0, %.thread ], [ %i.az, %bb.u ], [ %i.az, %.lr.ph ] ; 25 uses
  %.1280 = phi i1 [ true, %.thread ], [ true, %bb.u ], [ false, %.lr.ph ] ; 18 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.10, i64 noundef %.0281387) #10 ; 0 uses
  %i.bn = call i32 @H5F_block_read(ptr noundef nonnull %i.ao, i32 noundef 1, i64 noundef %.0281387, i64 noundef 8, ptr noundef nonnull %i.b) #10
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bq = call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %i.bp) #12 ; 0 uses
  br label %.thread397

bb.y:                                             ; preds = %.loopexit
  %i.br = load i64, ptr %i.b, align 1
  %i.bs = icmp ne i64 %i.br, 727905341903489161
  %i.bt = zext i1 %i.bs to i32
  %.not323 = icmp eq i32 %i.bt, 0
  br i1 %.not323, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bv = call i32 @H5F_debug(ptr noundef nonnull %i.ao, ptr noundef %i.bu, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.aa:                                            ; preds = %bb.y
  %i.bw = load i32, ptr %i.b, align 1
  %i.bx = icmp ne i32 %i.bw, 1346454856
  %i.by = zext i1 %i.bx to i32
  %.not325 = icmp eq i32 %i.by, 0
  br i1 %.not325, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ca = call i32 @H5HL_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.bz, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.ac:                                            ; preds = %bb.aa
  %i.cb = load i32, ptr %i.b, align 1
  %i.cc = icmp ne i32 %i.cb, 1280262983
  %i.cd = zext i1 %i.cc to i32
  %.not327 = icmp eq i32 %i.cd, 0
  br i1 %.not327, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cf = call i32 @H5HG_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ce, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.ae:                                            ; preds = %bb.ac
  %i.cg = load i32, ptr %i.b, align 1
  %i.ch = icmp ne i32 %i.cg, 1146048083
  %i.ci = zext i1 %i.ch to i32
  %.not329 = icmp eq i32 %i.ci, 0
  br i1 %.not329, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cj = load i64, ptr %i.a, align 16            ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %or.cond = select i1 %.1280, i1 true, i1 %i.ck
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cm = call i64 @fwrite(ptr nonnull @.str.16, i64 78, i64 1, ptr %i.cl) #12 ; 0 uses
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.co = call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %i.cn) #12 ; 0 uses
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cq = call i64 @fwrite(ptr nonnull @.str.18, i64 73, i64 1, ptr %i.cp) #12 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cs = call i32 @H5G_node_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.cr, i32 noundef 0, i32 noundef 50, i64 noundef %i.cj) #10
  br label %bb.et

bb.ai:                                            ; preds = %bb.ae
  %i.ct = load i32, ptr %i.b, align 1
  %i.cu = icmp ne i32 %i.ct, 1162170964
  %i.cv = zext i1 %i.cu to i32
  %.not331 = icmp eq i32 %i.cv, 0
  br i1 %.not331, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  switch i8 %i.cx, label %bb.at [
    i8 0, label %bb.ak
    i8 1, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.a, align 16            ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %or.cond5 = select i1 %.1280, i1 true, i1 %i.cz
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.db = call i64 @fwrite(ptr nonnull @.str.16, i64 78, i64 1, ptr %i.da) #12 ; 0 uses
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dd = call i64 @fwrite(ptr nonnull @.str.20, i64 32, i64 1, ptr %i.dc) #12 ; 0 uses
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.df = call i64 @fwrite(ptr nonnull @.str.21, i64 67, i64 1, ptr %i.de) #12 ; 0 uses
  br label %.thread388

bb.am:                                            ; preds = %bb.ak
  %i.dg = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dh = call i32 @H5G_node_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.dg, i32 noundef 0, i32 noundef 50, i64 noundef %i.cy) #10
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.di = load i64, ptr %i.a, align 16            ; 5 uses
  %i.dj = icmp eq i64 %i.di, 0
  %or.cond8 = select i1 %.1280, i1 true, i1 %i.dj
  br i1 %or.cond8, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dl = call i64 @fwrite(ptr nonnull @.str.22, i64 77, i64 1, ptr %i.dk) #12 ; 0 uses
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dn = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.dm) #12 ; 0 uses
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dp = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.do) #12 ; 0 uses
  br label %.thread388

bb.ap:                                            ; preds = %bb.an
  %i.dq = trunc i64 %i.di to i32                  ; 2 uses
  %i.dr = icmp ugt i32 %i.dq, 9
  br i1 %i.dr, label %bb.aq, label %.preheader451

.preheader451:                                    ; preds = %bb.ap
  %i.ds = and i64 %i.di, 15                       ; 4 uses
  %.not459 = icmp eq i64 %i.ds, 0
  br i1 %.not459, label %._crit_edge, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %.preheader451
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dt = icmp samesign ult i64 %i.ds, 4
  br i1 %i.dt, label %.lr.ph455.epil.preheader, label %.lr.ph455.preheader.new

.lr.ph455.preheader.new:                          ; preds = %.lr.ph455.preheader
  %unroll_iter = and i64 %i.di, 12
  br label %.lr.ph455

bb.aq:                                            ; preds = %bb.ap
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dv = call i64 @fwrite(ptr nonnull @.str.25, i64 57, i64 1, ptr %i.du) #12 ; 0 uses
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dx = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.dw) #12 ; 0 uses
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dz = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.dy) #12 ; 0 uses
  br label %.thread388

.lr.ph455:                                        ; preds = %.lr.ph455, %.lr.ph455.preheader.new
  %.1276454 = phi i64 [ 0, %.lr.ph455.preheader.new ], [ %i.ep, %.lr.ph455 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph455.preheader.new ], [ %niter.next.3, %.lr.ph455 ]
  %i.ea = or disjoint i64 %.1276454, 1            ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.1276454
  store i32 %i.ed, ptr %i.ee, align 16, !tbaa !24
  %i.ef = or disjoint i64 %.1276454, 2            ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 16, !tbaa !21
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ea
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !24
  %i.ek = or disjoint i64 %.1276454, 3            ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !21
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ef
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !24
  %i.ep = add nuw nsw i64 %.1276454, 4            ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 16, !tbaa !21
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ek
  store i32 %i.es, ptr %i.et, align 4, !tbaa !24
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph457.preheader.unr-lcssa, label %.lr.ph455, !llvm.loop !13

.lr.ph457.preheader.unr-lcssa:                    ; preds = %.lr.ph455
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph457.preheader, label %.lr.ph455.epil.preheader

.lr.ph455.epil.preheader:                         ; preds = %.lr.ph457.preheader.unr-lcssa, %.lr.ph455.preheader
  %.1276454.epil.init = phi i64 [ 0, %.lr.ph455.preheader ], [ %i.ep, %.lr.ph457.preheader.unr-lcssa ]
  %lcmp.mod511 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod511)
  br label %.lr.ph455.epil

.lr.ph455.epil:                                   ; preds = %.lr.ph455.epil, %.lr.ph455.epil.preheader
  %.1276454.epil = phi i64 [ %i.eu, %.lr.ph455.epil ], [ %.1276454.epil.init, %.lr.ph455.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph455.epil ], [ 0, %.lr.ph455.epil.preheader ]
  %i.eu = add nuw nsw i64 %.1276454.epil, 1       ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.1276454.epil
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph457.preheader, label %.lr.ph455.epil, !llvm.loop !14

.lr.ph457.preheader:                              ; preds = %.lr.ph455.epil, %.lr.ph457.preheader.unr-lcssa
  br label %.lr.ph457

bb.ar:                                            ; preds = %.lr.ph457
  %i.ez = add nuw nsw i64 %.2277456, 1            ; 2 uses
  %exitcond463.not = icmp eq i64 %i.ez, %i.ds
  br i1 %exitcond463.not, label %._crit_edge, label %.lr.ph457, !llvm.loop !15

.lr.ph457:                                        ; preds = %.lr.ph457.preheader, %bb.ar
  %.2277456 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.lr.ph457.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2277456
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !24
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.as, label %bb.ar

bb.as:                                            ; preds = %.lr.ph457
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fe = call i64 @fwrite(ptr nonnull @.str.26, i64 37, i64 1, ptr %i.fd) #12 ; 0 uses
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fg = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.ff) #12 ; 0 uses
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fi = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.fh) #12 ; 0 uses
  br label %.thread388

._crit_edge:                                      ; preds = %bb.ar, %.preheader451
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ds
  store i32 0, ptr %i.fj, align 4, !tbaa !24
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fl = call i32 @H5D_btree_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.fk, i32 noundef 0, i32 noundef 50, i32 noundef %i.dq, ptr noundef nonnull %i.e) #10
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  %i.fm = zext i8 %i.cx to i32
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef nonnull @.str.27, i32 noundef %i.fm) #11 ; 0 uses
  br label %.thread388

.thread388:                                       ; preds = %bb.at, %bb.al, %bb.as, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread397

bb.au:                                            ; preds = %bb.am, %._crit_edge
  %.1263 = phi i32 [ %i.fl, %._crit_edge ], [ %i.dh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.et

bb.av:                                            ; preds = %bb.ai
  %i.fp = load i32, ptr %i.b, align 1
  %i.fq = icmp ne i32 %i.fp, 1145590850
  %i.fr = zext i1 %i.fq to i32
  %.not333 = icmp eq i32 %i.fr, 0
  br i1 %.not333, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val379 = load i8, ptr %i.fs, align 1, !tbaa !23
  %i.ft = call fastcc ptr @get_H5B2_class(i8 %.val379) ; 3 uses
  %i.fu = icmp eq ptr %i.ft, @H5D_BT2
  %i.fv = icmp eq ptr %i.ft, @H5D_BT2_FILT
  %or.cond10 = or i1 %i.fu, %i.fv
  %.pre474 = load i64, ptr %i.a, align 16         ; 2 uses
  %i.fw = icmp eq i64 %.pre474, 0
  %or.cond13 = select i1 %.1280, i1 true, i1 %i.fw
  %or.cond510 = select i1 %or.cond10, i1 %or.cond13, i1 false
  br i1 %or.cond510, label %bb.ax, label %.thread392

.thread392:                                       ; preds = %bb.aw
  %i.fx = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fy = call i32 @H5B2__hdr_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.fx, i32 noundef 0, i32 noundef 50, ptr noundef %i.ft, i64 noundef %.pre474) #10
  br label %bb.et

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ga = call i64 @fwrite(ptr nonnull @.str.29, i64 117, i64 1, ptr %i.fz) #12 ; 0 uses
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gc = call i64 @fwrite(ptr nonnull @.str.30, i64 21, i64 1, ptr %i.gb) #12 ; 0 uses
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ge = call i64 @fwrite(ptr nonnull @.str.31, i64 71, i64 1, ptr %i.gd) #12 ; 0 uses
  br label %.thread397

bb.ay:                                            ; preds = %bb.av
  %i.gf = load i32, ptr %i.b, align 1
  %i.gg = icmp ne i32 %i.gf, 1313428546
  %i.gh = zext i1 %i.gg to i32
  %.not335 = icmp eq i32 %i.gh, 0
  br i1 %.not335, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val378 = load i8, ptr %i.gi, align 1, !tbaa !23
  %i.gj = call fastcc ptr @get_H5B2_class(i8 %.val378) ; 3 uses
  %i.gk = icmp eq ptr %i.gj, @H5D_BT2
  %i.gl = icmp eq ptr %i.gj, @H5D_BT2_FILT
  %or.cond15 = or i1 %i.gk, %i.gl
  %.pre468 = load i64, ptr %i.a, align 16         ; 3 uses
  br i1 %or.cond15, label %bb.ba, label %._crit_edge469

._crit_edge469:                                   ; preds = %bb.az
  %.phi.trans.insert470.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre471.a = load i64, ptr %.phi.trans.insert470.a, align 8
  %.phi.trans.insert472 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre473 = load i64, ptr %.phi.trans.insert472, align 16
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gm = icmp eq i64 %.pre468, 0
  %or.cond18 = select i1 %.1280, i1 true, i1 %i.gm
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  %or.cond21 = select i1 %or.cond18, i1 true, i1 %i.gp
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gr = load i64, ptr %i.gq, align 16           ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %or.cond24 = select i1 %or.cond21, i1 true, i1 %i.gs
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = icmp eq i64 %i.gu, 0
  %or.cond27 = select i1 %or.cond24, i1 true, i1 %i.gv
  br i1 %or.cond27, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gx = call i64 @fwrite(ptr nonnull @.str.33, i64 162, i64 1, ptr %i.gw) #12 ; 0 uses
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gz = call i64 @fwrite(ptr nonnull @.str.34, i64 78, i64 1, ptr %i.gy) #12 ; 0 uses
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hb = call i64 @fwrite(ptr nonnull @.str.35, i64 31, i64 1, ptr %i.ha) #12 ; 0 uses
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hd = call i64 @fwrite(ptr nonnull @.str.36, i64 123, i64 1, ptr %i.hc) #12 ; 0 uses
  br label %.thread397

bb.bc:                                            ; preds = %._crit_edge469, %bb.ba
  %i.he = phi i64 [ %.pre473, %._crit_edge469 ], [ %i.gr, %bb.ba ] ; 2 uses
  %i.hf = phi i64 [ %.pre471.a, %._crit_edge469 ], [ %i.go, %bb.ba ] ; 2 uses
  %i.hg = icmp eq i64 %.pre468, 0
  %or.cond30 = select i1 %.1280, i1 true, i1 %i.hg
  %i.hh = icmp eq i64 %i.hf, 0
  %or.cond33 = select i1 %or.cond30, i1 true, i1 %i.hh
  %i.hi = icmp eq i64 %i.he, 0
  %or.cond36 = select i1 %or.cond33, i1 true, i1 %i.hi
  br i1 %or.cond36, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hk = call i64 @fwrite(ptr nonnull @.str.37, i64 111, i64 1, ptr %i.hj) #12 ; 0 uses
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hm = call i64 @fwrite(ptr nonnull @.str.34, i64 78, i64 1, ptr %i.hl) #12 ; 0 uses
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ho = call i64 @fwrite(ptr nonnull @.str.35, i64 31, i64 1, ptr %i.hn) #12 ; 0 uses
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hq = call i64 @fwrite(ptr nonnull @.str.38, i64 99, i64 1, ptr %i.hp) #12 ; 0 uses
  br label %.thread397

bb.be:                                            ; preds = %bb.bc
  %i.hr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.hs = trunc i64 %i.hf to i32
  %i.ht = trunc i64 %i.he to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !21
  %i.hw = call i32 @H5B2__int_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.hr, i32 noundef 0, i32 noundef 50, ptr noundef %i.gj, i64 noundef %.pre468, i32 noundef %i.hs, i32 noundef %i.ht, i64 noundef %i.hv) #10
  br label %bb.et

bb.bf:                                            ; preds = %bb.ay
  %i.hx = load i32, ptr %i.b, align 1
  %i.hy = icmp ne i32 %i.hx, 1179407426
  %i.hz = zext i1 %i.hy to i32
  %.not337 = icmp eq i32 %i.hz, 0
  br i1 %.not337, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val = load i8, ptr %i.ia, align 1, !tbaa !23
  %i.ib = call fastcc ptr @get_H5B2_class(i8 %.val) ; 3 uses
  %i.ic = icmp eq ptr %i.ib, @H5D_BT2
  %i.id = icmp eq ptr %i.ib, @H5D_BT2_FILT
  %or.cond38 = or i1 %i.ic, %i.id
  %.pre465.a = load i64, ptr %i.a, align 16       ; 3 uses
  br i1 %or.cond38, label %bb.bh, label %._crit_edge466

._crit_edge466:                                   ; preds = %bb.bg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre467 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ie = icmp eq i64 %.pre465.a, 0
  %or.cond41 = select i1 %.1280, i1 true, i1 %i.ie
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ig = load i64, ptr %i.if, align 8            ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 0
  %or.cond44 = select i1 %or.cond41, i1 true, i1 %i.ih
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ij = load i64, ptr %i.ii, align 16
  %i.ik = icmp eq i64 %i.ij, 0
  %or.cond47 = select i1 %or.cond44, i1 true, i1 %i.ik
  br i1 %or.cond47, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.im = call i64 @fwrite(ptr nonnull @.str.40, i64 140, i64 1, ptr %i.il) #12 ; 0 uses
  %i.in = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.io = call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %i.in) #12 ; 0 uses
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.iq = call i64 @fwrite(ptr nonnull @.str.42, i64 111, i64 1, ptr %i.ip) #12 ; 0 uses
  br label %.thread397

bb.bj:                                            ; preds = %._crit_edge466, %bb.bh
  %i.ir = phi i64 [ %.pre467, %._crit_edge466 ], [ %i.ig, %bb.bh ] ; 2 uses
  %i.is = icmp eq i64 %.pre465.a, 0
  %or.cond50 = select i1 %.1280, i1 true, i1 %i.is
  %i.it = icmp eq i64 %i.ir, 0
  %or.cond53 = select i1 %or.cond50, i1 true, i1 %i.it
  br i1 %or.cond53, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.iv = call i64 @fwrite(ptr nonnull @.str.43, i64 86, i64 1, ptr %i.iu) #12 ; 0 uses
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ix = call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %i.iw) #12 ; 0 uses
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.iz = call i64 @fwrite(ptr nonnull @.str.44, i64 87, i64 1, ptr %i.iy) #12 ; 0 uses
  br label %.thread397

bb.bl:                                            ; preds = %bb.bj
  %i.ja = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.jb = trunc i64 %i.ir to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jd = load i64, ptr %i.jc, align 16, !tbaa !21
  %i.je = call i32 @H5B2__leaf_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ja, i32 noundef 0, i32 noundef 50, ptr noundef %i.ib, i64 noundef %.pre465.a, i32 noundef %i.jb, i64 noundef %i.jd) #10
  br label %bb.et

bb.bm:                                            ; preds = %bb.bf
  %i.jf = load i32, ptr %i.b, align 1
  %i.jg = icmp ne i32 %i.jf, 1346916934
  %i.jh = zext i1 %i.jg to i32
  %.not339 = icmp eq i32 %i.jh, 0
  br i1 %.not339, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ji = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.jj = call i32 @H5HF_hdr_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ji, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.bo:                                            ; preds = %bb.bm
  %i.jk = load i32, ptr %i.b, align 1
  %i.jl = icmp ne i32 %i.jk, 1111771206
  %i.jm = zext i1 %i.jl to i32
  %.not341 = icmp eq i32 %i.jm, 0
  br i1 %.not341, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.jn = load i64, ptr %i.a, align 16            ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 0
  %or.cond56 = select i1 %.1280, i1 true, i1 %i.jo
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jq = load i64, ptr %i.jp, align 8            ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  %or.cond59 = select i1 %or.cond56, i1 true, i1 %i.jr
  br i1 %or.cond59, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.js = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jt = call i64 @fwrite(ptr nonnull @.str.47, i64 95, i64 1, ptr %i.js) #12 ; 0 uses
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jv = call i64 @fwrite(ptr nonnull @.str.48, i64 33, i64 1, ptr %i.ju) #12 ; 0 uses
  %i.jw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jx = call i64 @fwrite(ptr nonnull @.str.49, i64 88, i64 1, ptr %i.jw) #12 ; 0 uses
  br label %.thread397

bb.br:                                            ; preds = %bb.bp
  %i.jy = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.jz = call i32 @H5HF_dblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.jy, i32 noundef 0, i32 noundef 50, i64 noundef %i.jn, i64 noundef %i.jq) #10
  br label %bb.et

bb.bs:                                            ; preds = %bb.bo
  %i.ka = load i32, ptr %i.b, align 1
  %i.kb = icmp ne i32 %i.ka, 1112098886
  %i.kc = zext i1 %i.kb to i32
  %.not343 = icmp eq i32 %i.kc, 0
  br i1 %.not343, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.kd = load i64, ptr %i.a, align 16            ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  %or.cond62 = select i1 %.1280, i1 true, i1 %i.ke
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kg = load i64, ptr %i.kf, align 8            ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 0
  %or.cond65 = select i1 %or.cond62, i1 true, i1 %i.kh
  br i1 %or.cond65, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kj = call i64 @fwrite(ptr nonnull @.str.51, i64 91, i64 1, ptr %i.ki) #12 ; 0 uses
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kl = call i64 @fwrite(ptr nonnull @.str.52, i64 35, i64 1, ptr %i.kk) #12 ; 0 uses
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kn = call i64 @fwrite(ptr nonnull @.str.53, i64 84, i64 1, ptr %i.km) #12 ; 0 uses
  br label %.thread397

bb.bv:                                            ; preds = %bb.bt
  %i.ko = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.kp = trunc i64 %i.kg to i32
  %i.kq = call i32 @H5HF_iblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ko, i32 noundef 0, i32 noundef 50, i64 noundef %i.kd, i32 noundef %i.kp) #10
  br label %bb.et

bb.bw:                                            ; preds = %bb.bs
  %i.kr = load i32, ptr %i.b, align 1
  %i.ks = icmp ne i32 %i.kr, 1145590598
  %i.kt = zext i1 %i.ks to i32
  %.not345 = icmp eq i32 %i.kt, 0
  br i1 %.not345, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ku = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.kv = call i32 @H5FS_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ku, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.by:                                            ; preds = %bb.bw
  %i.kw = load i32, ptr %i.b, align 1
  %i.kx = icmp ne i32 %i.kw, 1163088710
  %i.ky = zext i1 %i.kx to i32
  %.not347 = icmp eq i32 %i.ky, 0
  br i1 %.not347, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.kz = load i64, ptr %i.a, align 16            ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  %or.cond68 = select i1 %.1280, i1 true, i1 %i.la
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lc = load i64, ptr %i.lb, align 8            ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 0
  %or.cond71 = select i1 %or.cond68, i1 true, i1 %i.ld
  br i1 %or.cond71, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.lf = call i64 @fwrite(ptr nonnull @.str.56, i64 94, i64 1, ptr %i.le) #12 ; 0 uses
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.lh = call i64 @fwrite(ptr nonnull @.str.57, i64 38, i64 1, ptr %i.lg) #12 ; 0 uses
  %i.li = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.lj = call i64 @fwrite(ptr nonnull @.str.58, i64 95, i64 1, ptr %i.li) #12 ; 0 uses
  br label %.thread397

bb.cb:                                            ; preds = %bb.bz
  %i.lk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ll = call i32 @H5FS_sects_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.lk, i32 noundef 0, i32 noundef 50, i64 noundef %i.kz, i64 noundef %i.lc) #10
  br label %bb.et

bb.cc:                                            ; preds = %bb.by
  %i.lm = load i32, ptr %i.b, align 1
  %i.ln = icmp ne i32 %i.lm, 1112821075
  %i.lo = zext i1 %i.ln to i32
  %.not349 = icmp eq i32 %i.lo, 0
  br i1 %.not349, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.lp = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.lq = call i32 @H5SM_table_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.lp, i32 noundef 0, i32 noundef 50, i32 noundef -1, i32 noundef -1) #10
  br label %bb.et

bb.ce:                                            ; preds = %bb.cc
  %i.lr = load i32, ptr %i.b, align 1
  %i.ls = icmp ne i32 %i.lr, 1229737299
  %i.lt = zext i1 %i.ls to i32
  %.not351 = icmp eq i32 %i.lt, 0
  br i1 %.not351, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.lu = load i64, ptr %i.a, align 16            ; 2 uses
  %i.lv = icmp eq i64 %i.lu, 0
  %or.cond74 = select i1 %.1280, i1 true, i1 %i.lv
  br i1 %or.cond74, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.lx = call i64 @fwrite(ptr nonnull @.str.61, i64 74, i64 1, ptr %i.lw) #12 ; 0 uses
  %i.ly = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.lz = call i64 @fwrite(ptr nonnull @.str.62, i64 27, i64 1, ptr %i.ly) #12 ; 0 uses
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.mb = call i64 @fwrite(ptr nonnull @.str.63, i64 82, i64 1, ptr %i.ma) #12 ; 0 uses
  br label %.thread397

bb.ch:                                            ; preds = %bb.cf
  %i.mc = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.md = call i32 @H5SM_list_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.mc, i32 noundef 0, i32 noundef 50, i64 noundef %i.lu) #10
  br label %bb.et

bb.ci:                                            ; preds = %bb.ce
  %i.me = load i32, ptr %i.b, align 1
  %i.mf = icmp ne i32 %i.me, 1145585989
  %i.mg = zext i1 %i.mf to i32
  %.not353 = icmp eq i32 %i.mg, 0
  br i1 %.not353, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val383 = load i8, ptr %i.mh, align 1, !tbaa !23
  %i.mi = call fastcc ptr @get_H5EA_class(i8 %.val383)
  %i.mj = load i64, ptr %i.a, align 16            ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  %or.cond77 = select i1 %.1280, i1 true, i1 %i.mk
  br i1 %or.cond77, label %bb.ck, label %.thread406

.thread406:                                       ; preds = %bb.cj
  %i.ml = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.mm = call i32 @H5EA__hdr_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ml, i32 noundef 0, i32 noundef 50, ptr noundef %i.mi, i64 noundef %i.mj) #10
  br label %bb.et

bb.ck:                                            ; preds = %bb.cj
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.mo = call i64 @fwrite(ptr nonnull @.str.65, i64 88, i64 1, ptr %i.mn) #12 ; 0 uses
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.mq = call i64 @fwrite(ptr nonnull @.str.66, i64 37, i64 1, ptr %i.mp) #12 ; 0 uses
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ms = call i64 @fwrite(ptr nonnull @.str.67, i64 78, i64 1, ptr %i.mr) #12 ; 0 uses
  br label %.thread397

bb.cl:                                            ; preds = %bb.ci
  %i.mt = load i32, ptr %i.b, align 1
  %i.mu = icmp ne i32 %i.mt, 1112097093
  %i.mv = zext i1 %i.mu to i32
  %.not355 = icmp eq i32 %i.mv, 0
  br i1 %.not355, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val382 = load i8, ptr %i.mw, align 1, !tbaa !23
  %i.mx = call fastcc ptr @get_H5EA_class(i8 %.val382)
  %i.my = load i64, ptr %i.a, align 16            ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  %or.cond80 = select i1 %.1280, i1 true, i1 %i.mz
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nb = load i64, ptr %i.na, align 8            ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0
  %or.cond83 = select i1 %or.cond80, i1 true, i1 %i.nc
  br i1 %or.cond83, label %bb.cn, label %.thread410

.thread410:                                       ; preds = %bb.cm
  %i.nd = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ne = call i32 @H5EA__iblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.nd, i32 noundef 0, i32 noundef 50, ptr noundef %i.mx, i64 noundef %i.my, i64 noundef %i.nb) #10
  br label %bb.et

bb.cn:                                            ; preds = %bb.cm
  %i.nf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ng = call i64 @fwrite(ptr nonnull @.str.69, i64 129, i64 1, ptr %i.nf) #12 ; 0 uses
  %i.nh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ni = call i64 @fwrite(ptr nonnull @.str.70, i64 36, i64 1, ptr %i.nh) #12 ; 0 uses
  %i.nj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.nk = call i64 @fwrite(ptr nonnull @.str.71, i64 88, i64 1, ptr %i.nj) #12 ; 0 uses
  br label %.thread397

bb.co:                                            ; preds = %bb.cl
  %i.nl = load i32, ptr %i.b, align 1
  %i.nm = icmp ne i32 %i.nl, 1112752453
  %i.nn = zext i1 %i.nm to i32
  %.not357 = icmp eq i32 %i.nn, 0
  br i1 %.not357, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val381 = load i8, ptr %i.no, align 1, !tbaa !23
  %i.np = call fastcc ptr @get_H5EA_class(i8 %.val381)
  %i.nq = load i64, ptr %i.a, align 16            ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  %or.cond86 = select i1 %.1280, i1 true, i1 %i.nr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nt = load i64, ptr %i.ns, align 8            ; 2 uses
  %i.nu = icmp eq i64 %i.nt, 0
  %or.cond89 = select i1 %or.cond86, i1 true, i1 %i.nu
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nw = load i64, ptr %i.nv, align 16           ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 0
  %or.cond92 = select i1 %or.cond89, i1 true, i1 %i.nx
  br i1 %or.cond92, label %bb.cq, label %.thread414

.thread414:                                       ; preds = %bb.cp
  %i.ny = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.nz = trunc i64 %i.nt to i32
  %i.oa = call i32 @H5EA__sblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ny, i32 noundef 0, i32 noundef 50, ptr noundef %i.np, i64 noundef %i.nq, i32 noundef %i.nz, i64 noundef %i.nw) #10
  br label %bb.et

bb.cq:                                            ; preds = %bb.cp
  %i.ob = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oc = call i64 @fwrite(ptr nonnull @.str.73, i64 148, i64 1, ptr %i.ob) #12 ; 0 uses
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oe = call i64 @fwrite(ptr nonnull @.str.74, i64 36, i64 1, ptr %i.od) #12 ; 0 uses
  %i.of = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.og = call i64 @fwrite(ptr nonnull @.str.75, i64 109, i64 1, ptr %i.of) #12 ; 0 uses
  br label %.thread397

bb.cr:                                            ; preds = %bb.co
  %i.oh = load i32, ptr %i.b, align 1
  %i.oi = icmp ne i32 %i.oh, 1111769413
  %i.oj = zext i1 %i.oi to i32
  %.not359 = icmp eq i32 %i.oj, 0
  br i1 %.not359, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val380 = load i8, ptr %i.ok, align 1, !tbaa !23
  %i.ol = call fastcc ptr @get_H5EA_class(i8 %.val380)
  %i.om = load i64, ptr %i.a, align 16            ; 2 uses
  %i.on = icmp eq i64 %i.om, 0
  %or.cond95 = select i1 %.1280, i1 true, i1 %i.on
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.op = load i64, ptr %i.oo, align 8            ; 2 uses
  %i.oq = icmp eq i64 %i.op, 0
  %or.cond98 = select i1 %or.cond95, i1 true, i1 %i.oq
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.os = load i64, ptr %i.or, align 16           ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %or.cond101 = select i1 %or.cond98, i1 true, i1 %i.ot
  br i1 %or.cond101, label %bb.ct, label %.thread418

.thread418:                                       ; preds = %bb.cs
  %i.ou = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ov = call i32 @H5EA__dblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.ou, i32 noundef 0, i32 noundef 50, ptr noundef %i.ol, i64 noundef %i.om, i64 noundef %i.op, i64 noundef %i.os) #10
  br label %bb.et

bb.ct:                                            ; preds = %bb.cs
  %i.ow = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ox = call i64 @fwrite(ptr nonnull @.str.77, i64 157, i64 1, ptr %i.ow) #12 ; 0 uses
  %i.oy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oz = call i64 @fwrite(ptr nonnull @.str.78, i64 35, i64 1, ptr %i.oy) #12 ; 0 uses
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pb = call i64 @fwrite(ptr nonnull @.str.79, i64 117, i64 1, ptr %i.pa) #12 ; 0 uses
  br label %.thread397

bb.cu:                                            ; preds = %bb.cr
  %i.pc = load i32, ptr %i.b, align 1
  %i.pd = icmp ne i32 %i.pc, 1145585990
  %i.pe = zext i1 %i.pd to i32
  %.not361 = icmp eq i32 %i.pe, 0
  br i1 %.not361, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.pf = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val385 = load i8, ptr %i.pf, align 1, !tbaa !23
  %i.pg = call fastcc ptr @get_H5FA_class(i8 %.val385)
  %i.ph = load i64, ptr %i.a, align 16            ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 0
  %or.cond104 = select i1 %.1280, i1 true, i1 %i.pi
  br i1 %or.cond104, label %bb.cw, label %.thread422

.thread422:                                       ; preds = %bb.cv
  %i.pj = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pk = call i32 @H5FA__hdr_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.pj, i32 noundef 0, i32 noundef 50, ptr noundef %i.pg, i64 noundef %i.ph) #10
  br label %bb.et

bb.cw:                                            ; preds = %bb.cv
  %i.pl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pm = call i64 @fwrite(ptr nonnull @.str.65, i64 88, i64 1, ptr %i.pl) #12 ; 0 uses
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.po = call i64 @fwrite(ptr nonnull @.str.81, i64 32, i64 1, ptr %i.pn) #12 ; 0 uses
  %i.pp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pq = call i64 @fwrite(ptr nonnull @.str.82, i64 73, i64 1, ptr %i.pp) #12 ; 0 uses
  br label %.thread397

bb.cx:                                            ; preds = %bb.cu
  %i.pr = load i32, ptr %i.b, align 1
  %i.ps = icmp ne i32 %i.pr, 1111769414
  %i.pt = zext i1 %i.ps to i32
  %.not363 = icmp eq i32 %i.pt, 0
  br i1 %.not363, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val384 = load i8, ptr %i.pu, align 1, !tbaa !23
  %i.pv = call fastcc ptr @get_H5FA_class(i8 %.val384)
  %i.pw = load i64, ptr %i.a, align 16            ; 2 uses
  %i.px = icmp eq i64 %i.pw, 0
  %or.cond107 = select i1 %.1280, i1 true, i1 %i.px
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pz = load i64, ptr %i.py, align 8            ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 0
  %or.cond110 = select i1 %or.cond107, i1 true, i1 %i.qa
  br i1 %or.cond110, label %bb.cz, label %.thread426

.thread426:                                       ; preds = %bb.cy
  %i.qb = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qc = call i32 @H5FA__dblock_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.qb, i32 noundef 0, i32 noundef 50, ptr noundef %i.pv, i64 noundef %i.pw, i64 noundef %i.pz) #10
  br label %bb.et

bb.cz:                                            ; preds = %bb.cy
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qe = call i64 @fwrite(ptr nonnull @.str.84, i64 123, i64 1, ptr %i.qd) #12 ; 0 uses
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qg = call i64 @fwrite(ptr nonnull @.str.85, i64 30, i64 1, ptr %i.qf) #12 ; 0 uses
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.qi = call i64 @fwrite(ptr nonnull @.str.86, i64 88, i64 1, ptr %i.qh) #12 ; 0 uses
  br label %.thread397

bb.da:                                            ; preds = %bb.cx
  %i.qj = load i32, ptr %i.b, align 1
  %i.qk = icmp ne i32 %i.qj, 1380206671
  %i.ql = zext i1 %i.qk to i32
  %.not365 = icmp eq i32 %i.ql, 0
  br i1 %.not365, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qn = call i32 @H5O_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.qm, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.dc:                                            ; preds = %bb.da
  %i.qo = load i8, ptr %i.b, align 1, !tbaa !23
  %i.qp = icmp eq i8 %i.qo, 1
  br i1 %i.qp, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.qq = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qr = call i32 @H5O_debug(ptr noundef nonnull %i.ao, i64 noundef %.0281387, ptr noundef %i.qq, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.de:                                            ; preds = %bb.dc
  %i.qs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef 50, ptr noundef nonnull @.str.89) ; 0 uses
  %i.qt = load i8, ptr %i.b, align 1, !tbaa !23   ; 3 uses
  %i.qu = zext i8 %i.qt to i32                    ; 2 uses
  %i.qv = add i8 %i.qt, -127
  %or.cond376 = icmp ult i8 %i.qv, -94
  %.not366 = icmp eq i8 %i.qt, 92                 ; 2 uses
  %or.cond377 = or i1 %.not366, %or.cond376
  br i1 %or.cond377, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qw = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qx = call i32 @putc(i32 noundef %i.qu, ptr noundef %i.qw), !inline_history !16 ; 0 uses
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  br i1 %.not366, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qy = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qz = call i32 @putc(i32 noundef 92, ptr noundef %i.qy), !inline_history !16 ; 0 uses
  %i.ra = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.rb = call i32 @putc(i32 noundef 92, ptr noundef %i.ra), !inline_history !16 ; 0 uses
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.rc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.qu) ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.df, %bb.di, %bb.dh
  %i.rd = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !23  ; 3 uses
  %i.rf = zext i8 %i.re to i32                    ; 2 uses
  %i.rg = add i8 %i.re, -127
  %or.cond376.1 = icmp ult i8 %i.rg, -94
  %.not366.1 = icmp eq i8 %i.re, 92               ; 2 uses
  %or.cond377.1 = or i1 %.not366.1, %or.cond376.1
  br i1 %or.cond377.1, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rh = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ri = call i32 @putc(i32 noundef %i.rf, ptr noundef %i.rh), !inline_history !16 ; 0 uses
  br label %bb.do

bb.dl:                                            ; preds = %bb.dj
  br i1 %.not366.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.rf) ; 0 uses
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.rk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.rl = call i32 @putc(i32 noundef 92, ptr noundef %i.rk), !inline_history !16 ; 0 uses
  %i.rm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.rn = call i32 @putc(i32 noundef 92, ptr noundef %i.rm), !inline_history !16 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dk
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !23  ; 3 uses
  %i.rq = zext i8 %i.rp to i32                    ; 2 uses
  %i.rr = add i8 %i.rp, -127
  %or.cond376.2 = icmp ult i8 %i.rr, -94
  %.not366.2 = icmp eq i8 %i.rp, 92               ; 2 uses
  %or.cond377.2 = or i1 %.not366.2, %or.cond376.2
  br i1 %or.cond377.2, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rs = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.rt = call i32 @putc(i32 noundef %i.rq, ptr noundef %i.rs), !inline_history !16 ; 0 uses
  br label %bb.dt

bb.dq:                                            ; preds = %bb.do
  br i1 %.not366.2, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ru = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.rq) ; 0 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.rv = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.rw = call i32 @putc(i32 noundef 92, ptr noundef %i.rv), !inline_history !16 ; 0 uses
  %i.rx = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ry = call i32 @putc(i32 noundef 92, ptr noundef %i.rx), !inline_history !16 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %i.rz = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !23  ; 3 uses
  %i.sb = zext i8 %i.sa to i32                    ; 2 uses
  %i.sc = add i8 %i.sa, -127
  %or.cond376.3 = icmp ult i8 %i.sc, -94
  %.not366.3 = icmp eq i8 %i.sa, 92               ; 2 uses
  %or.cond377.3 = or i1 %.not366.3, %or.cond376.3
  br i1 %or.cond377.3, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sd = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.se = call i32 @putc(i32 noundef %i.sb, ptr noundef %i.sd), !inline_history !16 ; 0 uses
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  br i1 %.not366.3, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.sb) ; 0 uses
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.sg = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.sh = call i32 @putc(i32 noundef 92, ptr noundef %i.sg), !inline_history !16 ; 0 uses
  %i.si = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.sj = call i32 @putc(i32 noundef 92, ptr noundef %i.si), !inline_history !16 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du
  %i.sk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !23  ; 3 uses
  %i.sm = zext i8 %i.sl to i32                    ; 2 uses
  %i.sn = add i8 %i.sl, -127
  %or.cond376.4 = icmp ult i8 %i.sn, -94
  %.not366.4 = icmp eq i8 %i.sl, 92               ; 2 uses
  %or.cond377.4 = or i1 %.not366.4, %or.cond376.4
  br i1 %or.cond377.4, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.so = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.sp = call i32 @putc(i32 noundef %i.sm, ptr noundef %i.so), !inline_history !16 ; 0 uses
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  br i1 %.not366.4, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.sm) ; 0 uses
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.sr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ss = call i32 @putc(i32 noundef 92, ptr noundef %i.sr), !inline_history !16 ; 0 uses
  %i.st = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.su = call i32 @putc(i32 noundef 92, ptr noundef %i.st), !inline_history !16 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !23  ; 3 uses
  %i.sx = zext i8 %i.sw to i32                    ; 2 uses
  %i.sy = add i8 %i.sw, -127
  %or.cond376.5 = icmp ult i8 %i.sy, -94
  %.not366.5 = icmp eq i8 %i.sw, 92               ; 2 uses
  %or.cond377.5 = or i1 %.not366.5, %or.cond376.5
  br i1 %or.cond377.5, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ta = call i32 @putc(i32 noundef %i.sx, ptr noundef %i.sz), !inline_history !16 ; 0 uses
end_hunk_0
