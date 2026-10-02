Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-font?download=true
inline.NumInlined: 170
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7msdfgen21listFontVariationAxesERSt6vectorINS_17FontVariationAxisESaIS1_EEPNS_14FreetypeHandleEPNS_10FontHandleE:bb.a
  store <2 x double> %i.au, ptr %i.an, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !114
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = fmul nnan double %i.ax, f0x3EF0000000000000
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store double %i.ay, ptr %i.az, align 8, !tbaa !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.af, align 8, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !108

bb.g:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i1 [ %.not19, %bb.g ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #7

declare void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double, double, double, double, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double, double, double, double, double, double, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double, double, double, double, double, double, double, double, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i, i8 0, i64 40, i1 false)
  invoke void @_ZN7msdfgen17FontVariationAxis3TagC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !116

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #19 ; 0 uses
  invoke void @__cxa_rethrow() #22
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !83
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 230584300921369395) ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 40                ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33
  %.014.i.i.i31 = phi ptr [ %i.ae, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %i.ac, %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01013.i.i.i32 = phi i64 [ %i.ad, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %1, %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i31, i8 0, i64 40, i1 false)
  invoke void @_ZN7msdfgen17FontVariationAxis3TagC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 unwind label %bb.i

_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.ad = add nsw i64 %.01013.i.i.i32, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 40
  %.not.i.i.i34 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i34, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36, label %.lr.ph.i.i.i30, !llvm.loop !116

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #19 ; 0 uses
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.j
  %i.al = extractvalue { ptr, i32 } %i.ai, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #18
  invoke void @__cxa_rethrow() #22
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36: ; preds = %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36, %.lr.ph.i.i.i38
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i38 ], [ %i.ab, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i38 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !123, !alias.scope !128
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i39 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38, !llvm.loop !120

_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i38, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42

_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42: ; preds = %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.n
  store ptr %i.ab, ptr %0, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %1
  store ptr %i.at, ptr %i.a, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.au, ptr %i.h, align 8, !tbaa !121
  br label %bb.o

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42, %bb.a
  ret void

bb.p:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #21
  unreachable

bb.q:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN7msdfgen10GlyphIndexE", !5, i64 0}
!9 = !{!8, !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!13 = !{!"_ZTSN7msdfgen14FreetypeHandleE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!16 = !{!"bool", !4, i64 0}
!17 = !{!"_ZTSN7msdfgen10FontHandleE", !15, i64 0, !16, i64 8}
!18 = !{!17, !15, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!"p1 _ZTSN7msdfgen7ContourE", !11, i64 0}
!21 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !11, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"double", !4, i64 0}
!24 = !{!"_ZTSN7msdfgen7Vector2E", !23, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTSN7msdfgen5ShapeE", !11, i64 0}
!26 = !{!"_ZTSN7msdfgen9FtContextE", !23, i64 0, !24, i64 8, !25, i64 24, !20, i64 32}
!27 = !{!26, !23, i64 0}
!28 = !{!26, !25, i64 24}
!29 = !{!"long", !4, i64 0}
!30 = !{!21, !21, i64 0}
!31 = !{!26, !20, i64 32}
!32 = !{!29, !29, i64 0}
!33 = !{!23, !23, i64 0}
!34 = !{!"_ZTS10FT_Vector_", !29, i64 0, !29, i64 8}
!35 = !{!34, !29, i64 0}
!36 = !{!34, !29, i64 8}
!37 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !11, i64 0}
!38 = !{!"_ZTSN7msdfgen10EdgeHolderE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 _ZTS14FT_CharMapRec_", !42, i64 0}
!44 = !{!"_ZTS11FT_Generic_", !11, i64 0, !11, i64 8}
!45 = !{!"_ZTS8FT_BBox_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!46 = !{!"short", !4, i64 0}
!47 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!48 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!49 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!50 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!51 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!52 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!53 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!54 = !{!"_ZTS11FT_ListRec_", !53, i64 0, !53, i64 8}
!55 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!56 = !{!"_ZTS11FT_FaceRec_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !40, i64 40, !40, i64 48, !5, i64 56, !41, i64 64, !5, i64 72, !43, i64 80, !44, i64 88, !45, i64 104, !46, i64 136, !46, i64 138, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !47, i64 152, !48, i64 160, !49, i64 168, !50, i64 176, !51, i64 184, !52, i64 192, !54, i64 200, !44, i64 216, !11, i64 232, !55, i64 240}
!57 = !{!56, !46, i64 136}
!58 = !{!56, !47, i64 152}
!59 = !{!"_ZTS17FT_Glyph_Metrics_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56}
!60 = !{!"_ZTS16FT_Glyph_Format_", !4, i64 0}
!61 = !{!"_ZTS10FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !40, i64 16, !46, i64 24, !4, i64 26, !4, i64 27, !11, i64 32}
!62 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!63 = !{!"p1 short", !11, i64 0}
!64 = !{!"_ZTS11FT_Outline_", !46, i64 0, !46, i64 2, !62, i64 8, !40, i64 16, !63, i64 24, !5, i64 32}
!65 = !{!"p1 _ZTS15FT_SubGlyphRec_", !11, i64 0}
!66 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !11, i64 0}
!67 = !{!"_ZTS16FT_GlyphSlotRec_", !12, i64 0, !15, i64 8, !47, i64 16, !5, i64 24, !44, i64 32, !59, i64 48, !29, i64 112, !29, i64 120, !34, i64 128, !60, i64 144, !61, i64 152, !5, i64 192, !5, i64 196, !64, i64 200, !5, i64 240, !65, i64 248, !11, i64 256, !29, i64 264, !29, i64 272, !29, i64 280, !11, i64 288, !66, i64 296}
!68 = !{!67, !29, i64 128}
!69 = !{!5, !5, i64 0}
!70 = !{!56, !29, i64 16}
!71 = !{!"p1 _ZTS10FT_MM_Var_", !11, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTS12FT_Var_Axis_", !11, i64 0}
!74 = !{!"p1 _ZTS19FT_Var_Named_Style_", !11, i64 0}
!75 = !{!"_ZTS10FT_MM_Var_", !5, i64 0, !5, i64 4, !5, i64 8, !73, i64 16, !74, i64 24}
!76 = !{!75, !5, i64 0}
!77 = !{!75, !73, i64 16}
!78 = !{!"_ZTS12FT_Var_Axis_", !40, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !5, i64 40}
!79 = !{!78, !29, i64 32}
!80 = !{!78, !40, i64 0}
!81 = !{!"p1 _ZTSN7msdfgen17FontVariationAxisE", !11, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 0}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!88 = !{!87, !20, i64 0}
!89 = !{!87, !20, i64 8}
!90 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!91 = !{!90, !21, i64 0}
!92 = !{!90, !21, i64 8}
!93 = !{!90, !21, i64 16}
!94 = !{!"_ZTS17FT_Outline_Funcs_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !29, i64 40}
!95 = !{!94, !11, i64 0}
!96 = !{!94, !11, i64 8}
!97 = !{!94, !11, i64 16}
!98 = !{!94, !11, i64 24}
!99 = !{!94, !5, i64 32}
!100 = !{!94, !29, i64 40}
!101 = !{!20, !20, i64 0}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = !{!46, !46, i64 0}
!105 = !{!56, !29, i64 32}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = !{!"_ZTSN7msdfgen17FontVariationAxis3TagE", !4, i64 0}
!110 = !{!"_ZTSN7msdfgen17FontVariationAxisE", !109, i64 0, !40, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!111 = !{!110, !40, i64 8}
!112 = !{!78, !29, i64 8}
!113 = !{!78, !29, i64 24}
!114 = !{!78, !29, i64 16}
!115 = !{!110, !23, i64 32}
!116 = distinct !{!116, !22}
!120 = distinct !{!120, !22}
!121 = !{!82, !81, i64 16}
!122 = !{!40, !40, i64 0}
!123 = !{i64 0, i64 4, !10, i64 8, i64 8, !122, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33}
!125 = distinct !{!125, i1 false, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_"}
!126 = distinct !{!126, !125, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!126, !127}
end_hunk_0
