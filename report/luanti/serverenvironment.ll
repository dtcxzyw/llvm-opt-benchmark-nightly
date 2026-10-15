Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverenvironment?download=true
inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17ServerEnvironment18forceActivateBlockEP8MapBlock:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.f = call { ptr, i8 } @_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 2 dereferenceable(6) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN17ServerEnvironment13activateBlockEP8MapBlock(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %_ZN15ActiveBlockList3addEN4core8vector3dIsEE.exit, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !388  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56
  %i.k = uitofp nsz i64 %i.j to double
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ServerEnvironment13activateBlockEP8MapBlock(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef initializes((32, 36)) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.599", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !418
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !419  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3172 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !385  ; 3 uses
  %.not = icmp ne i32 %i.c, -1
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 %i.c) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3180
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ult i32 %i.c, %i.g
  %or.cond = select i1 %.not, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN16StaticObjectList11clearStoredEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !420  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !421  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i, label %_ZN16StaticObjectList11clearStoredEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !262
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #37
  br label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i
  store ptr %i.j, ptr %i.k, align 8, !tbaa !421
  %.pre = load i32, ptr %i.d, align 4, !tbaa !385
  br label %_ZN16StaticObjectList11clearStoredEv.exit

_ZN16StaticObjectList11clearStoredEv.exit:        ; preds = %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.b, %bb.a
  %i.t = phi i32 [ %.pre, %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  store i32 %i.t, ptr %i.b, align 8, !tbaa !419
  tail call void @_ZN17ServerEnvironment15activateObjectsEP8MapBlockj(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull %1, i32 noundef %spec.select)
  %i.u = load i8, ptr %1, align 8, !tbaa !422, !range !155, !noundef !156
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN16StaticObjectList11clearStoredEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.x = uitofp nsz i32 %spec.select to float     ; 2 uses
  tail call void @_ZN10LBMManager9applyLBMsEP17ServerEnvironmentP8MapBlockjf(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.c, float noundef %i.x)
  %i.y = load i8, ptr %1, align 8, !tbaa !422, !range !155, !noundef !156
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8
  store i64 %i.aa, ptr %2, align 8, !tbaa !333
  store ptr @"_ZNSt17_Function_handlerIFbN4core8vector3dIsEE7MapNode9NodeTimerEZN17ServerEnvironment13activateBlockEP8MapBlockE3$_0E9_M_invokeERKSt9_Any_dataOS2_OS3_OS4_", ptr %i.ac, align 8, !tbaa !754
  store ptr @"_ZNSt17_Function_handlerIFbN4core8vector3dIsEE7MapNode9NodeTimerEZN17ServerEnvironment13activateBlockEP8MapBlockE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ab, align 8, !tbaa !336
  invoke void @_ZN8MapBlock4stepEfRKSt8functionIFbN4core8vector3dIsEE7MapNode9NodeTimerEE(ptr noundef nonnull align 8 dereferenceable(328) %1, float noundef %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !336 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN16StaticObjectList11clearStoredEv.exit, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !336 ; 2 uses
  %.not.i23 = icmp eq ptr %i.aj, null
  br i1 %.not.i23, label %_ZNSt14_Function_baseD2Ev.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit24 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit24:                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ai
}

; Function Attrs: uwtable
define dso_local void @_ZN17ServerEnvironment15activateObjectsEP8MapBlockj(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [4 x i8], align 1                 ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector.579", align 8   ; 14 uses
  %4 = alloca %"class.std::unique_ptr.716", align 8 ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %6 = alloca %"class.std::unique_ptr.716", align 8 ; 4 uses
  %7 = alloca %"class.core::vector3d.3", align 8  ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3169
  %i.n = load i8, ptr %i.m, align 1, !range !155
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN8MapBlock19onObjectsActivationEv(ptr noundef nonnull align 8 dereferenceable(328) %1)
  br i1 %i.p, label %bb.c, label %bb.bu

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !761  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !761  ; 2 uses
  %.not155177 = icmp eq ptr %i.r, %i.t
  br i1 %.not155177, label %_ZN16StaticObjectList11clearStoredEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.not.i92 = icmp eq ptr @_ZTH13verbosestream, null ; 2 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.bm
  %.sroa.0147.0178 = phi ptr [ %i.r, %.lr.ph ], [ %i.he, %bb.bm ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.z = load i8, ptr %.sroa.0147.0178, align 8, !tbaa !762
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 4 ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ab, align 4, !tbaa !68
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 12
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 16 ; 4 uses
  invoke void @_ZN17ServerEnvironment9createSAOE16ActiveObjectTypeN4core8vector3dIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.716") align 8 %4, ptr noundef nonnull align 8 dereferenceable(3560) %0, i32 noundef %i.aa, <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.e unwind label %bb.ao

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %4, align 8               ; 4 uses
  %.not157 = icmp eq ptr %i.ad, null
  br i1 %.not157, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.f, %bb.g
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !755

.noexc:                                           ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.ah, i64 976, i64 984
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @.str.101, ptr %i.l, align 8, !tbaa !308
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @.str.102, ptr %i.k, align 8, !tbaa !308
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.103, ptr %i.j, align 8, !tbaa !308
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %.sroa.0.0.copyload.i = load i48, ptr %i.u, align 2, !tbaa !74
  store i48 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 2 dereferenceable(6) %5)
          to label %bb.k unwind label %bb.ap

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.104, ptr %i.i, align 8, !tbaa !308
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.l unwind label %bb.ap      ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = load i8, ptr %.sroa.0147.0178, align 8, !tbaa !762
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !309 ; 5 uses
  %.not.i62 = icmp eq ptr %i.aq, null
  br i1 %.not.i62, label %_ZN11StreamProxylsIiEERS_OT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !162
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !316
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %.noexc63 unwind label %.loopexit172

.noexc63:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.an, align 8, !tbaa !309
  br label %bb.o

bb.o:                                             ; preds = %.noexc63, %bb.m
  %i.ay = phi ptr [ %.pre.i, %.noexc63 ], [ %i.aq, %bb.m ]
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %i.ap)
          to label %_ZN11StreamProxylsIiEERS_OT_.exit unwind label %.loopexit172 ; 0 uses

_ZN11StreamProxylsIiEERS_OT_.exit:                ; preds = %bb.l, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.105, ptr %i.h, align 8, !tbaa !308
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.p unwind label %.loopexit172 ; 2 uses

bb.p:                                             ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !309 ; 5 uses
  %.not.i67 = icmp eq ptr %i.bb, null
  br i1 %.not.i67, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !162
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !316
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %.noexc69 unwind label %.loopexit172

.noexc69:                                         ; preds = %bb.r
  %.pre.i68 = load ptr, ptr %i.ba, align 8, !tbaa !309 ; 2 uses
  %.pre185 = load ptr, ptr %.pre.i68, align 8, !tbaa !162
  %.phi.trans.insert186 = getelementptr i8, ptr %.pre185, i64 -24
  %.pre187 = load i64, ptr %.phi.trans.insert186, align 8
  br label %bb.s

bb.s:                                             ; preds = %.noexc69, %bb.q
  %i.bj = phi i64 [ %.pre187, %.noexc69 ], [ %i.be, %bb.q ]
  %i.bk = phi ptr [ %.pre.i68, %.noexc69 ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i125 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i125, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc126 unwind label %.loopexit.split-lp173

.noexc126:                                        ; preds = %bb.t
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !328
  %.not.i1.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
          to label %.noexc127 unwind label %.loopexit172

.noexc127:                                        ; preds = %bb.v
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !162
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit172, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc127, %bb.u
  %.0.i.i.i = phi i8 [ %i.br, %bb.u ], [ %i.bv, %.noexc127 ]
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i8 noundef signext %.0.i.i.i)
          to label %.noexc129 unwind label %.loopexit172

.noexc129:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit172 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.p, %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.not.i92, label %_ZTW13verbosestream.exit, label %bb.w

bb.w:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit

_ZTW13verbosestream.exit:                         ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.w
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !756

bb.x:                                             ; preds = %_ZTW13verbosestream.exit
  %.v.i72 = select i1 %i.cb, i64 432, i64 704
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 %.v.i72 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 24 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.noexc83, %bb.x
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %.noexc83 ], [ 0, %bb.x ] ; 2 uses
  %i.ce = shl nuw nsw i64 %indvars.iv41.i, 4      ; 4 uses
  %i.cf = add nuw nsw i64 %i.ce, 16
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !263 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %sext.i = shl i64 %i.cg, 32
  %i.ci = ashr exact i64 %sext.i, 32
end_hunk_0
begin_hunk_1_@_ZN17ServerEnvironment15activateObjectsEP8MapBlockj:bb.a
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !162
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.cc, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !763
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit158 ; 0 uses

bb.ai:                                            ; preds = %bb.ag
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i8 noundef signext %i.dr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit158 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.noexc86

bb.aj:                                            ; preds = %.lr.ph.i
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.147, i64 noundef 1)
          to label %.noexc86 unwind label %.loopexit158 ; 0 uses

.noexc86:                                         ; preds = %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39.i, %i.cl
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !760

_ZL13print_hexdumpRSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc83
  %i.ec = load ptr, ptr %i.x, align 8, !tbaa !421 ; 6 uses
  %i.ed = load ptr, ptr %i.y, align 8, !tbaa !424
  %.not.i87 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i87, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZL13print_hexdumpRSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0147.0178, i64 16, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 3 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !259
  %i.eg = load ptr, ptr %i.ac, align 8, !tbaa !261 ; 2 uses
  %i.eh = load i64, ptr %i.cd, align 8, !tbaa !263 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 %i.eh, ptr %i.e, align 8, !tbaa !260
  %i.ei = icmp ugt i64 %i.eh, 15
  br i1 %i.ei, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ak
  %i.ej = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc88:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !261
  %i.ek = load i64, ptr %i.e, align 8, !tbaa !260
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !262
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc88, %bb.ak
  %i.el = phi ptr [ %i.ej, %.noexc88 ], [ %i.ef, %bb.ak ] ; 2 uses
  switch i64 %i.eh, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZN12StaticObjectC2ERKS_.exit.i
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  %i.em = load i8, ptr %i.eg, align 1, !tbaa !262
  store i8 %i.em, ptr %i.el, align 1, !tbaa !262
  br label %_ZN12StaticObjectC2ERKS_.exit.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.eg, i64 %i.eh, i1 false)
  br label %_ZN12StaticObjectC2ERKS_.exit.i

_ZN12StaticObjectC2ERKS_.exit.i:                  ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i.i
  %i.en = load i64, ptr %i.e, align 8, !tbaa !260 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !263
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !261
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i8 0, ptr %i.eq, align 1, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !421
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store ptr %i.es, ptr %i.x, align 8, !tbaa !421
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117.thread

bb.an:                                            ; preds = %_ZL13print_hexdumpRSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZNSt6vectorI12StaticObjectSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0147.0178)
          to label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.d
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

.loopexit158:                                     ; preds = %bb.ah, %bb.ai, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

.loopexit.split-lp.loopexit:                      ; preds = %.noexc76, %bb.ac, %bb.ab
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.z, %bb.af, %.noexc80, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %.noexc82
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.an, %.noexc.i.i.i, %_ZTW13verbosestream.exit, %bb.i, %bb.h, %.noexc, %_ZTW11errorstream.exit
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

bb.ap:                                            ; preds = %bb.k, %bb.j
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit172:                                     ; preds = %bb.n, %bb.o, %_ZN11StreamProxylsIiEERS_OT_.exit, %bb.r, %bb.v, %.noexc127, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc129
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp173:                            ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit172, %.loopexit.split-lp173, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ap ], [ %lpad.loopexit174, %.loopexit172 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

bb.ar:                                            ; preds = %bb.e
  %i.ev = ptrtoint ptr %i.ad to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i8 1, ptr %i.ew, align 4, !tbaa !425
  %.sroa.0.0.copyload.i90 = load i48, ptr %i.u, align 2, !tbaa !74
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  store i48 %.sroa.0.0.copyload.i90, ptr %i.ex, align 2, !tbaa !74
  store i64 %i.ev, ptr %6, align 8, !tbaa !248
  %i.ey = invoke noundef zeroext i16 @_ZN17ServerEnvironment18addActiveObjectRawESt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEPK12StaticObjectj(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 %6, ptr noundef nonnull %.sroa.0147.0178, i32 noundef %2)
          to label %bb.as unwind label %bb.bi

bb.as:                                            ; preds = %bb.ar
  %.not46 = icmp eq i16 %i.ey, 0
  %i.ez = load ptr, ptr %6, align 8, !tbaa !248   ; 3 uses
  %.not.i91 = icmp eq ptr %i.ez, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i

_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i: ; preds = %bb.as
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !162
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(324) %i.ez) #32, !inline_history !17
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.as, %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i
  br i1 %.not46, label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117, label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit
  br i1 %.not.i92, label %_ZTW13verbosestream.exit93, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit93

_ZTW13verbosestream.exit93:                       ; preds = %bb.at, %bb.au
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !162
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %.noexc95 unwind label %bb.bj, !inline_history !755

.noexc95:                                         ; preds = %_ZTW13verbosestream.exit93
  %.v.i94 = select i1 %i.fg, i64 976, i64 984
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.v.i94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.101, ptr %i.d, align 8, !tbaa !308
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.av unwind label %bb.bj     ; 0 uses

bb.av:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.106, ptr %i.c, align 8, !tbaa !308
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aw unwind label %bb.bj

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %8 = load float, ptr %i.ab, align 4, !tbaa !426
  %9 = fdiv nsz float %8, 1.000000e+01
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 8
  %i.fk = load <2 x float>, ptr %10, align 8, !tbaa !68
  %i.fl = fdiv nsz <2 x float> %i.fk, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %9, i64 0
  %11 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.fl, <2 x i32> <i32 0, i32 2>
  store <2 x float> %11, ptr %7, align 8
  %12 = extractelement <2 x float> %i.fl, i64 1
  store float %12, ptr %.sroa.2.0..sroa_idx, align 8
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.ax unwind label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.104, ptr %i.b, align 8, !tbaa !308
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ay unwind label %bb.bk     ; 4 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fo = load i8, ptr %.sroa.0147.0178, align 8, !tbaa !762
  %i.fp = zext i8 %i.fo to i32
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !309 ; 5 uses
  %.not.i102 = icmp eq ptr %i.fq, null
  br i1 %.not.i102, label %_ZN11StreamProxylsEPFRSoS0_E.exit111, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !162
  %i.fs = getelementptr i8, ptr %i.fr, i64 -24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !316
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %.noexc104 unwind label %.loopexit164

.noexc104:                                        ; preds = %bb.ba
  %.pre.i103 = load ptr, ptr %i.fn, align 8, !tbaa !309
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc104, %bb.az
  %i.fy = phi ptr [ %.pre.i103, %.noexc104 ], [ %i.fq, %bb.az ]
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i32 noundef %i.fp)
          to label %_ZN11StreamProxylsIiEERS_OT_.exit106 unwind label %.loopexit164 ; 0 uses

_ZN11StreamProxylsIiEERS_OT_.exit106:             ; preds = %bb.bb
  %.pr = load ptr, ptr %i.fn, align 8, !tbaa !309 ; 5 uses
  %.not.i107 = icmp eq ptr %.pr, null
  br i1 %.not.i107, label %_ZN11StreamProxylsEPFRSoS0_E.exit111, label %bb.bc

bb.bc:                                            ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit106
  %i.ga = load ptr, ptr %.pr, align 8, !tbaa !162
  %i.gb = getelementptr i8, ptr %i.ga, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.pr, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !316
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc109 unwind label %.loopexit164

.noexc109:                                        ; preds = %bb.bd
  %.pre.i108 = load ptr, ptr %i.fn, align 8, !tbaa !309 ; 2 uses
  %.pre = load ptr, ptr %.pre.i108, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre184 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.be

bb.be:                                            ; preds = %.noexc109, %bb.bc
  %i.gh = phi i64 [ %.pre184, %.noexc109 ], [ %i.gc, %bb.bc ]
  %i.gi = phi ptr [ %.pre.i108, %.noexc109 ], [ %.pr, %bb.bc ] ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i131 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i131, label %bb.bf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i132

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc136 unwind label %.loopexit.split-lp165

.noexc136:                                        ; preds = %bb.bf
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i132: ; preds = %bb.be
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !328
  %.not.i1.i.i133 = icmp eq i8 %i.gn, 0
  br i1 %.not.i1.i.i133, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i132
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 67
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i132
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gl)
          to label %.noexc137 unwind label %.loopexit164

.noexc137:                                        ; preds = %bb.bh
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !162
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef signext i8 %i.gs(ptr noundef nonnull align 8 dereferenceable(570) %i.gl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134 unwind label %.loopexit164, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134: ; preds = %.noexc137, %bb.bg
  %.0.i.i.i135 = phi i8 [ %i.gp, %bb.bg ], [ %i.gt, %.noexc137 ]
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i8 noundef signext %.0.i.i.i135)
          to label %.noexc139 unwind label %.loopexit164

.noexc139:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit111 unwind label %.loopexit164 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit111:             ; preds = %bb.ay, %_ZN11StreamProxylsIiEERS_OT_.exit106, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117

bb.bi:                                            ; preds = %bb.ar
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %6, align 8, !tbaa !248   ; 3 uses
  %.not.i112 = icmp eq ptr %i.gx, null
  br i1 %.not.i112, label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120, label %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i113

_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i113: ; preds = %bb.bi
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !162
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(324) %i.gx) #32, !inline_history !17
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

bb.bj:                                            ; preds = %bb.av, %.noexc95, %_ZTW13verbosestream.exit93
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

bb.bk:                                            ; preds = %bb.ax, %bb.aw
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit164:                                     ; preds = %bb.ba, %bb.bb, %bb.bd, %bb.bh, %.noexc137, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134, %.noexc139
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp165:                            ; preds = %bb.bf
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit164, %.loopexit.split-lp165, %bb.bk
  %.pn47 = phi { ptr, i32 } [ %i.hc, %bb.bk ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120

_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117.thread: ; preds = %bb.an, %_ZN12StaticObjectC2ERKS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.bm

_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117: ; preds = %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit111
  %i.hd = load i8, ptr %1, align 8, !tbaa !422, !range !155, !noundef !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %cond = icmp eq i8 %i.hd, 0
  br i1 %cond, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117, %_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit117.thread
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 48 ; 2 uses
  %.not155 = icmp eq ptr %i.he, %i.t
  br i1 %.not155, label %.critedge, label %bb.d

_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev.exit120: ; preds = %bb.aq, %bb.bl, %bb.bj, %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i113, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit158, %bb.bi, %bb.ao
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.ao ], [ %i.gw, %bb.bi ], [ %i.gw, %_ZNKSt14default_deleteI18ServerActiveObjectEclEPS0_.exit.i113 ], [ %i.hb, %bb.bj ], [ %.pn47, %bb.bl ], [ %.pn, %bb.aq ], [ %lpad.loopexit, %.loopexit158 ], [ %lpad.loopexit159, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit169, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.bv

.critedge:                                        ; preds = %bb.bm
  %.pre189 = load ptr, ptr %i.q, align 8, !tbaa !420 ; 3 uses
  %.pre190 = load ptr, ptr %i.s, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre190, %.pre189
  br i1 %.not.i.i.i, label %_ZN16StaticObjectList11clearStoredEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hl, %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i ], [ %.pre189, %.critedge ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !261 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !262
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #37
  br label %_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI12StaticObjectEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hl, %.pre190
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP12StaticObjectS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16
end_hunk_1
begin_hunk_2_@_ZN17ServerEnvironment32setStaticForActiveObjectsInBlockEN4core8vector3dIsEEbS2_:bb.a
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.f, %bb.g
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak), !inline_history !858
  %.v.i = select i1 %i.an, i64 976, i64 984
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.91, ptr %i.a, align 8, !tbaa !308
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %_ZN15ActiveObjectMgrI18ServerActiveObjectE15getActiveObjectEt.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i8 %i.b, ptr %i.aq, align 4, !tbaa !425
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  store i48 %3, ptr %i.ar, align 2, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZTW11errorstream.exit
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.016.021) #33 ; 2 uses
  %.not19 = icmp eq ptr %i.as, %i.h
  br i1 %.not19, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN17ServerEnvironment22getActiveObjectMessageEP19ActiveObjectMessage(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3560) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2936 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !505  ; 9 uses
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !261  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !261  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !263  ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.p)
  %.not21.i.i = icmp eq ptr %i.d, %1
  br i1 %.not21.i.i, label %_ZN19ActiveObjectMessageaSEOS_.exit, label %bb.d, !prof !274

bb.d:                                             ; preds = %bb.c
  switch i64 %i.o, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.k, align 1, !tbaa !262
  store i8 %i.q, ptr %i.h, align 1, !tbaa !262
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.r = load i64, ptr %i.n, align 8, !tbaa !263  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !263
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !261
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !262
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !261
  br label %_ZN19ActiveObjectMessageaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.k, ptr %i.f, align 8, !tbaa !261
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !263
  store i64 %i.x, ptr %i.v, align 8, !tbaa !263
  %i.y = load i64, ptr %i.l, align 8, !tbaa !262
  store i64 %i.y, ptr %i.i, align 8, !tbaa !262
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !262
  store ptr %i.k, ptr %i.f, align 8, !tbaa !261
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !263
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !263
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !262
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !262
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.h, ptr %i.g, align 8, !tbaa !261
  store i64 %i.z, ptr %i.l, align 8, !tbaa !262
  br label %_ZN19ActiveObjectMessageaSEOS_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !261
  br label %_ZN19ActiveObjectMessageaSEOS_.exit

_ZN19ActiveObjectMessageaSEOS_.exit:              ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.h, %bb.g ], [ %i.l, %bb.h ], [ %i.k, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !263
  store i8 0, ptr %i.ae, align 1, !tbaa !262
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !506 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !859
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40
  %.not.i.i3 = icmp eq ptr %i.ag, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.an = icmp eq ptr %i.al, %i.am                ; 2 uses
  br i1 %.not.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN19ActiveObjectMessageaSEOS_.exit
  br i1 %i.an, label %_ZN19ActiveObjectMessageD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !262
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #37
  %.pre.i.i4 = load ptr, ptr %i.b, align 8, !tbaa !506
  br label %_ZN19ActiveObjectMessageD2Ev.exit.i.i

_ZN19ActiveObjectMessageD2Ev.exit.i.i:            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.aq = phi ptr [ %.pre.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ag, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE3popEv.exit

bb.j:                                             ; preds = %_ZN19ActiveObjectMessageaSEOS_.exit
  br i1 %i.an, label %_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE16_M_pop_front_auxEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.as = load i64, ptr %i.am, align 8, !tbaa !262
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.at) #37
  br label %_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE16_M_pop_front_auxEv.exit.i.i

_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2944 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !860
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef 480) #37
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !507
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !508
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !509 ; 3 uses
  store ptr %i.az, ptr %i.au, align 8, !tbaa !510
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 480
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !511
  br label %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE3popEv.exit

_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE3popEv.exit: ; preds = %_ZN19ActiveObjectMessageD2Ev.exit.i.i, %_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.ar, %_ZN19ActiveObjectMessageD2Ev.exit.i.i ], [ %i.az, %_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !506
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE3popEv.exit
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS6_EERKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN4core8aabbox3dIfE6repairEv.exit:
  %4 = alloca %"class.core::vector3d.3", align 8  ; 6 uses
  %5 = alloca %"class.core::aabbox3d", align 16   ; 10 uses
  %6 = alloca %"class.std::vector.769", align 8   ; 9 uses
  %7 = alloca %"class.std::function.774", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load <2 x float>, ptr %i.a, align 4, !tbaa !68
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !68
  %i.d = fsub nsz <2 x float> %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !512
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !512
  %i.i = fsub nsz float %i.f, %i.h
  store <2 x float> %i.d, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !513
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !513
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.m = load <3 x float>, ptr %5, align 16, !tbaa !68 ; 4 uses
  %i.n = load <4 x float>, ptr %i.k, align 4, !tbaa !68
  %i.o = load <3 x float>, ptr %i.j, align 4, !tbaa !68 ; 4 uses
  %i.p = shufflevector <3 x float> %i.o, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.q = fcmp ogt <3 x float> %i.m, %i.o
  %i.r = shufflevector <3 x i1> %i.q, <3 x i1> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.s = shufflevector <4 x i1> %i.r, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.t = shufflevector <3 x float> %i.m, <3 x float> %i.o, <2 x i32> <i32 2, i32 3>
  %i.u = shufflevector <3 x float> %i.o, <3 x float> %i.m, <2 x i32> <i32 2, i32 3>
  %i.v = select <2 x i1> %i.s, <2 x float> %i.t, <2 x float> %i.u
  %i.w = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x float> %i.p, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = select <4 x i1> %i.r, <4 x float> %i.x, <4 x float> %i.n
  %i.z = fadd nsz <4 x float> %i.y, <float -5.000000e+01, float -5.000000e+01, float 5.000000e+01, float 5.000000e+01>
  store <4 x float> %i.z, ptr %i.k, align 4, !tbaa !68
  %i.aa = fadd nsz <2 x float> %i.v, <float 5.000000e+01, float -5.000000e+01> ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  store float %i.ab, ptr %5, align 16, !tbaa !426
  %i.ac = extractelement <2 x float> %i.aa, i64 0
  store float %i.ac, ptr %i.l, align 4, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.b unwind label %bb.a       ; 5 uses

bb.a:                                             ; preds = %_ZN4core8aabbox3dIfE6repairEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %_ZN4core8aabbox3dIfE6repairEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.ae, align 16, !tbaa !515
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !517
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !519
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !521
  store ptr %i.ae, ptr %7, align 8, !tbaa !268
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.ag, align 8, !tbaa !862
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.ad, align 8, !tbaa !336
  invoke void @_ZN17ServerEnvironment16getObjectsInAreaERSt6vectorIP18ServerActiveObjectSaIS2_EERKN4core8aabbox3dIfEESt8functionIFbS2_EE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !336 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.al = load ptr, ptr %6, align 8, !tbaa !865   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !866
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #37
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !336 ; 2 uses
  %.not.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i10, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #35
  unreachable

.body:                                            ; preds = %bb.a, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.a ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  %i.aw = load ptr, ptr %6, align 8, !tbaa !865   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %.body
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !866
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #37
  br label %_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit13

_ZNSt6vectorIP18ServerActiveObjectSaIS1_EED2Ev.exit13: ; preds = %.body, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17ServerEnvironment16getObjectsInAreaERSt6vectorIP18ServerActiveObjectSaIS2_EERKN4core8aabbox3dIfEESt8functionIFbS2_EE(ptr noundef nonnull align 8 dereferenceable(3560) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef align 8 %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.774", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !268
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !268
  br label %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c
  invoke void @_ZN6server15ActiveObjectMgr16getObjectsInAreaERKN4core8aabbox3dIfEERSt6vectorIP18ServerActiveObjectSaIS8_EESt8functionIFbS8_EE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %_ZNSt8functionIFbP18ServerActiveObjectEEC2ERKS3_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i4, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #35
  unreachable
}

declare noundef zeroext i1 @_ZN6server15ActiveObjectMgr14registerObjectESt10unique_ptrI18ServerActiveObjectSt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef align 8) unnamed_addr #4

declare void @_ZN13ScriptApiBase18addObjectReferenceEP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) local_unnamed_addr #4

declare void @_ZN12StaticObjectC1EPK18ServerActiveObjectRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #4

declare void @_ZN18ServerActiveObject14markForRemovalEv(ptr noundef nonnull align 8 dereferenceable(324)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ServerEnvironment25processActiveObjectRemoveEP18ServerActiveObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3560) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !162
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !273
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph, !llvm.loop !1071

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !280 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !1071

_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !256  ; 2 uses
  %i.p = zext i32 %i.e to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !255   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !465
  br label %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !273    ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !256  ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !255    ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !465  ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !280  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !273
  %i.ac = icmp eq i32 %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !280 ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2655, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !24

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !280 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !273 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !24

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !24

_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.q, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.020, %i.am
  %i.ap = load ptr, ptr %.119, align 8, !tbaa !280 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.an, %bb.h ]
  %.0205769 = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.z, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.v, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.017, %bb.h ]
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !273
  %i.ay = zext i32 %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !465
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.0205770 = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.z, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !279
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !465
  br label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !273
  %i.bi = zext i32 %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !465
  br label %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !280
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !280
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #37
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !496
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !496
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS4_15_Hash_node_baseEPNS4_10_Hash_nodeIS2_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::aabbox3d", align 4    ; 7 uses
  %3 = alloca %"class.core::vector3d.3", align 8  ; 11 uses
  %4 = alloca %"class.core::vector3d.3", align 8  ; 10 uses
  %5 = alloca %"class.core::vector3d.3", align 8  ; 9 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !268   ; 6 uses
  %.val2 = load ptr, ptr %1, align 8, !tbaa !248  ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !502, !range !155, !noundef !156
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !155
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %"_ZSt10__invoke_rIbRZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS7_EERKSt8optionalI14PointabilitiesEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %.val2, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(10) %.val2, ptr noundef nonnull %2), !inline_history !1072
  br i1 %i.n, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 312
  %.sroa.01.0.copyload.i.i.i.i = load <2 x float>, ptr %i.o, align 8, !tbaa !68 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %.sroa.22.0.copyload.i.i.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.p = load ptr, ptr %.val, align 8, !tbaa !1074, !nonnull !156, !align !549 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !68
  %i.r = fsub nsz <2 x float> %i.q, %.sroa.01.0.copyload.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !512
  %i.u = fsub nsz float %i.t, %.sroa.22.0.copyload.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.x, align 8, !tbaa !512
  %i.y = load ptr, ptr %.val2, align 8, !tbaa !162
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(324) %.val2), !inline_history !1072 ; 5 uses
  %i.ac = call ptr @__dynamic_cast(ptr nonnull %.val2, ptr nonnull @_ZTI18ServerActiveObject, ptr nonnull @_ZTI7UnitSAO, i64 0) #32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 340
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !1075, !range !155, !noundef !156
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp ne ptr %i.ac, null
  %or.cond.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %.split.i.i.i, label %bb.d

.split.i.i.i:                                     ; preds = %bb.c
  %i.ah = call { <2 x float>, float } @_ZNK7UnitSAO16getTotalRotationEv(ptr noundef nonnull align 8 dereferenceable(954) %i.ac) ; 2 uses
  %.fca.0.extract24.i.i.i = extractvalue { <2 x float>, float } %i.ah, 0
  %.fca.1.extract25.i.i.i = extractvalue { <2 x float>, float } %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1076, !nonnull !156, !align !549 ; 2 uses
  %.sroa.020.0.copyload.i.i.i = load <2 x float>, ptr %i.aj, align 4, !tbaa !68
  %.sroa.221.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.221.0.copyload.i.i.i = load float, ptr %.sroa.221.0..sroa_idx.i.i.i, align 4, !tbaa !68
  %i.ak = call noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %.fca.0.extract24.i.i.i, float %.fca.1.extract25.i.i.i, <2 x float> %i.r, float %i.u, <2 x float> %.sroa.020.0.copyload.i.i.i, float %.sroa.221.0.copyload.i.i.i, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br i1 %i.ak, label %bb.e, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1076, !nonnull !156, !align !549 ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load <2 x float>, ptr %i.am, align 4, !tbaa !68
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.211.0.copyload.i.i.i = load float, ptr %.sroa.211.0..sroa_idx.i.i.i, align 4, !tbaa !68
  %i.an = call noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.r, float %i.u, <2 x float> %.sroa.010.0.copyload.i.i.i, float %.sroa.211.0.copyload.i.i.i, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !513
  br i1 %i.an, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d, %.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1077, !nonnull !156, !align !307 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1079, !range !155, !noundef !156
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.at = call ptr @__dynamic_cast(ptr nonnull %.val2, ptr nonnull @_ZTI18ServerActiveObject, ptr nonnull @_ZTI12LuaEntitySAO, i64 0) #32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN12LuaEntitySAO7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1145) %i.at)
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef nonnull align 8 dereferenceable(56) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(954) %i.ac)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ay = invoke i16 @_ZNK14Pointabilities11matchObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ax)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.sroa.077.0.extract.trunc.i.i.i = trunc i16 %i.ay to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.ba = and i16 %i.ay, 256
  %.not92.i.i.i = icmp eq i16 %i.ba, 0
  %.val2.i.i.i.i = load i8, ptr %i.az, align 1
  %.0.i.i.i.i = select i1 %.not92.i.i.i, i8 %.val2.i.i.i.i, i8 %.sroa.077.0.extract.trunc.i.i.i ; 2 uses
  store i8 %.0.i.i.i.i, ptr %i.a, align 1, !tbaa !550
  %i.bb = load ptr, ptr %6, align 8, !tbaa !261   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !262
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !261   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i: ; preds = %bb.j
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !262
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.bg

bb.k:                                             ; preds = %bb.f
  %i.bm = call ptr @__dynamic_cast(ptr nonnull %.val2, ptr nonnull @_ZTI18ServerActiveObject, ptr nonnull @_ZTI9PlayerSAO, i64 0) #32 ; 3 uses
  %.not62.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not62.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !162
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 248
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef nonnull align 8 dereferenceable(56) ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(954) %i.bm), !inline_history !1072
  %i.br = call i16 @_ZNK14Pointabilities11matchPlayerERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.bq) ; 2 uses
  %.sroa.076.0.extract.trunc.i.i.i = trunc i16 %i.br to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.bt = and i16 %i.br, 256
  %.not93.i.i.i = icmp eq i16 %i.bt, 0
  %.val2.i70.i.i.i = load i8, ptr %i.bs, align 1
  %.0.i71.i.i.i = select i1 %.not93.i.i.i, i8 %.val2.i70.i.i.i, i8 %.sroa.076.0.extract.trunc.i.i.i ; 2 uses
  store i8 %.0.i71.i.i.i, ptr %i.a, align 1, !tbaa !550
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1080 ; 2 uses
  store i8 %i.bv, ptr %i.a, align 1, !tbaa !550
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 337
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !1080 ; 2 uses
  store i8 %i.bx, ptr %i.a, align 1, !tbaa !550
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.by = phi i8 [ %.0.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bv, %bb.m ], [ %.0.i71.i.i.i, %bb.l ], [ %i.bx, %bb.n ] ; 2 uses
  %.not63.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not63.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load <2 x float>, ptr %3, align 8, !tbaa !68
  %i.ca = fadd nsz <2 x float> %.sroa.01.0.copyload.i.i.i.i, %i.bz ; 3 uses
  store <2 x float> %i.ca, ptr %3, align 8, !tbaa !68
  %i.cb = load float, ptr %i.v, align 8, !tbaa !512
  %i.cc = fadd nsz float %.sroa.22.0.copyload.i.i.i.i, %i.cb ; 3 uses
  store float %i.cc, ptr %i.v, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.cd = load ptr, ptr %.val, align 8, !tbaa !1074, !nonnull !156, !align !549 ; 3 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !426
  %i.cf = extractelement <2 x float> %i.ca, i64 0
  %i.cg = fsub nsz float %i.cf, %i.ce             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !154
  %i.cj = extractelement <2 x float> %i.ca, i64 1
  %i.ck = fsub nsz float %i.cj, %i.ci             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !512
  %i.cn = fsub nsz float %i.cc, %i.cm             ; 2 uses
  %i.co = fmul nsz float %i.ck, %i.ck
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.co)
  %i.cq = call nsz noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cp) ; 2 uses
  store float %i.cq, ptr %i.b, align 4, !tbaa !68
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1081, !nonnull !156, !align !307 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !497 ; 2 uses
  store i16 %i.cu, ptr %i.c, align 2, !tbaa !74
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !553 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !554
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.09.0.copyload.i.i.i.i.i = load <2 x float>, ptr %3, align 8, !tbaa !68
  %.sroa.07.0.copyload.i.i.i.i.i = load <2 x float>, ptr %4, align 8, !tbaa !68
  %.sroa.28.0.copyload.i.i.i.i.i = load float, ptr %i.w, align 8, !tbaa !68
  %.sroa.05.0.copyload.i.i.i.i.i = load <2 x float>, ptr %5, align 8, !tbaa !68
  %.sroa.26.0.copyload.i.i.i.i.i = load float, ptr %i.x, align 8, !tbaa !68
  store i8 2, ptr %i.cw, align 4, !tbaa !557
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.by, ptr %i.cz, align 1, !tbaa !558
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.da, i8 0, i64 18, i1 false)
  store i16 %i.cu, ptr %i.db, align 4, !tbaa !559
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 22
  store i16 0, ptr %i.dc, align 2, !tbaa !560
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store <2 x float> %.sroa.09.0.copyload.i.i.i.i.i, ptr %i.dd, align 4, !tbaa !68
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store float %i.cc, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  store <2 x float> %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.de, align 4, !tbaa !68
  %.sroa.28.0..sroa_idx.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store float %.sroa.28.0.copyload.i.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i13.i.i.i.i, align 4, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <2 x float> %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.df, align 4, !tbaa !68
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store float %.sroa.26.0.copyload.i.i.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  store float %i.cq, ptr %i.dg, align 4, !tbaa !561
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !553
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store ptr %i.di, ptr %i.cv, align 8, !tbaa !553
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.cw, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i

_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJsRN4core8vector3dIfEES7_S7_RfR16PointabilityTypeEEERS0_DpOT_.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.d, %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %"_ZSt10__invoke_rIbRZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS7_EERKSt8optionalI14PointabilitiesEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIbRZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS7_EERKSt8optionalI14PointabilitiesEE3$_0JP18ServerActiveObjectEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.a, %bb.u
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaISA_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS6_EERKSt8optionalI14PointabilitiesEE3$_0", ptr %0, align 8, !tbaa !547
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !268
  store ptr %.val, ptr %0, align 8, !tbaa !268
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1082
  store ptr %i.a, ptr %0, align 8, !tbaa !268
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !268 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #37
  br label %"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN17ServerEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS8_EERKSt8optionalI14PointabilitiesEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #28

declare noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr noundef nonnull align 4 dereferenceable(24), <2 x float>, float, <2 x float>, float, <2 x float>, float, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK7UnitSAO16getTotalRotationEv(ptr noundef nonnull align 8 dereferenceable(954) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 4    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !68
  store float 1.000000e+00, ptr %1, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load float, ptr %i.f, align 8, !tbaa !512
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !68
  %i.i = fmul nsz <2 x float> %i.h, splat (float f0xBC8EFA35)
  %i.j = fmul nsz float %i.g, f0xBC8EFA35
  call void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(64) %1, <2 x float> %i.i, float %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.l = load float, ptr %i.k, align 4, !tbaa !1083
  %i.m = fmul nsz float %i.l, f0xBC8EFA35
  %i.n = fpext nsz float %i.m to double
  %i.o = fmul nsz double %i.n, 5.000000e-01
  %sincos34.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.o) ; 2 uses
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1 ; 3 uses
  %i.p = fmul nsz double %cos36.i.i, 0.000000e+00 ; 2 uses
  %i.q = fmul ninf nsz double %i.p, 0.000000e+00
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0 ; 2 uses
  %i.r = fmul nsz double %sin35.i.i, 0.000000e+00 ; 3 uses
  %i.s = fneg nsz double %i.r
  %i.t = call nsz double @llvm.fmuladd.f64(double %cos36.i.i, double 0.000000e+00, double %i.s)
  %i.u = fadd nsz double %sin35.i.i, %i.q
  %i.v = fsub nsz double %i.p, %i.r
  %i.w = fmul ninf nsz double %i.r, 0.000000e+00
  %i.x = fadd nsz double %cos36.i.i, %i.w
  %i.y = fptrunc nsz double %i.t to float         ; 3 uses
  %i.z = insertelement <2 x double> poison, double %i.u, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.v, i64 1
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 4 uses
  %i.ac = fptrunc nsz double %i.x to float        ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ab, %i.ab
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ad)
  %i.af = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ag = call nsz float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ae)
  %i.ah = call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ag)
  %i.ai = fpext nsz float %i.ah to double
  %i.aj = call nsz double @llvm.sqrt.f64(double %i.ai)
  %i.ak = load float, ptr %1, align 4, !tbaa !68  ; 3 uses
  %i.al = load float, ptr %i.a, align 4, !tbaa !68 ; 3 uses
  %i.am = fmul nsz float %i.al, %i.al
  %i.an = call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !68 ; 3 uses
  %i.aq = call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.an)
  %i.ar = call nsz noundef float @llvm.sqrt.f32(float %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !68 ; 3 uses
  %i.au = call nsz float @llvm.fabs.f32(float %i.ar)
  %i.av = fcmp nsz ole float %i.au, f0x358637BD
  %i.aw = fpext nsz float %i.ar to double
  %i.ax = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ay ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = fptrunc nsz double %i.ba to float       ; 3 uses
  %i.bc = fmul nsz float %i.y, %i.bb              ; 4 uses
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul nsz <2 x float> %i.be, %i.ab       ; 4 uses
  %i.bg = fmul nsz float %i.ac, %i.bb             ; 4 uses
  %i.bh = extractelement <2 x double> %i.az, i64 1
  %i.bi = select i1 %i.av, double f0x37F0000010000010, double %i.bh ; 3 uses
  %i.bj = fpext nsz float %i.ap to double
  %i.bk = fmul nsz double %i.bi, %i.bj            ; 2 uses
  %i.bl = fcmp nsz olt double %i.bk, -1.000000e+00
  %i.bm = select i1 %i.bl, double -1.000000e+00, double %i.bk ; 2 uses
  %i.bn = fcmp nsz olt double %i.bm, 1.000000e+00
  %i.bo = select i1 %i.bn, double %i.bm, double 1.000000e+00 ; 2 uses
  %i.bp = call nsz noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fadd nsz double %i.bp, -1.000000e+00
  %i.br = call nsz noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp nsz ugt double %i.br, 1.000000e-08
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = load float, ptr %i.c, align 4, !tbaa !68
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load <2 x float>, ptr %i.bv, align 4
  %i.bx = load <2 x float>, ptr %i.bu, align 4, !tbaa !68 ; 2 uses
  %i.by = shufflevector <2 x float> %i.at, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bz = fmul nsz <2 x float> %i.by, %i.by
  %i.ca = shufflevector <2 x float> %i.at, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ca, <2 x float> %i.bz)
  %i.cc = insertelement <2 x float> %i.bw, float %i.bt, i64 1 ; 3 uses
  %i.cd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cd) ; 2 uses
  %i.cf = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ce)
  %i.cg = fcmp nsz ole <2 x float> %i.cf, splat (float f0x358637BD)
  %i.ch = fpext <2 x float> %i.ce to <2 x double>
  %i.ci = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ch
  %i.cj = select <2 x i1> %i.cg, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.ci
  %i.ck = fpext <2 x float> %i.cc to <2 x double>
  %i.cl = fmul nsz <2 x double> %i.cj, %i.ck      ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = extractelement <2 x double> %i.cl, i64 1
  %i.co = call nsz double @llvm.atan2.f64(double %i.cm, double %i.cn)
  %i.cp = fpext nsz float %i.ak to double
  %i.cq = fmul nsz double %i.bi, %i.cp
  %i.cr = fpext nsz float %i.al to double
  %i.cs = fmul nsz double %i.bi, %i.cr
  %i.ct = call nsz double @llvm.atan2.f64(double %i.cs, double %i.cq)
  %i.cu = fptrunc nsz double %i.co to float
  %i.cv = fpext nsz float %i.cu to double
  %i.cw = fmul nsz double %i.cv, 5.000000e-01
  %i.cx = call nsz { double, double } @llvm.sincos.f64(double %i.cw)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

bb.c:                                             ; preds = %bb.a
  %i.cy = load float, ptr %i.d, align 4, !tbaa !68
  %i.cz = fpext nsz float %i.cy to double
  %i.da = extractelement <2 x float> %i.at, i64 0
  %i.db = fneg nsz float %i.da
  %i.dc = fpext nsz float %i.db to double
  %i.dd = call nsz double @llvm.atan2.f64(double %i.dc, double %i.cz)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit: ; preds = %bb.b, %bb.c
  %.025.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.cx, %bb.b ] ; 2 uses
  %.0.i.i.i = phi nsz double [ %i.dd, %bb.c ], [ %i.ct, %bb.b ]
  %i.de = call nsz double @llvm.asin.f64(double %i.bo)
  %i.df = fptrunc nsz double %i.de to float
  %i.dg = fneg nsz float %i.df
  %i.dh = fptrunc nsz double %.0.i.i.i to float
  %sin.i.i18 = extractvalue { double, double } %.025.i.i.i, 0 ; 3 uses
  %cos.i.i19 = extractvalue { double, double } %.025.i.i.i, 1 ; 3 uses
  %i.di = fpext nsz float %i.dg to double
  %i.dj = fmul nsz double %i.di, 5.000000e-01
  %sincos34.i.i20 = call nsz { double, double } @llvm.sincos.f64(double %i.dj) ; 2 uses
  %sin35.i.i21 = extractvalue { double, double } %sincos34.i.i20, 0 ; 2 uses
  %cos36.i.i22 = extractvalue { double, double } %sincos34.i.i20, 1
  %i.dk = fpext nsz float %i.dh to double
  %i.dl = fmul nsz double %i.dk, 5.000000e-01
  %sincos37.i.i23 = call nsz { double, double } @llvm.sincos.f64(double %i.dl) ; 2 uses
  %sin38.i.i24 = extractvalue { double, double } %sincos37.i.i23, 0 ; 2 uses
  %cos39.i.i25 = extractvalue { double, double } %sincos37.i.i23, 1 ; 2 uses
  %i.dm = fmul nsz double %sin35.i.i21, %cos39.i.i25 ; 2 uses
  %i.dn = fmul nsz double %sin35.i.i21, %sin38.i.i24 ; 2 uses
  %i.do = fneg nsz double %i.dn
  %i.dp = fmul nsz double %cos.i.i19, %i.do
  %i.dq = fneg nsz double %i.dm
  %i.dr = fneg nsz float %i.bc
  %i.ds = insertelement <2 x double> poison, double %cos36.i.i22, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %cos39.i.i25, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %sin38.i.i24, i64 1
  %i.dw = fmul nsz <2 x double> %i.dt, %i.dv      ; 3 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = call nsz double @llvm.fmuladd.f64(double %sin.i.i18, double %i.dx, double %i.dp)
  %i.dz = fptrunc nsz double %i.dy to float       ; 3 uses
  %i.ea = extractelement <2 x double> %i.dw, i64 1
  %i.eb = fmul nsz double %sin.i.i18, %i.ea
  %i.ec = call nsz double @llvm.fmuladd.f64(double %cos.i.i19, double %i.dm, double %i.eb)
  %i.ed = fptrunc nsz double %i.ec to float       ; 3 uses
  %i.ee = insertelement <2 x double> poison, double %sin.i.i18, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.dq, i64 1
  %i.ei = fmul nsz <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> poison, double %cos.i.i19, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.dw, <2 x double> %i.ei)
  %i.em = fptrunc <2 x double> %i.el to <2 x float> ; 3 uses
  %i.en = fmul nsz float %i.ed, %i.ed
  %i.eo = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.en)
  %i.ep = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.eq = call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.eo)
  %i.er = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.es = call nsz float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.eq)
  %i.et = fpext nsz float %i.es to double
  %i.eu = call nsz double @llvm.sqrt.f64(double %i.et)
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %i.ew = fptrunc nsz double %i.ev to float       ; 3 uses
  %i.ex = fmul nsz float %i.dz, %i.ew             ; 4 uses
  %i.ey = fmul nsz float %i.ed, %i.ew             ; 3 uses
  %i.ez = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul nsz <2 x float> %i.fa, %i.em       ; 4 uses
  %i.fc = fmul nsz float %i.ex, %i.dr
  %i.fd = extractelement <2 x float> %i.fb, i64 0 ; 3 uses
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.bg, float %i.fc)
  %i.ff = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.fg = extractelement <2 x float> %i.fb, i64 1
  %i.fh = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.fi = fmul nsz float %i.bg, %i.ex
  %i.fj = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.bc, float %i.fi)
  %i.fk = fmul nsz float %i.bg, %i.ey
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %i.fk)
  %i.fm = fneg nsz float %i.ex
  %i.fn = fmul nsz float %i.bg, %i.fg
  %i.fo = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = insertelement <2 x float> %i.fo, float %i.bc, i64 1
  %i.fq = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fl, i64 1
  %i.fs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fp, <2 x float> %i.fr)
  %i.ft = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fm, i64 1
  %i.fv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.bf, <2 x float> %i.fs) ; 3 uses
  %i.fw = insertelement <2 x float> %i.fb, float %i.ey, i64 0
  %i.fx = fneg nsz <2 x float> %i.fw              ; 3 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.ff, float %i.fe)
  %i.ga = extractelement <2 x float> %i.fx, i64 1
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFbP18ServerActiveObjecttEZN17ServerEnvironment20deactivateFarObjectsEbE3$_0E9_M_invokeERKSt9_Any_dataOS1_Ot":bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gz = phi i64 [ %.pre22.i.i.i, %bb.ak ], [ %i.gu, %bb.aj ]
  %i.ha = phi ptr [ %.pre.i170.i.i.i, %bb.ak ], [ %i.gr, %bb.aj ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i224.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i224.i.i.i, label %bb.am, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt16__throw_bad_castv() #36
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !328
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.hf, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 67
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !262
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hd)
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !162
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef signext i8 %i.hk(ptr noundef nonnull align 8 dereferenceable(570) %i.hd, i8 noundef signext 10), !inline_history !1105
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi i8 [ %i.hh, %bb.an ], [ %i.hl, %bb.ao ]
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i8 noundef signext %.0.i.i.i.i.i.i)
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit.i.i.i

_ZN11StreamProxylsEPFRSoS0_E.exit.i.i.i:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i, %_ZN11StreamProxylsIRtEERS_OT_.exit.i.i.i
  %i.ho = load ptr, ptr %.val4, align 8, !tbaa !162
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 184
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(324) %.val4), !inline_history !1103
  br i1 %i.hr, label %bb.ap, label %.split.i.i

bb.ap:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN12StaticObjectC1EPK18ServerActiveObjectRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %.val4, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.hs = getelementptr inbounds nuw i8, ptr %.val4, i64 12
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !425, !range !155, !noundef !156
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.aq, label %_ZN11StreamProxylsEPFRSoS0_E.exit197.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %.val4, i64 14 ; 3 uses
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !71
  %i.hx = load i16, ptr %4, align 8, !tbaa !71
  %i.hy = icmp eq i16 %i.hw, %i.hx
  br i1 %i.hy, label %bb.ar, label %_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hz = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ia = load i16, ptr %i.hz, align 8, !tbaa !72
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !72
  %i.id = icmp eq i16 %i.ia, %i.ic
  br i1 %i.id, label %bb.as, label %_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ie = getelementptr inbounds nuw i8, ptr %.val4, i64 18
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !73
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ih = load i16, ptr %i.ig, align 4, !tbaa !73
  %i.ii = icmp ne i16 %i.if, %i.ih
  br label %_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i

_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i:         ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ij = phi i1 [ true, %bb.ar ], [ true, %bb.aq ], [ %i.ii, %bb.as ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !164 ; 2 uses
  %.sroa.018.0.copyload.i.i.i = load i48, ptr %i.hv, align 2, !tbaa !74
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !162
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = invoke noundef ptr %i.io(ptr noundef nonnull align 8 dereferenceable(608) %i.il, i48 %.sroa.018.0.copyload.i.i.i, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.bb     ; 3 uses

bb.at:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i
  %.not110.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not110.i.i.i, label %_ZN11StreamProxylsEPFRSoS0_E.exit197.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 184
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !53 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 176 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ir, %bb.au ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.is, %bb.au ]
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !74
  %i.iv = icmp ult i16 %i.iu, %.val5              ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.iv, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.iv, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1106

_ZNKSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.iw = icmp eq ptr %.19.i.i.i.i.i.i, %i.is
  br i1 %i.iw, label %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i, label %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.i.i.i

_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.i.i.i: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !74
  %i.iz = icmp ult i16 %.val5, %i.iy
  br i1 %i.iz, label %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ja = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.ja, i64 16, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 56
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  store ptr %i.jd, ptr %i.jb, align 8, !tbaa !259
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !261 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 64
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !263 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 %i.jg, ptr %i.e, align 8, !tbaa !260
  %i.jh = icmp ugt i64 %i.jg, 15
  br i1 %i.jh, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.av
  %i.ji = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.bd ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  store ptr %i.ji, ptr %i.jb, align 8, !tbaa !261
  %i.jj = load i64, ptr %i.e, align 8, !tbaa !260
  store i64 %i.jj, ptr %i.jd, align 8, !tbaa !262
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i, %bb.av
  %i.jk = phi ptr [ %i.ji, %.noexc.i.i.i ], [ %i.jd, %bb.av ] ; 2 uses
  switch i64 %i.jg, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.jl = load i8, ptr %i.je, align 1, !tbaa !262
  store i8 %i.jl, ptr %i.jk, align 1, !tbaa !262
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.je, i64 %i.jg, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i.i.i.i
  %i.jm = load i64, ptr %i.e, align 8, !tbaa !260 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !263
  %i.jo = load ptr, ptr %i.jb, align 8, !tbaa !261
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jm
  store i8 0, ptr %i.jp, align 1, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.jq = load ptr, ptr %.val4, align 8, !tbaa !162
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 144
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef float %i.js(ptr noundef nonnull align 8 dereferenceable(324) %.val4)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jv = load i64, ptr %i.jn, align 8, !tbaa !263 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !263
  %i.jy = icmp eq i64 %i.jv, %i.jx
  br i1 %i.jy, label %bb.ba, label %.critedge.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.jz = icmp eq i64 %i.jv, 0
  br i1 %i.jz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.ba
  %i.ka = load ptr, ptr %i.ju, align 8, !tbaa !261
  %i.kb = load ptr, ptr %i.jb, align 8, !tbaa !261
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.kb, ptr %i.ka, i64 %i.jv)
  %i.kc = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.kc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %.critedge.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.ba
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !426
  %i.kf = load float, ptr %3, align 8, !tbaa !426
  %i.kg = fsub nsz float %i.ke, %i.kf             ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ki = load float, ptr %i.kh, align 8, !tbaa !154
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !154
  %i.kl = fsub nsz float %i.ki, %i.kk             ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.kn = load float, ptr %i.km, align 4, !tbaa !512
  %i.ko = load float, ptr %.sroa.249.0..sroa_idx.i.i.i, align 8, !tbaa !512
  %i.kp = fsub nsz float %i.kn, %i.ko             ; 2 uses
  %i.kq = fmul nsz float %i.kl, %i.kl
  %i.kr = call nsz float @llvm.fmuladd.f32(float %i.kg, float %i.kg, float %i.kq)
  %i.ks = call nsz float @llvm.fmuladd.f32(float %i.kp, float %i.kp, float %i.kr)
  %i.kt = call nsz noundef float @llvm.sqrt.f32(float %i.ks)
  %i.ku = fcmp nsz uge float %i.kt, %i.jt
  %i.kv = or i1 %i.ij, %i.ku
  %i.kw = select i1 %i.kv, i32 32768, i32 262144
  br label %.critedge.i.i.i

bb.bb:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.i.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bc:                                            ; preds = %.noexc6.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %.noexc4.i.i, %bb.bt, %bb.br, %bb.bp, %bb.bm, %bb.bl, %_ZN11StreamProxylsIRtEERS_OT_.exit188.i.i.i, %bb.bk, %bb.bj, %bb.bg, %.noexc181.i.i.i, %_ZTW13warningstream.exit.i.i.i
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bd:                                            ; preds = %.noexc.i.i.i.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12StaticObjectD2Ev.exit178.i.i.i

bb.be:                                            ; preds = %bb.ay
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = load ptr, ptr %i.jb, align 8, !tbaa !261 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.jd
  br i1 %i.lc, label %_ZN12StaticObjectD2Ev.exit178.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.az
  %.0103.i.i.i = phi i32 [ %i.kw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i ], [ 32768, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ], [ 32768, %bb.az ]
  %i.ld = load ptr, ptr %i.jb, align 8, !tbaa !261 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.jd
  br i1 %i.le, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i174.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i174.i.i.i: ; preds = %.critedge.i.i.i
  %i.lf = icmp ult i64 %i.jv, 16
  call void @llvm.assume(i1 %i.lf)
  br label %_ZN12StaticObjectD2Ev.exit175.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i.i: ; preds = %.critedge.i.i.i
  %i.lg = load i64, ptr %i.jd, align 8, !tbaa !262
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #37
  br label %_ZN12StaticObjectD2Ev.exit175.i.i.i

_ZN12StaticObjectD2Ev.exit175.i.i.i:              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i174.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit197.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i.i: ; preds = %bb.be
  %i.li = load i64, ptr %i.jd, align 8, !tbaa !262
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lj) #37
  br label %_ZN12StaticObjectD2Ev.exit178.i.i.i

_ZN12StaticObjectD2Ev.exit178.i.i.i:              ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i.i, %bb.bd
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.kz, %bb.bd ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i.i ], [ %i.la, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.by

_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i: ; preds = %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.i.i.i, %_ZNKSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.au
  %.not.i179.i.i.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i179.i.i.i, label %_ZTW13warningstream.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit.i.i.i

_ZTW13warningstream.exit.i.i.i:                   ; preds = %bb.bf, %_ZNKSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE4findERS4_.exit.thread.i.i.i
  %i.lk = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !162
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef zeroext i1 %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.ll)
          to label %.noexc181.i.i.i unwind label %bb.bc, !inline_history !11

.noexc181.i.i.i:                                  ; preds = %_ZTW13warningstream.exit.i.i.i
  %.v.i180.i.i.i = select i1 %i.lo, i64 976, i64 984
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.v.i180.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.166, ptr %i.d, align 8, !tbaa !308
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bg unwind label %bb.bc     ; 0 uses

bb.bg:                                            ; preds = %.noexc181.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.161, ptr %i.c, align 8, !tbaa !308
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bh unwind label %bb.bc     ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !309 ; 5 uses
  %.not.i184.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i184.i.i.i, label %_ZN11StreamProxylsIRtEERS_OT_.exit188.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !162
  %i.lu = getelementptr i8, ptr %i.lt, i64 -24
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds i8, ptr %i.ls, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !316
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %.noexc186.i.i.i unwind label %bb.bc

.noexc186.i.i.i:                                  ; preds = %bb.bj
  %.pre.i185.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !309
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc186.i.i.i, %bb.bi
  %i.ma = phi ptr [ %.pre.i185.i.i.i, %.noexc186.i.i.i ], [ %i.ls, %bb.bi ]
  %i.mb = zext i16 %.val5 to i64
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i64 noundef %i.mb)
          to label %_ZN11StreamProxylsIRtEERS_OT_.exit188.i.i.i unwind label %bb.bc ; 0 uses

_ZN11StreamProxylsIRtEERS_OT_.exit188.i.i.i:      ; preds = %bb.bk, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.162, ptr %i.b, align 8, !tbaa !308
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bl unwind label %bb.bc

bb.bl:                                            ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit188.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.163, ptr %i.a, align 8, !tbaa !308
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bm unwind label %bb.bc

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef nonnull align 2 dereferenceable(6) %i.hv)
          to label %bb.bn unwind label %bb.bc     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !309 ; 5 uses
  %.not.i193.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i193.i.i.i, label %_ZN11StreamProxylsEPFRSoS0_E.exit197.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !162
  %i.mi = getelementptr i8, ptr %i.mh, i64 -24
  %i.mj = load i64, ptr %i.mi, align 8            ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !316
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mg)
          to label %.noexc195.i.i.i unwind label %bb.bc

.noexc195.i.i.i:                                  ; preds = %bb.bp
  %.pre.i194.i.i.i = load ptr, ptr %i.mf, align 8, !tbaa !309 ; 2 uses
  %.pre.i.i = load ptr, ptr %.pre.i194.i.i.i, align 8, !tbaa !162
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pre.i.i, i64 -24
  %.pre5.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc195.i.i.i, %bb.bo
  %i.mo = phi i64 [ %.pre5.i.i, %.noexc195.i.i.i ], [ %i.mj, %bb.bo ]
  %i.mp = phi ptr [ %.pre.i194.i.i.i, %.noexc195.i.i.i ], [ %i.mg, %bb.bo ] ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %i.mo
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 240
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i, label %bb.br, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc.i.i unwind label %bb.bc

.noexc.i.i:                                       ; preds = %bb.br
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.bq
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !328
  %.not.i1.i.i.i.i = icmp eq i8 %i.mu, 0
  br i1 %.not.i1.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 67
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ms)
          to label %.noexc4.i.i unwind label %bb.bc

end_hunk_4
begin_hunk_5_@llvm.sqrt.v2f32
!226 = !{!"_ZTSSt12_Vector_baseIP12RemotePlayerSaIS1_EE", !225, i64 0}
!227 = !{!"_ZTSSt6vectorIP12RemotePlayerSaIS1_EE", !226, i64 0}
!228 = !{!"p1 _ZTS14PlayerDatabase", !47, i64 0}
!229 = !{!"p1 _ZTS12AuthDatabase", !47, i64 0}
!230 = !{!"_ZTSSt10_HashtableIjSt4pairIKjfESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!231 = !{!"_ZTSSt13unordered_mapIjfSt4hashIjESt8equal_toIjESaISt4pairIKjfEEE", !230, i64 0}
!232 = !{!"_ZTSSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!233 = !{!"_ZTSSt13unordered_mapIjtSt4hashIjESt8equal_toIjESaISt4pairIKjtEEE", !232, i64 0}
!234 = !{!"p1 _ZTS13MetricCounter", !47, i64 0}
!235 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0}
!236 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !235, i64 0}
!237 = !{!"_ZTSSt12__shared_ptrI13MetricCounterLN9__gnu_cxx12_Lock_policyE2EE", !234, i64 0, !236, i64 8}
!238 = !{!"_ZTSSt10shared_ptrI13MetricCounterE", !237, i64 0}
!239 = !{!"p1 _ZTS11MetricGauge", !47, i64 0}
!240 = !{!"_ZTSSt12__shared_ptrI11MetricGaugeLN9__gnu_cxx12_Lock_policyE2EE", !239, i64 0, !236, i64 8}
!241 = !{!"_ZTSSt10shared_ptrI11MetricGaugeE", !240, i64 0}
!242 = !{!"_ZTS17ServerEnvironment", !172, i64 0, !178, i64 88, !165, i64 96, !179, i64 104, !195, i64 112, !199, i64 328, !203, i64 400, !101, i64 2920, !67, i64 3000, !143, i64 3004, !209, i64 3008, !43, i64 3152, !143, i64 3156, !143, i64 3160, !143, i64 3164, !76, i64 3168, !76, i64 3169, !43, i64 3172, !67, i64 3176, !43, i64 3180, !214, i64 3184, !222, i64 3208, !67, i64 3320, !67, i64 3324, !67, i64 3328, !67, i64 3332, !67, i64 3336, !67, i64 3340, !227, i64 3344, !228, i64 3368, !229, i64 3376, !143, i64 3384, !231, i64 3392, !43, i64 3448, !233, i64 3456, !238, i64 3512, !241, i64 3528, !241, i64 3544}
!243 = !{!242, !165, i64 96}
!244 = !{!242, !179, i64 104}
!245 = !{!185, !43, i64 96}
!246 = !{!185, !50, i64 104}
!247 = !{!"p1 _ZTS18ServerActiveObject", !47, i64 0}
!248 = !{!247, !247, i64 0}
!249 = !{!91, !67, i64 0}
!250 = !{!197, !88, i64 0}
!251 = !{!197, !50, i64 8}
!252 = !{!242, !43, i64 3152}
!253 = !{!230, !88, i64 0}
!254 = !{!230, !50, i64 8}
!255 = !{!232, !88, i64 0}
!256 = !{!232, !50, i64 8}
!257 = !{!"p1 _ZTS8Settings", !47, i64 0}
!258 = !{!257, !257, i64 0}
!259 = !{!119, !118, i64 0}
!260 = !{!50, !50, i64 0}
!261 = !{!120, !118, i64 0}
!262 = !{!42, !42, i64 0}
!263 = !{!120, !50, i64 8}
!264 = !{!242, !67, i64 3328}
!265 = !{!242, !67, i64 3332}
!266 = !{!242, !67, i64 3336}
!267 = !{!242, !67, i64 3340}
!268 = !{!47, !47, i64 0}
!269 = !{!236, !235, i64 0}
!270 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 8, !43, i64 12}
!271 = !{!270, !43, i64 8}
!272 = !{!270, !43, i64 12}
!273 = !{!43, !43, i64 0}
!274 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!275 = !{!224, !223, i64 0}
!276 = !{!224, !223, i64 16}
!277 = !{!211, !210, i64 0}
!278 = !{!211, !210, i64 16}
!279 = !{!232, !89, i64 16}
!280 = !{!90, !89, i64 0}
!281 = !{!230, !89, i64 16}
!282 = !{!197, !89, i64 16}
!283 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_13SettingsEntryESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!284 = !{!283, !88, i64 0}
!285 = !{!283, !50, i64 8}
!286 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS6_IPFvRS7_PvESA_ESaISD_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!287 = !{!286, !88, i64 0}
!288 = !{!286, !50, i64 8}
!289 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE13SettingsEntrySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !283, i64 0}
!290 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIPFvRKS5_PvESA_ESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaIS7_IS8_SF_EEE", !286, i64 0}
!291 = !{!"p1 _ZTS17SettingsHierarchy", !47, i64 0}
!292 = !{!"_ZTS8Settings", !289, i64 0, !290, i64 56, !120, i64 112, !171, i64 144, !171, i64 184, !291, i64 224, !43, i64 232}
!293 = !{!292, !43, i64 232}
!294 = !{!"p1 _ZTS9LogTarget", !47, i64 0}
!295 = !{!"p1 _ZTSNSt6locale5_ImplE", !47, i64 0}
!296 = !{!"_ZTSSt6locale", !295, i64 0}
!297 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !118, i64 8, !118, i64 16, !118, i64 24, !118, i64 32, !118, i64 40, !118, i64 48, !296, i64 56}
!298 = !{!"_ZTSSt14_Function_base", !42, i64 0, !47, i64 16}
!299 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !298, i64 0, !47, i64 24}
!300 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !297, i64 0, !299, i64 64, !43, i64 96, !42, i64 100}
!301 = !{!"_ZTS17DummyStreamBuffer", !297, i64 0}
!302 = !{!"_ZTSSo"}
!303 = !{!"p1 _ZTSSo", !47, i64 0}
!304 = !{!"_ZTS11StreamProxy", !303, i64 0}
!305 = !{!"_ZTS9LogStream", !294, i64 0, !300, i64 8, !301, i64 368, !302, i64 432, !302, i64 704, !304, i64 976, !304, i64 984}
!306 = !{!305, !294, i64 0}
!307 = !{i64 8}
!308 = !{!118, !118, i64 0}
!309 = !{!304, !303, i64 0}
!310 = !{!"_ZTSSt13_Ios_Fmtflags", !42, i64 0}
!311 = !{!"_ZTSSt12_Ios_Iostate", !42, i64 0}
!312 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !47, i64 0}
!313 = !{!"_ZTSNSt8ios_base6_WordsE", !47, i64 0, !50, i64 8}
!314 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !47, i64 0}
!315 = !{!"_ZTSSt8ios_base", !50, i64 8, !50, i64 16, !310, i64 24, !311, i64 28, !311, i64 32, !312, i64 40, !313, i64 48, !42, i64 64, !43, i64 192, !314, i64 200, !296, i64 208}
!316 = !{!315, !311, i64 32}
!317 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !47, i64 0}
!318 = !{!"p1 _ZTSSt5ctypeIcE", !47, i64 0}
!319 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!320 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!321 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !315, i64 0, !303, i64 216, !42, i64 224, !76, i64 225, !317, i64 232, !318, i64 240, !319, i64 248, !320, i64 256}
!322 = !{!321, !318, i64 240}
!323 = !{!"_ZTSNSt6locale5facetE", !43, i64 8}
!324 = !{!"p1 _ZTS15__locale_struct", !47, i64 0}
!325 = !{!"p1 int", !47, i64 0}
!326 = !{!"p1 short", !47, i64 0}
!327 = !{!"_ZTSSt5ctypeIcE", !323, i64 0, !324, i64 16, !76, i64 24, !325, i64 32, !325, i64 40, !326, i64 48, !42, i64 56, !42, i64 57, !42, i64 313, !42, i64 569}
!328 = !{!327, !42, i64 56}
!329 = !{!242, !228, i64 3368}
!330 = !{!242, !229, i64 3376}
!331 = !{!242, !76, i64 392}
!332 = !{!242, !76, i64 3169}
!333 = !{!87, !87, i64 0}
!334 = !{!"_ZTSSt8functionIFbP18ServerActiveObjecttEE", !298, i64 0, !47, i64 24}
!335 = !{!334, !47, i64 24}
!336 = !{!298, !47, i64 16}
!337 = !{!76, !76, i64 0}
!338 = !{!210, !210, i64 0}
!339 = !{!223, !223, i64 0}
!340 = !{!"p1 _ZTS19ActiveBlockModifier", !47, i64 0}
!341 = !{!224, !223, i64 8}
!342 = !{!141, !141, i64 0}
!343 = !{!"_ZTS10CameraMode", !42, i64 0}
!344 = !{!"p2 _ZTS13InventoryList", !63, i64 0}
!345 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE17_Vector_impl_dataE", !344, i64 0, !344, i64 8, !344, i64 16}
!346 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE12_Vector_implE", !345, i64 0}
!347 = !{!"_ZTSSt12_Vector_baseIP13InventoryListSaIS1_EE", !346, i64 0}
!348 = !{!"_ZTSSt6vectorIP13InventoryListSaIS1_EE", !347, i64 0}
!349 = !{!"p1 _ZTS15IItemDefManager", !47, i64 0}
!350 = !{!"_ZTS9Inventory", !348, i64 0, !349, i64 24, !76, i64 32}
!351 = !{!"_ZTS13PlayerControl", !42, i64 0, !76, i64 1, !76, i64 2, !76, i64 3, !76, i64 4, !76, i64 5, !76, i64 6, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20}
!352 = !{!"_ZTS21PlayerPhysicsOverride", !67, i64 0, !67, i64 4, !67, i64 8, !76, i64 12, !76, i64 13, !76, i64 14, !67, i64 16, !67, i64 20, !67, i64 24, !67, i64 28, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !67, i64 48, !67, i64 52}
!353 = !{!"_ZTS13PlayerFovSpec", !67, i64 0, !76, i64 4, !67, i64 8}
!354 = !{!"p2 _ZTS10HudElement", !63, i64 0}
!355 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE17_Vector_impl_dataE", !354, i64 0, !354, i64 8, !354, i64 16}
!356 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE12_Vector_implE", !355, i64 0}
!357 = !{!"_ZTSSt12_Vector_baseIP10HudElementSaIS1_EE", !356, i64 0}
!358 = !{!"_ZTSSt6vectorIP10HudElementSaIS1_EE", !357, i64 0}
!359 = !{!"_ZTS6Player", !343, i64 8, !102, i64 12, !102, i64 24, !102, i64 36, !350, i64 48, !67, i64 88, !67, i64 92, !67, i64 96, !67, i64 100, !67, i64 104, !67, i64 108, !67, i64 112, !67, i64 116, !67, i64 120, !67, i64 124, !67, i64 128, !67, i64 132, !42, i64 136, !67, i64 168, !120, i64 176, !120, i64 208, !351, i64 240, !352, i64 264, !43, i64 320, !43, i64 324, !120, i64 328, !102, i64 360, !69, i64 372, !353, i64 376, !358, i64 392}
!360 = !{!"_ZTS11CloudParams", !67, i64 0, !121, i64 4, !121, i64 8, !121, i64 12, !67, i64 16, !67, i64 20, !137, i64 24}
!361 = !{!"_ZTS8SkyColor", !121, i64 0, !121, i64 4, !121, i64 8, !121, i64 12, !121, i64 16, !121, i64 20, !121, i64 24}
!362 = !{!"_ZTS12SkyboxParams", !121, i64 0, !120, i64 8, !110, i64 40, !76, i64 64, !361, i64 68, !121, i64 96, !121, i64 100, !120, i64 104, !67, i64 136, !69, i64 140, !67, i64 144, !121, i64 148, !76, i64 152}
!363 = !{!"_ZTS9SunParams", !76, i64 0, !120, i64 8, !120, i64 40, !120, i64 72, !76, i64 104, !67, i64 108}
!364 = !{!"_ZTS10MoonParams", !76, i64 0, !120, i64 8, !120, i64 40, !67, i64 72}
!365 = !{!"_ZTS10StarParams", !76, i64 0, !43, i64 4, !121, i64 8, !67, i64 12, !67, i64 16, !50, i64 24}
!366 = !{!"_ZTS12AutoExposure", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20}
!367 = !{!"_ZTS8Lighting", !366, i64 0, !67, i64 24, !67, i64 28, !67, i64 32, !121, i64 36, !67, i64 40, !67, i64 44, !67, i64 48, !102, i64 52}
!368 = !{!"_ZTS12RemotePlayer", !359, i64 0, !69, i64 416, !69, i64 418, !76, i64 420, !65, i64 424, !76, i64 432, !43, i64 436, !67, i64 440, !69, i64 444, !76, i64 446, !67, i64 448, !120, i64 456, !120, i64 488, !360, i64 520, !362, i64 552, !363, i64 712, !364, i64 824, !365, i64 904, !367, i64 936, !69, i64 1000}
!369 = !{!368, !69, i64 1000}
!370 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!371 = !{!368, !76, i64 432}
!372 = !{!344, !344, i64 0}
!373 = !{!"p1 _ZTS13InventoryList", !47, i64 0}
!374 = !{!373, !373, i64 0}
!375 = !{!"p1 _ZTS9ItemStack", !47, i64 0}
!376 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE17_Vector_impl_dataE", !375, i64 0, !375, i64 8, !375, i64 16}
!377 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE12_Vector_implE", !376, i64 0}
!378 = !{!"_ZTSSt12_Vector_baseI9ItemStackSaIS0_EE", !377, i64 0}
!379 = !{!"_ZTSSt6vectorI9ItemStackSaIS0_EE", !378, i64 0}
!380 = !{!"_ZTS13InventoryList", !379, i64 0, !120, i64 24, !43, i64 56, !43, i64 60, !349, i64 64, !76, i64 72, !43, i64 76}
!381 = !{!380, !76, i64 72}
!382 = !{!368, !65, i64 424}
!383 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!384 = !{!242, !76, i64 3168}
!385 = !{!242, !43, i64 3172}
!386 = !{!242, !43, i64 3180}
!387 = !{!211, !210, i64 8}
!388 = !{!240, !239, i64 0}
!389 = !{!"p1 _ZTS7MapNode", !47, i64 0}
!390 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !326, i64 0, !326, i64 8, !326, i64 16}
!391 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !390, i64 0}
!392 = !{!"_ZTSSt12_Vector_baseItSaItEE", !391, i64 0}
!393 = !{!"_ZTSSt6vectorItSaItEE", !392, i64 0}
!394 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !205, i64 0, !51, i64 8}
!395 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !394, i64 0}
!396 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !395, i64 0}
!397 = !{!"_ZTS16NodeMetadataList", !76, i64 0, !396, i64 8}
!398 = !{!"p1 _ZTS12StaticObject", !47, i64 0}
!399 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE17_Vector_impl_dataE", !398, i64 0, !398, i64 8, !398, i64 16}
!400 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE12_Vector_implE", !399, i64 0}
!401 = !{!"_ZTSSt12_Vector_baseI12StaticObjectSaIS0_EE", !400, i64 0}
!402 = !{!"_ZTSSt6vectorI12StaticObjectSaIS0_EE", !401, i64 0}
!403 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !181, i64 0, !51, i64 8}
!404 = !{!"_ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !403, i64 0}
!405 = !{!"_ZTSSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE", !404, i64 0}
!406 = !{!"_ZTS16StaticObjectList", !402, i64 0, !405, i64 24}
!407 = !{!"_ZTSSt4lessIdE"}
!408 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIdEE", !407, i64 0}
!409 = !{!"_ZTSNSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !408, i64 0, !51, i64 8}
!410 = !{!"_ZTSSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE", !409, i64 0}
!411 = !{!"_ZTSSt8multimapId9NodeTimerSt4lessIdESaISt4pairIKdS0_EEE", !410, i64 0}
!412 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !205, i64 0, !51, i64 8}
!413 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE", !412, i64 0}
!414 = !{!"_ZTSSt3mapIN4core8vector3dIsEESt17_Rb_tree_iteratorISt4pairIKd9NodeTimerEESt4lessIS2_ESaIS4_IKS2_S8_EEE", !413, i64 0}
!415 = !{!"double", !42, i64 0}
!416 = !{!"_ZTS13NodeTimerList", !411, i64 0, !414, i64 48, !415, i64 96, !415, i64 104}
!417 = !{!"_ZTS8MapBlock", !76, i64 0, !70, i64 2, !70, i64 8, !69, i64 14, !389, i64 16, !169, i64 24, !67, i64 32, !76, i64 36, !76, i64 37, !393, i64 40, !76, i64 64, !76, i64 65, !69, i64 66, !43, i64 68, !43, i64 72, !43, i64 76, !69, i64 80, !76, i64 82, !76, i64 83, !397, i64 88, !406, i64 144, !416, i64 216}
!418 = !{!417, !67, i64 32}
!419 = !{!417, !43, i64 72}
!420 = !{!399, !398, i64 0}
!421 = !{!399, !398, i64 8}
!422 = !{!417, !76, i64 0}
!423 = !{!"_ZTS12StaticObject", !42, i64 0, !102, i64 4, !120, i64 16}
!424 = !{!399, !398, i64 16}
!425 = !{!103, !76, i64 12}
!426 = !{!102, !67, i64 0}
!427 = !{!340, !340, i64 0}
!428 = !{!"p1 _ZTS15ContentFeatures", !47, i64 0}
!429 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !428, i64 0, !428, i64 8, !428, i64 16}
!430 = !{!429, !428, i64 8}
!431 = !{!429, !428, i64 0}
!432 = !{!"_ZTS16ContentParamType", !42, i64 0}
!433 = !{!"_ZTS17ContentParamType2", !42, i64 0}
!434 = !{!"_ZTS12NodeDrawType", !42, i64 0}
!435 = !{!"_ZTS9AlphaMode", !42, i64 0}
!436 = !{!"_ZTS10LiquidType", !42, i64 0}
!437 = !{!"_ZTS11NodeBoxType", !42, i64 0}
!438 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !47, i64 0}
!439 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !438, i64 0, !438, i64 8, !438, i64 16}
!440 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !439, i64 0}
!441 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !440, i64 0}
!442 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !441, i64 0}
!443 = !{!"p1 _ZTS16NodeBoxConnected", !47, i64 0}
!444 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !443, i64 0, !236, i64 8}
!445 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !444, i64 0}
!446 = !{!"_ZTS7NodeBox", !437, i64 0, !442, i64 8, !116, i64 32, !116, i64 56, !116, i64 80, !445, i64 104}
!447 = !{!"_ZTS9SoundSpec", !120, i64 0, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !76, i64 48, !76, i64 49}
!448 = !{!"_ZTS15ContentFeatures", !76, i64 0, !76, i64 1, !76, i64 2, !76, i64 3, !120, i64 8, !105, i64 40, !432, i64 96, !433, i64 97, !434, i64 98, !120, i64 104, !67, i64 136, !42, i64 144, !42, i64 528, !42, i64 912, !435, i64 1296, !121, i64 1300, !120, i64 1304, !42, i64 1336, !42, i64 1337, !110, i64 1344, !393, i64 1368, !121, i64 1392, !76, i64 1396, !42, i64 1397, !42, i64 1398, !76, i64 1399, !76, i64 1400, !42, i64 1401, !76, i64 1402, !76, i64 1403, !132, i64 1404, !76, i64 1405, !76, i64 1406, !76, i64 1407, !76, i64 1408, !43, i64 1412, !120, i64 1416, !42, i64 1448, !436, i64 1449, !76, i64 1450, !120, i64 1456, !69, i64 1488, !120, i64 1496, !69, i64 1528, !42, i64 1530, !76, i64 1531, !42, i64 1532, !42, i64 1533, !76, i64 1534, !446, i64 1536, !446, i64 1656, !446, i64 1776, !447, i64 1896, !447, i64 1952, !447, i64 2008, !76, i64 2064, !76, i64 2065}
!449 = !{!448, !76, i64 1}
!450 = !{!448, !76, i64 2}
!451 = !{!"p2 _ZTSZNK17ServerEnvironment12findSunlightEN4core8vector3dIsEEE11stack_entry", !63, i64 0}
!452 = !{!"p1 _ZTSZNK17ServerEnvironment12findSunlightEN4core8vector3dIsEEE11stack_entry", !47, i64 0}
!453 = !{!"_ZTSSt15_Deque_iteratorIZNK17ServerEnvironment12findSunlightEN4core8vector3dIsEEE11stack_entryRS4_PS4_E", !452, i64 0, !452, i64 8, !452, i64 16, !451, i64 24}
!454 = !{!"_ZTSNSt11_Deque_baseIZNK17ServerEnvironment12findSunlightEN4core8vector3dIsEEE11stack_entrySaIS4_EE16_Deque_impl_dataE", !451, i64 0, !50, i64 8, !453, i64 16, !453, i64 48}
!455 = !{!454, !50, i64 8}
!456 = !{!454, !451, i64 0}
!457 = !{!452, !452, i64 0}
!458 = !{!453, !451, i64 24}
!459 = !{!453, !452, i64 8}
!460 = !{!453, !452, i64 16}
!461 = !{!454, !452, i64 48}
!462 = !{!"_ZTSSt10_HashtableIlSt4pairIKlaESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!463 = !{!462, !88, i64 0}
!464 = !{!462, !50, i64 8}
!465 = !{!89, !89, i64 0}
!466 = !{!453, !452, i64 0}
!467 = !{!462, !50, i64 24}
!468 = !{!462, !89, i64 16}
!469 = !{!454, !451, i64 40}
!470 = !{!454, !451, i64 72}
!471 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!472 = !{!471, !159, i64 8}
!473 = !{!471, !159, i64 0}
!474 = !{!471, !159, i64 16}
!475 = !{!"p1 _ZTS8Profiler", !47, i64 0}
!476 = !{!475, !475, i64 0}
!477 = !{!417, !69, i64 66}
!478 = !{!417, !43, i64 68}
!479 = !{!417, !43, i64 76}
!480 = !{!325, !325, i64 0}
!481 = !{!"p1 float", !47, i64 0}
!482 = !{!481, !481, i64 0}
!483 = !{!"p1 bool", !47, i64 0}
!484 = !{!483, !483, i64 0}
!485 = !{!"_ZTSSt4pairIKjfE", !43, i64 0, !67, i64 4}
!486 = !{!485, !67, i64 4}
!487 = !{!230, !50, i64 24}
!488 = !{!197, !50, i64 24}
!489 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !50, i64 0}
!490 = !{!489, !50, i64 0}
!491 = !{!201, !50, i64 0}
!492 = !{!201, !50, i64 8}
!493 = !{i64 0, i64 8, !427, i64 8, i64 4, !68}
!494 = !{!"_ZTSSt4pairIKjtE", !43, i64 0, !69, i64 4}
!495 = !{!494, !69, i64 4}
!496 = !{!232, !50, i64 24}
!497 = !{!75, !69, i64 8}
!498 = !{!326, !326, i64 0}
!499 = !{!390, !326, i64 0}
!500 = !{!390, !326, i64 8}
!501 = !{!153, !141, i64 960}
!502 = !{!103, !76, i64 225}
!503 = !{!"_ZTSSt4pairIKt12StaticObjectE", !69, i64 0, !423, i64 8}
!504 = !{!503, !69, i64 0}
!505 = !{!96, !95, i64 0}
!506 = !{!97, !95, i64 16}
!507 = !{!97, !94, i64 40}
!508 = !{!96, !94, i64 24}
!509 = !{!95, !95, i64 0}
!510 = !{!96, !95, i64 8}
!511 = !{!96, !95, i64 16}
!512 = !{!102, !67, i64 8}
!513 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68}
!514 = !{!"p1 _ZTSN4core6line3dIfEE", !47, i64 0}
!515 = !{!514, !514, i64 0}
!516 = !{!"p1 _ZTSN4core8vector3dIfEE", !47, i64 0}
!517 = !{!516, !516, i64 0}
!518 = !{!"p1 _ZTSSt8optionalI14PointabilitiesE", !47, i64 0}
!519 = !{!518, !518, i64 0}
!520 = !{!"p1 _ZTSSt6vectorI12PointedThingSaIS0_EE", !47, i64 0}
!521 = !{!520, !520, i64 0}
!522 = !{!107, !106, i64 8}
!523 = !{!107, !106, i64 16}
!524 = !{!107, !106, i64 0}
!525 = !{!106, !106, i64 0}
!526 = !{!149, !89, i64 16}
!527 = !{!149, !88, i64 0}
!528 = !{!149, !50, i64 8}
!529 = !{!49, !46, i64 0}
!530 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeE", !48, i64 0, !48, i64 8, !57, i64 16}
!531 = !{!530, !48, i64 0}
!532 = !{!530, !48, i64 8}
!533 = !{!530, !57, i64 16}
!534 = !{!97, !94, i64 0}
!535 = !{!97, !50, i64 8}
!536 = !{ptr @_ZN13BaseExceptionD2Ev}
!537 = !{!92, !50, i64 24}
!538 = !{!92, !50, i64 8}
!539 = !{!92, !88, i64 0}
!540 = !{!91, !50, i64 8}
!541 = !{!92, !89, i64 16}
!542 = !{!"p1 _ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !47, i64 0}
!543 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKt12StaticObjectEE", !47, i64 0}
!544 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE10_Auto_nodeE", !542, i64 0, !543, i64 8}
!545 = !{!544, !543, i64 8}
!546 = !{!"p1 _ZTSSt9type_info", !47, i64 0}
!547 = !{!546, !546, i64 0}
!548 = !{!103, !69, i64 10}
!549 = !{i64 4}
!550 = !{!132, !132, i64 0}
!551 = !{!"p1 _ZTS12PointedThing", !47, i64 0}
!552 = !{!"_ZTSNSt12_Vector_baseI12PointedThingSaIS0_EE17_Vector_impl_dataE", !551, i64 0, !551, i64 8, !551, i64 16}
!553 = !{!552, !551, i64 8}
!554 = !{!552, !551, i64 16}
!555 = !{!"_ZTS16PointedThingType", !42, i64 0}
!556 = !{!"_ZTS12PointedThing", !555, i64 0, !132, i64 1, !70, i64 2, !70, i64 8, !70, i64 14, !69, i64 20, !69, i64 22, !102, i64 24, !102, i64 36, !102, i64 48, !67, i64 60}
!557 = !{!556, !555, i64 0}
!558 = !{!556, !132, i64 1}
!559 = !{!556, !69, i64 20}
!560 = !{!556, !69, i64 22}
!561 = !{!556, !67, i64 60}
!562 = distinct !{!562, !60}
!563 = distinct !{!563, !60}
!564 = distinct !{!564, !60}
!565 = distinct !{!565, !60}
!566 = distinct !{!566, !60}
!567 = distinct !{!567, !60}
!568 = !{!64, !64, i64 0}
!569 = !{!153, !69, i64 1148}
!570 = !{!153, !67, i64 1140}
!571 = !{!153, !76, i64 1150}
!572 = !{!153, !67, i64 1144}
!573 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEEE", !47, i64 0}
!574 = !{!573, !573, i64 0}
!575 = distinct !{null, null, ptr @_ZNSt12__shared_ptrI13MetricCounterLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!576 = distinct !{null, null, ptr @_ZNSt12__shared_ptrI11MetricGaugeLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!577 = !{!165, !165, i64 0}
!578 = !{!192, !88, i64 0}
!579 = !{!192, !50, i64 8}
!580 = !{!215, !88, i64 0}
!581 = !{!215, !50, i64 8}
!582 = distinct !{!582, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!583 = distinct !{!583, !582, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!584 = distinct !{!584, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!585 = distinct !{!585, !584, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!586 = !{!583}
!587 = !{!585, !583}
!588 = distinct !{!588, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!589 = distinct !{!589, !588, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!590 = distinct !{!590, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!591 = distinct !{!591, !590, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!592 = distinct !{!592, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!593 = distinct !{!593, !592, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!594 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_S5_St4hashIS5_ESt8equal_toIS5_ESaIS6_IS7_S5_EEEESaISG_ENSt8__detail10_Select1stESC_SA_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!595 = !{!594, !88, i64 0}
!596 = !{!594, !50, i64 8}
!597 = !{!589}
!598 = !{!591, !589}
!599 = !{!593}
!600 = distinct !{null, null, null}
!601 = !{!"_ZTS12ABMWithState", !340, i64 0, !67, i64 8}
!602 = !{!601, !340, i64 0}
!603 = distinct !{!603, !60}
!604 = !{!151, !76, i64 8}
!605 = distinct !{!605, i1 false, !"_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!606 = distinct !{!606, !605, !"_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!607 = distinct !{null, null}
!608 = distinct !{null}
!609 = !{!"_ZTSN3con11PeerHandlerE"}
!610 = !{!"_ZTS8IGameDef"}
!611 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !47, i64 0}
!612 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !611, i64 0, !611, i64 8, !611, i64 16}
!613 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !612, i64 0}
!614 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !613, i64 0}
!615 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !614, i64 0}
!616 = !{!"p1 _ZTS11PackedValue", !47, i64 0}
!617 = !{!"_ZTSSt10_Head_baseILm0EP11PackedValueLb0EE", !616, i64 0}
!618 = !{!"_ZTSSt11_Tuple_implILm0EJP11PackedValueSt14default_deleteIS0_EEE", !617, i64 0}
!619 = !{!"_ZTSSt5tupleIJP11PackedValueSt14default_deleteIS0_EEE", !618, i64 0}
!620 = !{!"_ZTSSt15__uniq_ptr_implI11PackedValueSt14default_deleteIS0_EE", !619, i64 0}
!621 = !{!"_ZTSSt15__uniq_ptr_dataI11PackedValueSt14default_deleteIS0_ELb1ELb1EE", !620, i64 0}
!622 = !{!"_ZTSSt10unique_ptrI11PackedValueSt14default_deleteIS0_EE", !621, i64 0}
!623 = !{!"_ZTS7Address", !69, i64 0, !42, i64 4, !69, i64 20}
!624 = !{!"_ZTSSt10_Head_baseILm0EP15ServerScriptingLb0EE", !165, i64 0}
!625 = !{!"_ZTSSt11_Tuple_implILm0EJP15ServerScriptingSt14default_deleteIS0_EEE", !624, i64 0}
!626 = !{!"_ZTSSt5tupleIJP15ServerScriptingSt14default_deleteIS0_EEE", !625, i64 0}
!627 = !{!"_ZTSSt15__uniq_ptr_implI15ServerScriptingSt14default_deleteIS0_EE", !626, i64 0}
!628 = !{!"_ZTSSt15__uniq_ptr_dataI15ServerScriptingSt14default_deleteIS0_ELb1ELb1EE", !627, i64 0}
!629 = !{!"_ZTSSt10unique_ptrI15ServerScriptingSt14default_deleteIS0_EE", !628, i64 0}
!630 = !{!"p1 _ZTS16ServerModManager", !47, i64 0}
!631 = !{!"_ZTSSt10_Head_baseILm0EP16ServerModManagerLb0EE", !630, i64 0}
!632 = !{!"_ZTSSt11_Tuple_implILm0EJP16ServerModManagerSt14default_deleteIS0_EEE", !631, i64 0}
!633 = !{!"_ZTSSt5tupleIJP16ServerModManagerSt14default_deleteIS0_EEE", !632, i64 0}
!634 = !{!"_ZTSSt15__uniq_ptr_implI16ServerModManagerSt14default_deleteIS0_EE", !633, i64 0}
!635 = !{!"_ZTSSt15__uniq_ptr_dataI16ServerModManagerSt14default_deleteIS0_ELb1ELb1EE", !634, i64 0}
!636 = !{!"_ZTSSt10unique_ptrI16ServerModManagerSt14default_deleteIS0_EE", !635, i64 0}
!637 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !383, i64 0}
!638 = !{!"p2 omnipotent char", !63, i64 0}
!639 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !638, i64 0, !638, i64 8, !638, i64 16}
!640 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implE", !639, i64 0}
!641 = !{!"_ZTSSt12_Vector_baseIPKcSaIS1_EE", !640, i64 0}
!642 = !{!"_ZTSSt6vectorIPKcSaIS1_EE", !641, i64 0}
!643 = !{!"_ZTS11SubgameSpec", !120, i64 0, !120, i64 32, !120, i64 64, !43, i64 96, !120, i64 104, !120, i64 136, !120, i64 168, !120, i64 200, !150, i64 232, !637, i64 288, !642, i64 344}
!644 = !{!"_ZTS15MutexedVariableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !120, i64 0, !171, i64 32}
!645 = !{!"p1 _ZTSN3con11IConnectionE", !47, i64 0}
!646 = !{!"_ZTSSt12__shared_ptrIN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE", !645, i64 0, !236, i64 8}
!647 = !{!"_ZTSSt10shared_ptrIN3con11IConnectionEE", !646, i64 0}
!648 = !{!"p1 _ZTS10BanManager", !47, i64 0}
!649 = !{!"p1 _ZTS16IRollbackManager", !47, i64 0}
!650 = !{!"p1 _ZTS13EmergeManager", !47, i64 0}
!651 = !{!"_ZTSSt10_Head_baseILm0EP13EmergeManagerLb0EE", !650, i64 0}
!652 = !{!"_ZTSSt11_Tuple_implILm0EJP13EmergeManagerSt14default_deleteIS0_EEE", !651, i64 0}
!653 = !{!"_ZTSSt5tupleIJP13EmergeManagerSt14default_deleteIS0_EEE", !652, i64 0}
!654 = !{!"_ZTSSt15__uniq_ptr_implI13EmergeManagerSt14default_deleteIS0_EE", !653, i64 0}
!655 = !{!"_ZTSSt15__uniq_ptr_dataI13EmergeManagerSt14default_deleteIS0_ELb1ELb1EE", !654, i64 0}
!656 = !{!"_ZTSSt10unique_ptrI13EmergeManagerSt14default_deleteIS0_EE", !655, i64 0}
!657 = !{!"p1 _ZTS23IWritableItemDefManager", !47, i64 0}
!658 = !{!"p1 _ZTS14NodeDefManager", !47, i64 0}
!659 = !{!"p1 _ZTS24IWritableCraftDefManager", !47, i64 0}
!660 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12TranslationsESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!661 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12TranslationsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !660, i64 0}
!662 = !{!"_ZTSSt22__shared_mutex_pthread", !42, i64 0}
!663 = !{!"_ZTSSt12shared_mutex", !662, i64 0}
!664 = !{!"_ZTSSt9__condvar", !42, i64 0}
!665 = !{!"_ZTSSt18condition_variable", !664, i64 0}
!666 = !{!"p1 _ZTSSt5mutex", !47, i64 0}
!667 = !{!"_ZTSSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EE", !666, i64 0, !236, i64 8}
!668 = !{!"_ZTSSt10shared_ptrISt5mutexE", !667, i64 0}
!669 = !{!"_ZTSNSt3_V222condition_variable_anyE", !665, i64 0, !668, i64 48}
!670 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI11PackedValueSt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!671 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI11PackedValueSt14default_deleteIS7_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !670, i64 0}
!672 = !{!"_ZTS11ModIPCStore", !663, i64 0, !669, i64 56, !671, i64 120}
!673 = !{!"_ZTSN6Server12StepSettingsE", !67, i64 0, !76, i64 4}
!674 = !{!"_ZTSSt6atomicIN6Server12StepSettingsEE", !673, i64 0}
!675 = !{!"p1 _ZTS12ServerThread", !47, i64 0}
!676 = !{!"_ZTSSt22__recursive_mutex_base", !42, i64 0}
!677 = !{!"_ZTSSt15recursive_mutex", !676, i64 0}
!678 = !{!"_ZTSSt10_HashtableItSt4pairIKtP12RemoteClientESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!679 = !{!"_ZTSSt13unordered_mapItP12RemoteClientSt4hashItESt8equal_toItESaISt4pairIKtS1_EEE", !678, i64 0}
!680 = !{!"_ZTS15ClientInterface", !647, i64 0, !677, i64 16, !679, i64 56, !110, i64 112, !87, i64 136, !67, i64 144, !67, i64 148}
!681 = !{!"_ZTSSt10_HashtableItSt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!682 = !{!"_ZTSSt13unordered_mapItNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashItESt8equal_toItESaISt4pairIKtS5_EEE", !681, i64 0}
!683 = !{!"_ZTSN6Server13ShutdownStateE", !76, i64 0, !76, i64 1, !120, i64 8, !67, i64 40}
!684 = !{!"p1 _ZTS13ChatInterface", !47, i64 0}
!685 = !{!"any p3 pointer", !63, i64 0}
!686 = !{!"p3 _ZTS12MapEditEvent", !685, i64 0}
!687 = !{!"p2 _ZTS12MapEditEvent", !63, i64 0}
!688 = !{!"_ZTSSt15_Deque_iteratorIP12MapEditEventRS1_PS1_E", !687, i64 0, !687, i64 8, !687, i64 16, !686, i64 24}
!689 = !{!"_ZTSNSt11_Deque_baseIP12MapEditEventSaIS1_EE16_Deque_impl_dataE", !686, i64 0, !50, i64 8, !688, i64 16, !688, i64 48}
!690 = !{!"_ZTSNSt11_Deque_baseIP12MapEditEventSaIS1_EE11_Deque_implE", !689, i64 0}
!691 = !{!"_ZTSSt11_Deque_baseIP12MapEditEventSaIS1_EE", !690, i64 0}
!692 = !{!"_ZTSSt5dequeIP12MapEditEventSaIS1_EE", !691, i64 0}
!693 = !{!"_ZTSSt5queueIP12MapEditEventSt5dequeIS1_SaIS1_EEE", !692, i64 0}
!694 = !{!"_ZTSN4core8vector3dIiEE", !43, i64 0, !43, i64 4, !43, i64 8}
!695 = !{!"_ZTS9VoxelArea", !70, i64 0, !70, i64 6, !694, i64 12}
!696 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_9MediaInfoESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!697 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !696, i64 0}
!698 = !{!"_ZTSSt10_HashtableIjSt4pairIKjN6Server27PendingDynamicMediaCallbackEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!699 = !{!"_ZTSSt13unordered_mapIjN6Server27PendingDynamicMediaCallbackESt4hashIjESt8equal_toIjESaISt4pairIKjS1_EEE", !698, i64 0}
!700 = !{!"_ZTSSt10_HashtableIiSt4pairIKi18ServerPlayingSoundESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !88, i64 0, !50, i64 8, !90, i64 16, !50, i64 24, !91, i64 32, !89, i64 48}
!701 = !{!"_ZTSSt13unordered_mapIi18ServerPlayingSoundSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEE", !700, i64 0}
!702 = !{!"p1 _ZTS18ModStorageDatabase", !47, i64 0}
!703 = !{!"p1 _ZTS13ModChannelMgr", !47, i64 0}
!704 = !{!"_ZTSSt10_Head_baseILm0EP13ModChannelMgrLb0EE", !703, i64 0}
!705 = !{!"_ZTSSt11_Tuple_implILm0EJP13ModChannelMgrSt14default_deleteIS0_EEE", !704, i64 0}
!706 = !{!"_ZTSSt5tupleIJP13ModChannelMgrSt14default_deleteIS0_EEE", !705, i64 0}
!707 = !{!"_ZTSSt15__uniq_ptr_implI13ModChannelMgrSt14default_deleteIS0_EE", !706, i64 0}
!708 = !{!"_ZTSSt15__uniq_ptr_dataI13ModChannelMgrSt14default_deleteIS0_ELb1ELb1EE", !707, i64 0}
!709 = !{!"_ZTSSt10unique_ptrI13ModChannelMgrSt14default_deleteIS0_EE", !708, i64 0}
!710 = !{!"p1 _ZTS22ServerInventoryManager", !47, i64 0}
!711 = !{!"_ZTSSt10_Head_baseILm0EP22ServerInventoryManagerLb0EE", !710, i64 0}
!712 = !{!"_ZTSSt11_Tuple_implILm0EJP22ServerInventoryManagerSt14default_deleteIS0_EEE", !711, i64 0}
!713 = !{!"_ZTSSt5tupleIJP22ServerInventoryManagerSt14default_deleteIS0_EEE", !712, i64 0}
end_hunk_5
