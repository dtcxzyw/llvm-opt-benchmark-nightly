inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::Bignum" = type { i16, i16, [128 x i32] }

@_ZZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEiE12kFive1_to_12 = internal unnamed_addr constant [12 x i32] [i32 5, i32 25, i32 125, i32 625, i32 3125, i32 15625, i32 78125, i32 390625, i32 1953125, i32 9765625, i32 48828125, i32 244140625], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZN14arrow_vendored17double_conversion6Bignum8RawBigitEi(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK14arrow_vendored17double_conversion6Bignum8RawBigitEi(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !10
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !3
  store i16 1, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !10
  %.not6 = icmp eq i64 %1, 0
  br i1 %.not6, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  store i16 %i.h, ptr %0, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.057 = phi i64 [ %1, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.c = phi i16 [ 0, %.lr.ph ], [ %i.h, %bb.c ]
  %i.d = trunc i64 %.057 to i32
  %i.e = and i32 %i.d, 268435455
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.e, ptr %i.f, align 4, !tbaa !3
  %i.g = lshr i64 %.057, 28                       ; 2 uses
  %i.h = add i16 %i.c, 1                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum12AssignBignumERKS1_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(516) initializes((2, 4)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !10
  %i.d = load i16, ptr %1, align 4, !tbaa !7      ; 4 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext nneg i16 %i.d to i64    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %min.iters.check = icmp ult i16 %i.d, 8
  %i.j = sub i64 %i.f, %i.g
  %diff.check = icmp ult i64 %i.j, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !tbaa !3
  store <4 x i32> %wide.load10, ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.prol
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.prol
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  store i16 %i.d, ptr %0, align 4, !tbaa !7
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.y, ptr %i.z, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !18
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 6 uses
  %4 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 6 uses
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2, !tbaa !10
  %i.b = icmp sgt i32 %2, 18
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit ] ; 20 uses
  %.032 = phi i32 [ %2, %.lr.ph ], [ %i.ec, %_ZN14arrow_vendored17double_conversion6Bignum9AddUInt64Em.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = sext i8 %i.i to i64
  %i.k = mul nsw i64 %i.f, 10
  %i.l = add nsw i64 %i.k, -528
  %i.m = add nsw i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = sext i8 %i.p to i64
  %i.r = mul nsw i64 %i.m, 10
  %i.s = add nsw i64 %i.r, -48
  %i.t = add nsw i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = sext i8 %i.w to i64
  %i.y = mul nsw i64 %i.t, 10
  %i.z = add nsw i64 %i.y, -48
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = sext i8 %i.ad to i64
  %i.af = mul nsw i64 %i.aa, 10
  %i.ag = add nsw i64 %i.af, -48
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %i.al = sext i8 %i.ak to i64
  %i.am = mul nsw i64 %i.ah, 10
  %i.an = add nsw i64 %i.am, -48
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = sext i8 %i.ar to i64
  %i.at = mul nsw i64 %i.ao, 10
  %i.au = add nsw i64 %i.at, -48
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = sext i8 %i.ay to i64
  %i.ba = mul nsw i64 %i.av, 10
  %i.bb = add nsw i64 %i.ba, -48
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = sext i8 %i.bf to i64
  %i.bh = mul nsw i64 %i.bc, 10
  %i.bi = add nsw i64 %i.bh, -48
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = sext i8 %i.bm to i64
  %i.bo = mul nsw i64 %i.bj, 10
  %i.bp = add nsw i64 %i.bo, -48
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  %i.bu = sext i8 %i.bt to i64
  %i.bv = mul nsw i64 %i.bq, 10
  %i.bw = add nsw i64 %i.bv, -48
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cb = sext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.bx, 10
  %i.cd = add nsw i64 %i.cc, -48
  %i.ce = add nsw i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.ci = sext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ce, 10
  %i.ck = add nsw i64 %i.cj, -48
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul nsw i64 %i.cl, 10
  %i.cr = add nsw i64 %i.cq, -48
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = sext i8 %i.cv to i64
  %i.cx = mul nsw i64 %i.cs, 10
  %i.cy = add nsw i64 %i.cx, -48
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion6Bignum5ClampEv:bb.a
  %.pr = load i16, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.a = icmp sgt i16 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.c = phi i16 [ %.pr, %.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %i.d = zext nneg i16 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i16 %i.c, -1                     ; 2 uses
  store i16 %i.j, ptr %0, align 4, !tbaa !7
  %i.k = icmp sgt i16 %i.c, 1
  br i1 %i.k, label %bb.b, label %.critedge.thread3, !llvm.loop !22

.critedge:                                        ; preds = %bb.a
  %i.l = icmp eq i16 %.pr, 0
  br i1 %i.l, label %.critedge.thread3, label %.critedge.thread

.critedge.thread3:                                ; preds = %bb.c, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2, !tbaa !10
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge.thread3, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum15AssignHexStringENS0_6VectorIKcEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) initializes((0, 4)) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  store i16 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 0, ptr %i.a, align 2, !tbaa !10
  %i.b = icmp sgt i32 %2, 896
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %.critedge.thread3.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = sext i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %.not = icmp eq i64 %.19, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 2 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 4 uses
  %.0816 = phi i64 [ 0, %.lr.ph ], [ %.19, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ]
  %i.f = phi i16 [ 0, %.lr.ph ], [ %i.ad, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ] ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = sext i8 %i.i to i32                      ; 4 uses
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.k, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.j, -97
  %or.cond3.i = icmp ult i32 %i.m, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.j, -87
  %i.o = zext nneg i32 %i.n to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

bb.g:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.j, -55
  %i.q = sext i32 %i.p to i64
  br label %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit

_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = zext nneg i32 %.017 to i64
  %i.s = shl i64 %.0.i, %i.r
  %i.t = or i64 %i.s, %.0816                      ; 3 uses
  %i.u = add nsw i32 %.017, 4
  %i.v = icmp sgt i32 %.017, 23
  br i1 %i.v, label %bb.h, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.h:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit
  %i.w = trunc i64 %i.t to i32
  %i.x = and i32 %i.w, 268435455
  %i.y = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.y, ptr %0, align 4, !tbaa !7
  %i.z = sext i16 %i.f to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !3
  %i.ab = add nsw i32 %.017, -24
  %i.ac = lshr i64 %i.t, 28
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit, %bb.h
  %i.ad = phi i16 [ %i.y, %bb.h ], [ %i.f, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 4 uses
  %.19 = phi i64 [ %i.ac, %bb.h ], [ %i.t, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ] ; 3 uses
  %.1 = phi i32 [ %i.ab, %bb.h ], [ %i.u, %_ZN14arrow_vendored17double_conversionL12HexCharValueEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.ae, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge, label %bb.c, !llvm.loop !31

bb.i:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %i.af = trunc i64 %.19 to i32
  %i.ag = and i32 %i.af, 268435455
  %i.ah = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.ah, ptr %0, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge
  %.pr.i = phi i16 [ %i.ah, %bb.i ], [ %i.ad, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit._crit_edge ] ; 3 uses
  %i.al = icmp sgt i16 %.pr.i, 0
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %i.an = phi i16 [ %.pr.i, %.lr.ph.i ], [ %i.au, %bb.l ] ; 3 uses
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i16 %i.an, -1                   ; 2 uses
  store i16 %i.au, ptr %0, align 4, !tbaa !7
  %i.av = icmp sgt i16 %i.an, 1
  br i1 %i.av, label %bb.k, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.j
  %i.aw = icmp eq i16 %.pr.i, 0
  br i1 %i.aw, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.l, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.k, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9AddBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  %.pre = load i16, ptr %0, align 4, !tbaa !7     ; 6 uses
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i16 %.pre to i32
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.l = icmp sgt i16 %.pre, 0
  br i1 %i.l, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.m = zext nneg i16 %.pre to i64               ; 6 uses
  %i.n = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i16 %.pre, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.o = sext i16 %i.d to i64
  %i.p = sext i16 %i.b to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %2 = and i64 %i.q, 4611686018427387896
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 32760                    ; 2 uses
  %i.r = and i64 %i.m, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.m, %index                     ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  %i.v = getelementptr i8, ptr %i.t, i64 -28
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !3
  %wide.load74 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %i.w = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %i.y = getelementptr i8, ptr %i.w, i64 -28
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !3
  store <4 x i32> %wide.load74, ptr %i.y, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = zext nneg i32 %i.h to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 0, i64 %i.ac, i1 false), !tbaa !3
  %i.ad = trunc i32 %i.h to i16                   ; 2 uses
  %i.ae = add i16 %.pre, %i.ad                    ; 2 uses
  store i16 %i.ae, ptr %0, align 4, !tbaa !7
  %i.af = sub i16 %i.b, %i.ad                     ; 2 uses
  store i16 %i.af, ptr %i.a, align 2, !tbaa !10
  %.pre66 = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ah, ptr %gep.i, align 4, !tbaa !3
  %i.ai = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ai, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !33

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.aj = phi i16 [ %i.d, %bb.a ], [ %.pre66, %.lr.ph20.i ]
  %i.ak = phi i16 [ %i.b, %bb.a ], [ %i.af, %.lr.ph20.i ]
  %i.al = phi i16 [ %.pre, %bb.a ], [ %i.ae, %.lr.ph20.i ] ; 4 uses
  %i.am = sext i16 %i.al to i32                   ; 4 uses
  %i.an = sext i16 %i.ak to i32                   ; 4 uses
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = sext i16 %i.aj to i32                   ; 3 uses
  %i.as = add nsw i32 %i.ar, %i.aq
  %.sroa.speculated35 = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.as)
  %reass.sub = sub nsw i32 %.sroa.speculated35, %i.an
  %i.at = icmp sgt i32 %reass.sub, 127
  br i1 %i.at, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.d:                                             ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.au = sub nsw i32 %i.ar, %i.an                ; 3 uses
  %i.av = icmp sgt i32 %i.au, %i.am
  br i1 %i.av, label %.lr.ph, label %.preheader42

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.aw = sext i16 %i.al to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = getelementptr i8, ptr %0, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.ay, i64 4
  %i.az = xor i32 %i.an, -1
  %i.ba = add nsw i32 %i.az, %i.ar
  %i.bb = sub nsw i32 %i.ba, %i.am
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.be, i1 false), !tbaa !3
  br label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %i.bf = icmp sgt i16 %i.ap, 0
  br i1 %i.bf, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader42
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bi = sext i32 %i.au to i64                   ; 2 uses
  %i.bj = sext i16 %i.al to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp eq i16 %i.ap, 1
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.f

.preheader.unr-lcssa:                             ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph47
  %indvars.iv58.epil.init = phi i64 [ %i.bi, %.lr.ph47 ], [ %indvars.iv.next59.1, %.preheader.unr-lcssa ] ; 4 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.046.epil.init = phi i32 [ 0, %.lr.ph47 ], [ %i.cw, %.preheader.unr-lcssa ]
  %lcmp.mod77 = trunc i16 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.bl = icmp slt i64 %indvars.iv58.epil.init, %i.bj
  br i1 %i.bl, label %bb.e, label %.preheader.epilog-lcssa

bb.e:                                             ; preds = %.epil.preheader
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv58.epil.init
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.e, %.epil.preheader
  %i.bo = phi i32 [ %i.bn, %bb.e ], [ 0, %.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add i32 %i.bo, %.046.epil.init
  %i.bs = add i32 %i.br, %i.bq                    ; 2 uses
  %i.bt = and i32 %i.bs, 268435455
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv58.epil.init
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %i.bv = lshr i32 %i.bs, 28
  %indvars.iv.next59.epil = add nsw i64 %indvars.iv58.epil.init, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.preheader.epilog-lcssa
  %.lcssa = phi i32 [ %i.cw, %.preheader.unr-lcssa ], [ %i.bv, %.preheader.epilog-lcssa ] ; 2 uses
  %indvars.iv.next59.lcssa = phi i64 [ %indvars.iv.next59.1, %.preheader.unr-lcssa ], [ %indvars.iv.next59.epil, %.preheader.epilog-lcssa ] ; 2 uses
  %i.bw = trunc nsw i64 %indvars.iv.next59.lcssa to i32
  %.not49 = icmp eq i32 %.lcssa, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %sext = shl i64 %indvars.iv.next59.lcssa, 32
  %i.by = ashr exact i64 %sext, 32
  %i.bz = sext i16 %i.al to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph47.new
  %indvars.iv58 = phi i64 [ %i.bi, %.lr.ph47.new ], [ %indvars.iv.next59.1, %bb.j ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.046 = phi i32 [ 0, %.lr.ph47.new ], [ %i.cw, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph47.new ], [ %niter.next.1, %bb.j ]
  %i.ca = icmp slt i64 %indvars.iv58, %i.bj
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv58
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cd = phi i32 [ %i.cc, %bb.g ], [ 0, %bb.f ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cd, %.046
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = and i32 %i.ch, 268435455
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv58
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = lshr i32 %i.ch, 28
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.cl = icmp slt i64 %indvars.iv.next59, %i.bj
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next59
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi i32 [ %i.cn, %bb.i ], [ 0, %bb.h ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = add i32 %i.co, %i.ck
  %i.ct = add i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = and i32 %i.ct, 268435455
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv.next59
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %i.cw = lshr i32 %i.ct, 28                      ; 3 uses
  %indvars.iv.next59.1 = add nsw i64 %indvars.iv58, 2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.f, !llvm.loop !34

bb.k:                                             ; preds = %.lr.ph52, %bb.m
  %indvars.iv63 = phi i64 [ %i.by, %.lr.ph52 ], [ %indvars.iv.next64, %bb.m ] ; 4 uses
  %.151 = phi i32 [ %.lcssa, %.lr.ph52 ], [ %i.de, %bb.m ]
  %i.cx = icmp slt i64 %indvars.iv63, %i.bz
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv63
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.da = phi i32 [ %i.cz, %bb.l ], [ 0, %bb.k ]
  %i.db = add i32 %i.da, %.151                    ; 2 uses
  %i.dc = and i32 %i.db, 268435455
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv63
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = lshr i32 %i.db, 28                      ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.df = trunc nsw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader42, %._crit_edge.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.bw, %.preheader ], [ %i.df, %._crit_edge.loopexit ], [ %i.au, %.preheader42 ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.141.lcssa, i32 %i.am)
  %i.dg = trunc i32 %.sroa.speculated to i16
  store i16 %i.dg, ptr %0, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 3 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 5 uses
  %i.i = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %2 = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.s = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.n, %index                     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %i.w = getelementptr i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %wide.load28 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %i.x = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %wide.load28, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.preheader, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29: ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.s, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.preheader:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader
  %i.ab = icmp sgt i32 %i.h, 0
  br i1 %i.ab, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext nneg i32 %i.h to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ae, i1 false), !tbaa !3
  br label %._crit_edge

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit ], [ %indvars.iv.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader29 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.af = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ag, ptr %gep, align 4, !tbaa !3
  %i.ah = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ah, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit, label %.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ai = trunc i32 %i.h to i16                   ; 2 uses
  %i.aj = add i16 %i.i, %i.ai
  store i16 %i.aj, ptr %0, align 4, !tbaa !7
  %i.ak = sub i16 %i.b, %i.ai
  store i16 %i.ak, ptr %i.a, align 2, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum14SubtractBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = icmp sgt i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sext i16 %i.d to i32
  %i.g = sext i16 %i.b to i32
  %i.h = sub nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = load i16, ptr %0, align 4, !tbaa !7      ; 5 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.h, %i.j
  %i.l = icmp sgt i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.b
  %i.m = icmp sgt i16 %i.i, 0
  br i1 %i.m, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.n = zext nneg i16 %i.i to i64                ; 6 uses
  %i.o = sext i32 %i.h to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp ult i16 %i.i, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.p = sext i16 %i.d to i64
  %i.q = sext i16 %i.b to i64
  %i.r = sub nsw i64 %i.p, %i.q
  %2 = and i64 %i.r, 4611686018427387896
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 32760                    ; 2 uses
  %i.s = and i64 %i.n, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.n, %index                     ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -12
  %i.w = getelementptr i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %wide.load46 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %i.x = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.t ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = getelementptr i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %wide.load46, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i ], [ %i.s, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = zext nneg i32 %i.h to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ad, i1 false), !tbaa !3
  %i.ae = trunc i32 %i.h to i16                   ; 2 uses
  %i.af = add i16 %i.i, %i.ae
  store i16 %i.af, ptr %0, align 4, !tbaa !7
  %i.ag = sub i16 %i.b, %i.ae                     ; 2 uses
  store i16 %i.ag, ptr %i.a, align 2, !tbaa !10
  %.pre = load i16, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ai, ptr %gep.i, align 4, !tbaa !3
  %i.aj = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aj, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !39

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.a, %.lr.ph20.i
  %i.ak = phi i16 [ %i.b, %bb.a ], [ %i.ag, %.lr.ph20.i ]
  %i.al = phi i16 [ %i.d, %bb.a ], [ %.pre, %.lr.ph20.i ]
  %i.am = sext i16 %i.al to i32
  %i.an = sext i16 %i.ak to i32
  %i.ao = sub nsw i32 %i.am, %i.an                ; 2 uses
  %i.ap = load i16, ptr %1, align 4, !tbaa !7     ; 4 uses
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = icmp sgt i16 %i.ap, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.au = sext i32 %i.ao to i64
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.as, i64 %i.au ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i16 %i.ap, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.d

.preheader.unr-lcssa:                             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ] ; 2 uses
  %.028.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bt, %.preheader.unr-lcssa ]
  %lcmp.mod48 = trunc i16 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.aw = load i32, ptr %gep.epil, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %.028.epil.init, %i.ay
  %i.ba = sub i32 %i.aw, %i.az                    ; 2 uses
  %i.bb = and i32 %i.ba, 268435455
  store i32 %i.bb, ptr %gep.epil, align 4, !tbaa !3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.br, %.preheader.unr-lcssa ], [ %i.ba, %.epil.preheader ]
  %i.bc = icmp sgt i32 %.lcssa, -1
  br i1 %i.bc, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %i.bd = zext nneg i32 %i.aq to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = sext i32 %i.ao to i64
  %invariant.gep44 = getelementptr [4 x i8], ptr %i.be, i64 %i.bf
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.028 = phi i32 [ 0, %.lr.ph.new ], [ %i.bt, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %gep, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %.028, %i.bi
  %i.bk = sub i32 %i.bg, %i.bj                    ; 2 uses
  %i.bl = and i32 %i.bk, 268435455
  store i32 %i.bl, ptr %gep, align 4, !tbaa !3
  %i.bm = lshr i32 %i.bk, 31
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bn = load i32, ptr %gep.1, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = sub i32 %i.bn, %i.bq                    ; 3 uses
  %i.bs = and i32 %i.br, 268435455
  store i32 %i.bs, ptr %gep.1, align 4, !tbaa !3
  %i.bt = lshr i32 %i.br, 31                      ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.d, !llvm.loop !40

bb.e:                                             ; preds = %.lr.ph32, %bb.e
  %indvars.iv36 = phi i64 [ %i.bd, %.lr.ph32 ], [ %indvars.iv.next37, %bb.e ] ; 2 uses
  %gep45 = getelementptr [4 x i8], ptr %invariant.gep44, i64 %indvars.iv36 ; 2 uses
  %i.bu = load i32, ptr %gep45, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  %i.bw = and i32 %i.bv, 268435455
  store i32 %i.bw, ptr %gep45, align 4, !tbaa !3
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.not = icmp sgt i32 %i.bv, -1
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.e, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit, %.preheader
  %.pr.i = load i16, ptr %0, align 4, !tbaa !7    ; 3 uses
  %i.bx = icmp sgt i16 %.pr.i, 0
  br i1 %i.bx, label %.lr.ph.i25, label %.critedge.i

.lr.ph.i25:                                       ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i25
  %i.bz = phi i16 [ %.pr.i, %.lr.ph.i25 ], [ %i.cg, %bb.g ] ; 3 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = add nsw i16 %i.bz, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !7
  %i.ch = icmp sgt i16 %i.bz, 1
  br i1 %i.ch, label %bb.f, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %._crit_edge
  %i.ci = icmp eq i16 %.pr.i, 0
  br i1 %i.ci, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.g, %.critedge.i
  store i16 0, ptr %i.a, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit: ; preds = %bb.f, %.critedge.i, %.critedge.thread3.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %_ZN14arrow_vendored17double_conversion6Bignum15BigitsShiftLeftEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i32 %1, 28
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti:bb.a

.preheader.i64:                                   ; preds = %.preheader.i64.unr-lcssa, %.epil.preheader147
  %.lcssa139 = phi i64 [ %i.cu, %.preheader.i64.unr-lcssa ], [ %i.cd, %.epil.preheader147 ] ; 2 uses
  %.not18.i65 = icmp eq i64 %.lcssa139, 0
  br i1 %.not18.i65, label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit74, label %.lr.ph20.i66

bb.s:                                             ; preds = %bb.s, %.lr.ph.i58.new
  %indvars.iv.i60 = phi i64 [ 0, %.lr.ph.i58.new ], [ %indvars.iv.next.i62.1, %bb.s ] ; 3 uses
  %.017.i61 = phi i64 [ 0, %.lr.ph.i58.new ], [ %i.cu, %bb.s ]
  %niter153 = phi i64 [ 0, %.lr.ph.i58.new ], [ %niter153.next.1, %bb.s ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i60 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, %i.t
  %i.ci = add nuw nsw i64 %i.ch, %.017.i61        ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 268435455
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !3
  %i.cl = lshr i64 %i.ci, 28
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = mul nuw nsw i64 %i.cp, %i.t
  %i.cr = add nuw nsw i64 %i.cq, %i.cl            ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 268435455
  store i32 %i.ct, ptr %i.cn, align 4, !tbaa !3
  %i.cu = lshr i64 %i.cr, 28                      ; 3 uses
  %indvars.iv.next.i62.1 = add nuw nsw i64 %indvars.iv.i60, 2 ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.preheader.i64.unr-lcssa, label %bb.s, !llvm.loop !26

.lr.ph20.i66:                                     ; preds = %.preheader.i64
  %exitcond25.i70 = icmp samesign ugt i16 %i.bt, 127
  br i1 %exitcond25.i70, label %bb.t, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i71

bb.t:                                             ; preds = %.lr.ph20.i66
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i71: ; preds = %.lr.ph20.i66
  %i.cv = trunc nuw nsw i64 %.lcssa139 to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %wide.trip.count.i59
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !3
  %i.cx = add nuw nsw i16 %i.bt, 1
  store i16 %i.cx, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit74, !llvm.loop !27

_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit74: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i71, %.preheader.i64, %bb.r, %bb.q, %bb.p, %bb.o
  %i.cy = ashr i32 %.24799, 1                     ; 2 uses
  %.not51 = icmp eq i32 %i.cy, 0
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.o, !llvm.loop !56

._crit_edge101.loopexit:                          ; preds = %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit74
  %.pre = load i16, ptr %0, align 4, !tbaa !7
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit
  %i.cz = phi i16 [ %.pre, %._crit_edge101.loopexit ], [ %i.bq, %_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej.exit ] ; 6 uses
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge101
  %i.db = sdiv i32 %.039.lcssa, 28
  %i.dc = load i16, ptr %i.d, align 2, !tbaa !10
  %i.dd = trunc i32 %i.db to i16
  %i.de = add i16 %i.dc, %i.dd
  store i16 %i.de, ptr %i.d, align 2, !tbaa !10
  %i.df = srem i32 %.039.lcssa, 28                ; 3 uses
  %i.dg = icmp sgt i16 %i.cz, 127
  br i1 %i.dg, label %bb.v, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i75

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #14
  unreachable

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i75: ; preds = %bb.u
  %i.dh = icmp sgt i16 %i.cz, 0
  br i1 %i.dh, label %.lr.ph.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i75
  %wide.trip.count.i.i = zext nneg i16 %i.cz to i64 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.dj = sub nsw i32 28, %i.df                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.cz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 32760    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.dn, %vector.body ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !3 ; 2 uses
  %i.dm = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.dn = lshr <4 x i32> %wide.load136, %broadcast.splat ; 3 uses
  %i.do = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.dm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dp = shufflevector <4 x i32> %i.dm, <4 x i32> %i.dn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dq = shl <4 x i32> %wide.load, %broadcast.splat135
  %i.dr = shl <4 x i32> %wide.load136, %broadcast.splat135
  %i.ds = add <4 x i32> %i.dq, %i.do
  %i.dt = add <4 x i32> %i.dr, %i.dp
  %i.du = and <4 x i32> %i.ds, splat (i32 268435455)
  %i.dv = and <4 x i32> %i.dt, splat (i32 268435455)
  store <4 x i32> %i.du, ptr %i.dk, align 4, !tbaa !3
  store <4 x i32> %i.dv, ptr %i.dl, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.dn, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.014.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.dz, %scalar.ph ] ; 2 uses
  %.not.i.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit, label %bb.w

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.014.i.i = phi i32 [ %i.dz, %scalar.ph ], [ %.014.i.i.ph, %scalar.ph.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i.i ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 2 uses
  %i.dz = lshr i32 %i.dy, %i.dj                   ; 2 uses
  %i.ea = shl i32 %i.dy, %i.df
  %i.eb = add i32 %i.ea, %.014.i.i
  %i.ec = and i32 %i.eb, 268435455
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !58

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %wide.trip.count.i.i
  store i32 %.lcssa, ptr %i.ed, align 4, !tbaa !3
  %i.ee = add nuw nsw i16 %i.cz, 1
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split: ; preds = %bb.b, %bb.w
  %.sink = phi i16 [ %i.ee, %bb.w ], [ 1, %bb.b ]
  store i16 %.sink, ptr %0, align 4, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit

_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi.exit.sink.split, %._crit_edge.i.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i75, %._crit_edge101
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10   ; 3 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i16 %i.d, %i.j
  br i1 %i.n, label %bb.c, label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.o, %i.b
  %i.q = icmp sgt i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.c
  %i.r = icmp sgt i16 %i.a, 0
  br i1 %i.r, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.s = zext nneg i16 %i.a to i64                ; 6 uses
  %i.t = sext i32 %i.o to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 12
  br i1 %min.iters.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.u = sext i16 %i.j to i64
  %i.v = sext i16 %i.d to i64
  %i.w = sub nsw i64 %i.u, %i.v
  %2 = and i64 %i.w, 4611686018427387896
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 32760                    ; 2 uses
  %i.x = and i64 %i.s, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 %i.s, %index                     ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3
  %wide.load83 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.y ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -12
  %i.ae = getelementptr i8, ptr %i.ac, i64 -28
  store <4 x i32> %wide.load, ptr %i.ad, align 4, !tbaa !3
  store <4 x i32> %wide.load83, ptr %i.ae, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i ], [ %i.x, %middle.block ]
  br label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = zext nneg i32 %i.o to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ai, i1 false), !tbaa !3
  %i.aj = trunc i32 %i.o to i16                   ; 2 uses
  %i.ak = add i16 %i.a, %i.aj                     ; 3 uses
  store i16 %i.ak, ptr %0, align 4, !tbaa !7
  %i.al = sub i16 %i.d, %i.aj                     ; 2 uses
  store i16 %i.al, ptr %i.c, align 2, !tbaa !10
  %.pre = load i16, ptr %1, align 4, !tbaa !7     ; 2 uses
  %.pre49 = load i16, ptr %i.i, align 2, !tbaa !10
  %.pre50 = sext i16 %i.ak to i32
  %.pre51 = sext i16 %i.al to i32
  %.pre53 = add nsw i32 %.pre51, %.pre50
  %.pre55 = sext i16 %.pre to i32
  %.pre57 = sext i16 %.pre49 to i32
  %.pre59 = add nsw i32 %.pre57, %.pre55
  br label %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit

_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.am = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.an, ptr %gep.i, align 4, !tbaa !3
  %i.ao = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %_ZN14arrow_vendored17double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !60

_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.b, %.lr.ph20.i
  %.pre-phi60 = phi i32 [ %i.l, %bb.b ], [ %.pre59, %.lr.ph20.i ]
  %.pre-phi54 = phi i32 [ %i.f, %bb.b ], [ %.pre53, %.lr.ph20.i ]
  %i.ap = phi i16 [ %i.g, %bb.b ], [ %.pre, %.lr.ph20.i ]
  %i.aq = phi i16 [ %i.a, %bb.b ], [ %i.ak, %.lr.ph20.i ] ; 2 uses
  %i.ar = icmp sgt i32 %.pre-phi54, %.pre-phi60
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit, %.lr.ph
  %i.as = phi i16 [ %i.ay, %.lr.ph ], [ %i.aq, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ]
  %.03141 = phi i16 [ %i.ax, %.lr.ph ], [ 0, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ]
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.aw = trunc i32 %i.av to i16
  %i.ax = add i16 %.03141, %i.aw                  ; 2 uses
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.av)
  %i.ay = load i16, ptr %0, align 4, !tbaa !7     ; 3 uses
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.c, align 2, !tbaa !10
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = load i16, ptr %1, align 4, !tbaa !7     ; 2 uses
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i16, ptr %i.i, align 2, !tbaa !10
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = icmp sgt i32 %i.bc, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit
  %.031.lcssa = phi i16 [ 0, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.lcssa40 = phi i16 [ %i.aq, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.ay, %.lr.ph ] ; 4 uses
  %.lcssa = phi i16 [ %i.ap, %_ZN14arrow_vendored17double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bk = sext i16 %.lcssa40 to i64
  %i.bl = getelementptr [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4     ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bp = sext i16 %.lcssa to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 5 uses
  %i.bt = icmp eq i16 %.lcssa, 1
  br i1 %i.bt, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bu = udiv i32 %i.bn, %i.bs                   ; 2 uses
  %i.bv = mul i32 %i.bu, %i.bs                    ; 0 uses
  %.recomposed = urem i32 %i.bn, %i.bs
  store i32 %.recomposed, ptr %i.bm, align 4, !tbaa !3
  %i.bw = trunc i32 %i.bu to i16
  %i.bx = add i16 %.031.lcssa, %i.bw              ; 3 uses
  %i.by = icmp sgt i16 %.lcssa40, 0
  br i1 %i.by, label %.lr.ph.i33, label %.critedge.i

.lr.ph.i33:                                       ; preds = %bb.e, %bb.f
  %i.bz = phi i16 [ %i.cg, %bb.f ], [ %.lcssa40, %bb.e ] ; 3 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.f:                                             ; preds = %.lr.ph.i33
  %i.cg = add nsw i16 %i.bz, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !7
  %i.ch = icmp sgt i16 %i.bz, 1
  br i1 %i.ch, label %.lr.ph.i33, label %.critedge.thread3.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.e
  %i.ci = icmp eq i16 %.lcssa40, 0
  br i1 %i.ci, label %.critedge.thread3.i, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.f, %.critedge.i
  store i16 0, ptr %i.c, align 2, !tbaa !10
  br label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cj = add i32 %i.bs, 1
  %i.ck = udiv i32 %i.bn, %i.cj                   ; 3 uses
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = add i16 %.031.lcssa, %i.cl              ; 2 uses
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.ck)
  %i.cn = add nsw i32 %i.ck, 1
  %i.co = mul i32 %i.cn, %i.bs
  %i.cp = icmp ugt i32 %i.co, %i.bn
  br i1 %i.cp, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread
  %.132 = phi i16 [ %i.dp, %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread ], [ %i.cm, %bb.g ] ; 3 uses
  %i.cq = load i16, ptr %1, align 4, !tbaa !7
  %i.cr = sext i16 %i.cq to i32
  %i.cs = load i16, ptr %i.i, align 2, !tbaa !10  ; 2 uses
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  %i.cu = add nsw i32 %i.ct, %i.cr                ; 5 uses
  %i.cv = load i16, ptr %0, align 4, !tbaa !7
  %i.cw = sext i16 %i.cv to i32
  %i.cx = load i16, ptr %i.c, align 2, !tbaa !10  ; 2 uses
  %i.cy = sext i16 %i.cx to i32                   ; 3 uses
  %i.cz = add nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp slt i32 %i.cu, %i.cz
  br i1 %i.da, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.db = icmp sgt i32 %i.cu, %i.cz
  br i1 %i.db, label %_ZN14arrow_vendored17double_conversion6Bignum5ClampEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.dc = tail call i16 @llvm.smin.i16(i16 %i.cx, i16 %i.cs)
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %.not.not.not.i.i78 = icmp sgt i32 %i.cu, %i.dd
  br i1 %.not.not.not.i.i78, label %.lr.ph82, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %.not.not.not.i.i = icmp sgt i32 %.024.i.i81, %i.dd
  br i1 %.not.not.not.i.i, label %.lr.ph82, label %_ZN14arrow_vendored17double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, !llvm.loop !62

.lr.ph82:                                         ; preds = %.preheader.i.i, %bb.i
  %.0.i.i80 = phi i32 [ %.1.i.i, %bb.i ], [ undef, %.preheader.i.i ]
  %.024.in.i.i79 = phi i32 [ %.024.i.i81, %bb.i ], [ %i.cu, %.preheader.i.i ] ; 5 uses
  %.024.i.i81 = add nsw i32 %.024.in.i.i79, -1    ; 4 uses
  %.not.i.i.i = icmp sgt i32 %.024.in.i.i79, %i.cu
  %i.de = icmp sle i32 %.024.in.i.i79, %i.ct
  %or.cond.i.i.i = or i1 %i.de, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Bignum11BigitOrZeroEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph82
  %i.df = sub nsw i32 %.024.i.i81, %i.ct
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dg
end_hunk_2
