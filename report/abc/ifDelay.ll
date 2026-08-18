inline.NumInlined: 161
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@If_CutDelaySop:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.023.us.i = phi i32 [ 0, %.lr.ph.us.preheader.i ], [ %i.bi, %._crit_edge.us.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.am = shl nuw nsw <4 x i32> %vec.ind, splat (i32 1)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.an = add <4 x i32> %step.add, splat (i32 8)
  %i.ao = ashr <4 x i32> %broadcast.splat, %i.am
  %i.ap = ashr <4 x i32> %broadcast.splat, %i.an
  %i.aq = and <4 x i32> %i.ao, splat (i32 3)
  %i.ar = and <4 x i32> %i.ap, splat (i32 3)
  %i.as = add nsw <4 x i32> %i.aq, splat (i32 -1)
  %i.at = add nsw <4 x i32> %i.ar, splat (i32 -1)
  %i.au = icmp ult <4 x i32> %i.as, splat (i32 2)
  %i.av = icmp ult <4 x i32> %i.at, splat (i32 2)
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <4 x i32> %vec.phi100, %i.ax        ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i32 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.01621.us.i.ph = phi i32 [ 0, %.lr.ph.us.i ], [ %i.bb, %middle.block ]
  %.01720.us.i.ph = phi i32 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01621.us.i = phi i32 [ %spec.select.us.i, %scalar.ph ], [ %.01621.us.i.ph, %scalar.ph.preheader ]
  %.01720.us.i = phi i32 [ %i.bh, %scalar.ph ], [ %.01720.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bc = shl nuw nsw i32 %.01720.us.i, 1
  %i.bd = ashr i32 %i.al, %i.bc
  %i.be = and i32 %i.bd, 3
  %i.bf = add nsw i32 %i.be, -1
  %or.cond.us.i = icmp ult i32 %i.bf, 2
  %i.bg = zext i1 %or.cond.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.01621.us.i, %i.bg ; 2 uses
  %i.bh = add nuw nsw i32 %.01720.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %spec.select.us.i.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select.us.i, %scalar.ph ]
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 %.023.us.i, i32 %spec.select.us.i.lcssa) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond29.not.i, label %If_CutMaxCubeSize.exit, label %.lr.ph.us.i, !llvm.loop !55

If_CutMaxCubeSize.exit:                           ; preds = %._crit_edge.us.i
  %i.bj = icmp eq i32 %.val63, 1
  br i1 %i.bj, label %If_CutMaxCubeSize.exit.thread, label %.lr.ph

If_CutMaxCubeSize.exit.thread91:                  ; preds = %.lr.ph25.i
  %i.bk = icmp eq i32 %.val63, 1
  br i1 %i.bk, label %If_CutMaxCubeSize.exit.thread.thread, label %.thread

If_CutMaxCubeSize.exit.thread.thread:             ; preds = %If_CutMaxCubeSize.exit.thread91
  %i.bl = and i64 %i.g, -4096
  %i.bm = or disjoint i64 %i.bl, 1
  store i64 %i.bm, ptr %i.b, align 4
  br label %.critedge

.thread:                                          ; preds = %If_CutMaxCubeSize.exit.thread91
  %i.bn = add nuw nsw i32 %.val63, 1
  %i.bo = and i32 %i.bn, 4095
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = and i64 %i.g, -4096
  %i.br = or disjoint i64 %i.bq, %i.bp
  store i64 %i.br, ptr %i.b, align 4
  br label %.critedge

If_CutMaxCubeSize.exit.thread:                    ; preds = %bb.e, %If_CutMaxCubeSize.exit
  %i.bs = and i32 %.val63, 4095
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = and i64 %i.g, -4096
  %i.bv = or disjoint i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.b, align 4
  %.not80 = icmp eq i32 %i.i, 0
  br i1 %.not80, label %.critedge, label %.lr.ph75

.lr.ph75:                                         ; preds = %If_CutMaxCubeSize.exit.thread
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @If_CutDelaySop.GateDelays, i64 %i.t
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !56
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = fptosi double %i.by to i32              ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 40
  %i.cb = trunc i32 %i.bz to i8
  %sext54 = shl i32 %i.bz, 24
  %i.cc = ashr exact i32 %sext54, 24
  %i.cd = sitofp i32 %i.cc to float
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph75, %bb.g
  %indvars.iv84 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next85, %bb.g ] ; 3 uses
  %.074 = phi i32 [ 0, %.lr.ph75 ], [ %i.cp, %bb.g ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv84
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !30
  %.val55 = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cg = getelementptr i8, ptr %.val55, i64 8
  %.val55.val = load ptr, ptr %i.cg, align 8, !tbaa !27
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %.val55.val, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 2 uses
  %.not53 = icmp eq ptr %i.cj, null
  br i1 %.not53, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 92
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv84
  store i8 %i.cb, ptr %i.cm, align 1, !tbaa !58
  %i.cn = fadd float %i.cl, %i.cd
  %i.co = fptosi float %i.cn to i32
  %i.cp = tail call noundef i32 @llvm.smax.i32(i32 %.074, i32 %i.co) ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %i.t
  br i1 %exitcond88.not, label %.critedge, label %bb.f, !llvm.loop !59

.lr.ph:                                           ; preds = %If_CutMaxCubeSize.exit
  %i.cq = zext nneg i32 %i.bi to i64
  %i.cr = add nuw nsw i32 %.val63, 1
  %i.cs = and i32 %i.cr, 4095
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = and i64 %i.g, -4096
  %i.cv = or disjoint i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.b, align 4
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @If_CutDelaySop.GateDelays, i64 %i.t
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @If_CutDelaySop.GateDelays, i64 %i.cq
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !56
  %i.da = fadd double %i.cx, %i.cz
  %i.db = fadd double %i.da, 5.000000e-01
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %i.dd = getelementptr i8, ptr %0, i64 40
  %i.de = trunc i32 %i.dc to i8
  %sext = shl i32 %i.dc, 24
  %i.df = ashr exact i32 %sext, 24
  %i.dg = sitofp i32 %i.df to float
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.170 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %.val = load ptr, ptr %i.dd, align 8, !tbaa !8
  %i.dj = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.dj, align 8, !tbaa !27
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.dm, null
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 92
  %i.do = load float, ptr %i.dn, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.de, ptr %i.dp, align 1, !tbaa !58
  %i.dq = fadd float %i.do, %i.dg
  %i.dr = fptosi float %i.dq to i32
  %i.ds = tail call noundef i32 @llvm.smax.i32(i32 %.170, i32 %i.dr) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !60

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.f, %bb.g, %If_CutMaxCubeSize.exit.thread.thread, %.thread, %If_CutMaxCubeSize.exit.thread, %bb.d, %bb.c, %bb.a, %bb.b
  %.049 = phi i32 [ -1, %bb.d ], [ %i.r, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %If_CutMaxCubeSize.exit.thread.thread ], [ 0, %If_CutMaxCubeSize.exit.thread ], [ 0, %.thread ], [ %i.cp, %bb.g ], [ %.074, %bb.f ], [ %.170, %bb.h ], [ %i.ds, %bb.i ]
  ret i32 %.049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @If_CutSopBalancePinDelaysInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [15 x i64], align 16              ; 10 uses
  %i.b = alloca [70 x i64], align 16              ; 15 uses
  %i.c = alloca [15 x i32], align 16              ; 8 uses
  %i.d = alloca [70 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val32 = load i32, ptr %i.e, align 4, !tbaa !40 ; 3 uses
  %i.f = icmp sgt i32 %.val32, 70
  br i1 %i.f, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %.val32, 0
  br i1 %i.g, label %.lr.ph111, label %If_LogPinDelaysMulti.exit92

.lr.ph111:                                        ; preds = %.preheader
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val33 = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.i = icmp sgt i32 %3, 0                       ; 2 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 4 uses
  %scevgep118 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %scevgep121 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %scevgep126 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %scevgep131 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %wide.trip.count146 = zext nneg i32 %.val32 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph111, %If_LogCounterPinDelays.exit76
  %indvars.iv143 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next144, %If_LogCounterPinDelays.exit76 ] ; 2 uses
  %.0110 = phi i32 [ 0, %.lr.ph111 ], [ %i.eq, %If_LogCounterPinDelays.exit76 ] ; 2 uses
  %.096108 = phi i32 [ 0, %.lr.ph111 ], [ %.2.i47, %If_LogCounterPinDelays.exit76 ] ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv143
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  br i1 %i.i, label %.lr.ph, label %If_LogPinDelaysMulti.exit

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.b ] ; 4 uses
  %.1106 = phi i32 [ %.2, %bb.h ], [ %.0110, %bb.b ]
  %.097104 = phi i32 [ %.198, %bb.h ], [ 0, %bb.b ] ; 7 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 1
  %i.m = ashr i32 %i.k, %i.l
  %i.n = and i32 %i.m, 3
  %i.o = add nsw i32 %i.n, -1
  %or.cond = icmp ult i32 %i.o, 2
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61
  %i.t = sext i32 %.097104 to i64                 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.t
  store i64 %i.s, ptr %i.u, align 8, !tbaa !61
  %i.v = add nsw i32 %.097104, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.t
  store i32 %i.q, ptr %i.w, align 4, !tbaa !30
  %i.x = icmp sgt i32 %.097104, 0
  br i1 %i.x, label %.preheader.split.us.i.preheader, label %If_LogCounterPinDelays.exit

.preheader.split.us.i.preheader:                  ; preds = %bb.c
  %invariant.op = sub i32 -2, %.097104
  br label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %.loopexit.us.i
  %indvar = phi i32 [ %indvar.next, %.loopexit.us.i ], [ 0, %.preheader.split.us.i.preheader ] ; 2 uses
  %.075.us.i = phi i32 [ %.1.us.i, %.loopexit.us.i ], [ %i.v, %.preheader.split.us.i.preheader ] ; 4 uses
  %.06674.us.i = phi i32 [ %i.aa, %.loopexit.us.i ], [ %.097104, %.preheader.split.us.i.preheader ] ; 3 uses
  %5 = zext i32 %.06674.us.i to i64               ; 4 uses
  %6 = shl nuw nsw i64 %5, 3                      ; 2 uses
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %6
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %6
  %.reass.reass = add i32 %indvar, %invariant.op
  %7 = shl nuw nsw i64 %5, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.c, i64 %7
  %scevgep119.a = getelementptr i8, ptr %scevgep118, i64 %7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %5 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30   ; 3 uses
  %i.aa = add nsw i32 %.06674.us.i, -1            ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30 ; 4 uses
  %i.ae = icmp slt i32 %i.z, %i.ad
  br i1 %i.ae, label %If_LogCounterPinDelays.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.af = icmp sgt i32 %i.z, %i.ad
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 4 uses
  br i1 %i.af, label %bb.g, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.d
  %i.ah = add nsw i32 %i.ad, 1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !30
  %i.ai = load i64, ptr %8, align 8, !tbaa !61
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !61
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.f, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.f ] ; 2 uses
  %.01213.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %.1.i.us.i, %bb.f ] ; 2 uses
  %i.ak = shl nuw nsw i64 %indvars.iv.i.us.i, 2
  %i.al = and i64 %i.ak, 4294967292               ; 3 uses
  %i.am = lshr i64 %i.ai, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 15
  %i.ap = lshr i64 %i.aj, %i.al
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 15
  %i.as = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.ar) ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.us.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.i
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 14)
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.av, %i.al
  %i.ax = or i64 %i.aw, %.01213.i.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.i
  %.1.i.us.i = phi i64 [ %.01213.i.us.i, %.lr.ph.i.us.i ], [ %i.ax, %bb.e ] ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %If_CutPinDelayMax.exit.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !62

bb.g:                                             ; preds = %bb.d
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !30
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !30
  %9 = load i64, ptr %8, align 8, !tbaa !61
  %10 = load i64, ptr %i.ag, align 8, !tbaa !61
  store i64 %10, ptr %8, align 8, !tbaa !61
  store i64 %9, ptr %i.ag, align 8, !tbaa !61
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %If_CutPinDelayMax.exit.loopexit.us.i, %bb.g
  %.1.us.i = phi i32 [ %.075.us.i, %bb.g ], [ %i.ay, %If_CutPinDelayMax.exit.loopexit.us.i ], [ %i.ay, %.lr.ph.us.i.preheader ] ; 2 uses
  %indvar.next = add nuw nsw i32 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %.097104
  br i1 %exitcond.not, label %If_LogCounterPinDelays.exit, label %.preheader.split.us.i, !llvm.loop !63

If_CutPinDelayMax.exit.loopexit.us.i:             ; preds = %bb.f
  store i64 %.1.i.us.i, ptr %i.ag, align 8, !tbaa !61
  %i.ay = add nsw i32 %.075.us.i, -1              ; 3 uses
  %i.az = icmp slt i32 %.06674.us.i, %i.ay
  br i1 %i.az, label %.lr.ph.us.i.preheader, label %.loopexit.us.i

.lr.ph.us.i.preheader:                            ; preds = %If_CutPinDelayMax.exit.loopexit.us.i
  %i.ba = add i32 %.075.us.i, %.reass.reass
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep119.a, i64 %i.bd, i1 false), !tbaa !30
  %i.be = shl nuw nsw i64 %i.bb, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep120, ptr noundef nonnull align 8 dereferenceable(1) %scevgep122, i64 %i.bf, i1 false), !tbaa !61
  br label %.loopexit.us.i

If_LogCounterPinDelays.exit:                      ; preds = %.preheader.split.us.i, %.loopexit.us.i, %bb.c
  %.2.i = phi i32 [ %i.v, %bb.c ], [ %.075.us.i, %.preheader.split.us.i ], [ %.1.us.i, %.loopexit.us.i ] ; 2 uses
  %i.bg = load i32, ptr %i.c, align 16, !tbaa !30
  %i.bh = icmp sgt i32 %.2.i, 1
  %i.bi = zext i1 %i.bh to i32
  %i.bj = add nsw i32 %i.bg, %i.bi
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %If_LogCounterPinDelays.exit
  %.198 = phi i32 [ %.2.i, %If_LogCounterPinDelays.exit ], [ %.097104, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.bj, %If_LogCounterPinDelays.exit ], [ %.1106, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i.i
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.h
  %i.bk = icmp sgt i32 %.198, 1
  br i1 %i.bk, label %.lr.ph.i34, label %If_LogPinDelaysMulti.exit

.lr.ph.i34:                                       ; preds = %._crit_edge
  %i.bl = zext nneg i32 %.198 to i64
  br label %.lr.ph.preheader.i.us.i36

.lr.ph.preheader.i.us.i36:                        ; preds = %.lr.ph.i34, %If_CutPinDelayMax.exit.loopexit.us.i46
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %If_CutPinDelayMax.exit.loopexit.us.i46 ], [ %i.bl, %.lr.ph.i34 ] ; 3 uses
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i37, -1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i38
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !61
  %i.bo = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i37
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16    ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !61
  br label %.lr.ph.i.us.i39

.lr.ph.i.us.i39:                                  ; preds = %bb.j, %.lr.ph.preheader.i.us.i36
  %indvars.iv.i.us.i40 = phi i64 [ 0, %.lr.ph.preheader.i.us.i36 ], [ %indvars.iv.next.i.us.i44, %bb.j ] ; 2 uses
  %.01213.i.us.i41 = phi i64 [ 0, %.lr.ph.preheader.i.us.i36 ], [ %.1.i.us.i43, %bb.j ] ; 2 uses
  %i.br = shl nuw nsw i64 %indvars.iv.i.us.i40, 2
  %i.bs = and i64 %i.br, 4294967292               ; 3 uses
  %i.bt = lshr i64 %i.bn, %i.bs
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 15
  %i.bw = lshr i64 %i.bq, %i.bs
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 15
  %i.bz = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 %i.by) ; 2 uses
  %.not.i.us.i42 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.us.i42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us.i39
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 14)
  %i.cb = add nuw nsw i32 %i.ca, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl i64 %i.cc, %i.bs
  %i.ce = or i64 %i.cd, %.01213.i.us.i41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.i39
  %.1.i.us.i43 = phi i64 [ %.01213.i.us.i41, %.lr.ph.i.us.i39 ], [ %i.ce, %bb.i ] ; 2 uses
  %indvars.iv.next.i.us.i44 = add nuw nsw i64 %indvars.iv.i.us.i40, 1 ; 2 uses
  %exitcond.not.i.us.i45 = icmp eq i64 %indvars.iv.next.i.us.i44, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i45, label %If_CutPinDelayMax.exit.loopexit.us.i46, label %.lr.ph.i.us.i39, !llvm.loop !62

If_CutPinDelayMax.exit.loopexit.us.i46:           ; preds = %bb.j
  store i64 %.1.i.us.i43, ptr %i.bp, align 8, !tbaa !61
  %i.cf = icmp sgt i64 %indvars.iv.i37, 2
  br i1 %i.cf, label %.lr.ph.preheader.i.us.i36, label %If_LogPinDelaysMulti.exit, !llvm.loop !65

If_LogPinDelaysMulti.exit:                        ; preds = %If_CutPinDelayMax.exit.loopexit.us.i46, %bb.b, %._crit_edge
  %.1.lcssa166 = phi i32 [ %.0110, %bb.b ], [ %.2, %._crit_edge ], [ %.2, %If_CutPinDelayMax.exit.loopexit.us.i46 ]
  %i.cg = load i64, ptr %i.a, align 16, !tbaa !61
  %i.ch = sext i32 %.096108 to i64                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ch
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !61
  %i.cj = add nsw i32 %.096108, 1                 ; 3 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ch
  store i32 %.1.lcssa166, ptr %i.ck, align 4, !tbaa !30
  %i.cl = icmp sgt i32 %.096108, 0
  br i1 %i.cl, label %.preheader.i48, label %If_LogCounterPinDelays.exit76

.preheader.i48:                                   ; preds = %If_LogPinDelaysMulti.exit
  %invariant.op174 = sub nuw i32 -2, %.096108     ; 2 uses
  br i1 %i.i, label %.preheader.split.us.i59, label %.preheader.split.i50

.preheader.split.us.i59:                          ; preds = %.preheader.i48, %.loopexit.us.i71
  %indvar137 = phi i32 [ %indvar.next138, %.loopexit.us.i71 ], [ 0, %.preheader.i48 ] ; 2 uses
  %.075.us.i60 = phi i32 [ %.1.us.i72, %.loopexit.us.i71 ], [ %i.cj, %.preheader.i48 ] ; 4 uses
  %.06674.us.i61 = phi i32 [ %i.co, %.loopexit.us.i71 ], [ %.096108, %.preheader.i48 ] ; 3 uses
  %11 = zext i32 %.06674.us.i61 to i64            ; 4 uses
  %12 = shl nuw nsw i64 %11, 3                    ; 2 uses
  %scevgep139 = getelementptr i8, ptr %i.b, i64 %12
  %scevgep141 = getelementptr i8, ptr %scevgep131, i64 %12
  %.reass175 = add i32 %indvar137, %invariant.op174
  %13 = shl nuw nsw i64 %11, 2                    ; 2 uses
  %scevgep134 = getelementptr nuw i8, ptr %i.d, i64 %13
  %scevgep136.a = getelementptr i8, ptr %scevgep126, i64 %13
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %11 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !30 ; 3 uses
  %i.co = add nsw i32 %.06674.us.i61, -1          ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cp ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !30 ; 4 uses
  %i.cs = icmp slt i32 %i.cn, %i.cr
  br i1 %i.cs, label %If_LogCounterPinDelays.exit76, label %bb.k

bb.k:                                             ; preds = %.preheader.split.us.i59
  %i.ct = icmp sgt i32 %i.cn, %i.cr
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %11 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp ; 4 uses
  br i1 %i.ct, label %bb.n, label %.lr.ph.preheader.i.us.i62

.lr.ph.preheader.i.us.i62:                        ; preds = %bb.k
  %i.cv = add nsw i32 %i.cr, 1
  store i32 %i.cv, ptr %i.cq, align 4, !tbaa !30
  %i.cw = load i64, ptr %14, align 8, !tbaa !61
  %i.cx = load i64, ptr %i.cu, align 8, !tbaa !61
  br label %.lr.ph.i.us.i63

.lr.ph.i.us.i63:                                  ; preds = %bb.m, %.lr.ph.preheader.i.us.i62
  %indvars.iv.i.us.i64 = phi i64 [ 0, %.lr.ph.preheader.i.us.i62 ], [ %indvars.iv.next.i.us.i68, %bb.m ] ; 2 uses
  %.01213.i.us.i65 = phi i64 [ 0, %.lr.ph.preheader.i.us.i62 ], [ %.1.i.us.i67, %bb.m ] ; 2 uses
  %i.cy = shl nuw nsw i64 %indvars.iv.i.us.i64, 2
  %i.cz = and i64 %i.cy, 4294967292               ; 3 uses
  %i.da = lshr i64 %i.cw, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.db, 15
  %i.dd = lshr i64 %i.cx, %i.cz
  %i.de = trunc i64 %i.dd to i32
  %i.df = and i32 %i.de, 15
  %i.dg = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 %i.df) ; 2 uses
  %.not.i.us.i66 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.us.i66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.i63
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 14)
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dj, %i.cz
  %i.dl = or i64 %i.dk, %.01213.i.us.i65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.us.i63
  %.1.i.us.i67 = phi i64 [ %.01213.i.us.i65, %.lr.ph.i.us.i63 ], [ %i.dl, %bb.l ] ; 2 uses
  %indvars.iv.next.i.us.i68 = add nuw nsw i64 %indvars.iv.i.us.i64, 1 ; 2 uses
  %exitcond.not.i.us.i69 = icmp eq i64 %indvars.iv.next.i.us.i68, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i69, label %If_CutPinDelayMax.exit.loopexit.us.i70, label %.lr.ph.i.us.i63, !llvm.loop !62

bb.n:                                             ; preds = %bb.k
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !30
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !30
  %15 = load i64, ptr %14, align 8, !tbaa !61
  %16 = load i64, ptr %i.cu, align 8, !tbaa !61
  store i64 %16, ptr %14, align 8, !tbaa !61
  store i64 %15, ptr %i.cu, align 8, !tbaa !61
  br label %.loopexit.us.i71

.loopexit.us.i71:                                 ; preds = %.lr.ph.us.i73.preheader, %If_CutPinDelayMax.exit.loopexit.us.i70, %bb.n
  %.1.us.i72 = phi i32 [ %.075.us.i60, %bb.n ], [ %i.dm, %If_CutPinDelayMax.exit.loopexit.us.i70 ], [ %i.dm, %.lr.ph.us.i73.preheader ] ; 2 uses
  %indvar.next138 = add nuw nsw i32 %indvar137, 1 ; 2 uses
  %exitcond142.not = icmp eq i32 %indvar.next138, %.096108
  br i1 %exitcond142.not, label %If_LogCounterPinDelays.exit76, label %.preheader.split.us.i59, !llvm.loop !63

If_CutPinDelayMax.exit.loopexit.us.i70:           ; preds = %bb.m
  store i64 %.1.i.us.i67, ptr %i.cu, align 8, !tbaa !61
  %i.dm = add nsw i32 %.075.us.i60, -1            ; 3 uses
  %i.dn = icmp slt i32 %.06674.us.i61, %i.dm
  br i1 %i.dn, label %.lr.ph.us.i73.preheader, label %.loopexit.us.i71

.lr.ph.us.i73.preheader:                          ; preds = %If_CutPinDelayMax.exit.loopexit.us.i70
  %i.do = add i32 %.075.us.i60, %.reass175
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep134, ptr noundef nonnull align 4 dereferenceable(1) %scevgep136.a, i64 %i.dr, i1 false), !tbaa !30
  %i.ds = shl nuw nsw i64 %i.dp, 3
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep139, ptr noundef nonnull align 8 dereferenceable(1) %scevgep141, i64 %i.dt, i1 false), !tbaa !61
  br label %.loopexit.us.i71

.preheader.split.i50:                             ; preds = %.preheader.i48, %.loopexit.i54
  %indvar128 = phi i32 [ %indvar.next129, %.loopexit.i54 ], [ 0, %.preheader.i48 ] ; 2 uses
  %.075.i51 = phi i32 [ %.1.i55, %.loopexit.i54 ], [ %i.cj, %.preheader.i48 ] ; 4 uses
  %.06674.i52 = phi i32 [ %i.dw, %.loopexit.i54 ], [ %.096108, %.preheader.i48 ] ; 3 uses
  %17 = zext i32 %.06674.i52 to i64               ; 4 uses
  %18 = shl nuw nsw i64 %17, 3                    ; 2 uses
  %scevgep130 = getelementptr i8, ptr %i.b, i64 %18
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %18
  %.reass173 = add i32 %indvar128, %invariant.op174
  %19 = shl nuw nsw i64 %17, 2                    ; 2 uses
  %scevgep125 = getelementptr nuw i8, ptr %i.d, i64 %19
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %19
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %17 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !30 ; 3 uses
  %i.dw = add nsw i32 %.06674.i52, -1             ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64              ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !30 ; 4 uses
  %i.ea = icmp slt i32 %i.dv, %i.dz
  br i1 %i.ea, label %If_LogCounterPinDelays.exit76, label %bb.o

bb.o:                                             ; preds = %.preheader.split.i50
  %i.eb = icmp sgt i32 %i.dv, %i.dz
  br i1 %i.eb, label %bb.p, label %If_CutPinDelayMax.exit.i53

bb.p:                                             ; preds = %bb.o
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !30
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !30
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %17 ; 2 uses
  %21 = load i64, ptr %20, align 8, !tbaa !61
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dx ; 2 uses
  %22 = load i64, ptr %i.ec, align 8, !tbaa !61
  store i64 %22, ptr %20, align 8, !tbaa !61
  store i64 %21, ptr %i.ec, align 8, !tbaa !61
  br label %.loopexit.i54

If_CutPinDelayMax.exit.i53:                       ; preds = %bb.o
  %i.ed = add nsw i32 %i.dz, 1
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !30
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dx
  store i64 0, ptr %i.ee, align 8, !tbaa !61
  %i.ef = add nsw i32 %.075.i51, -1               ; 3 uses
  %i.eg = icmp slt i32 %.06674.i52, %i.ef
  br i1 %i.eg, label %.lr.ph.i56.preheader, label %.loopexit.i54

.lr.ph.i56.preheader:                             ; preds = %If_CutPinDelayMax.exit.i53
  %i.eh = add i32 %.075.i51, %.reass173
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep125, ptr noundef nonnull align 4 dereferenceable(1) %scevgep127, i64 %i.ek, i1 false), !tbaa !30
  %i.el = shl nuw nsw i64 %i.ei, 3
  %i.em = add nuw nsw i64 %i.el, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep130, ptr noundef nonnull align 8 dereferenceable(1) %scevgep132, i64 %i.em, i1 false), !tbaa !61
  br label %.loopexit.i54

.loopexit.i54:                                    ; preds = %.lr.ph.i56.preheader, %If_CutPinDelayMax.exit.i53, %bb.p
  %.1.i55 = phi i32 [ %.075.i51, %bb.p ], [ %i.ef, %If_CutPinDelayMax.exit.i53 ], [ %i.ef, %.lr.ph.i56.preheader ] ; 2 uses
  %indvar.next129 = add nuw i32 %indvar128, 1     ; 2 uses
  %exitcond133.not = icmp eq i32 %indvar.next129, %.096108
  br i1 %exitcond133.not, label %If_LogCounterPinDelays.exit76, label %.preheader.split.i50, !llvm.loop !63

If_LogCounterPinDelays.exit76:                    ; preds = %.preheader.split.i50, %.loopexit.i54, %.preheader.split.us.i59, %.loopexit.us.i71, %If_LogPinDelaysMulti.exit
  %.2.i47 = phi i32 [ %i.cj, %If_LogPinDelaysMulti.exit ], [ %.1.us.i72, %.loopexit.us.i71 ], [ %.075.us.i60, %.preheader.split.us.i59 ], [ %.1.i55, %.loopexit.i54 ], [ %.075.i51, %.preheader.split.i50 ] ; 6 uses
  %i.en = load i32, ptr %i.d, align 16, !tbaa !30
  %i.eo = icmp sgt i32 %.2.i47, 1
  %i.ep = zext i1 %i.eo to i32
  %i.eq = add nsw i32 %i.en, %i.ep                ; 4 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.critedge, label %bb.b, !llvm.loop !66

.critedge:                                        ; preds = %If_LogCounterPinDelays.exit76
  %i.er = icmp sgt i32 %.2.i47, 1
  br i1 %i.er, label %.lr.ph.i77, label %If_LogPinDelaysMulti.exit92

.lr.ph.i77:                                       ; preds = %.critedge
  %i.es = icmp sgt i32 %3, 0
  %wide.trip.count.i.i78 = zext nneg i32 %3 to i64
  %i.et = zext nneg i32 %.2.i47 to i64            ; 2 uses
  br i1 %i.es, label %.lr.ph.preheader.i.us.i81, label %If_CutPinDelayMax.exit.preheader.i79

If_CutPinDelayMax.exit.preheader.i79:             ; preds = %.lr.ph.i77
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = add nsw i64 %i.eu, -16
  %i.ew = add nsw i32 %.2.i47, -2
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = sub nsw i64 %i.ev, %i.ey
  %scevgep.i80 = getelementptr i8, ptr %i.b, i64 %i.ez
  %i.fa = add nsw i32 %.2.i47, -1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i80, i8 0, i64 %i.fc, i1 false), !tbaa !61
  br label %If_LogPinDelaysMulti.exit92

.lr.ph.preheader.i.us.i81:                        ; preds = %.lr.ph.i77, %If_CutPinDelayMax.exit.loopexit.us.i91
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %If_CutPinDelayMax.exit.loopexit.us.i91 ], [ %i.et, %.lr.ph.i77 ] ; 3 uses
  %indvars.iv.next.i83 = add nsw i64 %indvars.iv.i82, -1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i83
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !61
  %i.ff = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.i82
  %i.fg = getelementptr i8, ptr %i.ff, i64 -16    ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !61
  br label %.lr.ph.i.us.i84

.lr.ph.i.us.i84:                                  ; preds = %bb.r, %.lr.ph.preheader.i.us.i81
  %indvars.iv.i.us.i85 = phi i64 [ 0, %.lr.ph.preheader.i.us.i81 ], [ %indvars.iv.next.i.us.i89, %bb.r ] ; 2 uses
  %.01213.i.us.i86 = phi i64 [ 0, %.lr.ph.preheader.i.us.i81 ], [ %.1.i.us.i88, %bb.r ] ; 2 uses
  %i.fi = shl nuw nsw i64 %indvars.iv.i.us.i85, 2
  %i.fj = and i64 %i.fi, 4294967292               ; 3 uses
  %i.fk = lshr i64 %i.fe, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 15
  %i.fn = lshr i64 %i.fh, %i.fj
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, 15
  %i.fq = tail call i32 @llvm.umax.i32(i32 %i.fm, i32 %i.fp) ; 2 uses
  %.not.i.us.i87 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.us.i87, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.us.i84
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 14)
  %i.fs = add nuw nsw i32 %i.fr, 1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl i64 %i.ft, %i.fj
  %i.fv = or i64 %i.fu, %.01213.i.us.i86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.us.i84
  %.1.i.us.i88 = phi i64 [ %.01213.i.us.i86, %.lr.ph.i.us.i84 ], [ %i.fv, %bb.q ] ; 2 uses
  %indvars.iv.next.i.us.i89 = add nuw nsw i64 %indvars.iv.i.us.i85, 1 ; 2 uses
  %exitcond.not.i.us.i90 = icmp eq i64 %indvars.iv.next.i.us.i89, %wide.trip.count.i.i78
  br i1 %exitcond.not.i.us.i90, label %If_CutPinDelayMax.exit.loopexit.us.i91, label %.lr.ph.i.us.i84, !llvm.loop !62

If_CutPinDelayMax.exit.loopexit.us.i91:           ; preds = %bb.r
  store i64 %.1.i.us.i88, ptr %i.fg, align 8, !tbaa !61
  %i.fw = icmp sgt i64 %indvars.iv.i82, 2
  br i1 %i.fw, label %.lr.ph.preheader.i.us.i81, label %If_LogPinDelaysMulti.exit92, !llvm.loop !65

If_LogPinDelaysMulti.exit92:                      ; preds = %If_CutPinDelayMax.exit.loopexit.us.i91, %.preheader, %.critedge, %If_CutPinDelayMax.exit.preheader.i79
  %.0.lcssa169 = phi i32 [ 0, %.preheader ], [ %i.eq, %If_CutPinDelayMax.exit.preheader.i79 ], [ %i.eq, %.critedge ], [ %i.eq, %If_CutPinDelayMax.exit.loopexit.us.i91 ]
  %i.fx = load i64, ptr %i.b, align 16, !tbaa !61
  store i64 %i.fx, ptr %4, align 8, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %If_LogPinDelaysMulti.exit92
  %.029 = phi i32 [ %.0.lcssa169, %If_LogPinDelaysMulti.exit92 ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.029
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @If_CutSopBalancePinDelaysIntInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [15 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.d = shl <2 x i64> %vec.ind, splat (i64 2)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 2)
  %i.e = add <2 x i64> %step.add, splat (i64 8)
  %i.f = and <2 x i64> %i.d, splat (i64 4294967292)
  %i.g = and <2 x i64> %i.e, splat (i64 4294967292)
  %i.h = shl nuw <2 x i64> splat (i64 1), %i.f
  %i.i = shl nuw <2 x i64> splat (i64 1), %i.g
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> %i.h, ptr %i.j, align 16, !tbaa !61
  store <2 x i64> %i.i, ptr %i.k, align 16, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %iter.check, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader36 ] ; 3 uses
  %i.m = shl i64 %indvars.iv, 2
  %i.n = and i64 %i.m, 4294967292
  %i.o = shl nuw i64 1, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.o, ptr %i.p, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.a
  %i.q = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.a)
  br label %If_CutPinDelayTranslate.exit

iter.check:                                       ; preds = %.lr.ph, %middle.block
  %i.r = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.a) ; 3 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %min.iters.check14 = icmp ult i32 %2, 4
  br i1 %min.iters.check14, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i32 %2, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph16

vector.ph16:                                      ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %wide.trip.count, 12
  %n.vec17 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next21, %vector.body18 ] ; 2 uses
  %vec.ind20 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph16 ], [ %vec.ind.next22, %vector.body18 ] ; 2 uses
  %i.u = shl nuw nsw <16 x i64> %vec.ind20, splat (i64 2)
  %i.v = and <16 x i64> %i.u, splat (i64 4294967292)
  %i.w = lshr <16 x i64> %broadcast.splat, %i.v
  %i.x = trunc <16 x i64> %i.w to <16 x i8>
  %i.y = and <16 x i8> %i.x, splat (i8 15)
  %i.z = add nsw <16 x i8> %i.y, splat (i8 -1)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %index19
  store <16 x i8> %i.z, ptr %i.aa, align 1, !tbaa !58
  %index.next21 = add nuw i64 %index19, 16        ; 2 uses
  %vec.ind.next22 = add nuw nsw <16 x i64> %vec.ind20, splat (i64 16)
  %i.ab = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.ab, label %middle.block23, label %vector.body18, !llvm.loop !69

middle.block23:                                   ; preds = %vector.body18
  %cmp.n24 = icmp eq i64 %n.vec17, %wide.trip.count
  br i1 %cmp.n24, label %If_CutPinDelayTranslate.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block23
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec17, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
end_hunk_0
begin_hunk_1_@If_CutSopBalancePinDelays:bb.a
  %i.ak = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  %i.an = load float, ptr %i.am, align 4, !tbaa !32
  %i.ao = fptosi float %i.an to i32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  %i.aw = load float, ptr %i.av, align 4, !tbaa !32
  %i.ax = fptosi float %i.aw to i32
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !73

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 92
  %i.bf = load float, ptr %i.be, align 4, !tbaa !32
  %i.bg = fptosi float %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !30
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 67108864
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 252          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bi = shl nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 2)
  %i.bj = add <2 x i64> %step.add, splat (i64 8)
  %i.bk = shl nuw <2 x i64> splat (i64 1), %i.bi
  %i.bl = shl nuw <2 x i64> splat (i64 1), %i.bj
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> %i.bk, ptr %i.bm, align 16, !tbaa !61
  store <2 x i64> %i.bl, ptr %i.bn, align 16, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %iter.check, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bp = shl nuw nsw i64 %indvars.iv.i, 2
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %iter.check, label %.lr.ph.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bs = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef nonnull %i.a)
  br label %If_CutSopBalancePinDelaysIntInt.exit

iter.check:                                       ; preds = %.lr.ph.i, %middle.block
  %i.bt = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.b, i32 noundef %i.g, ptr noundef nonnull %i.a) ; 3 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  %min.iters.check32 = icmp ult i32 %i.f, 67108864
  br i1 %min.iters.check32, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i32 %i.f, 268435456
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph34

vector.ph34:                                      ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %wide.trip.count, 12
  %n.vec35 = and i64 %wide.trip.count, 240        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next39, %vector.body36 ] ; 2 uses
  %vec.ind38 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph34 ], [ %vec.ind.next40, %vector.body36 ] ; 2 uses
  %i.bw = shl nuw nsw <16 x i64> %vec.ind38, splat (i64 2)
  %i.bx = lshr <16 x i64> %broadcast.splat, %i.bw
  %i.by = trunc <16 x i64> %i.bx to <16 x i8>
  %i.bz = and <16 x i8> %i.by, splat (i8 15)
  %i.ca = add nsw <16 x i8> %i.bz, splat (i8 -1)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %index37
  store <16 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !58
  %index.next39 = add nuw i64 %index37, 16        ; 2 uses
  %vec.ind.next40 = add nuw nsw <16 x i64> %vec.ind38, splat (i64 16)
  %i.cc = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.cc, label %middle.block41, label %vector.body36, !llvm.loop !76

middle.block41:                                   ; preds = %vector.body36
  %cmp.n42 = icmp eq i64 %n.vec35, %wide.trip.count
  br i1 %cmp.n42, label %If_CutSopBalancePinDelaysIntInt.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block41
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec35, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec43 = and i64 %wide.trip.count, 252        ; 3 uses
  %broadcast.splatinsert44 = insertelement <4 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat45 = shufflevector <4 x i64> %broadcast.splatinsert44, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat47 = shufflevector <4 x i64> %broadcast.splatinsert46, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat47, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind49 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.cd = shl nuw nsw <4 x i64> %vec.ind49, splat (i64 2)
  %i.ce = lshr <4 x i64> %broadcast.splat45, %i.cd
  %i.cf = trunc <4 x i64> %i.ce to <4 x i8>
  %i.cg = and <4 x i8> %i.cf, splat (i8 15)
  %i.ch = add nsw <4 x i8> %i.cg, splat (i8 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %index48
  store <4 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !58
  %index.next50 = add nuw i64 %index48, 4         ; 2 uses
  %vec.ind.next51 = add nuw nsw <4 x i64> %vec.ind49, splat (i64 4)
  %i.cj = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %n.vec43, %wide.trip.count
  br i1 %cmp.n52, label %If_CutSopBalancePinDelaysIntInt.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec35, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ck = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.cl = lshr i64 %i.bu, %i.ck
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = and i8 %i.cm, 15
  %i.co = add nsw i8 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !58
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %If_CutSopBalancePinDelaysIntInt.exit, label %.lr.ph.i.i, !llvm.loop !78

If_CutSopBalancePinDelaysIntInt.exit:             ; preds = %.lr.ph.i.i, %middle.block41, %vec.epilog.middle.block, %._crit_edge.i
  %i.cq = phi i32 [ %i.bs, %._crit_edge.i ], [ %i.bt, %middle.block41 ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bt, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %If_CutSopBalancePinDelaysIntInt.exit
  %.019 = phi i32 [ %i.cq, %If_CutSopBalancePinDelaysIntInt.exit ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.b
  %.1 = phi i32 [ %.019, %bb.e ], [ %i.q, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @If_CutSopBalanceEvalInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [15 x i32], align 16              ; 23 uses
  %i.b = alloca [15 x i32], align 16              ; 14 uses
  %i.c = alloca [70 x i32], align 16              ; 12 uses
  %i.d = alloca [70 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val80 = load i32, ptr %i.e, align 4, !tbaa !40 ; 3 uses
  %i.f = icmp sgt i32 %.val80, 70
  br i1 %i.f, label %bb.bh, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %.val80, 0
  br i1 %i.g, label %.lr.ph222, label %.critedge.thread

.lr.ph222:                                        ; preds = %.preheader
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp sgt i32 %5, 0
  %.not76 = icmp eq ptr %3, null                  ; 4 uses
  %i.j = getelementptr i8, ptr %3, i64 4          ; 18 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %scevgep226 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %scevgep229 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %scevgep255 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %scevgep260 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.trip.count.a = zext nneg i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph222, %If_LogCounterAddAig.exit138
  %indvars.iv269 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next270, %If_LogCounterAddAig.exit138 ] ; 2 uses
  %.052221 = phi i32 [ 0, %.lr.ph222 ], [ %i.jz, %If_LogCounterAddAig.exit138 ] ; 3 uses
  %.0206219 = phi i32 [ 0, %.lr.ph222 ], [ %.2.i129.sink, %If_LogCounterAddAig.exit138 ] ; 12 uses
  %.val81 = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv269
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %bb.b ] ; 6 uses
  %.153216 = phi i32 [ %.2, %bb.am ], [ %.052221, %bb.b ]
  %.054215 = phi i32 [ %.155, %bb.am ], [ 0, %bb.b ] ; 3 uses
  %.0208213 = phi i32 [ %.1209, %bb.am ], [ 0, %bb.b ] ; 25 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1
  %i.o = ashr i32 %i.m, %i.n
  %i.p = and i32 %i.o, 3
  switch i32 %i.p, label %bb.am [
    i32 1, label %bb.c
    i32 2, label %bb.u
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nsw i32 %.054215, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 2 uses
  br i1 %.not76, label %.split59, label %.thread.i

.split59:                                         ; preds = %bb.c
  %.pre.i = sext i32 %.0208213 to i64
  %i.t = add nsw i32 %.0208213, 1                 ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre.i
  store i32 %i.s, ptr %i.u, align 4, !tbaa !30
  %i.v = icmp sgt i32 %.0208213, 0
  br i1 %i.v, label %.preheader.split.us.i.preheader, label %If_LogCounterAddAig.exit

.preheader.split.us.i.preheader:                  ; preds = %.split59
  %invariant.op362 = sub i32 -2, %.0208213
  br label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %.loopexit.us.i
  %indvar249 = phi i32 [ %indvar.next250, %.loopexit.us.i ], [ 0, %.preheader.split.us.i.preheader ] ; 2 uses
  %.081.us.i = phi i32 [ %.1.us.i, %.loopexit.us.i ], [ %i.t, %.preheader.split.us.i.preheader ] ; 4 uses
  %.07180.us.i = phi i32 [ %i.y, %.loopexit.us.i ], [ %.0208213, %.preheader.split.us.i.preheader ] ; 3 uses
  %7 = zext i32 %.07180.us.i to i64               ; 2 uses
  %8 = shl nuw nsw i64 %7, 2                      ; 2 uses
  %scevgep246 = getelementptr nuw i8, ptr %i.a, i64 %8
  %scevgep248 = getelementptr i8, ptr %scevgep226, i64 %8
  %.reass344.reass = add i32 %indvar249, %invariant.op362
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %7 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30   ; 3 uses
  %i.y = add nsw i32 %.07180.us.i, -1             ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30 ; 4 uses
  %i.ac = icmp slt i32 %i.x, %i.ab
  br i1 %i.ac, label %If_LogCounterAddAig.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.ad = icmp sgt i32 %i.x, %i.ab
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !30
  %i.af = add nsw i32 %.081.us.i, -1              ; 3 uses
  %i.ag = icmp slt i32 %.07180.us.i, %i.af
  br i1 %i.ag, label %.lr.ph.us.i.preheader, label %.loopexit.us.i

.lr.ph.us.i.preheader:                            ; preds = %bb.e
  %i.ah = add i32 %.081.us.i, %.reass344.reass
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep246, ptr noundef nonnull align 4 dereferenceable(1) %scevgep248, i64 %i.ak, i1 false), !tbaa !30
  br label %.loopexit.us.i

bb.f:                                             ; preds = %bb.d
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !30
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !30
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %bb.f, %bb.e
  %.1.us.i = phi i32 [ %.081.us.i, %bb.f ], [ %i.af, %bb.e ], [ %i.af, %.lr.ph.us.i.preheader ] ; 2 uses
  %indvar.next250 = add nuw i32 %indvar249, 1     ; 2 uses
  %exitcond251.not.a = icmp eq i32 %indvar.next250, %.0208213
  br i1 %exitcond251.not.a, label %If_LogCounterAddAig.exit, label %.preheader.split.us.i, !llvm.loop !79

If_LogCounterAddAig.exit:                         ; preds = %.preheader.split.us.i, %.loopexit.us.i, %.split59
  %.2.i = phi i32 [ %i.t, %.split59 ], [ %.1.us.i, %.loopexit.us.i ], [ %.081.us.i, %.preheader.split.us.i ] ; 2 uses
  %i.al = load i32, ptr %i.a, align 16, !tbaa !30
  %i.am = icmp sgt i32 %.2.i, 1
  %i.an = zext i1 %i.am to i32
  %i.ao = add nsw i32 %i.al, %i.an
  br label %bb.am

.thread.i:                                        ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !30
  %i.ar = xor i32 %i.aq, 1
  %.pre.i82 = sext i32 %.0208213 to i64           ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre.i82
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !30
  %i.at = add nsw i32 %.0208213, 1                ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre.i82
  store i32 %i.s, ptr %i.au, align 4, !tbaa !30
  %i.av = icmp sgt i32 %.0208213, 0
  br i1 %i.av, label %.preheader.split.i.preheader, label %If_LogCounterAddAig.exit92

.preheader.split.i.preheader:                     ; preds = %.thread.i
  %invariant.op361.a = sub i32 -2, %.0208213
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %.loopexit.i
  %indvar240 = phi i32 [ %indvar.next241, %.loopexit.i ], [ 0, %.preheader.split.i.preheader ] ; 2 uses
  %.081.i = phi i32 [ %.1.i, %.loopexit.i ], [ %i.at, %.preheader.split.i.preheader ] ; 4 uses
  %.07180.i = phi i32 [ %i.ay, %.loopexit.i ], [ %.0208213, %.preheader.split.i.preheader ] ; 3 uses
  %9 = zext i32 %.07180.i to i64                  ; 3 uses
  %10 = shl nuw nsw i64 %9, 2                     ; 4 uses
  %scevgep242 = getelementptr i8, ptr %i.b, i64 %10
  %scevgep244 = getelementptr i8, ptr %scevgep229, i64 %10
  %.reass342.reass = add i32 %indvar240, %invariant.op361.a
  %scevgep237 = getelementptr nuw i8, ptr %i.a, i64 %10
  %scevgep239 = getelementptr i8, ptr %scevgep226, i64 %10
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %9 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30 ; 3 uses
  %i.ay = add nsw i32 %.07180.i, -1               ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30 ; 4 uses
  %i.bc = icmp slt i32 %i.ax, %i.bb
  br i1 %i.bc, label %If_LogCounterAddAig.exit92, label %bb.g

bb.g:                                             ; preds = %.preheader.split.i
  %i.bd = icmp sgt i32 %i.ax, %i.bb
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %9 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 4 uses
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !30
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !30
  %12 = load i32, ptr %11, align 4, !tbaa !30
  %13 = load i32, ptr %i.be, align 4, !tbaa !30
  store i32 %13, ptr %11, align 4, !tbaa !30
  store i32 %12, ptr %i.be, align 4, !tbaa !30
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.bb, 1
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !30
  %i.bg = load i32, ptr %11, align 4, !tbaa !30
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !30
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !40 ; 8 uses
  %i.bi = load i32, ptr %3, align 8, !tbaa !80
  %i.bj = icmp eq i32 %.val.i.i, %i.bi
  br i1 %i.bj, label %bb.j, label %.Vec_IntPush.exit.i.i_crit_edge

.Vec_IntPush.exit.i.i_crit_edge:                  ; preds = %bb.i
  %.pre273.a = load ptr, ptr %i.k, align 8, !tbaa !49
  br label %Vec_IntPush.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %.val.i.i, 16
  br i1 %i.bk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not9.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i32 %.val.i.i, 1073741823
  %i.bp = shl nuw nsw i32 %.val.i.i, 1
  %spec.select.i.i.i = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %.val.i.i, %spec.select.i.i.i
  %.pre274 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.o, label %Vec_IntPush.exit.i.i

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i.i.i = icmp eq ptr %.pre274, null
  %i.bq = zext nneg i32 %spec.select.i.i.i to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %.pre274, i64 noundef %i.br) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %i.bu = phi ptr [ %i.bn, %bb.m ], [ %i.bm, %bb.l ], [ %i.bs, %bb.p ], [ %i.bt, %bb.q ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i.i.i, %bb.p ], [ %spec.select.i.i.i, %bb.q ]
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i.i.i, ptr %3, align 8, !tbaa !80
  %.pre.i.i = load i32, ptr %i.j, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %.Vec_IntPush.exit.i.i_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.n
  %i.bv = phi ptr [ %.pre273.a, %.Vec_IntPush.exit.i.i_crit_edge ], [ %.pre274, %bb.n ], [ %i.bu, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 4 uses
  %i.bw = phi i32 [ %.val.i.i, %.Vec_IntPush.exit.i.i_crit_edge ], [ %.val.i.i, %bb.n ], [ %.pre.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.j, align 4, !tbaa !40
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.by
  store i32 %i.bg, ptr %i.bz, align 4, !tbaa !30
  %i.ca = load i32, ptr %i.j, align 4, !tbaa !40  ; 7 uses
  %i.cb = load i32, ptr %3, align 8, !tbaa !80
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %If_LogCreateAndXor.exit

bb.r:                                             ; preds = %Vec_IntPush.exit.i.i
  %i.cd = icmp slt i32 %i.ca, 16
  br i1 %i.cd, label %Vec_IntGrow.exit11.sink.split.i9.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp samesign ult i32 %i.ca, 1073741823
  %i.cf = shl nuw nsw i32 %i.ca, 1
  %spec.select.i6.i.i = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 3 uses
  %.not.i9.i7.i.i = icmp samesign ult i32 %i.ca, %spec.select.i6.i.i
  br i1 %.not.i9.i7.i.i, label %bb.t, label %If_LogCreateAndXor.exit

bb.t:                                             ; preds = %bb.s
  %i.cg = zext nneg i32 %spec.select.i6.i.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2
  br label %Vec_IntGrow.exit11.sink.split.i9.i.i

Vec_IntGrow.exit11.sink.split.i9.i.i:             ; preds = %bb.t, %bb.r
  %.sink.i.i = phi i64 [ %i.ch, %bb.t ], [ 64, %bb.r ]
  %spec.select.sink.i10.i.i = phi i32 [ %spec.select.i6.i.i, %bb.t ], [ 16, %bb.r ]
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %.sink.i.i) #15 ; 2 uses
  store ptr %i.ci, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i10.i.i, ptr %3, align 8, !tbaa !80
  %.pre14.i.i = load i32, ptr %i.j, align 4, !tbaa !40
  br label %If_LogCreateAndXor.exit

If_LogCreateAndXor.exit:                          ; preds = %Vec_IntPush.exit.i.i, %bb.s, %Vec_IntGrow.exit11.sink.split.i9.i.i
  %i.cj = phi i32 [ %i.ca, %Vec_IntPush.exit.i.i ], [ %i.ca, %bb.s ], [ %.pre14.i.i, %Vec_IntGrow.exit11.sink.split.i9.i.i ] ; 2 uses
  %i.ck = phi ptr [ %i.bv, %Vec_IntPush.exit.i.i ], [ %i.bv, %bb.s ], [ %i.ci, %Vec_IntGrow.exit11.sink.split.i9.i.i ]
  %i.cl = sdiv i32 %.val.i.i, 2
  %i.cm = add nsw i32 %i.cl, %5
  %i.cn = add nsw i32 %i.cj, 1
  store i32 %i.cn, ptr %i.j, align 4, !tbaa !40
  %i.co = sext i32 %i.cj to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.co
  store i32 %i.bh, ptr %i.cp, align 4, !tbaa !30
  %i.cq = shl nsw i32 %i.cm, 1
  store i32 %i.cq, ptr %i.be, align 4, !tbaa !30
  %i.cr = add nsw i32 %.081.i, -1                 ; 3 uses
  %i.cs = icmp slt i32 %.07180.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %If_LogCreateAndXor.exit
  %i.ct = add i32 %.081.i, %.reass342.reass
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 4                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep237, ptr noundef nonnull align 4 dereferenceable(1) %scevgep239, i64 %i.cw, i1 false), !tbaa !30
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep242, ptr noundef nonnull align 4 dereferenceable(1) %scevgep244, i64 %i.cw, i1 false), !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.preheader, %If_LogCreateAndXor.exit, %bb.h
  %.1.i = phi i32 [ %.081.i, %bb.h ], [ %i.cr, %If_LogCreateAndXor.exit ], [ %i.cr, %.lr.ph.i.preheader ] ; 2 uses
  %indvar.next241 = add nuw i32 %indvar240, 1     ; 2 uses
  %exitcond245.not = icmp eq i32 %indvar.next241, %.0208213
  br i1 %exitcond245.not, label %If_LogCounterAddAig.exit92, label %.preheader.split.i, !llvm.loop !79

If_LogCounterAddAig.exit92:                       ; preds = %.preheader.split.i, %.loopexit.i, %.thread.i
  %.2.i83 = phi i32 [ %i.at, %.thread.i ], [ %.081.i, %.preheader.split.i ], [ %.1.i, %.loopexit.i ] ; 2 uses
  %i.cx = load i32, ptr %i.a, align 16, !tbaa !30
  %i.cy = icmp sgt i32 %.2.i83, 1
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nsw i32 %i.cx, %i.cz
  br label %bb.am

bb.u:                                             ; preds = %.lr.ph
  %i.db = add nsw i32 %.054215, 1                 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !30 ; 2 uses
  br i1 %.not76, label %.split62, label %.thread.i106

.split62:                                         ; preds = %bb.u
  %.pre.i93 = sext i32 %.0208213 to i64
  %i.de = add nsw i32 %.0208213, 1                ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre.i93
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !30
  %i.dg = icmp sgt i32 %.0208213, 0
  br i1 %i.dg, label %.preheader.split.us.i95.preheader, label %If_LogCounterAddAig.exit103

.preheader.split.us.i95.preheader:                ; preds = %.split62
  %invariant.op360.a = sub i32 -2, %.0208213
  br label %.preheader.split.us.i95

.preheader.split.us.i95:                          ; preds = %.preheader.split.us.i95.preheader, %.loopexit.us.i98
  %indvar234 = phi i32 [ %indvar.next235, %.loopexit.us.i98 ], [ 0, %.preheader.split.us.i95.preheader ] ; 2 uses
  %.081.us.i96 = phi i32 [ %.1.us.i99, %.loopexit.us.i98 ], [ %i.de, %.preheader.split.us.i95.preheader ] ; 4 uses
  %.07180.us.i97 = phi i32 [ %i.dj, %.loopexit.us.i98 ], [ %.0208213, %.preheader.split.us.i95.preheader ] ; 3 uses
  %14 = zext i32 %.07180.us.i97 to i64            ; 2 uses
  %15 = shl nuw nsw i64 %14, 2                    ; 2 uses
  %scevgep231.a = getelementptr nuw i8, ptr %i.a, i64 %15
  %scevgep233 = getelementptr i8, ptr %scevgep226, i64 %15
  %.reass340.reass = add i32 %indvar234, %invariant.op360.a
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %14 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30 ; 3 uses
  %i.dj = add nsw i32 %.07180.us.i97, -1          ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !30 ; 4 uses
  %i.dn = icmp slt i32 %i.di, %i.dm
  br i1 %i.dn, label %If_LogCounterAddAig.exit103, label %bb.v

bb.v:                                             ; preds = %.preheader.split.us.i95
  %i.do = icmp sgt i32 %i.di, %i.dm
  br i1 %i.do, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = add nsw i32 %i.dm, 1
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !30
  %i.dq = add nsw i32 %.081.us.i96, -1            ; 3 uses
  %i.dr = icmp slt i32 %.07180.us.i97, %i.dq
  br i1 %i.dr, label %.lr.ph.us.i100.preheader, label %.loopexit.us.i98

.lr.ph.us.i100.preheader:                         ; preds = %bb.w
  %i.ds = add i32 %.081.us.i96, %.reass340.reass
  %i.dt = zext i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep231.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep233, i64 %i.dv, i1 false), !tbaa !30
  br label %.loopexit.us.i98

bb.x:                                             ; preds = %bb.v
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !30
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !30
  br label %.loopexit.us.i98

.loopexit.us.i98:                                 ; preds = %.lr.ph.us.i100.preheader, %bb.x, %bb.w
  %.1.us.i99 = phi i32 [ %.081.us.i96, %bb.x ], [ %i.dq, %bb.w ], [ %i.dq, %.lr.ph.us.i100.preheader ] ; 2 uses
  %indvar.next235 = add nuw i32 %indvar234, 1     ; 2 uses
  %exitcond236.not = icmp eq i32 %indvar.next235, %.0208213
  br i1 %exitcond236.not, label %If_LogCounterAddAig.exit103, label %.preheader.split.us.i95, !llvm.loop !79

If_LogCounterAddAig.exit103:                      ; preds = %.preheader.split.us.i95, %.loopexit.us.i98, %.split62
  %.2.i94 = phi i32 [ %i.de, %.split62 ], [ %.1.us.i99, %.loopexit.us.i98 ], [ %.081.us.i96, %.preheader.split.us.i95 ] ; 2 uses
  %i.dw = load i32, ptr %i.a, align 16, !tbaa !30
  %i.dx = icmp sgt i32 %.2.i94, 1
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add nsw i32 %i.dw, %i.dy
  br label %bb.am

.thread.i106:                                     ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !30
  %.pre.i105 = sext i32 %.0208213 to i64          ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre.i105
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !30
  %i.ed = add nsw i32 %.0208213, 1                ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre.i105
  store i32 %i.dd, ptr %i.ee, align 4, !tbaa !30
  %i.ef = icmp sgt i32 %.0208213, 0
  br i1 %i.ef, label %.preheader.split.i108.preheader, label %If_LogCounterAddAig.exit124

.preheader.split.i108.preheader:                  ; preds = %.thread.i106
  %invariant.op = sub i32 -2, %.0208213
  br label %.preheader.split.i108

.preheader.split.i108:                            ; preds = %.preheader.split.i108.preheader, %.loopexit.i111
  %indvar = phi i32 [ %indvar.next, %.loopexit.i111 ], [ 0, %.preheader.split.i108.preheader ] ; 2 uses
  %.081.i109 = phi i32 [ %.1.i112, %.loopexit.i111 ], [ %i.ed, %.preheader.split.i108.preheader ] ; 4 uses
  %.07180.i110 = phi i32 [ %i.ei, %.loopexit.i111 ], [ %.0208213, %.preheader.split.i108.preheader ] ; 3 uses
  %16 = zext i32 %.07180.i110 to i64              ; 3 uses
  %17 = shl nuw nsw i64 %16, 2                    ; 4 uses
  %scevgep228.a = getelementptr i8, ptr %i.b, i64 %17
  %scevgep230 = getelementptr i8, ptr %scevgep229, i64 %17
  %.reass.reass = add i32 %indvar, %invariant.op
  %scevgep = getelementptr nuw i8, ptr %i.a, i64 %17
  %scevgep227 = getelementptr i8, ptr %scevgep226, i64 %17
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %16 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !30 ; 3 uses
  %i.ei = add nsw i32 %.07180.i110, -1            ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !30 ; 4 uses
  %i.em = icmp slt i32 %i.eh, %i.el
  br i1 %i.em, label %If_LogCounterAddAig.exit124, label %bb.y

bb.y:                                             ; preds = %.preheader.split.i108
  %i.en = icmp sgt i32 %i.eh, %i.el
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %16 ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej ; 4 uses
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.el, ptr %i.eg, align 4, !tbaa !30
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !30
  %19 = load i32, ptr %18, align 4, !tbaa !30
  %20 = load i32, ptr %i.eo, align 4, !tbaa !30
  store i32 %20, ptr %18, align 4, !tbaa !30
  store i32 %19, ptr %i.eo, align 4, !tbaa !30
  br label %.loopexit.i111

bb.aa:                                            ; preds = %bb.y
  %i.ep = add nsw i32 %i.el, 1
  store i32 %i.ep, ptr %i.ek, align 4, !tbaa !30
  %i.eq = load i32, ptr %18, align 4, !tbaa !30
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !30
  %.val.i.i165 = load i32, ptr %i.j, align 4, !tbaa !40 ; 8 uses
  %i.es = load i32, ptr %3, align 8, !tbaa !80
  %i.et = icmp eq i32 %.val.i.i165, %i.es
  br i1 %i.et, label %bb.ab, label %.Vec_IntPush.exit.i.i166_crit_edge

.Vec_IntPush.exit.i.i166_crit_edge:               ; preds = %bb.aa
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !49
  br label %Vec_IntPush.exit.i.i166

bb.ab:                                            ; preds = %bb.aa
  %i.eu = icmp slt i32 %.val.i.i165, 16
  br i1 %i.eu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i.i.i179 = icmp eq ptr %i.ev, null
  br i1 %.not9.i.i.i.i179, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ev, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i176

bb.ae:                                            ; preds = %bb.ac
  %i.ex = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i176

bb.af:                                            ; preds = %bb.ab
  %i.ey = icmp samesign ult i32 %.val.i.i165, 1073741823
  %i.ez = shl nuw nsw i32 %.val.i.i165, 1
  %spec.select.i.i.i173 = select i1 %i.ey, i32 %i.ez, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i174 = icmp samesign ult i32 %.val.i.i165, %spec.select.i.i.i173
  %.pre272.a = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i.i.i174, label %bb.ag, label %Vec_IntPush.exit.i.i166

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i.i.i175 = icmp eq ptr %.pre272.a, null
  %i.fa = zext nneg i32 %spec.select.i.i.i173 to i64
  %i.fb = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i175, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = tail call ptr @realloc(ptr noundef nonnull %.pre272.a, i64 noundef %i.fb) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i176

bb.ai:                                            ; preds = %bb.ag
  %i.fd = tail call noalias ptr @malloc(i64 noundef %i.fb) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i176

Vec_IntGrow.exit11.sink.split.i.i.i176:           ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %i.fe = phi ptr [ %i.ex, %bb.ae ], [ %i.ew, %bb.ad ], [ %i.fc, %bb.ah ], [ %i.fd, %bb.ai ] ; 2 uses
  %spec.select.sink.i.i.i177 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i.i.i173, %bb.ah ], [ %spec.select.i.i.i173, %bb.ai ]
  store ptr %i.fe, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i.i.i177, ptr %3, align 8, !tbaa !80
  %.pre.i.i178 = load i32, ptr %i.j, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i.i166

Vec_IntPush.exit.i.i166:                          ; preds = %.Vec_IntPush.exit.i.i166_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i.i176, %bb.af
  %i.ff = phi ptr [ %.pre, %.Vec_IntPush.exit.i.i166_crit_edge ], [ %.pre272.a, %bb.af ], [ %i.fe, %Vec_IntGrow.exit11.sink.split.i.i.i176 ] ; 4 uses
  %i.fg = phi i32 [ %.val.i.i165, %.Vec_IntPush.exit.i.i166_crit_edge ], [ %.val.i.i165, %bb.af ], [ %.pre.i.i178, %Vec_IntGrow.exit11.sink.split.i.i.i176 ] ; 2 uses
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.j, align 4, !tbaa !40
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fi
  store i32 %i.eq, ptr %i.fj, align 4, !tbaa !30
  %i.fk = load i32, ptr %i.j, align 4, !tbaa !40  ; 7 uses
  %i.fl = load i32, ptr %3, align 8, !tbaa !80
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.aj, label %If_LogCreateAndXor.exit181

bb.aj:                                            ; preds = %Vec_IntPush.exit.i.i166
  %i.fn = icmp slt i32 %i.fk, 16
  br i1 %i.fn, label %Vec_IntGrow.exit11.sink.split.i9.i.i169, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = icmp samesign ult i32 %i.fk, 1073741823
  %i.fp = shl nuw nsw i32 %i.fk, 1
  %spec.select.i6.i.i167 = select i1 %i.fo, i32 %i.fp, i32 2147483647 ; 3 uses
  %.not.i9.i7.i.i168 = icmp samesign ult i32 %i.fk, %spec.select.i6.i.i167
  br i1 %.not.i9.i7.i.i168, label %bb.al, label %If_LogCreateAndXor.exit181

bb.al:                                            ; preds = %bb.ak
  %i.fq = zext nneg i32 %spec.select.i6.i.i167 to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2
  br label %Vec_IntGrow.exit11.sink.split.i9.i.i169

Vec_IntGrow.exit11.sink.split.i9.i.i169:          ; preds = %bb.al, %bb.aj
  %.sink.i.i170 = phi i64 [ %i.fr, %bb.al ], [ 64, %bb.aj ]
  %spec.select.sink.i10.i.i171 = phi i32 [ %spec.select.i6.i.i167, %bb.al ], [ 16, %bb.aj ]
  %i.fs = tail call ptr @realloc(ptr noundef nonnull %i.ff, i64 noundef %.sink.i.i170) #15 ; 2 uses
  store ptr %i.fs, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i10.i.i171, ptr %3, align 8, !tbaa !80
  %.pre14.i.i172 = load i32, ptr %i.j, align 4, !tbaa !40
  br label %If_LogCreateAndXor.exit181

If_LogCreateAndXor.exit181:                       ; preds = %Vec_IntPush.exit.i.i166, %bb.ak, %Vec_IntGrow.exit11.sink.split.i9.i.i169
  %i.ft = phi i32 [ %i.fk, %Vec_IntPush.exit.i.i166 ], [ %i.fk, %bb.ak ], [ %.pre14.i.i172, %Vec_IntGrow.exit11.sink.split.i9.i.i169 ] ; 2 uses
  %i.fu = phi ptr [ %i.ff, %Vec_IntPush.exit.i.i166 ], [ %i.ff, %bb.ak ], [ %i.fs, %Vec_IntGrow.exit11.sink.split.i9.i.i169 ]
  %i.fv = sdiv i32 %.val.i.i165, 2
  %i.fw = add nsw i32 %i.fv, %5
  %i.fx = add nsw i32 %i.ft, 1
  store i32 %i.fx, ptr %i.j, align 4, !tbaa !40
  %i.fy = sext i32 %i.ft to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fy
  store i32 %i.er, ptr %i.fz, align 4, !tbaa !30
  %i.ga = shl nsw i32 %i.fw, 1
  store i32 %i.ga, ptr %i.eo, align 4, !tbaa !30
  %i.gb = add nsw i32 %.081.i109, -1              ; 3 uses
  %i.gc = icmp slt i32 %.07180.i110, %i.gb
  br i1 %i.gc, label %.lr.ph.i113.preheader, label %.loopexit.i111

.lr.ph.i113.preheader:                            ; preds = %If_LogCreateAndXor.exit181
  %i.gd = add i32 %.081.i109, %.reass.reass
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 2
  %i.gg = add nuw nsw i64 %i.gf, 4                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep227, i64 %i.gg, i1 false), !tbaa !30
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep228.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep230, i64 %i.gg, i1 false), !tbaa !30
  br label %.loopexit.i111

.loopexit.i111:                                   ; preds = %.lr.ph.i113.preheader, %If_LogCreateAndXor.exit181, %bb.z
  %.1.i112 = phi i32 [ %.081.i109, %bb.z ], [ %i.gb, %If_LogCreateAndXor.exit181 ], [ %i.gb, %.lr.ph.i113.preheader ] ; 2 uses
  %indvar.next = add nuw i32 %indvar, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %.0208213
  br i1 %exitcond.not, label %If_LogCounterAddAig.exit124, label %.preheader.split.i108, !llvm.loop !79

If_LogCounterAddAig.exit124:                      ; preds = %.preheader.split.i108, %.loopexit.i111, %.thread.i106
  %.2.i107 = phi i32 [ %i.ed, %.thread.i106 ], [ %.081.i109, %.preheader.split.i108 ], [ %.1.i112, %.loopexit.i111 ] ; 2 uses
  %i.gh = load i32, ptr %i.a, align 16, !tbaa !30
  %i.gi = icmp sgt i32 %.2.i107, 1
  %i.gj = zext i1 %i.gi to i32
  %i.gk = add nsw i32 %i.gh, %i.gj
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %If_LogCounterAddAig.exit124, %If_LogCounterAddAig.exit103, %If_LogCounterAddAig.exit92, %If_LogCounterAddAig.exit
  %.1209 = phi i32 [ %.0208213, %.lr.ph ], [ %.2.i, %If_LogCounterAddAig.exit ], [ %.2.i83, %If_LogCounterAddAig.exit92 ], [ %.2.i94, %If_LogCounterAddAig.exit103 ], [ %.2.i107, %If_LogCounterAddAig.exit124 ] ; 3 uses
  %.155 = phi i32 [ %.054215, %.lr.ph ], [ %i.q, %If_LogCounterAddAig.exit ], [ %i.q, %If_LogCounterAddAig.exit92 ], [ %i.db, %If_LogCounterAddAig.exit103 ], [ %i.db, %If_LogCounterAddAig.exit124 ] ; 2 uses
  %.2 = phi i32 [ %.153216, %.lr.ph ], [ %i.ao, %If_LogCounterAddAig.exit ], [ %i.da, %If_LogCounterAddAig.exit92 ], [ %i.dz, %If_LogCounterAddAig.exit103 ], [ %i.gk, %If_LogCounterAddAig.exit124 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.a
  br i1 %exitcond253.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.am
  %i.gl = add nsw i32 %.155, -1
  br i1 %.not76, label %.split66, label %bb.an

._crit_edge.thread:                               ; preds = %bb.b
  br i1 %.not76, label %.split66, label %.thread.i141

bb.an:                                            ; preds = %._crit_edge
  %i.gm = icmp sgt i32 %.1209, 1
  br i1 %i.gm, label %.lr.ph.preheader.i, label %.thread.i141

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.gn = zext nneg i32 %.1209 to i64
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %If_LogCreateAndXor.exit198, %.lr.ph.preheader.i
  %indvars.iv.i126 = phi i64 [ %i.gn, %.lr.ph.preheader.i ], [ %indvars.iv.next.i127, %If_LogCreateAndXor.exit198 ] ; 3 uses
  %indvars.iv.next.i127 = add nsw i64 %indvars.iv.i126, -1 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i127
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !30
  %i.gq = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.i126
  %i.gr = getelementptr i8, ptr %i.gq, i64 -8     ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !30
  %.val.i.i182 = load i32, ptr %i.j, align 4, !tbaa !40 ; 8 uses
  %i.gt = load i32, ptr %3, align 8, !tbaa !80
  %i.gu = icmp eq i32 %.val.i.i182, %i.gt
  br i1 %i.gu, label %bb.ao, label %.lr.ph.i125.Vec_IntPush.exit.i.i183_crit_edge

.lr.ph.i125.Vec_IntPush.exit.i.i183_crit_edge:    ; preds = %.lr.ph.i125
  %.pre275 = load ptr, ptr %i.k, align 8, !tbaa !49
  br label %Vec_IntPush.exit.i.i183

bb.ao:                                            ; preds = %.lr.ph.i125
  %i.gv = icmp slt i32 %.val.i.i182, 16
  br i1 %i.gv, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i.i.i196 = icmp eq ptr %i.gw, null
  br i1 %.not9.i.i.i.i196, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gw, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i193

bb.ar:                                            ; preds = %bb.ap
  %i.gy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i193

bb.as:                                            ; preds = %bb.ao
  %i.gz = icmp samesign ult i32 %.val.i.i182, 1073741823
  %i.ha = shl nuw nsw i32 %.val.i.i182, 1
  %spec.select.i.i.i190 = select i1 %i.gz, i32 %i.ha, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i191 = icmp samesign ult i32 %.val.i.i182, %spec.select.i.i.i190
  %.pre276 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i.i.i191, label %bb.at, label %Vec_IntPush.exit.i.i183

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i.i.i192 = icmp eq ptr %.pre276, null
  %i.hb = zext nneg i32 %spec.select.i.i.i190 to i64
  %i.hc = shl nuw nsw i64 %i.hb, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i192, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = tail call ptr @realloc(ptr noundef nonnull %.pre276, i64 noundef %i.hc) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i193

bb.av:                                            ; preds = %bb.at
  %i.he = tail call noalias ptr @malloc(i64 noundef %i.hc) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i193

Vec_IntGrow.exit11.sink.split.i.i.i193:           ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar
  %i.hf = phi ptr [ %i.gy, %bb.ar ], [ %i.gx, %bb.aq ], [ %i.hd, %bb.au ], [ %i.he, %bb.av ] ; 2 uses
  %spec.select.sink.i.i.i194 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i.i.i190, %bb.au ], [ %spec.select.i.i.i190, %bb.av ]
  store ptr %i.hf, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i.i.i194, ptr %3, align 8, !tbaa !80
  %.pre.i.i195 = load i32, ptr %i.j, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i.i183

Vec_IntPush.exit.i.i183:                          ; preds = %.lr.ph.i125.Vec_IntPush.exit.i.i183_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i.i193, %bb.as
  %i.hg = phi ptr [ %.pre275, %.lr.ph.i125.Vec_IntPush.exit.i.i183_crit_edge ], [ %.pre276, %bb.as ], [ %i.hf, %Vec_IntGrow.exit11.sink.split.i.i.i193 ] ; 4 uses
  %i.hh = phi i32 [ %.val.i.i182, %.lr.ph.i125.Vec_IntPush.exit.i.i183_crit_edge ], [ %.val.i.i182, %bb.as ], [ %.pre.i.i195, %Vec_IntGrow.exit11.sink.split.i.i.i193 ] ; 2 uses
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.j, align 4, !tbaa !40
  %i.hj = sext i32 %i.hh to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hj
  store i32 %i.gp, ptr %i.hk, align 4, !tbaa !30
  %i.hl = load i32, ptr %i.j, align 4, !tbaa !40  ; 7 uses
  %i.hm = load i32, ptr %3, align 8, !tbaa !80
  %i.hn = icmp eq i32 %i.hl, %i.hm
  br i1 %i.hn, label %bb.aw, label %If_LogCreateAndXor.exit198

bb.aw:                                            ; preds = %Vec_IntPush.exit.i.i183
  %i.ho = icmp slt i32 %i.hl, 16
  br i1 %i.ho, label %Vec_IntGrow.exit11.sink.split.i9.i.i186, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hp = icmp samesign ult i32 %i.hl, 1073741823
  %i.hq = shl nuw nsw i32 %i.hl, 1
  %spec.select.i6.i.i184 = select i1 %i.hp, i32 %i.hq, i32 2147483647 ; 3 uses
  %.not.i9.i7.i.i185 = icmp samesign ult i32 %i.hl, %spec.select.i6.i.i184
  br i1 %.not.i9.i7.i.i185, label %bb.ay, label %If_LogCreateAndXor.exit198

bb.ay:                                            ; preds = %bb.ax
  %i.hr = zext nneg i32 %spec.select.i6.i.i184 to i64
  %i.hs = shl nuw nsw i64 %i.hr, 2
  br label %Vec_IntGrow.exit11.sink.split.i9.i.i186

Vec_IntGrow.exit11.sink.split.i9.i.i186:          ; preds = %bb.ay, %bb.aw
  %.sink.i.i187 = phi i64 [ %i.hs, %bb.ay ], [ 64, %bb.aw ]
  %spec.select.sink.i10.i.i188 = phi i32 [ %spec.select.i6.i.i184, %bb.ay ], [ 16, %bb.aw ]
  %i.ht = tail call ptr @realloc(ptr noundef nonnull %i.hg, i64 noundef %.sink.i.i187) #15 ; 2 uses
  store ptr %i.ht, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i10.i.i188, ptr %3, align 8, !tbaa !80
  %.pre14.i.i189 = load i32, ptr %i.j, align 4, !tbaa !40
  br label %If_LogCreateAndXor.exit198

If_LogCreateAndXor.exit198:                       ; preds = %Vec_IntPush.exit.i.i183, %bb.ax, %Vec_IntGrow.exit11.sink.split.i9.i.i186
  %i.hu = phi i32 [ %i.hl, %Vec_IntPush.exit.i.i183 ], [ %i.hl, %bb.ax ], [ %.pre14.i.i189, %Vec_IntGrow.exit11.sink.split.i9.i.i186 ] ; 2 uses
  %i.hv = phi ptr [ %i.hg, %Vec_IntPush.exit.i.i183 ], [ %i.hg, %bb.ax ], [ %i.ht, %Vec_IntGrow.exit11.sink.split.i9.i.i186 ]
  %i.hw = sdiv i32 %.val.i.i182, 2
  %i.hx = add nsw i32 %i.hw, %5
  %i.hy = add nsw i32 %i.hu, 1
  store i32 %i.hy, ptr %i.j, align 4, !tbaa !40
  %i.hz = sext i32 %i.hu to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hz
  store i32 %i.gs, ptr %i.ia, align 4, !tbaa !30
  %i.ib = shl nsw i32 %i.hx, 1
  store i32 %i.ib, ptr %i.gr, align 4, !tbaa !30
  %i.ic = icmp samesign ugt i64 %indvars.iv.i126, 2
  br i1 %i.ic, label %.lr.ph.i125, label %.thread.i141, !llvm.loop !82

.split66:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %.153.lcssa323 = phi i32 [ %.052221, %._crit_edge.thread ], [ %.2, %._crit_edge ]
  %.054.lcssa321 = phi i32 [ -1, %._crit_edge.thread ], [ %i.gl, %._crit_edge ]
  %i.id = load i32, ptr %6, align 4, !tbaa !30
  %i.ie = add nsw i32 %.054.lcssa321, %i.id
  store i32 %i.ie, ptr %6, align 4, !tbaa !30
  %.pre.i128 = sext i32 %.0206219 to i64
  %i.if = add nsw i32 %.0206219, 1                ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.pre.i128
  store i32 %.153.lcssa323, ptr %i.ig, align 4, !tbaa !30
  %i.ih = icmp sgt i32 %.0206219, 0
  br i1 %i.ih, label %.preheader.split.us.i130.preheader, label %If_LogCounterAddAig.exit138

.preheader.split.us.i130.preheader:               ; preds = %.split66
  %invariant.op364 = sub i32 -2, %.0206219
  br label %.preheader.split.us.i130

.preheader.split.us.i130:                         ; preds = %.preheader.split.us.i130.preheader, %.loopexit.us.i133
  %indvar266 = phi i32 [ %indvar.next267, %.loopexit.us.i133 ], [ 0, %.preheader.split.us.i130.preheader ] ; 2 uses
  %.081.us.i131 = phi i32 [ %.1.us.i134, %.loopexit.us.i133 ], [ %i.if, %.preheader.split.us.i130.preheader ] ; 4 uses
  %.07180.us.i132 = phi i32 [ %i.ik, %.loopexit.us.i133 ], [ %.0206219, %.preheader.split.us.i130.preheader ] ; 3 uses
  %21 = zext i32 %.07180.us.i132 to i64           ; 2 uses
  %22 = shl nuw nsw i64 %21, 2                    ; 2 uses
  %scevgep263 = getelementptr nuw i8, ptr %i.c, i64 %22
  %scevgep265 = getelementptr i8, ptr %scevgep255, i64 %22
  %.reass348.reass = add i32 %indvar266, %invariant.op364
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %21 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !30 ; 3 uses
  %i.ik = add nsw i32 %.07180.us.i132, -1         ; 2 uses
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !30 ; 4 uses
  %i.io = icmp slt i32 %i.ij, %i.in
  br i1 %i.io, label %If_LogCounterAddAig.exit138, label %bb.az

bb.az:                                            ; preds = %.preheader.split.us.i130
  %i.ip = icmp sgt i32 %i.ij, %i.in
  br i1 %i.ip, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iq = add nsw i32 %i.in, 1
  store i32 %i.iq, ptr %i.im, align 4, !tbaa !30
  %i.ir = add nsw i32 %.081.us.i131, -1           ; 3 uses
  %i.is = icmp slt i32 %.07180.us.i132, %i.ir
  br i1 %i.is, label %.lr.ph.us.i135.preheader, label %.loopexit.us.i133

.lr.ph.us.i135.preheader:                         ; preds = %bb.ba
  %i.it = add i32 %.081.us.i131, %.reass348.reass
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  %i.iw = add nuw nsw i64 %i.iv, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep263, ptr noundef nonnull align 4 dereferenceable(1) %scevgep265, i64 %i.iw, i1 false), !tbaa !30
  br label %.loopexit.us.i133

bb.bb:                                            ; preds = %bb.az
  store i32 %i.in, ptr %i.ii, align 4, !tbaa !30
  store i32 %i.ij, ptr %i.im, align 4, !tbaa !30
  br label %.loopexit.us.i133

.loopexit.us.i133:                                ; preds = %.lr.ph.us.i135.preheader, %bb.bb, %bb.ba
  %.1.us.i134 = phi i32 [ %.081.us.i131, %bb.bb ], [ %i.ir, %bb.ba ], [ %i.ir, %.lr.ph.us.i135.preheader ] ; 2 uses
  %indvar.next267 = add nuw i32 %indvar266, 1     ; 2 uses
  %exitcond268.not = icmp eq i32 %indvar.next267, %.0206219
  br i1 %exitcond268.not, label %If_LogCounterAddAig.exit138, label %.preheader.split.us.i130, !llvm.loop !79

.thread.i141:                                     ; preds = %If_LogCreateAndXor.exit198, %._crit_edge.thread, %bb.an
  %.153.lcssa322326 = phi i32 [ %.052221, %._crit_edge.thread ], [ %.2, %bb.an ], [ %.2, %If_LogCreateAndXor.exit198 ]
  %i.ix = load i32, ptr %i.b, align 16, !tbaa !30
  %i.iy = xor i32 %i.ix, 1
  %.pre.i140 = sext i32 %.0206219 to i64          ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.pre.i140
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !30
  %i.ja = add nsw i32 %.0206219, 1                ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.pre.i140
  store i32 %.153.lcssa322326, ptr %i.jb, align 4, !tbaa !30
  %i.jc = icmp sgt i32 %.0206219, 0
  br i1 %i.jc, label %.preheader.split.i143.preheader, label %If_LogCounterAddAig.exit138

.preheader.split.i143.preheader:                  ; preds = %.thread.i141
  %invariant.op363 = sub i32 -2, %.0206219
  br label %.preheader.split.i143

.preheader.split.i143:                            ; preds = %.preheader.split.i143.preheader, %.loopexit.i146
  %indvar257 = phi i32 [ %indvar.next258, %.loopexit.i146 ], [ 0, %.preheader.split.i143.preheader ] ; 2 uses
  %.081.i144 = phi i32 [ %.1.i147, %.loopexit.i146 ], [ %i.ja, %.preheader.split.i143.preheader ] ; 4 uses
  %.07180.i145 = phi i32 [ %i.jf, %.loopexit.i146 ], [ %.0206219, %.preheader.split.i143.preheader ] ; 3 uses
  %23 = zext i32 %.07180.i145 to i64              ; 3 uses
  %24 = shl nuw nsw i64 %23, 2                    ; 4 uses
  %scevgep259 = getelementptr i8, ptr %i.d, i64 %24
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %24
  %.reass346.reass = add i32 %indvar257, %invariant.op363
  %scevgep254 = getelementptr nuw i8, ptr %i.c, i64 %24
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %24
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %23 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !30 ; 3 uses
  %i.jf = add nsw i32 %.07180.i145, -1            ; 2 uses
  %i.jg = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jg ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !30 ; 4 uses
  %i.jj = icmp slt i32 %i.je, %i.ji
  br i1 %i.jj, label %If_LogCounterAddAig.exit138, label %bb.bc

bb.bc:                                            ; preds = %.preheader.split.i143
  %i.jk = icmp sgt i32 %i.je, %i.ji
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %23 ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jg ; 4 uses
  br i1 %i.jk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ji, ptr %i.jd, align 4, !tbaa !30
  store i32 %i.je, ptr %i.jh, align 4, !tbaa !30
  %26 = load i32, ptr %25, align 4, !tbaa !30
  %27 = load i32, ptr %i.jl, align 4, !tbaa !30
  store i32 %27, ptr %25, align 4, !tbaa !30
  store i32 %26, ptr %i.jl, align 4, !tbaa !30
  br label %.loopexit.i146

bb.be:                                            ; preds = %bb.bc
  %i.jm = add nsw i32 %i.ji, 1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !30
  %i.jn = load i32, ptr %25, align 4, !tbaa !30
  %i.jo = load i32, ptr %i.jl, align 4, !tbaa !30
  %i.jp = tail call fastcc i32 @If_LogCreateAndXor(ptr noundef nonnull %3, i32 noundef %i.jn, i32 noundef %i.jo, i32 noundef %5)
  store i32 %i.jp, ptr %i.jl, align 4, !tbaa !30
  %i.jq = add nsw i32 %.081.i144, -1              ; 3 uses
  %i.jr = icmp slt i32 %.07180.i145, %i.jq
  br i1 %i.jr, label %.lr.ph.i148.preheader, label %.loopexit.i146

.lr.ph.i148.preheader:                            ; preds = %bb.be
  %i.js = add i32 %.081.i144, %.reass346.reass
  %i.jt = zext i32 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 4                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep254, ptr noundef nonnull align 4 dereferenceable(1) %scevgep256, i64 %i.jv, i1 false), !tbaa !30
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep259, ptr noundef nonnull align 4 dereferenceable(1) %scevgep261, i64 %i.jv, i1 false), !tbaa !30
  br label %.loopexit.i146

.loopexit.i146:                                   ; preds = %.lr.ph.i148.preheader, %bb.be, %bb.bd
  %.1.i147 = phi i32 [ %.081.i144, %bb.bd ], [ %i.jq, %bb.be ], [ %i.jq, %.lr.ph.i148.preheader ] ; 2 uses
  %indvar.next258 = add nuw i32 %indvar257, 1     ; 2 uses
  %exitcond262.not = icmp eq i32 %indvar.next258, %.0206219
  br i1 %exitcond262.not, label %If_LogCounterAddAig.exit138, label %.preheader.split.i143, !llvm.loop !79

If_LogCounterAddAig.exit138:                      ; preds = %.loopexit.i146, %.preheader.split.i143, %.loopexit.us.i133, %.preheader.split.us.i130, %.thread.i141, %.split66
  %.2.i129.sink = phi i32 [ %i.ja, %.thread.i141 ], [ %i.if, %.split66 ], [ %.081.us.i131, %.preheader.split.us.i130 ], [ %.1.us.i134, %.loopexit.us.i133 ], [ %.081.i144, %.preheader.split.i143 ], [ %.1.i147, %.loopexit.i146 ] ; 4 uses
  %i.jw = load i32, ptr %i.c, align 16, !tbaa !30
  %i.jx = icmp sgt i32 %.2.i129.sink, 1
  %i.jy = zext i1 %i.jx to i32
  %i.jz = add nsw i32 %i.jw, %i.jy                ; 4 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %.val79.pr = load i32, ptr %i.e, align 4, !tbaa !40 ; 2 uses
  %i.ka = sext i32 %.val79.pr to i64
  %i.kb = icmp slt i64 %indvars.iv.next270, %i.ka
  br i1 %i.kb, label %bb.b, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %If_LogCounterAddAig.exit138
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.bg, label %bb.bf

.critedge.thread:                                 ; preds = %.preheader
  %.not330 = icmp eq ptr %3, null
  br i1 %.not330, label %bb.bg, label %If_LogCreateAndXorMulti.exit164

bb.bf:                                            ; preds = %.critedge
  %i.kc = icmp sgt i32 %.2.i129.sink, 1
  br i1 %i.kc, label %.lr.ph.preheader.i160, label %If_LogCreateAndXorMulti.exit164

.lr.ph.preheader.i160:                            ; preds = %bb.bf
  %i.kd = zext nneg i32 %.2.i129.sink to i64
  br label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.lr.ph.i161, %.lr.ph.preheader.i160
  %indvars.iv.i162 = phi i64 [ %i.kd, %.lr.ph.preheader.i160 ], [ %indvars.iv.next.i163, %.lr.ph.i161 ] ; 3 uses
  %indvars.iv.next.i163 = add nsw i64 %indvars.iv.i162, -1 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i163
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i162
  %i.kh = getelementptr i8, ptr %i.kg, i64 -8     ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !30
  %i.kj = tail call fastcc i32 @If_LogCreateAndXor(ptr noundef nonnull %3, i32 noundef %i.kf, i32 noundef %i.ki, i32 noundef %5)
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !30
  %i.kk = icmp samesign ugt i64 %indvars.iv.i162, 2
  br i1 %i.kk, label %.lr.ph.i161, label %If_LogCreateAndXorMulti.exit164, !llvm.loop !82

If_LogCreateAndXorMulti.exit164:                  ; preds = %.lr.ph.i161, %.critedge.thread, %bb.bf
  %.052.lcssa333338 = phi i32 [ 0, %.critedge.thread ], [ %i.jz, %bb.bf ], [ %i.jz, %.lr.ph.i161 ]
  %i.kl = load i32, ptr %i.d, align 16, !tbaa !30 ; 2 uses
  %i.km = xor i32 %i.kl, 1                        ; 2 uses
  store i32 %i.km, ptr %4, align 4, !tbaa !30
  %i.kn = load i32, ptr %0, align 8, !tbaa !80
  %i.ko = and i32 %i.kn, 65536
  %.not74 = icmp eq i32 %i.ko, 0
  %spec.store.select = select i1 %.not74, i32 %i.km, i32 %i.kl
  store i32 %spec.store.select, ptr %4, align 4
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge.thread, %.critedge
  %.052.lcssa334 = phi i32 [ 0, %.critedge.thread ], [ %i.jz, %.critedge ]
  %.val79.lcssa331 = phi i32 [ %.val80, %.critedge.thread ], [ %.val79.pr, %.critedge ]
  %i.kp = add i32 %.val79.lcssa331, -1
  %i.kq = load i32, ptr %6, align 4, !tbaa !30
  %i.kr = add nsw i32 %i.kp, %i.kq
  store i32 %i.kr, ptr %6, align 4, !tbaa !30
  br label %bb.bh

bb.bh:                                            ; preds = %If_LogCreateAndXorMulti.exit164, %bb.bg, %bb.a
  %.058 = phi i32 [ -1, %bb.a ], [ %.052.lcssa333338, %If_LogCreateAndXorMulti.exit164 ], [ %.052.lcssa334, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.058
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @If_CutSopBalanceEvalIntInt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [15 x i32], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = shl <4 x i32> %vec.ind, splat (i32 1)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.f = add <4 x i32> %step.add, splat (i32 8)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.e, ptr %i.d, align 16, !tbaa !30
  store <4 x i32> %i.f, ptr %i.g, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.i = call i32 @If_CutSopBalanceEvalInt(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %5)
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.k = shl i32 %indvars.iv.tr, 1
  store i32 %i.k, ptr %i.j, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.l = call i32 @If_CutSopBalanceEvalInt(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = load i32, ptr %i.b, align 4, !tbaa !30
  %i.o = and i32 %i.n, 1
  %i.p = xor i32 %i.o, %4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 7 uses
  %i.s = load i32, ptr %3, align 8, !tbaa !80
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.r, 16
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.w, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  store ptr %i.z, ptr %i.v, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i32 %i.r, 1073741823
  %i.ab = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.r, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ad, null
  %i.ae = zext nneg i32 %spec.select.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

end_hunk_1
