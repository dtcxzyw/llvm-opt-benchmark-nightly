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
  br label %.thread517

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @H5open() #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite438 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %i.l) #12 ; 0 uses
  br label %.thread517

bb.e:                                             ; preds = %bb.c
  %i.m = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.n = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.o = load i64, ptr @H5P_CLS_FILE_ACCESS_ID_g, align 8, !tbaa !21
  %i.p = call i64 @H5Pcreate(i64 noundef %i.o) #10 ; 5 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite437 = call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.r) #12 ; 0 uses
  br label %.thread517

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.u = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 37) #13
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 @H5Pset_fapl_family(i64 noundef %i.p, i64 noundef 0, i64 noundef 0) #10
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %._crit_edge537.a

._crit_edge537.a:                                 ; preds = %bb.h
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite436 = call i64 @fwrite(ptr nonnull @.str.3, i64 37, i64 1, ptr %i.x) #12 ; 0 uses
  br label %.thread470

bb.j:                                             ; preds = %._crit_edge537.a, %bb.g
  %i.y = phi ptr [ %.pre, %._crit_edge537.a ], [ %i.t, %bb.g ]
  %i.z = call i64 @H5Fopen(ptr noundef %i.y, i32 noundef 0, i64 noundef %i.p) #10 ; 27 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite435 = call i64 @fwrite(ptr nonnull @.str.4, i64 17, i64 1, ptr %i.ab) #12 ; 0 uses
  br label %.thread470

bb.l:                                             ; preds = %bb.j
  %i.ac = call i32 @H5CX_push(ptr noundef nonnull %2) #10
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite434 = call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr %i.ae) #12 ; 0 uses
  br label %.thread470

bb.n:                                             ; preds = %bb.l
  %i.af = call ptr @H5VL_vol_object(i64 noundef %i.z) #10 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite433 = call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr %i.ah) #12 ; 0 uses
  br label %.thread470

bb.p:                                             ; preds = %bb.n
  %i.ai = call ptr @H5VL_object_data(ptr noundef nonnull %i.af) #10 ; 27 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite432 = call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %i.ak) #12 ; 0 uses
  br label %.thread470

bb.r:                                             ; preds = %bb.p
  %i.al = call i32 @H5AC_ignore_tags(ptr noundef nonnull %i.ai) #10
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite431 = call i64 @fwrite(ptr nonnull @.str.8, i64 28, i64 1, ptr %i.an) #12 ; 0 uses
  br label %.thread470

bb.t:                                             ; preds = %bb.r
  %i.ao = icmp sgt i32 %0, 2
  br i1 %i.ao, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  br label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = call i64 @__isoc23_strtoll(ptr noundef %i.aq, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %.not522.a = icmp eq i32 %0, 3
  br i1 %.not522.a, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = add nsw i32 %0, -3
  %i.at = icmp samesign ugt i32 %0, 13
  br i1 %i.at, label %bb.w, label %.lr.ph.preheader

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.9, i32 noundef 10) #11 ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v, %bb.w
  %.0279 = phi i32 [ 10, %bb.w ], [ %i.as, %bb.v ]
  %i.aw = zext nneg i32 %.0279 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0275525 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0275525
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19
  %i.ba = call i64 @__isoc23_strtoll(ptr noundef %i.az, ptr noundef null, i32 noundef 0) #10
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0275525
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !21
  %i.bc = add nuw nsw i64 %.0275525, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.u
  %3 = phi i1 [ true, %.thread ], [ true, %bb.u ], [ false, %.lr.ph ] ; 18 uses
  %.0281460 = phi i64 [ 0, %.thread ], [ %i.ar, %bb.u ], [ %i.ar, %.lr.ph ] ; 25 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.10, i64 noundef %.0281460) #10 ; 0 uses
  %i.bf = call i32 @H5F_block_read(ptr noundef nonnull %i.ai, i32 noundef 1, i64 noundef %.0281460, i64 noundef 8, ptr noundef nonnull %i.b) #10
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite430 = call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %i.bh) #12 ; 0 uses
  br label %.thread470

bb.y:                                             ; preds = %.loopexit
  %i.bi = load i64, ptr %i.b, align 1
  %i.bj = icmp ne i64 %i.bi, 727905341903489161
  %i.bk = zext i1 %i.bj to i32
  %.not323 = icmp eq i32 %i.bk, 0
  br i1 %.not323, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bm = call i32 @H5F_debug(ptr noundef nonnull %i.ai, ptr noundef %i.bl, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.aa:                                            ; preds = %bb.y
  %i.bn = load i32, ptr %i.b, align 1
  %i.bo = icmp ne i32 %i.bn, 1346454856
  %i.bp = zext i1 %i.bo to i32
  %.not325 = icmp eq i32 %i.bp, 0
  br i1 %.not325, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.br = call i32 @H5HL_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.bq, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.ac:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr %i.b, align 1
  %i.bt = icmp ne i32 %i.bs, 1280262983
  %i.bu = zext i1 %i.bt to i32
  %.not327 = icmp eq i32 %i.bu, 0
  br i1 %.not327, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bw = call i32 @H5HG_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.bv, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i32, ptr %i.b, align 1
  %i.by = icmp ne i32 %i.bx, 1146048083
  %i.bz = zext i1 %i.by to i32
  %.not329 = icmp eq i32 %i.bz, 0
  br i1 %.not329, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i64, ptr %i.a, align 16            ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %or.cond = select i1 %3, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite = call i64 @fwrite(ptr nonnull @.str.16, i64 78, i64 1, ptr %i.cc) #12 ; 0 uses
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite330 = call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %i.cd) #12 ; 0 uses
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite331 = call i64 @fwrite(ptr nonnull @.str.18, i64 73, i64 1, ptr %i.ce) #12 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cg = call i32 @H5G_node_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.cf, i32 noundef 0, i32 noundef 50, i64 noundef %i.ca) #10
  br label %bb.et

bb.ai:                                            ; preds = %bb.ae
  %i.ch = load i32, ptr %i.b, align 1
  %i.ci = icmp ne i32 %i.ch, 1162170964
  %i.cj = zext i1 %i.ci to i32
  %.not333 = icmp eq i32 %i.cj, 0
  br i1 %.not333, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  switch i8 %i.cl, label %bb.at [
    i8 0, label %bb.ak
    i8 1, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cm = load i64, ptr %i.a, align 16            ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %or.cond5 = select i1 %3, i1 true, i1 %i.cn
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite343 = call i64 @fwrite(ptr nonnull @.str.16, i64 78, i64 1, ptr %i.co) #12 ; 0 uses
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite344 = call i64 @fwrite(ptr nonnull @.str.20, i64 32, i64 1, ptr %i.cp) #12 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite345 = call i64 @fwrite(ptr nonnull @.str.21, i64 67, i64 1, ptr %i.cq) #12 ; 0 uses
  br label %.thread461

bb.am:                                            ; preds = %bb.ak
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.cs = call i32 @H5G_node_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.cr, i32 noundef 0, i32 noundef 50, i64 noundef %i.cm) #10
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.ct = load i64, ptr %i.a, align 16            ; 5 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %or.cond8 = select i1 %3, i1 true, i1 %i.cu
  br i1 %or.cond8, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite340 = call i64 @fwrite(ptr nonnull @.str.22, i64 77, i64 1, ptr %i.cv) #12 ; 0 uses
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite341 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.cw) #12 ; 0 uses
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite342 = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.cx) #12 ; 0 uses
  br label %.thread461

bb.ap:                                            ; preds = %bb.an
  %i.cy = trunc i64 %i.ct to i32                  ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 9
  br i1 %i.cz, label %bb.aq, label %.preheader524

.preheader524:                                    ; preds = %bb.ap
  %i.da = and i64 %i.ct, 15                       ; 4 uses
  %.not532 = icmp eq i64 %i.da, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %.preheader524
  %xtraiter = and i64 %i.ct, 3                    ; 3 uses
  %i.db = icmp samesign ult i64 %i.da, 4
  br i1 %i.db, label %.lr.ph528.epil.preheader, label %.lr.ph528.preheader.new

.lr.ph528.preheader.new:                          ; preds = %.lr.ph528.preheader
  %unroll_iter = and i64 %i.ct, 12
  br label %.lr.ph528

bb.aq:                                            ; preds = %bb.ap
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite337 = call i64 @fwrite(ptr nonnull @.str.25, i64 57, i64 1, ptr %i.dc) #12 ; 0 uses
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite338 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.dd) #12 ; 0 uses
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite339 = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.de) #12 ; 0 uses
  br label %.thread461

.lr.ph528:                                        ; preds = %.lr.ph528, %.lr.ph528.preheader.new
  %.1276527 = phi i64 [ 0, %.lr.ph528.preheader.new ], [ %i.du, %.lr.ph528 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph528.preheader.new ], [ %niter.next.3, %.lr.ph528 ]
  %i.df = or disjoint i64 %.1276527, 1            ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !21
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.1276527
  store i32 %i.di, ptr %i.dj, align 16, !tbaa !24
  %i.dk = or disjoint i64 %.1276527, 2            ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 16, !tbaa !21
  %i.dn = trunc i64 %i.dm to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.df
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !24
  %i.dp = or disjoint i64 %.1276527, 3            ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dk
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !24
  %i.du = add nuw nsw i64 %.1276527, 4            ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 16, !tbaa !21
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dp
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !24
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph530.preheader.unr-lcssa, label %.lr.ph528, !llvm.loop !13

.lr.ph530.preheader.unr-lcssa:                    ; preds = %.lr.ph528
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph530.preheader, label %.lr.ph528.epil.preheader

.lr.ph528.epil.preheader:                         ; preds = %.lr.ph530.preheader.unr-lcssa, %.lr.ph528.preheader
  %.1276527.epil.init = phi i64 [ 0, %.lr.ph528.preheader ], [ %i.du, %.lr.ph530.preheader.unr-lcssa ]
  %lcmp.mod584 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod584)
  br label %.lr.ph528.epil

.lr.ph528.epil:                                   ; preds = %.lr.ph528.epil, %.lr.ph528.epil.preheader
  %.1276527.epil = phi i64 [ %i.dz, %.lr.ph528.epil ], [ %.1276527.epil.init, %.lr.ph528.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph528.epil ], [ 0, %.lr.ph528.epil.preheader ]
  %i.dz = add nuw nsw i64 %.1276527.epil, 1       ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !21
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.1276527.epil
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph530.preheader, label %.lr.ph528.epil, !llvm.loop !14

.lr.ph530.preheader:                              ; preds = %.lr.ph528.epil, %.lr.ph530.preheader.unr-lcssa
  br label %.lr.ph530

bb.ar:                                            ; preds = %.lr.ph530
  %i.ee = add nuw nsw i64 %.2277529, 1            ; 2 uses
  %exitcond536.not = icmp eq i64 %i.ee, %i.da
  br i1 %exitcond536.not, label %._crit_edge, label %.lr.ph530, !llvm.loop !15

.lr.ph530:                                        ; preds = %.lr.ph530.preheader, %bb.ar
  %.2277529 = phi i64 [ %i.ee, %bb.ar ], [ 0, %.lr.ph530.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2277529
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !24
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.as, label %bb.ar

bb.as:                                            ; preds = %.lr.ph530
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite334 = call i64 @fwrite(ptr nonnull @.str.26, i64 37, i64 1, ptr %i.ei) #12 ; 0 uses
  %i.ej = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite335 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %i.ej) #12 ; 0 uses
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite336 = call i64 @fwrite(ptr nonnull @.str.24, i64 102, i64 1, ptr %i.ek) #12 ; 0 uses
  br label %.thread461

._crit_edge:                                      ; preds = %bb.ar, %.preheader524
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.da
  store i32 0, ptr %i.el, align 4, !tbaa !24
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.en = call i32 @H5D_btree_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.em, i32 noundef 0, i32 noundef 50, i32 noundef %i.cy, ptr noundef nonnull %i.e) #10
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  %i.eo = zext i8 %i.cl to i32
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.27, i32 noundef %i.eo) #11 ; 0 uses
  br label %.thread461

.thread461:                                       ; preds = %bb.at, %bb.al, %bb.as, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread470

bb.au:                                            ; preds = %bb.am, %._crit_edge
  %.1263 = phi i32 [ %i.en, %._crit_edge ], [ %i.cs, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.et

bb.av:                                            ; preds = %bb.ai
  %i.er = load i32, ptr %i.b, align 1
  %i.es = icmp ne i32 %i.er, 1145590850
  %i.et = zext i1 %i.es to i32
  %.not347 = icmp eq i32 %i.et, 0
  br i1 %.not347, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val452 = load i8, ptr %i.eu, align 1, !tbaa !23
  %i.ev = call fastcc ptr @get_H5B2_class(i8 %.val452) ; 3 uses
  %i.ew = icmp eq ptr %i.ev, @H5D_BT2
  %i.ex = icmp eq ptr %i.ev, @H5D_BT2_FILT
  %or.cond10 = or i1 %i.ew, %i.ex
  %.pre547 = load i64, ptr %i.a, align 16         ; 2 uses
  %i.ey = icmp eq i64 %.pre547, 0
  %or.cond13 = select i1 %3, i1 true, i1 %i.ey
  %or.cond583 = select i1 %or.cond10, i1 %or.cond13, i1 false
  br i1 %or.cond583, label %bb.ax, label %.thread465

.thread465:                                       ; preds = %bb.aw
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fa = call i32 @H5B2__hdr_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.ez, i32 noundef 0, i32 noundef 50, ptr noundef %i.ev, i64 noundef %.pre547) #10
  br label %bb.et

bb.ax:                                            ; preds = %bb.aw
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite348 = call i64 @fwrite(ptr nonnull @.str.29, i64 117, i64 1, ptr %i.fb) #12 ; 0 uses
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite349 = call i64 @fwrite(ptr nonnull @.str.30, i64 21, i64 1, ptr %i.fc) #12 ; 0 uses
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite350 = call i64 @fwrite(ptr nonnull @.str.31, i64 71, i64 1, ptr %i.fd) #12 ; 0 uses
  br label %.thread470

bb.ay:                                            ; preds = %bb.av
  %i.fe = load i32, ptr %i.b, align 1
  %i.ff = icmp ne i32 %i.fe, 1313428546
  %i.fg = zext i1 %i.ff to i32
  %.not352 = icmp eq i32 %i.fg, 0
  br i1 %.not352, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val451 = load i8, ptr %i.fh, align 1, !tbaa !23
  %i.fi = call fastcc ptr @get_H5B2_class(i8 %.val451) ; 3 uses
  %i.fj = icmp eq ptr %i.fi, @H5D_BT2
  %i.fk = icmp eq ptr %i.fi, @H5D_BT2_FILT
  %or.cond15 = or i1 %i.fj, %i.fk
  %.pre541 = load i64, ptr %i.a, align 16         ; 3 uses
  br i1 %or.cond15, label %bb.ba, label %._crit_edge542

._crit_edge542:                                   ; preds = %bb.az
  %.phi.trans.insert543.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre544.a = load i64, ptr %.phi.trans.insert543.a, align 8
  %.phi.trans.insert545 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre546 = load i64, ptr %.phi.trans.insert545, align 16
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fl = icmp eq i64 %.pre541, 0
  %or.cond18 = select i1 %3, i1 true, i1 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %or.cond21 = select i1 %or.cond18, i1 true, i1 %i.fo
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fq = load i64, ptr %i.fp, align 16           ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  %or.cond24 = select i1 %or.cond21, i1 true, i1 %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp eq i64 %i.ft, 0
  %or.cond27 = select i1 %or.cond24, i1 true, i1 %i.fu
  br i1 %or.cond27, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite357 = call i64 @fwrite(ptr nonnull @.str.33, i64 162, i64 1, ptr %i.fv) #12 ; 0 uses
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite358 = call i64 @fwrite(ptr nonnull @.str.34, i64 78, i64 1, ptr %i.fw) #12 ; 0 uses
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite359 = call i64 @fwrite(ptr nonnull @.str.35, i64 31, i64 1, ptr %i.fx) #12 ; 0 uses
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite360 = call i64 @fwrite(ptr nonnull @.str.36, i64 123, i64 1, ptr %i.fy) #12 ; 0 uses
  br label %.thread470

bb.bc:                                            ; preds = %._crit_edge542, %bb.ba
  %i.fz = phi i64 [ %.pre546, %._crit_edge542 ], [ %i.fq, %bb.ba ] ; 2 uses
  %i.ga = phi i64 [ %.pre544.a, %._crit_edge542 ], [ %i.fn, %bb.ba ] ; 2 uses
  %i.gb = icmp eq i64 %.pre541, 0
  %or.cond30 = select i1 %3, i1 true, i1 %i.gb
  %i.gc = icmp eq i64 %i.ga, 0
  %or.cond33 = select i1 %or.cond30, i1 true, i1 %i.gc
  %i.gd = icmp eq i64 %i.fz, 0
  %or.cond36 = select i1 %or.cond33, i1 true, i1 %i.gd
  br i1 %or.cond36, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite353 = call i64 @fwrite(ptr nonnull @.str.37, i64 111, i64 1, ptr %i.ge) #12 ; 0 uses
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite354 = call i64 @fwrite(ptr nonnull @.str.34, i64 78, i64 1, ptr %i.gf) #12 ; 0 uses
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite355 = call i64 @fwrite(ptr nonnull @.str.35, i64 31, i64 1, ptr %i.gg) #12 ; 0 uses
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite356 = call i64 @fwrite(ptr nonnull @.str.38, i64 99, i64 1, ptr %i.gh) #12 ; 0 uses
  br label %.thread470

bb.be:                                            ; preds = %bb.bc
  %i.gi = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.gj = trunc i64 %i.ga to i32
  %i.gk = trunc i64 %i.fz to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !21
  %i.gn = call i32 @H5B2__int_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.gi, i32 noundef 0, i32 noundef 50, ptr noundef %i.fi, i64 noundef %.pre541, i32 noundef %i.gj, i32 noundef %i.gk, i64 noundef %i.gm) #10
  br label %bb.et

bb.bf:                                            ; preds = %bb.ay
  %i.go = load i32, ptr %i.b, align 1
  %i.gp = icmp ne i32 %i.go, 1179407426
  %i.gq = zext i1 %i.gp to i32
  %.not362 = icmp eq i32 %i.gq, 0
  br i1 %.not362, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val = load i8, ptr %i.gr, align 1, !tbaa !23
  %i.gs = call fastcc ptr @get_H5B2_class(i8 %.val) ; 3 uses
  %i.gt = icmp eq ptr %i.gs, @H5D_BT2
  %i.gu = icmp eq ptr %i.gs, @H5D_BT2_FILT
  %or.cond38 = or i1 %i.gt, %i.gu
  %.pre538.a = load i64, ptr %i.a, align 16       ; 3 uses
  br i1 %or.cond38, label %bb.bh, label %._crit_edge539

._crit_edge539:                                   ; preds = %bb.bg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre540 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.gv = icmp eq i64 %.pre538.a, 0
  %or.cond41 = select i1 %3, i1 true, i1 %i.gv
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  %or.cond44 = select i1 %or.cond41, i1 true, i1 %i.gy
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ha = load i64, ptr %i.gz, align 16
  %i.hb = icmp eq i64 %i.ha, 0
  %or.cond47 = select i1 %or.cond44, i1 true, i1 %i.hb
  br i1 %or.cond47, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite366 = call i64 @fwrite(ptr nonnull @.str.40, i64 140, i64 1, ptr %i.hc) #12 ; 0 uses
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite367 = call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %i.hd) #12 ; 0 uses
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite368 = call i64 @fwrite(ptr nonnull @.str.42, i64 111, i64 1, ptr %i.he) #12 ; 0 uses
  br label %.thread470

bb.bj:                                            ; preds = %._crit_edge539, %bb.bh
  %i.hf = phi i64 [ %.pre540, %._crit_edge539 ], [ %i.gx, %bb.bh ] ; 2 uses
  %i.hg = icmp eq i64 %.pre538.a, 0
  %or.cond50 = select i1 %3, i1 true, i1 %i.hg
  %i.hh = icmp eq i64 %i.hf, 0
  %or.cond53 = select i1 %or.cond50, i1 true, i1 %i.hh
  br i1 %or.cond53, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite363 = call i64 @fwrite(ptr nonnull @.str.43, i64 86, i64 1, ptr %i.hi) #12 ; 0 uses
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite364 = call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %i.hj) #12 ; 0 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite365 = call i64 @fwrite(ptr nonnull @.str.44, i64 87, i64 1, ptr %i.hk) #12 ; 0 uses
  br label %.thread470

bb.bl:                                            ; preds = %bb.bj
  %i.hl = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.hm = trunc i64 %i.hf to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !21
  %i.hp = call i32 @H5B2__leaf_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.hl, i32 noundef 0, i32 noundef 50, ptr noundef %i.gs, i64 noundef %.pre538.a, i32 noundef %i.hm, i64 noundef %i.ho) #10
  br label %bb.et

bb.bm:                                            ; preds = %bb.bf
  %i.hq = load i32, ptr %i.b, align 1
  %i.hr = icmp ne i32 %i.hq, 1346916934
  %i.hs = zext i1 %i.hr to i32
  %.not370 = icmp eq i32 %i.hs, 0
  br i1 %.not370, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ht = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.hu = call i32 @H5HF_hdr_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.ht, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.bo:                                            ; preds = %bb.bm
  %i.hv = load i32, ptr %i.b, align 1
  %i.hw = icmp ne i32 %i.hv, 1111771206
  %i.hx = zext i1 %i.hw to i32
  %.not372 = icmp eq i32 %i.hx, 0
  br i1 %.not372, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.hy = load i64, ptr %i.a, align 16            ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  %or.cond56 = select i1 %3, i1 true, i1 %i.hz
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ib = load i64, ptr %i.ia, align 8            ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  %or.cond59 = select i1 %or.cond56, i1 true, i1 %i.ic
  br i1 %or.cond59, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite373 = call i64 @fwrite(ptr nonnull @.str.47, i64 95, i64 1, ptr %i.id) #12 ; 0 uses
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite374 = call i64 @fwrite(ptr nonnull @.str.48, i64 33, i64 1, ptr %i.ie) #12 ; 0 uses
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite375 = call i64 @fwrite(ptr nonnull @.str.49, i64 88, i64 1, ptr %i.if) #12 ; 0 uses
  br label %.thread470

bb.br:                                            ; preds = %bb.bp
  %i.ig = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ih = call i32 @H5HF_dblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.ig, i32 noundef 0, i32 noundef 50, i64 noundef %i.hy, i64 noundef %i.ib) #10
  br label %bb.et

bb.bs:                                            ; preds = %bb.bo
  %i.ii = load i32, ptr %i.b, align 1
  %i.ij = icmp ne i32 %i.ii, 1112098886
  %i.ik = zext i1 %i.ij to i32
  %.not377 = icmp eq i32 %i.ik, 0
  br i1 %.not377, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.il = load i64, ptr %i.a, align 16            ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %or.cond62 = select i1 %3, i1 true, i1 %i.im
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.io = load i64, ptr %i.in, align 8            ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  %or.cond65 = select i1 %or.cond62, i1 true, i1 %i.ip
  br i1 %or.cond65, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite378 = call i64 @fwrite(ptr nonnull @.str.51, i64 91, i64 1, ptr %i.iq) #12 ; 0 uses
  %i.ir = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite379 = call i64 @fwrite(ptr nonnull @.str.52, i64 35, i64 1, ptr %i.ir) #12 ; 0 uses
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite380 = call i64 @fwrite(ptr nonnull @.str.53, i64 84, i64 1, ptr %i.is) #12 ; 0 uses
  br label %.thread470

bb.bv:                                            ; preds = %bb.bt
  %i.it = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.iu = trunc i64 %i.io to i32
  %i.iv = call i32 @H5HF_iblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.it, i32 noundef 0, i32 noundef 50, i64 noundef %i.il, i32 noundef %i.iu) #10
  br label %bb.et

bb.bw:                                            ; preds = %bb.bs
  %i.iw = load i32, ptr %i.b, align 1
  %i.ix = icmp ne i32 %i.iw, 1145590598
  %i.iy = zext i1 %i.ix to i32
  %.not382 = icmp eq i32 %i.iy, 0
  br i1 %.not382, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ja = call i32 @H5FS_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.iz, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.by:                                            ; preds = %bb.bw
  %i.jb = load i32, ptr %i.b, align 1
  %i.jc = icmp ne i32 %i.jb, 1163088710
  %i.jd = zext i1 %i.jc to i32
  %.not384 = icmp eq i32 %i.jd, 0
  br i1 %.not384, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.je = load i64, ptr %i.a, align 16            ; 2 uses
  %i.jf = icmp eq i64 %i.je, 0
  %or.cond68 = select i1 %3, i1 true, i1 %i.jf
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jh = load i64, ptr %i.jg, align 8            ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %or.cond71 = select i1 %or.cond68, i1 true, i1 %i.ji
  br i1 %or.cond71, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite385 = call i64 @fwrite(ptr nonnull @.str.56, i64 94, i64 1, ptr %i.jj) #12 ; 0 uses
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite386 = call i64 @fwrite(ptr nonnull @.str.57, i64 38, i64 1, ptr %i.jk) #12 ; 0 uses
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite387 = call i64 @fwrite(ptr nonnull @.str.58, i64 95, i64 1, ptr %i.jl) #12 ; 0 uses
  br label %.thread470

bb.cb:                                            ; preds = %bb.bz
  %i.jm = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.jn = call i32 @H5FS_sects_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.jm, i32 noundef 0, i32 noundef 50, i64 noundef %i.je, i64 noundef %i.jh) #10
  br label %bb.et

bb.cc:                                            ; preds = %bb.by
  %i.jo = load i32, ptr %i.b, align 1
  %i.jp = icmp ne i32 %i.jo, 1112821075
  %i.jq = zext i1 %i.jp to i32
  %.not389 = icmp eq i32 %i.jq, 0
  br i1 %.not389, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.js = call i32 @H5SM_table_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.jr, i32 noundef 0, i32 noundef 50, i32 noundef -1, i32 noundef -1) #10
  br label %bb.et

bb.ce:                                            ; preds = %bb.cc
  %i.jt = load i32, ptr %i.b, align 1
  %i.ju = icmp ne i32 %i.jt, 1229737299
  %i.jv = zext i1 %i.ju to i32
  %.not391 = icmp eq i32 %i.jv, 0
  br i1 %.not391, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.jw = load i64, ptr %i.a, align 16            ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  %or.cond74 = select i1 %3, i1 true, i1 %i.jx
  br i1 %or.cond74, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite392 = call i64 @fwrite(ptr nonnull @.str.61, i64 74, i64 1, ptr %i.jy) #12 ; 0 uses
  %i.jz = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite393 = call i64 @fwrite(ptr nonnull @.str.62, i64 27, i64 1, ptr %i.jz) #12 ; 0 uses
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite394 = call i64 @fwrite(ptr nonnull @.str.63, i64 82, i64 1, ptr %i.ka) #12 ; 0 uses
  br label %.thread470

bb.ch:                                            ; preds = %bb.cf
  %i.kb = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.kc = call i32 @H5SM_list_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.kb, i32 noundef 0, i32 noundef 50, i64 noundef %i.jw) #10
  br label %bb.et

bb.ci:                                            ; preds = %bb.ce
  %i.kd = load i32, ptr %i.b, align 1
  %i.ke = icmp ne i32 %i.kd, 1145585989
  %i.kf = zext i1 %i.ke to i32
  %.not396 = icmp eq i32 %i.kf, 0
  br i1 %.not396, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val456 = load i8, ptr %i.kg, align 1, !tbaa !23
  %i.kh = call fastcc ptr @get_H5EA_class(i8 %.val456)
  %i.ki = load i64, ptr %i.a, align 16            ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  %or.cond77 = select i1 %3, i1 true, i1 %i.kj
  br i1 %or.cond77, label %bb.ck, label %.thread479

.thread479:                                       ; preds = %bb.cj
  %i.kk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.kl = call i32 @H5EA__hdr_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.kk, i32 noundef 0, i32 noundef 50, ptr noundef %i.kh, i64 noundef %i.ki) #10
  br label %bb.et

bb.ck:                                            ; preds = %bb.cj
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite397 = call i64 @fwrite(ptr nonnull @.str.65, i64 88, i64 1, ptr %i.km) #12 ; 0 uses
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite398 = call i64 @fwrite(ptr nonnull @.str.66, i64 37, i64 1, ptr %i.kn) #12 ; 0 uses
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite399 = call i64 @fwrite(ptr nonnull @.str.67, i64 78, i64 1, ptr %i.ko) #12 ; 0 uses
  br label %.thread470

bb.cl:                                            ; preds = %bb.ci
  %i.kp = load i32, ptr %i.b, align 1
  %i.kq = icmp ne i32 %i.kp, 1112097093
  %i.kr = zext i1 %i.kq to i32
  %.not401 = icmp eq i32 %i.kr, 0
  br i1 %.not401, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val455 = load i8, ptr %i.ks, align 1, !tbaa !23
  %i.kt = call fastcc ptr @get_H5EA_class(i8 %.val455)
  %i.ku = load i64, ptr %i.a, align 16            ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %or.cond80 = select i1 %3, i1 true, i1 %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kx = load i64, ptr %i.kw, align 8            ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  %or.cond83 = select i1 %or.cond80, i1 true, i1 %i.ky
  br i1 %or.cond83, label %bb.cn, label %.thread483

.thread483:                                       ; preds = %bb.cm
  %i.kz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.la = call i32 @H5EA__iblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.kz, i32 noundef 0, i32 noundef 50, ptr noundef %i.kt, i64 noundef %i.ku, i64 noundef %i.kx) #10
  br label %bb.et

bb.cn:                                            ; preds = %bb.cm
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite402 = call i64 @fwrite(ptr nonnull @.str.69, i64 129, i64 1, ptr %i.lb) #12 ; 0 uses
  %i.lc = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite403 = call i64 @fwrite(ptr nonnull @.str.70, i64 36, i64 1, ptr %i.lc) #12 ; 0 uses
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite404 = call i64 @fwrite(ptr nonnull @.str.71, i64 88, i64 1, ptr %i.ld) #12 ; 0 uses
  br label %.thread470

bb.co:                                            ; preds = %bb.cl
  %i.le = load i32, ptr %i.b, align 1
  %i.lf = icmp ne i32 %i.le, 1112752453
  %i.lg = zext i1 %i.lf to i32
  %.not406 = icmp eq i32 %i.lg, 0
  br i1 %.not406, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val454 = load i8, ptr %i.lh, align 1, !tbaa !23
  %i.li = call fastcc ptr @get_H5EA_class(i8 %.val454)
  %i.lj = load i64, ptr %i.a, align 16            ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 0
  %or.cond86 = select i1 %3, i1 true, i1 %i.lk
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lm = load i64, ptr %i.ll, align 8            ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  %or.cond89 = select i1 %or.cond86, i1 true, i1 %i.ln
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lp = load i64, ptr %i.lo, align 16           ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 0
  %or.cond92 = select i1 %or.cond89, i1 true, i1 %i.lq
  br i1 %or.cond92, label %bb.cq, label %.thread487

.thread487:                                       ; preds = %bb.cp
  %i.lr = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ls = trunc i64 %i.lm to i32
  %i.lt = call i32 @H5EA__sblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.lr, i32 noundef 0, i32 noundef 50, ptr noundef %i.li, i64 noundef %i.lj, i32 noundef %i.ls, i64 noundef %i.lp) #10
  br label %bb.et

bb.cq:                                            ; preds = %bb.cp
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite407 = call i64 @fwrite(ptr nonnull @.str.73, i64 148, i64 1, ptr %i.lu) #12 ; 0 uses
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite408 = call i64 @fwrite(ptr nonnull @.str.74, i64 36, i64 1, ptr %i.lv) #12 ; 0 uses
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite409 = call i64 @fwrite(ptr nonnull @.str.75, i64 109, i64 1, ptr %i.lw) #12 ; 0 uses
  br label %.thread470

bb.cr:                                            ; preds = %bb.co
  %i.lx = load i32, ptr %i.b, align 1
  %i.ly = icmp ne i32 %i.lx, 1111769413
  %i.lz = zext i1 %i.ly to i32
  %.not411 = icmp eq i32 %i.lz, 0
  br i1 %.not411, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val453 = load i8, ptr %i.ma, align 1, !tbaa !23
  %i.mb = call fastcc ptr @get_H5EA_class(i8 %.val453)
  %i.mc = load i64, ptr %i.a, align 16            ; 2 uses
  %i.md = icmp eq i64 %i.mc, 0
  %or.cond95 = select i1 %3, i1 true, i1 %i.md
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mf = load i64, ptr %i.me, align 8            ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 0
  %or.cond98 = select i1 %or.cond95, i1 true, i1 %i.mg
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mi = load i64, ptr %i.mh, align 16           ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  %or.cond101 = select i1 %or.cond98, i1 true, i1 %i.mj
  br i1 %or.cond101, label %bb.ct, label %.thread491

.thread491:                                       ; preds = %bb.cs
  %i.mk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ml = call i32 @H5EA__dblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.mk, i32 noundef 0, i32 noundef 50, ptr noundef %i.mb, i64 noundef %i.mc, i64 noundef %i.mf, i64 noundef %i.mi) #10
  br label %bb.et

bb.ct:                                            ; preds = %bb.cs
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite412 = call i64 @fwrite(ptr nonnull @.str.77, i64 157, i64 1, ptr %i.mm) #12 ; 0 uses
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite413 = call i64 @fwrite(ptr nonnull @.str.78, i64 35, i64 1, ptr %i.mn) #12 ; 0 uses
  %i.mo = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite414 = call i64 @fwrite(ptr nonnull @.str.79, i64 117, i64 1, ptr %i.mo) #12 ; 0 uses
  br label %.thread470

bb.cu:                                            ; preds = %bb.cr
  %i.mp = load i32, ptr %i.b, align 1
  %i.mq = icmp ne i32 %i.mp, 1145585990
  %i.mr = zext i1 %i.mq to i32
  %.not416 = icmp eq i32 %i.mr, 0
  br i1 %.not416, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val458 = load i8, ptr %i.ms, align 1, !tbaa !23
  %i.mt = call fastcc ptr @get_H5FA_class(i8 %.val458)
  %i.mu = load i64, ptr %i.a, align 16            ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  %or.cond104 = select i1 %3, i1 true, i1 %i.mv
  br i1 %or.cond104, label %bb.cw, label %.thread495

.thread495:                                       ; preds = %bb.cv
  %i.mw = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.mx = call i32 @H5FA__hdr_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.mw, i32 noundef 0, i32 noundef 50, ptr noundef %i.mt, i64 noundef %i.mu) #10
  br label %bb.et

bb.cw:                                            ; preds = %bb.cv
  %i.my = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.65, i64 88, i64 1, ptr %i.my) #12 ; 0 uses
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite418 = call i64 @fwrite(ptr nonnull @.str.81, i64 32, i64 1, ptr %i.mz) #12 ; 0 uses
  %i.na = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite419 = call i64 @fwrite(ptr nonnull @.str.82, i64 73, i64 1, ptr %i.na) #12 ; 0 uses
  br label %.thread470

bb.cx:                                            ; preds = %bb.cu
  %i.nb = load i32, ptr %i.b, align 1
  %i.nc = icmp ne i32 %i.nb, 1111769414
  %i.nd = zext i1 %i.nc to i32
  %.not421 = icmp eq i32 %i.nd, 0
  br i1 %.not421, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.val457 = load i8, ptr %i.ne, align 1, !tbaa !23
  %i.nf = call fastcc ptr @get_H5FA_class(i8 %.val457)
  %i.ng = load i64, ptr %i.a, align 16            ; 2 uses
  %i.nh = icmp eq i64 %i.ng, 0
  %or.cond107 = select i1 %3, i1 true, i1 %i.nh
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nj = load i64, ptr %i.ni, align 8            ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 0
  %or.cond110 = select i1 %or.cond107, i1 true, i1 %i.nk
  br i1 %or.cond110, label %bb.cz, label %.thread499

.thread499:                                       ; preds = %bb.cy
  %i.nl = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.nm = call i32 @H5FA__dblock_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.nl, i32 noundef 0, i32 noundef 50, ptr noundef %i.nf, i64 noundef %i.ng, i64 noundef %i.nj) #10
  br label %bb.et

bb.cz:                                            ; preds = %bb.cy
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite422 = call i64 @fwrite(ptr nonnull @.str.84, i64 123, i64 1, ptr %i.nn) #12 ; 0 uses
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite423 = call i64 @fwrite(ptr nonnull @.str.85, i64 30, i64 1, ptr %i.no) #12 ; 0 uses
  %i.np = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite424 = call i64 @fwrite(ptr nonnull @.str.86, i64 88, i64 1, ptr %i.np) #12 ; 0 uses
  br label %.thread470

bb.da:                                            ; preds = %bb.cx
  %i.nq = load i32, ptr %i.b, align 1
  %i.nr = icmp ne i32 %i.nq, 1380206671
  %i.ns = zext i1 %i.nr to i32
  %.not426 = icmp eq i32 %i.ns, 0
  br i1 %.not426, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.nt = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.nu = call i32 @H5O_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.nt, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.dc:                                            ; preds = %bb.da
  %i.nv = load i8, ptr %i.b, align 1, !tbaa !23
  %i.nw = icmp eq i8 %i.nv, 1
  br i1 %i.nw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nx = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ny = call i32 @H5O_debug(ptr noundef nonnull %i.ai, i64 noundef %.0281460, ptr noundef %i.nx, i32 noundef 0, i32 noundef 50) #10
  br label %bb.et

bb.de:                                            ; preds = %bb.dc
  %i.nz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef 50, ptr noundef nonnull @.str.89) ; 0 uses
  %i.oa = load i8, ptr %i.b, align 1, !tbaa !23   ; 3 uses
  %i.ob = zext i8 %i.oa to i32                    ; 2 uses
  %i.oc = add i8 %i.oa, -127
  %or.cond449 = icmp ult i8 %i.oc, -94
  %.not428 = icmp eq i8 %i.oa, 92                 ; 2 uses
  %or.cond450 = or i1 %.not428, %or.cond449
  br i1 %or.cond450, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.od = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.oe = call i32 @putc(i32 noundef %i.ob, ptr noundef %i.od), !inline_history !16 ; 0 uses
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  br i1 %.not428, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.of = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.og = call i32 @putc(i32 noundef 92, ptr noundef %i.of), !inline_history !16 ; 0 uses
  %i.oh = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.oi = call i32 @putc(i32 noundef 92, ptr noundef %i.oh), !inline_history !16 ; 0 uses
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.oj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.ob) ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.df, %bb.di, %bb.dh
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !23  ; 3 uses
  %i.om = zext i8 %i.ol to i32                    ; 2 uses
  %i.on = add i8 %i.ol, -127
  %or.cond449.1 = icmp ult i8 %i.on, -94
  %.not428.1 = icmp eq i8 %i.ol, 92               ; 2 uses
  %or.cond450.1 = or i1 %.not428.1, %or.cond449.1
  br i1 %or.cond450.1, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oo = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.op = call i32 @putc(i32 noundef %i.om, ptr noundef %i.oo), !inline_history !16 ; 0 uses
  br label %bb.do

bb.dl:                                            ; preds = %bb.dj
  br i1 %.not428.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.om) ; 0 uses
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.or = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.os = call i32 @putc(i32 noundef 92, ptr noundef %i.or), !inline_history !16 ; 0 uses
  %i.ot = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ou = call i32 @putc(i32 noundef 92, ptr noundef %i.ot), !inline_history !16 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dk
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !23  ; 3 uses
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %i.oy = add i8 %i.ow, -127
  %or.cond449.2 = icmp ult i8 %i.oy, -94
  %.not428.2 = icmp eq i8 %i.ow, 92               ; 2 uses
  %or.cond450.2 = or i1 %.not428.2, %or.cond449.2
  br i1 %or.cond450.2, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oz = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pa = call i32 @putc(i32 noundef %i.ox, ptr noundef %i.oz), !inline_history !16 ; 0 uses
  br label %bb.dt

bb.dq:                                            ; preds = %bb.do
  br i1 %.not428.2, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.ox) ; 0 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.pc = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pd = call i32 @putc(i32 noundef 92, ptr noundef %i.pc), !inline_history !16 ; 0 uses
  %i.pe = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pf = call i32 @putc(i32 noundef 92, ptr noundef %i.pe), !inline_history !16 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !23  ; 3 uses
  %i.pi = zext i8 %i.ph to i32                    ; 2 uses
  %i.pj = add i8 %i.ph, -127
  %or.cond449.3 = icmp ult i8 %i.pj, -94
  %.not428.3 = icmp eq i8 %i.ph, 92               ; 2 uses
  %or.cond450.3 = or i1 %.not428.3, %or.cond449.3
  br i1 %or.cond450.3, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pk = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pl = call i32 @putc(i32 noundef %i.pi, ptr noundef %i.pk), !inline_history !16 ; 0 uses
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  br i1 %.not428.3, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.pi) ; 0 uses
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.pn = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.po = call i32 @putc(i32 noundef 92, ptr noundef %i.pn), !inline_history !16 ; 0 uses
  %i.pp = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pq = call i32 @putc(i32 noundef 92, ptr noundef %i.pp), !inline_history !16 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du
  %i.pr = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !23  ; 3 uses
  %i.pt = zext i8 %i.ps to i32                    ; 2 uses
  %i.pu = add i8 %i.ps, -127
  %or.cond449.4 = icmp ult i8 %i.pu, -94
  %.not428.4 = icmp eq i8 %i.ps, 92               ; 2 uses
  %or.cond450.4 = or i1 %.not428.4, %or.cond449.4
  br i1 %or.cond450.4, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pv = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pw = call i32 @putc(i32 noundef %i.pt, ptr noundef %i.pv), !inline_history !16 ; 0 uses
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  br i1 %.not428.4, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.px = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.pt) ; 0 uses
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.py = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.pz = call i32 @putc(i32 noundef 92, ptr noundef %i.py), !inline_history !16 ; 0 uses
  %i.qa = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qb = call i32 @putc(i32 noundef 92, ptr noundef %i.qa), !inline_history !16 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !23  ; 3 uses
  %i.qe = zext i8 %i.qd to i32                    ; 2 uses
  %i.qf = add i8 %i.qd, -127
  %or.cond449.5 = icmp ult i8 %i.qf, -94
  %.not428.5 = icmp eq i8 %i.qd, 92               ; 2 uses
  %or.cond450.5 = or i1 %.not428.5, %or.cond449.5
  br i1 %or.cond450.5, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qg = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.qh = call i32 @putc(i32 noundef %i.qe, ptr noundef %i.qg), !inline_history !16 ; 0 uses
end_hunk_0
