Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 198
begin_hunk_0_@_getopt_internal:bb.a
  store i32 %i.nj, ptr @optind, align 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %.sink = phi ptr [ %i.ji, %bb.df ], [ null, %bb.de ]
  store ptr %.sink, ptr @optarg, align 8
  store ptr null, ptr @nextchar, align 8
  br label %.thread315

bb.dh:                                            ; preds = %bb.dd
  br i1 %.not247, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store ptr %i.ji, ptr @optarg, align 8
  %i.nk = add nsw i32 %i.jp, 1
  store i32 %i.nk, ptr @optind, align 4
  br label %bb.do

bb.dj:                                            ; preds = %bb.dh
  %i.nl = icmp eq i32 %i.jp, %0
  br i1 %i.nl, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.nm = load i32, ptr @opterr, align 4
  %.not246 = icmp eq i32 %i.nm, 0
  br i1 %.not246, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nn = load ptr, ptr @stderr, align 8
  %i.no = load ptr, ptr %1, align 8
  %i.np = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nn, ptr noundef nonnull @.str.124, ptr noundef %i.no, i32 noundef %i.jk) #65 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  store i32 %i.jk, ptr @optopt, align 4
  %i.nq = load i8, ptr %.0188425, align 1
  %i.nr = icmp eq i8 %i.nq, 58
  %.267 = select i1 %i.nr, i32 58, i32 63
  br label %bb.do

bb.dn:                                            ; preds = %bb.dj
  %i.ns = add nsw i32 %i.jp, 1
  store i32 %i.ns, ptr @optind, align 4
  %i.nt = sext i32 %i.jp to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8
  store ptr %i.nv, ptr @optarg, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.di
  %.pre382.pre-phi = phi i32 [ %.267, %bb.dm ], [ %i.jk, %bb.dn ], [ %i.jk, %bb.di ]
  store ptr null, ptr @nextchar, align 8
  br label %.thread315

.thread315:                                       ; preds = %bb.db, %bb.bj, %._crit_edge376, %bb.do, %bb.dg, %bb.as, %bb.bp, %bb.bg, %bb.ba, %bb.bk, %bb.bu, %.thread444, %bb.dc, %bb.cy, %bb.cs, %bb.cm, %bb.cb, %bb.ac, %.thread429, %bb.aa, %bb.ad
  %.3 = phi i32 [ %., %bb.cb ], [ -1, %.thread429 ], [ 1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.aa ], [ 63, %bb.bu ], [ 0, %bb.bk ], [ 0, %bb.dc ], [ %i.iq, %bb.bj ], [ 63, %bb.cs ], [ %i.mx, %bb.cy ], [ 87, %.thread444 ], [ 63, %bb.cm ], [ 63, %bb.as ], [ 63, %bb.bp ], [ %i.ik, %bb.bg ], [ 63, %bb.ba ], [ %i.jk, %._crit_edge376 ], [ %i.jk, %bb.dg ], [ %.pre382.pre-phi, %bb.do ], [ %i.nd, %bb.db ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt_long(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt_long_only(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @vorbis_encode_floor_setup(ptr nofree captures(none) %.48.val, double noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #27 {
bb.a:
  %i.a = fptosi double %0 to i32
  %i.b = tail call noalias dereferenceable_or_null(1120) ptr @calloc(i64 noundef 1, i64 noundef 1120) #71 ; 8 uses
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %4, i64 %i.c ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [1120 x i8], ptr %3, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1120) %i.b, ptr noundef nonnull align 4 dereferenceable(1120) %i.g, i64 1116, i1 false)
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.48.val, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1116
  store i32 %i.l, ptr %i.m, align 4
  %i.n = load i32, ptr %i.b, align 4              ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.t, %vector.body ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load39 = load <4 x i32>, ptr %i.r, align 4
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.t = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load39, <4 x i32> %vec.phi38) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.s, <4 x i32> %i.t)
  %i.v = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0613.ph = phi i32 [ -1, %.lr.ph ], [ %i.v, %middle.block ]
  br label %scalar.ph

.preheader1:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.v, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.not8 = icmp slt i32 %spec.select.lcssa, 0
  br i1 %.not8, label %._crit_edge16, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %.48.val, i64 32
  %i.y = load i32, ptr %i.x, align 8              ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ab = add nuw i32 %spec.select.lcssa, 1
  %wide.trip.count25 = zext i32 %i.ab to i64
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0613 = phi i32 [ %spec.select, %scalar.ph ], [ %.0613.ph, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.0613) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader1, label %scalar.ph, !llvm.loop !179

.preheader:                                       ; preds = %._crit_edge
  %.not7113 = icmp slt i32 %.2.lcssa, 0
  br i1 %.not7113, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.48.val, i64 2856 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.48.val, i64 32 ; 6 uses
  %i.ag = add nuw i32 %.2.lcssa, 1                ; 2 uses
  %wide.trip.count30 = zext i32 %i.ag to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count30, 1
  %i.ah = icmp eq i32 %.2.lcssa, 0
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph15.new

.lr.ph15.new:                                     ; preds = %.lr.ph15
  %unroll_iter = and i64 %wide.trip.count30, 4294967294
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next23, %._crit_edge ] ; 4 uses
  %.010 = phi i32 [ -1, %.lr.ph11 ], [ %.2.lcssa, %._crit_edge ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv22 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %spec.select72 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %.010) ; 3 uses
  %i.ak = add nsw i32 %i.y, %i.aj
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv22
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %.not17 = icmp eq i32 %i.am, 31
  br i1 %.not17, label %._crit_edge, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv22 ; 9 uses
  %i.ao = shl nuw i32 1, %i.am
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %min.iters.check41 = icmp ult i32 %i.am, 3
  br i1 %min.iters.check41, label %scalar.ph40, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph6
  %n.vec43 = and i64 %i.ap, 4294967288
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select72, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %pred.store.continue63, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next64, %pred.store.continue63 ] ; 9 uses
  %vec.phi46 = phi <4 x i32> [ %broadcast.splat, %vector.ph42 ], [ %i.as, %pred.store.continue63 ]
  %vec.phi47 = phi <4 x i32> [ %broadcast.splat, %vector.ph42 ], [ %i.at, %pred.store.continue63 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load48 = load <4 x i32>, ptr %i.aq, align 4 ; 6 uses
  %wide.load49 = load <4 x i32>, ptr %i.ar, align 4 ; 6 uses
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load48, <4 x i32> %vec.phi46) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load49, <4 x i32> %vec.phi47) ; 2 uses
  %i.au = icmp sgt <4 x i32> %wide.load48, splat (i32 -1) ; 4 uses
  %i.av = icmp sgt <4 x i32> %wide.load49, splat (i32 -1) ; 4 uses
  %i.aw = extractelement <4 x i1> %i.au, i64 0
  br i1 %i.aw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body44
  %i.ax = extractelement <4 x i32> %wide.load48, i64 0
  %i.ay = add nsw i32 %i.ax, %i.y
  store i32 %i.ay, ptr %i.aq, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body44
  %i.az = extractelement <4 x i1> %i.au, i64 1
  br i1 %i.az, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = extractelement <4 x i32> %wide.load48, i64 1
  %i.bd = add nsw i32 %i.bc, %i.y
  store i32 %i.bd, ptr %i.bb, align 4
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue
  %i.be = extractelement <4 x i1> %i.au, i64 2
  br i1 %i.be, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <4 x i32> %wide.load48, i64 2
  %i.bi = add nsw i32 %i.bh, %i.y
  store i32 %i.bi, ptr %i.bg, align 4
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bj = extractelement <4 x i1> %i.au, i64 3
  br i1 %i.bj, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = extractelement <4 x i32> %wide.load48, i64 3
  %i.bn = add nsw i32 %i.bm, %i.y
  store i32 %i.bn, ptr %i.bl, align 4
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bo = extractelement <4 x i1> %i.av, i64 0
  br i1 %i.bo, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = extractelement <4 x i32> %wide.load49, i64 0
  %i.bs = add nsw i32 %i.br, %i.y
  store i32 %i.bs, ptr %i.bq, align 4
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bt = extractelement <4 x i1> %i.av, i64 1
  br i1 %i.bt, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.bw = extractelement <4 x i32> %wide.load49, i64 1
  %i.bx = add nsw i32 %i.bw, %i.y
  store i32 %i.bx, ptr %i.bv, align 4
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.by = extractelement <4 x i1> %i.av, i64 2
  br i1 %i.by, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = extractelement <4 x i32> %wide.load49, i64 2
  %i.cc = add nsw i32 %i.cb, %i.y
  store i32 %i.cc, ptr %i.ca, align 4
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.cd = extractelement <4 x i1> %i.av, i64 3
  br i1 %i.cd, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cg = extractelement <4 x i32> %wide.load49, i64 3
  %i.ch = add nsw i32 %i.cg, %i.y
  store i32 %i.ch, ptr %i.cf, align 4
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %index.next64 = add nuw i64 %index45, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next64, %n.vec43
  br i1 %i.ci, label %middle.block65, label %vector.body44, !llvm.loop !180

middle.block65:                                   ; preds = %pred.store.continue63
  %rdx.minmax66 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.cj = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax66)
  br label %._crit_edge

scalar.ph40:                                      ; preds = %.lr.ph6, %bb.d
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %bb.d ], [ 0, %.lr.ph6 ] ; 2 uses
  %.25 = phi i32 [ %spec.select73, %bb.d ], [ %spec.select72, %.lr.ph6 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv19 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 3 uses
  %spec.select73 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %.25) ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %scalar.ph40
  %i.cn = add nsw i32 %i.cl, %i.y
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph40, %bb.c
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next20, %i.ap
  br i1 %i.co, label %scalar.ph40, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.d, %middle.block65, %bb.b
  %.2.lcssa = phi i32 [ %spec.select72, %bb.b ], [ %i.cj, %middle.block65 ], [ %spec.select73, %bb.d ] ; 4 uses
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %.preheader, label %bb.b, !llvm.loop !182

bb.e:                                             ; preds = %bb.e, %.lr.ph15.new
  %indvars.iv27 = phi i64 [ 0, %.lr.ph15.new ], [ %indvars.iv.next28.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph15.new ], [ %niter.next.1, %bb.e ]
  %i.cp = load i32, ptr %i.d, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv27
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load i32, ptr %i.af, align 8            ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.af, align 8
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cx
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = load i32, ptr %i.d, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %2, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv27
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = load i32, ptr %i.af, align 8            ; 2 uses
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.af, align 8
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.di
  store ptr %i.df, ptr %i.dj, align 8
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge16.loopexit.unr-lcssa, label %bb.e, !llvm.loop !183

._crit_edge16.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge16, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge16.loopexit.unr-lcssa, %.lr.ph15
  %indvars.iv27.epil.init = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next28.1, %._crit_edge16.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.dk = load i32, ptr %i.d, align 4
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv27.epil.init
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load i32, ptr %i.af, align 8            ; 2 uses
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.af, align 8
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ds
  store ptr %i.dp, ptr %i.dt, align 8
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %.epil.preheader, %._crit_edge16.loopexit.unr-lcssa, %bb.a, %.preheader1, %.preheader
end_hunk_0
begin_hunk_1_@mdct_backward:bb.a
  %i.jk = load float, ptr %i.jj, align 4          ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.1173, i64 -12
  store float %i.jk, ptr %i.jl, align 4
  %i.jm = fneg float %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %.1171, i64 8
  store float %i.jm, ptr %i.jn, align 4
  %i.jo = load float, ptr %i.iz, align 4          ; 2 uses
  store float %i.jo, ptr %i.iy, align 4
  %i.jp = fneg float %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.1171, i64 12
  store float %i.jp, ptr %i.jq, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %.1171, i64 16 ; 2 uses
  %i.js = icmp ult ptr %i.jr, %i.iz
  br i1 %i.js, label %bb.i, label %.preheader, !llvm.loop !494

.preheader:                                       ; preds = %bb.i, %.preheader
  %.2174 = phi ptr [ %i.jt, %.preheader ], [ %i.i, %bb.i ] ; 4 uses
  %.2 = phi ptr [ %i.ke, %.preheader ], [ %i.i, %bb.i ] ; 5 uses
  %i.jt = getelementptr inbounds i8, ptr %.2174, i64 -16 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.jv = load float, ptr %i.ju, align 4
  store float %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = getelementptr inbounds i8, ptr %.2174, i64 -12
  store float %i.jx, ptr %i.jy, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ka = load float, ptr %i.jz, align 4
  %i.kb = getelementptr inbounds i8, ptr %.2174, i64 -8
  store float %i.ka, ptr %i.kb, align 4
  %i.kc = load float, ptr %.2, align 4
  %i.kd = getelementptr inbounds i8, ptr %.2174, i64 -4
  store float %i.kc, ptr %i.kd, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.kf = icmp ugt ptr %i.jt, %i.g
  br i1 %i.kf, label %.preheader, label %bb.j, !llvm.loop !495

bb.j:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mdct_butterflies(i32 %.4.val, ptr nofree readonly captures(none) %.8.val, ptr nofree noundef %0, i32 noundef range(i32 -1073741824, 1073741824) %1) unnamed_addr #53 {
bb.a:
  %i.a = icmp sgt i32 %.4.val, 6
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = ashr i32 %1, 1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.081.i = phi ptr [ %.8.val, %bb.b ], [ %i.db, %bb.c ] ; 10 uses
  %.pn.i = phi ptr [ %i.c, %bb.b ], [ %.080.i, %bb.c ] ; 8 uses
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.da, %bb.c ] ; 10 uses
  %.080.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 28 ; 3 uses
  %i.p = load float, ptr %i.o, align 4
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = fadd float %i.i, %i.k
  store float %i.r, ptr %i.h, align 4
  %i.s = load float, ptr %i.o, align 4
  %i.t = fadd float %i.n, %i.s
  store float %i.t, ptr %i.m, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.081.i, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fmul float %i.q, %i.v
  %i.x = load float, ptr %.081.i, align 4
  %i.y = fmul float %i.l, %i.x
  %i.z = fadd float %i.w, %i.y
  store float %i.z, ptr %i.j, align 4
  %i.aa = load float, ptr %.081.i, align 4
  %i.ab = fmul float %i.q, %i.aa
  %i.ac = load float, ptr %i.u, align 4
  %i.ad = fmul float %i.l, %i.ac
  %i.ae = fsub float %i.ab, %i.ad
  store float %i.ae, ptr %i.o, align 4
  %i.af = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = fsub float %i.ag, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.pn.i, i64 -12 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 3 uses
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fadd float %i.ag, %i.ai
  store float %i.ap, ptr %i.af, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = fadd float %i.al, %i.aq
  store float %i.ar, ptr %i.ak, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.081.i, i64 20 ; 2 uses
  %i.at = load float, ptr %i.as, align 4
  %i.au = fmul float %i.ao, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.081.i, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %i.aj, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.ah, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = fmul float %i.ao, %i.az
  %i.bb = load float, ptr %i.as, align 4
  %i.bc = fmul float %i.aj, %i.bb
  %i.bd = fsub float %i.ba, %i.bc
  store float %i.bd, ptr %i.am, align 4
  %i.be = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fsub float %i.bf, %i.bh                 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.pn.i, i64 -20 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fsub float %i.bk, %i.bm                 ; 2 uses
  %i.bo = fadd float %i.bf, %i.bh
  store float %i.bo, ptr %i.be, align 4
  %i.bp = load float, ptr %i.bl, align 4
  %i.bq = fadd float %i.bk, %i.bp
  store float %i.bq, ptr %i.bj, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.081.i, i64 36 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fmul float %i.bn, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.081.i, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fmul float %i.bi, %i.bv
  %i.bx = fadd float %i.bt, %i.bw
  store float %i.bx, ptr %i.bg, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = fmul float %i.bn, %i.by
  %i.ca = load float, ptr %i.br, align 4
  %i.cb = fmul float %i.bi, %i.ca
  %i.cc = fsub float %i.bz, %i.cb
  store float %i.cc, ptr %i.bl, align 4
  %i.cd = load float, ptr %.080.i, align 4        ; 2 uses
  %i.ce = load float, ptr %.0.i, align 4          ; 2 uses
  %i.cf = fsub float %i.cd, %i.ce                 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.pn.i, i64 -28 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = fsub float %i.ch, %i.cj                 ; 2 uses
  %i.cl = fadd float %i.cd, %i.ce
  store float %i.cl, ptr %.080.i, align 4
  %i.cm = load float, ptr %i.ci, align 4
  %i.cn = fadd float %i.ch, %i.cm
  store float %i.cn, ptr %i.cg, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.081.i, i64 52 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = fmul float %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.081.i, i64 48 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = fmul float %i.cf, %i.cs
  %i.cu = fadd float %i.cq, %i.ct
  store float %i.cu, ptr %.0.i, align 4
  %i.cv = load float, ptr %i.cr, align 4
  %i.cw = fmul float %i.ck, %i.cv
  %i.cx = load float, ptr %i.co, align 4
  %i.cy = fmul float %i.cf, %i.cx
  %i.cz = fsub float %i.cw, %i.cy
  store float %i.cz, ptr %i.ci, align 4
  %i.da = getelementptr inbounds i8, ptr %.0.i, i64 -32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.081.i, i64 64
  %.not.i = icmp ult ptr %i.da, %0
  br i1 %.not.i, label %mdct_butterfly_first.exit, label %bb.c, !llvm.loop !496

mdct_butterfly_first.exit:                        ; preds = %bb.c
  %.not13 = icmp eq i32 %.4.val, 7
  br i1 %.not13, label %.preheader, label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %mdct_butterfly_first.exit
  %i.dc = add nsw i32 %.4.val, -7
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge
  %.0233 = phi i32 [ %i.agl, %._crit_edge ], [ 1, %.preheader1.preheader ] ; 6 uses
  %.not = icmp eq i32 %.0233, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.dd = shl nuw i32 1, %.0233
  %i.de = ashr i32 %1, %.0233                     ; 2 uses
  %i.df = shl i32 4, %.0233
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = ashr i32 %i.de, 1
  %i.di = sext i32 %i.dh to i64
  %i.dj = sext i32 %i.df to i64                   ; 4 uses
  %2 = sext i32 %i.dd to i64
  br label %bb.d

.preheader:                                       ; preds = %._crit_edge, %bb.a, %mdct_butterfly_first.exit
  %i.dk = icmp sgt i32 %1, 0
  br i1 %i.dk, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %.preheader
  %i.dl = zext nneg i32 %1 to i64                 ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = lshr i64 %i.dm, 5
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %1, 97
  br i1 %min.iters.check, label %.lr.ph5.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph5.preheader
  %n.vec = and i64 %i.do, 1152921504606846972     ; 3 uses
  %i.dp = shl i64 %n.vec, 5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl nuw i64 %index, 5                   ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 33 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 384 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 120 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 248 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 376 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 504 ; 2 uses
  %i.ec = load float, ptr %i.dy, align 4
  %i.ed = load float, ptr %i.dz, align 4
  %i.ee = load float, ptr %i.ea, align 4
  %i.ef = load float, ptr %i.eb, align 4
  %i.eg = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 184 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 312 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 440 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4
  %i.ep = load float, ptr %i.el, align 4
  %i.eq = load float, ptr %i.em, align 4
  %i.er = load float, ptr %i.en, align 4
  %i.es = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 3 ; 2 uses
  %i.ew = fsub <4 x float> %i.ej, %i.ev           ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 124 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 252
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 380
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 508
  %i.fb = load float, ptr %i.ex, align 4
  %i.fc = load float, ptr %i.ey, align 4
  %i.fd = load float, ptr %i.ez, align 4
  %i.fe = load float, ptr %i.fa, align 4
  %i.ff = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 60 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ds, i64 188
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 316
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dw, i64 444
  %i.fn = load float, ptr %i.fj, align 4
  %i.fo = load float, ptr %i.fk, align 4
  %i.fp = load float, ptr %i.fl, align 4
  %i.fq = load float, ptr %i.fm, align 4
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = fsub <4 x float> %i.fi, %i.fu           ; 2 uses
  %i.fw = fadd <4 x float> %i.ej, %i.ev           ; 2 uses
  %i.fx = fadd <4 x float> %i.fi, %i.fu           ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 112 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ds, i64 240 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.du, i64 368 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dw, i64 496 ; 2 uses
  %i.gc = load float, ptr %i.fy, align 4
  %i.gd = load float, ptr %i.fz, align 4
  %i.ge = load float, ptr %i.ga, align 4
  %i.gf = load float, ptr %i.gb, align 4
  %i.gg = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.ge, i64 2
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ds, i64 176 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.du, i64 304 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dw, i64 432 ; 2 uses
  %i.go = load float, ptr %i.gk, align 4
  %i.gp = load float, ptr %i.gl, align 4
  %i.gq = load float, ptr %i.gm, align 4
  %i.gr = load float, ptr %i.gn, align 4
  %i.gs = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.gp, i64 1
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 2
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 3 ; 2 uses
  %i.gw = fsub <4 x float> %i.gj, %i.gv           ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dr, i64 116 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ds, i64 244
  %i.gz = getelementptr inbounds nuw i8, ptr %i.du, i64 372
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dw, i64 500
  %i.hb = load float, ptr %i.gx, align 4
  %i.hc = load float, ptr %i.gy, align 4
  %i.hd = load float, ptr %i.gz, align 4
  %i.he = load float, ptr %i.ha, align 4
  %i.hf = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 1
  %i.hh = insertelement <4 x float> %i.hg, float %i.hd, i64 2
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 3 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dr, i64 52 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ds, i64 180
  %i.hl = getelementptr inbounds nuw i8, ptr %i.du, i64 308
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dw, i64 436
  %i.hn = load float, ptr %i.hj, align 4
  %i.ho = load float, ptr %i.hk, align 4
  %i.hp = load float, ptr %i.hl, align 4
  %i.hq = load float, ptr %i.hm, align 4
  %i.hr = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 2
  %i.hu = insertelement <4 x float> %i.ht, float %i.hq, i64 3 ; 2 uses
  %i.hv = fsub <4 x float> %i.hi, %i.hu           ; 2 uses
  %i.hw = fadd <4 x float> %i.gj, %i.gv           ; 2 uses
  %i.hx = fadd <4 x float> %i.hi, %i.hu           ; 2 uses
  %i.hy = fmul <4 x float> %i.gw, splat (float f0x3F6C835E)
  %i.hz = fmul <4 x float> %i.hv, splat (float f0x3EC3EF15)
  %i.ia = fsub <4 x float> %i.hy, %i.hz           ; 2 uses
  %i.ib = fmul <4 x float> %i.gw, splat (float f0x3EC3EF15)
  %i.ic = fmul <4 x float> %i.hv, splat (float f0x3F6C835E)
  %i.id = fadd <4 x float> %i.ib, %i.ic           ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dr, i64 104 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 232 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.du, i64 360 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dw, i64 488 ; 2 uses
  %i.ii = load float, ptr %i.ie, align 4
  %i.ij = load float, ptr %i.if, align 4
  %i.ik = load float, ptr %i.ig, align 4
  %i.il = load float, ptr %i.ih, align 4
  %i.im = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 1
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 2
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dr, i64 40 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ds, i64 168 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.du, i64 296 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dw, i64 424 ; 2 uses
  %i.iu = load float, ptr %i.iq, align 4
  %i.iv = load float, ptr %i.ir, align 4
  %i.iw = load float, ptr %i.is, align 4
  %i.ix = load float, ptr %i.it, align 4
  %i.iy = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 1
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 2
  %i.jb = insertelement <4 x float> %i.ja, float %i.ix, i64 3 ; 2 uses
  %i.jc = fsub <4 x float> %i.ip, %i.jb           ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dr, i64 108 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ds, i64 236
  %i.jf = getelementptr inbounds nuw i8, ptr %i.du, i64 364
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dw, i64 492
  %i.jh = load float, ptr %i.jd, align 4
  %i.ji = load float, ptr %i.je, align 4
  %i.jj = load float, ptr %i.jf, align 4
  %i.jk = load float, ptr %i.jg, align 4
  %i.jl = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 1
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 2
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dr, i64 44 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ds, i64 172
  %i.jr = getelementptr inbounds nuw i8, ptr %i.du, i64 300
  %i.js = getelementptr inbounds nuw i8, ptr %i.dw, i64 428
  %i.jt = load float, ptr %i.jp, align 4
  %i.ju = load float, ptr %i.jq, align 4
  %i.jv = load float, ptr %i.jr, align 4
  %i.jw = load float, ptr %i.js, align 4
  %i.jx = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 1
  %i.jz = insertelement <4 x float> %i.jy, float %i.jv, i64 2
  %i.ka = insertelement <4 x float> %i.jz, float %i.jw, i64 3 ; 2 uses
  %i.kb = fsub <4 x float> %i.jo, %i.ka           ; 2 uses
  %i.kc = fadd <4 x float> %i.ip, %i.jb           ; 2 uses
  %i.kd = fadd <4 x float> %i.jo, %i.ka           ; 2 uses
  %i.ke = fsub <4 x float> %i.jc, %i.kb
  %i.kf = fmul <4 x float> %i.ke, splat (float f0x3F3504F3) ; 2 uses
  %i.kg = fadd <4 x float> %i.jc, %i.kb
  %i.kh = fmul <4 x float> %i.kg, splat (float f0x3F3504F3) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.dr, i64 96 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ds, i64 224 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.du, i64 352 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dw, i64 480 ; 2 uses
  %i.km = load float, ptr %i.ki, align 4
end_hunk_1
begin_hunk_2_@mdct_butterflies:bb.a
  %i.abc = fadd <4 x float> %i.zg, %i.yu          ; 2 uses
  %i.abd = fsub <4 x float> %i.zg, %i.yu          ; 2 uses
  %i.abe = fadd <4 x float> %i.aba, %i.abc        ; 4 uses
  %i.abf = extractelement <4 x float> %i.abe, i64 0
  store float %i.abf, ptr %i.dy, align 4
  %i.abg = fsub <4 x float> %i.aba, %i.abc        ; 4 uses
  %i.abh = extractelement <4 x float> %i.abg, i64 0
  store float %i.abh, ptr %i.fy, align 4
  %i.abi = fsub <4 x float> %i.zh, %i.yv          ; 2 uses
  %i.abj = fsub <4 x float> %i.zp, %i.zd          ; 2 uses
  %i.abk = fadd <4 x float> %i.abb, %i.abi        ; 4 uses
  %i.abl = extractelement <4 x float> %i.abk, i64 0
  store float %i.abl, ptr %i.ki, align 4
  %i.abm = fsub <4 x float> %i.abb, %i.abi        ; 4 uses
  %i.abn = extractelement <4 x float> %i.abm, i64 0
  store float %i.abn, ptr %i.ie, align 4
  %i.abo = fadd <4 x float> %i.zh, %i.yv          ; 2 uses
  %i.abp = fadd <4 x float> %i.zp, %i.zd          ; 2 uses
  %i.abq = fadd <4 x float> %i.abj, %i.abd        ; 4 uses
  %i.abr = extractelement <4 x float> %i.abq, i64 0
  store float %i.abr, ptr %i.jd, align 4
  %i.abs = shufflevector <4 x float> %i.abm, <4 x float> %i.abq, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abs, ptr %i.if, align 4
  %i.abt = shufflevector <4 x float> %i.abm, <4 x float> %i.abq, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abt, ptr %i.ig, align 4
  %i.abu = shufflevector <4 x float> %i.abm, <4 x float> %i.abq, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abu, ptr %i.ih, align 4
  %i.abv = fsub <4 x float> %i.abj, %i.abd        ; 4 uses
  %i.abw = extractelement <4 x float> %i.abv, i64 0
  store float %i.abw, ptr %i.lh, align 4
  %i.abx = shufflevector <4 x float> %i.abk, <4 x float> %i.abv, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abx, ptr %i.kj, align 4
  %i.aby = shufflevector <4 x float> %i.abk, <4 x float> %i.abv, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aby, ptr %i.kk, align 4
  %i.abz = shufflevector <4 x float> %i.abk, <4 x float> %i.abv, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abz, ptr %i.kl, align 4
  %i.aca = fadd <4 x float> %i.abp, %i.abo        ; 4 uses
  %i.acb = extractelement <4 x float> %i.aca, i64 0
  store float %i.acb, ptr %i.ex, align 4
  %i.acc = shufflevector <4 x float> %i.abe, <4 x float> %i.aca, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.acc, ptr %i.dz, align 4
  %i.acd = shufflevector <4 x float> %i.abe, <4 x float> %i.aca, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.acd, ptr %i.ea, align 4
  %i.ace = shufflevector <4 x float> %i.abe, <4 x float> %i.aca, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ace, ptr %i.eb, align 4
  %i.acf = fsub <4 x float> %i.abp, %i.abo        ; 4 uses
  %i.acg = extractelement <4 x float> %i.acf, i64 0
  store float %i.acg, ptr %i.gx, align 4
  %i.ach = shufflevector <4 x float> %i.abg, <4 x float> %i.acf, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ach, ptr %i.fz, align 4
  %i.aci = shufflevector <4 x float> %i.abg, <4 x float> %i.acf, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aci, ptr %i.ga, align 4
  %i.acj = shufflevector <4 x float> %i.abg, <4 x float> %i.acf, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.acj, ptr %i.gb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ack = icmp eq i64 %index.next, %n.vec
  br i1 %i.ack, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %._crit_edge6, label %.lr.ph5.preheader14

.lr.ph5.preheader14:                              ; preds = %.lr.ph5.preheader, %middle.block
  %indvars.iv9.ph = phi i64 [ 0, %.lr.ph5.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph5

bb.d:                                             ; preds = %.lr.ph, %mdct_butterfly_generic.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %mdct_butterfly_generic.exit ] ; 2 uses
  %i.acl = mul nsw i64 %indvars.iv, %i.dg
  %i.acm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.acl ; 3 uses
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.dg
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.di
  %i.acp = getelementptr inbounds i8, ptr %i.aco, i64 -32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.088.i = phi ptr [ %.8.val, %bb.d ], [ %i.agj, %bb.e ] ; 4 uses
  %.pn.i26 = phi ptr [ %i.acn, %bb.d ], [ %.087.i, %bb.e ] ; 8 uses
  %.0.i27 = phi ptr [ %i.acp, %bb.d ], [ %i.agk, %bb.e ] ; 10 uses
  %.087.i = getelementptr inbounds i8, ptr %.pn.i26, i64 -32 ; 3 uses
  %i.acq = getelementptr inbounds i8, ptr %.pn.i26, i64 -8 ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4        ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.0.i27, i64 24 ; 2 uses
  %i.act = load float, ptr %i.acs, align 4        ; 2 uses
  %i.acu = fsub float %i.acr, %i.act              ; 2 uses
  %i.acv = getelementptr inbounds i8, ptr %.pn.i26, i64 -4 ; 2 uses
  %i.acw = load float, ptr %i.acv, align 4        ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.0.i27, i64 28 ; 3 uses
  %i.acy = load float, ptr %i.acx, align 4
  %i.acz = fsub float %i.acw, %i.acy              ; 2 uses
  %i.ada = fadd float %i.acr, %i.act
  store float %i.ada, ptr %i.acq, align 4
  %i.adb = load float, ptr %i.acx, align 4
  %i.adc = fadd float %i.acw, %i.adb
  store float %i.adc, ptr %i.acv, align 4
  %i.add = getelementptr inbounds nuw i8, ptr %.088.i, i64 4 ; 2 uses
  %i.ade = load float, ptr %i.add, align 4
  %i.adf = fmul float %i.acz, %i.ade
  %i.adg = load float, ptr %.088.i, align 4
  %i.adh = fmul float %i.acu, %i.adg
  %i.adi = fadd float %i.adf, %i.adh
  store float %i.adi, ptr %i.acs, align 4
  %i.adj = load float, ptr %.088.i, align 4
  %i.adk = fmul float %i.acz, %i.adj
  %i.adl = load float, ptr %i.add, align 4
  %i.adm = fmul float %i.acu, %i.adl
  %i.adn = fsub float %i.adk, %i.adm
  store float %i.adn, ptr %i.acx, align 4
  %i.ado = getelementptr inbounds [4 x i8], ptr %.088.i, i64 %i.dj ; 4 uses
  %i.adp = getelementptr inbounds i8, ptr %.pn.i26, i64 -16 ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4        ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0.i27, i64 16 ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4        ; 2 uses
  %i.adt = fsub float %i.adq, %i.ads              ; 2 uses
  %i.adu = getelementptr inbounds i8, ptr %.pn.i26, i64 -12 ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4        ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.0.i27, i64 20 ; 3 uses
  %i.adx = load float, ptr %i.adw, align 4
  %i.ady = fsub float %i.adv, %i.adx              ; 2 uses
  %i.adz = fadd float %i.adq, %i.ads
  store float %i.adz, ptr %i.adp, align 4
  %i.aea = load float, ptr %i.adw, align 4
  %i.aeb = fadd float %i.adv, %i.aea
  store float %i.aeb, ptr %i.adu, align 4
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ado, i64 4 ; 2 uses
  %i.aed = load float, ptr %i.aec, align 4
  %i.aee = fmul float %i.ady, %i.aed
  %i.aef = load float, ptr %i.ado, align 4
  %i.aeg = fmul float %i.adt, %i.aef
  %i.aeh = fadd float %i.aee, %i.aeg
  store float %i.aeh, ptr %i.adr, align 4
  %i.aei = load float, ptr %i.ado, align 4
  %i.aej = fmul float %i.ady, %i.aei
  %i.aek = load float, ptr %i.aec, align 4
  %i.ael = fmul float %i.adt, %i.aek
  %i.aem = fsub float %i.aej, %i.ael
  store float %i.aem, ptr %i.adw, align 4
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.dj ; 4 uses
  %i.aeo = getelementptr inbounds i8, ptr %.pn.i26, i64 -24 ; 2 uses
  %i.aep = load float, ptr %i.aeo, align 4        ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4        ; 2 uses
  %i.aes = fsub float %i.aep, %i.aer              ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %.pn.i26, i64 -20 ; 2 uses
  %i.aeu = load float, ptr %i.aet, align 4        ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.0.i27, i64 12 ; 3 uses
  %i.aew = load float, ptr %i.aev, align 4
  %i.aex = fsub float %i.aeu, %i.aew              ; 2 uses
  %i.aey = fadd float %i.aep, %i.aer
  store float %i.aey, ptr %i.aeo, align 4
  %i.aez = load float, ptr %i.aev, align 4
  %i.afa = fadd float %i.aeu, %i.aez
  store float %i.afa, ptr %i.aet, align 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aen, i64 4 ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4
  %i.afd = fmul float %i.aex, %i.afc
  %i.afe = load float, ptr %i.aen, align 4
  %i.aff = fmul float %i.aes, %i.afe
  %i.afg = fadd float %i.afd, %i.aff
  store float %i.afg, ptr %i.aeq, align 4
  %i.afh = load float, ptr %i.aen, align 4
  %i.afi = fmul float %i.aex, %i.afh
  %i.afj = load float, ptr %i.afb, align 4
  %i.afk = fmul float %i.aes, %i.afj
  %i.afl = fsub float %i.afi, %i.afk
  store float %i.afl, ptr %i.aev, align 4
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.dj ; 4 uses
  %i.afn = load float, ptr %.087.i, align 4       ; 2 uses
  %i.afo = load float, ptr %.0.i27, align 4       ; 2 uses
  %i.afp = fsub float %i.afn, %i.afo              ; 2 uses
  %i.afq = getelementptr inbounds i8, ptr %.pn.i26, i64 -28 ; 2 uses
  %i.afr = load float, ptr %i.afq, align 4        ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4 ; 3 uses
  %i.aft = load float, ptr %i.afs, align 4
  %i.afu = fsub float %i.afr, %i.aft              ; 2 uses
  %i.afv = fadd float %i.afn, %i.afo
  store float %i.afv, ptr %.087.i, align 4
  %i.afw = load float, ptr %i.afs, align 4
  %i.afx = fadd float %i.afr, %i.afw
  store float %i.afx, ptr %i.afq, align 4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afm, i64 4 ; 2 uses
  %i.afz = load float, ptr %i.afy, align 4
  %i.aga = fmul float %i.afu, %i.afz
  %i.agb = load float, ptr %i.afm, align 4
  %i.agc = fmul float %i.afp, %i.agb
  %i.agd = fadd float %i.aga, %i.agc
  store float %i.agd, ptr %.0.i27, align 4
  %i.age = load float, ptr %i.afm, align 4
  %i.agf = fmul float %i.afu, %i.age
  %i.agg = load float, ptr %i.afy, align 4
  %i.agh = fmul float %i.afp, %i.agg
  %i.agi = fsub float %i.agf, %i.agh
  store float %i.agi, ptr %i.afs, align 4
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.dj
  %i.agk = getelementptr inbounds i8, ptr %.0.i27, i64 -32 ; 2 uses
  %.not.i28 = icmp ult ptr %i.agk, %i.acm
  br i1 %.not.i28, label %mdct_butterfly_generic.exit, label %bb.e, !llvm.loop !498

mdct_butterfly_generic.exit:                      ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next, %2
  br i1 %3, label %bb.d, label %._crit_edge, !llvm.loop !499

._crit_edge:                                      ; preds = %mdct_butterfly_generic.exit, %.preheader1
  %i.agl = add nuw i32 %.0233, 1
  %exitcond8.not = icmp eq i32 %.0233, %i.dc
  br i1 %exitcond8.not, label %.preheader, label %.preheader1, !llvm.loop !500

.lr.ph5:                                          ; preds = %.lr.ph5.preheader14, %.lr.ph5
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.lr.ph5 ], [ %indvars.iv9.ph, %.lr.ph5.preheader14 ] ; 2 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv9 ; 25 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 120
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 56
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 112 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 48 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 116
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agm, i64 52
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agm, i64 108
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agm, i64 44
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agm, i64 96 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agm, i64 32 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agm, i64 100
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 36
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agm, i64 88
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agm, i64 24
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agm, i64 80 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agm, i64 20
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agm, i64 84
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agm, i64 12
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agm, i64 76
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agm, i64 64 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agm, i64 68
  %i.ahk = load <2 x float>, ptr %i.agn, align 4  ; 2 uses
  %i.ahl = load <2 x float>, ptr %i.ago, align 4  ; 2 uses
  %i.ahm = fsub <2 x float> %i.ahk, %i.ahl        ; 2 uses
  %i.ahn = load <2 x float>, ptr %i.agp, align 4
  %i.aho = load float, ptr %i.agr, align 4
  %i.ahp = load <2 x float>, ptr %i.agq, align 4
  %i.ahq = load float, ptr %i.ags, align 4
  %i.ahr = load <4 x float>, ptr %i.agv, align 4  ; 5 uses
  %i.ahs = load float, ptr %i.agt, align 4
  %i.aht = load <4 x float>, ptr %i.agw, align 4  ; 5 uses
  %i.ahu = load float, ptr %i.agu, align 4
  %i.ahv = load <4 x float>, ptr %i.ahb, align 4  ; 3 uses
  %i.ahw = load float, ptr %i.ahd, align 4
  %i.ahx = load <4 x float>, ptr %i.ahc, align 4  ; 3 uses
  %i.ahy = load float, ptr %i.ahe, align 4
  %i.ahz = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahx, <2 x i32> <i32 3, i32 6>
  %i.aia = shufflevector <4 x float> %i.ahx, <4 x float> %i.ahv, <2 x i32> <i32 3, i32 6>
  %i.aib = fsub <2 x float> %i.ahz, %i.aia        ; 2 uses
  %i.aic = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahr, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.aid = shufflevector <4 x float> %i.ahx, <4 x float> %i.aht, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.aie = fsub <4 x float> %i.aic, %i.aid        ; 2 uses
  %i.aif = fmul <4 x float> %i.aie, splat (float f0x3EC3EF15) ; 2 uses
  %i.aig = fmul <4 x float> %i.aie, splat (float f0x3F6C835E)
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.aii = fadd <4 x float> %i.aif, %i.aih
  %i.aij = fsub <4 x float> %i.aif, %i.aih
  %i.aik = shufflevector <4 x float> %i.aii, <4 x float> %i.aij, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.ail = load <4 x float>, ptr %i.agm, align 4  ; 5 uses
  %i.aim = load float, ptr %i.ahf, align 4
  %i.ain = load <4 x float>, ptr %i.ahh, align 4  ; 5 uses
  %i.aio = load float, ptr %i.ahg, align 4
  %i.aip = shufflevector <4 x float> %i.ail, <4 x float> %i.ahr, <2 x i32> <i32 2, i32 7>
  %i.aiq = shufflevector <4 x float> %i.ain, <4 x float> %i.aht, <2 x i32> <i32 2, i32 7>
  %i.air = fsub <2 x float> %i.aip, %i.aiq
  %i.ais = shufflevector <4 x float> %i.ahr, <4 x float> %i.ail, <2 x i32> <i32 2, i32 6>
  %i.ait = shufflevector <4 x float> %i.aht, <4 x float> %i.ain, <2 x i32> <i32 2, i32 6>
  %i.aiu = fsub <2 x float> %i.ais, %i.ait
  %i.aiv = shufflevector <4 x float> %i.ail, <4 x float> %i.ahr, <2 x i32> <i32 3, i32 6>
  %i.aiw = shufflevector <4 x float> %i.ain, <4 x float> %i.aht, <2 x i32> <i32 3, i32 6>
  %i.aix = fsub <2 x float> %i.aiv, %i.aiw
  %i.aiy = shufflevector <4 x float> %i.ahr, <4 x float> %i.ail, <2 x i32> <i32 3, i32 7>
  %i.aiz = shufflevector <4 x float> %i.aht, <4 x float> %i.ain, <2 x i32> <i32 3, i32 7>
  %i.aja = fsub <2 x float> %i.aiy, %i.aiz
  %i.ajb = fadd <2 x float> %i.aiu, %i.aja
  %i.ajc = fmul <2 x float> %i.ajb, splat (float f0x3F3504F3) ; 2 uses
  %i.ajd = fsub <2 x float> %i.aix, %i.air
  %i.aje = fmul <2 x float> %i.ajd, splat (float f0x3F3504F3) ; 2 uses
  %i.ajf = shufflevector <2 x float> %i.ahn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajg = shufflevector <4 x float> %i.ajf, <4 x float> %i.ail, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.ajh = shufflevector <2 x float> %i.ahp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> %i.ain, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.ajj = fsub <4 x float> %i.ajg, %i.aji        ; 2 uses
  %i.ajk = fmul <4 x float> %i.ajj, splat (float f0x3F6C835E) ; 2 uses
  %i.ajl = fmul <4 x float> %i.ajj, splat (float f0x3EC3EF15)
  %i.ajm = shufflevector <4 x float> %i.ajl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ajn = fsub <4 x float> %i.ajk, %i.ajm
  %i.ajo = fadd <4 x float> %i.ajk, %i.ajm
  %i.ajp = shufflevector <4 x float> %i.ajn, <4 x float> %i.ajo, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.ajq = fsub <4 x float> %i.ajp, %i.aik        ; 4 uses
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ajs = shufflevector <4 x float> %i.ajq, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ajt = fsub <2 x float> %i.ajr, %i.ajs
  %i.aju = fadd <2 x float> %i.ajr, %i.ajs
  %i.ajv = shufflevector <2 x float> %i.ajt, <2 x float> %i.aju, <2 x i32> <i32 0, i32 3>
  %i.ajw = fmul <2 x float> %i.ajv, splat (float f0x3F3504F3) ; 2 uses
  %i.ajx = fsub <2 x float> %i.aje, %i.ajc        ; 2 uses
  %i.ajy = shufflevector <4 x float> %i.ajq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajz = shufflevector <4 x float> %i.ajq, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aka = fadd <2 x float> %i.ajy, %i.ajz
  %i.akb = fsub <2 x float> %i.ajy, %i.ajz
  %i.akc = shufflevector <2 x float> %i.aka, <2 x float> %i.akb, <2 x i32> <i32 0, i32 3>
  %i.akd = fmul <2 x float> %i.akc, splat (float f0x3F3504F3) ; 2 uses
  %i.ake = fsub <2 x float> %i.ahm, %i.aib        ; 2 uses
  %i.akf = fsub <2 x float> %i.akd, %i.ajw
  %i.akg = shufflevector <2 x float> %i.akf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.akh = fsub <2 x float> %i.ake, %i.ajx
  %i.aki = shufflevector <2 x float> %i.akh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.akj = fadd <4 x float> %i.aki, %i.akg
  %i.akk = fsub <4 x float> %i.aki, %i.akg
  %i.akl = shufflevector <4 x float> %i.akj, <4 x float> %i.akk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.akm = fadd <2 x float> %i.akd, %i.ajw
  %i.akn = shufflevector <2 x float> %i.akm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.ako = fadd <2 x float> %i.ake, %i.ajx
  %i.akp = shufflevector <2 x float> %i.ako, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.akq = fsub <4 x float> %i.akp, %i.akn
  %i.akr = fadd <4 x float> %i.akp, %i.akn
  %i.aks = shufflevector <4 x float> %i.akq, <4 x float> %i.akr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akt = shufflevector <4 x float> %i.aik, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aku = shufflevector <4 x float> %i.ajp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.akv = fadd <2 x float> %i.akt, %i.aku        ; 2 uses
  %i.akw = fadd <2 x float> %i.ajc, %i.aje
  %i.akx = shufflevector <2 x float> %i.akw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aky = shufflevector <4 x float> %i.ajp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.akz = shufflevector <4 x float> %i.aik, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ala = fadd <2 x float> %i.aky, %i.akz
  %i.alb = shufflevector <2 x float> %i.ala, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.alc = fadd <2 x float> %i.ahm, %i.aib        ; 2 uses
  %i.ald = fsub <2 x float> %i.alb, %i.akv
  %i.ale = shufflevector <2 x float> %i.ald, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alf = fsub <2 x float> %i.alc, %i.akx
  %i.alg = shufflevector <2 x float> %i.alf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alh = fadd <4 x float> %i.alg, %i.ale
  %i.ali = fsub <4 x float> %i.alg, %i.ale
  %i.alj = shufflevector <4 x float> %i.alh, <4 x float> %i.ali, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.alk = fadd <2 x float> %i.alb, %i.akv
  %i.all = shufflevector <2 x float> %i.alk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.alm = fadd <2 x float> %i.alc, %i.akx
  %i.aln = shufflevector <2 x float> %i.alm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alo = fsub <4 x float> %i.aln, %i.all
  %i.alp = fadd <4 x float> %i.aln, %i.all
  %i.alq = shufflevector <4 x float> %i.alo, <4 x float> %i.alp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.alq, ptr %i.agq, align 4
  %i.alr = fadd <2 x float> %i.ahk, %i.ahl        ; 2 uses
  %i.als = load <2 x float>, ptr %i.agx, align 4  ; 2 uses
  %i.alt = load <2 x float>, ptr %i.agy, align 4  ; 2 uses
  %i.alu = load <2 x float>, ptr %i.aha, align 4
  %i.alv = load <2 x float>, ptr %i.agz, align 4
  %i.alw = fadd <2 x float> %i.alu, %i.alv        ; 2 uses
  %i.alx = insertelement <4 x float> %i.aic, float %i.ahw, i64 1
  %i.aly = shufflevector <2 x float> %i.als, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alz = shufflevector <4 x float> %i.alx, <4 x float> %i.aly, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ama = insertelement <4 x float> %i.aid, float %i.ahy, i64 1
  %i.amb = shufflevector <2 x float> %i.alt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amc = shufflevector <4 x float> %i.ama, <4 x float> %i.amb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.amd = fadd <4 x float> %i.alz, %i.amc        ; 3 uses
  %i.ame = load <2 x float>, ptr %i.ahi, align 4  ; 2 uses
  %i.amf = load <2 x float>, ptr %i.ahj, align 4  ; 2 uses
  %i.amg = insertelement <2 x float> %i.ame, float %i.ahs, i64 0
  %i.amh = insertelement <2 x float> %i.amf, float %i.ahu, i64 0
  %i.ami = fadd <2 x float> %i.amg, %i.amh        ; 2 uses
  %i.amj = insertelement <2 x float> %i.als, float %i.aim, i64 0
  %i.amk = insertelement <2 x float> %i.alt, float %i.aio, i64 0
  %i.aml = fadd <2 x float> %i.amj, %i.amk        ; 2 uses
  %i.amm = insertelement <4 x float> %i.ajg, float %i.aho, i64 1
  %i.amn = shufflevector <2 x float> %i.ame, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amo = shufflevector <4 x float> %i.amm, <4 x float> %i.amn, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.amp = insertelement <4 x float> %i.aji, float %i.ahq, i64 1
  %i.amq = shufflevector <2 x float> %i.amf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amr = shufflevector <4 x float> %i.amp, <4 x float> %i.amq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ams = fadd <4 x float> %i.amo, %i.amr        ; 3 uses
  store <4 x float> %i.akl, ptr %i.agm, align 4
  store <4 x float> %i.aks, ptr %i.ahb, align 4
  store <4 x float> %i.alj, ptr %i.agw, align 4
  %i.amt = fsub <4 x float> %i.ams, %i.amd        ; 4 uses
  %i.amu = shufflevector <4 x float> %i.amt, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.amv = shufflevector <4 x float> %i.amt, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.amw = fsub <2 x float> %i.amu, %i.amv
  %i.amx = fadd <2 x float> %i.amu, %i.amv
  %i.amy = shufflevector <2 x float> %i.amw, <2 x float> %i.amx, <2 x i32> <i32 0, i32 3>
  %i.amz = fmul <2 x float> %i.amy, splat (float f0x3F3504F3) ; 2 uses
  %i.ana = fsub <2 x float> %i.aml, %i.ami        ; 2 uses
  %i.anb = shufflevector <4 x float> %i.amt, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.anc = shufflevector <4 x float> %i.amt, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.and = fadd <2 x float> %i.anb, %i.anc
  %i.ane = fsub <2 x float> %i.anb, %i.anc
  %i.anf = shufflevector <2 x float> %i.and, <2 x float> %i.ane, <2 x i32> <i32 0, i32 3>
  %i.ang = fmul <2 x float> %i.anf, splat (float f0x3F3504F3) ; 2 uses
  %i.anh = fsub <2 x float> %i.alr, %i.alw        ; 2 uses
  %i.ani = fsub <2 x float> %i.ang, %i.amz
  %i.anj = shufflevector <2 x float> %i.ani, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ank = fsub <2 x float> %i.anh, %i.ana
  %i.anl = shufflevector <2 x float> %i.ank, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.anm = fadd <4 x float> %i.anl, %i.anj
  %i.ann = fsub <4 x float> %i.anl, %i.anj
  %i.ano = shufflevector <4 x float> %i.anm, <4 x float> %i.ann, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.ano, ptr %i.ahh, align 4
  %i.anp = fadd <2 x float> %i.ang, %i.amz
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
end_hunk_2
