Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cascadedetect_convert?download=true
inline.NumInlined: 350
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv17CascadeClassifier7convertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  br i1 %i.z, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %1, align 8, !tbaa !33
  %i.ad = call i32 @remove(ptr noundef %i.ac) #15 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.ae, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.t

bb.s:                                             ; preds = %bb.d, %bb.f, %bb.q
  %.012 = phi i1 [ %i.z, %bb.q ], [ false, %bb.f ], [ false, %bb.d ]
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 %.012

bb.t:                                             ; preds = %bb.r, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.y, %bb.i ]
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.u ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv11FileStorage8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZNK2cv11FileStorage20getFirstTopLevelNodeEv(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !34
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !35
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !33
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.g, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.i, ptr %i.h, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = load ptr, ptr %0, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv8haar_cvt14HaarClassifierEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv8haar_cvt14HaarClassifierEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 48                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #16
  unreachable

_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 192153584101141162) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 48
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #17 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !105, !alias.scope !104, !noalias !103
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !105, !alias.scope !103, !noalias !104
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %2 = load ptr, ptr %i.z, align 8, !tbaa !26, !alias.scope !104, !noalias !103
  store ptr %2, ptr %i.y, align 8, !tbaa !26, !alias.scope !103, !noalias !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !104, !noalias !103
  %3 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 8, !tbaa !106, !alias.scope !104, !noalias !103
  store <2 x ptr> %i.aa, ptr %3, align 8, !tbaa !106, !alias.scope !103, !noalias !104
  %5 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !22, !alias.scope !104, !noalias !103
  store ptr %7, ptr %5, align 8, !tbaa !22, !alias.scope !103, !noalias !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !104, !noalias !103
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !102

_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8haar_cvt14HaarClassifierEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN2cv8haar_cvt19HaarStageClassifierE", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 16}
!14 = !{!11, !10, i64 8}
!15 = !{!"p1 _ZTSN2cv8haar_cvt14HaarClassifierE", !9, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!"p1 float", !9, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = !{!"p1 _ZTSN2cv8haar_cvt18HaarClassifierNodeE", !9, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 16}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !5, i64 0}
!29 = !{!"p1 omnipotent char", !9, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !31, i64 8, !5, i64 16}
!33 = !{!32, !29, i64 0}
!34 = !{!30, !29, i64 0}
!35 = !{!31, !31, i64 0}
!36 = !{!32, !31, i64 8}
!37 = !{!16, !15, i64 16}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN2cv8haar_cvt11HaarFeatureES2_SaIS2_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN2cv8haar_cvt11HaarFeatureES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !39, !"_ZSt19__relocate_object_aIN2cv8haar_cvt11HaarFeatureES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN2cv8haar_cvt18HaarClassifierNodeES2_SaIS2_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN2cv8haar_cvt18HaarClassifierNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aIN2cv8haar_cvt18HaarClassifierNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = !{!"double", !5, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE12_Vector_implE", !16, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN2cv8haar_cvt14HaarClassifierESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSN2cv8haar_cvt19HaarStageClassifierE", !59, i64 0, !62, i64 8}
!64 = !{!63, !59, i64 0}
!65 = !{!"bool", !5, i64 0}
!66 = !{!"_ZTSN2cv8haar_cvt11HaarFeatureE", !65, i64 0, !5, i64 4}
!67 = !{!66, !65, i64 0}
!68 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!69 = !{!"float", !5, i64 0}
!70 = !{!"_ZTSN2cv8haar_cvt11HaarFeatureUt0_E", !68, i64 0, !69, i64 16}
!71 = !{!70, !6, i64 0}
!72 = !{!70, !6, i64 4}
!73 = !{!70, !6, i64 8}
!74 = !{!70, !6, i64 12}
!75 = !{!70, !69, i64 16}
!76 = !{!65, !65, i64 0}
!77 = !{i64 0, i64 1, !76, i64 4, i64 60, !28}
!78 = !{!41, !40}
!79 = !{!20, !19, i64 8}
!80 = !{!69, !69, i64 0}
!81 = !{!24, !23, i64 8}
!82 = !{!6, !6, i64 0}
!83 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !80}
!84 = !{!45, !44}
!85 = !{!"vtable pointer", !4, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"p1 _ZTSN2cv11FileStorage4ImplE", !9, i64 0}
!88 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!89 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN2cv11FileStorage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !87, i64 0, !89, i64 8}
!91 = !{!"_ZTSSt10shared_ptrIN2cv11FileStorage4ImplEE", !90, i64 0}
!92 = !{!"_ZTSN2cv3PtrINS_11FileStorage4ImplEEE", !91, i64 0}
!93 = !{!"_ZTSN2cv11FileStorageE", !6, i64 8, !32, i64 16, !92, i64 48}
!94 = !{!93, !6, i64 8}
!95 = !{!59, !59, i64 0}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !"_ZSt19__relocate_object_aIN2cv8haar_cvt14HaarClassifierES2_SaIS2_EEvPT_PT0_RT1_"}
!100 = distinct !{!100, !99, !"_ZSt19__relocate_object_aIN2cv8haar_cvt14HaarClassifierES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!101 = distinct !{!101, !99, !"_ZSt19__relocate_object_aIN2cv8haar_cvt14HaarClassifierES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!102 = distinct !{!102, !27}
!103 = !{!100}
!104 = !{!101}
!105 = !{!23, !23, i64 0}
!106 = !{!19, !19, i64 0}
end_hunk_0
