Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/chroma_from_luma?download=true
inline.NumInlined: 93
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.jxl::StatusOr" = type <{ %"union.jxl::StatusOr<jxl::ColorCorrelationMap>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::ColorCorrelationMap>::Storage" = type { %"struct.jxl::ColorCorrelationMap" }
%"struct.jxl::ColorCorrelationMap" = type { %"class.jxl::Plane", %"class.jxl::Plane", %"struct.jxl::ColorCorrelation" }
%"class.jxl::Plane" = type { %"struct.jxl::detail::PlaneBase" }
%"struct.jxl::detail::PlaneBase" = type { i32, i32, i32, i32, i64, %"class.jxl::AlignedMemory", i64 }
%"class.jxl::AlignedMemory" = type { ptr, ptr, ptr }
%"struct.jxl::ColorCorrelation" = type { [4 x float], i32, float, float, float, i32, i32 }
%"class.jxl::StatusOr.0" = type <{ %"union.jxl::StatusOr<jxl::Plane<signed char>>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::Plane<signed char>>::Storage" = type { %"class.jxl::Plane" }

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl16ColorCorrelation8DecodeDCEPNS_9BitReaderE(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp ugt ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  %.pre = load i64, ptr %1, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZN3jxl9BitReader6RefillEv.exit14

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i = load i64, ptr %i.b, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = shl i64 %.0.copyload.i, %i.g
  %i.i = load i64, ptr %1, align 8, !tbaa !25
  %i.j = or i64 %i.i, %i.h
  %i.k = sub i64 63, %i.g
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  store ptr %i.m, ptr %i.a, align 8, !tbaa !22
  %i.n = or i64 %i.g, 56
  br label %_ZN3jxl9BitReader6RefillEv.exit14

_ZN3jxl9BitReader6RefillEv.exit14:                ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %.pre25, %bb.b ], [ %i.n, %bb.c ]
  %i.p = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.s = add i64 %i.o, -1
  store i64 %i.s, ptr %i.r, align 8, !tbaa !26
  %i.t = lshr i64 %i.p, 1
  store i64 %i.t, ptr %1, align 8, !tbaa !25
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit14
  %i.u = tail call noundef i32 @_ZN3jxl8U32Coder4ReadENS_6U32EncEPNS_9BitReaderE(i64 -9223370935195664300, i64 35523674505287, ptr noundef nonnull %1) #8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.u, ptr %i.v, align 4, !tbaa !13
  %i.w = uitofp i32 %i.u to float
  %i.x = fdiv float 1.000000e+00, %i.w            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store float %i.x, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.z, align 4, !tbaa !14
  %i.ae = load <2 x float>, ptr %i.aa, align 4, !tbaa !15
  %i.af = sitofp <2 x i32> %i.ad to <2 x float>
  %i.ag = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ae) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  store float %i.aj, ptr %0, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = extractelement <2 x float> %i.ai, i64 1
  store float %i.al, ptr %i.ak, align 4, !tbaa !15
  %i.am = tail call i32 @_ZN3jxl8F16Coder4ReadEPNS_9BitReaderEPf(ptr noundef nonnull %1, ptr noundef nonnull %i.aa) #8 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ao = load float, ptr %i.aa, align 4, !tbaa !28
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = fcmp ogt float %i.ap, 4.000000e+00
  br i1 %i.aq, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call i32 @_ZN3jxl8F16Coder4ReadEPNS_9BitReaderEPf(ptr noundef nonnull %1, ptr noundef nonnull %i.ac) #8 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.at = load float, ptr %i.ac, align 4, !tbaa !16
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = fcmp ogt float %i.au, 4.000000e+00
  br i1 %i.av, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !22  ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %i.ay = icmp ugt ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !24

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  %.pre26 = load i64, ptr %1, align 8, !tbaa !25
  %.pre27 = load i64, ptr %i.r, align 8, !tbaa !26
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !22
  %.pre29 = load ptr, ptr %i.c, align 8, !tbaa !23
  br label %_ZN3jxl9BitReader6RefillEv.exit

bb.j:                                             ; preds = %bb.h
  %.0.copyload.i16 = load i64, ptr %i.aw, align 1
  %i.az = load i64, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %i.ba = shl i64 %.0.copyload.i16, %i.az
  %i.bb = load i64, ptr %1, align 8, !tbaa !25
  %i.bc = or i64 %i.bb, %i.ba
  %i.bd = sub i64 63, %i.az
  %i.be = lshr i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.be ; 2 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !22
  %i.bg = or i64 %i.az, 56
  br label %_ZN3jxl9BitReader6RefillEv.exit

_ZN3jxl9BitReader6RefillEv.exit:                  ; preds = %bb.i, %bb.j
  %i.bh = phi ptr [ %.pre29, %bb.i ], [ %i.ax, %bb.j ]
  %i.bi = phi ptr [ %.pre28, %bb.i ], [ %i.bf, %bb.j ] ; 3 uses
  %i.bj = phi i64 [ %.pre27, %bb.i ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bk = phi i64 [ %.pre26, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bl = add i64 %i.bj, -8                       ; 3 uses
  store i64 %i.bl, ptr %i.r, align 8, !tbaa !26
  %i.bm = lshr i64 %i.bk, 8                       ; 2 uses
  store i64 %i.bm, ptr %1, align 8, !tbaa !25
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = and i32 %i.bn, 255
  %i.bp = add nsw i32 %i.bo, -128                 ; 2 uses
  store i32 %i.bp, ptr %i.z, align 4, !tbaa !17
  %i.bq = icmp ugt ptr %i.bi, %i.bh
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !24

bb.k:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  %.pre30 = load i64, ptr %1, align 8, !tbaa !25
  %.pre31 = load i64, ptr %i.r, align 8, !tbaa !26
  %.pre32 = load i32, ptr %i.z, align 4, !tbaa !17
  br label %_ZN3jxl9BitReader6RefillEv.exit13

bb.l:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit
  %.0.copyload.i15 = load i64, ptr %i.bi, align 1
  %i.br = shl i64 %.0.copyload.i15, %i.bl
  %i.bs = or i64 %i.br, %i.bm
  %i.bt = sub i64 71, %i.bj
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bu
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !22
  %i.bw = or i64 %i.bl, 56
  br label %_ZN3jxl9BitReader6RefillEv.exit13

_ZN3jxl9BitReader6RefillEv.exit13:                ; preds = %bb.k, %bb.l
  %i.bx = phi i32 [ %.pre32, %bb.k ], [ %i.bp, %bb.l ]
  %i.by = phi i64 [ %.pre31, %bb.k ], [ %i.bw, %bb.l ]
  %i.bz = phi i64 [ %.pre30, %bb.k ], [ %i.bs, %bb.l ] ; 2 uses
  %i.ca = add i64 %i.by, -8
  store i64 %i.ca, ptr %i.r, align 8, !tbaa !26
  %i.cb = lshr i64 %i.bz, 8
  store i64 %i.cb, ptr %1, align 8, !tbaa !25
  %i.cc = trunc i64 %i.bz to i32
  %i.cd = and i32 %i.cc, 255
  %i.ce = add nsw i32 %i.cd, -128                 ; 2 uses
  store i32 %i.ce, ptr %i.ab, align 4, !tbaa !18
  %2 = load <4 x float>, ptr %i.y, align 4
  %i.cf = load <2 x float>, ptr %i.aa, align 4, !tbaa !15
  %i.cg = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = sitofp <2 x i32> %i.ch to <2 x float>
  %i.cj = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cf) ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  store float %i.cl, ptr %0, align 4, !tbaa !15
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  store float %i.cm, ptr %i.ak, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZN3jxl9BitReader6RefillEv.exit14, %_ZN3jxl9BitReader6RefillEv.exit13
  %.sroa.018.0 = phi i32 [ 0, %_ZN3jxl9BitReader6RefillEv.exit14 ], [ %i.am, %bb.d ], [ %i.ar, %bb.f ], [ 0, %_ZN3jxl9BitReader6RefillEv.exit13 ], [ 1, %bb.e ], [ 1, %bb.g ]
  ret i32 %.sroa.018.0
}

declare noundef i32 @_ZN3jxl8U32Coder4ReadENS_6U32EncEPNS_9BitReaderE(i64, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @_ZN3jxl8F16Coder4ReadEPNS_9BitReaderEPf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl19ColorCorrelationMap6CreateEP22JxlMemoryManagerStructmmb(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %6 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %7 = alloca %"struct.jxl::ColorCorrelationMap", align 8 ; 28 uses
  %8 = alloca %"class.jxl::StatusOr.0", align 8   ; 10 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 6 uses
  %10 = alloca %"class.jxl::StatusOr.0", align 8  ; 10 uses
  %11 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, i8 0, i64 128, i1 false)
  store i32 84, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 132 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 136
  store <2 x float> <float f0x3C430C31, float 0.000000e+00>, ptr %i.b, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 140 ; 3 uses
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 148
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = add i64 %2, 63                           ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = add i64 %3, 63                           ; 2 uses
  %i.j = lshr i64 %i.i, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.k = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.l = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.m = or i64 %i.g, %i.i
  %or.cond = icmp ult i64 %i.m, 274877906944
  br i1 %or.cond, label %bb.b, label %.thread34

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !38
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %i.k, i32 noundef %i.l, i64 noundef 1) #8, !noalias !38
  %i.n = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, i64 noundef 0) #8, !noalias !38 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  br i1 %i.o, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.n, ptr %i.p, align 8, !tbaa !41, !alias.scope !38
  br label %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !41, !alias.scope !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45, !noalias !38
  store i64 %i.u, ptr %i.s, align 8, !tbaa !45, !alias.scope !38
  br label %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9, !noalias !38
  %.pre = load i32, ptr %i.p, align 8, !tbaa !41  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = icmp eq i32 %.pre, 0
  br i1 %i.x, label %bb.d, label %.thread34

.thread34:                                        ; preds = %bb.a, %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.y = phi i32 [ %.pre, %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.y, ptr %i.z, align 8, !tbaa !47
  br label %_ZN3jxl8StatusOrINS_5PlaneIaEEED2Ev.exit25

bb.d:                                             ; preds = %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(60) %8, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45, !noalias !48
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !45, !alias.scope !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #8 ; 0 uses
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !49
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.k, i32 noundef %i.l, i64 noundef 1) #8, !noalias !49
  %i.aj = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i64 noundef 0) #8, !noalias !49 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 3 uses
  br i1 %i.ak, label %.critedge.i18, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.aj, ptr %i.al, align 8, !tbaa !41, !alias.scope !49
  br label %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit19

.critedge.i18:                                    ; preds = %bb.d
  store i32 0, ptr %i.al, align 8, !tbaa !41, !alias.scope !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45, !noalias !49
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !45, !alias.scope !49
  br label %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit19

_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit19: ; preds = %bb.e, %.critedge.i18
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !49
  %.pre36 = load i32, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.at = icmp eq i32 %.pre36, 0
  br i1 %i.at, label %.critedge17, label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit19
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.pre36, ptr %i.au, align 8, !tbaa !47
  br label %bb.k

.critedge17:                                      ; preds = %_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(60) %10, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !45, !noalias !50
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !45, !alias.scope !50
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.av) #8 ; 0 uses
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.bf = load i32, ptr %7, align 8, !tbaa !51
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge17
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !52
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.br, %bb.f ] ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !54
  %i.bn = mul i64 %i.bm, %.07.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bo, i64 64) ]
  %i.bp = load i32, ptr %7, align 8, !tbaa !51
  %i.bq = zext i32 %i.bp to i64
  call void @llvm.memset.p0.i64(ptr align 64 %i.bo, i8 0, i64 %i.bq, i1 false)
  %i.br = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %i.bs = load i32, ptr %i.bh, align 4, !tbaa !52
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit, !llvm.loop !37

_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.f, %.critedge17, %.preheader.i
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24, label %.preheader.i20

.preheader.i20:                                   ; preds = %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !52
  %.not.i21 = icmp eq i32 %i.by, 0
  br i1 %.not.i21, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i20
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 72
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i22
  %.07.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %i.ch, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !53
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !54
  %i.cd = mul i64 %i.cc, %.07.i23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  %i.cf = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.cg = zext i32 %i.cf to i64
  call void @llvm.memset.p0.i64(ptr align 64 %i.ce, i8 0, i64 %i.cg, i1 false)
  %i.ch = add nuw nsw i64 %.07.i23, 1             ; 2 uses
  %i.ci = load i32, ptr %i.bx, align 4, !tbaa !52
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.g, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24, !llvm.loop !37

_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24: ; preds = %bb.g, %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit, %.preheader.i20
  br i1 %4, label %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24._crit_edge, label %bb.h

_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24._crit_edge: ; preds = %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24
  %.pre37 = load float, ptr %i.d, align 4, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24._crit_edge, %bb.h
  %i.cl = phi float [ %.pre37, %_ZN3jxl13ZeroFillImageIaEEvPNS_5PlaneIT_EE.exit24._crit_edge ], [ 0.000000e+00, %bb.h ]
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %12 = load <4 x float>, ptr %i.c, align 8
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %14 = load <4 x float>, ptr %i.b, align 4
  %i.cn = load <2 x i32>, ptr %i.e, align 8, !tbaa !14
  %i.co = sitofp <2 x i32> %i.cn to <2 x float>
  %i.cp = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> %13, float %i.cl, i64 1
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cp, <2 x float> %i.cq) ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  store float %i.cs, ptr %i.cm, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.cu = extractelement <2 x float> %i.cr, i64 1
  store float %i.cu, ptr %i.ct, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.cv, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(152) %7, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = load i64, ptr %i.ai, align 8, !tbaa !45
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dc = load i64, ptr %i.be, align 8, !tbaa !45
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !tbaa.struct !60
  %.pr = load i32, ptr %i.as, align 8, !tbaa !41
  %i.de = icmp eq i32 %.pr, 0
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %.pr33 = load i32, ptr %i.w, align 8, !tbaa !41
  %i.df = icmp eq i32 %.pr33, 0
  br i1 %i.df, label %bb.l, label %_ZN3jxl8StatusOrINS_5PlaneIaEEED2Ev.exit25

bb.l:                                             ; preds = %bb.k
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #8
  br label %_ZN3jxl8StatusOrINS_5PlaneIaEEED2Ev.exit25

_ZN3jxl8StatusOrINS_5PlaneIaEEED2Ev.exit25:       ; preds = %.thread34, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dg) #8
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dh) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

declare void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!"_ZTSN3jxl16ColorCorrelationE", !5, i64 0, !6, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32, !6, i64 36}
!13 = !{!12, !6, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!12, !11, i64 28}
!17 = !{!12, !6, i64 32}
!18 = !{!12, !6, i64 36}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSN3jxl9BitReaderE", !9, i64 0, !9, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !9, i64 40, !20, i64 48, !9, i64 56}
!22 = !{!21, !19, i64 16}
!23 = !{!21, !19, i64 24}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!21, !9, i64 0}
!26 = !{!21, !9, i64 8}
!27 = !{!12, !11, i64 20}
!28 = !{!12, !11, i64 24}
!29 = distinct !{!29, i1 false, !"_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm"}
!30 = distinct !{!30, !29, !"_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZNO3jxl8StatusOrINS_5PlaneIaEEE6value_Ev"}
!32 = distinct !{!32, !31, !"_ZNO3jxl8StatusOrINS_5PlaneIaEEE6value_Ev: argument 0"}
!33 = distinct !{!33, i1 false, !"_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm"}
!34 = distinct !{!34, !33, !"_ZN3jxl5PlaneIaE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZNO3jxl8StatusOrINS_5PlaneIaEEE6value_Ev"}
!36 = distinct !{!36, !35, !"_ZNO3jxl8StatusOrINS_5PlaneIaEEE6value_Ev: argument 0"}
!37 = distinct !{!37, !55}
!38 = !{!30}
!39 = !{!"_ZTSN3jxl10StatusCodeE", !5, i64 0}
!40 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIaEEEE", !5, i64 0, !39, i64 56}
!41 = !{!40, !39, i64 56}
!42 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !10, i64 0}
!43 = !{!"_ZTSN3jxl13AlignedMemoryE", !10, i64 0, !42, i64 8, !10, i64 16}
!44 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !43, i64 24, !9, i64 48}
!45 = !{!44, !9, i64 48}
!46 = !{!"_ZTSN3jxl8StatusOrINS_19ColorCorrelationMapEEE", !5, i64 0, !39, i64 152}
!47 = !{!46, !39, i64 152}
!48 = !{!32}
!49 = !{!34}
!50 = !{!36}
!51 = !{!44, !6, i64 0}
!52 = !{!44, !6, i64 4}
!53 = !{!43, !10, i64 16}
!54 = !{!44, !9, i64 16}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"_ZTSN3jxl5PlaneIaEE", !44, i64 0}
!57 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !56, i64 0, !56, i64 56, !12, i64 112}
!58 = !{!57, !11, i64 140}
!59 = !{!5, !5, i64 0}
!60 = !{i64 0, i64 16, !59, i64 16, i64 4, !14, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !14, i64 36, i64 4, !14}
end_hunk_0
