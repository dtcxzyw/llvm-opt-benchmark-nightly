Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_LutCascadeTruth:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_LutCascadeMinBase(ptr nofree noundef captures(address) %0, i32 %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = load i64, ptr %0, align 8, !tbaa !72
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a, %bb.m
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %bb.m ], [ 0, %bb.a ]
  %.04052 = phi i32 [ %i.js, %bb.m ], [ 1, %bb.a ] ; 2 uses
  %i.c = sext i32 %.04052 to i64                  ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !72   ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 11 uses
  %.not57 = icmp eq i64 %i.f, 0
  br i1 %.not57, label %Abc_TtMinBase.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph55
  %min.iters.check154 = icmp ult i64 %i.f, 4
  br i1 %min.iters.check154, label %.lr.ph.preheader174, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.preheader
  %n.vec156 = and i64 %i.f, -4                    ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body157 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index158 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load159 = load <2 x i64>, ptr %i.j, align 8, !tbaa !72
  %wide.load160 = load <2 x i64>, ptr %i.k, align 8, !tbaa !72
  %i.l = trunc <2 x i64> %wide.load159 to <2 x i32>
  %i.m = trunc <2 x i64> %wide.load160 to <2 x i32>
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index158 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i32> %i.l, ptr %i.n, align 16, !tbaa !60
  store <2 x i32> %i.m, ptr %i.o, align 8, !tbaa !60
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.p, label %middle.block162, label %vector.body157, !llvm.loop !214

middle.block162:                                  ; preds = %vector.body157
  %cmp.n163 = icmp eq i64 %i.f, %n.vec156
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %.lr.ph.preheader, %middle.block162
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec156, %middle.block162 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader174, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader174 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph, %middle.block162
  %i.u = trunc nuw i64 %i.f to i32                ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %Abc_TtMinBase.exit.thread

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.w = icmp ult i64 %i.f, 7
  %i.x = add nsw i32 %i.u, -6                     ; 3 uses
  %i.y = shl nuw i32 1, %i.x                      ; 4 uses
  %i.z = sext i32 %i.y to i64
  %.idx.i.i = shl nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds i8, ptr %i.i, i64 %.idx.i.i ; 3 uses
  %.not.i.i = icmp eq i32 %i.x, 31                ; 5 uses
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64 ; 2 uses
  br i1 %i.w, label %.lr.ph.i.split.us, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  %i.ab = shl nuw nsw i64 %i.f, 3                 ; 4 uses
  %i.ac = shl nsw i64 %i.c, 3                     ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ac
  %i.ag = getelementptr i8, ptr %0, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ac
  %i.aj = getelementptr i8, ptr %0, i64 %i.ab
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ac
  %i.am = getelementptr i8, ptr %0, i64 %i.ab
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ac
  %min.iters.check94 = icmp slt i32 %i.y, 4
  %n.vec96 = and i64 %wide.trip.count57.i.i, 2147483644
  %exitcond160.not.i.i = icmp slt i32 %i.y, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %exitcond160.not.i.i.1 = icmp eq i32 %i.x, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  br label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %.promoted = load i64, ptr %i.i, align 8, !tbaa !72
  br label %Abc_TtHasVar.exit.i.us

Abc_TtHasVar.exit.i.us:                           ; preds = %Abc_TtHasVar.exit.thread.i.us, %.lr.ph.i.split.us
  %i.ar = phi i64 [ %.promoted, %.lr.ph.i.split.us ], [ %i.bx, %Abc_TtHasVar.exit.thread.i.us ] ; 7 uses
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %indvars.iv.next.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 6 uses
  %.051.i.us = phi i32 [ 0, %.lr.ph.i.split.us ], [ %.1.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.at = shl nuw i32 1, %i.as                    ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !72
  %i.ay = xor i64 %i.av, %i.ar
  %i.az = and i64 %i.ay, %i.ax
  %.not44.i.us = icmp eq i64 %i.az, 0
  br i1 %.not44.i.us, label %Abc_TtHasVar.exit.thread.i.us, label %Abc_TtHasVar.exit.thread41.thread.i.us

Abc_TtHasVar.exit.thread41.thread.i.us:           ; preds = %Abc_TtHasVar.exit.i.us
  %i.ba = sext i32 %.051.i.us to i64              ; 3 uses
  %i.bb = icmp sgt i64 %indvars.iv.i.us, %i.ba
  br i1 %i.bb, label %.thread.i.us, label %Abc_TtSwapVars.exit.i.us

.thread.i.us:                                     ; preds = %Abc_TtHasVar.exit.thread41.thread.i.us
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !60
  %i.be = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ba
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !60
  %i.bf = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ba
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %indvars.iv.i.us ; 3 uses
  %.neg.i.i.i.us = shl nsw i32 -1, %.051.i.us
  %i.bh = add i32 %.neg.i.i.i.us, %i.at
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !72
  %i.bj = and i64 %i.bi, %i.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !72
  %i.bm = and i64 %i.bl, %i.ar
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl i64 %i.bm, %i.bn
  %i.bp = or i64 %i.bo, %i.bj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = and i64 %i.br, %i.ar
  %i.bt = lshr i64 %i.bs, %i.bn
  %i.bu = or i64 %i.bp, %i.bt                     ; 2 uses
  store i64 %i.bu, ptr %i.i, align 8, !tbaa !72
  br label %Abc_TtSwapVars.exit.i.us

Abc_TtSwapVars.exit.i.us:                         ; preds = %.thread.i.us, %Abc_TtHasVar.exit.thread41.thread.i.us
  %i.bv = phi i64 [ %i.bu, %.thread.i.us ], [ %i.ar, %Abc_TtHasVar.exit.thread41.thread.i.us ]
  %i.bw = add nsw i32 %.051.i.us, 1
  br label %Abc_TtHasVar.exit.thread.i.us

Abc_TtHasVar.exit.thread.i.us:                    ; preds = %Abc_TtSwapVars.exit.i.us, %Abc_TtHasVar.exit.i.us
  %i.bx = phi i64 [ %i.bv, %Abc_TtSwapVars.exit.i.us ], [ %i.ar, %Abc_TtHasVar.exit.i.us ]
  %.1.i.us = phi i32 [ %i.bw, %Abc_TtSwapVars.exit.i.us ], [ %.051.i.us, %Abc_TtHasVar.exit.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.f
  br i1 %exitcond.not.i.us, label %Abc_TtMinBase.exit, label %Abc_TtHasVar.exit.i.us, !llvm.loop !216

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.preheader, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i.split.preheader ] ; 11 uses
  %.051.i = phi i32 [ %.1.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i.split.preheader ] ; 11 uses
  %i.by = icmp samesign ult i64 %indvars.iv.i, 6  ; 2 uses
  br i1 %i.by, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.split
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !72
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv53.i.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !72 ; 2 uses
  %i.cg = lshr i64 %i.cf, %i.cb
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = and i64 %i.ch, %i.cd
  %.not39.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.thread41.i

bb.e:                                             ; preds = %.lr.ph.i.split
  %i.cj = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32          ; 2 uses
  %i.cl = shl nuw nsw i32 1, %i.ck                ; 2 uses
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.e
  %i.cm = icmp eq i64 %i.cj, 31
  %i.cn = shl i32 2, %i.ck
  %i.co = sext i32 %i.cn to i64
  br i1 %i.cm, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %2 = zext nneg i32 %i.cl to i64
  %wide.trip.count.i.i = zext nneg i32 %i.cl to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.cs, %._crit_edge.us.i.i ], [ %i.i, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %2
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.g, !llvm.loop !7

bb.g:                                             ; preds = %bb.f, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !72
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.cr = load i64, ptr %gep.i.i, align 8, !tbaa !72
  %.not.us.i.i = icmp eq i64 %i.cq, %i.cr
  br i1 %.not.us.i.i, label %bb.f, label %Abc_TtHasVar.exit.thread41.i

._crit_edge.us.i.i:                               ; preds = %bb.f
  %i.cs = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.co ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.aa
  br i1 %i.ct, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !8

Abc_TtHasVar.exit.thread41.i:                     ; preds = %bb.d, %bb.g
  %i.cu = sext i32 %.051.i to i64                 ; 4 uses
  %i.cv = icmp sgt i64 %indvars.iv.i, %i.cu
  br i1 %i.cv, label %bb.h, label %Abc_TtSwapVars.exit.i

bb.h:                                             ; preds = %Abc_TtHasVar.exit.thread41.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !60
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cu
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !60
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.i
  %.neg.i.i = shl nsw i32 -1, %.051.i
  %i.cz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.da = shl nuw nsw i32 1, %i.cz
  %i.db = add nsw i32 %.neg.i.i, %i.da
  %i.dc = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.cu
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %indvars.iv.i ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !72 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72 ; 4 uses
  %i.dh = zext i32 %i.db to i64                   ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !72 ; 4 uses
  br i1 %min.iters.check94, label %scalar.ph93, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert97 = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %broadcast.splat98 = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert99 = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat100 = shufflevector <2 x i64> %broadcast.splatinsert99, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert101 = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat102 = shufflevector <2 x i64> %broadcast.splatinsert101, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph95
  %index104 = phi i64 [ 0, %vector.ph95 ], [ %index.next107, %vector.body103 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index104 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load105 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !72 ; 3 uses
  %wide.load106 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !72 ; 3 uses
  %i.dm = and <2 x i64> %wide.load105, %broadcast.splat
  %i.dn = and <2 x i64> %wide.load106, %broadcast.splat
  %i.do = and <2 x i64> %wide.load105, %broadcast.splat98
  %i.dp = and <2 x i64> %wide.load106, %broadcast.splat98
  %i.dq = shl <2 x i64> %i.do, %broadcast.splat100
  %i.dr = shl <2 x i64> %i.dp, %broadcast.splat100
  %i.ds = or <2 x i64> %i.dq, %i.dm
  %i.dt = or <2 x i64> %i.dr, %i.dn
  %i.du = and <2 x i64> %wide.load105, %broadcast.splat102
  %i.dv = and <2 x i64> %wide.load106, %broadcast.splat102
  %i.dw = lshr <2 x i64> %i.du, %broadcast.splat100
  %i.dx = lshr <2 x i64> %i.dv, %broadcast.splat100
  %i.dy = or <2 x i64> %i.ds, %i.dw
  %i.dz = or <2 x i64> %i.dt, %i.dx
  store <2 x i64> %i.dy, ptr %i.dk, align 8, !tbaa !72
  store <2 x i64> %i.dz, ptr %i.dl, align 8, !tbaa !72
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next107, %n.vec96
  br i1 %i.ea, label %Abc_TtSwapVars.exit.i, label %vector.body103, !llvm.loop !217

scalar.ph93:                                      ; preds = %.lr.ph.i37.i
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !72  ; 3 uses
  %i.ec = and i64 %i.eb, %i.de
  %i.ed = and i64 %i.eb, %i.dg
  %i.ee = shl i64 %i.ed, %i.dh
  %i.ef = or i64 %i.ee, %i.ec
  %i.eg = and i64 %i.eb, %i.dj
  %i.eh = lshr i64 %i.eg, %i.dh
  %i.ei = or i64 %i.ef, %i.eh
  store i64 %i.ei, ptr %i.i, align 8, !tbaa !72
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph93.1

scalar.ph93.1:                                    ; preds = %scalar.ph93
  %i.ej = load i64, ptr %i.ap, align 8, !tbaa !72 ; 3 uses
  %i.ek = and i64 %i.ej, %i.de
  %i.el = and i64 %i.ej, %i.dg
  %i.em = shl i64 %i.el, %i.dh
  %i.en = or i64 %i.em, %i.ek
  %i.eo = and i64 %i.ej, %i.dj
  %i.ep = lshr i64 %i.eo, %i.dh
  %i.eq = or i64 %i.en, %i.ep
  store i64 %i.eq, ptr %i.ap, align 8, !tbaa !72
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph93.2

scalar.ph93.2:                                    ; preds = %scalar.ph93.1
  %i.er = load i64, ptr %i.aq, align 8, !tbaa !72 ; 3 uses
  %i.es = and i64 %i.er, %i.de
  %i.et = and i64 %i.er, %i.dg
  %i.eu = shl i64 %i.et, %i.dh
  %i.ev = or i64 %i.eu, %i.es
  %i.ew = and i64 %i.er, %i.dj
  %i.ex = lshr i64 %i.ew, %i.dh
  %i.ey = or i64 %i.ev, %i.ex
  store i64 %i.ey, ptr %i.aq, align 8, !tbaa !72
  br label %Abc_TtSwapVars.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ez = icmp slt i32 %.051.i, 6
  br i1 %i.ez, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.k
  %i.fa = trunc i64 %indvars.iv.i to i32
  %i.fb = add i32 %i.fa, -6                       ; 2 uses
  %i.fc = shl nuw i32 1, %i.fb                    ; 3 uses
  %i.fd = shl nuw nsw i32 1, %.051.i
  %i.fe = zext nneg i32 %i.fd to i64              ; 3 uses
  %i.ff = shl i32 2, %i.fb
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cu
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !72 ; 5 uses
  %i.fj = xor i64 %i.fi, -1                       ; 2 uses
  %i.fk = sext i32 %i.fc to i64                   ; 2 uses
  %smax152.i.i = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 1)
  %wide.trip.count153.i.i = zext nneg i32 %smax152.i.i to i64 ; 3 uses
  %i.fl = shl nuw nsw i64 %wide.trip.count153.i.i, 3 ; 2 uses
  %i.fm = shl nsw i64 %i.fg, 3
  %i.fn = shl nsw i64 %i.fk, 3
  %min.iters.check113 = icmp slt i32 %i.fc, 2
  %i.fo = getelementptr i8, ptr %i.al, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fl
  %i.fq = getelementptr i8, ptr %i.ao, i64 %i.fl
  %n.vec115 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert118 = insertelement <2 x i64> poison, i64 %i.fe, i64 0
  %broadcast.splat119 = shufflevector <2 x i64> %broadcast.splatinsert118, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert120 = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %broadcast.splat121 = shufflevector <2 x i64> %broadcast.splatinsert120, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.i34.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.i34.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.go, %._crit_edge.us.i36.i ], [ %i.i, %.preheader.lr.ph.i34.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.fk ; 3 uses
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck

scalar.ph112.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i35.i
  br label %scalar.ph112

vector.memcheck:                                  ; preds = %.preheader.us.i35.i
  %i.fr = mul i64 %i.fm, %indvar                  ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.fp, i64 %i.fr
  %scevgep = getelementptr i8, ptr %i.fq, i64 %i.fr
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep111
  %bound1 = icmp ult ptr %invariant.gep169.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph112.preheader, label %vector.body122

vector.body122:                                   ; preds = %vector.memcheck, %vector.body122
  %index123 = phi i64 [ %index.next126, %vector.body122 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index123 ; 2 uses
  %wide.load124 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !72, !alias.scope !234, !noalias !235 ; 2 uses
  %i.ft = and <2 x i64> %wide.load124, %broadcast.splat117
  %i.fu = lshr <2 x i64> %i.ft, %broadcast.splat119
  %i.fv = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index123 ; 2 uses
  %wide.load125 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !72, !alias.scope !235 ; 2 uses
  %i.fw = shl <2 x i64> %wide.load125, %broadcast.splat119
  %i.fx = and <2 x i64> %i.fw, %broadcast.splat117
  %i.fy = and <2 x i64> %wide.load124, %broadcast.splat121
  %i.fz = or <2 x i64> %i.fx, %i.fy
  store <2 x i64> %i.fz, ptr %i.fs, align 8, !tbaa !72, !alias.scope !234, !noalias !235
  %i.ga = and <2 x i64> %wide.load125, %broadcast.splat117
  %i.gb = or <2 x i64> %i.ga, %i.fu
  store <2 x i64> %i.gb, ptr %i.fv, align 8, !tbaa !72, !alias.scope !235
end_hunk_0
