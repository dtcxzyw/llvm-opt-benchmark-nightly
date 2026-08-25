Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/ter_db?download=true
inline.NumInlined: 1312
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm6EEC2EOS6_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !23
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !9  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.2
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !9
  %i.au = load i64, ptr %i.as, align 8, !tbaa !25
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.3

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.3
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !24
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !9
  store i64 0, ptr %i.az, align 8, !tbaa !24
  store i8 0, ptr %i.as, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !23
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.3
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !9
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !25
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.4

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.4: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !24
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !9
  store i64 0, ptr %i.bn, align 8, !tbaa !24
  store i8 0, ptr %i.bg, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !9  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.4
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !9
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !25
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.5

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.5: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.5
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !24
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !9
  store i64 0, ptr %i.cb, align 8, !tbaa !24
  store i8 0, ptr %i.bu, align 8, !tbaa !25
  ret void
}

declare noundef ptr @_Z13gmx_fio_fopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9
  %i.g = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.g, ptr %i.d, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef i32 @_ZNK13MoleculePatch4typeEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

declare void @_Z8print_abP8_IO_FILERK13MoleculePatchPKc(ptr noundef, ptr noundef nonnull align 8 dereferenceable(256), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z14gmx_fio_fcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #2

declare void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::optional.116") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z10filter_terN3gmx8ArrayRefI21MoleculePatchDatabaseEEPKc(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.132") align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not130200 = icmp eq ptr %1, %2
  br i1 %.not130200, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.d = icmp eq ptr %3, null
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.d, label %.lr.ph.split.us, label %.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.c, ptr %4, align 8, !tbaa !23
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc unwind label %.loopexit.split-lp134

.preheader:                                       ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread
  store ptr %i.by, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %._crit_edge.i.i77

.split:                                           ; preds = %.lr.ph, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread
  %i.o = phi ptr [ %i.bw, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread ], [ null, %.lr.ph ] ; 9 uses
  %i.p = phi ptr [ %i.bx, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread ], [ null, %.lr.ph ] ; 4 uses
  %.sroa.0122.0201 = phi ptr [ %i.bz, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread ], [ %1, %.lr.ph ] ; 4 uses
  %i.q = phi ptr [ %i.by, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread ], [ null, %.lr.ph ] ; 14 uses
  %i.r = load ptr, ptr %.sroa.0122.0201, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit, %.split
  %.033 = phi ptr [ %i.r, %.split ], [ %i.bv, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.c, ptr %4, align 8, !tbaa !23
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.s, ptr %i.b, align 8, !tbaa !28
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc:                                           ; preds = %.lr.ph.split.us
  unreachable

.noexc.i:                                         ; preds = %bb.b
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc57 unwind label %.loopexit133 ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.u, ptr %4, align 8, !tbaa !9
  %i.v = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.v, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc57, %bb.b
  %i.w = phi ptr [ %i.u, %.noexc57 ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.s, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %3, align 1, !tbaa !25
  store i8 %i.x, ptr %i.w, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %3, i64 %i.s, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  store i64 %i.y, ptr %i.e, align 8, !tbaa !24
  %i.z = load ptr, ptr %4, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.f, ptr %5, align 8, !tbaa !23
  %i.ab = icmp eq ptr %.033, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc60 unwind label %.loopexit.split-lp139

.noexc60:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.033) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !28
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i59, label %._crit_edge.i.i58

.noexc.i59:                                       ; preds = %bb.g
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %.loopexit138 ; 2 uses

.noexc61:                                         ; preds = %.noexc.i59
  store ptr %i.ae, ptr %5, align 8, !tbaa !9
  %i.af = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.af, ptr %i.f, align 8, !tbaa !25
  br label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %.noexc61, %bb.g
  %i.ag = phi ptr [ %i.ae, %.noexc61 ], [ %i.f, %bb.g ] ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i58
  %i.ah = load i8, ptr %.033, align 1, !tbaa !25
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !25
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %.033, i64 %i.ac, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i58
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !24
  %i.aj = load ptr, ptr %5, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.al = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 3)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.f
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aq = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.c, align 8, !tbaa !25
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.al, label %bb.l, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.not.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.sroa.0122.0201, ptr %i.p, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !202
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.av = ptrtoint ptr %i.o to i64
  %i.aw = ptrtoint ptr %i.q to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 6 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc66 unwind label %.loopexit.split-lp144

.noexc66:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25
          to label %.noexc67 unwind label %.loopexit143 ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store ptr %.sroa.0122.0201, ptr %i.bg, align 8, !tbaa !65
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %bb.p, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.q, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.p, %.noexc67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bi, ptr %i.h, align 8, !tbaa !202
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !206
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread

.loopexit133:                                     ; preds = %.noexc.i
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

.loopexit.split-lp134:                            ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

.loopexit138:                                     ; preds = %.noexc.i59
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

.loopexit.split-lp139:                            ; preds = %bb.f
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.r:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.q, ptr %0, align 8
  %i.bl = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.f
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.r
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !25
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.r, %.loopexit138, %.loopexit.split-lp139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %.pn44 = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ], [ %lpad.loopexit140, %.loopexit138 ], [ %i.bk, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.br = load i64, ptr %i.c, align 8, !tbaa !25
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %.loopexit133, %.loopexit.split-lp134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.bt = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ null, %.loopexit.split-lp134 ], [ %i.o, %.loopexit133 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ], [ %lpad.loopexit135, %.loopexit133 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %thread-pre-split

.loopexit143:                                     ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %0, align 8
  br label %bb.aq

.loopexit.split-lp144:                            ; preds = %bb.o
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.bu = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.033, i32 noundef 124) #27 ; 2 uses
  %.not47 = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  br i1 %.not47, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread, label %bb.b, !llvm.loop !207

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit, %bb.m, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bw = phi ptr [ %i.bj, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.o, %bb.m ], [ %i.o, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bx = phi ptr [ %i.bi, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.au, %bb.m ], [ %i.p, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.by = phi ptr [ %i.bf, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.q, %bb.m ], [ %i.q, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0122.0201, i64 280 ; 2 uses
  %.not130 = icmp eq ptr %i.bz, %2
  br i1 %.not130, label %.preheader, label %.split, !llvm.loop !208

._crit_edge:                                      ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96
  %.not132 = icmp eq ptr %.sroa.0124.1, %2
  br i1 %.not132, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit107, label %bb.aj

._crit_edge.i.i77:                                ; preds = %.preheader, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96
  %i.ca = phi ptr [ %i.bw, %.preheader ], [ %i.em, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96 ] ; 8 uses
  %i.cb = phi ptr [ %i.bx, %.preheader ], [ %i.en, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96 ] ; 9 uses
  %.sroa.0124.0219 = phi ptr [ %2, %.preheader ], [ %.sroa.0124.1, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96 ] ; 4 uses
  %.sroa.0115.0218 = phi ptr [ %1, %.preheader ], [ %i.ep, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96 ] ; 6 uses
  %i.cc = phi ptr [ %i.by, %.preheader ], [ %i.eo, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96 ] ; 11 uses
  %i.cd = load ptr, ptr %.sroa.0115.0218, align 8, !tbaa !9 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.j, ptr %6, align 8, !tbaa !23
  store i32 1701736270, ptr %i.j, align 8
  store i64 4, ptr %i.k, align 8, !tbaa !24
  store i8 0, ptr %i.n, align 4, !tbaa !25
  %i.ce = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0115.0218)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i77
  %i.cf = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.j
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.s
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !25
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.ce, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i77
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.j
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.t
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !25
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %thread-pre-split

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.co = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cd, i32 noundef 45) #27 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %.critedge, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96

.critedge:                                        ; preds = %bb.u, %bb.v
  %i.cs = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cc to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 9 uses
  %i.cv = ashr i64 %i.cu, 5                       ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge
  %i.cx = and i64 %i.cu, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.cc, i64 %i.cx ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.064.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i ], [ %i.dk, %bb.aa ] ; 2 uses
  %.sroa.038.063.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %i.dj, %bb.aa ] ; 9 uses
  %i.cy = load ptr, ptr %.sroa.038.063.i.i.i, align 8, !tbaa !65
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.cz = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not49.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not49.i.i.i, label %bb.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !65
  %.val1.i22.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !9
  %i.dc = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i22.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not50.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not50.i.i.i, label %bb.y, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit307"

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !65
  %.val1.i23.i.i.i = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.df = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i23.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not51.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not51.i.i.i, label %bb.z, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit305"

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !65
  %.val1.i24.i.i.i = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.di = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i24.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not52.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not52.i.i.i, label %bb.aa, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit"

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 32
  %i.dk = add nsw i64 %.064.i.i.i, -1
  %i.dl = icmp sgt i64 %.064.i.i.i, 1
  br i1 %i.dl, label %bb.w, label %._crit_edge.loopexit.i.i.i, !llvm.loop !209

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.aa
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre72.i.i.i = sub i64 %i.cs, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.critedge
  %.pre-phi73.i.i.i = phi i64 [ %.pre72.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cu, %.critedge ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cc, %.critedge ] ; 5 uses
  %i.dm = ashr exact i64 %.pre-phi73.i.i.i, 3
  switch i64 %i.dm, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.thread" [
    i64 3, label %bb.ab
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge70.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.dn = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8, !tbaa !65
  %.val1.i25.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.do = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i25.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %bb.ac, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %bb.ac, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.dp, %bb.ac ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dq = load ptr, ptr %.sroa.038.1.i.i.i, align 8, !tbaa !65
  %.val1.i26.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !9
  %i.dr = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i26.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not47.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not47.i.i.i, label %bb.ad, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

bb.ad:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge70.i.i.i

._crit_edge._crit_edge70.i.i.i:                   ; preds = %bb.ad, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.ds, %bb.ad ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dt = load ptr, ptr %.sroa.038.2.i.i.i, align 8, !tbaa !65
  %.val1.i27.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !9
  %i.du = call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val1.i27.i.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.cd) #27
  %.not48.i.i.i = icmp eq ptr %i.du, null
  %spec.select.i.i.i = select i1 %.not48.i.i.i, ptr %i.cb, ptr %.sroa.038.2.i.i.i
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit305": ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit307": ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.038.063.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit": ; preds = %bb.w, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit305", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit307", %._crit_edge._crit_edge70.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.ab
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge70.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.ab ], [ %i.dx, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit307" ], [ %i.dw, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit305" ], [ %i.dv, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.063.i.i.i, %bb.w ]
  %i.dy = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cb
  br i1 %i.dy, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.thread", label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.thread": ; preds = %._crit_edge.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit"
  %.not.i.i87 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i87, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.thread"
  store ptr %.sroa.0115.0218, ptr %i.cb, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.l, align 8, !tbaa !202
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96

bb.af:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit.thread"
  %i.ea = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.ea, label %bb.ag, label %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i88

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i88: ; preds = %bb.af
  %i.eb = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i89 = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i.i89, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 1152921504606846975)
  %i.ef = select i1 %i.ed, i64 1152921504606846975, i64 %i.ee ; 3 uses
  %.not.i.i.i.i90 = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i.i90)
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #25
          to label %.noexc95 unwind label %.loopexit ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i88
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.cu ; 2 uses
  store ptr %.sroa.0115.0218, ptr %i.ei, align 8, !tbaa !65
  %i.ej = icmp sgt i64 %i.cu, 0
  br i1 %i.ej, label %bb.ah, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91

bb.ah:                                            ; preds = %.noexc95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr align 8 %i.cc, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91: ; preds = %bb.ah, %.noexc95
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %.not.i17.i.i.i92 = icmp eq ptr %i.cc, null
  br i1 %.not.i17.i.i.i92, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cu) #24
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93: ; preds = %bb.ai, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91
  store ptr %i.eh, ptr %0, align 8, !tbaa !210
  store ptr %i.ek, ptr %i.l, align 8, !tbaa !202
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ef ; 2 uses
  store ptr %i.el, ptr %i.m, align 8, !tbaa !206
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96

.loopexit:                                        ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i88
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit", %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93, %bb.ae, %bb.v
  %i.em = phi ptr [ %i.ca, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit" ], [ %i.ca, %bb.v ], [ %i.ca, %bb.ae ], [ %i.el, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 4 uses
  %i.en = phi ptr [ %i.cb, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit" ], [ %i.cb, %bb.v ], [ %i.dz, %bb.ae ], [ %i.ek, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 4 uses
  %i.eo = phi ptr [ %i.cc, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit" ], [ %i.cc, %bb.v ], [ %i.cc, %bb.ae ], [ %i.eh, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %.sroa.0124.1 = phi ptr [ %.sroa.0124.0219, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPP21MoleculePatchDatabaseSt6vectorIS3_SaIS3_EEEEZ10filter_terN3gmx8ArrayRefIS2_EEPKcE3$_0ET_SF_SF_T0_.exit" ], [ %.sroa.0124.0219, %bb.v ], [ %.sroa.0124.0219, %bb.ae ], [ %.sroa.0124.0219, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %.sroa.0115.0218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0115.0218, i64 280 ; 2 uses
  %.not131 = icmp eq ptr %i.ep, %2
  br i1 %.not131, label %._crit_edge, label %._crit_edge.i.i77, !llvm.loop !211

bb.aj:                                            ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i98 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i98, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %.sroa.0124.1, ptr %i.en, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !202
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit107

bb.al:                                            ; preds = %bb.aj
  %7 = load ptr, ptr %0, align 8, !tbaa !210      ; 4 uses
  %i.et = ptrtoint ptr %i.em to i64
  %i.eu = ptrtoint ptr %7 to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.am, label %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i99

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc105 unwind label %bb.ap

.noexc105:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.al
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #25
          to label %.noexc106 unwind label %bb.ap ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i99
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 2 uses
  store ptr %.sroa.0124.1, ptr %i.fe, align 8, !tbaa !65
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.an, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i102

bb.an:                                            ; preds = %.noexc106
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr align 8 %7, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i102

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i102: ; preds = %bb.an, %.noexc106
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.not.i17.i.i.i103 = icmp eq ptr %7, null
  br i1 %.not.i17.i.i.i103, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i104, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i102
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.ev) #24
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i104

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i104: ; preds = %bb.ao, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i102
  store ptr %i.fd, ptr %0, align 8, !tbaa !210
  store ptr %i.fg, ptr %i.eq, align 8, !tbaa !202
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.er, align 8, !tbaa !206
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit107

bb.ap:                                            ; preds = %_ZNKSt6vectorIP21MoleculePatchDatabaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i99, %bb.am
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE9push_backEOS1_.exit107: ; preds = %bb.a, %bb.ak, %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i104, %._crit_edge
  ret void

thread-pre-split:                                 ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %.loopexit.split-lp, %.loopexit
  %.ph = phi ptr [ %i.ca, %.loopexit.split-lp ], [ %i.ca, %.loopexit ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.em, %bb.ap ]
  %.pn48.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.fi, %bb.ap ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !210
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split, %.loopexit143, %.loopexit.split-lp144
  %8 = phi ptr [ %.pr, %thread-pre-split ], [ %i.q, %.loopexit143 ], [ %i.q, %.loopexit.split-lp144 ] ; 3 uses
  %9 = phi ptr [ %.ph, %thread-pre-split ], [ %i.o, %.loopexit143 ], [ %i.o, %.loopexit.split-lp144 ]
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.ph, %thread-pre-split ], [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp144 ]
  %.not.i.i.i108 = icmp eq ptr %8, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = ptrtoint ptr %9 to i64
  %i.fk = ptrtoint ptr %8 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.fl) #24
  br label %_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EED2Ev.exit

_ZNSt6vectorIP21MoleculePatchDatabaseSaIS1_EED2Ev.exit: ; preds = %bb.aq, %bb.ar
  resume { ptr, i32 } %.pn48.pn.pn
}

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z10choose_terN3gmx8ArrayRefIP21MoleculePatchDatabaseEEPKc(ptr %0, ptr %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %2) ; 0 uses
  %.not1516 = icmp eq ptr %0, %1
  br i1 %.not1516, label %.critedge.preheader, label %.lr.ph

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.017 = phi ptr [ %i.o, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.017, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = tail call noundef i32 @_Z11gmx_wcmatchPKcS0_(ptr noundef nonnull @.str.39, ptr noundef %i.g)
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %.sroa.0.017, align 8, !tbaa !65
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = select i1 %i.i, ptr @.str.41, ptr @.str.9
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %.018, ptr noundef %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.n = add nuw nsw i32 %.018, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.o, %1
  br i1 %.not15, label %.critedge.preheader, label %.lr.ph

.critedge:                                        ; preds = %.critedge, %.critedge.preheader
  %i.p = load ptr, ptr @stdin, align 8, !tbaa !21
  %i.q = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef %i.p, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a)
  %i.r = icmp eq i32 %i.q, 1
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  %or.cond.not22 = select i1 %i.r, i1 %i.t, i1 false
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %.not = icmp sgt i64 %i.e, %i.u
  %or.cond19 = select i1 %or.cond.not22, i1 %.not, i1 false
  br i1 %or.cond19, label %bb.b, label %.critedge, !llvm.loop !212

bb.b:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.w
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare noundef i32 @_Z11gmx_wcmatchPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseI21MoleculePatchDatabaseSaIS0_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTS21MoleculePatchDatabase", !13, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSNSt10filesystem7__cxx114pathE", !13, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!23 = !{!11, !12, i64 0}
!24 = !{!10, !14, i64 8}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!28 = !{!14, !14, i64 0}
!29 = !{!30, !33, i64 8}
!30 = !{!"_ZTSSt15_Rb_tree_header", !31, i64 0, !14, i64 32}
!31 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!32 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!33 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN3gmx13StringCompareE", !36, i64 0}
!36 = !{!"_ZTSN3gmx17StringCompareTypeE", !7, i64 0}
!37 = !{!33, !33, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"_ZTS11BondedTypes", !7, i64 0}
!42 = !{!36, !36, i64 0}
!43 = !{!30, !32, i64 0}
!44 = !{!30, !14, i64 32}
!45 = !{!12, !12, i64 0}
!46 = distinct !{!46, !39}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_11ReplaceTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE", !13, i64 0}
!49 = !{!50, !51, i64 32}
!50 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11ReplaceTypeE", !10, i64 0, !51, i64 32}
!51 = !{!"_ZTS11ReplaceType", !7, i64 0}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_11ReplaceTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE10_Auto_nodeE", !48, i64 0, !54, i64 8}
!54 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11ReplaceTypeEE", !13, i64 0}
!55 = !{!51, !51, i64 0}
!56 = distinct !{!56, !39}
!57 = !{!16, !17, i64 16}
!58 = !{!59, !6, i64 0}
!59 = !{!"_ZTS21BondedInteractionList", !6, i64 0, !60, i64 8}
!60 = !{!"_ZTSSt6vectorI17BondedInteractionSaIS0_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseI17BondedInteractionSaIS0_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseI17BondedInteractionSaIS0_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseI17BondedInteractionSaIS0_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTS17BondedInteraction", !13, i64 0}
!65 = !{!17, !17, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!68 = distinct !{!68, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!71 = distinct !{!71, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!72 = !{!70, !67}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!75, !76, i64 8}
!75 = !{!"_ZTSNSt12_Vector_baseI13MoleculePatchSaIS0_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!76 = !{!"p1 _ZTS13MoleculePatch", !13, i64 0}
!77 = !{!75, !76, i64 16}
!78 = !{!79, !6, i64 96}
!79 = !{!"_ZTS13MoleculePatch", !6, i64 0, !10, i64 8, !10, i64 40, !80, i64 72, !6, i64 96, !6, i64 100, !6, i64 104, !85, i64 112, !86, i64 240, !86, i64 241, !7, i64 244}
!80 = !{!"_ZTSSt6vectorI6t_atomSaIS0_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseI6t_atomSaIS0_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseI6t_atomSaIS0_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseI6t_atomSaIS0_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTS6t_atom", !13, i64 0}
!85 = !{!"_ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EE", !7, i64 0}
!86 = !{!"bool", !7, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"float", !7, i64 0}
!89 = !{!75, !76, i64 0}
!90 = !{!79, !86, i64 241}
!91 = !{!79, !6, i64 0}
!92 = !{!84, !84, i64 0}
!93 = !{!83, !84, i64 16}
!94 = !{!83, !84, i64 0}
!95 = distinct !{!95, !39}
!96 = !{!6, !6, i64 0}
!97 = !{!83, !84, i64 8}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !8, i64 0}
!100 = !{!101, !102, i64 16}
!101 = !{!"_ZTS6t_atom", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !102, i64 16, !102, i64 18, !103, i64 20, !6, i64 24, !6, i64 28, !7, i64 32}
!102 = !{!"short", !7, i64 0}
!103 = !{!"_ZTS12ParticleType", !7, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"double", !7, i64 0}
!106 = !{!101, !88, i64 0}
!107 = !{!101, !88, i64 4}
!108 = !{!63, !64, i64 8}
!109 = !{!63, !64, i64 16}
!110 = !{!64, !64, i64 0}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39}
!113 = !{!76, !76, i64 0}
!114 = distinct !{!114, !39}
!115 = !{!116, !86, i64 32}
!116 = !{!"_ZTSSt22_Optional_payload_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !86, i64 32}
!117 = !{i8 0, i8 2}
!118 = !{}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39, !122}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{!124, !20, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseINSt10filesystem7__cxx114pathESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!125 = !{!124, !20, i64 8}
!126 = distinct !{!126, !39}
!127 = !{!124, !20, i64 16}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = !{!63, !64, i64 0}
!131 = distinct !{!131, !39}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!134 = distinct !{!134, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!135 = !{!30, !33, i64 16}
!136 = !{!30, !33, i64 24}
!137 = distinct !{!137, !39}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_11BondedTypesESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE", !13, i64 0}
!142 = !{!143, !144, i64 8}
!143 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_11BondedTypesESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE10_Auto_nodeE", !141, i64 0, !144, i64 8}
!144 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11BondedTypesEE", !13, i64 0}
!145 = distinct !{!145, !39}
!146 = !{!31, !33, i64 24}
!147 = !{!148, !41, i64 32}
!148 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11BondedTypesE", !10, i64 0, !41, i64 32}
!149 = !{!31, !33, i64 16}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !39}
!152 = distinct !{!152, !39}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZSt19__relocate_object_aI21MoleculePatchDatabaseS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!155 = distinct !{!155, !"_ZSt19__relocate_object_aI21MoleculePatchDatabaseS0_SaIS0_EEvPT_PT0_RT1_"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZSt19__relocate_object_aI21MoleculePatchDatabaseS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !39}
!159 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !96}
!160 = !{!161, !161, i64 0}
!161 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !13, i64 0}
!162 = !{!163, !164, i64 0}
!163 = !{!"_ZTSSt10type_index", !164, i64 0}
!164 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!165 = distinct !{null, null, null}
!166 = !{!13, !13, i64 0}
!167 = !{!168, !169, i64 0}
!168 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !169, i64 0}
!169 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!170 = !{!171, !172, i64 0}
!171 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !172, i64 0, !168, i64 8}
!172 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !13, i64 0}
!173 = !{!174, !6, i64 8}
!174 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!175 = !{!174, !6, i64 12}
!176 = distinct !{null, null, null}
!177 = !{!178, !179, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!179 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!180 = !{!178, !179, i64 8}
!181 = !{!182, !13, i64 0}
!182 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!183 = distinct !{!183, !39}
!184 = !{!178, !179, i64 16}
!185 = distinct !{null}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!188 = distinct !{!188, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!191 = !{!187, !190}
!192 = !{!193, !86, i64 224}
!193 = !{!"_ZTS17BondedInteraction", !194, i64 0, !10, i64 192, !86, i64 224}
!194 = !{!"_ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm6EE", !7, i64 0}
!195 = distinct !{!195, !39}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!198 = distinct !{!198, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZSt19__relocate_object_aI17BondedInteractionS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!201 = !{!197, !200}
!202 = !{!203, !204, i64 8}
!203 = !{!"_ZTSNSt12_Vector_baseIP21MoleculePatchDatabaseSaIS1_EE17_Vector_impl_dataE", !204, i64 0, !204, i64 8, !204, i64 16}
!204 = !{!"p2 _ZTS21MoleculePatchDatabase", !205, i64 0}
!205 = !{!"any p2 pointer", !13, i64 0}
!206 = !{!203, !204, i64 16}
!207 = distinct !{!207, !39}
!208 = distinct !{!208, !39}
!209 = distinct !{!209, !39}
!210 = !{!203, !204, i64 0}
!211 = distinct !{!211, !39}
!212 = distinct !{!212, !39}
end_hunk_0
