inline.NumInlined: 1907
inline.NumDeleted: 759
begin_hunk_0_@_ZNK7testing8Sequence14AddExpectationERKNS_11ExpectationE:bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !458
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing8internal10linked_ptrINS0_15ExpectationBaseEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing10InSequenceC2Ev(ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN7testing11ExpectationC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 16) #30
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.e, ptr %i.d, align 8, !tbaa !458
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.g, align 8, !tbaa !66
  %i.h = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
  store ptr %i.d, ptr %i.h, align 8, !tbaa !461
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #30
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %bb.a, %bb.d
  %storemerge = phi i8 [ 1, %bb.d ], [ 0, %bb.a ]
  store i8 %storemerge, ptr %0, align 1, !tbaa !463
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing10InSequenceD2Ev(ptr noundef nonnull readonly align 1 captures(none) dead_on_return(1) dereferenceable(1) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !463, !range !301, !noundef !179
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
          to label %_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE3getEv.exit unwind label %bb.m

_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE3getEv.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE3getEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.f                   ; 2 uses
  br i1 %i.h, label %bb.e, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.noexc.i.i, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.i, %.preheader.i.i.i.i ], [ %i.g, %.noexc.i.i ] ; 2 uses
  %i.i = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i.i, label %bb.d, label %.preheader.i.i.i.i, !llvm.loop !86

bb.d:                                             ; preds = %.preheader.i.i.i.i
  store ptr %i.g, ptr %.0.i.i.i.i, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc.i.i
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i: ; preds = %bb.e
  br i1 %i.h, label %bb.g, label %_ZN7testing8SequenceD2Ev.exit

bb.g:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !458  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7testing8SequenceD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7testing11ExpectationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #30
  br label %_ZN7testing8SequenceD2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #33
  unreachable

_ZN7testing8SequenceD2Ev.exit:                    ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #30
  br label %bb.j

bb.j:                                             ; preds = %_ZN7testing8SequenceD2Ev.exit, %_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE3getEv.exit
  %i.p = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.p, align 8, !tbaa !461
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void

bb.m:                                             ; preds = %bb.j, %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleMockEPiPPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @_ZN7testing14InitGoogleTestEPiPPc(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %or.cond = icmp slt i32 %i.a, 2
  br i1 %or.cond, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.02134 = phi i32 [ 1, %.lr.ph35 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = sext i32 %.02134 to i64                  ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  call void @_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.e, ptr noundef nonnull @.str.121, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 48, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
    i8 102, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i8 %i.g, 70
  %i.i = zext i1 %i.h to i8
  br label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread

_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread: ; preds = %bb.c, %bb.c, %bb.d
  %i.j = phi i8 [ 0, %bb.c ], [ 0, %bb.c ], [ %i.i, %bb.d ]
  store i8 %i.j, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !371
  br label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread

_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit: ; preds = %.noexc
  %i.k = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.e, ptr noundef nonnull @.str.122, i1 noundef zeroext false)
          to label %.noexc24 unwind label %bb.f   ; 3 uses

.noexc24:                                         ; preds = %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc24
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !13
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #29
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 noundef 0, i64 noundef %i.l, ptr noundef nonnull %i.k, i64 noundef %i.m)
          to label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread unwind label %bb.f ; 0 uses

_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread: ; preds = %bb.e, %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
  %i.o = load i32, ptr %0, align 4, !tbaa !3      ; 4 uses
  %.not2331 = icmp eq i32 %.02134, %i.o
  br i1 %.not2331, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread
  %i.p = xor i32 %.02134, -1
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 3
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, 8589934588               ; 3 uses
  %i.t = add nsw i64 %n.vec, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = add i64 %index, %i.c                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !465
  %wide.load46 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !465
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !465
  store <2 x ptr> %wide.load46, ptr %i.z, align 8, !tbaa !465
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread
  %i.ab = add nsw i32 %i.o, -1
  store i32 %i.ab, ptr %0, align 4, !tbaa !3
  %i.ac = add nsw i32 %.02134, -1
  br label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit

bb.f:                                             ; preds = %bb.e, %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.ad

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader47 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !465
  %i.ak = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !465
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !467

_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %.noexc24, %._crit_edge
  %.1 = phi i32 [ %i.ac, %._crit_edge ], [ %.02134, %.noexc24 ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.an = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ap = add nsw i32 %.1, 1                      ; 2 uses
  %i.aq = load i32, ptr %0, align 4, !tbaa !3
  %.not = icmp eq i32 %i.ap, %i.aq
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !468

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleMockEPiPPw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @_ZN7testing14InitGoogleTestEPiPPw(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %or.cond = icmp slt i32 %i.a, 2
  br i1 %or.cond, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.02134 = phi i32 [ 1, %.lr.ph35 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = sext i32 %.02134 to i64                  ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.e, ptr noundef nonnull @.str.121, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 48, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
    i8 102, label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i8 %i.g, 70
  %i.i = zext i1 %i.h to i8
  br label %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread

_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread: ; preds = %bb.c, %bb.c, %bb.d
  %i.j = phi i8 [ 0, %bb.c ], [ 0, %bb.c ], [ %i.i, %bb.d ]
  store i8 %i.j, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !371
  br label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread

_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit: ; preds = %.noexc
  %i.k = invoke fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.e, ptr noundef nonnull @.str.122, i1 noundef zeroext false)
          to label %.noexc24 unwind label %bb.f   ; 3 uses

.noexc24:                                         ; preds = %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc24
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !13
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #29
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 noundef 0, i64 noundef %i.l, ptr noundef nonnull %i.k, i64 noundef %i.m)
          to label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread unwind label %bb.f ; 0 uses

_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread: ; preds = %bb.e, %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit.thread
  %i.o = load i32, ptr %0, align 4, !tbaa !3      ; 4 uses
  %.not2331 = icmp eq i32 %.02134, %i.o
  br i1 %.not2331, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread
  %i.p = xor i32 %.02134, -1
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 3
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, 8589934588               ; 3 uses
  %i.t = add nsw i64 %n.vec, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = add i64 %index, %i.c                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !469
  %wide.load46 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !469
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !469
  store <2 x ptr> %wide.load46, ptr %i.z, align 8, !tbaa !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit.thread
  %i.ab = add nsw i32 %i.o, -1
  store i32 %i.ab, ptr %0, align 4, !tbaa !3
  %i.ac = add nsw i32 %.02134, -1
  br label %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit

bb.f:                                             ; preds = %bb.e, %_ZN7testing8internalL23ParseGoogleMockBoolFlagEPKcS2_Pb.exit, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.ad

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader47 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !469
  %i.ak = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !469
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !472

_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %.noexc24, %._crit_edge
  %.1 = phi i32 [ %i.ac, %._crit_edge ], [ %.02134, %.noexc24 ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.an = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN7testing8internalL25ParseGoogleMockStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ap = add nsw i32 %.1, 1                      ; 2 uses
  %i.aq = load i32, ptr %0, align 4, !tbaa !3
  %.not = icmp eq i32 %i.ap, %i.aq
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !473

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i unwind label %bb.g, !inline_history !85

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.d = icmp eq ptr %i.c, %i.b                   ; 2 uses
  br i1 %i.d, label %bb.c, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.noexc.i.i, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.e, %.preheader.i.i.i.i ], [ %i.c, %.noexc.i.i ] ; 2 uses
  %i.e = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i.i.i.i, label %bb.b, label %.preheader.i.i.i.i, !llvm.loop !86

bb.b:                                             ; preds = %.preheader.i.i.i.i
  store ptr %i.c, ptr %.0.i.i.i.i, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc.i.i
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i unwind label %bb.d, !inline_history !85

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #33, !inline_history !85
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i: ; preds = %bb.c
  br i1 %i.d, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #29, !inline_history !87
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33, !inline_history !85
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

end_hunk_0
