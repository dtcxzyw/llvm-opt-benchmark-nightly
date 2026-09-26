Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/resizeImage?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Vec3" = type { float, float, float }
%"class.Imath_3_2::Vec2.0" = type { float, float }

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13resizeLatLongRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.Imath_3_2::Vec3", align 8   ; 5 uses
  %6 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 5 uses
  %7 = alloca %"class.Imath_3_2::Vec3", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = fpext float %3 to double
  %i.k = fmul double %i.j, f0x400921FB54442D18
  %i.l = sitofp i32 %i.e to double
  %i.m = fdiv double %i.k, %i.l
  %i.n = fptrunc double %i.m to float
  tail call void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  tail call void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %.not28 = icmp slt i32 %i.g, %i.i
  br i1 %.not28, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not2526 = icmp slt i32 %i.d, 0
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br i1 %.not2526, label %._crit_edge30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.u = add i32 %i.b, 1
  %i.v = sub i32 %i.u, %i.c
  %i.w = add i32 %i.g, 1
  %i.x = sub i32 %i.w, %i.i
  %wide.trip.count36 = zext i32 %i.x to i64
  %wide.trip.count = zext i32 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next34, %._crit_edge ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.z = uitofp nneg i32 %i.y to float
  br label %bb.b

._crit_edge30:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader, !llvm.loop !23

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = uitofp nneg i32 %i.aa to float
  store float %i.ab, ptr %6, align 4, !tbaa !12
  store float %i.z, ptr %i.p, align 4, !tbaa !13
  call void @_ZN7Imf_3_410LatLongMap9directionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %5, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  %i.ac = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.ac, ptr %7, align 8, !tbaa !14
  %i.ad = load float, ptr %i.r, align 8, !tbaa !16
  store float %i.ad, ptr %i.q, align 8, !tbaa !16
  %i.ae = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %7, float noundef %i.n, i32 noundef %4)
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !22
  %i.ah = mul nsw i64 %i.ag, %indvars.iv33
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store i64 %i.ae, ptr %i.aj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN7Imf_3_410LatLongMap9directionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec3") align 4, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 4 dead_on_return, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 31 uses
  %6 = alloca %"class.Imath_3_2::Vec3", align 8   ; 25 uses
  %7 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 24 uses
  %8 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 12 uses
  %9 = alloca %"class.Imath_3_2::Vec3", align 8   ; 13 uses
  %i.a = tail call noundef i32 @_ZNK11EnvmapImage4typeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.d = load <2 x i32>, ptr %i.c, align 4
  %i.e = load <2 x i32>, ptr %2, align 4
  %i.f = icmp eq <2 x i32> %i.d, %i.e             ; 2 uses
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %i.h = extractelement <2 x i1> %i.f, i64 1
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit, label %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread

_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit:    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread

bb.c:                                             ; preds = %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit
  tail call void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.r = load <2 x i32>, ptr %i.k, align 4, !tbaa !33
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !33
  %i.t = add <2 x i32> %i.r, splat (i32 1)
  %i.u = sub <2 x i32> %i.t, %i.s                 ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = extractelement <2 x i32> %i.u, i64 0
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = extractelement <2 x i32> %i.u, i64 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.aa, i64 %i.ag, i1 false)
  br label %.loopexit.split

_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread: ; preds = %bb.b, %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit, %bb.a
  %i.ah = tail call noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %2) ; 14 uses
  %i.ai = fmul float %3, 1.500000e+00
  %i.aj = sitofp i32 %i.ah to float
  %i.ak = fdiv float %i.ai, %i.aj                 ; 6 uses
  tail call void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  tail call void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.al = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 6 uses
  br i1 %i.am, label %.preheader, label %.loopexit.split

.preheader:                                       ; preds = %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread, %._crit_edge
  %.03844 = phi i32 [ %i.eu, %._crit_edge ], [ 0, %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread ] ; 2 uses
  %i.as = uitofp nneg i32 %.03844 to float
  br label %bb.i

.preheader.1:                                     ; preds = %._crit_edge, %._crit_edge.1
  %.03844.1 = phi i32 [ %i.bn, %._crit_edge.1 ], [ 0, %._crit_edge ] ; 2 uses
  %i.at = uitofp nneg i32 %.03844.1 to float
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.1
  %.043.1 = phi i32 [ 0, %.preheader.1 ], [ %i.bm, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.au = uitofp nneg i32 %.043.1 to float
  store float %i.au, ptr %5, align 8, !tbaa !12
  store float %i.at, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.av = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.av, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.aw = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.aw, ptr %9, align 8, !tbaa !14
  %i.ax = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.ax, ptr %i.ao, align 8, !tbaa !16
  %i.ay = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.bb = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.bc = fadd <2 x float> %i.bb, splat (float 5.000000e-01) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 1
  %i.be = fptosi float %i.bd to i32
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %i.ba, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bg
  %i.bi = extractelement <2 x float> %i.bc, i64 0
  %i.bj = fptosi float %i.bi to i32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk
  store i64 %i.ay, ptr %i.bl, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.bm = add nuw nsw i32 %.043.1, 1              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bm, %i.ah
  br i1 %exitcond.not.1, label %._crit_edge.1, label %bb.d, !llvm.loop !31

._crit_edge.1:                                    ; preds = %bb.d
  %i.bn = add nuw nsw i32 %.03844.1, 1            ; 2 uses
  %exitcond47.not.1 = icmp eq i32 %i.bn, %i.ah
  br i1 %exitcond47.not.1, label %.preheader.2, label %.preheader.1, !llvm.loop !32

.preheader.2:                                     ; preds = %._crit_edge.1, %._crit_edge.2
  %.03844.2 = phi i32 [ %i.ci, %._crit_edge.2 ], [ 0, %._crit_edge.1 ] ; 2 uses
  %i.bo = uitofp nneg i32 %.03844.2 to float
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.2
  %.043.2 = phi i32 [ 0, %.preheader.2 ], [ %i.ch, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.bp = uitofp nneg i32 %.043.2 to float
  store float %i.bp, ptr %5, align 8, !tbaa !12
  store float %i.bo, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.bq = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.bq, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.br = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.br, ptr %9, align 8, !tbaa !14
  %i.bs = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.bs, ptr %i.ao, align 8, !tbaa !16
  %i.bt = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.bv = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.bw = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.bx = fadd <2 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %i.bz = fptosi float %i.by to i32
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.bv, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = extractelement <2 x float> %i.bx, i64 0
  %i.ce = fptosi float %i.cd to i32
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cf
  store i64 %i.bt, ptr %i.cg, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.ch = add nuw nsw i32 %.043.2, 1              ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.ch, %i.ah
  br i1 %exitcond.not.2, label %._crit_edge.2, label %bb.e, !llvm.loop !31

._crit_edge.2:                                    ; preds = %bb.e
  %i.ci = add nuw nsw i32 %.03844.2, 1            ; 2 uses
  %exitcond47.not.2 = icmp eq i32 %i.ci, %i.ah
  br i1 %exitcond47.not.2, label %.preheader.3, label %.preheader.2, !llvm.loop !32

.preheader.3:                                     ; preds = %._crit_edge.2, %._crit_edge.3
  %.03844.3 = phi i32 [ %i.dd, %._crit_edge.3 ], [ 0, %._crit_edge.2 ] ; 2 uses
  %i.cj = uitofp nneg i32 %.03844.3 to float
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.3
  %.043.3 = phi i32 [ 0, %.preheader.3 ], [ %i.dc, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.ck = uitofp nneg i32 %.043.3 to float
  store float %i.ck, ptr %5, align 8, !tbaa !12
  store float %i.cj, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.cl = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.cl, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.cm = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.cm, ptr %9, align 8, !tbaa !14
  %i.cn = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.cn, ptr %i.ao, align 8, !tbaa !16
  %i.co = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.cp = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.cr = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.cs = fadd <2 x float> %i.cr, splat (float 5.000000e-01) ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 1
  %i.cu = fptosi float %i.ct to i32
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.cq, %i.cv
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cw
  %i.cy = extractelement <2 x float> %i.cs, i64 0
  %i.cz = fptosi float %i.cy to i32
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.da
  store i64 %i.co, ptr %i.db, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.dc = add nuw nsw i32 %.043.3, 1              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dc, %i.ah
  br i1 %exitcond.not.3, label %._crit_edge.3, label %bb.f, !llvm.loop !31

._crit_edge.3:                                    ; preds = %bb.f
  %i.dd = add nuw nsw i32 %.03844.3, 1            ; 2 uses
  %exitcond47.not.3 = icmp eq i32 %i.dd, %i.ah
  br i1 %exitcond47.not.3, label %.preheader.4, label %.preheader.3, !llvm.loop !32

.preheader.4:                                     ; preds = %._crit_edge.3, %._crit_edge.4
  %.03844.4 = phi i32 [ %i.dy, %._crit_edge.4 ], [ 0, %._crit_edge.3 ] ; 2 uses
  %i.de = uitofp nneg i32 %.03844.4 to float
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.4
  %.043.4 = phi i32 [ 0, %.preheader.4 ], [ %i.dx, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.df = uitofp nneg i32 %.043.4 to float
  store float %i.df, ptr %5, align 8, !tbaa !12
  store float %i.de, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.dg = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.dg, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.dh = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.dh, ptr %9, align 8, !tbaa !14
  %i.di = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.di, ptr %i.ao, align 8, !tbaa !16
  %i.dj = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.dl = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.dm = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.dn = fadd <2 x float> %i.dm, splat (float 5.000000e-01) ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 1
  %i.dp = fptosi float %i.do to i32
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul nsw i64 %i.dl, %i.dq
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dr
  %i.dt = extractelement <2 x float> %i.dn, i64 0
  %i.du = fptosi float %i.dt to i32
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dv
  store i64 %i.dj, ptr %i.dw, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.dx = add nuw nsw i32 %.043.4, 1              ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.dx, %i.ah
  br i1 %exitcond.not.4, label %._crit_edge.4, label %bb.g, !llvm.loop !31

._crit_edge.4:                                    ; preds = %bb.g
  %i.dy = add nuw nsw i32 %.03844.4, 1            ; 2 uses
  %exitcond47.not.4 = icmp eq i32 %i.dy, %i.ah
  br i1 %exitcond47.not.4, label %.preheader.5, label %.preheader.4, !llvm.loop !32

.preheader.5:                                     ; preds = %._crit_edge.4, %._crit_edge.5
  %.03844.5 = phi i32 [ %i.et, %._crit_edge.5 ], [ 0, %._crit_edge.4 ] ; 2 uses
  %i.dz = uitofp nneg i32 %.03844.5 to float
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.5
  %.043.5 = phi i32 [ 0, %.preheader.5 ], [ %i.es, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.ea = uitofp nneg i32 %.043.5 to float
  store float %i.ea, ptr %5, align 8, !tbaa !12
  store float %i.dz, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.eb = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.eb, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.ec = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.ec, ptr %9, align 8, !tbaa !14
  %i.ed = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.ed, ptr %i.ao, align 8, !tbaa !16
  %i.ee = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.ef = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.eg = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.eh = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.ei = fadd <2 x float> %i.eh, splat (float 5.000000e-01) ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = fptosi float %i.ej to i32
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.eg, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.em
  %i.eo = extractelement <2 x float> %i.ei, i64 0
  %i.ep = fptosi float %i.eo to i32
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eq
  store i64 %i.ee, ptr %i.er, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.es = add nuw nsw i32 %.043.5, 1              ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.es, %i.ah
  br i1 %exitcond.not.5, label %._crit_edge.5, label %bb.h, !llvm.loop !31

._crit_edge.5:                                    ; preds = %bb.h
  %i.et = add nuw nsw i32 %.03844.5, 1            ; 2 uses
  %exitcond47.not.5 = icmp eq i32 %i.et, %i.ah
  br i1 %exitcond47.not.5, label %.loopexit.split, label %.preheader.5, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.i
  %i.eu = add nuw nsw i32 %.03844, 1              ; 2 uses
  %exitcond47.not = icmp eq i32 %i.eu, %i.ah
  br i1 %exitcond47.not, label %.preheader.1, label %.preheader, !llvm.loop !32

bb.i:                                             ; preds = %.preheader, %bb.i
  %.043 = phi i32 [ 0, %.preheader ], [ %i.fn, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.ev = uitofp nneg i32 %.043 to float
  store float %i.ev, ptr %5, align 8, !tbaa !12
  store float %i.as, ptr %i.an, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %6, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.ew = load <2 x float>, ptr %5, align 8, !tbaa !14
  store <2 x float> %i.ew, ptr %8, align 8, !tbaa !14
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dead_on_return %8)
  %i.ex = load <2 x float>, ptr %6, align 8, !tbaa !14
  store <2 x float> %i.ex, ptr %9, align 8, !tbaa !14
  %i.ey = load float, ptr %i.ap, align 8, !tbaa !16
  store float %i.ey, ptr %i.ao, align 8, !tbaa !16
  %i.ez = call i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dead_on_return %9, float noundef %i.ak, i32 noundef %4)
  %i.fa = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.fb = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.fc = load <2 x float>, ptr %7, align 8, !tbaa !14
  %i.fd = fadd <2 x float> %i.fc, splat (float 5.000000e-01) ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 1
  %i.ff = fptosi float %i.fe to i32
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i64 %i.fb, %i.fg
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fh
  %i.fj = extractelement <2 x float> %i.fd, i64 0
  %i.fk = fptosi float %i.fj to i32
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fl
  store i64 %i.ez, ptr %i.fm, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  %i.fn = add nuw nsw i32 %.043, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fn, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !31

.loopexit.split:                                  ; preds = %._crit_edge.5, %_ZNK9Imath_3_23BoxINS_4Vec2IiEEEeqERKS3_.exit.thread, %bb.c
  ret void
}

declare noundef i32 @_ZNK11EnvmapImage4typeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec3") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef align 4 dead_on_return) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"float", !5, i64 0}
!11 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !10, i64 0, !10, i64 4}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 4}
!14 = !{!10, !10, i64 0}
!15 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!16 = !{!15, !10, i64 8}
!17 = !{!"long", !5, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTSN7Imf_3_44RgbaE", !18, i64 0}
!20 = !{!"_ZTSN7Imf_3_47Array2DINS_4RgbaEEE", !17, i64 0, !17, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!20, !17, i64 8}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !6, i64 0, !6, i64 4}
!26 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !25, i64 0, !25, i64 8}
!27 = !{!26, !6, i64 8}
!28 = !{!26, !6, i64 0}
!29 = !{!26, !6, i64 12}
!30 = !{!26, !6, i64 4}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{!6, !6, i64 0}
end_hunk_0
