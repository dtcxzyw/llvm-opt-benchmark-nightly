Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_function?download=true
inline.NumInlined: 10455
inline.NumDeleted: 2016
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit.thread, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit ] ; 4 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit ]
  invoke void @_ZN6casadi2MXC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !12

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #26 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #26
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #29
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit.thread
  %i.q = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.q, align 8, !tbaa !51
  ret void

.body:                                            ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #28
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.n
}

declare void @_ZNK6casadi2MX16split_primitivesERKS0_(ptr dead_on_unwind writable sret(%"class.std::vector.29") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZNK6casadi2MX12n_primitivesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6casadi2MXC1ERKSt4pairIxxE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK6casadi2MX15join_primitivesERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !52 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #26
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.h = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !261
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #28
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10MXFunction10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(1498) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::vector.15", align 8   ; 5 uses
  %19 = alloca %"class.std::vector.185", align 8  ; 10 uses
  %20 = alloca %"class.std::vector.185", align 8  ; 18 uses
  %21 = alloca %"class.std::vector.185", align 8  ; 11 uses
  %22 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %23 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %24 = alloca %"class.std::vector.185", align 8  ; 17 uses
  %25 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %26 = alloca %"class.std::allocator.31", align 1 ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.std::vector.194", align 8  ; 11 uses
  %30 = alloca %"class.std::vector.29", align 16  ; 10 uses
  %31 = alloca %"class.std::vector.194", align 8  ; 12 uses
  %32 = alloca %"class.std::vector.185", align 8  ; 16 uses
  %33 = alloca %"class.std::vector.185", align 8  ; 20 uses
  %34 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %35 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %36 = alloca %"class.std::vector.29", align 8   ; 14 uses
  %37 = alloca %"class.std::allocator.31", align 1 ; 4 uses
  %38 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %39 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %40 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %41 = alloca %"class.std::allocator.31", align 1 ; 4 uses
  %42 = alloca %"class.casadi::MX", align 8       ; 9 uses
  %43 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %44 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::allocator", align 1   ; 5 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !175, !range !163, !noundef !164
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.12, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57, !noalias !665
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !665 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !77, !alias.scope !666
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.p, align 8, !tbaa !79, !alias.scope !666
  store i8 0, ptr %i.o, align 8, !tbaa !58, !alias.scope !666
  %i.q = add i64 %i.n, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !79, !alias.scope !666
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.n
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = load i64, ptr %i.p, align 8, !tbaa !79, !alias.scope !666
  %i.w = add i64 %i.v, -4611686018427387891
  %i.x = icmp ult i64 %i.w, 13
  br i1 %i.x, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.67, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !57, !alias.scope !666 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !58, !alias.scope !666
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %bb.ht, %bb.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn326.pn.pn.pn.pn.pn883, %bb.ii ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389 ], [ %.pn324, %bb.ht ], [ %i.z, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !262
  %i.ag = load ptr, ptr %1, align 8, !tbaa !260
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !78
  invoke void @_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.al = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !667 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !79, !noalias !667 ; 4 uses
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !57, !noalias !667 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.ar = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.as = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !667
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.au = icmp ugt i64 %i.ao, %i.at
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.av = load ptr, ptr %6, align 8, !tbaa !57, !noalias !667
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.f
  %i.ay = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !58, !noalias !667
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.ba = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ao, %i.ba
  br i1 %.not.i, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.al)
          to label %.noexc unwind label %bb.p     ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !77, !alias.scope !667
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.g:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !79 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc
  store ptr %i.bd, ptr %4, align 8, !tbaa !57, !alias.scope !667
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !58
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !58, !alias.scope !667
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !79, !alias.scope !667
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !57
  store i64 0, ptr %i.bl, align 8, !tbaa !79
  store i8 0, ptr %i.be, align 8, !tbaa !58
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bo = sub i64 4611686018427387903, %i.al
  %i.bp = icmp ult i64 %i.bo, %i.an
  br i1 %i.bp, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
end_hunk_0
begin_hunk_1_@_ZNK6casadi10MXFunction10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_:bb.a
  %i.ow = ptrtoint ptr %i.os to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ox) #28
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i454

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i454: ; preds = %bb.cc, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i452
  %i.oy = getelementptr inbounds nuw i8, ptr %.05.i.i.i445, i64 24 ; 2 uses
  %.not.i.i.i455 = icmp eq ptr %i.oy, %i.on
  br i1 %.not.i.i.i455, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i456, label %.lr.ph.i.i.i444, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i456: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i454
  %.pr.i457 = load ptr, ptr %21, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i458

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i458: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i456, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.oz = phi ptr [ %.pr.i457, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i456 ], [ %i.ol, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i459 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i1.i459, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i458
  %i.pa = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !261
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = ptrtoint ptr %i.oz to i64
  %i.pe = sub i64 %i.pc, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pe) #28
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i458, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.pf = load ptr, ptr %20, align 8, !tbaa !260  ; 3 uses
  %i.pg = load ptr, ptr %i.ls, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i461 = icmp eq ptr %i.pf, %i.pg
  br i1 %.not4.i.i.i461, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i476, label %.lr.ph.i.i.i462

.lr.ph.i.i.i462:                                  ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472
  %.05.i.i.i463 = phi ptr [ %i.pr, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472 ], [ %i.pf, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460 ] ; 5 uses
  %i.ph = load ptr, ptr %.05.i.i.i463, align 8, !tbaa !52 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.05.i.i.i463, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i.i.i.i464 = icmp eq ptr %i.ph, %i.pj
  br i1 %.not4.i.i.i.i.i.i.i464, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i470, label %.lr.ph.i.i.i.i.i.i.i465

.lr.ph.i.i.i.i.i.i.i465:                          ; preds = %.lr.ph.i.i.i462, %.lr.ph.i.i.i.i.i.i.i465
  %.05.i.i.i.i.i.i.i466 = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i.i.i465 ], [ %i.ph, %.lr.ph.i.i.i462 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i466) #26
  %i.pk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i466, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i467 = icmp eq ptr %i.pk, %i.pj
  br i1 %.not.i.i.i.i.i.i.i467, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i468, label %.lr.ph.i.i.i.i.i.i.i465, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i468: ; preds = %.lr.ph.i.i.i.i.i.i.i465
  %.pr.i.i.i.i.i469 = load ptr, ptr %.05.i.i.i463, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i470

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i470: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i468, %.lr.ph.i.i.i462
  %i.pl = phi ptr [ %.pr.i.i.i.i.i469, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i468 ], [ %i.ph, %.lr.ph.i.i.i462 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i471 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i1.i.i.i.i.i471, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i470
  %i.pm = getelementptr inbounds nuw i8, ptr %.05.i.i.i463, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !64
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pl to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pq) #28
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472: ; preds = %bb.ce, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i470
  %i.pr = getelementptr inbounds nuw i8, ptr %.05.i.i.i463, i64 24 ; 2 uses
  %.not.i.i.i473 = icmp eq ptr %i.pr, %i.pg
  br i1 %.not.i.i.i473, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i474, label %.lr.ph.i.i.i462, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i474: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i472
  %.pr.i475 = load ptr, ptr %20, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i476

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i476: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i474, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460
  %i.ps = phi ptr [ %.pr.i475, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i474 ], [ %i.pf, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev.exit460 ] ; 3 uses
  %.not.i.i1.i477 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i1.i477, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i476
  %i.pt = load ptr, ptr %i.kx, align 8, !tbaa !261
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pw) #28
  br label %bb.cj

bb.cg:                                            ; preds = %._crit_edge1003
  %i.px = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.loopexit.split-lp931

.lr.ph1006:                                       ; preds = %.preheader924, %bb.ch
  %.02441005 = phi i64 [ %i.qf, %bb.ch ], [ 0, %.preheader924 ] ; 3 uses
  %i.py = load ptr, ptr %21, align 8, !tbaa !260
  %i.pz = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %.02441005
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0846.1, i64 %.02441005
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !170
  %i.qc = load ptr, ptr %2, align 8, !tbaa !260
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.qb
  %i.qe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %bb.ch unwind label %.thread   ; 0 uses

bb.ch:                                            ; preds = %.lr.ph1006
  %i.qf = add nuw nsw i64 %.02441005, 1           ; 2 uses
  %i.qg = load ptr, ptr %i.ls, align 8, !tbaa !262
  %i.qh = load ptr, ptr %20, align 8, !tbaa !260
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = sdiv exact i64 %i.qk, 24
  %i.qm = icmp ult i64 %i.qf, %i.ql
  br i1 %i.qm, label %.lr.ph1006, label %._crit_edge1007.thread, !llvm.loop !642

.thread:                                          ; preds = %.lr.ph1006
  %i.qn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ci

.loopexit.split-lp931:                            ; preds = %.loopexit930, %.loopexit.split-lp931.loopexit.split-lp, %.loopexit.split-lp931.loopexit, %bb.bt, %bb.cg
  %.sroa.12.0983 = phi ptr [ %.sroa.12.1, %bb.cg ], [ %.sroa.12.0998, %bb.bt ], [ %.sroa.12.0998, %.loopexit930 ], [ %.sroa.12.0998.lcssa1086, %.loopexit.split-lp931.loopexit ], [ %.sroa.9.0999, %.loopexit.split-lp931.loopexit.split-lp ]
  %.sroa.0846.0970 = phi ptr [ %.sroa.0846.1, %bb.cg ], [ %.sroa.0846.01000, %bb.bt ], [ %.sroa.0846.01000, %.loopexit930 ], [ %.sroa.0846.01000, %.loopexit.split-lp931.loopexit ], [ %.sroa.0846.01000, %.loopexit.split-lp931.loopexit.split-lp ] ; 2 uses
  %.pn317.pn.pn = phi { ptr, i32 } [ %i.px, %bb.cg ], [ %.pn317, %bb.bt ], [ %lpad.loopexit932, %.loopexit930 ], [ %lpad.loopexit935, %.loopexit.split-lp931.loopexit ], [ %lpad.loopexit.split-lp936, %.loopexit.split-lp931.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i479 = icmp eq ptr %.sroa.0846.0970, null
  br i1 %.not.i.i.i479, label %_ZNSt6vectorIxSaIxEED2Ev.exit480, label %bb.ci

bb.ci:                                            ; preds = %.thread, %.loopexit.split-lp931
  %.sroa.12.0982 = phi ptr [ %.sroa.12.1, %.thread ], [ %.sroa.12.0983, %.loopexit.split-lp931 ]
  %.sroa.0846.0975 = phi ptr [ %.sroa.0846.1, %.thread ], [ %.sroa.0846.0970, %.loopexit.split-lp931 ] ; 2 uses
  %.pn317.pn.pn879 = phi { ptr, i32 } [ %i.qn, %.thread ], [ %.pn317.pn.pn, %.loopexit.split-lp931 ]
  %i.qo = ptrtoint ptr %.sroa.12.0982 to i64
  %i.qp = ptrtoint ptr %.sroa.0846.0975 to i64
  %i.qq = sub i64 %i.qo, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0846.0975, i64 noundef %i.qq) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit480

_ZNSt6vectorIxSaIxEED2Ev.exit480:                 ; preds = %bb.ci, %.loopexit.split-lp931, %bb.bn
  %.pn317.pn.pn.pn = phi { ptr, i32 } [ %i.lw, %bb.bn ], [ %.pn317.pn.pn, %.loopexit.split-lp931 ], [ %.pn317.pn.pn879, %bb.ci ]
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.hs

.critedge338:                                     ; preds = %.noexc418
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0854.0994, i64 24 ; 2 uses
  %.not898 = icmp eq ptr %i.qr, %.pre1118
  br i1 %.not898, label %.critedge340, label %.lr.ph995

bb.cj:                                            ; preds = %bb.cf, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.hk

.critedge340:                                     ; preds = %.critedge338, %bb.ah, %.critedge336
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !672, !range !163, !noundef !164
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.critedge340
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  invoke void @_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.qv, ptr noundef nonnull align 8 dereferenceable(24) %i.qw, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hk unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hs

bb.cm:                                            ; preds = %.critedge340
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !171
  %i.rb = load ptr, ptr %i.qy, align 8, !tbaa !70
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = ptrtoint ptr %i.rb to i64
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = ashr exact i64 %i.re, 3
  %i.rg = add nsw i64 %i.rf, -1                   ; 4 uses
  %i.rh = icmp ugt i64 %i.rg, 384307168202282325
  br i1 %i.rh, label %bb.cn, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
          to label %.noexc482 unwind label %bb.cv

.noexc482:                                        ; preds = %bb.cn
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i481 = icmp eq i64 %i.rg, 0
  br i1 %.not.i.i.i.i481, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  store i64 0, ptr %24, align 8
  br label %bb.co

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.ri = mul nuw nsw i64 %i.rg, 24               ; 3 uses
  %i.rj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ri) #30
          to label %.noexc483 unwind label %bb.cv ; 5 uses

.noexc483:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.rj, ptr %24, align 8, !tbaa !260
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %i.rg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rj, i8 0, i64 %i.ri, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.rj, i64 %i.ri
  br label %bb.co

bb.co:                                            ; preds = %.noexc483, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.rl = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.rj, %.noexc483 ] ; 2 uses
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.rk, %.noexc483 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc483 ] ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.rn, align 8, !tbaa !261
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.rm, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cp unwind label %bb.cw

bb.cp:                                            ; preds = %bb.co
  %.not5.i.i.i.i = icmp eq ptr %i.rl, %.0.lcssa.i.i.i.i.i
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i484

.lr.ph.i.i.i.i484:                                ; preds = %bb.cp, %.noexc486
  %.06.i.i.i.i = phi ptr [ %i.rp, %.noexc486 ], [ %i.rl, %bb.cp ] ; 2 uses
  %i.ro = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.noexc486 unwind label %bb.cx ; 0 uses

.noexc486:                                        ; preds = %.lr.ph.i.i.i.i484
  %i.rp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i485 = icmp eq ptr %i.rp, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i.i485, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i484, !llvm.loop !15

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit: ; preds = %.noexc486, %bb.cp
  %i.rq = load ptr, ptr %25, align 8, !tbaa !52   ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i487 = icmp eq ptr %i.rq, %i.rs
  br i1 %.not4.i.i.i487, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i488

.lr.ph.i.i.i488:                                  ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, %.lr.ph.i.i.i488
  %.05.i.i.i489 = phi ptr [ %i.rt, %.lr.ph.i.i.i488 ], [ %i.rq, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i489) #26
  %i.rt = getelementptr inbounds nuw i8, ptr %.05.i.i.i489, i64 8 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.rt, %i.rs
  br i1 %.not.i.i.i490, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i488, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i488
  %.pr.i491 = load ptr, ptr %25, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit
  %i.ru = phi ptr [ %.pr.i491, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.rq, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit ] ; 3 uses
  %.not.i.i1.i492 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i1.i492, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.rv = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !64
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.ru to i64
  %i.rz = sub i64 %i.rx, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.rz) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.sa = load i8, ptr %i.e, align 8, !tbaa !175, !range !163, !noundef !164
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.cr, label %bb.dd

bb.cr:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %bb.cr
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.sc)
          to label %bb.ct unwind label %bb.cz     ; 4 uses

bb.ct:                                            ; preds = %bb.cs
  %i.se = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef nonnull @.str.12, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit494 unwind label %bb.cz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit494: ; preds = %bb.ct
  %i.sf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef nonnull @.str.73, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit496 unwind label %bb.cz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit496: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit494
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit498 unwind label %bb.cz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit498: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit496
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.sh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.sh, ptr %28, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 61, ptr %i.a, align 8, !tbaa !78
  %i.si = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc501 unwind label %bb.da ; 3 uses

.noexc501:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit498
  store ptr %i.si, ptr %28, align 8, !tbaa !57
  %i.sj = load i64, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.si, ptr noundef nonnull align 1 dereferenceable(61) @.str.74, i64 61, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.sj, ptr %i.sk, align 8, !tbaa !79
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sj
  store i8 0, ptr %i.sl, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %.noexc501
  %i.sm = load ptr, ptr %27, align 8, !tbaa !57
  %i.sn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !79
  %i.sp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sd, ptr noundef %i.sm, i64 noundef %i.so)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit504 unwind label %bb.dc ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit504: ; preds = %bb.cu
  %i.sq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sp, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit506 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit506: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit504
  %i.sr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sp)
          to label %_ZNSolsEPFRSoS_E.exit508 unwind label %bb.dc ; 0 uses

_ZNSolsEPFRSoS_E.exit508:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit506
  %i.ss = load ptr, ptr %27, align 8, !tbaa !57   ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %_ZNSolsEPFRSoS_E.exit508
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !58
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %_ZNSolsEPFRSoS_E.exit508, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
  %i.sx = load ptr, ptr %28, align 8, !tbaa !57   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.sh
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
  %i.sz = load i64, ptr %i.sh, align 8, !tbaa !58
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.dd

bb.cv:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cn
  %i.tb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hr

bb.cw:                                            ; preds = %bb.co
  %i.tc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i.i.i.i484
  %i.td = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #26
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn280 = phi { ptr, i32 } [ %i.td, %bb.cx ], [ %i.tc, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.hq

bb.cz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit496, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit494, %bb.ct, %bb.cs, %bb.cr
  %i.te = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.hq

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit498
  %i.tf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.db:                                            ; preds = %.noexc501
  %i.tg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit506, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit504, %bb.cu
  %i.th = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ti = load ptr, ptr %27, align 8, !tbaa !57   ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

end_hunk_1
begin_hunk_2_@_ZNK6casadi10MXFunction10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_:bb.a

.sink.split1488:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794.thread
  %.pn326.pn.pn.pn.pn.pn884.ph = phi { ptr, i32 } [ %i.atd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794.thread ], [ %i.arv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796.thread ], [ %i.atd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.ih

bb.ih:                                            ; preds = %.sink.split1488, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796
  %.pn326.pn.pn.pn.pn.pn884 = phi { ptr, i32 } [ %.pn326.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794 ], [ %.pn326.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796 ], [ %.pn326.pn.pn.pn.pn.pn884.ph, %.sink.split1488 ]
  call void @__cxa_free_exception(ptr %i.arq) #26
  br label %bb.ii

bb.ii:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794, %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796
  %.pn326.pn.pn.pn.pn.pn883 = phi { ptr, i32 } [ %.pn326.pn.pn.pn.pn.pn884, %bb.ih ], [ %.pn326.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796 ], [ %.pn326.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.atl = landingpad { ptr, i32 }
          catch ptr null
  %i.atm = extractvalue { ptr, i32 } %i.atl, 0
  call void @__clang_call_terminate(ptr %i.atm) #29
  unreachable

bb.ik:                                            ; preds = %bb.ib, %bb.as
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_argINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_argINS_2MXEEEvRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.h = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.l) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit:     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal8size1_inEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.u) #27
  unreachable

_ZNK6casadi16FunctionInternal8size1_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal8size1_inEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.y = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.ac) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21:   ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.al) #27
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ap = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.at) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24:   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.bc) #27
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit26:  ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !170
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !177
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, !llvm.loop !679

_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal8size1_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal8size1_inEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16FunctionInternal13replace_fseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.185") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.29", align 16   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !260    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !260
  %5 = getelementptr i8, ptr %i.i, i64 %i.f       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.k, align 8, !tbaa !261
  store ptr %5, ptr %i.j, align 8, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = sdiv exact i64 %i.f, 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.o = load ptr, ptr %2, align 8, !tbaa !260
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_argINS_2MXEEESt6vectorIT_SaIS4_EERKS6_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.29") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.014 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = load <2 x ptr>, ptr %4, align 16, !tbaa !179
  store <2 x ptr> %i.w, ptr %i.q, align 8, !tbaa !179
  %i.x = load ptr, ptr %i.m, align 16, !tbaa !64
  store ptr %i.x, ptr %i.u, align 8, !tbaa !64
  %.not4.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #26
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %4, align 16, !tbaa !52   ; 3 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ac, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ag = load ptr, ptr %i.m, align 16, !tbaa !64
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ak = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.n
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !680

bb.f:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK6casadi16FunctionInternal8size_outEx(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i.i, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %1, i64 noundef %i.h) #27
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.j = tail call { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret { i64, i64 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #26
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit:          ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split, %bb.c
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #28
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.h, align 8, !tbaa !64
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i64 %i.g, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !682

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #26 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.av, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %bb.h ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #26
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  invoke void @__cxa_rethrow() #27
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bf

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #29
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i26, %_ZSt10_ConstructIN6casadi2MXEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN6casadi2MXES2_ET0_T_S4_S3_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bi = load ptr, ptr %0, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

declare void @_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6casadi2MXC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6casadi2MX7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK6casadi2MX10ad_forwardERKSt6vectorIS1_IS0_SaIS0_EESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IS_IN6casadi2MXESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !268    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !260 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 5 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !52 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %.pr.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #28
  br label %_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !683

_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !268
  br label %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !269
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IN6casadi2MXESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10MXFunction10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(1498) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::allocator", align 1   ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::vector.15", align 8   ; 5 uses
  %22 = alloca %"class.std::vector.185", align 8  ; 10 uses
  %23 = alloca %"class.std::vector.185", align 8  ; 18 uses
  %24 = alloca %"class.std::vector.185", align 8  ; 11 uses
  %25 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %26 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %27 = alloca %"class.std::vector.185", align 8  ; 12 uses
  %28 = alloca %"class.std::vector.194", align 8  ; 11 uses
  %29 = alloca %"class.std::vector.29", align 16  ; 10 uses
  %30 = alloca %"class.std::vector.194", align 8  ; 12 uses
  %31 = alloca %"class.std::vector.185", align 8  ; 16 uses
  %32 = alloca %"class.std::vector.185", align 8  ; 25 uses
  %33 = alloca %"class.std::vector.185", align 8  ; 22 uses
  %34 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %35 = alloca %"class.std::allocator.31", align 1 ; 4 uses
  %36 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %37 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %38 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %39 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %40 = alloca %"class.std::vector.29", align 8   ; 16 uses
  %41 = alloca %"class.std::allocator.31", align 1 ; 4 uses
  %42 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %43 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %44 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %45 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %46 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %47 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %48 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %49 = alloca %"struct.std::pair.190", align 8   ; 6 uses
  %50 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::allocator", align 1   ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %58 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !175, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.12, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57, !noalias !732
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79, !noalias !732 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !77, !alias.scope !733
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !79, !alias.scope !733
  store i8 0, ptr %i.n, align 8, !tbaa !58, !alias.scope !733
  %i.p = add i64 %i.m, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.p)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !79, !alias.scope !733
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.m
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !79, !alias.scope !733
  %i.v = add i64 %i.u, -4611686018427387891
  %i.w = icmp ult i64 %i.v, 13
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.77, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %8, align 8, !tbaa !57, !alias.scope !733 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !58, !alias.scope !733
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %bb.jh, %bb.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn381.pn.pn.pn.pn.pn986, %bb.jw ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn379, %bb.jh ], [ %i.y, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !262
  %i.af = load ptr, ptr %1, align 8, !tbaa !260
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !78
  invoke void @_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !734 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79, !noalias !734 ; 4 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !57, !noalias !734 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.n
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !734
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.at = icmp ugt i64 %i.an, %i.as
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.au = load ptr, ptr %9, align 8, !tbaa !57, !noalias !734
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.f
  %i.ax = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.f
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !58, !noalias !734
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.az = phi i64 [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.an, %i.az
  br i1 %.not.i, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ak)
          to label %.noexc unwind label %bb.p     ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.bb, ptr %7, align 8, !tbaa !77, !alias.scope !734
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.g:                                             ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc
  store ptr %i.bc, ptr %7, align 8, !tbaa !57, !alias.scope !734
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !58
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !58, !alias.scope !734
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !79
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !79, !alias.scope !734
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !57
  store i64 0, ptr %i.bk, align 8, !tbaa !79
  store i8 0, ptr %i.bd, align 8, !tbaa !58
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bn = sub i64 4611686018427387903, %i.ak
  %i.bo = icmp ult i64 %i.bn, %i.am
  br i1 %i.bo, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
          to label %.noexc396 unwind label %bb.p

.noexc396:                                        ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_ZNK6casadi10MXFunction10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_:bb.a
  %.not.i.i1.i.i.i.i.i.i621 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i1.i.i.i.i.i.i621, label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i622, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i620
  %i.yv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i613, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !64
  %i.yx = ptrtoint ptr %i.yw to i64
  %i.yy = ptrtoint ptr %i.yu to i64
  %i.yz = sub i64 %i.yx, %i.yy
  call void @_ZdlPvm(ptr noundef nonnull %i.yu, i64 noundef %i.yz) #28
  br label %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i622

_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i622: ; preds = %bb.dm, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i620
  %i.za = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i613, i64 24 ; 2 uses
  %.not.i.i.i.i623 = icmp eq ptr %i.za, %i.yg
  br i1 %.not.i.i.i.i623, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i624, label %.lr.ph.i.i.i.i612, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i624: ; preds = %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i.i622
  store ptr %i.yp, ptr %i.yf, align 8, !tbaa !262
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626: ; preds = %bb.dj, %bb.dk, %bb.dl, %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i624
  %i.zb = load ptr, ptr %i.wx, align 8, !tbaa !51 ; 3 uses
  %i.zc = load ptr, ptr %i.ww, align 8, !tbaa !52 ; 2 uses
  %.not1214 = icmp eq ptr %i.zb, %i.zc
  br i1 %.not1214, label %._crit_edge1168, label %.lr.ph1167

._crit_edge1168:                                  ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626
  %i.zd = phi ptr [ %i.zb, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626 ], [ %i.aac, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633 ]
  %i.ze = phi ptr [ %i.zb, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626 ], [ %i.aab, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633 ]
  %i.zf = add nuw nsw i64 %.02771169, 1           ; 2 uses
  %exitcond1304.not = icmp eq i64 %i.zf, %i.fx
  br i1 %exitcond1304.not, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE11_M_allocateEm.exit.i597, label %bb.di, !llvm.loop !708

bb.dn:                                            ; preds = %bb.dj
  %i.zg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jc

.lr.ph1167:                                       ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633
  %i.zh = phi ptr [ %i.aac, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633 ], [ %i.zc, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626 ]
  %.02761166 = phi i64 [ %i.aaa, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633 ], [ 0, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE6resizeEm.exit626 ] ; 3 uses
  %i.zi = load ptr, ptr %30, align 8, !tbaa !268
  %i.zj = getelementptr inbounds nuw [24 x i8], ptr %i.zi, i64 %.02771169
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !260
  %i.zl = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %.02761166 ; 3 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %.02761166
  %i.zn = invoke noundef i64 @_ZNK6casadi2MX12n_primitivesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zm)
          to label %bb.do unwind label %bb.ds     ; 4 uses

bb.do:                                            ; preds = %.lr.ph1167
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 8 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !51 ; 3 uses
  %i.zq = load ptr, ptr %i.zl, align 8, !tbaa !52 ; 2 uses
  %i.zr = ptrtoint ptr %i.zp to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = ashr exact i64 %i.zt, 3                 ; 3 uses
  %i.zv = icmp ugt i64 %i.zn, %i.zu
  br i1 %i.zv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.zw = sub nuw i64 %i.zn, %i.zu
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zl, i64 noundef %i.zw)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633 unwind label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %i.zx = icmp ult i64 %i.zn, %i.zu
  br i1 %i.zx, label %bb.dr, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633

bb.dr:                                            ; preds = %bb.dq
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %i.zn ; 3 uses
  %.not.i.i627 = icmp eq ptr %i.zp, %i.zy
  br i1 %.not.i.i627, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633, label %.lr.ph.i.i.i.i628

.lr.ph.i.i.i.i628:                                ; preds = %bb.dr, %.lr.ph.i.i.i.i628
  %.05.i.i.i.i629 = phi ptr [ %i.zz, %.lr.ph.i.i.i.i628 ], [ %i.zy, %bb.dr ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i629) #26
  %i.zz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i629, i64 8 ; 2 uses
  %.not.i.i.i.i630 = icmp eq ptr %i.zz, %i.zp
  br i1 %.not.i.i.i.i630, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i631, label %.lr.ph.i.i.i.i628, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i631: ; preds = %.lr.ph.i.i.i.i628
  store ptr %i.zy, ptr %i.zo, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633

_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit633: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i631, %bb.dr, %bb.dq, %bb.dp
  %i.aaa = add nuw nsw i64 %.02761166, 1          ; 2 uses
  %i.aab = load ptr, ptr %i.wx, align 8, !tbaa !51 ; 2 uses
  %i.aac = load ptr, ptr %i.ww, align 8, !tbaa !52 ; 3 uses
  %i.aad = ptrtoint ptr %i.aab to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = ashr exact i64 %i.aaf, 3
  %i.aah = icmp ult i64 %i.aaa, %i.aag
  br i1 %i.aah, label %.lr.ph1167, label %._crit_edge1168, !llvm.loop !709

bb.ds:                                            ; preds = %bb.dp, %.lr.ph1167
  %i.aai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.jc

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE11_M_allocateEm.exit.i634: ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i607
  %i.aaj = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !262
  %i.aal = ptrtoint ptr %i.aak to i64
  %i.aam = sub i64 %i.aal, %i.xt
  %i.aan = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #30
          to label %.noexc646 unwind label %bb.dz ; 4 uses

.noexc646:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE11_M_allocateEm.exit.i634
  %i.aao = load ptr, ptr %32, align 8, !tbaa !260 ; 3 uses
  %i.aap = load ptr, ptr %i.aaj, align 8, !tbaa !262 ; 2 uses
  %.not10.i.i.i.i635 = icmp eq ptr %i.aao, %i.aap
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i642, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc646, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.aav, %.lr.ph.i.i.i.i636 ], [ %i.aan, %.noexc646 ] ; 3 uses
  %.0911.i.i.i.i638 = phi ptr [ %i.aau, %.lr.ph.i.i.i.i636 ], [ %i.aao, %.noexc646 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.aaq = load <2 x ptr>, ptr %.0911.i.i.i.i638, align 8, !tbaa !179, !alias.scope !743, !noalias !742
  store <2 x ptr> %i.aaq, ptr %.012.i.i.i.i637, align 8, !tbaa !179, !alias.scope !742, !noalias !743
  %i.aar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i638, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !64, !alias.scope !743, !noalias !742
  store ptr %i.aat, ptr %i.aar, align 8, !tbaa !64, !alias.scope !742, !noalias !743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i638, i8 0, i64 24, i1 false), !alias.scope !743, !noalias !742
  %i.aau = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i638, i64 24 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 24
  %.not.i.i.i.i639 = icmp eq ptr %i.aau, %i.aap
  br i1 %.not.i.i.i.i639, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i640, label %.lr.ph.i.i.i.i636, !llvm.loop !14

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i640: ; preds = %.lr.ph.i.i.i.i636
  %.pr.i641 = load ptr, ptr %32, align 8, !tbaa !260
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i642

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i642: ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i640, %.noexc646
  %i.aaw = phi ptr [ %.pr.i641, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i640 ], [ %i.aao, %.noexc646 ] ; 3 uses
  %.not.i8.i643 = icmp eq ptr %i.aaw, null
  br i1 %.not.i8.i643, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i644, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i642
  %i.aax = load ptr, ptr %i.xp, align 8, !tbaa !261
  %i.aay = ptrtoint ptr %i.aax to i64
  %i.aaz = ptrtoint ptr %i.aaw to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  call void @_ZdlPvm(ptr noundef nonnull %i.aaw, i64 noundef %i.aba) #28
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i644

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i644: ; preds = %bb.dt, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i642
  store ptr %i.aan, ptr %32, align 8, !tbaa !260
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aam
  store ptr %i.abb, ptr %i.aaj, align 8, !tbaa !262
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.fw
  store ptr %i.abc, ptr %i.xp, align 8, !tbaa !261
  br label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE7reserveEm.exit647

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE7reserveEm.exit647: ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i607, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i644
  %i.abd = add nuw nsw i64 %i.fx, 63              ; 2 uses
  %i.abe = lshr i64 %i.abd, 3
  %i.abf = and i64 %i.abe, 144115188075855864
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abf) #30
          to label %bb.du unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 6 uses

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE7reserveEm.exit647
  %i.abh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body650

bb.du:                                            ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE7reserveEm.exit647
  %i.abi = lshr i64 %i.abd, 3
  %.idx.i = and i64 %i.abi, 144115188075855864    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abg, i8 0, i64 %.idx.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !171
  %i.abm = load ptr, ptr %i.abj, align 8, !tbaa !70
  %i.abn = ptrtoint ptr %i.abl to i64
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = sub i64 %i.abn, %i.abo
  %i.abq = ashr exact i64 %i.abp, 3
  %i.abr = add nsw i64 %i.abq, -1                 ; 4 uses
  %i.abs = icmp ugt i64 %i.abr, 384307168202282325
  br i1 %i.abs, label %bb.dv, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
          to label %.noexc657 unwind label %bb.ea

.noexc657:                                        ; preds = %bb.dv
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.du
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i652 = icmp eq i64 %i.abr, 0
  br i1 %.not.i.i.i.i652, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i653

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  store i64 0, ptr %33, align 8
  br label %bb.dw

.lr.ph.preheader.i.i.i.i.i653:                    ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.abt = mul nuw nsw i64 %i.abr, 24             ; 3 uses
  %i.abu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abt) #30
          to label %.noexc658 unwind label %bb.ea ; 5 uses

.noexc658:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i653
  store ptr %i.abu, ptr %33, align 8, !tbaa !260
  %i.abv = getelementptr inbounds nuw [24 x i8], ptr %i.abu, i64 %i.abr
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abu, i8 0, i64 %i.abt, i1 false)
  %scevgep.i.i.i.i.i654 = getelementptr i8, ptr %i.abu, i64 %i.abt
  br label %bb.dw

bb.dw:                                            ; preds = %.noexc658, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.abw = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.abu, %.noexc658 ] ; 2 uses
  %.sink.i655 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.abv, %.noexc658 ]
  %.0.lcssa.i.i.i.i.i656 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %scevgep.i.i.i.i.i654, %.noexc658 ] ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store ptr %.sink.i655, ptr %i.aby, align 8, !tbaa !261
  store ptr %.0.lcssa.i.i.i.i.i656, ptr %i.abx, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %.not5.i.i.i.i = icmp eq ptr %i.abw, %.0.lcssa.i.i.i.i.i656
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i659

.lr.ph.i.i.i.i659:                                ; preds = %bb.dx, %.noexc661
  %.06.i.i.i.i = phi ptr [ %i.aca, %.noexc661 ], [ %i.abw, %bb.dx ] ; 2 uses
  %i.abz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %.noexc661 unwind label %bb.ec ; 0 uses

.noexc661:                                        ; preds = %.lr.ph.i.i.i.i659
  %i.aca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i660 = icmp eq ptr %i.aca, %.0.lcssa.i.i.i.i.i656
  br i1 %.not.i.i.i.i660, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i659, !llvm.loop !15

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit: ; preds = %.noexc661, %bb.dx
  %i.acb = load ptr, ptr %34, align 8, !tbaa !52  ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i662 = icmp eq ptr %i.acb, %i.acd
  br i1 %.not4.i.i.i662, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i668, label %.lr.ph.i.i.i663

.lr.ph.i.i.i663:                                  ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit, %.lr.ph.i.i.i663
  %.05.i.i.i664 = phi ptr [ %i.ace, %.lr.ph.i.i.i663 ], [ %i.acb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i664) #26
  %i.ace = getelementptr inbounds nuw i8, ptr %.05.i.i.i664, i64 8 ; 2 uses
  %.not.i.i.i665 = icmp eq ptr %i.ace, %i.acd
  br i1 %.not.i.i.i665, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i666, label %.lr.ph.i.i.i663, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i666: ; preds = %.lr.ph.i.i.i663
  %.pr.i667 = load ptr, ptr %34, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i668

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i668: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i666, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit
  %i.acf = phi ptr [ %.pr.i667, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i666 ], [ %i.acb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN6casadi2MXESaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RKT0_.exit ] ; 3 uses
  %.not.i.i1.i669 = icmp eq ptr %i.acf, null
  br i1 %.not.i.i1.i669, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit670, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i668
  %i.acg = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !64
  %i.aci = ptrtoint ptr %i.ach to i64
  %i.acj = ptrtoint ptr %i.acf to i64
  %i.ack = sub i64 %i.aci, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.ack) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit670

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit670:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i668, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !206, !noalias !744 ; 2 uses
  %i.aco = load ptr, ptr %i.acl, align 8, !tbaa !206, !noalias !745
  %.not10021201 = icmp eq ptr %i.acn, %i.aco
  br i1 %.not10021201, label %.preheader.lr.ph, label %.lr.ph1203

.lr.ph1203:                                       ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit670
  %i.acp = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.acq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.acr = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.acs = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %49, i64 8
  br label %bb.ee

.preheader.lr.ph:                                 ; preds = %.loopexit1010, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit670
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %.pre1327 = load ptr, ptr %i.acv, align 8, !tbaa !51
  %.pre1328 = load ptr, ptr %i.acu, align 8, !tbaa !52
  br label %.preheader

bb.dz:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE11_M_allocateEm.exit.i634, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE11_M_allocateEm.exit.i597
  %i.acw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body650

bb.ea:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i653, %bb.dv
  %i.acx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit862

bb.eb:                                            ; preds = %bb.dw
  %i.acy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ed

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i659
  %i.acz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #26
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn321 = phi { ptr, i32 } [ %i.acz, %bb.ec ], [ %i.acy, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br label %.body801

bb.ee:                                            ; preds = %.lr.ph1203, %.loopexit1010
  %.sroa.0901.01202 = phi ptr [ %i.acn, %.lr.ph1203 ], [ %i.ada, %.loopexit1010 ] ; 15 uses
  %i.ada = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -64 ; 3 uses
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !169
  switch i64 %i.adb, label %bb.fn [
    i64 45, label %.lr.ph1177
    i64 46, label %.lr.ph1175
    i64 47, label %.lr.ph1173
  ]

.lr.ph1173:                                       ; preds = %bb.ee
  %i.adc = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -24
  br label %bb.fi

.lr.ph1175:                                       ; preds = %bb.ee
  %i.add = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -56 ; 3 uses
  %i.ade = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -48 ; 2 uses
  br label %bb.eq

.lr.ph1177:                                       ; preds = %bb.ee
  %i.adf = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -24 ; 2 uses
  %i.adg = getelementptr inbounds i8, ptr %.sroa.0901.01202, i64 -56 ; 2 uses
  br label %bb.ef

.loopexit1027:                                    ; preds = %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit1029 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body801

.loopexit.split-lp1028:                           ; preds = %bb.fr
  %lpad.loopexit.split-lp1030 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body801

bb.ef:                                            ; preds = %.lr.ph1177, %_ZN6casadi2MXaSERKS0_.exit678
  %.02031176 = phi i64 [ 0, %.lr.ph1177 ], [ %i.aez, %_ZN6casadi2MXaSERKS0_.exit678 ] ; 4 uses
  %i.adh = load ptr, ptr %i.adf, align 8, !tbaa !173
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !170
  %i.adj = load ptr, ptr %33, align 8, !tbaa !260
  %i.adk = getelementptr inbounds nuw [24 x i8], ptr %i.adj, i64 %i.adi
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !52
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %.02031176
  %i.adn = load ptr, ptr %30, align 8, !tbaa !268
  %i.ado = getelementptr inbounds nuw [24 x i8], ptr %i.adn, i64 %.02031176 ; 2 uses
  %i.adp = invoke noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adg)
          to label %bb.eg unwind label %.loopexit1013 ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !41
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 400
  %i.ads = load ptr, ptr %i.adr, align 8
  %i.adt = invoke noundef i64 %i.ads(ptr noundef nonnull align 8 dereferenceable(64) %i.adp)
          to label %bb.eh unwind label %.loopexit1013 ; 3 uses

bb.eh:                                            ; preds = %bb.eg
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !262
  %i.adw = load ptr, ptr %i.ado, align 8, !tbaa !260 ; 2 uses
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = ptrtoint ptr %i.adw to i64
  %i.adz = sub i64 %i.adx, %i.ady
  %i.aea = sdiv exact i64 %i.adz, 24              ; 2 uses
  %.not.i.i671 = icmp ult i64 %i.adt, %i.aea
  br i1 %.not.i.i671, label %bb.ei, label %.invoke

.invoke:                                          ; preds = %bb.ek, %bb.eh
  %i.aeb = phi i64 [ %i.adt, %bb.eh ], [ %i.aei, %bb.ek ]
  %i.aec = phi i64 [ %i.aea, %bb.eh ], [ %i.aep, %bb.ek ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %i.aeb, i64 noundef %i.aec) #27
          to label %.cont unwind label %.loopexit.split-lp1014

.cont:                                            ; preds = %.invoke
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.aed = getelementptr inbounds nuw [24 x i8], ptr %i.adw, i64 %i.adt ; 2 uses
  %i.aee = invoke noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adg)
          to label %bb.ej unwind label %.loopexit1013 ; 2 uses

bb.ej:                                            ; preds = %bb.ei
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !41
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 408
  %i.aeh = load ptr, ptr %i.aeg, align 8
  %i.aei = invoke noundef i64 %i.aeh(ptr noundef nonnull align 8 dereferenceable(64) %i.aee)
          to label %bb.ek unwind label %.loopexit1013 ; 3 uses

bb.ek:                                            ; preds = %bb.ej
end_hunk_4
begin_hunk_5_@_ZNK6casadi10MXFunction10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_:bb.a

.sink.split1734:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878.thread
  %.pn381.pn.pn.pn.pn.pn987.ph = phi { ptr, i32 } [ %i.axt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878.thread ], [ %i.awl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880.thread ], [ %i.axt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.jv

bb.jv:                                            ; preds = %.sink.split1734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880
  %.pn381.pn.pn.pn.pn.pn987 = phi { ptr, i32 } [ %.pn381.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878 ], [ %.pn381.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880 ], [ %.pn381.pn.pn.pn.pn.pn987.ph, %.sink.split1734 ]
  call void @__cxa_free_exception(ptr %i.awg) #26
  br label %bb.jw

bb.jw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878, %bb.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880
  %.pn381.pn.pn.pn.pn.pn986 = phi { ptr, i32 } [ %.pn381.pn.pn.pn.pn.pn987, %bb.jv ], [ %.pn381.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit880 ], [ %.pn381.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ayb = landingpad { ptr, i32 }
          catch ptr null
  %i.ayc = extractvalue { ptr, i32 } %i.ayb, 0
  call void @__clang_call_terminate(ptr %i.ayc) #29
  unreachable

bb.jy:                                            ; preds = %bb.jp, %bb.as
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_resINS_2MXEEEbRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_resINS_2MXEEEvRKSt6vectorIT_SaIS4_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.h = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.l) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit:     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal9size1_outEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.u) #27
  unreachable

_ZNK6casadi16FunctionInternal9size1_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal9size1_outEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.y = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.ac) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21:   ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.al) #27
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ap = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.at) #27
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24:   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, i64 noundef %.01660, i64 noundef %i.bc) #27
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit26: ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !170
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !253
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, !llvm.loop !748

_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal9size1_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal9size1_outEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16FunctionInternal13replace_aseedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EERKS8_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.185") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.29", align 16   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !260    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !260
  %5 = getelementptr i8, ptr %i.i, i64 %i.f       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.k, align 8, !tbaa !261
  store ptr %5, ptr %i.j, align 8, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = sdiv exact i64 %i.f, 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.o = load ptr, ptr %2, align 8, !tbaa !260
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_resINS_2MXEEESt6vectorIT_SaIS4_EERKS6_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.29") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.014 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = load <2 x ptr>, ptr %4, align 16, !tbaa !179
  store <2 x ptr> %i.w, ptr %i.q, align 8, !tbaa !179
  %i.x = load ptr, ptr %i.m, align 16, !tbaa !64
  store ptr %i.x, ptr %i.u, align 8, !tbaa !64
  %.not4.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #26
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %4, align 16, !tbaa !52   ; 3 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ac, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !52
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ag = load ptr, ptr %i.m, align 16, !tbaa !64
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ak = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.n
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !749

bb.f:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.thread
  ret void
}

declare void @_ZNK6casadi16FunctionInternal12call_reverseERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare void @_ZNK6casadi2MX10ad_reverseERKSt6vectorIS1_IS0_SaIS0_EESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10MXFunction7eval_sxEPPKNS_6SXElemEPPS1_PxS5_Pvbb(ptr noundef nonnull align 8 dereferenceable(1498) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i8, ptr %i.a, align 8, !range !163
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %6, i1 true, i1 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.f = load i8, ptr %i.e, align 1, !range !163
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %7, i1 true, i1 %i.g
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 944
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(1498) %0, i1 noundef zeroext true, i1 noundef zeroext %i.d, i1 noundef zeroext %i.h)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZNK6casadi16FunctionInternal7eval_sxEPPKNS_6SXElemEPPS1_PxS5_Pvbb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.o = load i64, ptr %i.n, align 8, !tbaa !755
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.q = load i64, ptr %i.p, align 8, !tbaa !756
  %i.r = add i64 %i.q, %i.o                       ; 5 uses
  %i.s = icmp ugt i64 %i.r, 1152921504606846975
  br i1 %i.s, label %.noexc, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
  unreachable

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %.noexc104

.noexc104:                                        ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.t = shl nuw nsw i64 %i.r, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !758
  %i.w = add nsw i64 %i.r, -1                     ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit, label %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc104
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !758
  br label %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit

_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc104, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.sroa.12145.0 = phi ptr [ %i.v, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.v, %.noexc104 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.sroa.0140.0 = phi ptr [ %i.u, %_ZSt6fill_nIPPKN6casadi6SXElemEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.u, %.noexc104 ], [ null, %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !759
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !760
  %i.ad = add i64 %i.ac, %i.aa                    ; 5 uses
  %i.ae = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.ae, label %bb.d, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
          to label %.noexc108 unwind label %bb.f

.noexc108:                                        ; preds = %bb.d
  unreachable

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNSt6vectorIPKN6casadi6SXElemESaIS3_EEC2EmRKS4_.exit
  %.not.i.i.i.i105 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i105, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #30
          to label %.noexc109 unwind label %bb.f  ; 5 uses

.noexc109:                                        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !758
  %i.ai = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc109
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.idx.i.i.i.i.i.i.i106 = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %.idx.i.i.i.i.i.i.i106, i1 false), !tbaa !758
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc109, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.0134.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc109 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 10 uses
  %.sroa.12.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc109 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !206 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6casadi8NonZerosINS_2MXESt6vectorIxSaIxEEEC2ERS1_RKS4_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, !prof !172

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !71
  %i.o = load ptr, ptr %2, align 8, !tbaa !173    ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !174

bb.c:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc10
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.o, align 8, !tbaa !170
  store i64 %i.v, ptr %i.k, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN6casadi6MatrixIxEC1ERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6casadi2MX6get_nzERS0_bRKNS_6MatrixIxEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.l:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.o, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  call void @_ZN6casadi2MXD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6casadi2MXC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNK6casadi2MX6get_nzERS0_bRKNS_6MatrixIxEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6casadi6MatrixIxEC1ERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  ret void
}

declare void @_ZN6casadi2MX6set_nzERKS0_bRKNS_6MatrixIxEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40), double noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16FunctionInternal8fwd_seedINS_2MXEEESt6vectorIS3_IT_SaIS4_EESaIS6_EEx(ptr dead_on_unwind noalias writable sret(%"class.std::vector.185") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.casadi::Sparsity", align 8  ; 9 uses
  %8 = alloca %"struct.std::pair.190", align 8    ; 6 uses
  %9 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.b = icmp ugt i64 %2, 384307168202282325
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #27
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph163

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.c = mul nuw nsw i64 %2, 24                   ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !260
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !261
  store ptr %scevgep.i.i.i.i.i, ptr %i.f, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i64, ptr %i.h, align 8, !tbaa !177
  br label %bb.b

._crit_edge164:                                   ; preds = %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.b:                                             ; preds = %.lr.ph163, %._crit_edge
  %i.u = phi i64 [ %.pre, %.lr.ph163 ], [ %i.aj, %._crit_edge ] ; 4 uses
  %storemerge161 = phi i64 [ 0, %.lr.ph163 ], [ %i.al, %._crit_edge ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %storemerge161 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = icmp ugt i64 %i.u, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = sub nuw i64 %i.u, %i.ac
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ae)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.af = icmp ult i64 %i.u, %i.ac
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.e ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ah, %i.x
  br i1 %.not.i.i.i.i32, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit:  ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !177
  %.not166 = icmp eq i64 %i.ai, 0
  br i1 %.not166, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit
  %i.aj = phi i64 [ 0, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !170
  %i.al = add nsw i64 %i.ak, 1                    ; 3 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !170
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %bb.b, label %._crit_edge164, !llvm.loop !1642

bb.f:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.0160 = phi i64 [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 0, %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.559, i64 noundef 1)
          to label %.noexc34 unwind label %bb.w   ; 6 uses

.noexc34:                                         ; preds = %bb.g
  store ptr %i.i, ptr %5, align 8, !tbaa !77, !alias.scope !1650
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc34
  store ptr %i.ap, ptr %5, align 8, !tbaa !57, !alias.scope !1650
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !58
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !58, !alias.scope !1650
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.ax = phi i64 [ %i.at, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ax, ptr %i.j, align 8, !tbaa !79, !alias.scope !1650
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !57
  store i64 0, ptr %i.ay, align 8, !tbaa !79
  store i8 0, ptr %i.aq, align 8, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %i.az = load i64, ptr %i.j, align 8, !tbaa !79, !noalias !1651
  %i.ba = icmp eq i64 %i.az, 4611686018427387903
  br i1 %i.ba, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.560, i64 noundef 1)
          to label %.noexc39 unwind label %.loopexit ; 6 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.k, ptr %4, align 8, !tbaa !77, !alias.scope !1651
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.k:                                             ; preds = %.noexc39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.noexc39
  store ptr %i.bc, ptr %4, align 8, !tbaa !57, !alias.scope !1651
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !58
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !58, !alias.scope !1651
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i37 = load i64, ptr %.phi.trans.insert.i36, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.k
  %i.bk = phi i64 [ %i.bg, %bb.k ], [ %.pre.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bk, ptr %i.l, align 8, !tbaa !79, !alias.scope !1651
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !57
  store i64 0, ptr %i.bl, align 8, !tbaa !79
  store i8 0, ptr %i.bd, align 8, !tbaa !58
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !223
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %.0160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79, !noalias !1652 ; 2 uses
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !79, !noalias !1652
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bp
  br i1 %i.bs, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #27
          to label %.noexc43 unwind label %.loopexit.split-lp76

.noexc43:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !57, !noalias !1652
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bt, i64 noundef %i.bp)
          to label %.noexc44 unwind label %.loopexit75 ; 6 uses

.noexc44:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.n, ptr %3, align 8, !tbaa !77, !alias.scope !1652
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 5 uses
end_hunk_6
