Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmUIDGenerator?download=true
inline.NumInlined: 330
inline.NumDeleted: 173
begin_hunk_0_@_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:bb.a
  %i.al = load i8, ptr %6, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.ao = load i64, ptr %6, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not42, label %bb.j, label %bb.m

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load i8, ptr %6, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.au = load i64, ptr %6, align 8
  %i.av = and i64 %i.au, -2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.d
  %i.aw = sub i64 %i.b, %i.h                      ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %2, i64 noundef %i.aw), !inline_history !60
  %.not43 = icmp eq i64 %i.bb, %i.aw
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c, %bb.k, %bb.a
  %.sroa.034.2 = phi ptr [ null, %bb.a ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ null, %bb.c ], [ %0, %bb.l ], [ null, %bb.k ]
  ret ptr %.sroa.034.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #8

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  %i.c = load i64, ptr %0, align 8                ; 4 uses
  %i.d = and i64 %i.c, -2
  %i.e = add i64 %i.d, -1
  %i.f = select i1 %i.b, i64 %i.e, i64 22         ; 6 uses
  %.not = icmp ult i64 %i.f, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.c to i8
  %i.h = trunc i64 %i.c to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = select i1 %i.h, ptr %i.k, ptr %i.l       ; 3 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %.pre = load i8, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i8 [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  store i64 %2, ptr %i.i, align 8, !tbaa !9
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

bb.e:                                             ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  %i.p = trunc i64 %2 to i8
  %i.q = shl i8 %i.p, 1
  store i8 %i.q, ptr %0, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = sub nuw i64 %2, %i.f
  %i.t = sub i64 -10, %i.f
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = trunc i64 %i.c to i1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = select i1 %i.v, ptr %i.x, ptr %i.y
  %i.aa = icmp ult i64 %i.f, 9223372036854775795
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = shl nuw i64 %i.f, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.ab) ; 2 uses
  %i.ac = or i64 %.sroa.speculated.i, 7           ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 23
  %i.ae = add i64 %i.ac, 1
  %i.af = select i1 %i.ad, i64 25, i64 %i.ae
  %.inv.i.inv.i = icmp ult i64 %.sroa.speculated.i, 23
  %i.ag = select i1 %.inv.i.inv.i, i64 23, i64 %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi i64 [ %i.ag, %bb.i ], [ -9, %bb.h ] ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %1, i64 %2, i1 false)
  %i.aj = add nuw i64 %i.f, 1                     ; 2 uses
  %.not51.i = icmp eq i64 %i.aj, 23
  br i1 %.not51.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %bb.j, %bb.k
  store ptr %i.ai, ptr %i.w, align 8, !tbaa !9
  %i.ak = or i64 %i.ah, 1
  store i64 %i.ak, ptr %0, align 8
  store i64 %2, ptr %i.r, align 8, !tbaa !9
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit: ; preds = %bb.e, %bb.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink24 = phi ptr [ %i.ai, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sink24, i64 %2
  store i8 0, ptr %i.al, align 1, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_gdcmUIDGenerator.cxx() #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN4gdcm12UIDGenerator4RootE, i64 16), align 8, !tbaa !9
  store i64 33, ptr @_ZN4gdcm12UIDGenerator4RootE, align 8
  store i64 26, ptr getelementptr inbounds nuw (i8, ptr @_ZN4gdcm12UIDGenerator4RootE, i64 8), align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.a, ptr noundef nonnull align 16 dereferenceable(26) @_ZN4gdcm12UIDGenerator8GDCM_UIDE, i64 26, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 0, ptr %i.b, align 1, !tbaa !9
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, ptr nonnull @_ZN4gdcm12UIDGenerator4RootE, ptr nonnull @__dso_handle) #22 ; 0 uses
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, ptr nonnull @_ZN4gdcm12UIDGenerator22EncodedHardwareAddressE, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"p1 int", !14, i64 0}
!17 = !{!"p1 long", !14, i64 0}
!18 = !{!"_ZTSNSt3__18ios_baseE", !6, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !14, i64 40, !14, i64 48, !15, i64 56, !16, i64 64, !13, i64 72, !13, i64 80, !17, i64 88, !13, i64 96, !13, i64 104, !15, i64 112, !13, i64 120, !13, i64 128}
!19 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !14, i64 0}
!20 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !18, i64 0, !19, i64 136, !6, i64 144}
!21 = !{!20, !6, i64 144}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !"_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!26 = distinct !{!26, !25, !"_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!27 = distinct !{!27, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!28 = distinct !{!28, !27, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!29 = distinct !{!29, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_"}
!30 = distinct !{!30, !29, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_: argument 0"}
!31 = !{!20, !19, i64 136}
!32 = !{!"p1 _ZTSNSt3__16locale5__impE", !14, i64 0}
!33 = !{!"_ZTSNSt3__16localeE", !32, i64 0}
!34 = !{!"p1 omnipotent char", !14, i64 0}
!35 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !33, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56}
!36 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !5, i64 0}
!37 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !37, i64 0}
!39 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !35, i64 0, !39, i64 64, !34, i64 88, !6, i64 96}
!41 = !{!40, !6, i64 96}
!42 = !{!26}
!43 = !{!28}
!44 = !{!30}
!45 = !{!30, !28, !26}
!46 = !{!40, !34, i64 88}
!47 = !{!35, !34, i64 48}
!48 = !{!35, !34, i64 32}
!49 = !{!34, !34, i64 0}
!50 = !{ptr @_ZN4gdcm9ExceptionD2Ev}
!51 = distinct !{null}
!52 = !{!"bool", !5, i64 0}
!53 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !52, i64 0, !19, i64 8}
!54 = !{!53, !52, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!18, !14, i64 40}
!58 = !{!18, !6, i64 8}
!59 = !{!18, !6, i64 32}
!60 = distinct !{null}
!61 = !{!18, !13, i64 24}
end_hunk_0
