inline.NumInlined: 3201
inline.NumDeleted: 639
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN31EVPExtraTest_Ed25519Keygen_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ho = load ptr, ptr %29, align 8, !tbaa !43   ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i227, label %bb.cy, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(128) %i.ho) #18, !call_target !45, !inline_history !54
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
  %i.hw = load ptr, ptr %31, align 8, !tbaa !38   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.cx
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !42
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.cu
  %.pn81.pn = phi { ptr, i32 } [ %i.ht, %bb.cu ], [ %.pn81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn81, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.ib = load ptr, ptr %29, align 8, !tbaa !43   ; 3 uses
  %.not.i.i233 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i233, label %_ZN7testing7MessageD2Ev.exit235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #18, !call_target !45, !inline_history !54
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
  %i.if = load ptr, ptr %.pr, align 8, !tbaa !38  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i237: ; preds = %bb.cz
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !42
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
  %1 = alloca [2 x %struct.anon], align 16        ; 30 uses
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
  store i32 408, ptr %1, align 16, !tbaa !228
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call noalias noundef nonnull dereferenceable(91) ptr @_Znwm(i64 noundef 91) #21 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 91 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.e, ptr noundef nonnull align 1 dereferenceable(91) @constinit, i64 91, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.f, ptr %i.h, align 16, !tbaa !236
  %i.i = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #21
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.i, ptr %i.j, align 16, !tbaa !234
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 65 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.k, ptr %i.l, align 16, !tbaa !235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.i, ptr noundef nonnull align 1 dereferenceable(65) @constinit.171, i64 65, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.k, ptr %i.m, align 8, !tbaa !236
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 948, ptr %i.n, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(44) ptr @_Znwm(i64 noundef 44) #21
          to label %bb.c unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i205 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i205:        ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.o, align 16, !tbaa !234
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.r, ptr %i.s, align 16, !tbaa !235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.p, ptr noundef nonnull align 1 dereferenceable(44) @constinit.172, i64 44, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.r, ptr %i.t, align 8, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.u, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.w, ptr %i.x, align 8, !tbaa !235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, ptr noundef nonnull align 1 dereferenceable(32) @constinit.173, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.w, ptr %i.y, align 16, !tbaa !236
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.2.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.sroa.2.0..sroa_idx.i397 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 44) #19
  br label %.body

bb.f:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 91) #19
  br label %.body.thread

.body:                                            ; preds = %bb.e, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i205
  %.pn = phi { ptr, i32 } [ %i.q, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i205 ], [ %i.as, %bb.e ]
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #18
  br label %.body.thread

bb.g:                                             ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428, %bb.d
  %.066.ptr502 = phi ptr [ %1, %bb.d ], [ %.066.ptr, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428 ] ; 6 uses
  %.066.idx501 = phi i64 [ 0, %bb.d ], [ %.066.add, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing11ScopedTraceC2IiEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.2, i32 noundef 1199, ptr noundef nonnull align 4 dereferenceable(4) %.066.ptr502)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.au = getelementptr inbounds nuw i8, ptr %.066.ptr502, i64 8 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !234 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.066.ptr502, i64 16 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !236
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  store ptr %i.av, ptr %4, align 8
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_ZN7testing11ScopedTraceC2I5BytesEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.2, i32 noundef 1200, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !234 ; 2 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !236
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.bb, ptr %5, align 8, !tbaa !237
  store i64 %i.bf, ptr %i.z, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bg = invoke ptr @EVP_parse_public_key(ptr noundef nonnull %5)
          to label %bb.j unwind label %bb.m       ; 6 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bh = icmp ne ptr %i.bg, null                 ; 2 uses
  %i.bi = zext i1 %i.bh to i8
  store i8 %i.bi, ptr %7, align 8, !tbaa !27
  store ptr null, ptr %i.aa, align 8, !tbaa !37
  br i1 %i.bh, label %bb.y, label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.loopexit

bb.l:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.fz

bb.m:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %10, align 8, !tbaa !38
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef %i.bm)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  %i.bn = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !42
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.bs = load ptr, ptr %8, align 8, !tbaa !43    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(128) %i.bs) #18, !call_target !45, !inline_history !54
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 4 uses
  %.not.i.i218 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i218, label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !42
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 32) #19
  br label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431

bb.t:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit224

bb.u:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.v:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn122 = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.ce, %bb.v ] ; 2 uses
  %i.cg = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.x
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.u
  %.pn122.pn = phi { ptr, i32 } [ %i.cd, %bb.u ], [ %.pn122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn122, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.cl = load ptr, ptr %8, align 8, !tbaa !43    ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #18, !call_target !45, !inline_history !54
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %bb.t
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn122.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.fx

bb.y:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cp = invoke i64 @EVP_PKEY_get1_tls_encodedpoint(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a)
          to label %bb.z unwind label %bb.ac      ; 2 uses

bb.z:                                             ; preds = %bb.y
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !68
  %.not453 = icmp eq i64 %i.cp, 0
  br i1 %.not453, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
end_hunk_0
begin_hunk_1_@_ZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEv:bb.a

_ZeqRK5BytesS1_.exit.i.i407:                      ; preds = %bb.eu
  %bcmp.i.i.i.i.i.i.i.i.i.i408 = call i32 @bcmp(ptr %i.ms, ptr %i.mu, i64 %i.mt), !noalias !245
  %.not9.i.i.i.i.i.i.i.i.i.i409 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i408, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i409, label %_ZeqRK5BytesS1_.exit.thread.i.i410, label %_ZeqRK5BytesS1_.exit.thread7.i.i405

_ZeqRK5BytesS1_.exit.thread.i.i410:               ; preds = %_ZeqRK5BytesS1_.exit.i.i407, %bb.eu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413 unwind label %bb.ex

_ZeqRK5BytesS1_.exit.thread7.i.i405:              ; preds = %_ZeqRK5BytesS1_.exit.i.i407, %bb.et
  invoke void @_ZN7testing8internal18CmpHelperEQFailureI5BytesS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %45, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %47)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413 unwind label %bb.ex

_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413: ; preds = %_ZeqRK5BytesS1_.exit.thread.i.i410, %_ZeqRK5BytesS1_.exit.thread7.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  %i.mz = load i8, ptr %45, align 8, !tbaa !27, !range !62, !noundef !63
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.fi, label %bb.ez

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit391, %bb.ef
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn, %_ZN7testing7MessageD2Ev.exit391 ], [ %i.lq, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.fs

bb.ew:                                            ; preds = %bb.es, %bb.er
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ex:                                            ; preds = %_ZeqRK5BytesS1_.exit.thread7.i.i405, %_ZeqRK5BytesS1_.exit.thread.i.i410
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.pn165 = phi { ptr, i32 } [ %i.nc, %bb.ex ], [ %i.nb, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.fr

bb.ez:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  %i.nd = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 2 uses
  %.not.i.i414 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i414, label %_ZNK7testing15AssertionResult15failure_messageEv.exit415, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit415

_ZNK7testing15AssertionResult15failure_messageEv.exit415: ; preds = %bb.fb, %bb.fa
  %i.nf = phi ptr [ %i.ne, %bb.fb ], [ @.str.211, %bb.fa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1229, ptr noundef %i.nf)
          to label %bb.fc unwind label %bb.ff

bb.fc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit415
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.fd unwind label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.ng = load ptr, ptr %48, align 8, !tbaa !43   ; 3 uses
  %.not.i.i416 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i416, label %_ZN7testing7MessageD2Ev.exit418, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417: ; preds = %bb.fd
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(128) %i.ng) #18, !call_target !45, !inline_history !54
  br label %_ZN7testing7MessageD2Ev.exit418

_ZN7testing7MessageD2Ev.exit418:                  ; preds = %bb.fd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %bb.fi

bb.fe:                                            ; preds = %bb.ez
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit421

bb.ff:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit415
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fc
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #18
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.pn167 = phi { ptr, i32 } [ %i.nm, %bb.fg ], [ %i.nl, %bb.ff ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  %i.nn = load ptr, ptr %48, align 8, !tbaa !43   ; 3 uses
  %.not.i.i419 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i419, label %_ZN7testing7MessageD2Ev.exit421, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420: ; preds = %bb.fh
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !12
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(128) %i.nn) #18, !call_target !45, !inline_history !54
  br label %_ZN7testing7MessageD2Ev.exit421

_ZN7testing7MessageD2Ev.exit421:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420, %bb.fh, %bb.fe
  %.pn167.pn = phi { ptr, i32 } [ %i.nk, %bb.fe ], [ %.pn167, %bb.fh ], [ %.pn167, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i420 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #18
  br label %bb.fr

bb.fi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit413, %_ZN7testing7MessageD2Ev.exit418
  %i.nr = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 4 uses
  %.not.i.i422 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i422, label %_ZN7testing15AssertionResultD2Ev.exit426, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !38 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423: ; preds = %bb.fj
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !42
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i423
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit426

_ZN7testing15AssertionResultD2Ev.exit426:         ; preds = %bb.fi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.fk

bb.fk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit385, %_ZN7testing15AssertionResultD2Ev.exit363, %_ZN7testing15AssertionResultD2Ev.exit426
  %i.nx = phi i1 [ true, %_ZN7testing15AssertionResultD2Ev.exit426 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit385 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit363 ]
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %36)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ny = landingpad { ptr, i32 }
          catch ptr null
  %i.nz = extractvalue { ptr, i32 } %i.ny, 0
  call void @__clang_call_terminate(ptr %i.nz) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit: ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.fn

bb.fm:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, %_ZN7testing7MessageD2Ev.exit269
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.fp

bb.fn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit340, %_ZN7testing15AssertionResultD2Ev.exit313, %_ZN7testing15AssertionResultD2Ev.exit296, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit
  %.9.ph = phi i1 [ false, %_ZN7testing15AssertionResultD2Ev.exit313 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit296 ], [ false, %_ZN7testing15AssertionResultD2Ev.exit340 ], [ %i.nx, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit ]
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.fb)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #22
  unreachable

bb.fp:                                            ; preds = %bb.fn, %bb.fm
  %.9599 = phi i1 [ false, %bb.fm ], [ %.9.ph, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.bg)
          to label %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.oc = landingpad { ptr, i32 }
          catch ptr null
  %i.od = extractvalue { ptr, i32 } %i.oc, 0
  call void @__clang_call_terminate(ptr %i.od) #22
  unreachable

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.066.add = add nuw nsw i64 %.066.idx501, 56    ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 %.066.idx501
  %.066.ptr = getelementptr inbounds nuw i8, ptr %50, i64 56
  %.not = icmp ne i64 %.066.add, 112
  %or.cond.not = select i1 %.9599, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.g, label %.loopexit

bb.fr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit421, %bb.ey
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit421 ], [ %.pn165, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.ev, %bb.ee
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn, %bb.fr ], [ %.pn160.pn.pn.pn, %bb.ev ], [ %.pn155.pn.pn.pn, %bb.ee ]
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %36)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  call void @__clang_call_terminate(ptr %i.of) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429: ; preds = %bb.fs, %bb.dp
  %.pn167.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.dp ], [ %.pn167.pn.pn.pn, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429, %bb.do, %bb.cx, %bb.ci, %_ZN7testing7MessageD2Ev.exit280
  %.pn167.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit429 ], [ %.pn150.pn.pn.pn, %bb.do ], [ %.pn145.pn.pn.pn, %bb.ci ], [ %.pn140.pn.pn.pn, %bb.cx ], [ %.pn136.pn.pn, %_ZN7testing7MessageD2Ev.exit280 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.bh
  %.pn167.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn, %bb.fu ], [ %i.fe, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.bg, %bb.ar, %bb.ac
  %.pn167.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %i.cs, %bb.ac ], [ %.pn132.pn.pn, %bb.bg ], [ %.pn126.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZN7testing7MessageD2Ev.exit224
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn, %bb.fw ], [ %.pn122.pn.pn, %_ZN7testing7MessageD2Ev.exit224 ]
  call void @_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.m
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %i.bl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.l
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fy ], [ %i.bk, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  br label %.body.thread.loopexit

.body.thread.loopexit:                            ; preds = %bb.fz, %bb.k
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fz ], [ %i.bj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.og) #18
  call fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #18
  br label %.body.thread

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431: ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit.sink.split

bb.ga:                                            ; preds = %_ZN7testing7MessageD2Ev.exit234, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @EVP_PKEY_free(ptr noundef nonnull %i.bg)
          to label %.loopexit.sink.split unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #22
  unreachable

.loopexit.sink.split:                             ; preds = %bb.ga, %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit431
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit428, %.loopexit.sink.split
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.gc

bb.gc:                                            ; preds = %.loopexit
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !235
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.op) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.gc, %.loopexit
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.or = load ptr, ptr %i.oq, align 16, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i1.i, label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit", label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ot = load ptr, ptr %i.os, align 16, !tbaa !235
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.or to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ow) #19
  br label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"

"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.gd
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !234 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1, label %bb.ge

bb.ge:                                            ; preds = %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pa = load ptr, ptr %i.oz, align 16, !tbaa !235
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1

_ZNSt6vectorIhSaIhEED2Ev.exit.i.1:                ; preds = %bb.ge, %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit"
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i1.i.1 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i1.i.1, label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1", label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !235
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = ptrtoint ptr %i.pf to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.pk) #19
  br label %"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1"

"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev.exit.1": ; preds = %bb.gf, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

.body.thread:                                     ; preds = %.body, %.body.thread.loopexit, %bb.f
  %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body.thread.loopexit ], [ %i.at, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn167.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN33EVPExtraTest_TLSEncodedPoint_Test8TestBodyEvEN3$_0D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

end_hunk_1
