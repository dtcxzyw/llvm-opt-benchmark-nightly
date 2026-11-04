Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/canon_600?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZN6LibRaw18canon_600_fixed_wbEiE3mul = internal unnamed_addr constant [4 x [5 x i16]] [[5 x i16] [i16 667, i16 358, i16 397, i16 565, i16 452], [5 x i16] [i16 731, i16 390, i16 367, i16 499, i16 517], [5 x i16] [i16 1119, i16 396, i16 348, i16 448, i16 537], [5 x i16] [i16 1399, i16 485, i16 431, i16 508, i16 688]], align 16
@_ZZN6LibRaw15canon_600_coeffEvE5table = internal unnamed_addr constant [6 x [12 x i16]] [[12 x i16] [i16 -190, i16 702, i16 -1878, i16 2390, i16 1861, i16 -1349, i16 905, i16 -393, i16 -432, i16 944, i16 2617, i16 -2105], [12 x i16] [i16 -1203, i16 1715, i16 -1136, i16 1648, i16 1388, i16 -876, i16 267, i16 245, i16 -1641, i16 2153, i16 3921, i16 -3409], [12 x i16] [i16 -615, i16 1127, i16 -1563, i16 2075, i16 1437, i16 -925, i16 509, i16 3, i16 -756, i16 1268, i16 2519, i16 -2007], [12 x i16] [i16 -190, i16 702, i16 -1886, i16 2398, i16 2153, i16 -1641, i16 763, i16 -251, i16 -452, i16 964, i16 3040, i16 -2528], [12 x i16] [i16 -190, i16 702, i16 -1878, i16 2390, i16 1861, i16 -1349, i16 905, i16 -393, i16 -432, i16 944, i16 2617, i16 -2105], [12 x i16] [i16 -807, i16 1319, i16 -1785, i16 2297, i16 1388, i16 -876, i16 769, i16 -257, i16 -230, i16 742, i16 2067, i16 -1555]], align 16
@_ZZN6LibRaw17canon_600_correctEvE3mul = internal unnamed_addr constant [4 x [2 x i16]] [[2 x i16] [i16 1141, i16 1145], [2 x i16] [i16 1128, i16 1109], [2 x i16] [i16 1178, i16 1149], [2 x i16] [i16 1128, i16 1109]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6LibRaw18canon_600_fixed_wbEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) initializes((153268, 153284)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not26 = icmp slt i32 %1, 1399
  br i1 %.not26, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.not26.1 = icmp slt i32 %1, 1119
  br i1 %.not26.1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not26.2 = icmp slt i32 %1, 731
  br i1 %.not26.2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp sgt i32 %1, 667
  br i1 %.not27, label %.thread41, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %.not27.1.not = icmp eq i32 %1, 731
  br i1 %.not27.1.not, label %._crit_edge, label %.thread41

bb.f:                                             ; preds = %bb.b
  %.not27.2.not = icmp eq i32 %1, 1119
  br i1 %.not27.2.not, label %._crit_edge, label %.thread41

.thread41:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.lcssa39 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.f ] ; 2 uses
  %.023.lcssa = phi i64 [ 2, %bb.e ], [ 1, %bb.d ], [ 3, %bb.f ] ; 2 uses
  %i.a = getelementptr inbounds nuw [10 x i8], ptr @_ZZN6LibRaw18canon_600_fixed_wbEiE3mul, i64 %.lcssa39
  %i.b = load i16, ptr %i.a, align 2, !tbaa !9
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %i.d = sub nsw i32 %1, %i.c
  %i.e = sitofp i32 %i.d to float
  %i.f = getelementptr inbounds nuw [10 x i8], ptr @_ZZN6LibRaw18canon_600_fixed_wbEiE3mul, i64 %.023.lcssa
  %i.g = load i16, ptr %i.f, align 2, !tbaa !9
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.h, %i.c
  %i.j = sitofp i32 %i.i to float
  %i.k = fdiv float %i.e, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %.thread41
  %.pre-phi35 = phi i64 [ %.lcssa39, %.thread41 ], [ 0, %bb.d ], [ 2, %bb.f ], [ 1, %bb.e ], [ 3, %bb.a ]
  %.pre-phi = phi i64 [ %.023.lcssa, %.thread41 ], [ 0, %bb.d ], [ 2, %bb.f ], [ 1, %bb.e ], [ 3, %bb.a ]
  %.0 = phi float [ %i.k, %.thread41 ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [10 x i8], ptr @_ZZN6LibRaw18canon_600_fixed_wbEiE3mul, i64 %.pre-phi
  %i.m = fsub float 1.000000e+00, %.0
  %i.n = getelementptr inbounds nuw [10 x i8], ptr @_ZZN6LibRaw18canon_600_fixed_wbEiE3mul, i64 %.pre-phi35
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.r = load <4 x i16>, ptr %i.o, align 2, !tbaa !9
  %i.s = sitofp <4 x i16> %i.r to <4 x float>
  %i.t = load <4 x i16>, ptr %i.p, align 2, !tbaa !9
  %i.u = sitofp <4 x i16> %i.t to <4 x float>
  %i.v = insertelement <4 x float> poison, float %i.m, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = fmul <4 x float> %i.w, %i.u
  %i.y = insertelement <4 x float> poison, float %.0, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.s, <4 x float> %i.x)
  %i.ab = fdiv <4 x float> splat (float 1.000000e+00), %i.aa
  store <4 x float> %i.ab, ptr %i.q, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZN6LibRaw15canon_600_colorEPii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.b = load float, ptr %i.a, align 8, !tbaa !72
  %i.c = fcmp une float %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.e, -104
  br i1 %i.f, label %.thread43.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %i.e, 12
  br i1 %i.g, label %.thread43.sink.split, label %.thread43

bb.d:                                             ; preds = %bb.a
  %i.h = add i32 %i.e, -462
  %or.cond39 = icmp ult i32 %i.h, -726
  br i1 %or.cond39, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i32 %i.e, -50
  br i1 %i.i, label %.thread43.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %i.e, 307
  br i1 %i.j, label %.thread52, label %bb.g

.thread52:                                        ; preds = %bb.f
  store i32 307, ptr %i.d, align 4, !tbaa !73
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i32 %i.e, 197
  br i1 %i.k, label %.thread43, label %bb.h

.thread43.sink.split:                             ; preds = %bb.e, %bb.c, %bb.b
  %.sink = phi i32 [ 12, %bb.c ], [ -104, %bb.b ], [ -50, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %i.d, align 4, !tbaa !73
  br label %.thread43

.thread43:                                        ; preds = %.thread43.sink.split, %bb.c, %bb.g
  %i.l = phi i32 [ %i.e, %bb.g ], [ %i.e, %bb.c ], [ %.sink, %.thread43.sink.split ]
  %.246 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 1, %.thread43.sink.split ]
  %i.m = mul nsw i32 %i.l, 398
  %i.n = ashr i32 %i.m, 10
  %i.o = sub nsw i32 -38, %i.n
  br label %bb.i

bb.h:                                             ; preds = %.thread52, %bb.g
  %.254 = phi i32 [ 1, %.thread52 ], [ 0, %bb.g ]
  %i.p = phi i32 [ 307, %.thread52 ], [ %i.e, %bb.g ]
  %i.q = mul nuw nsw i32 %i.p, 48
  %i.r = lshr i32 %i.q, 10
  %i.s = add nuw nsw i32 %i.r, -123
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread43
  %.245 = phi i32 [ %.246, %.thread43 ], [ %.254, %bb.h ]
  %i.t = phi i32 [ %i.o, %.thread43 ], [ %i.s, %bb.h ] ; 4 uses
  %i.u = sub nsw i32 %i.t, %2
  %i.v = load i32, ptr %1, align 4, !tbaa !73     ; 3 uses
  %.not = icmp sgt i32 %i.u, %i.v
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i32 %i.t, 20
  %i.x = icmp slt i32 %i.w, %i.v
  %i.y = icmp ne i32 %.245, 0
  %or.cond = or i1 %i.y, %i.x
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = sub nsw i32 %i.t, %i.v                   ; 2 uses
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = shl nsw i32 %2, 2
  %.not38 = icmp slt i32 %i.aa, %i.ab
  br i1 %.not38, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.z, i32 -20)
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %2)
  %i.ac = sub nsw i32 %i.t, %spec.select
  store i32 %i.ac, ptr %1, align 4, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.d, %bb.l
  %.033 = phi i32 [ 0, %bb.j ], [ 1, %bb.l ], [ 2, %bb.d ], [ 2, %bb.k ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw17canon_600_auto_wbEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 23 uses
  %i.b = alloca [2 x [8 x i32]], align 16         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 153516
  %i.e = load float, ptr %i.d, align 4, !tbaa !85
  %i.f = fpext float %i.e to double
  %i.g = fadd double %i.f, 5.000000e-01
  %i.h = fptosi double %i.g to i32                ; 3 uses
  %i.i = icmp slt i32 %i.h, 10
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %i.h, 12
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = mul nsw i32 %i.h, -20
  %i.k = add nsw i32 %.neg, 280
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.077 = phi i32 [ %i.k, %bb.c ], [ 150, %bb.a ], [ 20, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.m = load float, ptr %i.l, align 8, !tbaa !72
  %i.n = fcmp une float %i.m, 0.000000e+00        ; 3 uses
  %spec.select = select i1 %i.n, i32 80, i32 %.077 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !74   ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -14
  %i.s = icmp ugt i16 %i.p, 28
  br i1 %i.s, label %.preheader97.lr.ph, label %._crit_edge108.split

.preheader97.lr.ph:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !75   ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = icmp ugt i16 %i.u, 10
  %i.x = shl nuw nsw i32 %spec.select, 2          ; 2 uses
  br i1 %i.w, label %.preheader97.lr.ph.split, label %._crit_edge108.split

.preheader97.lr.ph.split:                         ; preds = %.preheader97.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !76  ; 8 uses
  %i.ac = load i16, ptr %i.aa, align 4, !tbaa !77
  %i.ad = zext i16 %i.ac to i32                   ; 6 uses
  %i.ae = load i16, ptr %i.z, align 2, !tbaa !78
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  %i.ag = load i32, ptr %i.y, align 8, !tbaa !79  ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.lr.ph.split, %._crit_edge
  %.sroa.0136.0 = phi i32 [ 0, %.preheader97.lr.ph.split ], [ %.sroa.0136.2, %._crit_edge ]
  %.sroa.5137.0 = phi i32 [ 0, %.preheader97.lr.ph.split ], [ %.sroa.5137.2, %._crit_edge ]
  %.076107 = phi i32 [ 14, %.preheader97.lr.ph.split ], [ %i.jz, %._crit_edge ] ; 6 uses
  %i.at = lshr i32 %.076107, %i.ad
  %i.au = mul nuw nsw i32 %i.at, %i.af            ; 2 uses
  %i.av = shl nuw nsw i32 %.076107, 1
  %i.aw = and i32 %i.av, 12                       ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = lshr i32 %i.ag, %i.ax
  %i.az = and i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ba
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba
  %i.bc = shl nuw nsw i32 %i.aw, 1
  %i.bd = or disjoint i32 %i.bc, 2
  %i.be = lshr i32 %i.ag, %i.bd
  %i.bf = and i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %invariant.gep173 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bg
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bg
  %i.bi = or disjoint i32 %.076107, 1             ; 2 uses
  %i.bj = lshr i32 %i.bi, %i.ad
  %i.bk = mul nuw nsw i32 %i.bj, %i.af            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bi, 1
  %i.bm = and i32 %i.bl, 14                       ; 2 uses
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = lshr i32 %i.ag, %i.bn
  %i.bp = and i32 %i.bo, 3
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %invariant.gep175 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bq
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bq
  %i.bs = shl nuw nsw i32 %i.bm, 1
  %i.bt = or disjoint i32 %i.bs, 2
  %i.bu = lshr i32 %i.ag, %i.bt
  %i.bv = and i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %invariant.gep177 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bw
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bw
  %i.by = add nuw nsw i32 %.076107, 2             ; 2 uses
  %i.bz = lshr i32 %i.by, %i.ad
  %i.ca = mul nuw nsw i32 %i.bz, %i.af            ; 2 uses
  %i.cb = shl nuw nsw i32 %i.by, 1
  %i.cc = and i32 %i.cb, 12                       ; 2 uses
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = lshr i32 %i.ag, %i.cd
  %i.cf = and i32 %i.ce, 3                        ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %invariant.gep179 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cg
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = shl nuw nsw i32 %i.cc, 1
  %i.cl = or disjoint i32 %i.ck, 2
  %i.cm = lshr i32 %i.ag, %i.cl
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %invariant.gep181 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.co
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = add nuw nsw i32 %.076107, 3             ; 2 uses
  %i.ct = lshr i32 %i.cs, %i.ad
  %i.cu = mul nuw nsw i32 %i.ct, %i.af            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cs, 1
  %i.cw = and i32 %i.cv, 14                       ; 2 uses
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = lshr i32 %i.ag, %i.cx
  %i.cz = and i32 %i.cy, 3                        ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %invariant.gep183 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.da
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = shl nuw nsw i32 %i.cw, 1
  %i.df = or disjoint i32 %i.de, 2
  %i.dg = lshr i32 %i.ag, %i.df
  %i.dh = and i32 %i.dg, 3                        ; 2 uses
  %i.di = zext nneg i32 %i.dh to i64
  %invariant.gep185 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.di
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader97, %.loopexit93
  %.sroa.0136.1 = phi i32 [ %.sroa.0136.0, %.preheader97 ], [ %.sroa.0136.2, %.loopexit93 ] ; 15 uses
  %.sroa.5137.1 = phi i32 [ %.sroa.5137.0, %.preheader97 ], [ %.sroa.5137.2, %.loopexit93 ] ; 15 uses
  %.075106 = phi i32 [ 10, %.preheader97 ], [ %i.jx, %.loopexit93 ] ; 3 uses
  %i.dm = lshr i32 %.075106, %i.ad                ; 4 uses
  %i.dn = add nuw nsw i32 %i.au, %i.dm
  %i.do = zext nneg i32 %i.dn to i64
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.do
  %i.dp = load i16, ptr %gep, align 2, !tbaa !9
  %i.dq = zext i16 %i.dp to i32
  store i32 %i.dq, ptr %i.bb, align 4, !tbaa !73
  %i.dr = or disjoint i32 %.075106, 1
  %i.ds = lshr i32 %i.dr, %i.ad                   ; 4 uses
  %i.dt = add nuw nsw i32 %i.au, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %gep174 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep173, i64 %i.du
  %i.dv = load i16, ptr %gep174, align 2, !tbaa !9
  %i.dw = zext i16 %i.dv to i32
  store i32 %i.dw, ptr %i.bh, align 4, !tbaa !73
  %i.dx = add nuw nsw i32 %i.bk, %i.dm
  %i.dy = zext nneg i32 %i.dx to i64
  %gep176 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep175, i64 %i.dy
  %i.dz = load i16, ptr %gep176, align 2, !tbaa !9
  %i.ea = zext i16 %i.dz to i32
  store i32 %i.ea, ptr %i.br, align 4, !tbaa !73
  %i.eb = add nuw nsw i32 %i.bk, %i.ds
  %i.ec = zext nneg i32 %i.eb to i64
  %gep178 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep177, i64 %i.ec
  %i.ed = load i16, ptr %gep178, align 2, !tbaa !9
  %i.ee = zext i16 %i.ed to i32
  store i32 %i.ee, ptr %i.bx, align 4, !tbaa !73
  %i.ef = add nuw nsw i32 %i.ca, %i.dm
  %i.eg = zext nneg i32 %i.ef to i64
  %gep180 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep179, i64 %i.eg
  %i.eh = load i16, ptr %gep180, align 2, !tbaa !9
  %i.ei = zext i16 %i.eh to i32
  store i32 %i.ei, ptr %i.cj, align 4, !tbaa !73
  %i.ej = add nuw nsw i32 %i.ca, %i.ds
  %i.ek = zext nneg i32 %i.ej to i64
  %gep182 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep181, i64 %i.ek
  %i.el = load i16, ptr %gep182, align 2, !tbaa !9
  %i.em = zext i16 %i.el to i32
  store i32 %i.em, ptr %i.cr, align 4, !tbaa !73
  %i.en = add nuw nsw i32 %i.cu, %i.dm
  %i.eo = zext nneg i32 %i.en to i64
  %gep184 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep183, i64 %i.eo
  %i.ep = load i16, ptr %gep184, align 2, !tbaa !9
  %i.eq = zext i16 %i.ep to i32
  store i32 %i.eq, ptr %i.dd, align 4, !tbaa !73
  %i.er = add nuw nsw i32 %i.cu, %i.ds
  %i.es = zext nneg i32 %i.er to i64
  %gep186 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %i.es
  %i.et = load i16, ptr %gep186, align 2, !tbaa !9
  %i.eu = zext i16 %i.et to i32
  store i32 %i.eu, ptr %i.dl, align 4, !tbaa !73
  %i.ev = load i32, ptr %i.a, align 16, !tbaa !73 ; 6 uses
  %i.ew = add i32 %i.ev, -1501
  %or.cond = icmp ult i32 %i.ew, -1351
  br i1 %or.cond, label %.loopexit93, label %.preheader94.1

.preheader94.1:                                   ; preds = %.preheader96
  %i.ex = load i32, ptr %i.ah, align 4, !tbaa !73 ; 4 uses
  %i.ey = add i32 %i.ex, -1501
  %or.cond.1 = icmp ult i32 %i.ey, -1351
  br i1 %or.cond.1, label %.loopexit93, label %.preheader94.2

.preheader94.2:                                   ; preds = %.preheader94.1
  %i.ez = load i32, ptr %i.ai, align 8, !tbaa !73 ; 6 uses
  %i.fa = add i32 %i.ez, -1501
  %or.cond.2 = icmp ult i32 %i.fa, -1351
  br i1 %or.cond.2, label %.loopexit93, label %.preheader94.3

.preheader94.3:                                   ; preds = %.preheader94.2
  %i.fb = load i32, ptr %i.aj, align 4, !tbaa !73 ; 4 uses
  %i.fc = add i32 %i.fb, -1501
  %or.cond.3 = icmp ult i32 %i.fc, -1351
  br i1 %or.cond.3, label %.loopexit93, label %.preheader94.4

.preheader94.4:                                   ; preds = %.preheader94.3
  %i.fd = load i32, ptr %i.ak, align 16, !tbaa !73 ; 8 uses
  %i.fe = add i32 %i.fd, -1501
  %or.cond.4 = icmp ult i32 %i.fe, -1351
  br i1 %or.cond.4, label %.loopexit93, label %.preheader94.5

.preheader94.5:                                   ; preds = %.preheader94.4
  %i.ff = load i32, ptr %i.al, align 4, !tbaa !73 ; 5 uses
  %i.fg = add i32 %i.ff, -1501
  %or.cond.5 = icmp ult i32 %i.fg, -1351
  br i1 %or.cond.5, label %.loopexit93, label %.preheader94.6

.preheader94.6:                                   ; preds = %.preheader94.5
  %i.fh = load i32, ptr %i.am, align 8, !tbaa !73 ; 8 uses
  %i.fi = add i32 %i.fh, -1501
  %or.cond.6 = icmp ult i32 %i.fi, -1351
  br i1 %or.cond.6, label %.loopexit93, label %.preheader94.7

.preheader94.7:                                   ; preds = %.preheader94.6
  %i.fj = load i32, ptr %i.an, align 4, !tbaa !73 ; 5 uses
  %i.fk = add i32 %i.fj, -1501
  %or.cond.7 = icmp ult i32 %i.fk, -1351
  br i1 %or.cond.7, label %.loopexit93, label %.preheader92.preheader

.preheader92.preheader:                           ; preds = %.preheader94.7
  %i.fl = add nsw i32 %i.ev, -51
  %i.fm = sub nsw i32 %i.fl, %i.fd
  %i.fn = icmp ult i32 %i.fm, -101
  br i1 %i.fn, label %.loopexit93, label %.preheader92.1

.preheader92.1:                                   ; preds = %.preheader92.preheader
  %i.fo = add nsw i32 %i.ex, -51
  %i.fp = sub nsw i32 %i.fo, %i.ff
  %i.fq = icmp ult i32 %i.fp, -101
  br i1 %i.fq, label %.loopexit93, label %.preheader92.2

.preheader92.2:                                   ; preds = %.preheader92.1
  %i.fr = add nsw i32 %i.ez, -51
  %i.fs = sub nsw i32 %i.fr, %i.fh
  %i.ft = icmp ult i32 %i.fs, -101
  br i1 %i.ft, label %.loopexit93, label %.preheader92.3

.preheader92.3:                                   ; preds = %.preheader92.2
  %i.fu = add nsw i32 %i.fb, -51
  %i.fv = sub nsw i32 %i.fu, %i.fj
  %i.fw = icmp ult i32 %i.fv, -101
  br i1 %i.fw, label %.loopexit93, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader92.3
  %i.fx = sub nsw i32 %i.ex, %i.ev
  %i.fy = shl nsw i32 %i.fx, 10
  %i.fz = sdiv i32 %i.fy, %i.ev                   ; 6 uses
  %i.ga = sub nsw i32 %i.fb, %i.ez
  %i.gb = shl nsw i32 %i.ga, 10
  %i.gc = sdiv i32 %i.gb, %i.ez                   ; 10 uses
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.preheader88.preheader
  %i.gd = icmp slt i32 %i.gc, -104
  br i1 %i.gd, label %.thread43.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ge = icmp sgt i32 %i.gc, 12
  %spec.select187 = tail call i32 @llvm.smin.i32(i32 %i.gc, i32 12)
  %spec.select188 = zext i1 %i.ge to i32
  br label %.thread43.i

bb.g:                                             ; preds = %.preheader88.preheader
  %i.gf = add nsw i32 %i.gc, -462
  %or.cond39.i = icmp ult i32 %i.gf, -726
  br i1 %or.cond39.i, label %_ZN6LibRaw15canon_600_colorEPii.exit.thread, label %bb.h

_ZN6LibRaw15canon_600_colorEPii.exit.thread:      ; preds = %bb.g
  %i.gg = sub nsw i32 %i.ff, %i.fd
  %i.gh = shl nsw i32 %i.gg, 10
  %i.gi = sdiv i32 %i.gh, %i.fd
  %i.gj = sub nsw i32 %i.fj, %i.fh
  %i.gk = shl nsw i32 %i.gj, 10
  %i.gl = sdiv i32 %i.gk, %i.fh
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.gm = icmp slt i32 %i.gc, -50
  br i1 %i.gm, label %.thread43.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gn = icmp sgt i32 %i.gc, 307
  br i1 %i.gn, label %.thread52.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.go = icmp slt i32 %i.gc, 197
  br i1 %i.go, label %.thread43.i, label %.thread52.i

.thread43.i:                                      ; preds = %bb.f, %bb.e, %bb.h, %bb.j
  %.sroa.6.0 = phi i32 [ %i.gc, %bb.j ], [ %spec.select187, %bb.f ], [ -104, %bb.e ], [ -50, %bb.h ] ; 2 uses
  %.246.i = phi i32 [ 0, %bb.j ], [ %spec.select188, %bb.f ], [ 1, %bb.e ], [ 1, %bb.h ]
  %i.gp = mul nsw i32 %.sroa.6.0, 398
  %i.gq = ashr i32 %i.gp, 10
  %i.gr = sub nsw i32 -38, %i.gq
  br label %bb.k

.thread52.i:                                      ; preds = %bb.i, %bb.j
  %.sroa.6.1 = phi i32 [ %i.gc, %bb.j ], [ 307, %bb.i ] ; 2 uses
  %.254.i = phi i32 [ 0, %bb.j ], [ 1, %bb.i ]
  %i.gs = mul nuw nsw i32 %.sroa.6.1, 48
  %i.gt = lshr i32 %i.gs, 10
  %i.gu = add nuw nsw i32 %i.gt, -123
  br label %bb.k

bb.k:                                             ; preds = %.thread52.i, %.thread43.i
  %.sroa.6.2 = phi i32 [ %.sroa.6.0, %.thread43.i ], [ %.sroa.6.1, %.thread52.i ] ; 3 uses
  %.245.i = phi i32 [ %.246.i, %.thread43.i ], [ %.254.i, %.thread52.i ]
  %i.gv = phi i32 [ %i.gr, %.thread43.i ], [ %i.gu, %.thread52.i ] ; 4 uses
  %i.gw = sub nsw i32 %i.gv, %spec.select
  %.not.i = icmp sgt i32 %i.gw, %i.fz
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gx = add nsw i32 %i.gv, 20
  %i.gy = icmp slt i32 %i.gx, %i.fz
  %i.gz = icmp ne i32 %.245.i, 0
  %or.cond.i = or i1 %i.gz, %i.gy
  br i1 %or.cond.i, label %bb.m, label %_ZN6LibRaw15canon_600_colorEPii.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ha = sub nsw i32 %i.gv, %i.fz                ; 2 uses
  %i.hb = tail call i32 @llvm.abs.i32(i32 %i.ha, i1 true)
  %.not38.i = icmp samesign ult i32 %i.hb, %i.x
  br i1 %.not38.i, label %bb.n, label %_ZN6LibRaw15canon_600_colorEPii.exit

bb.n:                                             ; preds = %bb.m
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ha, i32 -20)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %spec.select)
  %i.hc = sub nsw i32 %i.gv, %spec.select.i
  br label %_ZN6LibRaw15canon_600_colorEPii.exit

_ZN6LibRaw15canon_600_colorEPii.exit:             ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.0121.0 = phi i32 [ %i.hc, %bb.n ], [ %i.fz, %bb.m ], [ %i.fz, %bb.l ] ; 3 uses
  %.not84 = phi i1 [ false, %bb.n ], [ false, %bb.m ], [ true, %bb.l ] ; 3 uses
  %.033.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.hd = sub nsw i32 %i.ff, %i.fd
  %i.he = shl nsw i32 %i.hd, 10
  %i.hf = sdiv i32 %i.he, %i.fd                   ; 3 uses
  %i.hg = sub nsw i32 %i.fj, %i.fh
  %i.hh = shl nsw i32 %i.hg, 10
  %i.hi = sdiv i32 %i.hh, %i.fh                   ; 4 uses
  br i1 %i.n, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN6LibRaw15canon_600_colorEPii.exit.thread, %_ZN6LibRaw15canon_600_colorEPii.exit
  %i.hj = phi i32 [ %i.gl, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %i.hi, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 7 uses
  %i.hk = phi ptr [ %i.aq, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %i.as, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %i.hl = phi i32 [ %i.gi, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %i.hf, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %i.hm = phi ptr [ %i.ap, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %i.ar, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %.033.i172.a = phi i32 [ 2, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %.033.i, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %.not84167.a = phi i1 [ false, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %.not84, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %.sroa.0121.0162.a = phi i32 [ %i.fz, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %.sroa.0121.0, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %.sroa.6.3157.a = phi i32 [ %i.gc, %_ZN6LibRaw15canon_600_colorEPii.exit.thread ], [ %.sroa.6.2, %_ZN6LibRaw15canon_600_colorEPii.exit ] ; 4 uses
  %i.hn = add nsw i32 %i.hj, -462
  %or.cond39.i.1 = icmp ult i32 %i.hn, -726
  br i1 %or.cond39.i.1, label %_ZN6LibRaw15canon_600_colorEPii.exit.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ho = icmp slt i32 %i.hj, -50
  br i1 %i.ho, label %.thread43.i.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hp = icmp sgt i32 %i.hj, 307
  br i1 %i.hp, label %.thread52.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hq = icmp slt i32 %i.hj, 197
  br i1 %i.hq, label %.thread43.i.1, label %.thread52.i.1

.thread52.i.1:                                    ; preds = %bb.q, %bb.r
  %.sroa.15.0 = phi i32 [ %i.hj, %bb.r ], [ 307, %bb.q ] ; 2 uses
  %.254.i.1 = phi i32 [ 0, %bb.r ], [ 1, %bb.q ]
  %i.hr = mul nuw nsw i32 %.sroa.15.0, 48
  %i.hs = lshr i32 %i.hr, 10
  %i.ht = add nuw nsw i32 %i.hs, -123
  br label %bb.u

bb.s:                                             ; preds = %_ZN6LibRaw15canon_600_colorEPii.exit
  %i.hu = icmp slt i32 %i.hi, -104
  br i1 %i.hu, label %.thread43.i.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hv = icmp sgt i32 %i.hi, 12
  %spec.select189 = tail call i32 @llvm.smin.i32(i32 %i.hi, i32 12)
  %spec.select190 = zext i1 %i.hv to i32
  br label %.thread43.i.1

.thread43.i.1:                                    ; preds = %bb.t, %bb.p, %bb.s, %bb.r
  %i.hw = phi ptr [ %i.hk, %bb.r ], [ %i.as, %bb.t ], [ %i.as, %bb.s ], [ %i.hk, %bb.p ]
  %i.hx = phi i32 [ %i.hl, %bb.r ], [ %i.hf, %bb.t ], [ %i.hf, %bb.s ], [ %i.hl, %bb.p ]
  %i.hy = phi ptr [ %i.hm, %bb.r ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ], [ %i.hm, %bb.p ]
  %.033.i169 = phi i32 [ %.033.i172.a, %bb.r ], [ %.033.i, %bb.t ], [ %.033.i, %bb.s ], [ %.033.i172.a, %bb.p ]
  %.not84164 = phi i1 [ %.not84167.a, %bb.r ], [ %.not84, %bb.t ], [ %.not84, %bb.s ], [ %.not84167.a, %bb.p ]
  %.sroa.0121.0159 = phi i32 [ %.sroa.0121.0162.a, %bb.r ], [ %.sroa.0121.0, %bb.t ], [ %.sroa.0121.0, %bb.s ], [ %.sroa.0121.0162.a, %bb.p ]
  %.sroa.6.3154 = phi i32 [ %.sroa.6.3157.a, %bb.r ], [ %.sroa.6.2, %bb.t ], [ %.sroa.6.2, %bb.s ], [ %.sroa.6.3157.a, %bb.p ]
  %.sroa.15.1 = phi i32 [ %i.hj, %bb.r ], [ %spec.select189, %bb.t ], [ -104, %bb.s ], [ -50, %bb.p ] ; 2 uses
  %.246.i.1 = phi i32 [ 0, %bb.r ], [ %spec.select190, %bb.t ], [ 1, %bb.s ], [ 1, %bb.p ]
  %i.hz = mul nsw i32 %.sroa.15.1, 398
  %i.ia = ashr i32 %i.hz, 10
  %i.ib = sub nsw i32 -38, %i.ia
  br label %bb.u

bb.u:                                             ; preds = %.thread43.i.1, %.thread52.i.1
  %i.ic = phi ptr [ %i.hw, %.thread43.i.1 ], [ %i.hk, %.thread52.i.1 ] ; 3 uses
  %i.id = phi i32 [ %i.hx, %.thread43.i.1 ], [ %i.hl, %.thread52.i.1 ] ; 5 uses
  %i.ie = phi ptr [ %i.hy, %.thread43.i.1 ], [ %i.hm, %.thread52.i.1 ] ; 3 uses
  %.033.i168 = phi i32 [ %.033.i169, %.thread43.i.1 ], [ %.033.i172.a, %.thread52.i.1 ] ; 3 uses
  %.not84163 = phi i1 [ %.not84164, %.thread43.i.1 ], [ %.not84167.a, %.thread52.i.1 ] ; 3 uses
  %.sroa.0121.0158 = phi i32 [ %.sroa.0121.0159, %.thread43.i.1 ], [ %.sroa.0121.0162.a, %.thread52.i.1 ] ; 3 uses
  %.sroa.6.3153 = phi i32 [ %.sroa.6.3154, %.thread43.i.1 ], [ %.sroa.6.3157.a, %.thread52.i.1 ] ; 3 uses
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %.thread43.i.1 ], [ %.sroa.15.0, %.thread52.i.1 ] ; 3 uses
  %.245.i.1 = phi i32 [ %.246.i.1, %.thread43.i.1 ], [ %.254.i.1, %.thread52.i.1 ]
  %i.if = phi i32 [ %i.ib, %.thread43.i.1 ], [ %i.ht, %.thread52.i.1 ] ; 4 uses
  %i.ig = sub nsw i32 %i.if, %spec.select
  %.not.i.1 = icmp sgt i32 %i.ig, %i.id
  br i1 %.not.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ih = add nsw i32 %i.if, 20
  %i.ii = icmp slt i32 %i.ih, %i.id
  %i.ij = icmp ne i32 %.245.i.1, 0
  %or.cond.i.1 = or i1 %i.ij, %i.ii
  br i1 %or.cond.i.1, label %bb.w, label %_ZN6LibRaw15canon_600_colorEPii.exit.1

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ik = sub nsw i32 %i.if, %i.id                ; 2 uses
  %i.il = tail call i32 @llvm.abs.i32(i32 %i.ik, i1 true)
  %.not38.i.1 = icmp samesign ult i32 %i.il, %i.x
  br i1 %.not38.i.1, label %bb.x, label %_ZN6LibRaw15canon_600_colorEPii.exit.1

bb.x:                                             ; preds = %bb.w
  %spec.store.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 -20)
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.1, i32 %spec.select)
  %i.im = sub nsw i32 %i.if, %spec.select.i.1
  br label %_ZN6LibRaw15canon_600_colorEPii.exit.1

_ZN6LibRaw15canon_600_colorEPii.exit.1:           ; preds = %bb.x, %bb.w, %bb.v, %bb.o
  %i.in = phi ptr [ %i.ic, %bb.x ], [ %i.ic, %bb.w ], [ %i.ic, %bb.v ], [ %i.hk, %bb.o ]
  %i.io = phi ptr [ %i.ie, %bb.x ], [ %i.ie, %bb.w ], [ %i.ie, %bb.v ], [ %i.hm, %bb.o ]
  %.033.i171 = phi i32 [ %.033.i168, %bb.x ], [ %.033.i168, %bb.w ], [ %.033.i168, %bb.v ], [ %.033.i172.a, %bb.o ]
  %.not84166 = phi i1 [ %.not84163, %bb.x ], [ %.not84163, %bb.w ], [ %.not84163, %bb.v ], [ %.not84167.a, %bb.o ]
  %.sroa.0121.0161 = phi i32 [ %.sroa.0121.0158, %bb.x ], [ %.sroa.0121.0158, %bb.w ], [ %.sroa.0121.0158, %bb.v ], [ %.sroa.0121.0162.a, %bb.o ]
  %.sroa.6.3156 = phi i32 [ %.sroa.6.3153, %bb.x ], [ %.sroa.6.3153, %bb.w ], [ %.sroa.6.3153, %bb.v ], [ %.sroa.6.3157.a, %bb.o ]
  %.sroa.15.3 = phi i32 [ %.sroa.15.2, %bb.x ], [ %.sroa.15.2, %bb.w ], [ %.sroa.15.2, %bb.v ], [ %i.hj, %bb.o ]
  %.sroa.11.0 = phi i32 [ %i.im, %bb.x ], [ %i.id, %bb.w ], [ %i.id, %bb.v ], [ %i.hl, %bb.o ]
  %.not84.1 = phi i1 [ false, %bb.x ], [ false, %bb.w ], [ true, %bb.v ], [ false, %bb.o ]
  %.033.i.1 = phi i32 [ 1, %bb.x ], [ 2, %bb.w ], [ 0, %bb.v ], [ 2, %bb.o ]
  %i.ip = or i32 %.033.i.1, %.033.i171            ; 3 uses
  %i.iq = icmp samesign ugt i32 %i.ip, 1
  br i1 %i.iq, label %.loopexit93, label %.preheader90.preheader

.preheader90.preheader:                           ; preds = %_ZN6LibRaw15canon_600_colorEPii.exit.1
  br i1 %.not84166, label %.loopexit87, label %.preheader

.preheader:                                       ; preds = %.preheader90.preheader
  %i.ir = add nsw i32 %.sroa.0121.0161, 1024
  %i.is = mul nsw i32 %i.ir, %i.ev
  %i.it = ashr i32 %i.is, 10                      ; 2 uses
  store i32 %i.it, ptr %i.ah, align 4, !tbaa !73
  %i.iu = add nsw i32 %.sroa.6.3156, 1024
  %i.iv = mul nsw i32 %i.iu, %i.ez
  %i.iw = ashr i32 %i.iv, 10                      ; 2 uses
  store i32 %i.iw, ptr %i.ao, align 4, !tbaa !73
  br label %.loopexit87

.loopexit87:                                      ; preds = %.preheader, %.preheader90.preheader
  %i.ix = phi i32 [ %i.iw, %.preheader ], [ %i.fb, %.preheader90.preheader ]
  %i.iy = phi i32 [ %i.it, %.preheader ], [ %i.ex, %.preheader90.preheader ]
  br i1 %.not84.1, label %.loopexit87.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit87
  %i.iz = add nsw i32 %.sroa.11.0, 1024
  %i.ja = mul nsw i32 %i.iz, %i.fd
  %i.jb = ashr i32 %i.ja, 10                      ; 2 uses
  store i32 %i.jb, ptr %i.io, align 4, !tbaa !73
  %i.jc = add nsw i32 %.sroa.15.3, 1024
  %i.jd = mul nsw i32 %i.jc, %i.fh
  %i.je = ashr i32 %i.jd, 10                      ; 2 uses
  store i32 %i.je, ptr %i.in, align 4, !tbaa !73
  br label %.loopexit87.1

.loopexit87.1:                                    ; preds = %.preheader.1, %.loopexit87
  %i.jf = phi i32 [ %i.je, %.preheader.1 ], [ %i.fj, %.loopexit87 ]
  %i.jg = phi i32 [ %i.jb, %.preheader.1 ], [ %i.ff, %.loopexit87 ]
  %i.jh = zext nneg i32 %i.ip to i64
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.jh ; 3 uses
  %i.jj = load <4 x i32>, ptr %i.ji, align 16, !tbaa !73
  %i.jk = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.jl = insertelement <4 x i32> %i.jk, i32 %i.iy, i64 1
  %i.jm = insertelement <4 x i32> %i.jl, i32 %i.ez, i64 2
  %i.jn = insertelement <4 x i32> %i.jm, i32 %i.ix, i64 3
  %i.jo = add nsw <4 x i32> %i.jj, %i.jn
  store <4 x i32> %i.jo, ptr %i.ji, align 16, !tbaa !73
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jq = load <4 x i32>, ptr %i.jp, align 16, !tbaa !73
  %i.jr = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jg, i64 1
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.fh, i64 2
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jf, i64 3
  %i.jv = add nsw <4 x i32> %i.jq, %i.ju
  store <4 x i32> %i.jv, ptr %i.jp, align 16, !tbaa !73
  %.sroa.idx = icmp eq i32 %i.ip, 1               ; 3 uses
  %.sroa.speculated = select i1 %.sroa.idx, i32 %.sroa.5137.1, i32 %.sroa.0136.1
  %i.jw = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %spec.select194 = select i1 %.sroa.idx, i32 %.sroa.0136.1, i32 %i.jw
  %spec.select195 = select i1 %.sroa.idx, i32 %i.jw, i32 %.sroa.5137.1
  br label %.loopexit93

.loopexit93:                                      ; preds = %.loopexit87.1, %.preheader96, %.preheader94.1, %.preheader94.2, %.preheader94.3, %.preheader94.4, %.preheader94.5, %.preheader94.6, %.preheader94.7, %.preheader92.preheader, %.preheader92.1, %.preheader92.2, %.preheader92.3, %_ZN6LibRaw15canon_600_colorEPii.exit.1
  %.sroa.0136.2 = phi i32 [ %.sroa.0136.1, %.preheader92.preheader ], [ %spec.select194, %.loopexit87.1 ], [ %.sroa.0136.1, %_ZN6LibRaw15canon_600_colorEPii.exit.1 ], [ %.sroa.0136.1, %.preheader96 ], [ %.sroa.0136.1, %.preheader92.3 ], [ %.sroa.0136.1, %.preheader92.2 ], [ %.sroa.0136.1, %.preheader92.1 ], [ %.sroa.0136.1, %.preheader94.7 ], [ %.sroa.0136.1, %.preheader94.6 ], [ %.sroa.0136.1, %.preheader94.5 ], [ %.sroa.0136.1, %.preheader94.4 ], [ %.sroa.0136.1, %.preheader94.3 ], [ %.sroa.0136.1, %.preheader94.2 ], [ %.sroa.0136.1, %.preheader94.1 ] ; 3 uses
  %.sroa.5137.2 = phi i32 [ %.sroa.5137.1, %.preheader92.preheader ], [ %spec.select195, %.loopexit87.1 ], [ %.sroa.5137.1, %_ZN6LibRaw15canon_600_colorEPii.exit.1 ], [ %.sroa.5137.1, %.preheader96 ], [ %.sroa.5137.1, %.preheader92.3 ], [ %.sroa.5137.1, %.preheader92.2 ], [ %.sroa.5137.1, %.preheader92.1 ], [ %.sroa.5137.1, %.preheader94.7 ], [ %.sroa.5137.1, %.preheader94.6 ], [ %.sroa.5137.1, %.preheader94.5 ], [ %.sroa.5137.1, %.preheader94.4 ], [ %.sroa.5137.1, %.preheader94.3 ], [ %.sroa.5137.1, %.preheader94.2 ], [ %.sroa.5137.1, %.preheader94.1 ] ; 3 uses
  %i.jx = add nuw nsw i32 %.075106, 2             ; 2 uses
  %i.jy = icmp samesign ult i32 %i.jx, %i.v
  br i1 %i.jy, label %.preheader96, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.loopexit93
  %i.jz = add nuw nsw i32 %.076107, 4             ; 2 uses
  %i.ka = icmp slt i32 %i.jz, %i.r
  br i1 %i.ka, label %.preheader97, label %._crit_edge108.split, !llvm.loop !84

._crit_edge108.split:                             ; preds = %._crit_edge, %.preheader97.lr.ph, %bb.d
  %i.kb = phi i32 [ 0, %bb.d ], [ 0, %.preheader97.lr.ph ], [ %.sroa.0136.2, %._crit_edge ] ; 2 uses
  %i.kc = phi i32 [ 0, %bb.d ], [ 0, %.preheader97.lr.ph ], [ %.sroa.5137.2, %._crit_edge ] ; 2 uses
  %i.kd = or i32 %i.kc, %i.kb
  %.not = icmp eq i32 %i.kd, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge108.split
  %i.ke = mul nsw i32 %i.kb, 200
  %i.kf = icmp slt i32 %i.ke, %i.kc               ; 8 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 16
  %.val = load i32, ptr %i.b, align 16
  %i.kg = select i1 %i.kf, i32 %.sroa.gep.val, i32 %.val
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 48, i64 16
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.kh = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 16, !tbaa !73
  %i.ki = add nsw i32 %i.kh, %i.kg                ; 2 uses
  %.not83 = icmp eq i32 %i.ki, 0
  br i1 %.not83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.kk = sitofp i32 %i.ki to float
  %i.kl = fdiv float 1.000000e+00, %i.kk
  store float %i.kl, ptr %i.kj, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.gep.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.gep126.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.gep.sroa.gep133.val = load i32, ptr %.sroa.gep.sroa.gep133, align 4
  %.sroa.gep126.sroa.gep134.val = load i32, ptr %.sroa.gep126.sroa.gep134, align 4
  %i.km = select i1 %i.kf, i32 %.sroa.gep.sroa.gep133.val, i32 %.sroa.gep126.sroa.gep134.val
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 52, i64 20
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v
  %i.kn = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel, align 4, !tbaa !73
  %i.ko = add nsw i32 %i.kn, %i.km                ; 2 uses
  %.not83.1 = icmp eq i32 %i.ko, 0
  br i1 %.not83.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kp = sitofp i32 %i.ko to float
  %i.kq = fdiv float 1.000000e+00, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %i.kq, ptr %i.kr, align 8, !tbaa !11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.gep.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.gep126.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.gep.sroa.gep130.val = load i32, ptr %.sroa.gep.sroa.gep130, align 8
  %.sroa.gep126.sroa.gep131.val = load i32, ptr %.sroa.gep126.sroa.gep131, align 8
  %i.ks = select i1 %i.kf, i32 %.sroa.gep.sroa.gep130.val, i32 %.sroa.gep126.sroa.gep131.val
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 56, i64 24
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v
  %i.kt = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel, align 8, !tbaa !73
  %i.ku = add nsw i32 %i.kt, %i.ks                ; 2 uses
  %.not83.2 = icmp eq i32 %i.ku, 0
  br i1 %.not83.2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kv = sitofp i32 %i.ku to float
  %i.kw = fdiv float 1.000000e+00, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %i.kw, ptr %i.kx, align 4, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.gep.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.gep126.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.gep.sroa.gep127.val = load i32, ptr %.sroa.gep.sroa.gep127, align 4
  %.sroa.gep126.sroa.gep128.val = load i32, ptr %.sroa.gep126.sroa.gep128, align 4
  %i.ky = select i1 %i.kf, i32 %.sroa.gep.sroa.gep127.val, i32 %.sroa.gep126.sroa.gep128.val
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 60, i64 28
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v
  %i.kz = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel, align 4, !tbaa !73
  %i.la = add nsw i32 %i.kz, %i.ky                ; 2 uses
  %.not83.3 = icmp eq i32 %i.la, 0
  br i1 %.not83.3, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lb = sitofp i32 %i.la to float
  %i.lc = fdiv float 1.000000e+00, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %i.lc, ptr %i.ld, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.af, %._crit_edge108.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw15canon_600_coeffEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) initializes((381660, 381664)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %i.b = load float, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.d = load <1 x float>, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %i.f = load <2 x float>, ptr %i.e, align 8
  %i.g = insertelement <2 x float> %i.f, float %i.b, i64 1
  %i.h = shufflevector <1 x float> %i.d, <1 x float> poison, <2 x i32> zeroinitializer
  %i.i = fdiv <2 x float> %i.g, %i.h              ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 1   ; 2 uses
  %i.k = fcmp ogt float %i.j, 1.000000e+00
  %i.l = fpext float %i.j to double               ; 2 uses
  %i.m = fcmp ole double %i.l, 1.280000e+00
  %or.cond22.not27 = and i1 %i.k, %i.m
  %i.n = extractelement <2 x float> %i.i, i64 0
  %i.o = fpext float %i.n to double
  %i.p = fcmp olt double %i.o, 8.789000e-01       ; 2 uses
  %or.cond24 = select i1 %or.cond22.not27, i1 %i.p, i1 false
  %.019 = zext i1 %or.cond24 to i64               ; 2 uses
  %i.q = fcmp ule double %i.l, 1.280000e+00
  %i.r = fcmp ugt <2 x float> %i.i, splat (float 2.000000e+00) ; 2 uses
  %i.s = extractelement <2 x i1> %i.r, i64 1
  %or.cond.not29 = or i1 %i.s, %i.q
  %i.t = extractelement <2 x i1> %i.r, i64 0
  %spec.select = select i1 %i.t, i64 %.019, i64 4
  %.019.mux = select i1 %i.p, i64 3, i64 %spec.select
  %.1 = select i1 %or.cond.not29, i64 %.019, i64 %.019.mux
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.v = load float, ptr %i.u, align 8, !tbaa !72
  %i.w = fcmp une float %i.v, 0.000000e+00
  %spec.select25 = select i1 %i.w, i64 5, i64 %.1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381660
  store i32 0, ptr %i.x, align 4, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82   ; 10 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6LibRaw15canon_600_coeffEvE5table, i64 %spec.select25 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153380
  br i1 %i.aa, label %.preheader.preheader, label %.split32

.preheader.preheader:                             ; preds = %bb.a
  %i.ad = load i16, ptr %i.ab, align 8, !tbaa !9
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x3A800000
  store float %i.af, ptr %i.ac, align 4, !tbaa !11
  %exitcond.not = icmp eq i32 %i.z, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9
  %i.ai = sitofp i16 %i.ah to float
  %i.aj = fmul nnan float %i.ai, f0x3A800000
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 153384
  store float %i.aj, ptr %i.ak, align 8, !tbaa !11
  %exitcond.not.1 = icmp eq i32 %i.z, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !9
  %i.an = sitofp i16 %i.am to float
  %i.ao = fmul nnan float %i.an, f0x3A800000
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153388
  store float %i.ao, ptr %i.ap, align 4, !tbaa !11
  %exitcond.not.2 = icmp eq i32 %i.z, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9
  %i.as = sitofp i16 %i.ar to float
  %i.at = fmul nnan float %i.as, f0x3A800000
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 153392
  store float %i.at, ptr %i.au, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader, %bb.b, %bb.c, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 153396
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !9
  %i.ay = sitofp i16 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3A800000
  store float %i.az, ptr %i.av, align 4, !tbaa !11
  %exitcond.1.not = icmp eq i32 %i.z, 1
  br i1 %exitcond.1.not, label %._crit_edge.1, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !9
  %i.bc = sitofp i16 %i.bb to float
  %i.bd = fmul nnan float %i.bc, f0x3A800000
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 153400
  store float %i.bd, ptr %i.be, align 8, !tbaa !11
  %exitcond.1.not.1 = icmp eq i32 %i.z, 2
  br i1 %exitcond.1.not.1, label %._crit_edge.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !9
  %i.bh = sitofp i16 %i.bg to float
  %i.bi = fmul nnan float %i.bh, f0x3A800000
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 153404
  store float %i.bi, ptr %i.bj, align 4, !tbaa !11
  %exitcond.1.not.2 = icmp eq i32 %i.z, 3
  br i1 %exitcond.1.not.2, label %._crit_edge.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  %i.bm = sitofp i16 %i.bl to float
  %i.bn = fmul nnan float %i.bm, f0x3A800000
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 153408
  store float %i.bn, ptr %i.bo, align 8, !tbaa !11
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge, %bb.e, %bb.f, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 153412
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !9
  %i.bs = sitofp i16 %i.br to float
  %i.bt = fmul nnan float %i.bs, f0x3A800000
  store float %i.bt, ptr %i.bp, align 4, !tbaa !11
  %exitcond.2.not = icmp eq i32 %i.z, 1
  br i1 %exitcond.2.not, label %.split32, label %bb.h

bb.h:                                             ; preds = %._crit_edge.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !9
  %i.bw = sitofp i16 %i.bv to float
  %i.bx = fmul nnan float %i.bw, f0x3A800000
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 153416
  store float %i.bx, ptr %i.by, align 8, !tbaa !11
  %exitcond.2.not.1 = icmp eq i32 %i.z, 2
  br i1 %exitcond.2.not.1, label %.split32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !9
  %i.cb = sitofp i16 %i.ca to float
  %i.cc = fmul nnan float %i.cb, f0x3A800000
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 153420
  store float %i.cc, ptr %i.cd, align 4, !tbaa !11
  %exitcond.2.not.2 = icmp eq i32 %i.z, 3
  br i1 %exitcond.2.not.2, label %.split32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 22
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !9
  %i.cg = sitofp i16 %i.cf to float
  %i.ch = fmul nnan float %i.cg, f0x3A800000
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 153424
  store float %i.ch, ptr %i.ci, align 8, !tbaa !11
  br label %.split32

.split32:                                         ; preds = %._crit_edge.1, %bb.h, %bb.i, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [1120 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !74
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %middle.block
  %.037 = phi i32 [ 0, %.lr.ph ], [ %spec.store.select, %middle.block ] ; 2 uses
  %.03136 = phi i32 [ 0, %.lr.ph ], [ %i.on, %middle.block ]
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1120)
  %i.l = icmp slt i32 %i.k, 1120
  br i1 %i.l, label %bb.c, label %vector.memcheck

bb.c:                                             ; preds = %bb.b
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %vector.memcheck
end_hunk_0
