Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/fpa_decl_plugin?download=true
inline.NumInlined: 980
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK9parameter7get_intEv
define linkonce_odr hidden noundef i32 @_ZNK9parameter7get_intEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !102
  switch i8 %i.b, label %bb.b [
    i8 0, label %_ZSt3getIiJiP3ast6symbolP7zstring8rationaldjEERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.120, ptr %i.d, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.119, ptr %i.f, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZSt3getIiJiP3ast6symbolP7zstring8rationaldjEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !35
  ret i32 %i.g
}

declare void @_ZN11mpf_manager7mk_ninfEjjR3mpf(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11mpf_manager7mk_pinfEjjR3mpf(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11mpf_manager6mk_nanEjjR3mpf(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11mpf_manager8mk_pzeroEjjR3mpf(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11mpf_manager8mk_nzeroEjjR3mpf(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN15fpa_decl_plugin10is_numeralEP4expr(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.scoped_mpf, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %2, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = invoke noundef zeroext i1 @_ZN15fpa_decl_plugin10is_numeralEP4exprR3mpf(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !179, !nonnull !64, !align !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 728
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66, !nonnull !64, !align !65
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #19
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %i.c

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179, !nonnull !64, !align !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66, !nonnull !64, !align !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN11mpf_manager3delER3mpf.exit unwind label %bb.b

_ZN11mpf_manager3delER3mpf.exit:                  ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_Z9is_app_ofPK4exprii.exit19.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 11 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_Z9is_app_ofPK4exprii.exit19.thread, label %_Z9is_app_ofPK4exprii.exit

_Z9is_app_ofPK4exprii.exit:                       ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq i32 %i.k, %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 1
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, label %_Z9is_app_ofPK4exprii.exit13

_Z9is_app_ofPK4exprii.exit13:                     ; preds = %_Z9is_app_ofPK4exprii.exit
  %i.q = load i32, ptr %i.j, align 8, !tbaa !93
  %i.r = icmp eq i32 %i.q, %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, label %_Z9is_app_ofPK4exprii.exit15

_Z9is_app_ofPK4exprii.exit15:                     ; preds = %_Z9is_app_ofPK4exprii.exit13
  %i.w = load i32, ptr %i.j, align 8, !tbaa !93
  %i.x = icmp eq i32 %i.w, %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 3
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, label %_Z9is_app_ofPK4exprii.exit17

_Z9is_app_ofPK4exprii.exit17:                     ; preds = %_Z9is_app_ofPK4exprii.exit15
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !93
  %i.ad = icmp eq i32 %i.ac, %i.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 2
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, label %_Z9is_app_ofPK4exprii.exit19

_Z9is_app_ofPK4exprii.exit19:                     ; preds = %_Z9is_app_ofPK4exprii.exit17
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !93
  %i.aj = icmp eq i32 %i.ai, %i.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 4
  %i.an = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %i.an, label %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, label %_Z9is_app_ofPK4exprii.exit19.thread

_Z9is_app_ofPK4exprii.exit19.thread.sink.split:   ; preds = %_Z9is_app_ofPK4exprii.exit19, %_Z9is_app_ofPK4exprii.exit17, %_Z9is_app_ofPK4exprii.exit15, %_Z9is_app_ofPK4exprii.exit13, %_Z9is_app_ofPK4exprii.exit
  %.sink = phi i32 [ 2, %_Z9is_app_ofPK4exprii.exit17 ], [ 3, %_Z9is_app_ofPK4exprii.exit15 ], [ 0, %_Z9is_app_ofPK4exprii.exit13 ], [ 1, %_Z9is_app_ofPK4exprii.exit ], [ 4, %_Z9is_app_ofPK4exprii.exit19 ]
  store i32 %.sink, ptr %2, align 4, !tbaa !181
  br label %_Z9is_app_ofPK4exprii.exit19.thread

_Z9is_app_ofPK4exprii.exit19.thread:              ; preds = %_Z9is_app_ofPK4exprii.exit19.thread.sink.split, %bb.b, %bb.a, %_Z9is_app_ofPK4exprii.exit19
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_Z9is_app_ofPK4exprii.exit19 ], [ true, %_Z9is_app_ofPK4exprii.exit19.thread.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN15fpa_decl_plugin13is_rm_numeralEP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode.exit, label %_Z9is_app_ofPK4exprii.exit.i

_Z9is_app_ofPK4exprii.exit.i:                     ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq i32 %i.k, %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ult i32 %i.n, 5
  %or.cond8 = select i1 %i.l, i1 %i.o, i1 false
  br label %_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode.exit

_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode.exit: ; preds = %_Z9is_app_ofPK4exprii.exit.i, %bb.a, %bb.b
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %or.cond8, %_Z9is_app_ofPK4exprii.exit.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15fpa_decl_plugin3delERK9parameter(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !102
  switch i8 %i.c, label %bb.b [
    i8 6, label %_ZNK9parameter10get_ext_idEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !173

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.120, ptr %i.e, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.119, ptr %i.g, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZNK9parameter10get_ext_idEv.exit:                ; preds = %bb.a
  %i.h = load i32, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.h, ptr %i.a, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  call void @_ZN10chashtableIjN15fpa_decl_plugin13mpf_hash_procENS0_11mpf_eq_procEE5eraseERKj(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.j = load i32, ptr %i.a, align 4, !tbaa !35
  %i.k = call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.k, label %_ZN15fpa_decl_plugin11recycled_idEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9parameter10get_ext_idEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !69 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !35
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %.pre2.i.i.i, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  store i32 %i.j, ptr %i.x, align 4, !tbaa !35
  %i.y = add i32 %i.t, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !35
  br label %_ZN15fpa_decl_plugin11recycled_idEj.exit

_ZN15fpa_decl_plugin11recycled_idEj.exit:         ; preds = %_ZNK9parameter10get_ext_idEv.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66, !nonnull !64, !align !65
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15fpa_decl_plugin9translateERK9parameterR11decl_plugin(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.parameter) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !102
  switch i8 %i.b, label %bb.b [
    i8 6, label %_ZNK9parameter10get_ext_idEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.120, ptr %i.d, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.119, ptr %i.f, align 8, !tbaa !174
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

_ZNK9parameter10get_ext_idEv.exit:                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.h = load i32, ptr %2, align 8, !tbaa !35
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j
  %i.l = tail call noundef i32 @_ZN15fpa_decl_plugin5mk_idERK3mpf(ptr noundef nonnull align 8 dereferenceable(1008) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  store i32 %i.l, ptr %0, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %i.m, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15fpa_decl_plugin8finalizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN11ast_manager7dec_refEP3ast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !72
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN11ast_manager7dec_refEP3ast.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef nonnull %i.b)
  br label %_ZN11ast_manager7dec_refEP3ast.exit

_ZN11ast_manager7dec_refEP3ast.exit:              ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 3 uses
  %.not2 = icmp eq ptr %i.j, null
  br i1 %.not2, label %_ZN11ast_manager7dec_refEP3ast.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager7dec_refEP3ast.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !72
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %_ZN11ast_manager7dec_refEP3ast.exit4

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.j)
  br label %_ZN11ast_manager7dec_refEP3ast.exit4

_ZN11ast_manager7dec_refEP3ast.exit4:             ; preds = %bb.e, %bb.d, %_ZN11ast_manager7dec_refEP3ast.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN15fpa_decl_plugin8mk_freshEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 1008) ; 2 uses
  tail call void @_ZN15fpa_decl_pluginC2Ev(ptr noundef nonnull align 8 dereferenceable(1008) %i.a)
  ret ptr %i.a
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_0
