Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_arith?download=true
inline.NumInlined: 21080
inline.NumDeleted: 3671
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 250
loop-unroll.NumUnrolled: 317
begin_hunk_0_@_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE12expand_tableEv:bb.a
  %.not38.i = icmp eq i32 %i.w, 0
  br i1 %.not38.i, label %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE11alloc_tableEj.exit, %bb.g
  %.02839.i = phi ptr [ %i.ar, %bb.g ], [ %i.v, %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE11alloc_tableEj.exit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02839.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !932
  %spec.select.i.i = icmp sgt i32 %i.ac, -2147483647
  br i1 %spec.select.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph41.i
  %i.ad = load i32, ptr %.02839.i, align 4, !tbaa !933
  %i.ae = and i32 %i.ad, %i.x                     ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %.idx43.i = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx43.i ; 2 uses
  %.not2933.i = icmp eq i32 %i.ae, %i.c
  br i1 %.not2933.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d, %bb.b
  %.not3035.i = icmp eq i32 %i.ae, 0
  br i1 %.not3035.i, label %._crit_edge.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.034.i = phi ptr [ %i.al, %bb.d ], [ %i.ag, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !932
  %i.aj = icmp eq i32 %i.ai, -2147483648
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.ak = load i64, ptr %.02839.i, align 4
  store i64 %i.ak, ptr %.034.i, align 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.034.i, i64 8 ; 2 uses
  %.not29.i = icmp eq ptr %i.al, %i.aa
  br i1 %.not29.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !3775

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.f
  %.136.i = phi ptr [ %i.aq, %bb.f ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.136.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !932
  %i.ao = icmp eq i32 %i.an, -2147483648
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ap = load i64, ptr %.02839.i, align 4
  store i64 %i.ap, ptr %.136.i, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph37.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.136.i, i64 8 ; 2 uses
  %.not30.i = icmp eq ptr %i.aq, %i.ag
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !3776

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.142, i32 noundef 213, ptr noundef nonnull @.str.30)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph41.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.02839.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.z
  br i1 %.not.i, label %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit.loopexit, label %.lr.ph41.i, !llvm.loop !3777

_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit.loopexit: ; preds = %bb.g
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !1086
  br label %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit

_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit: ; preds = %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit.loopexit, %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE11alloc_tableEj.exit
  %i.as = phi ptr [ %.pre, %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit.loopexit ], [ %i.v, %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE11alloc_tableEj.exit ] ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE12delete_tableEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.as)
  br label %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE12delete_tableEv.exit

_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE12delete_tableEv.exit: ; preds = %_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EEN3smt12theory_arithINS2_6mi_extEE14var_value_hashENS5_12var_value_eqEE10move_tableEPS1_jS9_j.exit, %bb.h
  store ptr %i.f, ptr %i.u, align 8, !tbaa !1086
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1087
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.au, align 8, !tbaa !1088
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorISt4pairIiiELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.369", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1084   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !1084
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !201  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.133, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !470
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1018
  %i.r = load ptr, ptr %1, align 8, !tbaa !316    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !317  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !316
  %i.y = load i64, ptr %i.s, align 8, !tbaa !289
  store i64 %i.y, ptr %i.q, align 8, !tbaa !289
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !317
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !317
  store ptr %i.s, ptr %1, align 8, !tbaa !316
  store i64 0, ptr %i.aa, align 8, !tbaa !317
  store i8 0, ptr %i.s, align 8, !tbaa !289
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !316   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !289
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @__cxa_free_exception(ptr %i.o) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 6 uses
  %3 = ptrtoaddr ptr %i.aj to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1084  ; 9 uses
  %4 = ptrtoaddr ptr %i.ak to i64
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIPSt4pairIiiEjS2_ES0_IT_T1_ES3_T0_S4_.exit, label %_ZNK6vectorISt4pairIiiELb0EjE4sizeEv.exit

_ZNK6vectorISt4pairIiiELb0EjE4sizeEv.exit:        ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !201 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !201
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 5 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aq, 3          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorISt4pairIiiELb0EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %5 = sub i64 %3, %4
  %6 = add i64 %5, 7
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %7 = shl i64 %n.vec, 3                          ; 2 uses
  %8 = getelementptr i8, ptr %i.ap, i64 %7
  %9 = getelementptr i8, ptr %i.ak, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %10 ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ak, i64 %10 ; 2 uses
  %11 = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 4
  %wide.load49 = load <2 x i64>, ptr %11, align 4
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load49, ptr %i.aw, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !3778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %8, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %9, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.04.07.i.i.i.i.i.i, align 4
  store i64 %i.ay, ptr %.08.i.i.i.i.i.i, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bb = icmp eq ptr %i.az, %i.ar
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3779

_ZSt20uninitialized_move_nIPSt4pairIiiEjS2_ES0_IT_T1_ES3_T0_S4_.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorISt4pairIiiELb0EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorISt4pairIiiELb0EjE4sizeEv.exit
  %i.be = getelementptr inbounds i8, ptr %i.ak, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
  br label %_ZN6vectorISt4pairIiiELb0EjE7destroyEv.exit

_ZN6vectorISt4pairIiiELb0EjE7destroyEv.exit:      ; preds = %_ZSt20uninitialized_move_nIPSt4pairIiiEjS2_ES0_IT_T1_ES3_T0_S4_.exit, %.loopexit
  %i.bf = phi ptr [ %i.bd, %_ZSt20uninitialized_move_nIPSt4pairIiiEjS2_ES0_IT_T1_ES3_T0_S4_.exit ], [ %i.ap, %.loopexit ]
  store ptr %i.bf, ptr %0, align 8, !tbaa !1084
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !201
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorISt4pairIiiELb0EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14restore_vectorI7svectorISt4pairIiiEjEED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14restore_vectorI7svectorISt4pairIiiEjEE4undoEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3782, !nonnull !222, !align !223
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1084 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6vectorISt4pairIiiELb0EjE6shrinkEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3783
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !201
  br label %_ZN6vectorISt4pairIiiELb0EjE6shrinkEj.exit

_ZN6vectorISt4pairIiiELb0EjE6shrinkEj.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFP4exprvEZN3smt12theory_arithINS3_6mi_extEE25branch_infeasible_int_varEiEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3785, !nonnull !222, !align !223 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3786, !nonnull !222, !align !223
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1022 ; 2 uses
  %i.e = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 8, ptr noundef %i.d)
  %i.f = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.a, i32 noundef 0, i32 noundef 6, ptr noundef %i.d, ptr noundef %i.e)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFP4exprvEZN3smt12theory_arithINS3_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3smt12theory_arithINS1_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3smt12theory_arithINS_6mi_extEE25branch_infeasible_int_varEiEUlvE_, ptr %0, align 8, !tbaa !1786
  br label %_ZNSt14_Function_base13_Base_managerIZN3smt12theory_arithINS1_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1168
  br label %_ZNSt14_Function_base13_Base_managerIZN3smt12theory_arithINS1_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1787
  br label %_ZNSt14_Function_base13_Base_managerIZN3smt12theory_arithINS1_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3smt12theory_arithINS1_6mi_extEE25branch_infeasible_int_varEiEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_I8rationalLb1EjELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1140   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201  ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i.i.i, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i
  %.010.i.i.i = phi i32 [ %i.s, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i ], [ %i.d, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit ]
  %.048.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i ], [ %i.a, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit ] ; 3 uses
  %i.e = load ptr, ptr %.048.i.i.i, align 8, !tbaa !320 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i, label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !201  ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ]
  %.047.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.e, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.h = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !203 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.047.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.m = add i32 %.08.i.i.i.i.i.i.i.i.i.i.i, -1   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.048.i.i.i, align 8, !tbaa !320
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i.i.i.i.i ], [ %i.e, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
          to label %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.s = add i32 %.010.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !3787

_ZSt9destroy_nIP6vectorI8rationalLb1EjEjET_S4_T0_.exit: ; preds = %_ZSt8_DestroyI6vectorI8rationalLb1EjEEvPT_.exit.i.i.i, %bb.a, %_ZNK6vectorIS_I8rationalLb1EjELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIS_I8rationalLb1EjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.369", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1140   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !1140
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !201  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.133, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!3578 = distinct !{!3578, !3577, !"_ZNK8rational11to_rationalEv: argument 0"}
!3579 = !{!3578}
!3580 = distinct !{!3580, !"_ZNK8rational11to_rationalEv"}
!3581 = distinct !{!3581, !3580, !"_ZNK8rational11to_rationalEv: argument 0"}
!3582 = !{!3581}
!3583 = distinct !{!3583, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!3584 = distinct !{!3584, !3583, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3585 = distinct !{!3585, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!3586 = distinct !{!3586, !3585, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!3587 = !{!3584}
!3588 = !{!3586}
!3589 = !{!3586, !3584}
!3590 = distinct !{!3590, !"_Z4ceilRK8rational"}
!3591 = distinct !{!3591, !3590, !"_Z4ceilRK8rational: argument 0"}
!3592 = !{!3591}
!3593 = distinct !{!3593, !206}
!3594 = !{!1652, !193, i64 420}
!3595 = distinct !{!3595, !206}
!3596 = distinct !{!3596, !206}
!3597 = distinct !{!3597, !206}
!3598 = distinct !{!3598, !206}
!3599 = distinct !{!3599, !"_ZNK8rational11to_rationalEv"}
!3600 = distinct !{!3600, !3599, !"_ZNK8rational11to_rationalEv: argument 0"}
!3601 = distinct !{!3601, !"_ZNK8rational11to_rationalEv"}
!3602 = distinct !{!3602, !3601, !"_ZNK8rational11to_rationalEv: argument 0"}
!3603 = distinct !{!3603, !"_ZNK8rational11to_rationalEv"}
!3604 = distinct !{!3604, !3603, !"_ZNK8rational11to_rationalEv: argument 0"}
!3605 = !{!3600}
!3606 = !{!3602}
!3607 = !{!3604}
!3608 = distinct !{!3608, !206}
!3609 = distinct !{!3609, !"_ZNK8rational11to_rationalEv"}
!3610 = distinct !{!3610, !3609, !"_ZNK8rational11to_rationalEv: argument 0"}
!3611 = distinct !{!3611, !"_ZNK8rational11to_rationalEv"}
!3612 = distinct !{!3612, !3611, !"_ZNK8rational11to_rationalEv: argument 0"}
!3613 = distinct !{!3613, !"_ZNK8rational11to_rationalEv"}
!3614 = distinct !{!3614, !3613, !"_ZNK8rational11to_rationalEv: argument 0"}
!3615 = distinct !{!3615, !206}
!3616 = !{!3610}
!3617 = !{!3612}
!3618 = !{!3614}
!3619 = distinct !{!3619, !"_ZNK8rational11to_rationalEv"}
!3620 = distinct !{!3620, !3619, !"_ZNK8rational11to_rationalEv: argument 0"}
!3621 = distinct !{!3621, !"_ZNK8rational11to_rationalEv"}
!3622 = distinct !{!3622, !3621, !"_ZNK8rational11to_rationalEv: argument 0"}
!3623 = distinct !{!3623, !"_ZNK8rational9to_stringB5cxx11Ev"}
!3624 = distinct !{!3624, !3623, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!3625 = distinct !{!3625, !206}
!3626 = !{!3620}
!3627 = !{!3622}
!3628 = !{!3624}
!3629 = distinct !{!3629, !206}
!3630 = distinct !{!3630, !"_ZNK8rational11to_rationalEv"}
!3631 = distinct !{!3631, !3630, !"_ZNK8rational11to_rationalEv: argument 0"}
!3632 = distinct !{!3632, !"_ZNK8rational11to_rationalEv"}
!3633 = distinct !{!3633, !3632, !"_ZNK8rational11to_rationalEv: argument 0"}
!3634 = distinct !{!3634, !"_ZNK8rational11to_rationalEv"}
!3635 = distinct !{!3635, !3634, !"_ZNK8rational11to_rationalEv: argument 0"}
!3636 = distinct !{!3636, !206}
!3637 = !{!3631}
!3638 = !{!3633}
!3639 = !{!3635}
!3640 = distinct !{!3640, !"_ZNSt7__cxx119to_stringEi"}
!3641 = distinct !{!3641, !3640, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!3642 = distinct !{!3642, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3643 = distinct !{!3643, !3642, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3644 = distinct !{!3644, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!3645 = distinct !{!3645, !3644, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!3646 = !{!3641}
!3647 = !{!3643}
!3648 = !{!3645}
!3649 = distinct !{!3649, !1021}
!3650 = distinct !{!3650, !206, !940, !941}
!3651 = distinct !{!3651, !206, !941, !940}
!3652 = distinct !{!3652, !313}
!3653 = distinct !{!3653, !313}
!3654 = !{ptr @_ZN3smt12theory_arithINS_6mi_extEED0Ev}
!3655 = !{ptr @_ZN3smt12theory_arithINS_5i_extEED0Ev}
!3656 = !{ptr @_ZN3smt12theory_arithINS_5i_extEE4atomD2Ev}
!3657 = !{ptr @_ZN3smt12theory_arithINS_5i_extEE4atomD2Ev, ptr @_ZN3smt12theory_arithINS_5i_extEE5boundD2Ev}
!3658 = !{ptr @_ZN3smt12theory_arithINS_7inf_extEED0Ev}
!3659 = !{ptr @_ZN3smt12theory_arithINS_7inf_extEE4atomD2Ev}
!3660 = !{ptr @_ZN3smt12theory_arithINS_7inf_extEE4atomD2Ev, ptr @_ZN3smt12theory_arithINS_7inf_extEE5boundD2Ev}
!3661 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRiSt17integral_constantImLm0EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3662 = !{!3661, !345, i64 0}
!3663 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!3664 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRS1_St17integral_constantImLm1EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3665 = !{!3664, !345, i64 0}
!3666 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRS2_St17integral_constantImLm2EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3667 = !{!3666, !345, i64 0}
!3668 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm3EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3669 = !{!3668, !345, i64 0}
!3670 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm4EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3671 = !{!3670, !345, i64 0}
!3672 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRdSt17integral_constantImLm5EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3673 = !{!3672, !345, i64 0}
!3674 = !{!"_ZTSZZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE4swapERS6_ENUlOT_T0_E_clIRjSt17integral_constantImLm6EEEEDaS9_SA_EUlS9_SA_E_", !345, i64 0}
!3675 = !{!3674, !345, i64 0}
!3676 = distinct !{!3676, !206}
!3677 = distinct !{!3677, !"_ZNK8rational9to_stringB5cxx11Ev"}
!3678 = distinct !{!3678, !3677, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!3679 = distinct !{!3679, !"_ZNK8rational9to_stringB5cxx11Ev"}
!3680 = distinct !{!3680, !3679, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!3681 = distinct !{!3681, !"_Z3absRK8rational"}
!3682 = distinct !{!3682, !3681, !"_Z3absRK8rational: argument 0"}
!3683 = distinct !{!3683, !"_ZNK8rational9to_stringB5cxx11Ev"}
!3684 = distinct !{!3684, !3683, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!3685 = !{!3678}
!3686 = !{!3680}
!3687 = !{!3682}
!3688 = !{!3684}
!3689 = distinct !{!3689, !206}
!3690 = distinct !{!3690, !206}
!3691 = distinct !{!3691, !206}
!3692 = distinct !{!3692, !206}
!3693 = distinct !{!3693, !206}
!3694 = distinct !{!3694, !206}
!3695 = distinct !{!3695, !206}
!3696 = distinct !{!3696, !206}
!3697 = distinct !{!3697, !206}
!3698 = distinct !{!3698, !206}
!3699 = distinct !{!3699, !206}
!3700 = distinct !{!3700, !313}
!3701 = distinct !{!3701, !206}
!3702 = distinct !{!3702, !206}
!3703 = distinct !{!3703, !206}
!3704 = !{!515, !514, i64 0}
!3705 = distinct !{!3705, !206}
!3706 = distinct !{!3706, !206}
!3707 = distinct !{!3707, !206}
!3708 = distinct !{!3708, !206}
!3709 = distinct !{!3709, !206}
!3710 = distinct !{!3710, !206}
!3711 = distinct !{!3711, !206}
!3712 = distinct !{!3712, !206}
!3713 = distinct !{!3713, !206}
!3714 = distinct !{!3714, !206}
!3715 = distinct !{!3715, !206}
!3716 = distinct !{!3716, !206}
!3717 = distinct !{!3717, !206}
!3718 = distinct !{!3718, !206}
!3719 = distinct !{!3719, !206}
!3720 = distinct !{!3720, !206}
!3721 = distinct !{!3721, !206}
!3722 = distinct !{!3722, !206}
!3723 = distinct !{!3723, !206}
!3724 = distinct !{!3724, !206}
!3725 = !{!1093, !216, i64 8}
!3726 = distinct !{!3726, !206}
!3727 = distinct !{!3727, !206}
!3728 = distinct !{!3728, !313}
!3729 = distinct !{!3729, !206}
!3730 = distinct !{!3730, !206}
!3731 = distinct !{!3731, !206}
!3732 = distinct !{!3732, !206}
!3733 = distinct !{!3733, !313}
!3734 = distinct !{!3734, !206}
!3735 = distinct !{!3735, !206}
!3736 = distinct !{!3736, !206}
!3737 = distinct !{!3737, !313}
!3738 = distinct !{!3738, !206}
!3739 = distinct !{!3739, !206}
!3740 = distinct !{!3740, !206}
!3741 = distinct !{!3741, !206}
!3742 = distinct !{!3742, !313}
!3743 = distinct !{!3743, !206}
!3744 = distinct !{!3744, !206}
!3745 = distinct !{!3745, !206}
!3746 = distinct !{!3746, !313}
!3747 = distinct !{!3747, !206}
!3748 = distinct !{!3748, !206}
!3749 = distinct !{!3749, !206}
!3750 = distinct !{!3750, !"LVerDomain"}
!3751 = distinct !{!3751, !3750}
!3752 = distinct !{!3752, !3750}
!3753 = distinct !{!3753, !206, !940, !941}
!3754 = distinct !{!3754, !206, !940}
!3755 = !{!3751}
!3756 = !{!3752}
!3757 = !{!"_ZTS16push_back_vectorI10ptr_vectorI3appEE", !910, i64 0, !981, i64 8}
!3758 = !{!3757, !981, i64 8}
!3759 = distinct !{!3759, !"LVerDomain"}
!3760 = distinct !{!3760, !3759}
!3761 = distinct !{!3761, !3759}
!3762 = distinct !{!3762, !206, !940, !941}
!3763 = distinct !{!3763, !206, !940}
!3764 = !{!3760}
!3765 = !{!3761}
!3766 = distinct !{!3766, !206}
!3767 = distinct !{!3767, !206}
!3768 = distinct !{!3768, !206}
!3769 = distinct !{!3769, !206}
!3770 = distinct !{!3770, !206}
!3771 = distinct !{!3771, !206}
!3772 = distinct !{!3772, !206}
!3773 = distinct !{!3773, !206}
!3774 = distinct !{!3774, !313}
!3775 = distinct !{!3775, !206}
!3776 = distinct !{!3776, !206}
!3777 = distinct !{!3777, !206}
!3778 = distinct !{!3778, !206, !940, !941}
!3779 = distinct !{!3779, !206, !940}
!3780 = !{!"p1 _ZTS7svectorISt4pairIiiEjE", !196, i64 0}
!3781 = !{!"_ZTS14restore_vectorI7svectorISt4pairIiiEjEE", !910, i64 0, !3780, i64 8, !193, i64 16}
!3782 = !{!3781, !3780, i64 8}
!3783 = !{!3781, !193, i64 16}
!3784 = !{!"_ZTSZN3smt12theory_arithINS_6mi_extEE25branch_infeasible_int_varEiEUlvE_", !212, i64 0, !1131, i64 8}
!3785 = !{!3784, !212, i64 0}
!3786 = !{!3784, !1131, i64 8}
!3787 = distinct !{!3787, !206}
!3788 = distinct !{!3788, !"LVerDomain"}
!3789 = distinct !{!3789, !3788}
!3790 = distinct !{!3790, !3788}
!3791 = distinct !{!3791, !206, !940, !941}
!3792 = distinct !{!3792, !206, !940}
!3793 = !{!3789}
!3794 = !{!3790}
!3795 = distinct !{!3795, !206}
!3796 = distinct !{!3796, !206}
!3797 = distinct !{!3797, !313}
!3798 = distinct !{!3798, !206}
!3799 = distinct !{!3799, !206}
!3800 = distinct !{!3800, !206}
!3801 = distinct !{!3801, !206}
!3802 = distinct !{!3802, !206}
!3803 = !{!"_ZTSZN3smt12theory_arithINS_6mi_extEE30branch_infeasible_int_equalityEvEUlvE_", !212, i64 0, !1131, i64 8, !1131, i64 16}
!3804 = !{!3803, !212, i64 0}
!3805 = !{!3803, !1131, i64 8}
!3806 = !{!3803, !1131, i64 16}
!3807 = distinct !{!3807, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_6mi_extEE19constrain_free_varsERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3808 = distinct !{!3808, !3807, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_6mi_extEE19constrain_free_varsERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3809 = distinct !{!3809, !"_ZZN3smt12theory_arithINS_6mi_extEE19constrain_free_varsERKNS2_3rowEENKUlvE_clEv"}
!3810 = distinct !{!3810, !3809, !"_ZZN3smt12theory_arithINS_6mi_extEE19constrain_free_varsERKNS2_3rowEENKUlvE_clEv: argument 0"}
!3811 = !{!"_ZTSZN3smt12theory_arithINS_6mi_extEE19constrain_free_varsERKNS2_3rowEEUlvE_", !1131, i64 0}
!3812 = !{!3811, !1131, i64 0}
!3813 = !{!3810, !3808}
!3814 = distinct !{!3814, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_6mi_extEE13mk_gomory_cutERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3815 = distinct !{!3815, !3814, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_6mi_extEE13mk_gomory_cutERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3816 = distinct !{!3816, !"_ZZN3smt12theory_arithINS_6mi_extEE13mk_gomory_cutERKNS2_3rowEENKUlvE_clEv"}
!3817 = distinct !{!3817, !3816, !"_ZZN3smt12theory_arithINS_6mi_extEE13mk_gomory_cutERKNS2_3rowEENKUlvE_clEv: argument 0"}
!3818 = !{!"_ZTSZN3smt12theory_arithINS_6mi_extEE13mk_gomory_cutERKNS2_3rowEEUlvE_", !1131, i64 0}
!3819 = !{!3818, !1131, i64 0}
!3820 = !{!3817, !3815}
!3821 = distinct !{!3821, !206}
!3822 = distinct !{!3822, !206}
!3823 = distinct !{!3823, !206}
!3824 = distinct !{!3824, !206}
!3825 = distinct !{!3825, !313}
!3826 = distinct !{!3826, !206}
!3827 = distinct !{!3827, !206}
!3828 = distinct !{!3828, !206}
!3829 = distinct !{!3829, !206}
!3830 = distinct !{!3830, !206}
!3831 = distinct !{!3831, !313}
!3832 = distinct !{!3832, !206}
!3833 = distinct !{!3833, !206}
!3834 = distinct !{!3834, !206}
!3835 = distinct !{!3835, !206}
!3836 = distinct !{!3836, !206}
!3837 = distinct !{!3837, !206}
!3838 = distinct !{!3838, !206}
!3839 = distinct !{!3839, !206}
!3840 = distinct !{!3840, !206}
!3841 = distinct !{!3841, !313}
!3842 = distinct !{!3842, !206}
!3843 = distinct !{!3843, !313}
!3844 = distinct !{!3844, !206}
!3845 = distinct !{!3845, !313}
!3846 = distinct !{!3846, !313}
!3847 = distinct !{!3847, !206}
!3848 = distinct !{!3848, !313}
!3849 = distinct !{!3849, !313}
!3850 = distinct !{!3850, !313}
!3851 = distinct !{!3851, !206}
!3852 = distinct !{!3852, !313}
!3853 = distinct !{!3853, !206}
!3854 = distinct !{!3854, !313}
!3855 = distinct !{!3855, !313}
!3856 = distinct !{!3856, !206}
!3857 = distinct !{!3857, !313}
!3858 = distinct !{!3858, !313}
!3859 = distinct !{!3859, !206}
!3860 = distinct !{!3860, !313}
!3861 = distinct !{!3861, !313}
!3862 = distinct !{!3862, !206}
!3863 = distinct !{!3863, !206}
!3864 = distinct !{!3864, !206}
!3865 = distinct !{!3865, !206}
!3866 = distinct !{!3866, !313}
!3867 = distinct !{!3867, !313}
!3868 = distinct !{!3868, !313}
!3869 = distinct !{!3869, !313}
!3870 = distinct !{!3870, !313}
!3871 = distinct !{!3871, !313}
!3872 = !{!"_ZTSZN3smt12theory_arithINS_6mi_extEE17branch_nl_int_varEiEUlvE_", !212, i64 0, !1131, i64 8}
!3873 = !{!3872, !212, i64 0}
!3874 = !{!3872, !1131, i64 8}
!3875 = distinct !{!3875, !206}
!3876 = !{!"_ZTS11value_trailIbE", !910, i64 0, !526, i64 8, !219, i64 16}
!3877 = !{!3876, !219, i64 16}
!3878 = !{!3876, !526, i64 8}
!3879 = distinct !{!3879, !206}
!3880 = distinct !{!3880, !206}
!3881 = distinct !{!3881, !206}
!3882 = distinct !{!3882, !206}
!3883 = distinct !{!3883, !206}
!3884 = distinct !{!3884, !206}
!3885 = distinct !{!3885, !206}
!3886 = distinct !{!3886, !206}
!3887 = distinct !{!3887, !"_ZNK8rational9to_stringB5cxx11Ev"}
!3888 = distinct !{!3888, !3887, !"_ZNK8rational9to_stringB5cxx11Ev: argument 0"}
!3889 = !{!3888}
!3890 = distinct !{!3890, !206}
!3891 = distinct !{!3891, !313}
!3892 = distinct !{!3892, !206}
!3893 = distinct !{!3893, !"LVerDomain"}
!3894 = distinct !{!3894, !3893}
!3895 = distinct !{!3895, !3893}
!3896 = distinct !{!3896, !206, !940, !941}
!3897 = distinct !{!3897, !206, !940}
!3898 = !{!3894}
!3899 = !{!3895}
!3900 = distinct !{!3900, !206}
!3901 = distinct !{!3901, !206}
!3902 = distinct !{!3902, !206}
!3903 = distinct !{!3903, !206}
!3904 = distinct !{!3904, !206}
!3905 = distinct !{!3905, !206}
!3906 = distinct !{!3906, !313}
!3907 = distinct !{!3907, !206}
!3908 = distinct !{!3908, !206}
!3909 = distinct !{!3909, !206}
!3910 = !{!"_ZTSZN3smt12theory_arithINS_5i_extEE25branch_infeasible_int_varEiEUlvE_", !212, i64 0, !1131, i64 8}
!3911 = !{!3910, !212, i64 0}
!3912 = !{!3910, !1131, i64 8}
!3913 = distinct !{!3913, !206}
!3914 = !{!"_ZTSZN3smt12theory_arithINS_5i_extEE30branch_infeasible_int_equalityEvEUlvE_", !212, i64 0, !1131, i64 8, !1131, i64 16}
!3915 = !{!3914, !212, i64 0}
!3916 = !{!3914, !1131, i64 8}
!3917 = !{!3914, !1131, i64 16}
!3918 = distinct !{!3918, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_5i_extEE19constrain_free_varsERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3919 = distinct !{!3919, !3918, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_5i_extEE19constrain_free_varsERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3920 = distinct !{!3920, !"_ZZN3smt12theory_arithINS_5i_extEE19constrain_free_varsERKNS2_3rowEENKUlvE_clEv"}
!3921 = distinct !{!3921, !3920, !"_ZZN3smt12theory_arithINS_5i_extEE19constrain_free_varsERKNS2_3rowEENKUlvE_clEv: argument 0"}
!3922 = !{!"_ZTSZN3smt12theory_arithINS_5i_extEE19constrain_free_varsERKNS2_3rowEEUlvE_", !1131, i64 0}
!3923 = !{!3922, !1131, i64 0}
!3924 = !{!3921, !3919}
!3925 = distinct !{!3925, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_5i_extEE13mk_gomory_cutERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!3926 = distinct !{!3926, !3925, !"_ZSt13__invoke_implI7obj_refI4expr11ast_managerERZN3smt12theory_arithINS4_5i_extEE13mk_gomory_cutERKNS7_3rowEEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!3927 = distinct !{!3927, !"_ZZN3smt12theory_arithINS_5i_extEE13mk_gomory_cutERKNS2_3rowEENKUlvE_clEv"}
!3928 = distinct !{!3928, !3927, !"_ZZN3smt12theory_arithINS_5i_extEE13mk_gomory_cutERKNS2_3rowEENKUlvE_clEv: argument 0"}
!3929 = !{!"_ZTSZN3smt12theory_arithINS_5i_extEE13mk_gomory_cutERKNS2_3rowEEUlvE_", !1131, i64 0}
!3930 = !{!3929, !1131, i64 0}
!3931 = !{!3928, !3926}
!3932 = distinct !{!3932, !313}
!3933 = distinct !{!3933, !206}
!3934 = distinct !{!3934, !313}
!3935 = distinct !{!3935, !313}
!3936 = distinct !{!3936, !206}
!3937 = distinct !{!3937, !313}
!3938 = distinct !{!3938, !313}
!3939 = distinct !{!3939, !313}
!3940 = distinct !{!3940, !206}
!3941 = distinct !{!3941, !313}
!3942 = distinct !{!3942, !206}
!3943 = distinct !{!3943, !313}
!3944 = distinct !{!3944, !313}
!3945 = distinct !{!3945, !206}
!3946 = distinct !{!3946, !313}
!3947 = distinct !{!3947, !313}
!3948 = distinct !{!3948, !206}
!3949 = distinct !{!3949, !313}
!3950 = distinct !{!3950, !313}
!3951 = !{!"_ZTSZN3smt12theory_arithINS_5i_extEE17branch_nl_int_varEiEUlvE_", !212, i64 0, !1131, i64 8}
!3952 = !{!3951, !212, i64 0}
!3953 = !{!3951, !1131, i64 8}
!3954 = distinct !{!3954, !206}
!3955 = distinct !{!3955, !313}
!3956 = distinct !{!3956, !206}
!3957 = distinct !{!3957, !206}
!3958 = distinct !{!3958, !"LVerDomain"}
!3959 = distinct !{!3959, !3958}
!3960 = distinct !{!3960, !3958}
!3961 = distinct !{!3961, !206, !940, !941}
!3962 = distinct !{!3962, !206, !940}
!3963 = !{!3959}
!3964 = !{!3960}
!3965 = distinct !{!3965, !206}
!3966 = distinct !{!3966, !206}
!3967 = distinct !{!3967, !206}
!3968 = distinct !{!3968, !206}
!3969 = distinct !{!3969, !206}
!3970 = distinct !{!3970, !206}
!3971 = distinct !{!3971, !313}
!3972 = distinct !{!3972, !206}
!3973 = distinct !{!3973, !206}
!3974 = distinct !{!3974, !206}
!3975 = !{!"_ZTSZN3smt12theory_arithINS_7inf_extEE25branch_infeasible_int_varEiEUlvE_", !212, i64 0, !1131, i64 8}
!3976 = !{!3975, !212, i64 0}
!3977 = !{!3975, !1131, i64 8}
!3978 = distinct !{!3978, !206}
!3979 = !{!"_ZTSZN3smt12theory_arithINS_7inf_extEE30branch_infeasible_int_equalityEvEUlvE_", !212, i64 0, !1131, i64 8, !1131, i64 16}
end_hunk_1
