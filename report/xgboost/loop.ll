Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/loop?download=true
inline.NumInlined: 1672
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost6system12FailWithCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !29
  %i.i = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.i, ptr %i.a, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !27
  store ptr %i.c, ptr %1, align 8, !tbaa !29
  store i64 0, ptr %i.k, align 8, !tbaa !27
  store i8 0, ptr %i.c, align 8, !tbaa !28
  %i.m = tail call ptr @__errno_location() #29
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.47, i32 noundef 79)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.p = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc.i unwind label %bb.c, !noalias !287 ; 7 uses

.noexc.i:                                         ; preds = %.noexc
  %i.q = load ptr, ptr %2, align 8, !tbaa !29, !noalias !289 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i: ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27, !noalias !289 ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !noalias !287
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %.noexc.i
  %i.y = load i64, ptr %i.r, align 8, !tbaa !28, !noalias !289
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !27, !noalias !289
  store i64 %i.y, ptr %i.t, align 8, !tbaa !28, !noalias !289
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !29, !noalias !287 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !28, !noalias !287
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27, !noalias !287
  br label %.body

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i
  %.sink.i.i = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.af = phi i64 [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  store ptr %.sink.i.i, ptr %i.p, align 8, !tbaa !24, !noalias !289
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !27, !noalias !289
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.n, ptr %i.ah, align 8, !tbaa !106, !noalias !289
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.o, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !155, !noalias !289
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr null, ptr %i.ai, align 8, !tbaa !79, !noalias !289
  store ptr %i.p, ptr %0, align 8, !tbaa !123, !alias.scope !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.al = load i64, ptr %i.a, align 8, !tbaa !28
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.z, %bb.c ]
  %i.ao = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %.body
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5rabit5utils10PollHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #27
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !90
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIi6pollfdSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !90
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt13unordered_mapIi6pollfdSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEED2Ev.exit

_ZNSt13unordered_mapIi6pollfdSt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective4Loop7ProcessEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %4 = alloca %"class.std::queue", align 8        ; 20 uses
  %5 = alloca %"struct.xgboost::collective::Loop::Op", align 8 ; 9 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 9 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %9 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.a, ptr %3, align 8, !tbaa !295
  store i8 0, ptr %i.b, align 8, !tbaa !296
  %i.aa = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aa) #30
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !296
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_1clEv.exit.i", label %"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit"

"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_1clEv.exit.i": ; preds = %bb.d, %.noexc41
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !75, !range !76, !noundef !77
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit", label %bb.e

bb.e:                                             ; preds = %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_1clEv.exit.i"
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc41 unwind label %bb.g

.noexc41:                                         ; preds = %bb.e
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_1clEv.exit.i", label %"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !290

"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.noexc41, %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_1clEv.exit.i", %bb.d
  %i.aj = load i8, ptr %i.f, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  br i1 %i.ak, label %bb.bq, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit66

bb.g:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bx

bb.h:                                             ; preds = %"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN7xgboost10collective4Loop2OpESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
          to label %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit.preheader unwind label %bb.bb

_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit.preheader: ; preds = %bb.h
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !78  ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit.preheader, %_ZN7xgboost10collective4Loop2OpD2Ev.exit
  %i.aq = phi ptr [ %i.hf, %_ZN7xgboost10collective4Loop2OpD2Ev.exit ], [ %i.ao, %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 40, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !94
  store ptr null, ptr %i.as, align 8, !tbaa !97
  store <2 x ptr> %i.at, ptr %i.g, align 8, !tbaa !94
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -56
  %.not.i88 = icmp eq ptr %i.aq, %i.av
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !97 ; 15 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.aw, null      ; 2 uses
  br i1 %.not.i88, label %bb.p, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i.i1.i, label %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ax, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !114
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !3
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !3
  br label %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.m ], [ %i.bk, %bb.n ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.o, label %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i, !prof !117

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17
  br label %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i

_ZN7xgboost10collective4Loop2OpD2Ev.exit.i:       ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %bb.i
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  br label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE9pop_frontEv.exit

bb.p:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i.i1.i, label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bo, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !114
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !4
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !4
  br label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i89 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i89, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.t ], [ %i.cb, %bb.u ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.v, label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i, !prof !117

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17
  br label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i

_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !103
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef 504) #27
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.k, align 8, !tbaa !91
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !105 ; 3 uses
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 504
  store ptr %i.ch, ptr %i.i, align 8, !tbaa !93
  br label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE9pop_frontEv.exit: ; preds = %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i, %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i
  %storemerge.i = phi ptr [ %i.bn, %_ZN7xgboost10collective4Loop2OpD2Ev.exit.i ], [ %i.cg, %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE16_M_pop_front_auxEv.exit.i ]
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !102
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !125 ; 4 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -56
  %.not.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE9pop_frontEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 40, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !97  ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.g, align 8, !tbaa !94
  store <2 x ptr> %i.cn, ptr %i.cl, align 8, !tbaa !94
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !106
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !106
  br label %_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i

_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  br label %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit

bb.aa:                                            ; preds = %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE9pop_frontEv.exit
  %i.cv = load ptr, ptr %i.o, align 8, !tbaa !91  ; 3 uses
  %i.cw = load ptr, ptr %i.p, align 8, !tbaa !91  ; 6 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %i.db = icmp ne ptr %i.cv, null
  %.neg.i.i.i = sext i1 %i.db to i64
  %i.dc = add nsw i64 %i.da, %.neg.i.i.i
  %i.dd = mul nsw i64 %i.dc, 9
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.df = ptrtoint ptr %i.ci to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 56
  %i.dj = add nsw i64 %i.dd, %i.di
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !93
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 56
  %i.dq = add nsw i64 %i.dj, %i.dp
  %i.dr = icmp eq i64 %i.dq, 164703072086692425
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #30
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ds = load i64, ptr %i.s, align 8, !tbaa !127 ; 5 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.cx, %i.du
  %i.dw = ashr exact i64 %i.dv, 3
  %i.dx = sub i64 %i.ds, %i.dw
  %i.dy = icmp ult i64 %i.dx, 2
  br i1 %i.dy, label %bb.ad, label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dz = add nsw i64 %i.da, 1                    ; 2 uses
  %i.ea = add nsw i64 %i.da, 2                    ; 3 uses
  %i.eb = shl nsw i64 %i.ea, 1
  %i.ec = icmp ugt i64 %i.ds, %i.eb
  br i1 %i.ec, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.ed = sub i64 %i.ds, %i.ea
  %i.ee = lshr i64 %i.ed, 1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ee ; 10 uses
  %i.eg = icmp ult ptr %i.ef, %i.cw
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  br i1 %i.eg, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.cy                    ; 3 uses
  %i.ek = icmp sgt i64 %i.ej, 8
  br i1 %i.ek, label %bb.ag, label %bb.ah, !prof !131

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ef, ptr nonnull align 8 %i.cw, i64 %i.ej, i1 false)
  br label %.noexc93

bb.ah:                                            ; preds = %bb.af
  %i.el = icmp eq i64 %i.ej, 8
  br i1 %i.el, label %bb.ai, label %.noexc93

bb.ai:                                            ; preds = %bb.ah
  %i.em = load ptr, ptr %i.cw, align 8, !tbaa !105
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !105
  br label %.noexc93

bb.aj:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dz ; 2 uses
  %i.eo = ptrtoint ptr %i.eh to i64
  %i.ep = sub i64 %i.eo, %i.cy                    ; 3 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 1
  br i1 %i.er, label %bb.ak, label %bb.al, !prof !131

bb.ak:                                            ; preds = %bb.aj
  %i.es = sub nsw i64 0, %i.eq
  %i.et = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.es
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr align 8 %i.cw, i64 %i.ep, i1 false)
  br label %.noexc93

bb.al:                                            ; preds = %bb.aj
  %i.eu = icmp eq i64 %i.ep, 8
  br i1 %i.eu, label %bb.am, label %.noexc93

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ew = load ptr, ptr %i.cw, align 8, !tbaa !105
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !105
  br label %.noexc93

bb.an:                                            ; preds = %bb.ad
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.ex = add i64 %i.ds, 2
  %i.ey = add i64 %i.ex, %.sroa.speculated.i      ; 5 uses
  %i.ez = icmp ugt i64 %i.ey, 1152921504606846975
  br i1 %i.ez, label %bb.ao, label %_ZNSt11_Deque_baseIN7xgboost10collective4Loop2OpESaIS3_EE15_M_allocate_mapEm.exit.i, !prof !117

bb.ao:                                            ; preds = %bb.an
  %i.fa = icmp ugt i64 %i.ey, 2305843009213693951
  br i1 %i.fa, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %bb.ao
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %bb.ao
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96:                                         ; preds = %.noexc3.i.i
  unreachable

_ZNSt11_Deque_baseIN7xgboost10collective4Loop2OpESaIS3_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.an
  %i.fb = shl nuw nsw i64 %i.ey, 3
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #28
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc97:                                         ; preds = %_ZNSt11_Deque_baseIN7xgboost10collective4Loop2OpESaIS3_EE15_M_allocate_mapEm.exit.i
  %i.fd = sub nsw i64 %i.ey, %i.ea
  %i.fe = lshr i64 %i.fd, 1
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fe ; 3 uses
  %i.fg = load ptr, ptr %i.p, align 8, !tbaa !104 ; 3 uses
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, 8
  br i1 %i.fm, label %bb.ap, label %bb.aq, !prof !131

bb.ap:                                            ; preds = %.noexc97
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr align 8 %i.fg, i64 %i.fl, i1 false)
  br label %_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i

bb.aq:                                            ; preds = %.noexc97
  %i.fn = icmp eq i64 %i.fl, 8
  br i1 %i.fn, label %bb.ar, label %_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i

bb.ar:                                            ; preds = %bb.aq
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !105
  store ptr %i.fo, ptr %i.ff, align 8, !tbaa !105
  br label %_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i

_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fp = load ptr, ptr %4, align 8, !tbaa !128
  %i.fq = load i64, ptr %i.s, align 8, !tbaa !127
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #27
  store ptr %i.fc, ptr %4, align 8, !tbaa !128
  store i64 %i.ey, ptr %i.s, align 8, !tbaa !127
  br label %.noexc93

.noexc93:                                         ; preds = %_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag
  %.0.i = phi ptr [ %i.ff, %_ZSt4copyIPPN7xgboost10collective4Loop2OpES5_ET0_T_S7_S6_.exit24.i ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.ag ], [ %i.ef, %bb.ah ], [ %i.ef, %bb.ak ], [ %i.ef, %bb.al ], [ %i.ef, %bb.am ] ; 3 uses
  store ptr %.0.i, ptr %i.p, align 8, !tbaa !91
  %i.fs = load ptr, ptr %.0.i, align 8, !tbaa !105 ; 2 uses
  store ptr %i.fs, ptr %i.t, align 8, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 504
  store ptr %i.ft, ptr %i.r, align 8, !tbaa !93
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.dz
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -8 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !91
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !105 ; 2 uses
  store ptr %i.fw, ptr %i.q, align 8, !tbaa !92
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 504
  store ptr %i.fx, ptr %i.m, align 8, !tbaa !93
  br label %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE22_M_reserve_map_at_backEm.exit.i

_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %.noexc93, %bb.ac
  %i.fy = invoke noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #28
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !105
  %i.gb = load ptr, ptr %i.l, align 8, !tbaa !125 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gb, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 40, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.h, align 8, !tbaa !97  ; 2 uses
  %i.ge = load <2 x ptr>, ptr %i.g, align 8, !tbaa !94
  store <2 x ptr> %i.ge, ptr %i.gc, align 8, !tbaa !94
  %.not.i.i.i.i.i90 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i90, label %.noexc43, label %bb.as

bb.as:                                            ; preds = %.noexc94
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 3 uses
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i91 = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i91, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !106
  %i.gi = add nsw i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !106
  br label %.noexc43

bb.au:                                            ; preds = %bb.as
  %i.gj = atomicrmw volatile add ptr %i.gf, i32 1 acq_rel, align 4 ; 0 uses
  br label %.noexc43

.noexc43:                                         ; preds = %bb.au, %bb.at, %.noexc94
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store ptr %i.gl, ptr %i.o, align 8, !tbaa !91
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !105 ; 3 uses
  store ptr %i.gm, ptr %i.q, align 8, !tbaa !92
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 504
  store ptr %i.gn, ptr %i.m, align 8, !tbaa !93
  br label %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit

_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit: ; preds = %.noexc43, %_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i
  %storemerge = phi ptr [ %i.cu, %_ZN7xgboost10collective4Loop2OpC2ERKS2_.exit.i.i ], [ %i.gm, %.noexc43 ]
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !125
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !97  ; 8 uses
  %.not.i.i.i44 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i44, label %_ZN7xgboost10collective4Loop2OpD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.gp, align 8, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !114
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !116
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #17, !inline_history !2
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !116
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #17, !inline_history !2
  br label %_ZN7xgboost10collective4Loop2OpD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i = phi i32 [ %i.gs, %bb.ay ], [ %i.hc, %bb.az ]
  %i.hd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.hd, label %bb.ba, label %_ZN7xgboost10collective4Loop2OpD2Ev.exit, !prof !117

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #17
  br label %_ZN7xgboost10collective4Loop2OpD2Ev.exit

_ZN7xgboost10collective4Loop2OpD2Ev.exit:         ; preds = %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.he = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !78  ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit._crit_edge, label %.lr.ph, !llvm.loop !291

bb.bb:                                            ; preds = %bb.h
  %i.hh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bw

bb.bc:                                            ; preds = %bb.bd
  %i.hi = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bv

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt11_Deque_baseIN7xgboost10collective4Loop2OpESaIS3_EE15_M_allocate_mapEm.exit.i, %_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EE22_M_reserve_map_at_backEm.exit.i, %.noexc3.i.i, %.noexc.i.i, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN7xgboost10collective4Loop2OpD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bv

_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit._crit_edge: ; preds = %_ZN7xgboost10collective4Loop2OpD2Ev.exit, %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit.preheader
  %i.hj = load i8, ptr %i.b, align 8, !tbaa !296, !range !76, !noundef !77
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit._crit_edge
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #30
          to label %.noexc45 unwind label %bb.bc

.noexc45:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_ZNSt5queueIN7xgboost10collective4Loop2OpESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit._crit_edge
  %i.hl = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
  %.not.i = icmp eq ptr %i.hl, null
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.hl) #17 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !296
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNK7xgboost10collective4Loop12ProcessQueueEPSt5queueINS1_2OpESt5dequeIS3_SaIS3_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull %4)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.hn = load ptr, ptr %6, align 8, !tbaa !123
  %.not.i46 = icmp eq ptr %i.hn, null
  br i1 %.not.i46, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #17 ; 2 uses
  %.not.i.i.i47 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i47, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.bj, %bb.bh
  %i.hp = phi i32 [ %i.ho, %bb.bh ], [ %i.ht, %bb.bj ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.hp) #30
          to label %.cont unwind label %bb.bn

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.bh
  %i.hq = load ptr, ptr %6, align 8, !tbaa !123
  store ptr null, ptr %6, align 8, !tbaa !123
  %i.hr = load ptr, ptr %i.v, align 8, !tbaa !123 ; 3 uses
  store ptr %i.hq, ptr %i.v, align 8, !tbaa !123
  %.not.i.i.i.i.i.i48 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i.i48, label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit", label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.hr) #17, !inline_history !7
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef 56) #27, !inline_history !7
  br label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit"

bb.bi:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.hs = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bu

bb.bj:                                            ; preds = %bb.bg
  %i.ht = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17 ; 2 uses
  %.not.i.i.i50 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i50, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit52, label %.invoke

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit52:       ; preds = %bb.bj
  %i.hu = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.hv = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit", label %bb.bk

bb.bk:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit52
  %i.hx = load i8, ptr %i.f, align 8, !tbaa !75, !range !76, !noundef !77
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit", label %bb.bl, !prof !131

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.hz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc53 unwind label %bb.bo

.noexc53:                                         ; preds = %bb.bl
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hz, ptr noundef nonnull @.str.1, i32 noundef 190)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.bo

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc53
  %i.ia = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.bp ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.11, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit"

bb.bn:                                            ; preds = %.invoke
  %i.id = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bt

bb.bo:                                            ; preds = %.noexc53, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.ie = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.if = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %.loopexit.split-lp105.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.bo, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.ie, %bb.bo ], [ %i.if, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ig = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17 ; 0 uses
  br label %bb.bt

"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit": ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit52, %bb.bm, %bb.bk, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %.sink = phi ptr [ %i.u, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i.i.i ], [ %i.u, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ %i.a, %bb.bk ], [ %i.a, %bb.bm ], [ %i.a, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit52 ]
  %i.ih = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #17 ; 0 uses
  %i.ii = load ptr, ptr %6, align 8, !tbaa !123   ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i62, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit"
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ii) #17, !inline_history !6
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef 56) #27, !inline_history !6
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE.exit", %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bq

bb.bq:                                            ; preds = %"_ZNSt18condition_variable4waitIZN7xgboost10collective4Loop7ProcessEvE3$_1EEvRSt11unique_lockISt5mutexET_.exit", %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.ij = load i8, ptr %i.b, align 8, !tbaa !296, !range !76, !noundef !77
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.br, label %_ZNSt11unique_lockISt5mutexED2Ev.exit64

bb.br:                                            ; preds = %bb.bq
  %i.il = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.il, null
  br i1 %.not.i.i63, label %_ZNSt11unique_lockISt5mutexED2Ev.exit64, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.im = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.il) #17 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit64

_ZNSt11unique_lockISt5mutexED2Ev.exit64:          ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %i.ak, label %bb.cu, label %.backedge

bb.bt:                                            ; preds = %bb.bn, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bn ], [ %.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bi
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bt ], [ %i.hs, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn26 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.pn.pn, %bb.bu ], [ %i.hi, %bb.bc ]
  call void @_ZNSt5dequeIN7xgboost10collective4Loop2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bb
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bv ], [ %i.hh, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.g
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.bw ], [ %i.am, %bb.g ] ; 3 uses
  %i.in = load i8, ptr %i.b, align 8, !tbaa !296, !range !76, !noundef !77
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.by, label %_ZNSt11unique_lockISt5mutexED2Ev.exit66

bb.by:                                            ; preds = %bb.bx
  %i.ip = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i65, label %_ZNSt11unique_lockISt5mutexED2Ev.exit66, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ip) #17 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit66

_ZNSt11unique_lockISt5mutexED2Ev.exit66:          ; preds = %bb.bz, %bb.by, %bb.bx, %bb.f
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %.pn26.pn.pn, %bb.bx ], [ %.pn26.pn.pn, %bb.by ], [ %.pn26.pn.pn, %bb.bz ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn, 0
  %.715 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ir = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.is = icmp eq i32 %.715, %i.ir
  %i.it = call ptr @__cxa_begin_catch(ptr %.7) #17 ; 2 uses
  br i1 %i.is, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.iu = load ptr, ptr %12, align 8, !tbaa !156
  store ptr null, ptr %12, align 8, !tbaa !156
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !156 ; 2 uses
  store ptr %i.iv, ptr %2, align 8, !tbaa !156
  store ptr %i.iu, ptr %i.w, align 8, !tbaa !156
  %.not.i.i67 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i67, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %.pr = load ptr, ptr %12, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not.i68 = icmp eq ptr %.pr, null
  br i1 %.not.i68, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !116
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef ptr %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.it) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.iz, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cd unwind label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN7xgboost10collective4FailENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %13, ptr noundef nonnull align 8 %14, ptr noundef nonnull @.str.1, i32 noundef 194)
          to label %bb.ce unwind label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  invoke fastcc void @"_ZZN7xgboost10collective4Loop7ProcessEvENK3$_0clEONS0_6ResultE"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cf unwind label %bb.cs

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  %i.ja = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.y
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cf
  %i.jc = load i64, ptr %i.y, align 8, !tbaa !28
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
