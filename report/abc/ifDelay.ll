Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDelay?download=true
inline.NumInlined: 161
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@If_CutSopBalancePinDelaysInt:bb.a
.loopexit.us.i71:                                 ; preds = %.lr.ph.us.i73.preheader, %If_CutPinDelayMax.exit.loopexit.us.i70, %bb.n
  %.1.us.i72 = phi i32 [ %.075.us.i60, %bb.n ], [ %i.dy, %If_CutPinDelayMax.exit.loopexit.us.i70 ], [ %i.dy, %.lr.ph.us.i73.preheader ] ; 2 uses
  %indvar.next138 = add nuw nsw i32 %indvar137, 1 ; 2 uses
  %exitcond142.not = icmp eq i32 %indvar.next138, %.096108
  br i1 %exitcond142.not, label %If_LogCounterPinDelays.exit76, label %.preheader.split.us.i59, !llvm.loop !63

If_CutPinDelayMax.exit.loopexit.us.i70:           ; preds = %bb.m
  store i64 %.1.i.us.i67, ptr %i.de, align 8, !tbaa !61
  %i.dy = add nsw i32 %.075.us.i60, -1            ; 3 uses
  %i.dz = icmp slt i32 %.06674.us.i61, %i.dy
  br i1 %i.dz, label %.lr.ph.us.i73.preheader, label %.loopexit.us.i71

.lr.ph.us.i73.preheader:                          ; preds = %If_CutPinDelayMax.exit.loopexit.us.i70
  %i.ea = add i32 %.075.us.i60, %.reass175
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep134, ptr noundef nonnull align 4 dereferenceable(1) %scevgep136, i64 %i.ed, i1 false), !tbaa !30
  %i.ee = shl nuw nsw i64 %i.eb, 3
  %i.ef = add nuw nsw i64 %i.ee, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep139, ptr noundef nonnull align 8 dereferenceable(1) %scevgep141, i64 %i.ef, i1 false), !tbaa !61
  br label %.loopexit.us.i71

.preheader.split.i50:                             ; preds = %.preheader.i48, %.loopexit.i54
  %indvar128 = phi i32 [ %indvar.next129, %.loopexit.i54 ], [ 0, %.preheader.i48 ] ; 2 uses
  %.075.i51 = phi i32 [ %.1.i55, %.loopexit.i54 ], [ %i.cp, %.preheader.i48 ] ; 4 uses
  %.06674.i52 = phi i32 [ %i.el, %.loopexit.i54 ], [ %.096108, %.preheader.i48 ] ; 3 uses
  %i.eg = zext i32 %.06674.i52 to i64             ; 4 uses
  %i.eh = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %scevgep130 = getelementptr i8, ptr %i.b, i64 %i.eh
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.eh
  %.reass173 = add i32 %indvar128, %invariant.op174
  %i.ei = shl nuw nsw i64 %i.eg, 2                ; 2 uses
  %scevgep125 = getelementptr nuw i8, ptr %i.d, i64 %i.ei
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.ei
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.eg ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !30 ; 3 uses
  %i.el = add nsw i32 %.06674.i52, -1             ; 2 uses
  %i.em = zext nneg i32 %i.el to i64              ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.em ; 3 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !30 ; 4 uses
  %i.ep = icmp slt i32 %i.ek, %i.eo
  br i1 %i.ep, label %If_LogCounterPinDelays.exit76, label %bb.o

bb.o:                                             ; preds = %.preheader.split.i50
  %i.eq = icmp sgt i32 %i.ek, %i.eo
  br i1 %i.eq, label %bb.p, label %If_CutPinDelayMax.exit.i53

bb.p:                                             ; preds = %bb.o
  store i32 %i.eo, ptr %i.ej, align 4, !tbaa !30
  store i32 %i.ek, ptr %i.en, align 4, !tbaa !30
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eg ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !61
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.em ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !61
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !61
  store i64 %i.es, ptr %i.et, align 8, !tbaa !61
  br label %.loopexit.i54

If_CutPinDelayMax.exit.i53:                       ; preds = %bb.o
  %i.ev = add nsw i32 %i.eo, 1
  store i32 %i.ev, ptr %i.en, align 4, !tbaa !30
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.em
  store i64 0, ptr %i.ew, align 8, !tbaa !61
  %i.ex = add nsw i32 %.075.i51, -1               ; 3 uses
  %i.ey = icmp slt i32 %.06674.i52, %i.ex
  br i1 %i.ey, label %.lr.ph.i56.preheader, label %.loopexit.i54

.lr.ph.i56.preheader:                             ; preds = %If_CutPinDelayMax.exit.i53
  %i.ez = add i32 %.075.i51, %.reass173
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = add nuw nsw i64 %i.fb, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep125, ptr noundef nonnull align 4 dereferenceable(1) %scevgep127, i64 %i.fc, i1 false), !tbaa !30
  %i.fd = shl nuw nsw i64 %i.fa, 3
  %i.fe = add nuw nsw i64 %i.fd, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep130, ptr noundef nonnull align 8 dereferenceable(1) %scevgep132, i64 %i.fe, i1 false), !tbaa !61
  br label %.loopexit.i54

.loopexit.i54:                                    ; preds = %.lr.ph.i56.preheader, %If_CutPinDelayMax.exit.i53, %bb.p
  %.1.i55 = phi i32 [ %.075.i51, %bb.p ], [ %i.ex, %If_CutPinDelayMax.exit.i53 ], [ %i.ex, %.lr.ph.i56.preheader ] ; 2 uses
  %indvar.next129 = add nuw i32 %indvar128, 1     ; 2 uses
  %exitcond133.not = icmp eq i32 %indvar.next129, %.096108
  br i1 %exitcond133.not, label %If_LogCounterPinDelays.exit76, label %.preheader.split.i50, !llvm.loop !63

If_LogCounterPinDelays.exit76:                    ; preds = %.preheader.split.i50, %.loopexit.i54, %.preheader.split.us.i59, %.loopexit.us.i71, %If_LogPinDelaysMulti.exit
  %.2.i47 = phi i32 [ %i.cp, %If_LogPinDelaysMulti.exit ], [ %.1.us.i72, %.loopexit.us.i71 ], [ %.075.us.i60, %.preheader.split.us.i59 ], [ %.1.i55, %.loopexit.i54 ], [ %.075.i51, %.preheader.split.i50 ] ; 6 uses
  %i.ff = load i32, ptr %i.d, align 16, !tbaa !30
  %i.fg = icmp sgt i32 %.2.i47, 1
  %i.fh = zext i1 %i.fg to i32
  %i.fi = add nsw i32 %i.ff, %i.fh                ; 4 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.critedge, label %bb.b, !llvm.loop !66

.critedge:                                        ; preds = %If_LogCounterPinDelays.exit76
  %i.fj = icmp sgt i32 %.2.i47, 1
  br i1 %i.fj, label %.lr.ph.i77, label %If_LogPinDelaysMulti.exit92

.lr.ph.i77:                                       ; preds = %.critedge
  %i.fk = icmp sgt i32 %3, 0
  %wide.trip.count.i.i78 = zext nneg i32 %3 to i64
  %i.fl = zext nneg i32 %.2.i47 to i64            ; 2 uses
  br i1 %i.fk, label %.lr.ph.preheader.i.us.i81, label %If_CutPinDelayMax.exit.preheader.i79

If_CutPinDelayMax.exit.preheader.i79:             ; preds = %.lr.ph.i77
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add nsw i64 %i.fm, -16
  %i.fo = add nsw i32 %.2.i47, -2
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = sub nsw i64 %i.fn, %i.fq
  %scevgep.i80 = getelementptr i8, ptr %i.b, i64 %i.fr
  %i.fs = add nsw i32 %.2.i47, -1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i80, i8 0, i64 %i.fu, i1 false), !tbaa !61
  br label %If_LogPinDelaysMulti.exit92

.lr.ph.preheader.i.us.i81:                        ; preds = %.lr.ph.i77, %If_CutPinDelayMax.exit.loopexit.us.i91
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %If_CutPinDelayMax.exit.loopexit.us.i91 ], [ %i.fl, %.lr.ph.i77 ] ; 3 uses
  %indvars.iv.next.i83 = add nsw i64 %indvars.iv.i82, -1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i83
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !61
  %i.fx = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.i82
  %i.fy = getelementptr i8, ptr %i.fx, i64 -16    ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !61
  br label %.lr.ph.i.us.i84

.lr.ph.i.us.i84:                                  ; preds = %bb.r, %.lr.ph.preheader.i.us.i81
  %indvars.iv.i.us.i85 = phi i64 [ 0, %.lr.ph.preheader.i.us.i81 ], [ %indvars.iv.next.i.us.i89, %bb.r ] ; 2 uses
  %.01213.i.us.i86 = phi i64 [ 0, %.lr.ph.preheader.i.us.i81 ], [ %.1.i.us.i88, %bb.r ] ; 2 uses
  %i.ga = shl nuw nsw i64 %indvars.iv.i.us.i85, 2
  %i.gb = and i64 %i.ga, 4294967292               ; 3 uses
  %i.gc = lshr i64 %i.fw, %i.gb
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 15
  %i.gf = lshr i64 %i.fz, %i.gb
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = and i32 %i.gg, 15
  %i.gi = tail call i32 @llvm.umax.i32(i32 %i.ge, i32 %i.gh) ; 2 uses
  %.not.i.us.i87 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.us.i87, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.us.i84
  %i.gj = tail call i32 @llvm.umin.i32(i32 %i.gi, i32 14)
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = shl i64 %i.gl, %i.gb
  %i.gn = or i64 %i.gm, %.01213.i.us.i86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.us.i84
  %.1.i.us.i88 = phi i64 [ %.01213.i.us.i86, %.lr.ph.i.us.i84 ], [ %i.gn, %bb.q ] ; 2 uses
  %indvars.iv.next.i.us.i89 = add nuw nsw i64 %indvars.iv.i.us.i85, 1 ; 2 uses
  %exitcond.not.i.us.i90 = icmp eq i64 %indvars.iv.next.i.us.i89, %wide.trip.count.i.i78
  br i1 %exitcond.not.i.us.i90, label %If_CutPinDelayMax.exit.loopexit.us.i91, label %.lr.ph.i.us.i84, !llvm.loop !62

If_CutPinDelayMax.exit.loopexit.us.i91:           ; preds = %bb.r
  store i64 %.1.i.us.i88, ptr %i.fy, align 8, !tbaa !61
  %i.go = icmp sgt i64 %indvars.iv.i82, 2
  br i1 %i.go, label %.lr.ph.preheader.i.us.i81, label %If_LogPinDelaysMulti.exit92, !llvm.loop !65

If_LogPinDelaysMulti.exit92:                      ; preds = %If_CutPinDelayMax.exit.loopexit.us.i91, %.preheader, %.critedge, %If_CutPinDelayMax.exit.preheader.i79
  %.0.lcssa169 = phi i32 [ 0, %.preheader ], [ %i.fi, %If_CutPinDelayMax.exit.preheader.i79 ], [ %i.fi, %.critedge ], [ %i.fi, %If_CutPinDelayMax.exit.loopexit.us.i91 ]
  %i.gp = load i64, ptr %i.b, align 16, !tbaa !61
  store i64 %i.gp, ptr %4, align 8, !tbaa !61
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
  %i.d = shl nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 2)
  %i.e = add <2 x i64> %step.add, splat (i64 8)
  %i.f = shl nuw <2 x i64> splat (i64 1), %i.d
  %i.g = shl nuw <2 x i64> splat (i64 1), %i.e
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 16, !tbaa !61
  store <2 x i64> %i.g, ptr %i.i, align 16, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %iter.check, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader36 ] ; 3 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2
  %i.l = shl nuw i64 1, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.l, ptr %i.m, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.a
  %i.n = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.a)
  br label %If_CutPinDelayTranslate.exit

iter.check:                                       ; preds = %.lr.ph, %middle.block
  %i.o = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull %i.a) ; 3 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %min.iters.check14 = icmp ult i32 %2, 4
  br i1 %min.iters.check14, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i32 %2, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph16

vector.ph16:                                      ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count, 12
  %n.vec17 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next21, %vector.body18 ] ; 2 uses
  %vec.ind20 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph16 ], [ %vec.ind.next22, %vector.body18 ] ; 2 uses
  %i.r = shl nuw nsw <16 x i64> %vec.ind20, splat (i64 2)
  %i.s = and <16 x i64> %i.r, splat (i64 4294967292)
  %i.t = lshr <16 x i64> %broadcast.splat, %i.s
  %i.u = trunc <16 x i64> %i.t to <16 x i8>
  %i.v = and <16 x i8> %i.u, splat (i8 15)
  %i.w = add nsw <16 x i8> %i.v, splat (i8 -1)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %index19
  store <16 x i8> %i.w, ptr %i.x, align 1, !tbaa !58
  %index.next21 = add nuw i64 %index19, 16        ; 2 uses
  %vec.ind.next22 = add nuw nsw <16 x i64> %vec.ind20, splat (i64 16)
  %i.y = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.y, label %middle.block23, label %vector.body18, !llvm.loop !69

middle.block23:                                   ; preds = %vector.body18
  %cmp.n24 = icmp eq i64 %n.vec17, %wide.trip.count
  br i1 %cmp.n24, label %If_CutPinDelayTranslate.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block23
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec17, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec25 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert26 = insertelement <4 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat27 = shufflevector <4 x i64> %broadcast.splatinsert26, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat29 = shufflevector <4 x i64> %broadcast.splatinsert28, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat29, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind31 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next33, %vec.epilog.vector.body ] ; 2 uses
  %i.z = shl nuw nsw <4 x i64> %vec.ind31, splat (i64 2)
  %i.aa = and <4 x i64> %i.z, splat (i64 4294967292)
  %i.ab = lshr <4 x i64> %broadcast.splat27, %i.aa
  %i.ac = trunc <4 x i64> %i.ab to <4 x i8>
  %i.ad = and <4 x i8> %i.ac, splat (i8 15)
  %i.ae = add nsw <4 x i8> %i.ad, splat (i8 -1)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %index30
  store <4 x i8> %i.ae, ptr %i.af, align 1, !tbaa !58
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %vec.ind.next33 = add nuw nsw <4 x i64> %vec.ind31, splat (i64 4)
  %i.ag = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %n.vec25, %wide.trip.count
  br i1 %cmp.n34, label %If_CutPinDelayTranslate.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec17, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = lshr i64 %i.p, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 15
  %i.am = add nsw i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_CutPinDelayTranslate.exit, label %.lr.ph.i, !llvm.loop !72

If_CutPinDelayTranslate.exit:                     ; preds = %.lr.ph.i, %middle.block23, %vec.epilog.middle.block, %._crit_edge
  %i.ao = phi i32 [ %i.n, %._crit_edge ], [ %i.o, %middle.block23 ], [ %i.o, %vec.epilog.middle.block ], [ %i.o, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.ao
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @If_CutSopBalancePinDelays(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [15 x i64], align 16              ; 7 uses
  %i.c = alloca [15 x i32], align 16              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i64, ptr %i.d, align 4              ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = lshr i32 %i.f, 24                        ; 7 uses
  %trunc = trunc nuw i32 %i.g to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.f
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !58
  %i.h = getelementptr i8, ptr %0, i64 40
  %.val21 = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %.val21, i64 8
  %.val21.val = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val21.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.p = load float, ptr %i.o, align 4, !tbaa !32
  %i.q = fptosi float %i.p to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = lshr i64 %i.e, 24
  %i.t = and i64 %i.s, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr i8, ptr %1, i64 24
  %.val22 = load i32, ptr %i.w, align 8, !tbaa !37
  %i.x = ashr i32 %.val22, 1
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val23 = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %.val23, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val24 = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ac = icmp eq i32 %.val24, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %._crit_edge.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.g, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = sext i32 %i.ai to i64
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
end_hunk_0
