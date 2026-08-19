inline.NumInlined: 380
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6embree12TriangleMesh6verifyEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread70, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16             ; 6 uses
  %.idx = mul nuw nsw i64 %i.b, 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.04684, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.04684 = phi ptr [ %i.e, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04684, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %.not54 = icmp eq i64 %i.k, %i.h
  br i1 %.not54, label %bb.b, label %.thread70

._crit_edge:                                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load ptr, ptr %i.l, align 16             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load i64, ptr %i.n, align 16             ; 2 uses
  %.idx97 = mul nuw nsw i64 %i.o, 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx97
  %.not5585 = icmp eq i64 %i.o, 0
  br i1 %.not5585, label %.preheader78, label %.lr.ph88

.lr.ph88:                                         ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load i64, ptr %i.q, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.04486, i64 56 ; 2 uses
  %.not55 = icmp eq ptr %i.s, %i.p
  br i1 %.not55, label %.preheader78, label %bb.e

.preheader78:                                     ; preds = %bb.d, %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 16             ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.not98 = icmp eq i32 %i.u, 0
  br i1 %.not98, label %.preheader.preheader, label %.lr.ph90

.preheader.preheader:                             ; preds = %bb.f, %.preheader78
  br label %.preheader

.lr.ph90:                                         ; preds = %.preheader78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph88, %bb.d
  %.04486 = phi ptr [ %i.m, %.lr.ph88 ], [ %i.s, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04486, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %.not56 = icmp eq i64 %i.ad, %i.r
  br i1 %.not56, label %bb.d, label %.thread70

bb.f:                                             ; preds = %bb.i
  %i.ae = add nuw nsw i64 %.04389, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.v
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.g, !llvm.loop !26

bb.g:                                             ; preds = %.lr.ph90, %bb.f
  %.04389 = phi i64 [ 0, %.lr.ph90 ], [ %i.ae, %bb.f ] ; 2 uses
  %i.af = mul i64 %i.z, %.04389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %.not57 = icmp ugt i64 %i.ab, %i.ai
  br i1 %.not57, label %bb.h, label %.thread70

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %.not58 = icmp ugt i64 %i.ab, %i.al
  br i1 %.not58, label %bb.i, label %.thread70

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = zext i32 %i.an to i64
  %.not59 = icmp ugt i64 %i.ab, %i.ao
  br i1 %.not59, label %bb.f, label %.thread70

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge94
  %.04296 = phi ptr [ %i.be, %._crit_edge94 ], [ %i.e, %.preheader.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04296, i64 24
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %.not6191.not = icmp eq i64 %i.aq, 0
  br i1 %.not6191.not, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader
  %i.ar = load ptr, ptr %.04296, align 8, !noalias !27
  %i.as = getelementptr inbounds nuw i8, ptr %.04296, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !27
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.au = add nuw i64 %.092, 1                    ; 2 uses
  %exitcond103.not = icmp eq i64 %i.au, %i.aq
  br i1 %exitcond103.not, label %._crit_edge94, label %bb.k, !llvm.loop !30

bb.k:                                             ; preds = %.lr.ph93, %bb.j
  %.092 = phi i64 [ 0, %.lr.ph93 ], [ %i.au, %bb.j ] ; 2 uses
  %i.av = mul i64 %i.at, %.092
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !noalias !31 ; 2 uses
  %i.ay = fcmp ugt <4 x float> %i.ax, splat (float -1.844000e+18)
  %i.az = fcmp olt <4 x float> %i.ax, splat (float 1.844000e+18)
  %i.ba = and <4 x i1> %i.ay, %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = and i4 %i.bb, 7
  %i.bd = icmp eq i4 %i.bc, 7
  br i1 %i.bd, label %bb.j, label %.thread70

._crit_edge94:                                    ; preds = %bb.j, %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.04296, i64 56 ; 2 uses
  %.not60 = icmp eq ptr %i.be, %i.f
  br i1 %.not60, label %.thread70, label %.preheader

.thread70:                                        ; preds = %bb.c, %bb.e, %bb.i, %bb.h, %bb.g, %._crit_edge94, %bb.k, %bb.a
  %.10 = phi i1 [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.k ], [ true, %._crit_edge94 ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6embree12TriangleMesh11interpolateEPK23RTCInterpolateArguments(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(264) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp eq i32 %i.b, 2
  %i.t = zext i32 %i.d to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load ptr, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load ptr, ptr %i.w, align 16
  %.057.in.v.i = select i1 %i.s, ptr %i.v, ptr %i.x
  %.057.in.i = getelementptr inbounds nuw [56 x i8], ptr %.057.in.v.i, i64 %i.t ; 2 uses
  %.056.in.in.in.i = getelementptr inbounds nuw i8, ptr %.057.in.i, i64 16
  %.056.in.in.i = load i64, ptr %.056.in.in.in.i, align 8
  %.057.i = load ptr, ptr %.057.in.i, align 8     ; 3 uses
  %.056.i = and i64 %.056.in.in.i, 4294967295     ; 3 uses
  %.not116.i = icmp eq i32 %i.r, 0
  br i1 %.not116.i, label %_ZN6embree12TriangleMesh16interpolate_implILi4EEEvPK23RTCInterpolateArguments.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load float, ptr %i.y, align 8            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %.not.i = icmp eq ptr %i.f, null
  %i.aj = fsub float 1.000000e+00, %i.ab
  %i.ak = fsub float %i.aj, %i.z
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = insertelement <4 x float> poison, float %i.z, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %.not62.i = icmp eq ptr %i.h, null
  %.not63.i = icmp eq ptr %i.l, null
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.0115.i = phi i32 [ 0, %.lr.ph.i ], [ %3, %bb.h ] ; 3 uses
  %2 = zext i32 %.0115.i to i64                   ; 7 uses
  %i.ar = shl nuw nsw i64 %2, 2                   ; 3 uses
  %i.as = load ptr, ptr %i.af, align 8
  %i.at = load i64, ptr %i.ag, align 8
  %i.au = mul i64 %i.at, %i.ae
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 3 uses
  %i.aw = insertelement <4 x i32> poison, i32 %.0115.i, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = or disjoint <4 x i32> %i.ax, <i32 0, i32 1, i32 2, i32 3>
  %.not114.i = icmp sgt <4 x i32> %i.ai, %i.ay    ; 9 uses
  %i.az = load i32, ptr %i.av, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = mul nuw i64 %.056.i, %i.ba
  %i.bc = getelementptr i8, ptr %.057.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ar
  %i.be = load <4 x float>, ptr %i.bd, align 1, !noalias !34 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %.056.i, %i.bh
  %i.bj = getelementptr i8, ptr %.057.i, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.ar
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !noalias !37 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %.056.i, %i.bo
  %i.bq = getelementptr i8, ptr %.057.i, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.ar
  %i.bs = load <4 x float>, ptr %i.br, align 1, !noalias !40 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bt = select <4 x i1> %.not114.i, <4 x float> %i.be, <4 x float> zeroinitializer
  %i.bu = select <4 x i1> %.not114.i, <4 x float> %i.bs, <4 x float> zeroinitializer
  %i.bv = select <4 x i1> %.not114.i, <4 x float> %i.bl, <4 x float> zeroinitializer
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %2 ; 2 uses
  %i.bx = fmul <4 x float> %i.aq, %i.bu
  %i.by = fmul <4 x float> %i.ao, %i.bv
  %i.bz = fadd <4 x float> %i.by, %i.bx
  %i.ca = fmul <4 x float> %i.am, %i.bt
  %i.cb = fadd <4 x float> %i.ca, %i.bz
  %i.cc = load <4 x float>, ptr %i.bw, align 1, !noalias !43
  %i.cd = select <4 x i1> %.not114.i, <4 x float> %i.cb, <4 x float> %i.cc
  store <4 x float> %i.cd, ptr %i.bw, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not62.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %2 ; 2 uses
  %i.cf = fsub <4 x float> %i.bl, %i.be
  %i.cg = load <4 x float>, ptr %i.ce, align 1, !noalias !46
  %i.ch = select <4 x i1> %.not114.i, <4 x float> %i.cf, <4 x float> %i.cg
  store <4 x float> %i.ch, ptr %i.ce, align 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.cj = fsub <4 x float> %i.bs, %i.be
  %i.ck = load <4 x float>, ptr %i.ci, align 1, !noalias !49
  %i.cl = select <4 x i1> %.not114.i, <4 x float> %i.cj, <4 x float> %i.ck
  store <4 x float> %i.cl, ptr %i.ci, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not63.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2 ; 2 uses
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !noalias !52
  %i.co = select <4 x i1> %.not114.i, <4 x float> zeroinitializer, <4 x float> %i.cn
  store <4 x float> %i.co, ptr %i.cm, align 1
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %i.cq = load <4 x float>, ptr %i.cp, align 1, !noalias !55
  %i.cr = select <4 x i1> %.not114.i, <4 x float> zeroinitializer, <4 x float> %i.cq
  store <4 x float> %i.cr, ptr %i.cp, align 1
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %2 ; 2 uses
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !noalias !58
  %i.cu = select <4 x i1> %.not114.i, <4 x float> zeroinitializer, <4 x float> %i.ct
  store <4 x float> %i.cu, ptr %i.cs, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %3 = add i32 %.0115.i, 4                        ; 2 uses
  %i.cv = icmp ult i32 %3, %i.r
  br i1 %i.cv, label %bb.b, label %_ZN6embree12TriangleMesh16interpolate_implILi4EEEvPK23RTCInterpolateArguments.exit, !llvm.loop !61

_ZN6embree12TriangleMesh16interpolate_implILi4EEEvPK23RTCInterpolateArguments.exit: ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 272, 240518168801) i64 @_ZNK6embree12TriangleMesh29getGeometryDataDeviceByteSizeEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(264) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 56
  %i.e = add nuw nsw i64 %i.d, 280
  %i.f = and i64 %i.e, 549755813872
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6embree12TriangleMesh29convertToDeviceRepresentationEmPcS1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(264) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.a, ptr noundef nonnull align 16 dereferenceable(272) %0, i64 noundef 272, i1 noundef false) #23
  %i.b = add i64 %1, 272                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %i.f, ptr %i.g, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.01516 = phi i64 [ %i.b, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.01516
  %i.i = load ptr, ptr %i.e, align 16
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.017
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.h, ptr noundef nonnull align 1 dereferenceable(56) %i.j, i64 noundef 56, i1 noundef false) #23
  %i.k = add i64 %.01516, 56
  %i.l = add nuw nsw i64 %.017, 1                 ; 2 uses
  %i.m = load i32, ptr %i.c, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6embree4sse218createTriangleMeshEPNS_6DeviceE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 4 uses
  invoke void @_ZN6embree12TriangleMeshC2EPNS_6DeviceE(ptr noundef nonnull align 16 dereferenceable(264) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 512) (i8, ptr @_ZTVN6embree4sse215TriangleMeshISAE, i64 16), ptr %i.a, align 16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12TriangleMeshD2Ev(ptr noundef nonnull align 16 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 512) (i8, ptr @_ZTVN6embree12TriangleMeshE, i64 16), ptr %0, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16             ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit, %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i3, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(1384) %i.e, ptr noundef %i.g)
          to label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit unwind label %bb.f, !inline_history !7

bb.c:                                             ; preds = %.lr.ph, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.0.i114 = phi i64 [ 0, %.lr.ph ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %i.d, align 16
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.0.i114
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.b, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.u = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.k, %bb.c ] ; 2 uses
  %i.v = add nuw i64 %.0.i114, 1                  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !8

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit: ; preds = %bb.b, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.ab = load i64, ptr %i.aa, align 16           ; 2 uses
  %.not18 = icmp eq i64 %i.ab, 0
  br i1 %.not18, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.h

._crit_edge17:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit6, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit
  %i.ad = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 16
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(1384) %i.ad, ptr noundef %i.af)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.k, !inline_history !9

bb.h:                                             ; preds = %.lr.ph16, %_ZN6embree13RawBufferViewD2Ev.exit6
  %i.aj = phi i64 [ %i.ab, %.lr.ph16 ], [ %i.at, %_ZN6embree13RawBufferViewD2Ev.exit6 ]
  %.0.i15 = phi i64 [ 0, %.lr.ph16 ], [ %i.au, %_ZN6embree13RawBufferViewD2Ev.exit6 ] ; 2 uses
  %i.ak = load ptr, ptr %i.ac, align 16
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %.0.i15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i5, label %_ZN6embree13RawBufferViewD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge unwind label %bb.j

._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge:   ; preds = %bb.i
  %.pre19 = load i64, ptr %i.aa, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit6

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #22
  unreachable
end_hunk_0
