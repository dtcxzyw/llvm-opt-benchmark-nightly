Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpf?download=true
inline.NumInlined: 2373
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN9subpaving9context_tINS_10config_mpfEE7displayERSoR3f2nI11mpf_managerERKNS_16display_var_procEjR3mpfbb:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ac = load ptr, ptr %1, align 8, !tbaa !40, !noalias !269, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(840) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.ad = load ptr, ptr %8, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25: ; preds = %bb.h
  %i.ah = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.e
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE4ineq11lt_var_procclEPKS3_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !36
  %i.b = load i32, ptr %2, align 8, !tbaa !36
  %i.c = icmp ult i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4nodeC2ERS2_j(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(1560) %1, i32 noundef %2) unnamed_addr #1 comdat($_ZN9subpaving9context_tINS_10config_mpfEE4nodeC5ERS2_j) align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %2, ptr %i.h, align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65
  br label %_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit

_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  tail call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef null)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.s = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.r, i64 noundef 24) ; 3 uses
  store i32 -1073741823, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  store ptr %i.s, ptr %i.d, align 8, !tbaa !55
  store i32 0, ptr %i.e, align 8, !tbaa !56
  %i.u = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42 ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !55
  tail call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.y = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.x, i64 noundef 24) ; 3 uses
  store i32 -1073741823, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  store ptr %i.y, ptr %i.f, align 8, !tbaa !55
  store i32 0, ptr %i.g, align 8, !tbaa !56
  %.not = icmp eq i32 %.0.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit, %.lr.ph
  %.06 = phi i32 [ %i.ac, %.lr.ph ], [ 0, %_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !76
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE9push_backERNS5_3refERKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ab = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !76
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE9push_backERNS5_3refERKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ac = add nuw i32 %.06, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %.0.i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !270
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN9subpaving9context_tINS_10config_mpfEE2bmEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE8num_varsEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIbLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit

_ZNK6vectorIbLb0EjE4sizeEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node2bmEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE9push_backERNS5_3refERKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.e = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i64 noundef 24) ; 4 uses
  store i32 -1073741823, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store ptr %i.e, ptr %1, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 14 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.i, 1073741823
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65   ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !79   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i: ; preds = %bb.e
  %i.r = icmp eq i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i: ; preds = %bb.e
  %i.s = zext i32 %i.o to i64                     ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80
  %i.v = icmp eq i64 %i.u, %i.s
  br i1 %i.v, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i
  %i.w = phi i64 [ 0, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i ], [ %i.s, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i ] ; 8 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  %i.y = mul nuw nsw i64 %i.w, 3
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = lshr i64 %i.z, 1
  %i.ab = select i1 %i.x, i64 2, i64 %i.aa        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.ae = shl nuw nsw i64 %i.ab, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  %i.ag = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, i64 noundef %i.af) ; 3 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 8 uses
  br i1 %i.x, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !79  ; 8 uses
  %min.iters.check139 = icmp samesign ult i64 %i.w, 10
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.preheader.i.i.i
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = sub i64 %i.ah, %i.ak
  %i.am = add i64 %i.al, 7
  %diff.check137 = icmp ult i64 %i.am, 31
  br i1 %diff.check137, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck136
  %n.vec141 = and i64 %i.w, 4294967292            ; 3 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next146, %vector.body142 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index143 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load144 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !76
  %wide.load145 = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index143 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x ptr> %wide.load144, ptr %i.ap, align 8, !tbaa !76
  store <2 x ptr> %wide.load145, ptr %i.aq, align 8, !tbaa !76
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.ar, label %middle.block147, label %vector.body142, !llvm.loop !271

middle.block147:                                  ; preds = %vector.body142
  %cmp.n148 = icmp eq i64 %i.w, %n.vec141
  br i1 %cmp.n148, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %vector.memcheck136, %.preheader.i.i.i, %middle.block147
  %.016.i.i.i.ph = phi i64 [ 0, %vector.memcheck136 ], [ 0, %.preheader.i.i.i ], [ %n.vec141, %middle.block147 ] ; 3 uses
  %xtraiter161 = and i64 %i.w, 3                  ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %scalar.ph138.prol.loopexit, label %scalar.ph138.prol

scalar.ph138.prol:                                ; preds = %scalar.ph138.preheader, %scalar.ph138.prol
  %.016.i.i.i.prol = phi i64 [ %i.av, %scalar.ph138.prol ], [ %.016.i.i.i.ph, %scalar.ph138.preheader ] ; 3 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %scalar.ph138.prol ], [ 0, %scalar.ph138.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.016.i.i.i.prol
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.016.i.i.i.prol
  store ptr %i.at, ptr %i.au, align 8, !tbaa !76
  %i.av = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %scalar.ph138.prol.loopexit, label %scalar.ph138.prol, !llvm.loop !272

scalar.ph138.prol.loopexit:                       ; preds = %scalar.ph138.prol, %scalar.ph138.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %scalar.ph138.preheader ], [ %i.av, %scalar.ph138.prol ]
  %i.aw = sub nsw i64 %.016.i.i.i.ph, %i.w
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i, label %scalar.ph138

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i: ; preds = %scalar.ph138.prol.loopexit, %scalar.ph138, %middle.block147
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.bb = shl i64 %i.az, 3
  %i.bc = add i64 %i.bb, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ba, i64 noundef %i.bc, ptr noundef nonnull %i.ay)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i

scalar.ph138:                                     ; preds = %scalar.ph138.prol.loopexit, %scalar.ph138
  %.016.i.i.i = phi i64 [ %i.bs, %scalar.ph138 ], [ %.016.i.i.i.unr, %scalar.ph138.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.016.i.i.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.016.i.i.i
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !76
  %i.bg = add nuw nsw i64 %.016.i.i.i, 1          ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bg
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !76
  %i.bk = add nuw nsw i64 %.016.i.i.i, 2          ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bk
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !76
  %i.bo = add nuw nsw i64 %.016.i.i.i, 3          ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !76
  %i.bs = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bs, %i.w
  br i1 %exitcond.not.i.i.i.3, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i, label %scalar.ph138, !llvm.loop !273

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !79
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !65 ; 2 uses
  %.pre.i = zext i32 %.pre.i.i to i64
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i
  %.pre-phi.i = phi i64 [ %i.s, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i ], [ %.pre.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i ]
  %i.bt = phi i32 [ %i.o, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i ], [ %.pre.i.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i ]
  %i.bu = phi ptr [ %i.p, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i ], [ %i.ai, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.pre-phi.i
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !76
  %i.bx = add i32 %i.bt, 1
  store i32 %i.bx, ptr %i.n, align 4, !tbaa !65
  br label %bb.q

_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit: ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48
  %i.cc = icmp ugt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.cf = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ce, i64 noundef 24) ; 4 uses
  store i32 -1073741823, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i8 0, i64 20, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  %i.ci = tail call noundef i32 @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10get_valuesEPNS5_4cellERPPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !48
  %i.cj = load i32, ptr %i.h, align 8             ; 2 uses
  %i.ck = add i32 %i.cj, 1073741823
  %i.cl = and i32 %i.ck, 1073741823               ; 2 uses
  %i.cm = and i32 %i.cj, -1073741824
  %i.cn = or disjoint i32 %i.cl, %i.cm            ; 2 uses
  store i32 %i.cn, ptr %i.h, align 8
  %i.co = icmp eq i32 %i.cl, 0
  br i1 %i.co, label %.preheader, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

.preheader:                                       ; preds = %bb.f, %bb.h
  %i.cp = phi i32 [ %i.dg, %bb.h ], [ %i.cn, %bb.f ]
  %.014.i.i70 = phi ptr [ %i.cs, %bb.h ], [ %i.h, %bb.f ] ; 3 uses
  %i.cq = icmp ugt i32 %i.cp, -1073741825
  %i.cr = getelementptr inbounds nuw i8, ptr %.014.i.i70, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 6 uses
  br i1 %i.cq, label %bb.g, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i71

bb.g:                                             ; preds = %.preheader
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i76, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i75

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i75: ; preds = %bb.g
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !80
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.cx = shl i64 %i.cv, 3
  %i.cy = add i64 %i.cx, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.cw, i64 noundef %i.cy, ptr noundef nonnull %i.cu)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i76

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i76: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i75, %bb.g
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.cz, i64 noundef 24, ptr noundef nonnull %.014.i.i70)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i71: ; preds = %.preheader
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.da, i64 noundef 24, ptr noundef nonnull %.014.i.i70)
  %i.db = icmp eq ptr %i.cs, null
  br i1 %i.db, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i71
  %i.dc = load i32, ptr %i.cs, align 8            ; 2 uses
  %i.dd = add i32 %i.dc, 1073741823
  %i.de = and i32 %i.dd, 1073741823               ; 2 uses
  %i.df = and i32 %i.dc, -1073741824
  %i.dg = or disjoint i32 %i.de, %i.df            ; 2 uses
  store i32 %i.dg, ptr %i.cs, align 8
  %.not.i.i74 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i74, label %.preheader, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i71, %bb.h, %bb.f, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i76
  store ptr %i.cf, ptr %1, align 8, !tbaa !55
  store i32 0, ptr %i.by, align 8, !tbaa !56
  %i.dh = load i32, ptr %i.cg, align 4, !tbaa !65 ; 3 uses
  %i.di = load ptr, ptr %i.ch, align 8, !tbaa !79 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i48, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i48: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit
  %i.dk = icmp eq i32 %i.dh, 0
  tail call void @llvm.assume(i1 %i.dk)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i40

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit
  %i.dl = zext i32 %i.dh to i64                   ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !80
  %i.do = icmp eq i64 %i.dn, %i.dl
  br i1 %i.do, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i40, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit49

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i40: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i48
  %i.dp = phi i64 [ 0, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i48 ], [ %i.dl, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38 ] ; 8 uses
  %i.dq = icmp eq i64 %i.dp, 0                    ; 2 uses
  %i.dr = mul nuw nsw i64 %i.dp, 3
  %i.ds = add nuw nsw i64 %i.dr, 1
  %i.dt = lshr i64 %i.ds, 1
  %i.du = select i1 %i.dq, i64 2, i64 %i.dt       ; 2 uses
  %i.dv = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.dw = shl nuw nsw i64 %i.du, 3
  %i.dx = add nuw nsw i64 %i.dw, 8
  %i.dy = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.dv, i64 noundef %i.dx) ; 3 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64
  store i64 %i.du, ptr %i.dy, align 8, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 8 uses
  br i1 %i.dq, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45, label %.preheader.i.i.i41

.preheader.i.i.i41:                               ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i40
  %i.eb = load ptr, ptr %i.ch, align 8, !tbaa !79 ; 8 uses
  %min.iters.check125 = icmp samesign ult i64 %i.dp, 10
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader.i.i.i41
  %i.ec = ptrtoaddr ptr %i.eb to i64
  %i.ed = sub i64 %i.dz, %i.ec
  %i.ee = add i64 %i.ed, 7
  %diff.check123 = icmp ult i64 %i.ee, 31
  br i1 %diff.check123, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec127 = and i64 %i.dp, 4294967292           ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index129 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load130 = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !76
  %wide.load131 = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index129 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x ptr> %wide.load130, ptr %i.eh, align 8, !tbaa !76
  store <2 x ptr> %wide.load131, ptr %i.ei, align 8, !tbaa !76
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.ej, label %middle.block133, label %vector.body128, !llvm.loop !274

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.dp, %n.vec127
  br i1 %cmp.n134, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i44, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %vector.memcheck122, %.preheader.i.i.i41, %middle.block133
  %.016.i.i.i42.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader.i.i.i41 ], [ %n.vec127, %middle.block133 ] ; 3 uses
  %xtraiter158 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol

scalar.ph124.prol:                                ; preds = %scalar.ph124.preheader, %scalar.ph124.prol
  %.016.i.i.i42.prol = phi i64 [ %i.en, %scalar.ph124.prol ], [ %.016.i.i.i42.ph, %scalar.ph124.preheader ] ; 3 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %scalar.ph124.prol ], [ 0, %scalar.ph124.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.016.i.i.i42.prol
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !76
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.016.i.i.i42.prol
  store ptr %i.el, ptr %i.em, align 8, !tbaa !76
  %i.en = add nuw nsw i64 %.016.i.i.i42.prol, 1   ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %scalar.ph124.prol.loopexit, label %scalar.ph124.prol, !llvm.loop !275

scalar.ph124.prol.loopexit:                       ; preds = %scalar.ph124.prol, %scalar.ph124.preheader
  %.016.i.i.i42.unr = phi i64 [ %.016.i.i.i42.ph, %scalar.ph124.preheader ], [ %i.en, %scalar.ph124.prol ]
  %i.eo = sub nsw i64 %.016.i.i.i42.ph, %i.dp
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i44, label %scalar.ph124

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i44: ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124, %middle.block133
  %i.eq = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !80
  %i.es = load ptr, ptr %i.cd, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.et = shl i64 %i.er, 3
  %i.eu = add i64 %i.et, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.es, i64 noundef %i.eu, ptr noundef nonnull %i.eq)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %.016.i.i.i42 = phi i64 [ %i.fk, %scalar.ph124 ], [ %.016.i.i.i42.unr, %scalar.ph124.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.016.i.i.i42
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !76
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.016.i.i.i42
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !76
  %i.ey = add nuw nsw i64 %.016.i.i.i42, 1        ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !76
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ey
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !76
  %i.fc = add nuw nsw i64 %.016.i.i.i42, 2        ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fc
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !76
  %i.fg = add nuw nsw i64 %.016.i.i.i42, 3        ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !76
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fg
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !76
  %i.fk = add nuw nsw i64 %.016.i.i.i42, 4        ; 2 uses
  %exitcond.not.i.i.i43.3 = icmp eq i64 %i.fk, %i.dp
  br i1 %exitcond.not.i.i.i43.3, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i44, label %scalar.ph124, !llvm.loop !276

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i44, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i40
  store ptr %i.ea, ptr %i.ch, align 8, !tbaa !79
  %.pre.i.i46 = load i32, ptr %i.cg, align 4, !tbaa !65 ; 2 uses
  %.pre.i47 = zext i32 %.pre.i.i46 to i64
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit49

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit49: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45
  %.pre-phi.i39 = phi i64 [ %i.dl, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38 ], [ %.pre.i47, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45 ]
  %i.fl = phi i32 [ %i.dh, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38 ], [ %.pre.i.i46, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45 ]
  %i.fm = phi ptr [ %i.di, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i38 ], [ %i.ea, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i45 ]
  %i.fn = load ptr, ptr %2, align 8, !tbaa !76
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.pre-phi.i39
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !76
  %i.fp = add i32 %i.fl, 1
  store i32 %i.fp, ptr %i.cg, align 4, !tbaa !65
  br label %bb.q

bb.i:                                             ; preds = %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit
  %i.fq = add i32 %i.bz, 1
  store i32 %i.fq, ptr %i.by, align 8, !tbaa !56
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.ft = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.fs, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fu, i8 0, i64 20, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !48
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 4 uses
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !48
  store i32 -1073741822, ptr %i.ft, align 8
  %i.ga = load i32, ptr %i.h, align 8             ; 2 uses
  %i.gb = and i32 %i.ga, 1073741823
  %i.gc = or disjoint i32 %i.gb, -2147483648
  store i32 %i.gc, ptr %i.h, align 8
  %i.gd = load i32, ptr %i.fu, align 4, !tbaa !48
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.fv, align 4, !tbaa !48
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !48
  %i.gf = add i32 %i.ga, 1073741823
  %i.gg = and i32 %i.gf, 1073741823               ; 2 uses
  %i.gh = or disjoint i32 %i.gg, -2147483648
  store i32 %i.gh, ptr %i.h, align 8
  %i.gi = icmp eq i32 %i.gg, 0
  br i1 %i.gi, label %.preheader78, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

.preheader78:                                     ; preds = %bb.i, %bb.k
  %i.gj = phi i32 [ %i.ha, %bb.k ], [ -2147483648, %bb.i ]
  %.014.i.i = phi ptr [ %i.gm, %bb.k ], [ %i.h, %bb.i ] ; 3 uses
  %i.gk = icmp ugt i32 %i.gj, -1073741825
  %i.gl = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !48 ; 6 uses
  br i1 %i.gk, label %bb.j, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i

bb.j:                                             ; preds = %.preheader78
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i51

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i51: ; preds = %bb.j
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !80
  %i.gq = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.gr = shl i64 %i.gp, 3
  %i.gs = add i64 %i.gr, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.gq, i64 noundef %i.gs, ptr noundef nonnull %i.go)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i51, %bb.j
  %i.gt = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.gt, i64 noundef 24, ptr noundef nonnull %.014.i.i)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i: ; preds = %.preheader78
  %i.gu = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.gu, i64 noundef 24, ptr noundef nonnull %.014.i.i)
  %i.gv = icmp eq ptr %i.gm, null
  br i1 %i.gv, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i
  %i.gw = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.gx = add i32 %i.gw, 1073741823
  %i.gy = and i32 %i.gx, 1073741823               ; 2 uses
  %i.gz = and i32 %i.gw, -1073741824
  %i.ha = or disjoint i32 %i.gy, %i.gz            ; 2 uses
  store i32 %i.ha, ptr %i.gm, align 8
  %.not.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i, label %.preheader78, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i, %bb.k, %bb.i, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i
  store ptr %i.ft, ptr %1, align 8, !tbaa !55
  %i.hb = load i32, ptr %i.fu, align 4, !tbaa !65 ; 3 uses
  %i.hc = load ptr, ptr %i.fz, align 8, !tbaa !79 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i62, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i52

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i62: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit
  %i.he = icmp eq i32 %i.hb, 0
  tail call void @llvm.assume(i1 %i.he)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i54

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i52: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit
  %i.hf = zext i32 %i.hb to i64                   ; 3 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !80
  %i.hi = icmp eq i64 %i.hh, %i.hf
  br i1 %i.hi, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i54, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10rpush_backEPNS5_4cellERKPNS3_5boundE.exit63

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i54: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i52, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i62
  %i.hj = phi i64 [ 0, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i62 ], [ %i.hf, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.thread.i.i52 ] ; 8 uses
  %i.hk = icmp eq i64 %i.hj, 0                    ; 2 uses
  %i.hl = mul nuw nsw i64 %i.hj, 3
  %i.hm = add nuw nsw i64 %i.hl, 1
  %i.hn = lshr i64 %i.hm, 1
  %i.ho = select i1 %i.hk, i64 2, i64 %i.hn       ; 2 uses
  %i.hp = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.hq = shl nuw nsw i64 %i.ho, 3
  %i.hr = add nuw nsw i64 %i.hq, 8
  %i.hs = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.hp, i64 noundef %i.hr) ; 3 uses
  %i.ht = ptrtoaddr ptr %i.hs to i64
  store i64 %i.ho, ptr %i.hs, align 8, !tbaa !80
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 8 uses
  br i1 %i.hk, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i59, label %.preheader.i.i.i55

.preheader.i.i.i55:                               ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i54
  %i.hv = load ptr, ptr %i.fz, align 8, !tbaa !79 ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.hj, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.i55
  %i.hw = ptrtoaddr ptr %i.hv to i64
  %i.hx = sub i64 %i.ht, %i.hw
  %i.hy = add i64 %i.hx, 7
  %diff.check = icmp ult i64 %i.hy, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hj, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %index ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load = load <2 x ptr>, ptr %i.hz, align 8, !tbaa !76
  %wide.load121 = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !76
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <2 x ptr> %wide.load, ptr %i.ib, align 8, !tbaa !76
  store <2 x ptr> %wide.load121, ptr %i.ic, align 8, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i58, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i.i.i55, %middle.block
  %.016.i.i.i56.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i55 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.hj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.i.i.i56.prol = phi i64 [ %i.ih, %scalar.ph.prol ], [ %.016.i.i.i56.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.016.i.i.i56.prol
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !76
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.016.i.i.i56.prol
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !76
  %i.ih = add nuw nsw i64 %.016.i.i.i56.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !278

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.i.i.i56.unr = phi i64 [ %.016.i.i.i56.ph, %scalar.ph.preheader ], [ %i.ih, %scalar.ph.prol ]
  %i.ii = sub nsw i64 %.016.i.i.i56.ph, %i.hj
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i58, label %scalar.ph

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i.i58: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ik = getelementptr inbounds i8, ptr %i.hv, i64 -8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !80
  %i.im = load ptr, ptr %i.fr, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.in = shl i64 %i.il, 3
  %i.io = add i64 %i.in, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.im, i64 noundef %i.io, ptr noundef nonnull %i.ik)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6expandERPPNS3_5boundE.exit.i.i59

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016.i.i.i56 = phi i64 [ %i.je, %scalar.ph ], [ %.016.i.i.i56.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.016.i.i.i56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !76
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.016.i.i.i56
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !76
  %i.is = add nuw nsw i64 %.016.i.i.i56, 1        ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !76
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.is
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !76
  %i.iw = add nuw nsw i64 %.016.i.i.i56, 2        ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !76
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.iw
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !76
  %i.ja = add nuw nsw i64 %.016.i.i.i56, 3        ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !76
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ja
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !76
  %i.je = add nuw nsw i64 %.016.i.i.i56, 4        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj:bb.a
    i32 3, label %bb.d
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %.024.12, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !48
  %i.br = icmp eq i32 %2, %i.bq
  br i1 %i.br, label %bb.c, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.in.12 = getelementptr inbounds nuw i8, ptr %.024.12, i64 16
  %.024.13 = load ptr, ptr %.1.in.12, align 8, !tbaa !48 ; 5 uses
  %i.bs = load i32, ptr %.024.13, align 8
  %i.bt = lshr i32 %i.bs, 30
  switch i32 %i.bt, label %default.unreachable28 [
    i32 0, label %bb.ad
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.d
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %.024.13, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !48
  %i.bw = icmp eq i32 %2, %i.bv
  br i1 %i.bw, label %bb.c, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.in.13 = getelementptr inbounds nuw i8, ptr %.024.13, i64 16
  %.024.14 = load ptr, ptr %.1.in.13, align 8, !tbaa !48 ; 5 uses
  %i.bx = load i32, ptr %.024.14, align 8
  %i.by = lshr i32 %i.bx, 30
  switch i32 %i.by, label %default.unreachable28 [
    i32 0, label %bb.af
    i32 1, label %bb.af
    i32 2, label %bb.ag
    i32 3, label %bb.d
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.14, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !48
  %i.cb = icmp eq i32 %2, %i.ca
  br i1 %i.cb, label %bb.c, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.in.14 = getelementptr inbounds nuw i8, ptr %.024.14, i64 16
  %.024.15 = load ptr, ptr %.1.in.14, align 8, !tbaa !48 ; 5 uses
  %i.cc = load i32, ptr %.024.15, align 8
  %i.cd = lshr i32 %i.cc, 30
  switch i32 %i.cd, label %default.unreachable28 [
    i32 0, label %bb.ah
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.d
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %.024.15, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !48
  %i.cg = icmp eq i32 %2, %i.cf
  br i1 %i.cg, label %bb.c, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.in.15 = getelementptr inbounds nuw i8, ptr %.024.15, i64 16
  %.024.16 = load ptr, ptr %.1.in.15, align 8, !tbaa !48 ; 4 uses
  %i.ch = load i32, ptr %.024.16, align 8
  %i.ci = lshr i32 %i.ch, 30
  switch i32 %i.ci, label %default.unreachable28 [
    i32 0, label %bb.aj
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.d
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.16, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !48
  %i.cl = icmp eq i32 %2, %i.ck
  br i1 %i.cl, label %bb.c, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  tail call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE6rerootERNS5_3refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.cm = load ptr, ptr %1, align 8, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.cp = zext i32 %2 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  br label %bb.al

bb.al:                                            ; preds = %bb.d, %bb.c, %bb.ak
  %.018 = phi ptr [ %i.cq, %bb.ak ], [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.018
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node5upperEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i32 noundef %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node6parentEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node11first_childEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node12next_siblingEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node4prevEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE4node4nextEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE4node12is_unboundedEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i32 noundef %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i32 noundef %1)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = icmp eq ptr %i.i, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4node4pushEPNS2_5boundE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 536870912
  %.not = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %0, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.g = and i32 %i.d, 536870911
  %. = select i1 %.not, i64 24, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3setERNS5_3refEjRKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE5bound8is_lowerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 536870912
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3setERNS5_3refEjRKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 14 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741823
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %i.j, ptr %i.i, align 8, !tbaa !76
  br label %bb.k

_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48
  %i.o = icmp ugt i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.r = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.q, i64 noundef 24) ; 4 uses
  store i32 -1073741823, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = tail call noundef i32 @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE10get_valuesEPNS5_4cellERPPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  store i32 %i.u, ptr %i.s, align 4, !tbaa !48
  %i.v = load i32, ptr %i.a, align 8              ; 2 uses
  %i.w = add i32 %i.v, 1073741823
  %i.x = and i32 %i.w, 1073741823                 ; 2 uses
  %i.y = and i32 %i.v, -1073741824
  %i.z = or disjoint i32 %i.x, %i.y               ; 2 uses
  store i32 %i.z, ptr %i.a, align 8
  %i.aa = icmp eq i32 %i.x, 0
  br i1 %i.aa, label %.preheader, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

.preheader:                                       ; preds = %bb.d, %bb.f
  %i.ab = phi i32 [ %i.as, %bb.f ], [ %i.z, %bb.d ]
  %.014.i.i44 = phi ptr [ %i.ae, %bb.f ], [ %i.a, %bb.d ] ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i44, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 6 uses
  br i1 %i.ac, label %bb.e, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i45

bb.e:                                             ; preds = %.preheader
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i50, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i49

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i49: ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.aj = shl i64 %i.ah, 3
  %i.ak = add i64 %i.aj, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ai, i64 noundef %i.ak, ptr noundef nonnull %i.ag)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i50

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i50: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i49, %bb.e
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.al, i64 noundef 24, ptr noundef nonnull %.014.i.i44)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i45: ; preds = %.preheader
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.am, i64 noundef 24, ptr noundef nonnull %.014.i.i44)
  %i.an = icmp eq ptr %i.ae, null
  br i1 %i.an, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i45
  %i.ao = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ap = add i32 %i.ao, 1073741823
  %i.aq = and i32 %i.ap, 1073741823               ; 2 uses
  %i.ar = and i32 %i.ao, -1073741824
  %i.as = or disjoint i32 %i.aq, %i.ar            ; 2 uses
  store i32 %i.as, ptr %i.ae, align 8
  %.not.i.i48 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i48, label %.preheader, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i45, %bb.f, %bb.d, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i50
  store ptr %i.r, ptr %1, align 8, !tbaa !55
  store i32 0, ptr %i.k, align 8, !tbaa !56
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.au = zext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !76
  br label %bb.k

bb.g:                                             ; preds = %_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE4sizeERKNS5_3refE.exit
  %i.ax = add i32 %i.l, 1
  store i32 %i.ax, ptr %i.k, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.ba = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.az, i64 noundef 24) ; 6 uses
  store i32 -1073741823, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i8 0, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !48
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !48
  store i32 -1073741822, ptr %i.ba, align 8
  %i.bh = load i32, ptr %i.a, align 8             ; 2 uses
  %i.bi = and i32 %i.bh, 1073741823
  store i32 %i.bi, ptr %i.a, align 8
  store i32 %2, ptr %i.bc, align 4, !tbaa !48
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bk = zext i32 %2 to i64                      ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !85
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !48
  %i.bo = add i32 %i.bh, 1073741823
  %i.bp = and i32 %i.bo, 1073741823               ; 2 uses
  store i32 %i.bp, ptr %i.a, align 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader52, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

.preheader52:                                     ; preds = %bb.g, %bb.i
  %i.br = phi i32 [ %i.ci, %bb.i ], [ 0, %bb.g ]
  %.014.i.i = phi ptr [ %i.bu, %bb.i ], [ %i.a, %bb.g ] ; 3 uses
  %i.bs = icmp ugt i32 %i.br, -1073741825
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !48 ; 6 uses
  br i1 %i.bs, label %bb.h, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i

bb.h:                                             ; preds = %.preheader52
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i: ; preds = %bb.h
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !80
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.bz = shl i64 %i.bx, 3
  %i.ca = add i64 %i.bz, 8
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.by, i64 noundef %i.ca, ptr noundef nonnull %i.bw)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE8capacityEPPNS3_5boundE.exit.i.i.i, %bb.h
  %i.cb = load ptr, ptr %i.ay, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.cb, i64 noundef 24, ptr noundef nonnull %.014.i.i)
  br label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i: ; preds = %.preheader52
  %i.cc = load ptr, ptr %i.ay, align 8, !tbaa !74, !nonnull !41, !align !42
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.cc, i64 noundef 24, ptr noundef nonnull %.014.i.i)
  %i.cd = icmp eq ptr %i.bu, null
  br i1 %i.cd, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i
  %i.ce = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.cf = add i32 %i.ce, 1073741823
  %i.cg = and i32 %i.cf, 1073741823               ; 2 uses
  %i.ch = and i32 %i.ce, -1073741824
  %i.ci = or disjoint i32 %i.cg, %i.ch            ; 2 uses
  store i32 %i.ci, ptr %i.bu, align 8
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %.preheader52, label %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit

_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit: ; preds = %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.i.i, %bb.i, %bb.g, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE17deallocate_valuesEPPNS3_5boundE.exit.thread.i.i
  store ptr %i.ba, ptr %1, align 8, !tbaa !55
  %i.cj = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.bk
  %i.cl = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !76
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !74, !nonnull !41, !align !42
  %i.co = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.cn, i64 noundef 24) ; 6 uses
  store i32 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.cp, align 4, !tbaa !48
  %i.cr = load ptr, ptr %3, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !85
  %i.ct = load ptr, ptr %1, align 8, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !48
  store ptr %i.co, ptr %1, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7dec_refEPNS5_4cellE.exit, %_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE7unshareERNS5_3refE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE5bound1xEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 536870911
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4node15set_first_childEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4node16set_next_siblingEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4node8set_nextEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE4node8set_prevEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE10constraintC2ENS3_4kindE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpfEE10constraintC5ENS3_4kindE) align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE10constraint8get_kindEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK9subpaving9context_tINS_10config_mpfEE10constraint9timestampEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE10constraint11set_visitedEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN9subpaving9context_tINS_10config_mpfEE6clause12get_obj_sizeEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = add i32 %i.a, 24
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE6clauseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpfEE6clauseC5Ev) align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !95
  ret void
end_hunk_1
