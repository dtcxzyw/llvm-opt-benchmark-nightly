Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpz?download=true
inline.NumInlined: 1746
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK11mpz_managerILb1EE6is_intERK3mpz:bb.a
  br i1 %i.aa, label %.thread15.thread, label %_ZNK11mpz_managerILb1EE8is_int64ERK3mpz.exit.thread12

bb.f:                                             ; preds = %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit
  %i.ab = sext i32 %i.w to i64
  br label %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit10

.thread15:                                        ; preds = %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread
  %i.ac = zext i32 %i.o to i64
  br label %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i6

.thread15.thread:                                 ; preds = %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread.thread
  %i.ad = load i64, ptr %i.j, align 4
  br label %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i6

_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i6: ; preds = %.thread15.thread, %.thread15
  %.0.i.i7 = phi i64 [ %i.ac, %.thread15 ], [ %i.ad, %.thread15.thread ] ; 2 uses
  %i.ae = sub i64 0, %.0.i.i7
  %spec.select.i8 = select i1 %i.v, i64 %i.ae, i64 %.0.i.i7
  br label %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit10

_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit10:  ; preds = %bb.f, %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i6
  %.1.i9 = phi i64 [ %i.ab, %bb.f ], [ %spec.select.i8, %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i6 ]
  %i.af = icmp slt i64 %.1.i9, 2147483647
  br label %_ZNK11mpz_managerILb1EE8is_int64ERK3mpz.exit.thread12

_ZNK11mpz_managerILb1EE8is_int64ERK3mpz.exit.thread12: ; preds = %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread.thread, %_ZN11mpz_managerILb1EE13is_abs_uint64ERK3mpz.exit.i, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread, %.split, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit10, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit, %_ZNK11mpz_managerILb1EE8is_int64ERK3mpz.exit
  %i.ag = phi i1 [ false, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit ], [ false, %_ZNK11mpz_managerILb1EE8is_int64ERK3mpz.exit ], [ %i.af, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit10 ], [ false, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread ], [ false, %.split ], [ false, %_ZN11mpz_managerILb1EE13is_abs_uint64ERK3mpz.exit.i ], [ false, %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit.thread.thread ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK11mpz_managerILb1EE7get_intERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  br label %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = zext i32 %i.k to i64
  br label %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 4
  br label %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i

_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = load i32, ptr %1, align 8, !tbaa !27
  %i.o = icmp slt i32 %i.n, 0
  %i.p = sub i64 0, %.0.i.i
  %spec.select.i = select i1 %i.o, i64 %i.p, i64 %.0.i.i
  %i.q = trunc i64 %spec.select.i to i32
  br label %_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit

_ZNK11mpz_managerILb1EE9get_int64ERK3mpz.exit:    ; preds = %bb.b, %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i
  %.1.i = phi i32 [ %i.e, %bb.b ], [ %i.q, %_ZN11mpz_managerILb1EE17big_abs_to_uint64ERK3mpz.exit.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef double @_ZNK11mpz_managerILb1EE10get_doubleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  %i.f = sitofp i32 %i.e to double
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35   ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %wide.trip.count = zext i32 %i.i to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.k = icmp ult i32 %i.i, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01519.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.01618.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.01519.epil = phi double [ %.01519.epil.init, %.epil.preheader ], [ %i.p, %bb.d ] ; 2 uses
  %.01618.epil = phi double [ %.01618.epil.init, %.epil.preheader ], [ %i.o, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = uitofp i32 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %.01519.epil, double %i.n, double %.01618.epil) ; 2 uses
  %i.p = fmul double %.01519.epil, f0x41F0000000000000
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !169

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c
  %.016.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = fcmp oge double %.016.lcssa, 0.000000e+00
  %spec.store.select = select i1 %i.q, double %.016.lcssa, double f0x43F0000000000000 ; 2 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %i.s = icmp slt i32 %i.r, 0
  %i.t = fneg double %spec.store.select
  %i.u = select i1 %i.s, double %i.t, double %spec.store.select
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.01519 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.ar, %bb.e ] ; 2 uses
  %.01618 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.aq, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = uitofp i32 %i.w to double
  %i.y = tail call double @llvm.fmuladd.f64(double %.01519, double %i.x, double %.01618)
  %i.z = fmul double %.01519, f0x41F0000000000000 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = uitofp i32 %i.ac to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ad, double %i.y)
  %i.af = fmul double %i.z, f0x41F0000000000000   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %i.aj = uitofp i32 %i.ai to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.af, double %i.aj, double %i.ae)
  %i.al = fmul double %i.af, f0x41F0000000000000  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36
  %i.ap = uitofp i32 %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ap, double %i.ak) ; 3 uses
  %i.ar = fmul double %i.al, f0x41F0000000000000  ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !170

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.017 = phi double [ %i.f, %bb.b ], [ %i.u, %._crit_edge ]
  ret double %.017
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK11mpz_managerILb1EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  invoke void @_ZNK11mpz_managerILb1EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70, !noalias !177 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %i.d, align 8, !tbaa !71, !noalias !177 ; 2 uses
  %6 = icmp ugt ptr %i.c, %5
  %.08.i.i.i = select i1 %6, ptr %i.c, ptr %5
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72, !noalias !177
  %i.g = ptrtoint ptr %.08.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.i, ptr %i.j, align 8, !tbaa !62, !noalias !177
  %i.k = load ptr, ptr %4, align 8, !tbaa !61, !noalias !177
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !63, !noalias !177
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !59, !alias.scope !177
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !61, !noalias !177 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62, !noalias !177 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.o, ptr %0, align 8, !tbaa !61, !alias.scope !177
  %i.v = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !177
  store i64 %i.v, ptr %i.n, align 8, !tbaa !63, !alias.scope !177
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62, !noalias !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.w = phi i64 [ %i.s, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !62, !alias.scope !177
  store ptr %i.p, ptr %i.m, align 8, !tbaa !61, !noalias !177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, i8 0, i64 9, i1 false), !noalias !177
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !177 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !63, !alias.scope !177
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !56
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !61  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.p, align 8, !tbaa !63
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK11mpz_managerILb1EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.sbuffer, align 8             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i32, ptr %2, align 8, !tbaa !27     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.f) ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !63
  %i.i = load ptr, ptr %1, align 8, !tbaa !56
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !79
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 2 uses
  %i.t = mul i32 %i.s, 11
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 1024, ptr %i.w, align 4, !tbaa !83
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN7sbufferIcLj1024EEC2EjRKc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i
  %i.x = phi i32 [ %i.bl, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %.04.i.i = phi i32 [ %i.bm, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i ], [ 0, %bb.g ]
  %i.y = load i32, ptr %i.w, align 4, !tbaa !83   ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.h

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !81
  br label %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = shl i32 %i.y, 1                          ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aa) ; 10 uses
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !82  ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  %.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !81 ; 11 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %.pre.i.i.i.i22 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ac to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  %i.ae = sub i64 %.pre.i.i.i.i22, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %wide.trip.count.i.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !63
  %wide.load24 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !63
  store <16 x i8> %wide.load24, ptr %i.aj, align 1, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK11mpz_managerILb0EE6is_intERK3mpz:bb.a
  %i.z = sub i64 0, %i.y
  %spec.select.i18 = select i1 %i.v, i64 %i.z, i64 %i.y
  %i.aa = icmp sgt i64 %spec.select.i18, -2147483648
  br i1 %i.aa, label %.thread15.thread, label %_ZNK11mpz_managerILb0EE8is_int64ERK3mpz.exit.thread12

bb.f:                                             ; preds = %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit
  %i.ab = sext i32 %i.w to i64
  br label %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit10

.thread15:                                        ; preds = %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread
  %i.ac = zext i32 %i.o to i64
  br label %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i6

.thread15.thread:                                 ; preds = %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread.thread
  %i.ad = load i64, ptr %i.j, align 4
  br label %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i6

_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i6: ; preds = %.thread15.thread, %.thread15
  %.0.i.i7 = phi i64 [ %i.ac, %.thread15 ], [ %i.ad, %.thread15.thread ] ; 2 uses
  %i.ae = sub i64 0, %.0.i.i7
  %spec.select.i8 = select i1 %i.v, i64 %i.ae, i64 %.0.i.i7
  br label %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit10

_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit10:  ; preds = %bb.f, %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i6
  %.1.i9 = phi i64 [ %i.ab, %bb.f ], [ %spec.select.i8, %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i6 ]
  %i.af = icmp slt i64 %.1.i9, 2147483647
  br label %_ZNK11mpz_managerILb0EE8is_int64ERK3mpz.exit.thread12

_ZNK11mpz_managerILb0EE8is_int64ERK3mpz.exit.thread12: ; preds = %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread.thread, %_ZN11mpz_managerILb0EE13is_abs_uint64ERK3mpz.exit.i, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread, %.split, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit10, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit, %_ZNK11mpz_managerILb0EE8is_int64ERK3mpz.exit
  %i.ag = phi i1 [ false, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit ], [ false, %_ZNK11mpz_managerILb0EE8is_int64ERK3mpz.exit ], [ %i.af, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit10 ], [ false, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread ], [ false, %.split ], [ false, %_ZN11mpz_managerILb0EE13is_abs_uint64ERK3mpz.exit.i ], [ false, %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit.thread.thread ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK11mpz_managerILb0EE7get_intERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  br label %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = zext i32 %i.k to i64
  br label %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 4
  br label %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i

_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = load i32, ptr %1, align 8, !tbaa !27
  %i.o = icmp slt i32 %i.n, 0
  %i.p = sub i64 0, %.0.i.i
  %spec.select.i = select i1 %i.o, i64 %i.p, i64 %.0.i.i
  %i.q = trunc i64 %spec.select.i to i32
  br label %_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit

_ZNK11mpz_managerILb0EE9get_int64ERK3mpz.exit:    ; preds = %bb.b, %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i
  %.1.i = phi i32 [ %i.e, %bb.b ], [ %i.q, %_ZN11mpz_managerILb0EE17big_abs_to_uint64ERK3mpz.exit.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef double @_ZNK11mpz_managerILb0EE10get_doubleERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  %i.f = sitofp i32 %i.e to double
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35   ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %wide.trip.count = zext i32 %i.i to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.k = icmp ult i32 %i.i, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01519.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.01618.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.01519.epil = phi double [ %.01519.epil.init, %.epil.preheader ], [ %i.p, %bb.d ] ; 2 uses
  %.01618.epil = phi double [ %.01618.epil.init, %.epil.preheader ], [ %i.o, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = uitofp i32 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %.01519.epil, double %i.n, double %.01618.epil) ; 2 uses
  %i.p = fmul double %.01519.epil, f0x41F0000000000000
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !257

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c
  %.016.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = fcmp oge double %.016.lcssa, 0.000000e+00
  %spec.store.select = select i1 %i.q, double %.016.lcssa, double f0x43F0000000000000 ; 2 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %i.s = icmp slt i32 %i.r, 0
  %i.t = fneg double %spec.store.select
  %i.u = select i1 %i.s, double %i.t, double %spec.store.select
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.01519 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.ar, %bb.e ] ; 2 uses
  %.01618 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.aq, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = uitofp i32 %i.w to double
  %i.y = tail call double @llvm.fmuladd.f64(double %.01519, double %i.x, double %.01618)
  %i.z = fmul double %.01519, f0x41F0000000000000 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = uitofp i32 %i.ac to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ad, double %i.y)
  %i.af = fmul double %i.z, f0x41F0000000000000   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %i.aj = uitofp i32 %i.ai to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.af, double %i.aj, double %i.ae)
  %i.al = fmul double %i.af, f0x41F0000000000000  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36
  %i.ap = uitofp i32 %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ap, double %i.ak) ; 3 uses
  %i.ar = fmul double %i.al, f0x41F0000000000000  ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !258

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.017 = phi double [ %i.f, %bb.b ], [ %i.u, %._crit_edge ]
  ret double %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  invoke void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70, !noalias !265 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %i.d, align 8, !tbaa !71, !noalias !265 ; 2 uses
  %6 = icmp ugt ptr %i.c, %5
  %.08.i.i.i = select i1 %6, ptr %i.c, ptr %5
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72, !noalias !265
  %i.g = ptrtoint ptr %.08.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.i, ptr %i.j, align 8, !tbaa !62, !noalias !265
  %i.k = load ptr, ptr %4, align 8, !tbaa !61, !noalias !265
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !63, !noalias !265
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !59, !alias.scope !265
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !61, !noalias !265 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62, !noalias !265 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.o, ptr %0, align 8, !tbaa !61, !alias.scope !265
  %i.v = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !265
  store i64 %i.v, ptr %i.n, align 8, !tbaa !63, !alias.scope !265
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62, !noalias !265
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.w = phi i64 [ %i.s, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !62, !alias.scope !265
  store ptr %i.p, ptr %i.m, align 8, !tbaa !61, !noalias !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, i8 0, i64 9, i1 false), !noalias !265
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !265 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !63, !alias.scope !265
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !56
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !61  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.p, align 8, !tbaa !63
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.sbuffer, align 8             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i32, ptr %2, align 8, !tbaa !27     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.f) ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !63
  %i.i = load ptr, ptr %1, align 8, !tbaa !56
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !79
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 2 uses
  %i.t = mul i32 %i.s, 11
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 1024, ptr %i.w, align 4, !tbaa !83
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN7sbufferIcLj1024EEC2EjRKc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i
  %i.x = phi i32 [ %i.bl, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %.04.i.i = phi i32 [ %i.bm, %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i ], [ 0, %bb.g ]
  %i.y = load i32, ptr %i.w, align 4, !tbaa !83   ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.h

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !81
  br label %_ZN6bufferIcLb0ELj1024EE9push_backERKc.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = shl i32 %i.y, 1                          ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aa) ; 10 uses
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !82  ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  %.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !81 ; 11 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %.pre.i.i.i.i22 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ac to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  %i.ae = sub i64 %.pre.i.i.i.i22, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %wide.trip.count.i.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !63
  %wide.load24 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !63
  store <16 x i8> %wide.load24, ptr %i.aj, align 1, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !266

end_hunk_1
