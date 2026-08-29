Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDelay?download=true
inline.NumInlined: 161
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@If_CutDelaySop:bb.a

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
  %.0110 = phi i32 [ 0, %.lr.ph111 ], [ %i.fi, %If_LogCounterPinDelays.exit76 ] ; 2 uses
  %.096108 = phi i32 [ 0, %.lr.ph111 ], [ %.2.i47, %If_LogCounterPinDelays.exit76 ] ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv143
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  br i1 %i.i, label %.lr.ph, label %If_LogPinDelaysMulti.exit

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.b ] ; 4 uses
  %.1106 = phi i32 [ %.2, %bb.h ], [ %.0110, %bb.b ]
  %.097104 = phi i32 [ %.198, %bb.h ], [ 0, %bb.b ] ; 7 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 1
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
  %.06674.us.i = phi i32 [ %i.ad, %.loopexit.us.i ], [ %.097104, %.preheader.split.us.i.preheader ] ; 3 uses
  %i.y = zext i32 %.06674.us.i to i64             ; 4 uses
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 2 uses
  %scevgep120 = getelementptr i8, ptr %i.a, i64 %i.z
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.z
  %.reass.reass = add i32 %indvar, %invariant.op
  %i.aa = shl nuw nsw i64 %i.y, 2                 ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.c, i64 %i.aa
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.aa
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30 ; 3 uses
  %i.ad = add nsw i32 %.06674.us.i, -1            ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30 ; 4 uses
  %i.ah = icmp slt i32 %i.ac, %i.ag
  br i1 %i.ah, label %If_LogCounterPinDelays.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.ai = icmp sgt i32 %i.ac, %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 4 uses
  br i1 %i.ai, label %bb.g, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.d
  %i.al = add nsw i32 %i.ag, 1
  store i32 %i.al, ptr %i.af, align 4, !tbaa !30
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !61
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !61
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.f, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.f ] ; 2 uses
  %.01213.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %.1.i.us.i, %bb.f ] ; 2 uses
  %i.ao = shl nuw nsw i64 %indvars.iv.i.us.i, 2
  %i.ap = and i64 %i.ao, 4294967292               ; 3 uses
  %i.aq = lshr i64 %i.am, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 15
  %i.at = lshr i64 %i.an, %i.ap
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 15
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.as, i32 %i.av) ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.us.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 14)
  %i.ay = add nuw nsw i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.az, %i.ap
  %i.bb = or i64 %i.ba, %.01213.i.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.i
  %.1.i.us.i = phi i64 [ %.01213.i.us.i, %.lr.ph.i.us.i ], [ %i.bb, %bb.e ] ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %If_CutPinDelayMax.exit.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !62

bb.g:                                             ; preds = %bb.d
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !30
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !30
  %i.bc = load i64, ptr %i.aj, align 8, !tbaa !61
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !61
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !61
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !61
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %If_CutPinDelayMax.exit.loopexit.us.i, %bb.g
  %.1.us.i = phi i32 [ %.075.us.i, %bb.g ], [ %i.be, %If_CutPinDelayMax.exit.loopexit.us.i ], [ %i.be, %.lr.ph.us.i.preheader ] ; 2 uses
  %indvar.next = add nuw nsw i32 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %.097104
  br i1 %exitcond.not, label %If_LogCounterPinDelays.exit, label %.preheader.split.us.i, !llvm.loop !63

If_CutPinDelayMax.exit.loopexit.us.i:             ; preds = %bb.f
  store i64 %.1.i.us.i, ptr %i.ak, align 8, !tbaa !61
  %i.be = add nsw i32 %.075.us.i, -1              ; 3 uses
  %i.bf = icmp slt i32 %.06674.us.i, %i.be
  br i1 %i.bf, label %.lr.ph.us.i.preheader, label %.loopexit.us.i

.lr.ph.us.i.preheader:                            ; preds = %If_CutPinDelayMax.exit.loopexit.us.i
  %i.bg = add i32 %.075.us.i, %.reass.reass
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep119, i64 %i.bj, i1 false), !tbaa !30
  %i.bk = shl nuw nsw i64 %i.bh, 3
  %i.bl = add nuw nsw i64 %i.bk, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep120, ptr noundef nonnull align 8 dereferenceable(1) %scevgep122, i64 %i.bl, i1 false), !tbaa !61
  br label %.loopexit.us.i

If_LogCounterPinDelays.exit:                      ; preds = %.preheader.split.us.i, %.loopexit.us.i, %bb.c
  %.2.i = phi i32 [ %i.v, %bb.c ], [ %.075.us.i, %.preheader.split.us.i ], [ %.1.us.i, %.loopexit.us.i ] ; 2 uses
  %i.bm = load i32, ptr %i.c, align 16, !tbaa !30
  %i.bn = icmp sgt i32 %.2.i, 1
  %i.bo = zext i1 %i.bn to i32
  %i.bp = add nsw i32 %i.bm, %i.bo
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %If_LogCounterPinDelays.exit
  %.198 = phi i32 [ %.2.i, %If_LogCounterPinDelays.exit ], [ %.097104, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.bp, %If_LogCounterPinDelays.exit ], [ %.1106, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i.i
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.h
  %i.bq = icmp sgt i32 %.198, 1
  br i1 %i.bq, label %.lr.ph.i34, label %If_LogPinDelaysMulti.exit

.lr.ph.i34:                                       ; preds = %._crit_edge
  %i.br = zext nneg i32 %.198 to i64
  br label %.lr.ph.preheader.i.us.i36

.lr.ph.preheader.i.us.i36:                        ; preds = %.lr.ph.i34, %If_CutPinDelayMax.exit.loopexit.us.i46
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %If_CutPinDelayMax.exit.loopexit.us.i46 ], [ %i.br, %.lr.ph.i34 ] ; 3 uses
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i37, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i38
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61
  %i.bu = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i37
  %i.bv = getelementptr i8, ptr %i.bu, i64 -16    ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61
  br label %.lr.ph.i.us.i39

.lr.ph.i.us.i39:                                  ; preds = %bb.j, %.lr.ph.preheader.i.us.i36
  %indvars.iv.i.us.i40 = phi i64 [ 0, %.lr.ph.preheader.i.us.i36 ], [ %indvars.iv.next.i.us.i44, %bb.j ] ; 2 uses
  %.01213.i.us.i41 = phi i64 [ 0, %.lr.ph.preheader.i.us.i36 ], [ %.1.i.us.i43, %bb.j ] ; 2 uses
  %i.bx = shl nuw nsw i64 %indvars.iv.i.us.i40, 2
  %i.by = and i64 %i.bx, 4294967292               ; 3 uses
  %i.bz = lshr i64 %i.bt, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 15
  %i.cc = lshr i64 %i.bw, %i.by
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 15
  %i.cf = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.ce) ; 2 uses
  %.not.i.us.i42 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.us.i42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us.i39
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 14)
  %i.ch = add nuw nsw i32 %i.cg, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl i64 %i.ci, %i.by
  %i.ck = or i64 %i.cj, %.01213.i.us.i41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.i39
  %.1.i.us.i43 = phi i64 [ %.01213.i.us.i41, %.lr.ph.i.us.i39 ], [ %i.ck, %bb.i ] ; 2 uses
  %indvars.iv.next.i.us.i44 = add nuw nsw i64 %indvars.iv.i.us.i40, 1 ; 2 uses
  %exitcond.not.i.us.i45 = icmp eq i64 %indvars.iv.next.i.us.i44, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i45, label %If_CutPinDelayMax.exit.loopexit.us.i46, label %.lr.ph.i.us.i39, !llvm.loop !62

If_CutPinDelayMax.exit.loopexit.us.i46:           ; preds = %bb.j
  store i64 %.1.i.us.i43, ptr %i.bv, align 8, !tbaa !61
  %i.cl = icmp sgt i64 %indvars.iv.i37, 2
  br i1 %i.cl, label %.lr.ph.preheader.i.us.i36, label %If_LogPinDelaysMulti.exit, !llvm.loop !65

If_LogPinDelaysMulti.exit:                        ; preds = %If_CutPinDelayMax.exit.loopexit.us.i46, %bb.b, %._crit_edge
  %.1.lcssa166 = phi i32 [ %.0110, %bb.b ], [ %.2, %._crit_edge ], [ %.2, %If_CutPinDelayMax.exit.loopexit.us.i46 ]
  %i.cm = load i64, ptr %i.a, align 16, !tbaa !61
  %i.cn = sext i32 %.096108 to i64                ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cn
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !61
  %i.cp = add nsw i32 %.096108, 1                 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cn
  store i32 %.1.lcssa166, ptr %i.cq, align 4, !tbaa !30
  %i.cr = icmp sgt i32 %.096108, 0
  br i1 %i.cr, label %.preheader.i48, label %If_LogCounterPinDelays.exit76

.preheader.i48:                                   ; preds = %If_LogPinDelaysMulti.exit
  %invariant.op174 = sub nuw i32 -2, %.096108     ; 2 uses
end_hunk_0
begin_hunk_1_@If_CutSopBalancePinDelays:bb.a
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
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph222, %If_LogCounterAddAig.exit138
  %indvars.iv269 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next270, %If_LogCounterAddAig.exit138 ] ; 2 uses
  %.052221 = phi i32 [ 0, %.lr.ph222 ], [ %i.ku, %If_LogCounterAddAig.exit138 ] ; 3 uses
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
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.n = shl nuw i32 %indvars.iv.tr, 1
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
  %.07180.us.i = phi i32 [ %i.aa, %.loopexit.us.i ], [ %.0208213, %.preheader.split.us.i.preheader ] ; 3 uses
  %i.w = zext i32 %.07180.us.i to i64             ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  %scevgep246 = getelementptr nuw i8, ptr %i.a, i64 %i.x
  %scevgep248 = getelementptr i8, ptr %scevgep226, i64 %i.x
  %.reass344.reass = add i32 %indvar249, %invariant.op362
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30   ; 3 uses
  %i.aa = add nsw i32 %.07180.us.i, -1            ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30 ; 4 uses
  %i.ae = icmp slt i32 %i.z, %i.ad
  br i1 %i.ae, label %If_LogCounterAddAig.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.af = icmp sgt i32 %i.z, %i.ad
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !30
  %i.ah = add nsw i32 %.081.us.i, -1              ; 3 uses
  %i.ai = icmp slt i32 %.07180.us.i, %i.ah
  br i1 %i.ai, label %.lr.ph.us.i.preheader, label %.loopexit.us.i

.lr.ph.us.i.preheader:                            ; preds = %bb.e
  %i.aj = add i32 %.081.us.i, %.reass344.reass
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep246, ptr noundef nonnull align 4 dereferenceable(1) %scevgep248, i64 %i.am, i1 false), !tbaa !30
  br label %.loopexit.us.i

bb.f:                                             ; preds = %bb.d
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !30
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !30
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %bb.f, %bb.e
  %.1.us.i = phi i32 [ %.081.us.i, %bb.f ], [ %i.ah, %bb.e ], [ %i.ah, %.lr.ph.us.i.preheader ] ; 2 uses
  %indvar.next250 = add nuw i32 %indvar249, 1     ; 2 uses
  %exitcond251.not = icmp eq i32 %indvar.next250, %.0208213
  br i1 %exitcond251.not, label %If_LogCounterAddAig.exit, label %.preheader.split.us.i, !llvm.loop !79

If_LogCounterAddAig.exit:                         ; preds = %.preheader.split.us.i, %.loopexit.us.i, %.split59
  %.2.i = phi i32 [ %i.t, %.split59 ], [ %.1.us.i, %.loopexit.us.i ], [ %.081.us.i, %.preheader.split.us.i ] ; 2 uses
  %i.an = load i32, ptr %i.a, align 16, !tbaa !30
  %i.ao = icmp sgt i32 %.2.i, 1
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add nsw i32 %i.an, %i.ap
  br label %bb.am

.thread.i:                                        ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.at = xor i32 %i.as, 1
  %.pre.i82 = sext i32 %.0208213 to i64           ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre.i82
  store i32 %i.at, ptr %i.au, align 4, !tbaa !30
  %i.av = add nsw i32 %.0208213, 1                ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre.i82
  store i32 %i.s, ptr %i.aw, align 4, !tbaa !30
  %i.ax = icmp sgt i32 %.0208213, 0
  br i1 %i.ax, label %.preheader.split.i.preheader, label %If_LogCounterAddAig.exit92

.preheader.split.i.preheader:                     ; preds = %.thread.i
  %invariant.op361 = sub i32 -2, %.0208213
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %.loopexit.i
  %indvar240 = phi i32 [ %indvar.next241, %.loopexit.i ], [ 0, %.preheader.split.i.preheader ] ; 2 uses
  %.081.i = phi i32 [ %.1.i, %.loopexit.i ], [ %i.av, %.preheader.split.i.preheader ] ; 4 uses
  %.07180.i = phi i32 [ %i.bc, %.loopexit.i ], [ %.0208213, %.preheader.split.i.preheader ] ; 3 uses
  %i.ay = zext i32 %.07180.i to i64               ; 3 uses
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 4 uses
  %scevgep242 = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep244 = getelementptr i8, ptr %scevgep229, i64 %i.az
  %.reass342.reass = add i32 %indvar240, %invariant.op361
  %scevgep237 = getelementptr nuw i8, ptr %i.a, i64 %i.az
  %scevgep239 = getelementptr i8, ptr %scevgep226, i64 %i.az
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30 ; 3 uses
  %i.bc = add nsw i32 %.07180.i, -1               ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30 ; 4 uses
  %i.bg = icmp slt i32 %i.bb, %i.bf
  br i1 %i.bg, label %If_LogCounterAddAig.exit92, label %bb.g

bb.g:                                             ; preds = %.preheader.split.i
  %i.bh = icmp sgt i32 %i.bb, %i.bf
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bd ; 4 uses
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !30
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !30
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !30
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !30
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !30
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %i.bm = add nsw i32 %i.bf, 1
  store i32 %i.bm, ptr %i.be, align 4, !tbaa !30
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !30
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !40 ; 8 uses
  %i.bp = load i32, ptr %3, align 8, !tbaa !80
  %i.bq = icmp eq i32 %.val.i.i, %i.bp
  br i1 %i.bq, label %bb.j, label %.Vec_IntPush.exit.i.i_crit_edge

.Vec_IntPush.exit.i.i_crit_edge:                  ; preds = %bb.i
  %.pre273 = load ptr, ptr %i.k, align 8, !tbaa !49
  br label %Vec_IntPush.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.br = icmp slt i32 %.val.i.i, 16
  br i1 %i.br, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not9.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bs, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.bv = icmp samesign ult i32 %.val.i.i, 1073741823
  %i.bw = shl nuw nsw i32 %.val.i.i, 1
  %spec.select.i.i.i = select i1 %i.bv, i32 %i.bw, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %.val.i.i, %spec.select.i.i.i
  %.pre274 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.o, label %Vec_IntPush.exit.i.i

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i.i.i = icmp eq ptr %.pre274, null
  %i.bx = zext nneg i32 %spec.select.i.i.i to i64
  %i.by = shl nuw nsw i64 %i.bx, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = tail call ptr @realloc(ptr noundef nonnull %.pre274, i64 noundef %i.by) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.by) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %i.cb = phi ptr [ %i.bu, %bb.m ], [ %i.bt, %bb.l ], [ %i.bz, %bb.p ], [ %i.ca, %bb.q ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i.i.i, %bb.p ], [ %spec.select.i.i.i, %bb.q ]
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !49
  store i32 %spec.select.sink.i.i.i, ptr %3, align 8, !tbaa !80
  %.pre.i.i = load i32, ptr %i.j, align 4, !tbaa !40
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %.Vec_IntPush.exit.i.i_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.n
  %i.cc = phi ptr [ %.pre273, %.Vec_IntPush.exit.i.i_crit_edge ], [ %.pre274, %bb.n ], [ %i.cb, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 4 uses
  %i.cd = phi i32 [ %.val.i.i, %.Vec_IntPush.exit.i.i_crit_edge ], [ %.val.i.i, %bb.n ], [ %.pre.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.j, align 4, !tbaa !40
  %i.cf = sext i32 %i.cd to i64
end_hunk_1
begin_hunk_2_@If_CutSopBalanceEvalInt:bb.a
  %i.jh = add nsw i32 %.081.us.i131, -1           ; 3 uses
  %i.ji = icmp slt i32 %.07180.us.i132, %i.jh
  br i1 %i.ji, label %.lr.ph.us.i135.preheader, label %.loopexit.us.i133

.lr.ph.us.i135.preheader:                         ; preds = %bb.ba
  %i.jj = add i32 %.081.us.i131, %.reass348.reass
  %i.jk = zext i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 2
  %i.jm = add nuw nsw i64 %i.jl, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep263, ptr noundef nonnull align 4 dereferenceable(1) %scevgep265, i64 %i.jm, i1 false), !tbaa !30
  br label %.loopexit.us.i133

bb.bb:                                            ; preds = %bb.az
  store i32 %i.jd, ptr %i.iy, align 4, !tbaa !30
  store i32 %i.iz, ptr %i.jc, align 4, !tbaa !30
  br label %.loopexit.us.i133

.loopexit.us.i133:                                ; preds = %.lr.ph.us.i135.preheader, %bb.bb, %bb.ba
  %.1.us.i134 = phi i32 [ %.081.us.i131, %bb.bb ], [ %i.jh, %bb.ba ], [ %i.jh, %.lr.ph.us.i135.preheader ] ; 2 uses
  %indvar.next267 = add nuw i32 %indvar266, 1     ; 2 uses
  %exitcond268.not = icmp eq i32 %indvar.next267, %.0206219
  br i1 %exitcond268.not, label %If_LogCounterAddAig.exit138, label %.preheader.split.us.i130, !llvm.loop !79

.thread.i141:                                     ; preds = %If_LogCreateAndXor.exit198, %._crit_edge.thread, %bb.an
  %.153.lcssa322326 = phi i32 [ %.052221, %._crit_edge.thread ], [ %.2, %bb.an ], [ %.2, %If_LogCreateAndXor.exit198 ]
  %i.jn = load i32, ptr %i.b, align 16, !tbaa !30
  %i.jo = xor i32 %i.jn, 1
  %.pre.i140 = sext i32 %.0206219 to i64          ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.pre.i140
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !30
  %i.jq = add nsw i32 %.0206219, 1                ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.pre.i140
  store i32 %.153.lcssa322326, ptr %i.jr, align 4, !tbaa !30
  %i.js = icmp sgt i32 %.0206219, 0
  br i1 %i.js, label %.preheader.split.i143.preheader, label %If_LogCounterAddAig.exit138

.preheader.split.i143.preheader:                  ; preds = %.thread.i141
  %invariant.op363 = sub i32 -2, %.0206219
  br label %.preheader.split.i143

.preheader.split.i143:                            ; preds = %.preheader.split.i143.preheader, %.loopexit.i146
  %indvar257 = phi i32 [ %indvar.next258, %.loopexit.i146 ], [ 0, %.preheader.split.i143.preheader ] ; 2 uses
  %.081.i144 = phi i32 [ %.1.i147, %.loopexit.i146 ], [ %i.jq, %.preheader.split.i143.preheader ] ; 4 uses
  %.07180.i145 = phi i32 [ %i.jx, %.loopexit.i146 ], [ %.0206219, %.preheader.split.i143.preheader ] ; 3 uses
  %i.jt = zext i32 %.07180.i145 to i64            ; 3 uses
  %i.ju = shl nuw nsw i64 %i.jt, 2                ; 4 uses
  %scevgep259 = getelementptr i8, ptr %i.d, i64 %i.ju
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.ju
  %.reass346.reass = add i32 %indvar257, %invariant.op363
  %scevgep254 = getelementptr nuw i8, ptr %i.c, i64 %i.ju
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.ju
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jt ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !30 ; 3 uses
  %i.jx = add nsw i32 %.07180.i145, -1            ; 2 uses
  %i.jy = zext nneg i32 %i.jx to i64              ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jy ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !30 ; 4 uses
  %i.kb = icmp slt i32 %i.jw, %i.ka
  br i1 %i.kb, label %If_LogCounterAddAig.exit138, label %bb.bc

bb.bc:                                            ; preds = %.preheader.split.i143
  %i.kc = icmp sgt i32 %i.jw, %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jt ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jy ; 4 uses
  br i1 %i.kc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !30
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !30
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !30
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !30
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !30
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !30
  br label %.loopexit.i146

bb.be:                                            ; preds = %bb.bc
  %i.kh = add nsw i32 %i.ka, 1
  store i32 %i.kh, ptr %i.jz, align 4, !tbaa !30
  %i.ki = load i32, ptr %i.kd, align 4, !tbaa !30
  %i.kj = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kk = tail call fastcc i32 @If_LogCreateAndXor(ptr noundef nonnull %3, i32 noundef %i.ki, i32 noundef %i.kj, i32 noundef %5)
  store i32 %i.kk, ptr %i.ke, align 4, !tbaa !30
  %i.kl = add nsw i32 %.081.i144, -1              ; 3 uses
  %i.km = icmp slt i32 %.07180.i145, %i.kl
  br i1 %i.km, label %.lr.ph.i148.preheader, label %.loopexit.i146

.lr.ph.i148.preheader:                            ; preds = %bb.be
  %i.kn = add i32 %.081.i144, %.reass346.reass
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 4                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep254, ptr noundef nonnull align 4 dereferenceable(1) %scevgep256, i64 %i.kq, i1 false), !tbaa !30
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep259, ptr noundef nonnull align 4 dereferenceable(1) %scevgep261, i64 %i.kq, i1 false), !tbaa !30
  br label %.loopexit.i146

.loopexit.i146:                                   ; preds = %.lr.ph.i148.preheader, %bb.be, %bb.bd
  %.1.i147 = phi i32 [ %.081.i144, %bb.bd ], [ %i.kl, %bb.be ], [ %i.kl, %.lr.ph.i148.preheader ] ; 2 uses
  %indvar.next258 = add nuw i32 %indvar257, 1     ; 2 uses
  %exitcond262.not = icmp eq i32 %indvar.next258, %.0206219
  br i1 %exitcond262.not, label %If_LogCounterAddAig.exit138, label %.preheader.split.i143, !llvm.loop !79

If_LogCounterAddAig.exit138:                      ; preds = %.loopexit.i146, %.preheader.split.i143, %.loopexit.us.i133, %.preheader.split.us.i130, %.thread.i141, %.split66
  %.2.i129.sink = phi i32 [ %i.jq, %.thread.i141 ], [ %i.it, %.split66 ], [ %.081.us.i131, %.preheader.split.us.i130 ], [ %.1.us.i134, %.loopexit.us.i133 ], [ %.081.i144, %.preheader.split.i143 ], [ %.1.i147, %.loopexit.i146 ] ; 4 uses
  %i.kr = load i32, ptr %i.c, align 16, !tbaa !30
  %i.ks = icmp sgt i32 %.2.i129.sink, 1
  %i.kt = zext i1 %i.ks to i32
  %i.ku = add nsw i32 %i.kr, %i.kt                ; 4 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %.val79.pr = load i32, ptr %i.e, align 4, !tbaa !40 ; 2 uses
  %i.kv = sext i32 %.val79.pr to i64
  %i.kw = icmp slt i64 %indvars.iv.next270, %i.kv
  br i1 %i.kw, label %bb.b, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %If_LogCounterAddAig.exit138
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.bg, label %bb.bf

.critedge.thread:                                 ; preds = %.preheader
  %.not330 = icmp eq ptr %3, null
  br i1 %.not330, label %bb.bg, label %If_LogCreateAndXorMulti.exit164

bb.bf:                                            ; preds = %.critedge
  %i.kx = icmp sgt i32 %.2.i129.sink, 1
  br i1 %i.kx, label %.lr.ph.preheader.i160, label %If_LogCreateAndXorMulti.exit164

.lr.ph.preheader.i160:                            ; preds = %bb.bf
  %i.ky = zext nneg i32 %.2.i129.sink to i64
  br label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.lr.ph.i161, %.lr.ph.preheader.i160
  %indvars.iv.i162 = phi i64 [ %i.ky, %.lr.ph.preheader.i160 ], [ %indvars.iv.next.i163, %.lr.ph.i161 ] ; 3 uses
  %indvars.iv.next.i163 = add nsw i64 %indvars.iv.i162, -1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i163
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !30
  %i.lb = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i162
  %i.lc = getelementptr i8, ptr %i.lb, i64 -8     ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !30
  %i.le = tail call fastcc i32 @If_LogCreateAndXor(ptr noundef nonnull %3, i32 noundef %i.la, i32 noundef %i.ld, i32 noundef %5)
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !30
  %i.lf = icmp samesign ugt i64 %indvars.iv.i162, 2
  br i1 %i.lf, label %.lr.ph.i161, label %If_LogCreateAndXorMulti.exit164, !llvm.loop !82

If_LogCreateAndXorMulti.exit164:                  ; preds = %.lr.ph.i161, %.critedge.thread, %bb.bf
  %.052.lcssa333338 = phi i32 [ 0, %.critedge.thread ], [ %i.ku, %bb.bf ], [ %i.ku, %.lr.ph.i161 ]
  %i.lg = load i32, ptr %i.d, align 16, !tbaa !30 ; 2 uses
  %i.lh = xor i32 %i.lg, 1                        ; 2 uses
  store i32 %i.lh, ptr %4, align 4, !tbaa !30
  %i.li = load i32, ptr %0, align 8, !tbaa !80
  %i.lj = and i32 %i.li, 65536
  %.not74 = icmp eq i32 %i.lj, 0
  %spec.store.select = select i1 %.not74, i32 %i.lh, i32 %i.lg
  store i32 %spec.store.select, ptr %4, align 4
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge.thread, %.critedge
  %.052.lcssa334 = phi i32 [ 0, %.critedge.thread ], [ %i.ku, %.critedge ]
  %.val79.lcssa331 = phi i32 [ %.val80, %.critedge.thread ], [ %.val79.pr, %.critedge ]
  %i.lk = add i32 %.val79.lcssa331, -1
  %i.ll = load i32, ptr %6, align 4, !tbaa !30
  %i.lm = add nsw i32 %i.lk, %i.ll
  store i32 %i.lm, ptr %6, align 4, !tbaa !30
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
  %i.e = shl nuw <4 x i32> %vec.ind, splat (i32 1)
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
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 1
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

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !80
  %.pre = load i32, ptr %i.q, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.aj = phi i32 [ %i.r, %bb.b ], [ %i.r, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.q, align 4, !tbaa !40
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.p, ptr %i.ao, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge, %Vec_IntPush.exit
  %phi.call22 = phi i32 [ %i.i, %.thread ], [ -1, %._crit_edge ], [ %i.l, %Vec_IntPush.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %phi.call22
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @If_CutSopBalanceEval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [15 x i32], align 16              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 9 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = or i64 %i.d, 8192                        ; 2 uses
  store i64 %i.e, ptr %i.c, align 4
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !40
  %.pre = load i64, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 24                        ; 6 uses
  %trunc = trunc nuw i32 %i.i to i8
  switch i8 %trunc, label %bb.ad [
    i8 0, label %bb.d
    i8 1, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 24
  %.val89 = load i32, ptr %i.j, align 8, !tbaa !37
  %i.k = and i32 %.val89, 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 7 uses
  %i.n = load i32, ptr %2, align 8, !tbaa !80
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.m, 16
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.r, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  store ptr %i.u, ptr %i.q, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i32 %i.m, 1073741823
  %i.w = shl nuw nsw i32 %i.m, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.m, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = phi ptr [ %i.ab, %bb.l ], [ %i.ac, %bb.m ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !80
  %.pre115 = load i32, ptr %i.l, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.ae = phi i32 [ %i.m, %bb.e ], [ %i.m, %bb.j ], [ %.pre115, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = add nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.l, align 4, !tbaa !40
  %i.ai = sext i32 %i.ae to i64
end_hunk_2
begin_hunk_3_@If_CutLutBalancePinDelays:bb.a
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.al = icmp eq i32 %i.ay, 1
  br i1 %i.al, label %.epil.preheader, label %.lr.ph45.new

.lr.ph45.new:                                     ; preds = %.lr.ph45
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.am = phi i32 [ %i.d, %.lr.ph ], [ %i.ay, %bb.g ]
  %i.an = icmp sgt i32 %i.am, %i.ag
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !91
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.ao, %i.aq
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i8 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !58
  %i.au = ashr i8 %i.at, 1
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store i8 %.sink, ptr %i.aw, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val38 = load i64, ptr %i.a, align 4
  %i.ax = trunc i64 %.val38 to i32
  %i.ay = lshr i32 %i.ax, 24                      ; 6 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.d, label %.preheader, !llvm.loop !92

bb.h:                                             ; preds = %bb.h, %.lr.ph45.new
  %indvars.iv52 = phi i64 [ 0, %.lr.ph45.new ], [ %indvars.iv.next53.1, %bb.h ] ; 4 uses
  %.044 = phi i32 [ -1, %.lr.ph45.new ], [ %i.ca, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph45.new ], [ %niter.next.1, %bb.h ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !30
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 92
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !32
  %i.bi = fptosi float %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58
  %i.bl = sext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, %i.bi
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %.044, i32 %i.bm)
  %indvars.iv.next53 = or disjoint i64 %indvars.iv52, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next53
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !30
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !32
  %i.bv = fptosi float %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next53
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58
  %i.by = sext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = tail call noundef i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bz) ; 3 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !93

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45
  %indvars.iv52.epil.init = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next53.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.044.epil.init = phi i32 [ -1, %.lr.ph45 ], [ %i.ca, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv52.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 92
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !32
  %i.ci = fptosi float %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.epil.init
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !58
  %i.cl = sext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, %i.ci
  %i.cn = tail call noundef i32 @llvm.smax.i32(i32 %.044.epil.init, i32 %i.cm)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader, %bb.a, %bb.b
  %.033 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.b ], [ -1, %.preheader ], [ -1, %bb.c ], [ %i.ca, %.loopexit.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define i32 @If_CutLutBalanceEval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((28, 32)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.b = load i64, ptr %i.a, align 4              ; 4 uses
  %i.c = and i64 %i.b, 4261412864
  %.not = icmp ne i64 %i.c, 0
  %i.d = zext i1 %.not to i64
  %i.e = and i64 %i.b, -12288
  %i.f = or disjoint i64 %i.e, %i.d
  %i.g = or disjoint i64 %i.f, 8192               ; 2 uses
  store i64 %i.g, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !91
  %i.i = lshr i64 %i.b, 24                        ; 2 uses
  %trunc = trunc i64 %i.i to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.n
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val62 = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr i8, ptr %.val62, i64 8
  %.val62.val = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val62.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !32
  %i.s = fptosi float %i.r to i32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val65 = load i32, ptr %i.t, align 8, !tbaa !37 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.v = and i64 %i.i, 255                        ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.y = ashr i32 %.val65, 1                      ; 3 uses
  %i.z = trunc i64 %i.b to i32
  %i.aa = lshr i32 %i.z, 24                       ; 4 uses
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 6)
  %i.ac = mul nsw i32 %i.y, %i.ab
  %i.ad = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds i8, ptr %.val.i, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !58
  %i.al = sext i8 %i.ak to i32                    ; 2 uses
  %i.am = add nsw i32 %i.al, -48                  ; 3 uses
  %.not78 = icmp eq i32 %i.aa, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.an = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 44
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.075 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 2 uses
  %.04974 = phi i32 [ 0, %.lr.ph ], [ %.150, %bb.h ] ; 2 uses
  %.05173 = phi i32 [ -1, %.lr.ph ], [ %.152, %bb.h ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !58
  %i.as = ashr i8 %i.ar, 1
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !30
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !32
  %i.bb = fptosi float %i.ba to i32               ; 3 uses
  %i.bc = icmp slt i32 %.05173, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %indvars.iv.tr86 = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = shl nuw nsw i32 %indvars.iv.tr86, 1
  %i.be = shl nuw i32 1, %i.bd
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bf = icmp eq i32 %.05173, %i.bb
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = add nsw i32 %.04974, 1
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = or i32 %.075, %i.bi
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.152 = phi i32 [ %i.bb, %bb.e ], [ %.05173, %bb.g ], [ %.05173, %bb.f ] ; 2 uses
  %.150 = phi i32 [ 1, %bb.e ], [ %i.bg, %bb.g ], [ %.04974, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.be, %bb.e ], [ %i.bj, %bb.g ], [ %.075, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.051.lcssa = phi i32 [ -1, %bb.c ], [ %.152, %bb.h ] ; 3 uses
  %.049.lcssa = phi i32 [ 0, %bb.c ], [ %.150, %bb.h ]
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.1, %bb.h ]
  %.not60 = icmp sgt i32 %i.aa, %i.am
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bk = add nsw i32 %.051.lcssa, 1
  br label %bb.n

bb.j:                                             ; preds = %._crit_edge
  %i.bl = and i64 %i.g, -4096
  %i.bm = or disjoint i64 %i.bl, 2                ; 2 uses
  store i64 %i.bm, ptr %i.a, align 4
  %i.bn = add nsw i32 %i.al, -49
  %.not61 = icmp sgt i32 %.049.lcssa, %i.bn
  br i1 %.not61, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.v
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !96
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val3.i = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bu = sext i32 %i.y to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val3.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
  %i.bx = and i32 %.val65, 1
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = tail call i32 @If_DsdManCheckXY(ptr noundef %i.bp, i32 noundef %i.by, i32 noundef %i.am, i32 noundef 1, i32 noundef %.0.lcssa, i32 noundef 0, i32 noundef 0) #14 ; 2 uses
  store i32 %i.bz, ptr %i.h, align 4, !tbaa !91
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.k
  %.val67.pre = load i32, ptr %i.t, align 8, !tbaa !37 ; 2 uses
  %.val68.pre = load i64, ptr %i.a, align 4
  %.pre = ashr i32 %.val67.pre, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = add nsw i32 %.051.lcssa, 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge80, %bb.j
  %.pre-phi = phi i32 [ %.pre, %._crit_edge80 ], [ %i.y, %bb.j ]
  %.val68 = phi i64 [ %.val68.pre, %._crit_edge80 ], [ %i.bm, %bb.j ]
  %.val67 = phi i32 [ %.val67.pre, %._crit_edge80 ], [ %.val65, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.cf = lshr i64 %.val68, 24
  %i.cg = and i64 %i.cf, 255
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i71 = load ptr, ptr %i.cj, align 8, !tbaa !49
  %i.ck = sext i32 %.pre-phi to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val3.i71, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30
  %i.cn = and i32 %.val67, 1
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = tail call i32 @If_DsdManCheckXY(ptr noundef %i.cd, i32 noundef %i.co, i32 noundef %i.am, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14 ; 2 uses
  store i32 %i.cp, ptr %i.h, align 4, !tbaa !91
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = add nsw i32 %.051.lcssa, 2
  %spec.select = select i1 %i.cq, i32 -1, i32 %i.cr
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.l, %bb.a, %bb.b
  %.155 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ], [ %i.bk, %bb.i ], [ %i.cb, %bb.l ], [ %spec.select, %bb.m ]
  ret i32 %.155
}

declare i32 @If_DsdManCheckXY(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @If_LutDecEval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 8 uses
  %i.d = load i64, ptr %i.c, align 4              ; 4 uses
  %i.e = and i64 %i.d, 4261412864
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %i.g = and i64 %i.d, -281470681755648           ; 2 uses
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = or disjoint i64 %i.h, 8192               ; 2 uses
  store i64 %i.i, ptr %i.c, align 4
  %i.j = lshr i64 %i.d, 24                        ; 2 uses
  %trunc = trunc i64 %i.j to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.w
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val66 = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %.val66, i64 8
  %.val66.val = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val66.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.s = load float, ptr %i.r, align 4, !tbaa !32
  %i.t = fptosi float %i.s to i32
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !97   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = trunc i64 %i.d to i32
  %i.z = lshr i32 %i.y, 24                        ; 3 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.05179 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %.05278 = phi i32 [ -1, %.lr.ph ], [ %.153, %bb.h ] ; 4 uses
  %i.ad = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !32
  %i.al = fptosi float %i.ak to i32               ; 3 uses
  %i.am = icmp slt i32 %.05278, %i.al
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = shl nuw i32 1, %i.an
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %.05278, %i.al
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i32 %.05179, 1
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = or i32 %i.ad, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.au = phi i32 [ %i.ao, %bb.e ], [ %i.at, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.153 = phi i32 [ %i.al, %bb.e ], [ %.05278, %bb.g ], [ %.05278, %bb.f ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.e ], [ %i.aq, %bb.g ], [ %.05179, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.lcssa76 = phi i32 [ 0, %bb.c ], [ %i.au, %bb.h ]
  %.052.lcssa = phi i32 [ -1, %bb.c ], [ %.153, %bb.h ] ; 3 uses
  %.051.lcssa = phi i32 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  store i32 %.lcssa76, ptr %i.a, align 4
  %.not63 = icmp sgt i32 %i.z, %i.x
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %notmask = shl nsw i32 -1, %i.x
  %i.av = and i32 %notmask, 65535
  %i.aw = xor i32 %i.av, 65535
  %i.ax = zext nneg i32 %i.aw to i64
end_hunk_3
