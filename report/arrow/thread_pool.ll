inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev:bb.a
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !245

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !113, !range !48, !noundef !49
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -2147483648) i32 @_ZN5arrow8internal10ThreadPool15DefaultCapacityEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.arrow::Result.50", align 8  ; 7 uses
  %1 = alloca %"class.arrow::util::ArrowLog", align 8 ; 14 uses
  %i.a = tail call fastcc noundef i32 @_ZN5arrow8internalL14ParseOMPEnvVarEPKc(ptr noundef nonnull @.str.4) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  call void @_ZN5arrow8internal19GetNumAffinityCoresEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %0)
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.e, label %bb.c, !prof !112

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !113, !range !48, !noundef !49
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #32
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %.thread18

bb.f:                                             ; preds = %.thread, %bb.e
  %i.j = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #32 ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %.thread18

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull @.str.5, i32 noundef 744, i32 noundef 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.j, !inline_history !247

.noexc:                                           ; preds = %bb.g
  br i1 %i.o, label %bb.h, label %_ZN5arrow4util12ArrowLogBaselsIA91_cEERS1_RKT_.exit

bb.h:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %1, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc5 unwind label %bb.j, !inline_history !247

.noexc5:                                          ; preds = %bb.h
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 90)
          to label %_ZN5arrow4util12ArrowLogBaselsIA91_cEERS1_RKT_.exit unwind label %bb.j ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA91_cEERS1_RKT_.exit: ; preds = %.noexc, %.noexc5
  %i.u = load ptr, ptr %1, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc7 unwind label %bb.j, !inline_history !248

.noexc7:                                          ; preds = %_ZN5arrow4util12ArrowLogBaselsIA91_cEERS1_RKT_.exit
  br i1 %i.x, label %bb.i, label %_ZN5arrow4util12ArrowLogBaselsIiEERS1_RKT_.exit

bb.i:                                             ; preds = %.noexc7
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc8 unwind label %bb.j, !inline_history !248

.noexc8:                                          ; preds = %bb.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 4)
          to label %_ZN5arrow4util12ArrowLogBaselsIiEERS1_RKT_.exit unwind label %bb.j ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIiEERS1_RKT_.exit:  ; preds = %.noexc7, %.noexc8
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %.thread18

bb.j:                                             ; preds = %.noexc8, %bb.i, %_ZN5arrow4util12ArrowLogBaselsIA91_cEERS1_RKT_.exit, %.noexc5, %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.ad

.thread18:                                        ; preds = %bb.a, %bb.e, %_ZN5arrow4util12ArrowLogBaselsIiEERS1_RKT_.exit, %bb.f
  %.2 = phi i32 [ 4, %_ZN5arrow4util12ArrowLogBaselsIiEERS1_RKT_.exit ], [ %i.j, %bb.f ], [ %i.h, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.ae = call fastcc noundef i32 @_ZN5arrow8internalL14ParseOMPEnvVarEPKc(ptr noundef nonnull @.str.7) ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  %i.af = call i32 @llvm.umin.i32(i32 %.2, i32 %i.ae)
  %.3 = select i1 %.not, i32 %.2, i32 %i.af
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZN5arrow8internalL14ParseOMPEnvVarEPKc(ptr noundef %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.arrow::Result.63", align 8  ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  call void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.63") align 8 %1, i64 %i.b, ptr nonnull %0)
  %i.c = load ptr, ptr %1, align 8, !tbaa !84     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !258, !alias.scope !259
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !237, !noalias !259 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !260, !noalias !259 ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.g, ptr %2, align 8, !tbaa !237, !alias.scope !259
  %i.n = load i64, ptr %i.h, align 8, !tbaa !41, !noalias !259
  store i64 %i.n, ptr %i.f, align 8, !tbaa !41, !alias.scope !259
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !260, !noalias !259
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.o = phi ptr [ %i.f, %bb.c ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 12 uses
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !260, !alias.scope !259
  store ptr %i.h, ptr %i.e, align 8, !tbaa !237, !noalias !259
  store i64 0, ptr %i.q, align 8, !tbaa !260, !noalias !259
  store i8 0, ptr %i.h, align 8, !tbaa !41, !noalias !259
  %.not31 = icmp eq i64 %i.p, 0
  br i1 %.not31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d
  %i.s = call ptr @memchr(ptr noundef %i.o, i32 noundef 44, i64 noundef %i.p) #32
  %.fr = freeze ptr %i.s                          ; 2 uses
  %.not.i.i = icmp eq ptr %.fr, null
  %i.t = ptrtoint ptr %.fr to i64
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not = icmp eq i64 %i.v, -1
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !258, !alias.scope !261
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.p) ; 8 uses
  %i.x = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.x, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.y, label %.noexc10.i.i, label %bb.g

.noexc10.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #33
          to label %.noexc13 unwind label %bb.p

.noexc13:                                         ; preds = %.noexc10.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !44

.noexc11.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31
          to label %.noexc15 unwind label %bb.p   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ab, ptr %3, align 8, !tbaa !237, !alias.scope !261
  store i64 %spec.select.i.i.i, ptr %i.w, align 8, !tbaa !41, !alias.scope !261
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %bb.e
  %i.ac = phi ptr [ %i.ab, %.noexc15 ], [ %i.w, %bb.e ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.o, align 1, !tbaa !41
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !41
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.o, i64 %spec.select.i.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %spec.select.i.i.i, ptr %i.ae, align 8, !tbaa !260, !alias.scope !261
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.i.i.i
  store i8 0, ptr %i.af, align 1, !tbaa !41
  %i.ag = icmp eq ptr %i.o, %i.f
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  %i.ah = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %3, align 8, !tbaa !237   ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  %i.ak = load ptr, ptr %3, align 8, !tbaa !237   ; 3 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = phi ptr [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !260 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !41
  store i8 %i.ap, ptr %i.o, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !260 ; 2 uses
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !260
  %i.ar = load ptr, ptr %2, align 8, !tbaa !237
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ai, ptr %2, align 8, !tbaa !237
  %i.at = load <2 x i64>, ptr %i.ae, align 8, !tbaa !41
  store <2 x i64> %i.at, ptr %i.r, align 8, !tbaa !41
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.au = load i64, ptr %i.f, align 8, !tbaa !41
  store ptr %i.ak, ptr %2, align 8, !tbaa !237
  %i.av = load <2 x i64>, ptr %i.ae, align 8, !tbaa !41
  store <2 x i64> %i.av, ptr %i.r, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.o, ptr %3, align 8, !tbaa !237
  store i64 %i.au, ptr %i.w, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.w, ptr %3, align 8, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.aw = phi ptr [ %i.o, %bb.n ], [ %i.w, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ae, align 8, !tbaa !260
  store i8 0, ptr %i.aw, align 1, !tbaa !41
  %i.ax = load ptr, ptr %3, align 8, !tbaa !237   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.w
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.w, align 8, !tbaa !41
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pre = load ptr, ptr %2, align 8, !tbaa !237
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = phi ptr [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %i.o, %bb.d ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bd = tail call ptr @__errno_location() #35   ; 6 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3  ; 2 uses
  store i32 0, ptr %i.bd, align 4, !tbaa !3
  %i.bf = call noundef i64 @__isoc23_strtol(ptr noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.bh = icmp eq ptr %i.bg, %i.bc
  br i1 %i.bh, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.14) #33
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %.critedge.i.i, %bb.q
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !3
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bl = extractvalue { ptr, i32 } %i.bi, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bl) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.z

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit.thread
  %i.bn = load i32, ptr %i.bd, align 4, !tbaa !3  ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 34
  %i.bp = add i64 %i.bf, -2147483648
  %i.bq = icmp ult i64 %i.bp, -4294967296
  %or.cond.i.i = or i1 %i.bq, %i.bo
end_hunk_0
