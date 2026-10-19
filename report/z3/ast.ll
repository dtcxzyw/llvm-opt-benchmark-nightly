Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast?download=true
inline.NumInlined: 4960
inline.NumDeleted: 1839
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN17basic_decl_plugin4joinEP4sortS1_:bb.a

bb.l:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ar
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !122
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.l ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bh, %bb.m ] ; 2 uses
  %.1 = phi i1 [ true, %bb.l ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ false, %bb.m ] ; 2 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !120   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !122
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.2 = phi i1 [ true, %bb.k ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #39
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.be, %bb.j ] ; 4 uses
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ true, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bs = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.n
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !122
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #40
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.3, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.3, label %bb.p, label %bb.r

.sink.split:                                      ; preds = %.thread, %.thread53
  %.pn.pn.pn.pn.pn52.ph = phi { ptr, i32 } [ %i.bc, %.thread53 ], [ %i.bb, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.o
  %.pn.pn.pn.pn.pn52 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn.pn.pn, %bb.o ], [ %.pn.pn.pn.pn.pn52.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.z) #39
  br label %bb.r

bb.q:                                             ; preds = %_ZNK4decl13get_family_idEv.exit41, %_ZNK4decl13get_family_idEv.exit40, %_ZNK4decl13get_decl_kindEv.exit, %bb.a
  %.030 = phi ptr [ %2, %_ZNK4decl13get_family_idEv.exit40 ], [ %., %_ZNK4decl13get_decl_kindEv.exit ], [ %1, %bb.a ], [ %1, %_ZNK4decl13get_family_idEv.exit41 ]
  ret ptr %.030

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.o, %bb.p
  %.pn.pn.pn.pn.pn51 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %.pn.pn.pn.pn.pn52, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn51

bb.s:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17basic_decl_plugin4joinEjPKP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !180    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %trunc.i = trunc i32 %i.c to i16
  switch i16 %trunc.i, label %bb.e [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172
  br label %_ZNK4expr8get_sortEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194
  br label %_ZNK4expr8get_sortEv.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  br label %_ZNK4expr8get_sortEv.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZNK4expr8get_sortEv.exit

_ZNK4expr8get_sortEv.exit:                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.e ], [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp ugt i32 %1, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4expr8get_sortEv.exit, %_ZNK4expr8get_sortEv.exit11
  %.014 = phi ptr [ %i.z, %_ZNK4expr8get_sortEv.exit11 ], [ %.0.i, %_ZNK4expr8get_sortEv.exit ]
  %.0713 = phi ptr [ %i.m, %_ZNK4expr8get_sortEv.exit11 ], [ %2, %_ZNK4expr8get_sortEv.exit ]
  %.0812 = phi i32 [ %i.n, %_ZNK4expr8get_sortEv.exit11 ], [ %1, %_ZNK4expr8get_sortEv.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0713, i64 8 ; 2 uses
  %i.n = add i32 %.0812, -1                       ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !180  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %trunc.i9 = trunc i32 %i.q to i16
  switch i16 %trunc.i9, label %bb.i [
    i16 0, label %bb.f
    i16 1, label %bb.g
    i16 2, label %bb.h
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !177
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !172
  br label %_ZNK4expr8get_sortEv.exit11

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !194
  br label %_ZNK4expr8get_sortEv.exit11

bb.h:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  br label %_ZNK4expr8get_sortEv.exit11

bb.i:                                             ; preds = %.lr.ph
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZNK4expr8get_sortEv.exit11

_ZNK4expr8get_sortEv.exit11:                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i10 = phi ptr [ null, %bb.i ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ]
  %i.z = tail call noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %.014, ptr noundef %.0.i10) ; 2 uses
  %i.aa = icmp ugt i32 %i.n, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !614

._crit_edge:                                      ; preds = %_ZNK4expr8get_sortEv.exit11, %_ZNK4expr8get_sortEv.exit
  %.0.lcssa = phi ptr [ %.0.i, %_ZNK4expr8get_sortEv.exit ], [ %i.z, %_ZNK4expr8get_sortEv.exit11 ]
  ret ptr %.0.lcssa
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z9to_stringI5mk_ppENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288, !noalias !621 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.e, align 8, !tbaa !289, !noalias !621 ; 2 uses
  %5 = icmp ugt ptr %i.d, %4
  %.08.i.i.i = select i1 %5, ptr %i.d, ptr %4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !621
  %i.h = ptrtoint ptr %.08.i.i.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.j, ptr %i.k, align 8, !tbaa !121, !noalias !621
  %i.l = load ptr, ptr %3, align 8, !tbaa !120, !noalias !621
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !122, !noalias !621
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !286, !alias.scope !621
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !120, !noalias !621 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !121, !noalias !621 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !120, !alias.scope !621
  %i.w = load i64, ptr %i.q, align 8, !tbaa !122, !noalias !621
  store i64 %i.w, ptr %i.o, align 8, !tbaa !122, !alias.scope !621
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !121, !noalias !621
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !121, !alias.scope !621
  store ptr %i.q, ptr %i.n, align 8, !tbaa !120, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false), !noalias !621
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull %i.q, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !120, !alias.scope !621 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !122, !alias.scope !621
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #40
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !100
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !120 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.q, align 8, !tbaa !122
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #40
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13ast_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !286
  %i.c = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !120
  %i.j = load i64, ptr %i.d, align 8, !tbaa !122
  store i64 %i.j, ptr %i.b, align 8, !tbaa !122
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !121
  store ptr %i.d, ptr %1, align 8, !tbaa !120
  store i64 0, ptr %i.k, align 8, !tbaa !121
  store i8 0, ptr %i.d, align 8, !tbaa !122
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV13ast_exception, i64 16), ptr %0, align 8, !tbaa !100
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17basic_decl_plugin12mk_func_declEijPK9parameterjPKP4sortS4_(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.func_decl_info, align 8     ; 10 uses
  %8 = alloca %class.symbol, align 8              ; 5 uses
  %9 = alloca %struct.func_decl_info, align 8     ; 11 uses
  %10 = alloca %class.ptr_buffer, align 8         ; 12 uses
  %11 = alloca %class.symbol, align 8             ; 5 uses
  switch i32 %1, label %bb.ad [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 8, label %bb.f
    i32 9, label %bb.g
    i32 7, label %bb.h
    i32 4, label %bb.i
    i32 2, label %bb.k
    i32 10, label %bb.m
    i32 23, label %bb.o
    i32 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !278
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !279
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !277
  br label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.i:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %4, 3
  br i1 %i.o, label %bb.j, label %_ZN17basic_decl_plugin13mk_proof_declE13basic_op_kindjPK9parameterj.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.t = tail call noundef ptr @_ZN17basic_decl_plugin4joinEP4sortS1_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %i.q, ptr noundef %i.s)
end_hunk_0
begin_hunk_1_@_ZNK11ast_manager10check_sortEPK9func_decljPKP4expr:bb.a
bb.av:                                            ; preds = %bb.aq
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %14, align 8, !tbaa !120  ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fu
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.av
  %i.gm = load i64, ptr %i.fu, align 8, !tbaa !122
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.au
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.au ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.gj, %bb.av ] ; 2 uses
  %.1 = phi i1 [ true, %bb.au ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ false, %bb.av ] ; 2 uses
  %i.go = load ptr, ptr %18, align 8, !tbaa !120  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !122
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.at ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  %.2 = phi i1 [ true, %bb.at ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gt) #39
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.as
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.gg, %bb.as ] ; 2 uses
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ true, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  %i.gu = load ptr, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.aw
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !122
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123: ; preds = %bb.aw, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %bb.ar ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.pn.pn.pn, %bb.aw ] ; 4 uses
  %.4 = phi i1 [ true, %bb.ar ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.3, %bb.aw ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gz) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.ha = load ptr, ptr %15, align 8, !tbaa !120  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

.thread152:                                       ; preds = %bb.al
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.he = load ptr, ptr %15, align 8, !tbaa !120  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %.sink.split235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread: ; preds = %.thread152
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !122
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #40
  br label %.sink.split235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123
  %i.hj = load i64, ptr %i.hb, align 8, !tbaa !122
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hk) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br i1 %.4, label %bb.ax, label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br i1 %.4, label %bb.ax, label %bb.ay

.sink.split235:                                   ; preds = %.thread152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread
  %.pn.pn.pn.pn.pn.pn151.ph = phi { ptr, i32 } [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread ], [ %i.hd, %.thread152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.pn.pn.pn.pn.pn.pn151 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn.pn.pn.pn.pn.pn151.ph, %.sink.split235 ]
  call void @__cxa_free_exception(ptr %i.ew) #39
  br label %bb.ay

_ZNK11ast_manager16compatible_sortsEP4sortS1_.exit109.thread147: ; preds = %_ZNK4expr8get_sortEv.exit106, %_ZNK11ast_manager16compatible_sortsEP4sortS1_.exit109
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.loopexit, label %bb.ad, !llvm.loop !719

.loopexit:                                        ; preds = %_ZNK11ast_manager16compatible_sortsEP4sortS1_.exit.thread130, %_ZNK11ast_manager16compatible_sortsEP4sortS1_.exit109.thread147, %bb.b, %.preheader
  ret void

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.w, %bb.ac
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.du, %bb.ac ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread ], [ %.pn80.pn.pn.pn.pn.pn134, %bb.w ], [ %.pn.pn.pn.pn.pn.pn151, %bb.ax ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn80.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ]
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn

bb.az:                                            ; preds = %bb.aq, %bb.aa, %bb.p
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK11ast_manager16compatible_sortsEP4sortS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(952) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %_ZNK4decl13get_family_idEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.c = load i8, ptr %i.b, align 4, !tbaa !339, !range !109, !noundef !110
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNK4decl13get_family_idEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK4decl13get_family_idEv.exit.thread, label %_ZNK4decl13get_family_idEv.exit

_ZNK4decl13get_family_idEv.exit:                  ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 8, !tbaa !158
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.d, label %_ZNK4decl13get_family_idEv.exit.thread

bb.d:                                             ; preds = %_ZNK4decl13get_family_idEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !168  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK4decl13get_family_idEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 8, !tbaa !158
  %i.n = icmp eq i32 %i.m, 5
  br label %_ZNK4decl13get_family_idEv.exit.thread

_ZNK4decl13get_family_idEv.exit.thread:           ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %_ZNK4decl13get_family_idEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ false, %_ZNK4decl13get_family_idEv.exit ], [ false, %bb.b ], [ %i.n, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z9to_stringI6symbolENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !113 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #39
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.e = phi ptr [ %.sroa.0.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.147, %bb.b ]
  %i.f = phi i64 [ %i.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.b ]
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.e, i64 noundef %i.f)
          to label %_ZlsRSo6symbol.exit unwind label %bb.f ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.148, i64 noundef 2)
          to label %.noexc3 unwind label %bb.f    ; 0 uses

.noexc3:                                          ; preds = %bb.c
  %i.i = lshr i64 %i.a, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.j)
          to label %_ZlsRSo6symbol.exit unwind label %bb.f ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.invoke, %.noexc3
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !288, !noalias !728 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZlsRSo6symbol.exit
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.o, align 8, !tbaa !289, !noalias !728 ; 2 uses
  %5 = icmp ugt ptr %i.n, %4
  %.08.i.i.i = select i1 %5, ptr %i.n, ptr %4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !290, !noalias !728
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.t, ptr %i.u, align 8, !tbaa !121, !noalias !728
  %i.v = load ptr, ptr %3, align 8, !tbaa !120, !noalias !728
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !122, !noalias !728
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZlsRSo6symbol.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !286, !alias.scope !728
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !120, !noalias !728 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !121, !noalias !728 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.z, ptr %0, align 8, !tbaa !120, !alias.scope !728
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !122, !noalias !728
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !122, !alias.scope !728
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !121, !noalias !728
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !121, !alias.scope !728
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !120, !noalias !728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false), !noalias !728
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !120, !alias.scope !728 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.y, align 8, !tbaa !122, !alias.scope !728
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #40
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !100
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !100
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !120 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !122
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #40
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #39
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.az) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.f:                                             ; preds = %.invoke, %.noexc3, %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ak, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11ast_manager16check_sorts_coreEPK3ast(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #39 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.126, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %tailrecurse._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !286
  %i.d = load ptr, ptr %2, align 8, !tbaa !120    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !121  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %i.b, align 8, !tbaa !120
  %i.k = load i64, ptr %i.e, align 8, !tbaa !122
  store i64 %i.k, ptr %i.c, align 8, !tbaa !122
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !121
  store ptr %i.e, ptr %2, align 8, !tbaa !120
  store i64 0, ptr %i.m, align 8, !tbaa !121
  store i8 0, ptr %i.e, align 8, !tbaa !122
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV13ast_exception, i64 16), ptr %i.a, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI13ast_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #41
          to label %bb.j unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !120    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !122
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.i

bb.f:                                             ; preds = %tailrecurse._crit_edge
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @__cxa_free_exception(ptr %i.a) #39
  br label %bb.i

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr3537 = phi ptr [ %i.ap, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr3537, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 65535
  %.not22 = icmp eq i32 %i.w, 0
  br i1 %.not22, label %bb.g, label %.thread30

bb.g:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr3537, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !177  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.tr3537, i64 24 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr3537, i64 32 ; 2 uses
  tail call void @_ZNK11ast_manager10check_sortEPK9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.y, i32 noundef %i.aa, ptr noundef nonnull %i.ab)
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !178
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.h, label %.thread30

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !168 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.thread30, label %_ZNK9func_decl19is_flat_associativeEv.exit

_ZNK9func_decl19is_flat_associativeEv.exit:       ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = and i16 %i.ah, 6
  %or.cond.not = icmp eq i16 %i.ai, 2
  br i1 %or.cond.not, label %_ZNK9func_decl20is_right_associativeEv.exit.thread, label %_ZNK9func_decl20is_right_associativeEv.exit.thread.thread

end_hunk_1
