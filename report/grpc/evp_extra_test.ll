Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/evp_extra_test?download=true
inline.NumInlined: 3203
inline.NumDeleted: 638
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN31EVPExtraTest_Ed25519Keygen_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ho = load ptr, ptr %29, align 8, !tbaa !45   ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i227, label %bb.cy, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(128) %i.ho) #18, !call_target !54, !inline_history !0
  br label %bb.cy

bb.ct:                                            ; preds = %bb.co
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit235

bb.cu:                                            ; preds = %bb.cp
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.cv:                                            ; preds = %bb.cq
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cr
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #18
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn81 = phi { ptr, i32 } [ %i.hv, %bb.cw ], [ %i.hu, %bb.cv ] ; 2 uses
  %i.hw = load ptr, ptr %31, align 8, !tbaa !42   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.cx
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !43
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.cu
  %.pn81.pn = phi { ptr, i32 } [ %i.ht, %bb.cu ], [ %.pn81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn81, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ib = load ptr, ptr %29, align 8, !tbaa !45   ; 3 uses
  %.not.i.i233 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i233, label %_ZN7testing7MessageD2Ev.exit235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !14
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit235

_ZN7testing7MessageD2Ev.exit235:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %bb.ct
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.hs, %bb.ct ], [ %.pn81.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn81.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #18
  br label %bb.dj

bb.cy:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %.pr = load ptr, ptr %i.hg, align 8, !tbaa !55  ; 4 uses
  %.not.i.i236 = icmp eq ptr %.pr, null
  br i1 %.not.i.i236, label %_ZN7testing15AssertionResultD2Ev.exit240, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.if = load ptr, ptr %.pr, align 8, !tbaa !42  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237: ; preds = %bb.cz
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit240

_ZN7testing15AssertionResultD2Ev.exit240:         ; preds = %bb.cl, %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.da

bb.da:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit212, %_ZN7testing15AssertionResultD2Ev.exit189, %_ZN7testing15AssertionResultD2Ev.exit240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.db

bb.db:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit167, %bb.da
  %i.ik = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit unwind label %bb.dc ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #22
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.da)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.df

bb.df:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit145, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit

bb.dh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit123, %bb.df
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.d)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #22
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.dj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit235, %bb.cn
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn, %_ZN7testing7MessageD2Ev.exit235 ], [ %i.hh, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.cm, %bb.bx, %bb.bw
  %.pn81.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn, %bb.dj ], [ %.pn76.pn.pn.pn, %bb.cm ], [ %i.fx, %bb.bx ], [ %.pn71.pn.pn.pn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.bh
  %.pn81.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn, %bb.dk ], [ %.pn66.pn.pn.pn, %bb.bh ]
  %i.ir = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit242 unwind label %bb.dm ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #22
  unreachable

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit242: ; preds = %bb.dl, %bb.as
  %.pn81.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.as ], [ %.pn81.pn.pn.pn.pn.pn, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit242, %bb.ar
  %.pn81.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn, %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEED2Ev.exit242 ], [ %.pn61.pn.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.ac, %_ZN7testing7MessageD2Ev.exit107
  %.pn81.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn.pn.pn.pn, %bb.dn ], [ %.pn56.pn.pn.pn, %bb.ac ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit107 ]
  call void @_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn81.pn.pn.pn.pn.pn.pn.pn.pn
}

declare i32 @EVP_DigestVerify(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [2 x %struct.anon], align 16        ; 32 uses
  %2 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %3 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %4 = alloca %struct.Bytes, align 8              ; 6 uses
  %5 = alloca %struct.cbs_st, align 8             ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %struct.Bytes, align 8             ; 6 uses
  %16 = alloca %struct.Bytes, align 8             ; 6 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 10 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %46 = alloca %struct.Bytes, align 8             ; 6 uses
  %47 = alloca %struct.Bytes, align 8             ; 6 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i32 408, ptr %1, align 16, !tbaa !248
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(91) ptr @_Znwm(i64 noundef 91) #21 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 91 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.e, ptr noundef nonnull align 1 dereferenceable(91) @constinit, i64 91, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.f, ptr %i.h, align 16, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #21
          to label %bb.d unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !82  ; 3 uses
  %.not.i.i4.i199 = icmp eq ptr %i.l, null
  br i1 %.not.i.i4.i199, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !83
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.i, align 16, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 65 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.r, ptr %i.s, align 16, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.j, ptr noundef nonnull align 1 dereferenceable(65) @constinit.171, i64 65, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.r, ptr %i.t, align 8, !tbaa !249
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 948, ptr %i.u, align 8, !tbaa !248
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #21
          to label %bb.g unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 16, !tbaa !82  ; 2 uses
  %.not.i.i4.i204 = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i204, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !83
  br label %.body.sink.split

bb.g:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.v, align 16, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.w, ptr noundef nonnull align 1 dereferenceable(44) @constinit.172, i64 44, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !249
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %bb.j unwind label %bb.h       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !82 ; 3 uses
  %.not.i.i4.i209 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4.i209, label %.body211, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #19
  br label %.body211

bb.j:                                             ; preds = %bb.g
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @constinit.173, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.an, ptr %i.ap, align 16, !tbaa !249
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.2.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.sroa.2.0..sroa_idx.i397 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  br label %bb.n

.body211:                                         ; preds = %bb.h, %bb.i
  %i.bj = load ptr, ptr %i.v, align 16, !tbaa !82 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %.body211
  %i.bk = load ptr, ptr %i.ac, align 16, !tbaa !83
  br label %.body.sink.split

bb.l:                                             ; preds = %bb.b, %bb.c
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !82  ; 3 uses
  %.not.i.i.i215 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i215, label %.body.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #19
  br label %.body.thread

.body.sink.split:                                 ; preds = %bb.f, %bb.k
  %.sink655 = phi ptr [ %i.bk, %bb.k ], [ %i.aa, %bb.f ]
  %.sink654 = phi ptr [ %i.bj, %bb.k ], [ %i.y, %bb.f ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.x, %bb.f ]
  %i.bq = ptrtoint ptr %.sink655 to i64
  %i.br = ptrtoint ptr %.sink654 to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink654, i64 noundef %i.bs) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body211, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.ag, %.body211 ], [ %.pn.ph, %.body.sink.split ]
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #18
  br label %.body.thread

bb.n:                                             ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428, %bb.j
  %.051.idx501 = phi i64 [ 0, %bb.j ], [ %.051.add, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428 ] ; 2 uses
  %.051.ptr502 = getelementptr inbounds nuw i8, ptr %1, i64 %.051.idx501 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing11ScopedTraceC2IiEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.2, i32 noundef 1199, ptr noundef nonnull align 4 dereferenceable(4) %.051.ptr502)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %.051.ptr502, i64 8 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !82 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.051.ptr502, i64 16 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !249
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  store ptr %i.bu, ptr %4, align 8
  store i64 %i.bz, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_ZN7testing11ScopedTraceC2I5BytesEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.2, i32 noundef 1200, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !82 ; 2 uses
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !249
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  store ptr %i.ca, ptr %5, align 8, !tbaa !251
  store i64 %i.ce, ptr %i.aq, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cf = invoke ptr @EVP_parse_public_key(ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.t       ; 6 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.cf, ptr %6, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.cg = icmp ne ptr %i.cf, null                 ; 2 uses
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %7, align 8, !tbaa !37
  store ptr null, ptr %i.ar, align 8, !tbaa !38
  br i1 %i.cg, label %bb.af, label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.loopexit

bb.s:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.gg

bb.t:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cl = load ptr, ptr %10, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef %i.cl)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  %i.cm = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.cr = load ptr, ptr %8, align 8, !tbaa !45    ; 3 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.cv = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 4 uses
  %.not.i.i218 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i218, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431, label %bb.z

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !42 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !43
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #19
  br label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431

bb.aa:                                            ; preds = %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit224

bb.ab:                                            ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.ac:                                            ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn122 = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %i.dd, %bb.ac ] ; 2 uses
  %i.df = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.ae
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !43
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.ab
  %.pn122.pn = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %.pn122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn122, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.dk = load ptr, ptr %8, align 8, !tbaa !45    ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %bb.aa
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.db, %bb.aa ], [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn122.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ge

bb.af:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.do = invoke i64 @EVP_PKEY_get1_tls_encodedpoint(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a)
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  store i64 %i.do, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !63
  %.not453 = icmp eq i64 %i.do, 0
  br i1 %.not453, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
end_hunk_0
begin_hunk_1_@_ZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEv:bb.a

_ZeqRK5BytesS1_.exit.i.i407:                      ; preds = %bb.fb
  %bcmp.i.i.i.i.i.i.i.i.i.i408 = call i32 @bcmp(ptr %i.nr, ptr %i.nt, i64 %i.ns), !noalias !254
  %.not9.i.i.i.i.i.i.i.i.i.i409 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i408, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i409, label %_ZeqRK5BytesS1_.exit.thread.i.i410, label %_ZeqRK5BytesS1_.exit.thread7.i.i405

_ZeqRK5BytesS1_.exit.thread.i.i410:               ; preds = %_ZeqRK5BytesS1_.exit.i.i407, %bb.fb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413 unwind label %bb.fe

_ZeqRK5BytesS1_.exit.thread7.i.i405:              ; preds = %_ZeqRK5BytesS1_.exit.i.i407, %bb.fa
  invoke void @_ZN7testing8internal18CmpHelperEQFailureI5BytesS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %47)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413 unwind label %bb.fe

_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413: ; preds = %_ZeqRK5BytesS1_.exit.thread.i.i410, %_ZeqRK5BytesS1_.exit.thread7.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  %i.ny = load i8, ptr %45, align 8, !tbaa !37, !range !57, !noundef !58
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.fp, label %bb.fg

bb.fc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit391, %bb.em
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn, %_ZN7testing7MessageD2Ev.exit391 ], [ %i.mp, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.fz

bb.fd:                                            ; preds = %bb.ez, %bb.ey
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %_ZeqRK5BytesS1_.exit.thread7.i.i405, %_ZeqRK5BytesS1_.exit.thread.i.i410
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn165 = phi { ptr, i32 } [ %i.ob, %bb.fe ], [ %i.oa, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.fy

bb.fg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  %i.oc = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 2 uses
  %.not.i.i414 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i414, label %_ZNK7testing15AssertionResult15failure_messageEv.exit415, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !42
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit415

_ZNK7testing15AssertionResult15failure_messageEv.exit415: ; preds = %bb.fi, %bb.fh
  %i.oe = phi ptr [ %i.od, %bb.fi ], [ @.str.211, %bb.fh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1229, ptr noundef %i.oe)
          to label %bb.fj unwind label %bb.fm

bb.fj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit415
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.fk unwind label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.of = load ptr, ptr %48, align 8, !tbaa !45   ; 3 uses
  %.not.i.i416 = icmp eq ptr %i.of, null
  br i1 %.not.i.i416, label %_ZN7testing7MessageD2Ev.exit418, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417: ; preds = %bb.fk
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !14
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(128) %i.of) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit418

_ZN7testing7MessageD2Ev.exit418:                  ; preds = %bb.fk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %bb.fp

bb.fl:                                            ; preds = %bb.fg
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit421

bb.fm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit415
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fj
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.pn167 = phi { ptr, i32 } [ %i.ol, %bb.fn ], [ %i.ok, %bb.fm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.om = load ptr, ptr %48, align 8, !tbaa !45   ; 3 uses
  %.not.i.i419 = icmp eq ptr %i.om, null
  br i1 %.not.i.i419, label %_ZN7testing7MessageD2Ev.exit421, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420: ; preds = %bb.fo
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !14
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(128) %i.om) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit421

_ZN7testing7MessageD2Ev.exit421:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420, %bb.fo, %bb.fl
  %.pn167.pn = phi { ptr, i32 } [ %i.oj, %bb.fl ], [ %.pn167, %bb.fo ], [ %.pn167, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #18
  br label %bb.fy

bb.fp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413, %_ZN7testing7MessageD2Ev.exit418
  %i.oq = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 4 uses
  %.not.i.i422 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i422, label %_ZN7testing15AssertionResultD2Ev.exit426, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !42 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423: ; preds = %bb.fq
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !43
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit426

_ZN7testing15AssertionResultD2Ev.exit426:         ; preds = %bb.fp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.fr

bb.fr:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit385, %_ZN7testing15AssertionResultD2Ev.exit363, %_ZN7testing15AssertionResultD2Ev.exit426
  %i.ow = phi i1 [ true, %_ZN7testing15AssertionResultD2Ev.exit426 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit385 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit363 ]
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %36)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit: ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.fu

bb.ft:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, %_ZN7testing7MessageD2Ev.exit269
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.fw

bb.fu:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit340, %_ZN7testing15AssertionResultD2Ev.exit313, %_ZN7testing15AssertionResultD2Ev.exit296, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit
  %.9.ph = phi i1 [ false, %_ZN7testing15AssertionResultD2Ev.exit313 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit296 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit340 ], [ %i.ow, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit ]
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.ga)
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #22
  unreachable

bb.fw:                                            ; preds = %bb.fu, %bb.ft
  %.9602 = phi i1 [ false, %bb.ft ], [ %.9.ph, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.cf)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428: ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.051.add = add nuw nsw i64 %.051.idx501, 56    ; 2 uses
  %.not = icmp ne i64 %.051.add, 112
  %or.cond.not = select i1 %.9602, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.n, label %.loopexit

bb.fy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit421, %bb.ff
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit421 ], [ %.pn165, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fc, %bb.el
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn, %bb.fy ], [ %.pn160.pn.pn.pn, %bb.fc ], [ %.pn155.pn.pn.pn, %bb.el ]
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %36)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429: ; preds = %bb.fz, %bb.dw
  %.pn167.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.dw ], [ %.pn167.pn.pn.pn, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.gb

bb.gb:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429, %bb.dv, %bb.de, %bb.cp, %_ZN7testing7MessageD2Ev.exit280
  %.pn167.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429 ], [ %.pn150.pn.pn.pn, %bb.dv ], [ %.pn145.pn.pn.pn, %bb.cp ], [ %.pn140.pn.pn.pn, %bb.de ], [ %.pn136.pn.pn, %_ZN7testing7MessageD2Ev.exit280 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.bo
  %.pn167.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn, %bb.gb ], [ %i.gd, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.bn, %bb.ay, %bb.aj
  %.pn167.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn, %bb.gc ], [ %i.dr, %bb.aj ], [ %.pn132.pn.pn, %bb.bn ], [ %.pn126.pn.pn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %_ZN7testing7MessageD2Ev.exit224
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn, %bb.gd ], [ %.pn122.pn.pn, %_ZN7testing7MessageD2Ev.exit224 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.t
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ge ], [ %i.ck, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.s
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gf ], [ %i.cj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %.body.thread.loopexit

.body.thread.loopexit:                            ; preds = %bb.gg, %bb.r
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gg ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.pf) #18
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #18
  br label %.body.thread

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431: ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit.sink.split

bb.gh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit234, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.cf)
          to label %.loopexit.sink.split unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #22
  unreachable

.loopexit.sink.split:                             ; preds = %bb.gh, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428, %.loopexit.sink.split
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.gj

bb.gj:                                            ; preds = %.loopexit
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !83
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.po) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.gj, %.loopexit
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pq = load ptr, ptr %i.pp, align 16, !tbaa !82 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i1.i, label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit", label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ps = load ptr, ptr %i.pr, align 16, !tbaa !83
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pv) #19
  br label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"

"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.gk
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.px = load ptr, ptr %i.pw, align 16, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1, label %bb.gl

bb.gl:                                            ; preds = %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pz = load ptr, ptr %i.py, align 16, !tbaa !83
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qc) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1

_ZNSt6vectorIhSaIhEED2Ev.exit.i.1:                ; preds = %bb.gl, %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i1.i.1 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i1.i.1, label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1", label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !83
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qj) #19
  br label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1"

"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1": ; preds = %bb.gm, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

.body.thread:                                     ; preds = %.body, %.body.thread.loopexit, %bb.m, %bb.l
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body.thread.loopexit ], [ %i.k, %bb.m ], [ %i.k, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

end_hunk_1
