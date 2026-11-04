Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/evp_extra_test?download=true
inline.NumInlined: 3203
inline.NumDeleted: 638
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN25EVPExtraTest_Ed25519_Test8TestBodyEv:bb.a
          catch ptr null
  %i.bik = extractvalue { ptr, i32 } %i.bij, 0
  call void @__clang_call_terminate(ptr %i.bik) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit1492: ; preds = %bb.acq, %bb.acr
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.act:                                           ; preds = %_ZN7testing7MessageD2Ev.exit1489, %bb.abs
  %.pn559.pn.pn.pn = phi { ptr, i32 } [ %.pn559.pn.pn, %_ZN7testing7MessageD2Ev.exit1489 ], [ %i.bgz, %bb.abs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #18
  br label %bb.acu

bb.acu:                                           ; preds = %bb.act, %bb.abr, %bb.abc, %bb.aao, %bb.zz, %bb.zl, %bb.yx, %bb.yw, %bb.yh, %bb.xt
  %.pn564 = phi { ptr, i32 } [ %i.bbr, %bb.yx ], [ %.pn559.pn.pn.pn, %bb.act ], [ %.pn554.pn.pn.pn, %bb.abr ], [ %.pn548.pn.pn.pn, %bb.abc ], [ %.pn543.pn.pn.pn, %bb.aao ], [ %.pn537.pn.pn.pn, %bb.zz ], [ %.pn531.pn.pn.pn, %bb.zl ], [ %.pn526.pn.pn.pn, %bb.yw ], [ %.pn520.pn.pn.pn, %bb.yh ], [ %.pn514.pn.pn.pn, %bb.xt ]
  %i.bil = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %179)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit1493 unwind label %bb.acv ; 0 uses

bb.acv:                                           ; preds = %bb.acu
  %i.bim = landingpad { ptr, i32 }
          catch ptr null
  %i.bin = extractvalue { ptr, i32 } %i.bim, 0
  call void @__clang_call_terminate(ptr %i.bin) #22
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit1493: ; preds = %bb.acu, %bb.xf
  %.pn564.pn = phi { ptr, i32 } [ %i.ayl, %bb.xf ], [ %.pn564, %bb.acu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #18
  br label %bb.acw

bb.acw:                                           ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit1493, %bb.xe, %bb.wr, %_ZN7testing7MessageD2Ev.exit1359
  %.pn564.pn.pn = phi { ptr, i32 } [ %.pn564.pn, %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit1493 ], [ %.pn510.pn.pn, %bb.xe ], [ %.pn506.pn.pn, %bb.wr ], [ %.pn502.pn.pn, %_ZN7testing7MessageD2Ev.exit1359 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %168) #18
  br label %bb.acx

bb.acx:                                           ; preds = %bb.acw, %bb.vq
  %.pn564.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn, %bb.acw ], [ %i.avu, %bb.vq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #18
  br label %bb.acy

bb.acy:                                           ; preds = %bb.acx, %bb.vp, %bb.vc, %bb.uo, %bb.ua, %bb.tm, %bb.sy, %bb.sl, %bb.rx, %bb.rj, %bb.qv, %bb.qh, %bb.pu, %bb.pt, %bb.pd, %bb.on, %bb.nz, %bb.nl, %bb.mx, %bb.mj, %bb.lv, %bb.lf, %_ZN7testing7MessageD2Ev.exit1010
  %.pn564.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn, %bb.acx ], [ %.pn498.pn.pn, %bb.vp ], [ %.pn494.pn.pn, %bb.vc ], [ %.pn489.pn.pn.pn, %bb.uo ], [ %.pn484.pn.pn.pn, %bb.ua ], [ %.pn479.pn.pn.pn, %bb.tm ], [ %.pn475.pn.pn, %bb.sy ], [ %.pn470.pn.pn.pn, %bb.sl ], [ %.pn465.pn.pn.pn, %bb.rx ], [ %.pn460.pn.pn.pn, %bb.rj ], [ %.pn456.pn.pn, %bb.qv ], [ %.pn449.pn.pn.pn, %bb.qh ], [ %i.akk, %bb.pu ], [ %.pn444.pn.pn.pn, %bb.pt ], [ %.pn439.pn.pn.pn, %bb.pd ], [ %.pn434.pn.pn, %bb.on ], [ %.pn427.pn.pn.pn, %bb.nz ], [ %.pn423.pn.pn, %bb.nl ], [ %.pn416.pn.pn.pn, %bb.mx ], [ %.pn412.pn.pn, %bb.mj ], [ %.pn407.pn.pn.pn, %bb.lv ], [ %.pn403.pn.pn, %bb.lf ], [ %.pn399.pn.pn, %_ZN7testing7MessageD2Ev.exit1010 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %81) #18
  br label %bb.acz

bb.acz:                                           ; preds = %bb.acy, %bb.kc
  %.pn564.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn.pn, %bb.acy ], [ %i.xv, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #18
  br label %bb.ada

bb.ada:                                           ; preds = %bb.acz, %bb.kb, %bb.ka, %bb.jk, %bb.iu, %bb.if
  %.pn564.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn.pn.pn, %bb.acz ], [ %i.xu, %bb.kb ], [ %.pn394.pn.pn.pn, %bb.ka ], [ %.pn389.pn.pn.pn, %bb.jk ], [ %.pn383.pn.pn.pn, %bb.iu ], [ %.pn379.pn.pn, %bb.if ]
  call void @_ZNSt10unique_ptrIhN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  br label %bb.adb

bb.adb:                                           ; preds = %bb.ada, %bb.hr, %bb.hd, %bb.go
  %.pn564.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn.pn.pn.pn, %bb.ada ], [ %.pn374.pn.pn.pn, %bb.hr ], [ %.pn369.pn.pn.pn, %bb.hd ], [ %.pn364.pn.pn.pn, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %50)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1494 unwind label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %i.bio = landingpad { ptr, i32 }
          catch ptr null
  %i.bip = extractvalue { ptr, i32 } %i.bio, 0
  call void @__clang_call_terminate(ptr %i.bip) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1494: ; preds = %bb.adb, %bb.fz
  %.pn564.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ox, %bb.fz ], [ %.pn564.pn.pn.pn.pn.pn.pn.pn, %bb.adb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %bb.add

bb.add:                                           ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1494, %bb.fy, %bb.fi, %bb.es, %bb.er, %bb.eb, %bb.dl, %bb.cx, %bb.cj, %bb.bv, %bb.bh, %bb.at
  %.pn564.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1494 ], [ %i.mh, %bb.es ], [ %.pn359.pn.pn.pn, %bb.fy ], [ %.pn354.pn.pn.pn, %bb.fi ], [ %.pn348.pn.pn.pn, %bb.er ], [ %.pn343.pn.pn.pn, %bb.eb ], [ %.pn339.pn.pn, %bb.dl ], [ %.pn332.pn.pn.pn, %bb.cx ], [ %.pn328.pn.pn, %bb.cj ], [ %.pn321.pn.pn.pn, %bb.bv ], [ %.pn317.pn.pn, %bb.bh ], [ %.pn312.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ade

bb.ade:                                           ; preds = %bb.add, %bb.ad, %_ZN7testing7MessageD2Ev.exit626
  %.pn564.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn564.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.add ], [ %.pn308.pn.pn, %bb.ad ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit626 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn564.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare ptr @EVP_PKEY_new_raw_public_key(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !63, !noalias !199
  %i.b = load i32, ptr %4, align 4, !tbaa !63, !noalias !199
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare i32 @EVP_PKEY_id(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_raw_public_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ERR_get_error() local_unnamed_addr #0

declare i32 @EVP_PKEY_get_raw_private_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_marshal_private_key(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @EVP_PKEY_new_raw_private_key(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIhN4bssl8internal7DeleterEE5resetEPh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt15__uniq_ptr_implIhN4bssl8internal7DeleterEE5resetEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZNSt15__uniq_ptr_implIhN4bssl8internal7DeleterEE5resetEPh.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable

_ZNSt15__uniq_ptr_implIhN4bssl8internal7DeleterEE5resetEPh.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @EVP_PKEY_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_DigestSign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIhN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclIhEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclIhEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclIhEEvPT_.exit:         ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN26EVPExtraTest_ECKeygen_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 14 uses
  %20 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %21 = alloca %"class.std::unique_ptr.29", align 8 ; 21 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 17 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.std::unique_ptr", align 8  ; 11 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %76 = alloca %"class.testing::Message", align 8 ; 7 uses
  %77 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %80 = alloca %"class.testing::Message", align 8 ; 7 uses
  %81 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %92 = alloca %"class.testing::Message", align 8 ; 7 uses
  %93 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %96 = alloca %"class.testing::Message", align 8 ; 7 uses
  %97 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %.0147.ptr.sroa.idx = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  %.not = phi i1 [ false, %bb.a ], [ true, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i8 %.0147.ptr.sroa.idx, ptr %i.c, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull @.str.2, i32 noundef 1023, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.ag = invoke ptr @EVP_PKEY_CTX_new_id(i32 noundef 408, ptr noundef null)
          to label %bb.c unwind label %bb.d       ; 5 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.ag, ptr %21, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.ah = icmp ne ptr %i.ag, null                 ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %22, align 8, !tbaa !37
  store ptr null, ptr %i.e, align 8, !tbaa !38
  br i1 %i.ah, label %bb.p, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %25, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1036, ptr noundef %i.ak)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  %i.al = load ptr, ptr %25, align 8, !tbaa !42   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.aq = load ptr, ptr %23, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !55  ; 4 uses
  %.not.i.i293 = icmp eq ptr %i.au, null
  br i1 %.not.i.i293, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !43
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit299

bb.l:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

bb.m:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %i.be = load ptr, ptr %25, align 8, !tbaa !42   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.o
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !43
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.bj = load ptr, ptr %23, align 8, !tbaa !45   ; 3 uses
  %.not.i.i297 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i297, label %_ZN7testing7MessageD2Ev.exit299, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit299

_ZN7testing7MessageD2Ev.exit299:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.nf

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %.val292.val = load i8, ptr %i.c, align 1, !tbaa !76, !range !57, !noundef !58
  %i.bn = trunc nuw i8 %.val292.val to i1
  br i1 %i.bn, label %bb.q, label %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = invoke ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.ag)
          to label %bb.r unwind label %bb.t       ; 3 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.bo, ptr %21, align 8, !tbaa !65
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.ag)
          to label %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #22
  unreachable

._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i: ; preds = %bb.r
  %i.br = icmp ne ptr %i.bo, null                 ; 2 uses
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %26, align 8, !tbaa !37
  store ptr null, ptr %i.f, align 8, !tbaa !38
  br i1 %i.br, label %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i.thread, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.u:                                             ; preds = %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %29, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1037, ptr noundef %i.bu)
          to label %bb.x unwind label %bb.ac

end_hunk_0
begin_hunk_1_@_ZN26EVPExtraTest_ECKeygen_Test8TestBodyEv:bb.a
          to label %bb.mn unwind label %bb.ms

bb.mn:                                            ; preds = %bb.mm
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %bb.mo unwind label %bb.mt

bb.mo:                                            ; preds = %bb.mn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #18
  %i.aeg = load ptr, ptr %98, align 8, !tbaa !42  ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.aei = icmp eq ptr %i.aeg, %i.aeh
  br i1 %i.aei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733: ; preds = %bb.mo
  %i.aej = load i64, ptr %i.aeh, align 8, !tbaa !43
  %i.aek = add i64 %i.aej, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aek) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735: ; preds = %bb.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #18
  %i.ael = load ptr, ptr %96, align 8, !tbaa !45  ; 3 uses
  %.not.i.i736 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i736, label %_ZN7testing7MessageD2Ev.exit738, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !14
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8
  call void %i.aeo(ptr noundef nonnull align 8 dereferenceable(128) %i.ael) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit738

_ZN7testing7MessageD2Ev.exit738:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #18
  %i.aep = load ptr, ptr %i.af, align 8, !tbaa !55 ; 4 uses
  %.not.i.i739 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i739, label %_ZN7testing15AssertionResultD2Ev.exit743, label %bb.mp

bb.mp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit738
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !42 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 16 ; 2 uses
  %i.aes = icmp eq ptr %i.aeq, %i.aer
  br i1 %i.aes, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740: ; preds = %bb.mp
  %i.aet = load i64, ptr %i.aer, align 8, !tbaa !43
  %i.aeu = add i64 %i.aet, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aeu) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740
  call void @_ZdlPvm(ptr noundef nonnull %i.aep, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit743

_ZN7testing15AssertionResultD2Ev.exit743:         ; preds = %_ZN7testing7MessageD2Ev.exit738, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #18
  br label %.critedge285

bb.mq:                                            ; preds = %bb.mk
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit749

bb.mr:                                            ; preds = %bb.ml
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746

bb.ms:                                            ; preds = %bb.mm
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

bb.mt:                                            ; preds = %bb.mn
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %97) #18
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %.pn234 = phi { ptr, i32 } [ %i.aey, %bb.mt ], [ %i.aex, %bb.ms ] ; 2 uses
  %i.aez = load ptr, ptr %98, align 8, !tbaa !42  ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.afb = icmp eq ptr %i.aez, %i.afa
  br i1 %i.afb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744: ; preds = %bb.mu
  %i.afc = load i64, ptr %i.afa, align 8, !tbaa !43
  %i.afd = add i64 %i.afc, 1
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746: ; preds = %bb.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744, %bb.mr
  %.pn234.pn = phi { ptr, i32 } [ %i.aew, %bb.mr ], [ %.pn234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744 ], [ %.pn234, %bb.mu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #18
  %i.afe = load ptr, ptr %96, align 8, !tbaa !45  ; 3 uses
  %.not.i.i747 = icmp eq ptr %i.afe, null
  br i1 %.not.i.i747, label %_ZN7testing7MessageD2Ev.exit749, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !14
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afh = load ptr, ptr %i.afg, align 8
  call void %i.afh(ptr noundef nonnull align 8 dereferenceable(128) %i.afe) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit749

_ZN7testing7MessageD2Ev.exit749:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, %bb.mq
  %.pn234.pn.pn = phi { ptr, i32 } [ %i.aev, %bb.mq ], [ %.pn234.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746 ], [ %.pn234.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %95) #18
  br label %bb.nd

bb.mv:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #18
  %i.afi = load ptr, ptr %i.d, align 8, !tbaa !27 ; 4 uses
  %i.afj = load ptr, ptr %50, align 8, !tbaa !27  ; 2 uses
  store ptr %i.afi, ptr %50, align 8, !tbaa !27
  %.not.i.i755 = icmp eq ptr %i.afj, null
  br i1 %.not.i.i755, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE5resetEPS0_.exit756, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.afj)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE5resetEPS0_.exit756 unwind label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.afk = landingpad { ptr, i32 }
          catch ptr null
  %i.afl = extractvalue { ptr, i32 } %i.afk, 0
  call void @__clang_call_terminate(ptr %i.afl) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE5resetEPS0_.exit756: ; preds = %bb.mv, %bb.mw
  store ptr null, ptr %i.d, align 8, !tbaa !27
  invoke fastcc void @_ZL19ExpectECGroupAndKeyPK11evp_pkey_sti(ptr noundef %i.afi)
          to label %bb.my unwind label %bb.fs

bb.my:                                            ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE5resetEPS0_.exit756
  %.not.i757 = icmp eq ptr %i.afi, null
  br i1 %.not.i757, label %bb.nb, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.afi)
          to label %bb.nb unwind label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.afm = landingpad { ptr, i32 }
          catch ptr null
  %i.afn = extractvalue { ptr, i32 } %i.afm, 0
  call void @__clang_call_terminate(ptr %i.afn) #22
  unreachable

bb.nb:                                            ; preds = %bb.mz, %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.acu)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.afo = landingpad { ptr, i32 }
          catch ptr null
  %i.afp = extractvalue { ptr, i32 } %i.afo, 0
  call void @__clang_call_terminate(ptr %i.afp) #22
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %.not, label %.loopexit, label %bb.b

bb.nd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit749, %bb.mj
  %.pn234.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn, %_ZN7testing7MessageD2Ev.exit749 ], [ %i.aee, %bb.mj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #18
  br label %.body

.body:                                            ; preds = %bb.fs, %_ZN7testing7MessageD2Ev.exit120.i, %_ZN7testing7MessageD2Ev.exit103.i, %_ZN7testing7MessageD2Ev.exit86.i, %_ZN7testing7MessageD2Ev.exit74.i, %_ZN7testing7MessageD2Ev.exit52.i, %bb.nd, %bb.mi, %bb.lt, %bb.lc, %bb.ko, %bb.jx, %_ZN7testing7MessageD2Ev.exit599, %bb.iu, %bb.ia, %bb.hm, %bb.gv, %_ZN7testing7MessageD2Ev.exit474
  %.pn239 = phi { ptr, i32 } [ %.pn181.pn.pn, %_ZN7testing7MessageD2Ev.exit474 ], [ %.pn234.pn.pn.pn, %bb.nd ], [ %.pn229.pn.pn.pn, %bb.mi ], [ %.pn224.pn.pn.pn, %bb.lt ], [ %.pn219.pn.pn.pn, %bb.lc ], [ %.pn214.pn.pn.pn, %bb.ko ], [ %.pn209.pn.pn.pn, %bb.jx ], [ %.pn205.pn.pn, %_ZN7testing7MessageD2Ev.exit599 ], [ %.pn200.pn.pn.pn, %bb.iu ], [ %.pn195.pn.pn.pn, %bb.ia ], [ %.pn190.pn.pn.pn, %bb.hm ], [ %.pn185.pn.pn.pn, %bb.gv ], [ %i.pf, %bb.fs ], [ %.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit52.i ], [ %.pn38.pn.pn.i, %_ZN7testing7MessageD2Ev.exit120.i ], [ %.pn33.pn.pn.i, %_ZN7testing7MessageD2Ev.exit103.i ], [ %.pn30.pn.i, %_ZN7testing7MessageD2Ev.exit86.i ], [ %.pn26.pn.pn.i, %_ZN7testing7MessageD2Ev.exit74.i ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %bb.ne

bb.ne:                                            ; preds = %.body, %bb.fr
  %.pn239.pn = phi { ptr, i32 } [ %.pn239, %.body ], [ %.pn176.pn.pn.pn, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.cr, %bb.cc, %bb.bl, %bb.ax, %bb.ag, %_ZN7testing7MessageD2Ev.exit299
  %.pn239.pn.pn = phi { ptr, i32 } [ %.pn239.pn, %bb.ne ], [ %.pn171.pn.pn.pn, %bb.cr ], [ %.pn166.pn.pn.pn, %bb.cc ], [ %.pn161.pn.pn.pn, %bb.bl ], [ %.pn156.pn.pn.pn, %bb.ax ], [ %.pn151.pn.pn.pn, %bb.ag ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit299 ]
  call void @_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #18
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.d
  %.pn239.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn, %bb.nf ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  resume { ptr, i32 } %.pn239.pn.pn.pn

.critedge281:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385, %_ZN7testing7MessageD2Ev.exit382
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %.pre = load ptr, ptr %21, align 8, !tbaa !65   ; 2 uses
  %.not.i759 = icmp eq ptr %.pre, null
  br i1 %.not.i759, label %.loopexit.sink.split, label %bb.nh

bb.nh:                                            ; preds = %.critedge281.thread1657, %.critedge281
  %i.afq = phi ptr [ %i.cx, %.critedge281.thread1657 ], [ %.pre, %.critedge281 ]
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.afq)
          to label %.loopexit.sink.split unwind label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.afr = landingpad { ptr, i32 }
          catch ptr null
  %i.afs = extractvalue { ptr, i32 } %i.afr, 0
  call void @__clang_call_terminate(ptr %i.afs) #22
  unreachable

bb.nj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit432, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.hb)
          to label %.loopexit.sink.split unwind label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.aft = landingpad { ptr, i32 }
          catch ptr null
  %i.afu = extractvalue { ptr, i32 } %i.aft, 0
  call void @__clang_call_terminate(ptr %i.afu) #22
  unreachable

.critedge285:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit743, %_ZN7testing15AssertionResultD2Ev.exit721, %_ZN7testing15AssertionResultD2Ev.exit693, %_ZN7testing15AssertionResultD2Ev.exit671, %_ZN7testing15AssertionResultD2Ev.exit643, %_ZN7testing15AssertionResultD2Ev.exit621, %_ZN7testing15AssertionResultD2Ev.exit593, %_ZN7testing15AssertionResultD2Ev.exit568, %_ZN7testing15AssertionResultD2Ev.exit546, %_ZN7testing15AssertionResultD2Ev.exit518, %_ZN7testing15AssertionResultD2Ev.exit496, %_ZN7testing15AssertionResultD2Ev.exit468
  %i.afv = load ptr, ptr %50, align 8, !tbaa !27  ; 2 uses
  %.not.i763 = icmp eq ptr %i.afv, null
  br i1 %.not.i763, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit764, label %bb.nl

bb.nl:                                            ; preds = %.critedge285
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.afv)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit764 unwind label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.afw = landingpad { ptr, i32 }
          catch ptr null
  %i.afx = extractvalue { ptr, i32 } %i.afw, 0
  call void @__clang_call_terminate(ptr %i.afx) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit764: ; preds = %.critedge285, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.afy = load ptr, ptr %21, align 8, !tbaa !65  ; 2 uses
  %.not.i765 = icmp eq ptr %i.afy, null
  br i1 %.not.i765, label %.loopexit.sink.split, label %bb.nn

bb.nn:                                            ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit764
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.afy)
          to label %.loopexit.sink.split unwind label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.afz = landingpad { ptr, i32 }
          catch ptr null
  %i.aga = extractvalue { ptr, i32 } %i.afz, 0
  call void @__clang_call_terminate(ptr %i.aga) #22
  unreachable

.loopexit.sink.split:                             ; preds = %bb.nn, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit764, %bb.nj, %bb.nh, %.critedge281, %_ZN7testing15AssertionResultD2Ev.exit415, %_ZN7testing15AssertionResultD2Ev.exit365, %_ZN7testing15AssertionResultD2Ev.exit315, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load i8, ptr %3, align 1, !tbaa !76, !range !57, !noundef !58
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = select i1 %i.b, ptr @.str.5, ptr @.str.4
  %i.d = load ptr, ptr %5, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = select i1 %i.b, i64 4, i64 5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.c, i64 noundef %i.f)
          to label %_ZN7testing7MessagelsEb.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsEb.exit:                     ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsEb.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = load ptr, ptr %5, align 8, !tbaa !45     ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessagelsEb.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !43
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.r, %bb.e ]
  %i.x = load ptr, ptr %5, align 8, !tbaa !45     ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit12, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit12

_ZN7testing7MessageD2Ev.exit12:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn
}

declare ptr @EVP_PKEY_CTX_new_id(i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_paramgen_init(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_paramgen(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_keygen_init(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_keygen(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL19ExpectECGroupAndKeyPK11evp_pkey_sti(ptr noundef %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 415, ptr %i.a, align 4, !tbaa !63
  %i.c = tail call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef %0) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = icmp ne ptr %i.c, null                   ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %1, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !38
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1013, ptr noundef %i.g)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  %i.h = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !55   ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.q, null
  br i1 %.not.i.i45, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !43
  %i.v = add i64 %i.u, 1
end_hunk_1
begin_hunk_2_@_ZL19ExpectECGroupAndKeyPK11evp_pkey_sti:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %bb.ax
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !43
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit107

_ZN7testing15AssertionResultD2Ev.exit107:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit90, %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.dw = call ptr @EC_KEY_get0_private_key(ptr noundef nonnull %i.c)
  %i.dx = icmp ne ptr %i.dw, null                 ; 2 uses
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %16, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.dz, align 8, !tbaa !38
  br i1 %i.dx, label %_ZN7testing15AssertionResultD2Ev.exit124, label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ea = load ptr, ptr %19, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1018, ptr noundef %i.ea)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #18
  %i.eb = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bc
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !43
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.eg = load ptr, ptr %17, align 8, !tbaa !45   ; 3 uses
  %.not.i.i111 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i111, label %bb.bi, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #18, !call_target !54, !inline_history !0
  br label %bb.bi

bb.bd:                                            ; preds = %bb.ay
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit119

bb.be:                                            ; preds = %bb.az
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.bf:                                            ; preds = %bb.ba
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn37 = phi { ptr, i32 } [ %i.en, %bb.bg ], [ %i.em, %bb.bf ] ; 2 uses
  %i.eo = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.bh
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.be
  %.pn37.pn = phi { ptr, i32 } [ %i.el, %bb.be ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn37, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.et = load ptr, ptr %17, align 8, !tbaa !45   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.et, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.bd
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.bd ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn37.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.bl

bb.bi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %.pr133 = load ptr, ptr %i.dz, align 8, !tbaa !55 ; 4 uses
  %.not.i.i120 = icmp eq ptr %.pr133, null
  br i1 %.not.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit124, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ex = load ptr, ptr %.pr133, align 8, !tbaa !42 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.pr133, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.bj
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !43
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %.pr133, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit124

_ZN7testing15AssertionResultD2Ev.exit124:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit107, %bb.bi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit124, %_ZN7testing15AssertionResultD2Ev.exit67, %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit73, %_ZN7testing7MessageD2Ev.exit85, %_ZN7testing7MessageD2Ev.exit102, %_ZN7testing7MessageD2Ev.exit119, %_ZN7testing7MessageD2Ev.exit51
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit51 ], [ %.pn37.pn.pn, %_ZN7testing7MessageD2Ev.exit119 ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit102 ], [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit73 ]
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN26EVPExtraTest_DHKeygen_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.56", align 8 ; 7 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::unique_ptr.56", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::unique_ptr.62", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 12 uses
  %33 = alloca %"class.testing::ScopedTrace", align 1 ; 12 uses
  %34 = alloca %"class.std::unique_ptr.29", align 8 ; 29 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %57 = alloca %"class.testing::Message", align 8 ; 7 uses
  %58 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %66 = alloca %"class.testing::Message", align 8 ; 7 uses
  %67 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %69 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %70 = alloca %"class.testing::Message", align 8 ; 7 uses
  %71 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %77 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %78 = alloca %"class.testing::Message", align 8 ; 7 uses
  %79 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %80 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %92 = alloca %"class.testing::Message", align 8 ; 7 uses
  %93 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %96 = alloca %"class.testing::Message", align 8 ; 7 uses
  %97 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %100 = alloca %"class.testing::Message", align 8 ; 7 uses
  %101 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.std::unique_ptr", align 8 ; 5 uses
  %104 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %105 = alloca %"class.testing::Message", align 8 ; 7 uses
  %106 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %107 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %108 = alloca %"class.testing::Message", align 8 ; 7 uses
  %109 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %110 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %111 = alloca %"class.testing::Message", align 8 ; 7 uses
  %112 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.s = tail call ptr @BN_get_rfc3526_prime_1536(ptr noundef null) ; 3 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.t = icmp ne ptr %i.s, null                   ; 2 uses
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %2, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !38
  br i1 %i.t, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %5, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1082, ptr noundef %i.w)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  %i.x = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ac = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !55  ; 4 uses
  %.not.i.i370 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i370, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.rc

bb.h:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit376

bb.i:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

bb.j:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  br label %bb.l

end_hunk_2
begin_hunk_3_@_ZN26EVPExtraTest_DHKeygen_Test8TestBodyEv:bb.a
bb.cc:                                            ; preds = %bb.bw
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

bb.cd:                                            ; preds = %bb.bx
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.by
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #18
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn208 = phi { ptr, i32 } [ %i.hd, %bb.ce ], [ %i.hc, %bb.cd ] ; 2 uses
  %i.he = load ptr, ptr %28, align 8, !tbaa !42   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.cf
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !43
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481, %bb.cc
  %.pn208.pn = phi { ptr, i32 } [ %i.hb, %bb.cc ], [ %.pn208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481 ], [ %.pn208, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.hj = load ptr, ptr %26, align 8, !tbaa !45   ; 3 uses
  %.not.i.i484 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i484, label %_ZN7testing7MessageD2Ev.exit486, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !14
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(128) %i.hj) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit486

_ZN7testing7MessageD2Ev.exit486:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %bb.cb
  %.pn208.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.cb ], [ %.pn208.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ %.pn208.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.rf

bb.cg:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.hn = invoke i32 @EVP_PKEY_set1_DH(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.dp)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ho = icmp ne i32 %i.hn, 0                    ; 2 uses
  %i.hp = zext i1 %i.ho to i8
  store i8 %i.hp, ptr %29, align 8, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr null, ptr %i.hq, align 8, !tbaa !38
  br i1 %i.ho, label %bb.cu, label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.hs = load ptr, ptr %32, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1092, ptr noundef %i.hs)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #18
  %i.ht = load ptr, ptr %32, align 8, !tbaa !42   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %bb.cn
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !43
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %i.hy = load ptr, ptr %30, align 8, !tbaa !45   ; 3 uses
  %.not.i.i495 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i495, label %_ZN7testing7MessageD2Ev.exit497, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit497

_ZN7testing7MessageD2Ev.exit497:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ic = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 4 uses
  %.not.i.i498 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i498, label %_ZN7testing15AssertionResultD2Ev.exit502, label %bb.co

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit497
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !42 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i499: ; preds = %bb.co
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !43
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i499
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit502

_ZN7testing15AssertionResultD2Ev.exit502:         ; preds = %_ZN7testing7MessageD2Ev.exit497, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.qt

bb.cp:                                            ; preds = %bb.cj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit508

bb.cq:                                            ; preds = %bb.ck
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505

bb.cr:                                            ; preds = %bb.cl
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cm
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #18
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn212 = phi { ptr, i32 } [ %i.il, %bb.cs ], [ %i.ik, %bb.cr ] ; 2 uses
  %i.im = load ptr, ptr %32, align 8, !tbaa !42   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503: ; preds = %bb.ct
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !43
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503, %bb.cq
  %.pn212.pn = phi { ptr, i32 } [ %i.ij, %bb.cq ], [ %.pn212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503 ], [ %.pn212, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %i.ir = load ptr, ptr %30, align 8, !tbaa !45   ; 3 uses
  %.not.i.i506 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i506, label %_ZN7testing7MessageD2Ev.exit508, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !14
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(128) %i.ir) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit508

_ZN7testing7MessageD2Ev.exit508:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505, %bb.cp
  %.pn212.pn.pn = phi { ptr, i32 } [ %i.ii, %bb.cp ], [ %.pn212.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505 ], [ %.pn212.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #18
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %i.iv = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %99, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %104, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %107, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 2 uses
  br label %bb.cw

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit508, %bb.ci
  %.pn212.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn, %_ZN7testing7MessageD2Ev.exit508 ], [ %i.hr, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.rf

bb.cw:                                            ; preds = %bb.cu, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %i.jt = phi ptr [ %i.gf, %bb.cu ], [ %i.agg, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ] ; 2 uses
  %.0.ptr.sroa.idx = phi i8 [ 0, %bb.cu ], [ 1, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  %.not = phi i1 [ false, %bb.cu ], [ true, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 %.0.ptr.sroa.idx, ptr %i.a, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  invoke void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull @.str.2, i32 noundef 1095, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.ju = invoke ptr @EVP_PKEY_CTX_new(ptr noundef %i.jt, ptr noundef null)
          to label %bb.cy unwind label %bb.da     ; 4 uses

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.ju, ptr %34, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.jv = icmp ne ptr %i.ju, null                 ; 2 uses
  %i.jw = zext i1 %i.jv to i8
  store i8 %i.jw, ptr %35, align 8, !tbaa !37
  store ptr null, ptr %i.iv, align 8, !tbaa !38
  br i1 %i.jv, label %bb.dm, label %bb.db

bb.cz:                                            ; preds = %bb.cw
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qq

bb.da:                                            ; preds = %bb.cx
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.jz = load ptr, ptr %38, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1106, ptr noundef %i.jz)
          to label %bb.de unwind label %bb.dj

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.df unwind label %bb.dk

bb.df:                                            ; preds = %bb.de
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #18
  %i.ka = load ptr, ptr %38, align 8, !tbaa !42   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %bb.df
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !43
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %i.kf = load ptr, ptr %36, align 8, !tbaa !45   ; 3 uses
  %.not.i.i517 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i517, label %_ZN7testing7MessageD2Ev.exit519, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i518

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i518: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(128) %i.kf) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit519

_ZN7testing7MessageD2Ev.exit519:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i518
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.kj = load ptr, ptr %i.iv, align 8, !tbaa !55 ; 4 uses
  %.not.i.i520 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i520, label %_ZN7testing15AssertionResultD2Ev.exit524, label %bb.dg

bb.dg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit519
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !42 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i521: ; preds = %bb.dg
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !43
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i522

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i522: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i521
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit524

_ZN7testing15AssertionResultD2Ev.exit524:         ; preds = %_ZN7testing7MessageD2Ev.exit519, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %.critedge362

bb.dh:                                            ; preds = %bb.db
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit530

bb.di:                                            ; preds = %bb.dc
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

bb.dj:                                            ; preds = %bb.dd
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn217 = phi { ptr, i32 } [ %i.ks, %bb.dk ], [ %i.kr, %bb.dj ] ; 2 uses
  %i.kt = load ptr, ptr %38, align 8, !tbaa !42   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525: ; preds = %bb.dl
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !43
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525, %bb.di
  %.pn217.pn = phi { ptr, i32 } [ %i.kq, %bb.di ], [ %.pn217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525 ], [ %.pn217, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %i.ky = load ptr, ptr %36, align 8, !tbaa !45   ; 3 uses
  %.not.i.i528 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i528, label %_ZN7testing7MessageD2Ev.exit530, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !14
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(128) %i.ky) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit530

_ZN7testing7MessageD2Ev.exit530:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, %bb.dh
  %.pn217.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.dh ], [ %.pn217.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527 ], [ %.pn217.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.qo

bb.dm:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  %.val369.val = load i8, ptr %i.a, align 1, !tbaa !76, !range !57, !noundef !58
  %i.lc = trunc nuw i8 %.val369.val to i1
  br i1 %i.lc, label %bb.dn, label %.thread

bb.dn:                                            ; preds = %bb.dm
  %i.ld = invoke ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.ju)
          to label %.noexc unwind label %bb.dr    ; 2 uses

.noexc:                                           ; preds = %bb.dn
  %i.le = load ptr, ptr %34, align 8, !tbaa !65   ; 2 uses
  store ptr %i.ld, ptr %34, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %.noexc
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.le)
          to label %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i unwind label %bb.dp

._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i: ; preds = %bb.do
  %.pre.i = load ptr, ptr %34, align 8, !tbaa !65
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #22
  unreachable

bb.dq:                                            ; preds = %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i, %.noexc
  %i.lh = phi ptr [ %.pre.i, %._ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit_crit_edge.i ], [ %i.ld, %.noexc ] ; 2 uses
  %i.li = icmp ne ptr %i.lh, null                 ; 2 uses
  %i.lj = zext i1 %i.li to i8
  store i8 %i.lj, ptr %39, align 8, !tbaa !37
  store ptr null, ptr %i.iw, align 8, !tbaa !38
  br i1 %i.li, label %.thread, label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.lk = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN26EVPExtraTest_DHKeygen_Test8TestBodyEv:bb.a

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.fa unwind label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.of = load ptr, ptr %50, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1109, ptr noundef %i.of)
          to label %bb.fb unwind label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  %i.og = load ptr, ptr %50, align 8, !tbaa !42   ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586: ; preds = %bb.fc
  %i.oj = load i64, ptr %i.oh, align 8, !tbaa !43
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.ok) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.ol = load ptr, ptr %48, align 8, !tbaa !45   ; 3 uses
  %.not.i.i589 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i589, label %_ZN7testing7MessageD2Ev.exit591, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !14
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(128) %i.ol) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit591

_ZN7testing7MessageD2Ev.exit591:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  %i.op = load ptr, ptr %i.iy, align 8, !tbaa !55 ; 4 uses
  %.not.i.i592 = icmp eq ptr %i.op, null
  br i1 %.not.i.i592, label %_ZN7testing15AssertionResultD2Ev.exit596, label %bb.fd

bb.fd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit591
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !42 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i593: ; preds = %bb.fd
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !43
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i594

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i594: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i593
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit596

_ZN7testing15AssertionResultD2Ev.exit596:         ; preds = %_ZN7testing7MessageD2Ev.exit591, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i594
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %.critedge362

bb.fe:                                            ; preds = %bb.ey
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit602

bb.ff:                                            ; preds = %bb.ez
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

bb.fg:                                            ; preds = %bb.fa
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fb
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.pn231 = phi { ptr, i32 } [ %i.oy, %bb.fh ], [ %i.ox, %bb.fg ] ; 2 uses
  %i.oz = load ptr, ptr %50, align 8, !tbaa !42   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %bb.fi
  %i.pc = load i64, ptr %i.pa, align 8, !tbaa !43
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597, %bb.ff
  %.pn231.pn = phi { ptr, i32 } [ %i.ow, %bb.ff ], [ %.pn231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597 ], [ %.pn231, %bb.fi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.pe = load ptr, ptr %48, align 8, !tbaa !45   ; 3 uses
  %.not.i.i600 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i600, label %_ZN7testing7MessageD2Ev.exit602, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i601

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !14
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(128) %i.pe) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit602

_ZN7testing7MessageD2Ev.exit602:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %bb.fe
  %.pn231.pn.pn = phi { ptr, i32 } [ %i.ov, %bb.fe ], [ %.pn231.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %.pn231.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i601 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #18
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  %i.pi = invoke i32 @EVP_PKEY_keygen(ptr noundef nonnull %i.ob, ptr noundef nonnull %i.b)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.pj = icmp ne i32 %i.pi, 0                    ; 2 uses
  %i.pk = zext i1 %i.pj to i8
  store i8 %i.pk, ptr %51, align 8, !tbaa !37
  store ptr null, ptr %i.iz, align 8, !tbaa !38
  br i1 %i.pj, label %bb.fy, label %bb.fn

bb.fl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit602, %bb.ex
  %.pn231.pn.pn.pn = phi { ptr, i32 } [ %.pn231.pn.pn, %_ZN7testing7MessageD2Ev.exit602 ], [ %i.oe, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.qo

bb.fm:                                            ; preds = %bb.fj
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fn:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fo unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.fp unwind label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  %i.pm = load ptr, ptr %54, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %53, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1111, ptr noundef %i.pm)
          to label %bb.fq unwind label %bb.fv

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fr unwind label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #18
  %i.pn = load ptr, ptr %54, align 8, !tbaa !42   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608: ; preds = %bb.fr
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !43
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  %i.ps = load ptr, ptr %52, align 8, !tbaa !45   ; 3 uses
  %.not.i.i611 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i611, label %_ZN7testing7MessageD2Ev.exit613, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !14
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(128) %i.ps) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit613

_ZN7testing7MessageD2Ev.exit613:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i612
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  %i.pw = load ptr, ptr %i.iz, align 8, !tbaa !55 ; 4 uses
  %.not.i.i614 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i614, label %.loopexit.sink.split, label %bb.fs

bb.fs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit613
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !42 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i615: ; preds = %bb.fs
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !43
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i615
  call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef 32) #19
  br label %.loopexit.sink.split

bb.ft:                                            ; preds = %bb.fn
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit624

bb.fu:                                            ; preds = %bb.fo
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

bb.fv:                                            ; preds = %bb.fp
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fq
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pn236 = phi { ptr, i32 } [ %i.qf, %bb.fw ], [ %i.qe, %bb.fv ] ; 2 uses
  %i.qg = load ptr, ptr %54, align 8, !tbaa !42   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619: ; preds = %bb.fx
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !43
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619, %bb.fu
  %.pn236.pn = phi { ptr, i32 } [ %i.qd, %bb.fu ], [ %.pn236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619 ], [ %.pn236, %bb.fx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  %i.ql = load ptr, ptr %52, align 8, !tbaa !45   ; 3 uses
  %.not.i.i622 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i622, label %_ZN7testing7MessageD2Ev.exit624, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i623

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i623: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !14
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(128) %i.ql) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit624

_ZN7testing7MessageD2Ev.exit624:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, %bb.ft
  %.pn236.pn.pn = phi { ptr, i32 } [ %i.qc, %bb.ft ], [ %.pn236.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621 ], [ %.pn236.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i623 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %51) #18
  br label %bb.gc

bb.fy:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  %i.qp = load ptr, ptr %i.b, align 8, !tbaa !27  ; 5 uses
  store ptr %i.qp, ptr %55, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.qq = invoke i32 @EVP_PKEY_id(ptr noundef %i.qp)
          to label %bb.fz unwind label %bb.gd     ; 2 uses

bb.fz:                                            ; preds = %bb.fy
  store i32 %i.qq, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 28, ptr %i.d, align 4, !tbaa !63
  %i.qr = icmp eq i32 %i.qq, 28
  br i1 %i.qr, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %56)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ge

bb.gb:                                            ; preds = %bb.fz
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %56, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ge

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.qs = load i8, ptr %56, align 8, !tbaa !37, !range !57, !noundef !58
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.gp, label %bb.gg

bb.gc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit624, %bb.fm
  %.pn236.pn.pn.pn = phi { ptr, i32 } [ %.pn236.pn.pn, %_ZN7testing7MessageD2Ev.exit624 ], [ %i.pl, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  br label %bb.qn

bb.gd:                                            ; preds = %bb.fy
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gb, %bb.ga
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pn241 = phi { ptr, i32 } [ %i.qv, %bb.ge ], [ %i.qu, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.gx

bb.gg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.gh unwind label %bb.gl

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  %i.qw = load ptr, ptr %i.ja, align 8, !tbaa !55 ; 2 uses
  %.not.i.i632 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i632, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !42
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.gi, %bb.gh
  %i.qy = phi ptr [ %i.qx, %bb.gi ], [ @.str.211, %bb.gh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %58, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1114, ptr noundef %i.qy)
          to label %bb.gj unwind label %bb.gm

bb.gj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.qz = load ptr, ptr %57, align 8, !tbaa !45   ; 3 uses
  %.not.i.i633 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i633, label %_ZN7testing7MessageD2Ev.exit635, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634: ; preds = %bb.gk
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !14
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(128) %i.qz) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit635

_ZN7testing7MessageD2Ev.exit635:                  ; preds = %bb.gk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gg
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit638

bb.gm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gn:                                            ; preds = %bb.gj
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #18
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.pn243 = phi { ptr, i32 } [ %i.rf, %bb.gn ], [ %i.re, %bb.gm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.rg = load ptr, ptr %57, align 8, !tbaa !45   ; 3 uses
  %.not.i.i636 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i636, label %_ZN7testing7MessageD2Ev.exit638, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637: ; preds = %bb.go
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !14
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(128) %i.rg) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit638

_ZN7testing7MessageD2Ev.exit638:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637, %bb.go, %bb.gl
  %.pn243.pn = phi { ptr, i32 } [ %i.rd, %bb.gl ], [ %.pn243, %bb.go ], [ %.pn243, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i637 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #18
  br label %bb.gx

bb.gp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit635
  %i.rk = load ptr, ptr %i.ja, align 8, !tbaa !55 ; 4 uses
  %.not.i.i639 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i639, label %_ZN7testing15AssertionResultD2Ev.exit643, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !42 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 2 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i641, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i640: ; preds = %bb.gq
  %i.ro = load i64, ptr %i.rm, align 8, !tbaa !43
end_hunk_4
begin_hunk_5_@_ZN26EVPExtraTest_DHKeygen_Test8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i911: ; preds = %bb.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i910
  call void @_ZdlPvm(ptr noundef nonnull %i.aic, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit913

_ZN7testing15AssertionResultD2Ev.exit913:         ; preds = %bb.pi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i911
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  store i32 0, ptr %i.q, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.aii = invoke i32 @EVP_PKEY_cmp(ptr noundef %i.ahh, ptr noundef %i.agf)
          to label %bb.pk unwind label %bb.po     ; 2 uses

bb.pk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit913
  store i32 %i.aii, ptr %i.r, align 4, !tbaa !63
  %i.aij = load i32, ptr %i.q, align 4, !tbaa !63, !noalias !235
  %i.aik = icmp eq i32 %i.aij, %i.aii
  br i1 %i.aik, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %110)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit916 unwind label %bb.po

bb.pm:                                            ; preds = %bb.pk
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %110, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.158, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit916 unwind label %bb.po

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit916: ; preds = %bb.pl, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %i.ail = load i8, ptr %110, align 8, !tbaa !37, !range !57, !noundef !58
  %i.aim = trunc nuw i8 %i.ail to i1
  br i1 %i.aim, label %.critedge366, label %bb.pp

bb.pn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit908, %bb.oy
  %.pn307.pn.pn = phi { ptr, i32 } [ %.pn307.pn, %_ZN7testing7MessageD2Ev.exit908 ], [ %i.ahn, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #18
  br label %bb.ql

bb.po:                                            ; preds = %bb.pm, %bb.pl, %_ZN7testing15AssertionResultD2Ev.exit913
  %i.ain = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %bb.qk

bb.pp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit916
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %111)
          to label %bb.pq unwind label %bb.pu

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #18
  %i.aio = load ptr, ptr %i.js, align 8, !tbaa !55 ; 2 uses
  %.not.i.i917 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i917, label %_ZNK7testing15AssertionResult15failure_messageEv.exit918, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !42
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit918

_ZNK7testing15AssertionResult15failure_messageEv.exit918: ; preds = %bb.pr, %bb.pq
  %i.aiq = phi ptr [ %i.aip, %bb.pr ], [ @.str.211, %bb.pq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %112, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1136, ptr noundef %i.aiq)
          to label %bb.ps unwind label %bb.pv

bb.ps:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit918
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull align 8 dereferenceable(8) %111)
          to label %bb.pt unwind label %bb.pw

bb.pt:                                            ; preds = %bb.ps
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %112) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #18
  %i.air = load ptr, ptr %111, align 8, !tbaa !45 ; 3 uses
  %.not.i.i919 = icmp eq ptr %i.air, null
  br i1 %.not.i.i919, label %_ZN7testing7MessageD2Ev.exit921, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920: ; preds = %bb.pt
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !14
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.aiu = load ptr, ptr %i.ait, align 8
  call void %i.aiu(ptr noundef nonnull align 8 dereferenceable(128) %i.air) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit921

_ZN7testing7MessageD2Ev.exit921:                  ; preds = %bb.pt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i920
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #18
  br label %.critedge366

bb.pu:                                            ; preds = %bb.pp
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit924

bb.pv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit918
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.pw:                                            ; preds = %bb.ps
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %112) #18
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %.pn311 = phi { ptr, i32 } [ %i.aix, %bb.pw ], [ %i.aiw, %bb.pv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #18
  %i.aiy = load ptr, ptr %111, align 8, !tbaa !45 ; 3 uses
  %.not.i.i922 = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i922, label %_ZN7testing7MessageD2Ev.exit924, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923: ; preds = %bb.px
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !14
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = load ptr, ptr %i.aja, align 8
  call void %i.ajb(ptr noundef nonnull align 8 dereferenceable(128) %i.aiy) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit924

_ZN7testing7MessageD2Ev.exit924:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923, %bb.px, %bb.pu
  %.pn311.pn = phi { ptr, i32 } [ %i.aiv, %bb.pu ], [ %.pn311, %bb.px ], [ %.pn311, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %110) #18
  br label %bb.qk

.critedge366:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit916, %_ZN7testing7MessageD2Ev.exit921
  %i.ajc = load ptr, ptr %i.js, align 8, !tbaa !55 ; 4 uses
  %.not.i.i925 = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i925, label %_ZN7testing15AssertionResultD2Ev.exit929, label %bb.py

bb.py:                                            ; preds = %.critedge366
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !42 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16 ; 2 uses
  %i.ajf = icmp eq ptr %i.ajd, %i.aje
  br i1 %i.ajf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926: ; preds = %bb.py
  %i.ajg = load i64, ptr %i.aje, align 8, !tbaa !43
  %i.ajh = add i64 %i.ajg, 1
  call void @_ZdlPvm(ptr noundef %i.ajd, i64 noundef %i.ajh) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927: ; preds = %bb.py, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i926
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit929

_ZN7testing15AssertionResultD2Ev.exit929:         ; preds = %.critedge366, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #18
  %.not.i = icmp eq ptr %i.agf, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.pz

bb.pz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit929
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.agf)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aji = landingpad { ptr, i32 }
          catch ptr null
  %i.ajj = extractvalue { ptr, i32 } %i.aji, 0
  call void @__clang_call_terminate(ptr %i.ajj) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit929, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #18
  %.not.i930 = icmp eq ptr %i.ahh, null
  br i1 %.not.i930, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit931, label %bb.qb

bb.qb:                                            ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.ahh)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit931 unwind label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.ajk = landingpad { ptr, i32 }
          catch ptr null
  %i.ajl = extractvalue { ptr, i32 } %i.ajk, 0
  call void @__clang_call_terminate(ptr %i.ajl) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit931: ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit, %bb.qb
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ajm = load ptr, ptr %34, align 8, !tbaa !65  ; 2 uses
  %.not.i932 = icmp eq ptr %i.ajm, null
  br i1 %.not.i932, label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.qd

bb.qd:                                            ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit931
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.ajm)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ajn = landingpad { ptr, i32 }
          catch ptr null
  %i.ajo = extractvalue { ptr, i32 } %i.ajn, 0
  call void @__clang_call_terminate(ptr %i.ajo) #22
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit931, %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not, label %bb.qt, label %bb.cw

bb.qf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit870, %_ZN7testing15AssertionResultD2Ev.exit848, %_ZN7testing15AssertionResultD2Ev.exit820, %_ZN7testing15AssertionResultD2Ev.exit798, %_ZN7testing15AssertionResultD2Ev.exit770
  %i.ajp = load ptr, ptr %55, align 8, !tbaa !27  ; 2 uses
  %.not.i933 = icmp eq ptr %i.ajp, null
  br i1 %.not.i933, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit934, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.ajp)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit934 unwind label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.ajq = landingpad { ptr, i32 }
          catch ptr null
  %i.ajr = extractvalue { ptr, i32 } %i.ajq, 0
  call void @__clang_call_terminate(ptr %i.ajr) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit934: ; preds = %bb.qf, %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ajs = load ptr, ptr %34, align 8, !tbaa !65  ; 2 uses
  %.not.i935 = icmp eq ptr %i.ajs, null
  br i1 %.not.i935, label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit936, label %bb.qi

bb.qi:                                            ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit934
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.ajs)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit936 unwind label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.ajt = landingpad { ptr, i32 }
          catch ptr null
  %i.aju = extractvalue { ptr, i32 } %i.ajt, 0
  call void @__clang_call_terminate(ptr %i.aju) #22
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit936: ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit934, %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.qt

bb.qk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit924, %bb.po
  %.pn311.pn.pn = phi { ptr, i32 } [ %.pn311.pn, %_ZN7testing7MessageD2Ev.exit924 ], [ %i.ain, %bb.po ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #18
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.pn, %bb.ox
  %.pn311.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn, %bb.qk ], [ %.pn307.pn.pn, %bb.pn ], [ %.pn303.pn.pn, %bb.ox ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %103) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #18
  br label %bb.qm

bb.qm:                                            ; preds = %bb.gy, %bb.hq, %bb.ie, %bb.it, %bb.ji, %bb.jz, %bb.kp, %bb.lf, %_ZN7testing7MessageD2Ev.exit776, %bb.mj, %bb.nb, %bb.nq, %bb.oh, %bb.ql, %bb.gx
  %.pn311.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn243.pn.pn, %bb.gx ], [ %.pn311.pn.pn.pn, %bb.ql ], [ %.pn298.pn.pn.pn, %bb.oh ], [ %.pn293.pn.pn.pn, %bb.nq ], [ %.pn288.pn.pn.pn, %bb.nb ], [ %.pn283.pn.pn.pn, %bb.mj ], [ %.pn279.pn.pn, %_ZN7testing7MessageD2Ev.exit776 ], [ %i.rz, %bb.gy ], [ %.pn275.pn.pn, %bb.lf ], [ %.pn271.pn.pn, %bb.kp ], [ %.pn266.pn.pn.pn, %bb.jz ], [ %.pn261.pn.pn.pn, %bb.ji ], [ %.pn256.pn.pn.pn, %bb.it ], [ %.pn251.pn.pn, %bb.ie ], [ %.pn247.pn.pn, %bb.hq ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.gc
  %.pn311.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn, %bb.qm ], [ %.pn236.pn.pn.pn, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qn, %bb.fl, %bb.ew, %bb.ee, %_ZN7testing7MessageD2Ev.exit530
  %.pn311.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn, %bb.qn ], [ %.pn231.pn.pn.pn, %bb.fl ], [ %.pn226.pn.pn.pn, %bb.ew ], [ %.pn221.pn.pn.pn, %bb.ee ], [ %.pn217.pn.pn, %_ZN7testing7MessageD2Ev.exit530 ]
  call void @_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.da
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn, %bb.qo ], [ %i.jy, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.cz
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qp ], [ %i.jx, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.rf

.critedge362:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit596, %_ZN7testing15AssertionResultD2Ev.exit568, %_ZN7testing15AssertionResultD2Ev.exit546, %_ZN7testing15AssertionResultD2Ev.exit524
  %i.ajv = load ptr, ptr %34, align 8, !tbaa !65  ; 2 uses
  %.not.i937 = icmp eq ptr %i.ajv, null
  br i1 %.not.i937, label %.critedge364.a, label %bb.qr

bb.qr:                                            ; preds = %.critedge362
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.ajv)
          to label %.critedge364.a unwind label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.ajw = landingpad { ptr, i32 }
          catch ptr null
  %i.ajx = extractvalue { ptr, i32 } %i.ajw, 0
  call void @__clang_call_terminate(ptr %i.ajx) #22
  unreachable

.critedge364.a:                                   ; preds = %.critedge362, %bb.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.qt

.loopexit.sink.split:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616, %_ZN7testing7MessageD2Ev.exit613
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.qt

bb.qt:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit, %.critedge364.a, %.loopexit.sink.split, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit936, %_ZN7testing15AssertionResultD2Ev.exit502, %_ZN7testing15AssertionResultD2Ev.exit480
  %i.ajy = load ptr, ptr %24, align 8, !tbaa !27  ; 2 uses
  %.not.i939 = icmp eq ptr %i.ajy, null
  br i1 %.not.i939, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit940, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.ajy)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit940 unwind label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.ajz = landingpad { ptr, i32 }
          catch ptr null
  %i.aka = extractvalue { ptr, i32 } %i.ajz, 0
  call void @__clang_call_terminate(ptr %i.aka) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit940: ; preds = %bb.qt, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.qw

bb.qw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit458, %_ZN7testing15AssertionResultD2Ev.exit436, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit940
  %i.akb = load ptr, ptr %15, align 8, !tbaa !80  ; 2 uses
  %.not.i941 = icmp eq ptr %i.akb, null
  br i1 %.not.i941, label %_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  invoke void @DH_free(ptr noundef nonnull %i.akb)
          to label %_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.akc = landingpad { ptr, i32 }
          catch ptr null
  %i.akd = extractvalue { ptr, i32 } %i.akc, 0
  call void @__clang_call_terminate(ptr %i.akd) #22
  unreachable

_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.qw, %bb.qx
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.qz

bb.qz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit414, %_ZN7testing15AssertionResultD2Ev.exit392, %_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev.exit
  %i.ake = load ptr, ptr %6, align 8, !tbaa !78   ; 2 uses
  %.not.i942 = icmp eq ptr %i.ake, null
  br i1 %.not.i942, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  invoke void @BN_free(ptr noundef nonnull %i.ake)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.akf = landingpad { ptr, i32 }
          catch ptr null
  %i.akg = extractvalue { ptr, i32 } %i.akf, 0
  call void @__clang_call_terminate(ptr %i.akg) #22
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.qz, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.rc

bb.rc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit
  %i.akh = load ptr, ptr %1, align 8, !tbaa !78   ; 2 uses
  %.not.i943 = icmp eq ptr %i.akh, null
  br i1 %.not.i943, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit944, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  invoke void @BN_free(ptr noundef nonnull %i.akh)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit944 unwind label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.aki = landingpad { ptr, i32 }
          catch ptr null
  %i.akj = extractvalue { ptr, i32 } %i.aki, 0
  call void @__clang_call_terminate(ptr %i.akj) #22
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit944: ; preds = %bb.rc, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.rf:                                            ; preds = %bb.qq, %bb.cv, %_ZN7testing7MessageD2Ev.exit486
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qq ], [ %.pn212.pn.pn.pn, %bb.cv ], [ %.pn208.pn.pn, %_ZN7testing7MessageD2Ev.exit486 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %bb.bu
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rf ], [ %i.gj, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.bt, %_ZN7testing7MessageD2Ev.exit442
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rg ], [ %.pn203.pn.pn.pn, %bb.bt ], [ %.pn199.pn.pn, %_ZN7testing7MessageD2Ev.exit442 ]
  call void @_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.ar
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rh ], [ %i.dt, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.aq, %_ZN7testing7MessageD2Ev.exit398
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ri ], [ %.pn194.pn.pn.pn, %bb.aq ], [ %.pn190.pn.pn, %_ZN7testing7MessageD2Ev.exit398 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.o
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rj ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %_ZN7testing7MessageD2Ev.exit376
  %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rk ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit376 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn311.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare ptr @BN_get_rfc3526_prime_1536(ptr noundef) local_unnamed_addr #0

declare ptr @BN_new() local_unnamed_addr #0

declare i32 @BN_set_u64(ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @DH_new() local_unnamed_addr #0

declare i32 @DH_set0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_set1_DH(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @EVP_PKEY_get0_DH(ptr noundef) local_unnamed_addr #0

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @DH_get0_p(ptr noundef) local_unnamed_addr #0

declare ptr @DH_get0_g(ptr noundef) local_unnamed_addr #0

declare ptr @DH_get0_q(ptr noundef) local_unnamed_addr #0

declare ptr @DH_get0_pub_key(ptr noundef) local_unnamed_addr #0

declare ptr @DH_get0_priv_key(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_cmp_parameters(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI5dh_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI5dh_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @DH_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI5dh_stEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclI5dh_stEEvPT_.exit:    ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI9bignum_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BN_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI9bignum_stEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclI9bignum_stEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31EVPExtraTest_Ed25519Keygen_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.29", align 8 ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_5
