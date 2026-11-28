Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/jsi?download=true
inline.NumInlined: 510
inline.NumDeleted: 311
begin_hunk_0_@_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !86
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit

_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit: ; preds = %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  tail call void @free(ptr noundef %i.p) #22
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIbLb0ENS0_6parserIbEEEC2IJA15_cNS0_4descENS0_11initializerIbEEEEEDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !117 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4
  %i.d = and i16 %i.c, -4096
  store i16 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 4, ptr %i.j, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.k, align 4, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr %i.o, align 8, !tbaa !71
  store i8 1, ptr %i.p, align 1, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr %i.r, align 8, !tbaa !71
  %i.s = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %1) #21
  invoke void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nonnull align 1 dereferenceable(15) %1, i64 %i.s)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.t, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !75
  %i.u = load ptr, ptr %3, align 8, !tbaa !78, !nonnull !79 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80, !range !81, !noundef !79
  store i8 %i.v, ptr %i.n, align 8, !tbaa !69
  store i8 1, ptr %i.p, align 1, !tbaa !72
  %i.w = load i8, ptr %i.u, align 1, !tbaa !80, !range !81, !noundef !79
  store i8 %i.w, ptr %i.q, align 8, !tbaa !73
  invoke void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZN4llvh2cl3optIbLb0ENS0_6parserIbEEE4doneEv.exit unwind label %bb.c

_ZN4llvh2cl3optIbLb0ENS0_6parserIbEEE4doneEv.exit: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !71
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.y) #22
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEC2IJNS0_15FormattingFlagsENS0_4descENS0_11initializerIA2_cEEEEEDpRKT_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !118 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i16, ptr %i.b, align 4
  %i.d = and i16 %i.c, -4096                      ; 2 uses
  store i16 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 4, ptr %i.j, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.k, align 4, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.p, align 8, !tbaa !85
  store i8 0, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.t, align 8, !tbaa !85
  store i8 0, ptr %i.s, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.u, align 8, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.q, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.v, align 8, !tbaa !71
  %i.w = load i32, ptr %1, align 4, !tbaa !91
  %i.x = trunc i32 %i.w to i16
  %i.y = shl i16 %i.x, 7
  %i.z = and i16 %i.y, 384
  %i.aa = or disjoint i16 %i.z, %i.d
  store i16 %i.aa, ptr %i.b, align 4
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.ab, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !75
  invoke void @_ZNK4llvh2cl11initializerIA2_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(240) %0)
          to label %_ZN4llvh2cl5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS8_EEEENS0_15FormattingFlagsEJNS0_4descENS0_11initializerIA2_cEEEEEvPT_RKT0_DpRKT1_.exit unwind label %bb.b

_ZN4llvh2cl5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS8_EEEENS0_15FormattingFlagsEJNS0_4descENS0_11initializerIA2_cEEEEEvPT_RKT0_DpRKT1_.exit: ; preds = %bb.a
  invoke void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) %0)
          to label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE4doneEv.exit unwind label %bb.b

_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEE4doneEv.exit: ; preds = %_ZN4llvh2cl5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS8_EEEENS0_15FormattingFlagsEJNS0_4descENS0_11initializerIA2_cEEEEEvPT_RKT0_DpRKT1_.exit
  ret void

bb.b:                                             ; preds = %_ZN4llvh2cl5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS8_EEEENS0_15FormattingFlagsEJNS0_4descENS0_11initializerIA2_cEEEEEvPT_RKT0_DpRKT1_.exit, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !71
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !59  ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.ad) #22
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 !guid !136 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.llvh::ErrorOr", align 8     ; 9 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::allocator.61", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvh::InitLLVM", align 8    ; 6 uses
  %7 = alloca %"class.llvh::PrettyStackTraceProgram", align 8 ; 9 uses
  %8 = alloca %"class.hermes::oscompat::SigAltStackLeakSuppressor", align 1 ; 5 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %10 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %12 = alloca %"class.std::unique_ptr.24", align 8 ; 6 uses
  %13 = alloca %"class.hermes::vm::RuntimeConfig", align 8 ; 35 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %16 = alloca %"class.std::shared_ptr.40", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.43", align 16 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.facebook::jsi::Value", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.facebook::jsi::String", align 8 ; 7 uses
  store i32 %0, ptr %i.c, align 4, !tbaa !8
  store ptr %1, ptr %i.d, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvh8InitLLVMC2ERiRPPKc(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  invoke void @_ZN4llvh3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr nonnull @.str.15, i64 10, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.e = load i32, ptr %i.c, align 4, !tbaa !8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !138
  invoke void @_ZN4llvh21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh23PrettyStackTraceProgramE, i64 16), ptr %7, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.e, ptr %i.g, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !143
  invoke void @_ZN4llvh22EnablePrettyStackTraceEv()
          to label %_ZN4llvh23PrettyStackTraceProgramC2EiPKPKc.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4llvh17llvm_shutdown_objD2Ev.exit170

_ZN4llvh23PrettyStackTraceProgramC2EiPKPKc.exit:  ; preds = %.noexc
  %i.j = load i32, ptr %i.c, align 4, !tbaa !8
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.l = invoke noundef zeroext i1 @_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE(i32 noundef %i.j, ptr noundef %i.k, ptr nonnull @.str.16, i64 11, ptr noundef null)
          to label %bb.d unwind label %bb.m       ; 0 uses

bb.d:                                             ; preds = %_ZN4llvh23PrettyStackTraceProgramC2EiPKPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10EvalScriptB5cxx11, i64 160), align 8, !tbaa !85
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 160), align 8, !tbaa !85
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), align 8, !tbaa !89
  %lhsc = load i8, ptr %i.q, align 1
  %.not = icmp eq i8 %lhsc, 45
  br i1 %.not, label %bb.o, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv()
          to label %bb.f unwind label %bb.n       ; 4 uses

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 42
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull @.str.17, i64 noundef 42)
          to label %._ZN4llvh11raw_ostreamlsEPKc.exit_crit_edge unwind label %bb.n ; 2 uses

._ZN4llvh11raw_ostreamlsEPKc.exit_crit_edge:      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !95
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.v, ptr noundef nonnull align 1 dereferenceable(42) @.str.17, i64 42, i1 false)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 42 ; 2 uses
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !95
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %._ZN4llvh11raw_ostreamlsEPKc.exit_crit_edge, %bb.h
  %i.ad = phi ptr [ %.pre, %._ZN4llvh11raw_ostreamlsEPKc.exit_crit_edge ], [ %i.ac, %bb.h ] ; 3 uses
  %.0.i.i = phi ptr [ %i.aa, %._ZN4llvh11raw_ostreamlsEPKc.exit_crit_edge ], [ %i.r, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94
  %.not.i = icmp ult ptr %i.ad, %i.af
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i8 noundef zeroext 10)
          to label %_ZN4llvh11raw_ostreamlsEc.exit unwind label %bb.n ; 0 uses

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !95
  store i8 10, ptr %i.ad, align 1, !tbaa !86
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.k:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.l:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN4llvh23PrettyStackTraceProgramC2EiPKPKc.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.n:                                             ; preds = %bb.i, %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !144
  store ptr null, ptr %10, align 8, !tbaa !146, !alias.scope !144
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN8facebook3jsi12StringBufferESaIvEJRN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS9_6parserISG_EEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(240) @_ZL10EvalScriptB5cxx11)
          to label %_ZNSt12__shared_ptrIN8facebook3jsi12StringBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ac

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), align 8, !tbaa !89
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 160), align 8, !tbaa !85
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8, !noalias !147
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !147
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 5, ptr %i.ar, align 8, !tbaa !150, !noalias !147
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.as, align 1, !tbaa !151, !noalias !147
  store ptr %2, ptr %4, align 8, !tbaa !86, !noalias !147
  invoke void @_ZN4llvh12MemoryBuffer14getFileOrSTDINERKNS_5TwineElb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(18) %4, i64 noundef -1, i1 noundef zeroext true)
          to label %.noexc87 unwind label %.body88.thread189, !noalias !147

.body88.thread189:                                ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.noexc87:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !147
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !noalias !147 ; 2 uses
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !147
  br label %bb.u

bb.r:                                             ; preds = %.noexc87
  %i.ax = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.s, !noalias !152 ; 7 uses

_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 1, ptr %i.ay, align 8, !tbaa !100, !noalias !153
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 1, ptr %i.az, align 4, !tbaa !101, !noalias !153
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI10FileBufferSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ax, align 8, !tbaa !71, !noalias !153
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bb = load i64, ptr %3, align 8, !tbaa !103, !noalias !153
  store ptr null, ptr %3, align 8, !tbaa !103, !noalias !153
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV10FileBuffer, i64 16), ptr %i.ba, align 8, !tbaa !71, !noalias !153
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !103, !noalias !153
  store ptr %i.ba, ptr %9, align 16, !tbaa !156, !alias.scope !147
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !104, !alias.scope !147
  %.pre.i = load i8, ptr %i.au, align 8, !noalias !147
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i8, ptr %i.au, align 8, !noalias !147
  %i.bg = trunc i8 %i.bf to i1
  br i1 %i.bg, label %.body88.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %3, align 8, !tbaa !103, !noalias !147 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i, label %.body88.thread, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i: ; preds = %bb.t
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !71, !noalias !147
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !147
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #22, !noalias !147, !inline_history !127
  br label %.body88.thread

.body88.thread:                                   ; preds = %bb.s, %bb.t, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !147
  br label %bb.dd

bb.u:                                             ; preds = %_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.q
  %i.bl = phi ptr [ %i.ax, %_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ null, %bb.q ]
  %i.bm = phi ptr [ %i.ba, %_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ null, %bb.q ]
  %i.bn = phi i8 [ %.pre.i, %_ZNSt12__shared_ptrI10FileBufferLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.av, %bb.q ]
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %.thread187, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %3, align 8, !tbaa !103, !noalias !147 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i2.i, label %.thread187, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i3.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i3.i: ; preds = %bb.v
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !71, !noalias !147
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !147
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.kj = call noundef ptr %i.ki(ptr noundef nonnull align 8 dereferenceable(40) %i.kd) #22
  %i.kk = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.kf, ptr noundef %i.kj)
          to label %bb.cp unwind label %bb.cs     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !95 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !94
  %.not.i150 = icmp ult ptr %i.km, %i.ko
  br i1 %.not.i150, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kp = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.kk, i8 noundef zeroext 10)
          to label %_ZN4llvh11raw_ostreamlsEc.exit153 unwind label %bb.cs ; 0 uses

bb.cr:                                            ; preds = %bb.cp
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  store ptr %i.kq, ptr %i.kl, align 8, !tbaa !95
  store i8 10, ptr %i.km, align 1, !tbaa !86
  br label %_ZN4llvh11raw_ostreamlsEc.exit153

_ZN4llvh11raw_ostreamlsEc.exit153:                ; preds = %bb.cr, %bb.cq
  invoke void @__cxa_end_catch()
          to label %bb.cu unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cq, %bb.co, %bb.cn, %bb.cm
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cv unwind label %bb.dj

bb.ct:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit153
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit153
  %.not.i154 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit156, label %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i155: ; preds = %.thread191, %bb.cu
  %.048194 = phi i32 [ 0, %.thread191 ], [ 1, %bb.cu ]
  %i.kt = load ptr, ptr %.sroa.0.0, align 8, !tbaa !71
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0) #22, !inline_history !128
  br label %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit156

_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit156: ; preds = %bb.cu, %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i155
  %.048195 = phi i32 [ 1, %bb.cu ], [ %.048194, %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i155 ]
  %i.kw = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit156
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !86
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre203 = load ptr, ptr %i.fw, align 8, !tbaa !104
  br label %_ZN4llvh11raw_ostreamlsEc.exit98

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %bb.cl
  %.merged74 = phi { ptr, i32 } [ %i.kr, %bb.cs ], [ %.pn58.pn.pn.pn.pn.pn, %bb.cl ], [ %i.ks, %bb.ct ] ; 2 uses
  %.not.i160 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i160, label %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162, label %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i161

_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i161: ; preds = %bb.cv
  %i.lb = load ptr, ptr %.sroa.0.0, align 8, !tbaa !71
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0) #22, !inline_history !128
  br label %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162

_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162: ; preds = %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i161, %bb.cv, %.thread196, %.body107
  %.merged73 = phi { ptr, i32 } [ %.pn54, %.body107 ], [ %i.fq, %.thread196 ], [ %.merged74, %bb.cv ], [ %.merged74, %_ZNKSt14default_deleteIN8facebook3jsi7RuntimeEEclEPS2_.exit.i161 ] ; 2 uses
  %i.le = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %.critedge82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !86
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #23
  br label %.critedge82

.critedge82:                                      ; preds = %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %.critedge80
  %.merged72 = phi { ptr, i32 } [ %i.fo, %.critedge80 ], [ %.merged73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.merged73, %_ZNSt10unique_ptrIN8facebook3jsi7RuntimeESt14default_deleteIS2_EED2Ev.exit162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dc

_ZN4llvh11raw_ostreamlsEc.exit98:                 ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.lj = phi ptr [ %.pre203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.ab ] ; 8 uses
  %.149 = phi i32 [ %.048195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ 1, %bb.aa ], [ 1, %bb.ab ]
  %.not.i.i166 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i166, label %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit98
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 4 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 4294967297
  %i.ln = trunc i64 %i.ll to i32                  ; 2 uses
  br i1 %i.lm, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.lk, align 8, !tbaa !100
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !101
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22, !inline_history !135
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22, !inline_history !135
  br label %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cy:                                            ; preds = %bb.cw
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i167 = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i167, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lw = add nsw i32 %i.ln, -1
  store i32 %i.lw, ptr %i.lk, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168

bb.da:                                            ; preds = %bb.cy
  %i.lx = atomicrmw volatile add ptr %i.lk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i169 = phi i32 [ %i.ln, %bb.cz ], [ %i.lx, %bb.da ]
  %i.ly = icmp eq i32 %.0.i.i.i.i169, 1
  br i1 %i.ly, label %bb.db, label %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !109

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #22
  br label %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit98, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.dc:                                            ; preds = %.critedge82, %bb.ad
  %.merged71 = phi { ptr, i32 } [ %.merged72, %.critedge82 ], [ %i.cu, %bb.ad ]
  call void @_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.body88.thread189, %.body88.thread, %bb.ac, %bb.dc
  %.merged70 = phi { ptr, i32 } [ %.merged71, %bb.dc ], [ %i.ct, %bb.ac ], [ %i.at, %.body88.thread189 ], [ %i.be, %.body88.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.df

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.j, %bb.i, %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.250 = phi i32 [ %.149, %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %bb.i ], [ 1, %bb.j ]
  call void @_ZN6hermes8oscompat25SigAltStackLeakSuppressorD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN4llvh13llvm_shutdownEv()
          to label %_ZN4llvh17llvm_shutdown_objD2Ev.exit unwind label %bb.de

bb.de:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #26
  unreachable

_ZN4llvh17llvm_shutdown_objD2Ev.exit:             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN4llvh21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN4llvh8InitLLVMD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %.250

bb.df:                                            ; preds = %bb.dd, %bb.n
  %.merged69 = phi { ptr, i32 } [ %.merged70, %bb.dd ], [ %i.am, %bb.n ]
  call void @_ZN6hermes8oscompat25SigAltStackLeakSuppressorD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.m
  %.merged68 = phi { ptr, i32 } [ %.merged69, %bb.df ], [ %i.al, %bb.m ]
  invoke void @_ZN4llvh13llvm_shutdownEv()
          to label %_ZN4llvh17llvm_shutdown_objD2Ev.exit170 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #26
  unreachable

_ZN4llvh17llvm_shutdown_objD2Ev.exit170:          ; preds = %bb.dg, %bb.c
  %.merged67.ph = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.merged68, %bb.dg ]
  call void @_ZN4llvh21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  br label %.body

.body:                                            ; preds = %_ZN4llvh17llvm_shutdown_objD2Ev.exit170, %bb.l
  %.merged67 = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.merged67.ph, %_ZN4llvh17llvm_shutdown_objD2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.di

bb.di:                                            ; preds = %.body, %bb.k
  %.merged = phi { ptr, i32 } [ %.merged67, %.body ], [ %i.aj, %bb.k ]
  call void @_ZN4llvh8InitLLVMD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.merged

bb.dj:                                            ; preds = %bb.cs
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #26
  unreachable
}

declare void @_ZN4llvh3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr, i64, i1 noundef zeroext) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE(i32 noundef, ptr noundef, ptr, i64, ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !guid !200 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a)
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !95
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

declare void @_ZN8facebook6hermes17makeHermesRuntimeERKN6hermes2vm13RuntimeConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.24") align 8, ptr noundef nonnull align 8 dereferenceable(269)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !202 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !101
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !201
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !201
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !109

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.l, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !89 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !86
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #23
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZN8facebook6hermes16makeTimedRuntimeESt10unique_ptrINS_3jsi7RuntimeESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !203 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b
end_hunk_1
