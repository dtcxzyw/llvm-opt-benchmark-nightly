Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_:bb.a
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.192", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !638
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !641
  store ptr %i.y, ptr %i.q, align 8, !tbaa !642
  store i32 0, ptr %i.p, align 16, !tbaa !643
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !620
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1217
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !620
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !620
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !620
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !13
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !13
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !13
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !13
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !641
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !642
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !638  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !642  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !641
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !638
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !663
  %i.ad = add i32 %i.ac, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ad, %bb.b ], [ %i.al, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ae = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.af = lshr i64 %i.ae, 5                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = and i32 %.0.i7, 31                      ; 2 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  %i.al = add i32 %.0.i7, 1
  br i1 %i.ak, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1223

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !445
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !13
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !13
  %i.ar = shl nuw i32 1, %i.ai
  %i.as = load i32, ptr %i.am, align 4, !tbaa !13
  %i.at = or i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.am, align 4, !tbaa !13
  %i.au = add i32 %.0.i19, -1
  %i.av = and i32 %i.au, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1224

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1225

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !638
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !643
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !643
  %i.ba = icmp eq i32 %i.aw, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bb = load ptr, ptr %1, align 8, !tbaa !641
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !638
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

_ZN4llvm8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7SDValueEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 12}
!13 = !{!5, !5, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16, !21}
!25 = distinct !{!25, !16, !21, !22}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16, !21}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb: argument 0"}
!30 = distinct !{!30, !"_ZN8shuffles5vpackEN4llvm8ArrayRefIiEES2_jb"}
!31 = distinct !{!31, !16, !21, !22}
!32 = distinct !{!32, !16, !21}
!33 = distinct !{!33, !16}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN4llvm6SDNodeE", !10, i64 0}
!36 = !{!37, !39, !41}
!37 = distinct !{!37, !38, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!38 = distinct !{!38, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!39 = distinct !{!39, !40, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!40 = distinct !{!40, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!41 = distinct !{!41, !42, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!42 = distinct !{!42, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!43 = !{!44, !5, i64 24}
!44 = !{!"_ZTSN4llvm6SDNodeE", !45, i64 0, !46, i64 8, !5, i64 24, !51, i64 28, !6, i64 32, !52, i64 34, !5, i64 36, !53, i64 40, !54, i64 48, !53, i64 56, !52, i64 64, !52, i64 66, !5, i64 68, !55, i64 72, !6, i64 80, !5, i64 84}
!45 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !10, i64 0}
!46 = !{!"_ZTSN4llvm10ilist_nodeINS_6SDNodeEJEEE", !47, i64 0}
!47 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_6SDNodeELb0ELb0EvLb0EvEEEE", !48, i64 0}
!48 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !49, i64 0}
!49 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !50, i64 0, !50, i64 8}
!50 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !10, i64 0}
!51 = !{!"_ZTSN4llvm11SDNodeFlagsE", !5, i64 0}
!52 = !{!"short", !6, i64 0}
!53 = !{!"p1 _ZTSN4llvm5SDUseE", !10, i64 0}
!54 = !{!"p1 _ZTSN4llvm3EVTE", !10, i64 0}
!55 = !{!"_ZTSN4llvm8DebugLocE", !56, i64 0}
!56 = !{!"p1 _ZTSN4llvm10DILocationE", !10, i64 0}
!57 = !{!44, !52, i64 64}
!58 = distinct !{!58, !16}
!59 = !{!44, !53, i64 40}
!60 = !{!61, !35, i64 0}
!61 = !{!"_ZTSN4llvm7SDValueE", !35, i64 0, !5, i64 8}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !64, i64 0, !65, i64 8, !5, i64 16, !5, i64 20}
!64 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_6SDNodeEEE", !10, i64 0}
!65 = !{!"p1 int", !10, i64 0}
!66 = !{!67, !69, !71, !73, !75}
!67 = distinct !{!67, !68, !"_ZNK4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!68 = distinct !{!68, !"_ZNK4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!69 = distinct !{!69, !70, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!70 = distinct !{!70, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!71 = distinct !{!71, !72, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!72 = distinct !{!72, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!73 = distinct !{!73, !74, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!74 = distinct !{!74, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!75 = distinct !{!75, !76, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!76 = distinct !{!76, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!77 = !{!63, !65, i64 8}
!78 = !{!63, !5, i64 20}
!79 = !{!71, !73, !75}
!80 = !{!"branch_weights", i32 1, i32 1999}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = distinct !{!82, !16}
!83 = !{!63, !5, i64 16}
!84 = !{!85, !87, !71, !73, !75}
!85 = distinct !{!85, !86, !"_ZNK4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!86 = distinct !{!86, !"_ZNK4llvm8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!87 = distinct !{!87, !88, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!88 = distinct !{!88, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!89 = distinct !{!89, !16}
!90 = !{!91, !94, i64 16}
!91 = !{!"_ZTSN4llvm11HvxSelectorE", !92, i64 0, !93, i64 8, !94, i64 16, !95, i64 24, !5, i64 32}
!92 = !{!"p1 _ZTSN4llvm21HexagonTargetLoweringE", !10, i64 0}
!93 = !{!"p1 _ZTSN4llvm19HexagonDAGToDAGISelE", !10, i64 0}
!94 = !{!"p1 _ZTSN4llvm12SelectionDAGE", !10, i64 0}
!95 = !{!"p1 _ZTSN4llvm16HexagonSubtargetE", !10, i64 0}
!96 = !{}
!97 = !{i64 8}
!98 = !{!44, !53, i64 56}
!99 = !{!100, !35, i64 16}
!100 = !{!"_ZTSN4llvm5SDUseE", !61, i64 0, !35, i64 16, !101, i64 24, !53, i64 32}
!101 = !{!"p2 _ZTSN4llvm5SDUseE", !102, i64 0}
!102 = !{!"any p2 pointer", !10, i64 0}
!103 = !{!100, !53, i64 32}
!104 = distinct !{!104, !16}
!105 = !{!106, !108, !110}
!106 = distinct !{!106, !107, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_: argument 0"}
!107 = distinct !{!107, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16try_emplace_implIRKS3_JEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbEOT_DpOT0_"}
!108 = distinct !{!108, !109, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_: argument 0"}
!109 = distinct !{!109, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6SDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEEbERKS3_DpOT_"}
!110 = distinct !{!110, !111, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_: argument 0"}
!111 = distinct !{!111, !"_ZN4llvm6detail12DenseSetImplIPNS_6SDNodeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE6insertERKS3_"}
!112 = !{!91, !93, i64 8}
!113 = !{!114, !94, i64 72}
!114 = !{!"_ZTSN4llvm16SelectionDAGISelE", !115, i64 8, !116, i64 16, !117, i64 24, !118, i64 32, !125, i64 40, !132, i64 48, !133, i64 56, !134, i64 64, !94, i64 72, !135, i64 80, !142, i64 88, !148, i64 768, !149, i64 776, !150, i64 784, !151, i64 792, !152, i64 800, !153, i64 808, !154, i64 816, !147, i64 824, !155, i64 832, !158, i64 888, !147, i64 896, !165, i64 904, !5, i64 920, !5, i64 924, !168, i64 928}
!115 = !{!"p1 _ZTSN4llvm13TargetMachineE", !10, i64 0}
!116 = !{!"p1 _ZTSN4llvm17TargetLibraryInfoE", !10, i64 0}
!117 = !{!"p1 _ZTSN4llvm19LibcallLoweringInfoE", !10, i64 0}
!118 = !{!"_ZTSSt10unique_ptrIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EE", !119, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_ELb1ELb1EE", !120, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EE", !121, i64 0}
!121 = !{!"_ZTSSt5tupleIJPN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EEE", !122, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm20FunctionLoweringInfoESt14default_deleteIS1_EEE", !123, i64 0}
!123 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm20FunctionLoweringInfoELb0EE", !124, i64 0}
!124 = !{!"p1 _ZTSN4llvm20FunctionLoweringInfoE", !10, i64 0}
!125 = !{!"_ZTSSt10unique_ptrIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_ELb1ELb1EE", !127, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EE", !128, i64 0}
!128 = !{!"_ZTSSt5tupleIJPN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EEE", !129, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm23SwiftErrorValueTrackingESt14default_deleteIS1_EEE", !130, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm23SwiftErrorValueTrackingELb0EE", !131, i64 0}
!131 = !{!"p1 _ZTSN4llvm23SwiftErrorValueTrackingE", !10, i64 0}
!132 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !10, i64 0}
!133 = !{!"p1 _ZTSN4llvm17MachineModuleInfoE", !10, i64 0}
!134 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !10, i64 0}
!135 = !{!"_ZTSSt10unique_ptrIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EE", !136, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_ELb1ELb1EE", !137, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EE", !138, i64 0}
!138 = !{!"_ZTSSt5tupleIJPN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EEE", !139, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm19SelectionDAGBuilderESt14default_deleteIS1_EEE", !140, i64 0}
!140 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm19SelectionDAGBuilderELb0EE", !141, i64 0}
!141 = !{!"p1 _ZTSN4llvm19SelectionDAGBuilderE", !10, i64 0}
!142 = !{!"_ZTSSt8optionalIN4llvm14BatchAAResultsEE", !143, i64 0}
!143 = !{!"_ZTSSt14_Optional_baseIN4llvm14BatchAAResultsELb0ELb0EE", !144, i64 0}
!144 = !{!"_ZTSSt17_Optional_payloadIN4llvm14BatchAAResultsELb0ELb0ELb0EE", !145, i64 0}
!145 = !{!"_ZTSSt17_Optional_payloadIN4llvm14BatchAAResultsELb1ELb0ELb0EE", !146, i64 0}
!146 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm14BatchAAResultsEE", !6, i64 0, !147, i64 672}
!147 = !{!"bool", !6, i64 0}
!148 = !{!"p1 _ZTSN4llvm15AssumptionCacheE", !10, i64 0}
!149 = !{!"p1 _ZTSN4llvm14GCFunctionInfoE", !10, i64 0}
!150 = !{!"p1 _ZTSN4llvm13SSPLayoutInfoE", !10, i64 0}
end_hunk_0
