inline.NumInlined: 1492
inline.NumDeleted: 587
begin_hunk_0_@_ZN5boost15program_options18option_description9set_namesEPKc:bb.a
  br i1 %i.r, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !36

.noexc11.i:                                       ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc14 unwind label %bb.r

.noexc14:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30
          to label %.noexc15 unwind label %bb.r   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.s, ptr %4, align 8, !tbaa !29
  store i64 %i.n, ptr %i.l, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.c
  %i.t = phi ptr [ %i.s, %.noexc15 ], [ %i.l, %bb.c ] ; 3 uses
  switch i64 %i.n, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.u, ptr %i.t, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %1, i64 %i.n, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.w, align 1, !tbaa !16
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.l, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !13
  store i8 0, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 44)
          to label %bb.j unwind label %.loopexit  ; 2 uses

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.al = and i32 %i.ak, 5
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !33  ; 9 uses
  br i1 %.not.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !46
  %.not.i16 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i16, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !9
  %i.ap = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !13 ; 8 uses
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = icmp slt i64 %i.aq, 0
  br i1 %i.as, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #32
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.at = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !36

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #30
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.av, ptr %i.am, align 8, !tbaa !29
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc19, %bb.l
  %i.aw = phi ptr [ %i.av, %.noexc19 ], [ %i.ao, %bb.l ] ; 3 uses
  switch i64 %i.aq, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !16
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !16
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aq, ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !16
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.backedge

bb.q:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.backedge unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.backedge: ; preds = %bb.q, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.l
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.s
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !16
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.af

.loopexit:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.bj = ptrtoint ptr %i.am to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ugt i64 %i.bl, 32
  br i1 %i.bm, label %bb.u, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds i8, ptr %i.am, i64 -24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.v, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds i8, ptr %i.am, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !16, !noalias !47
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29, !noalias !47
  %7 = load i64, ptr %i.bn, align 8, !tbaa !13, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !47
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.br, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = load ptr, ptr %6, align 8, !tbaa !29    ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.by = icmp eq ptr %i.bw, %i.bx                ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.w
  br i1 %i.by, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.w
  br i1 %i.by, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  switch i64 %i.ca, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !16
  store i8 %i.cc, ptr %i.bt, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !13
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = load <2 x i64>, ptr %i.ci, align 8, !tbaa !16
  store <2 x i64> %i.cj, ptr %i.ch, align 8, !tbaa !16
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ck = load i64, ptr %i.bu, align 8, !tbaa !16
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !tbaa !16
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !tbaa !16
  %.not.i25 = icmp eq ptr %i.bt, null
  br i1 %.not.i25, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bt, ptr %6, align 8, !tbaa !29
  store i64 %i.ck, ptr %i.bx, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bx, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aa, %bb.ab
  %i.co = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bt, %bb.aa ], [ %i.bx, %bb.ab ]
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !13
  store i8 0, ptr %i.co, align 1, !tbaa !16
  %i.cq = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -32 ; 3 uses
  store ptr %i.cw, ptr %i.d, align 8, !tbaa !33
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cv, i64 -16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dc = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !30  ; 4 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp eq i64 %i.dg, 32
  br i1 %i.dh, label %bb.ac, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37

bb.ac:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !13
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %.lr.ph.i.i.i.i30, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37

.lr.ph.i.i.i.i30:                                 ; preds = %bb.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  %.05.i.i.i.i31 = phi ptr [ %i.dp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33 ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.dk = load ptr, ptr %.05.i.i.i.i31, align 8, !tbaa !29 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i30
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.dp, %i.dc
  br i1 %.not.i.i.i.i34, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35, label %.lr.ph.i.i.i.i30, !llvm.loop !34

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  store ptr %i.dd, ptr %i.d, align 8, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37

bb.ad:                                            ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ae

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35, %bb.u, %bb.ac, %bb.t
  %i.dr = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ab
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37
  %i.dt = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.dv = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dv, ptr %3, align 8, !tbaa !7
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dx = getelementptr i8, ptr %i.dv, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %3, i64 %i.dy
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ea, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !29 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !16
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ea, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #31
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ei, ptr %3, align 8, !tbaa !7
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.ek = getelementptr i8, ptr %i.ei, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %3, i64 %i.el
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 120
end_hunk_0
