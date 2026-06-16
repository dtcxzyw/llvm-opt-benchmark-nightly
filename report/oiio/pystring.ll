inline.NumInlined: 1032
inline.NumDeleted: 183
begin_hunk_0_@_ZN8pystring6rsplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
  store ptr %i.gj, ptr %i.h, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ao

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.an
  %.pre152 = load ptr, ptr %7, align 8, !tbaa !12 ; 2 uses
  %i.gk = icmp eq ptr %.pre152, %i.dx
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre152) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dx
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.gm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

.critedge.thread:                                 ; preds = %bb.y, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.147 = phi i32 [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.046118, %.critedge ], [ %.046118, %bb.y ] ; 2 uses
  %.145 = phi i32 [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.ea, %.critedge ], [ %i.ea, %bb.y ] ; 2 uses
  %.1 = phi i32 [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.043120, %.critedge ], [ %.043120, %bb.y ]
  %.not = icmp slt i32 %.145, %i.dr
  br i1 %.not, label %.critedge.thread.._crit_edge.loopexit_crit_edge, label %bb.y, !llvm.loop !62

.critedge.thread.._crit_edge.loopexit_crit_edge:  ; preds = %.critedge.thread
  %.pre153.pre = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !63
  br label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.ag, %.critedge.thread.._crit_edge.loopexit_crit_edge, %bb.x
  %i.go = phi i64 [ %i.r, %bb.x ], [ %.pre153.pre, %.critedge.thread.._crit_edge.loopexit_crit_edge ], [ %.pre153.pre158, %bb.ag ]
  %.046.lcssa = phi i32 [ %i.dq, %bb.x ], [ %.147, %.critedge.thread.._crit_edge.loopexit_crit_edge ], [ %.046118, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.gp = sext i32 %.046.lcssa to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.gq, ptr %8, align 8, !tbaa !26, !alias.scope !63
  %i.gr = load ptr, ptr %0, align 8, !tbaa !12, !noalias !63 ; 2 uses
  %spec.select.i.i.i68 = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 %i.go) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !63
  store i64 %spec.select.i.i.i68, ptr %i.a, align 8, !tbaa !27, !noalias !63
  %i.gs = icmp ugt i64 %spec.select.i.i.i68, 15
  br i1 %i.gs, label %.noexc10.i.i70, label %._crit_edge.i.i.i69

.noexc10.i.i70:                                   ; preds = %._crit_edge
  %i.gt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gt, ptr %8, align 8, !tbaa !12, !alias.scope !63
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !63
  store i64 %i.gu, ptr %i.gq, align 8, !tbaa !20, !alias.scope !63
  br label %._crit_edge.i.i.i69

._crit_edge.i.i.i69:                              ; preds = %.noexc10.i.i70, %._crit_edge
  %i.gv = phi ptr [ %i.gt, %.noexc10.i.i70 ], [ %i.gq, %._crit_edge ] ; 2 uses
  switch i64 %spec.select.i.i.i68, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i69
  %i.gw = load i8, ptr %i.gr, align 1, !tbaa !20
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71

bb.aq:                                            ; preds = %._crit_edge.i.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gr, i64 %spec.select.i.i.i68, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71: ; preds = %._crit_edge.i.i.i69, %bb.ap, %bb.aq
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !63 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !19, !alias.scope !63
  %i.gz = load ptr, ptr %8, align 8, !tbaa !12, !alias.scope !63
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !63
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !11  ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !28
  %.not.i.i72 = icmp eq ptr %i.hb, %i.hd
  br i1 %.not.i.i72, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 3 uses
  store ptr %i.he, ptr %i.hb, align 8, !tbaa !26
  %i.hf = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.gq
  br i1 %i.hg, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

bb.as:                                            ; preds = %bb.ar
  %i.hh = load i64, ptr %i.gy, align 8, !tbaa !19 ; 3 uses
  %i.hi = icmp ult i64 %i.hh, 16
  call void @llvm.assume(i1 %i.hi)
  %i.hj = add nuw nsw i64 %i.hh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.he, ptr noundef nonnull align 8 dereferenceable(1) %i.gq, i64 %i.hj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %bb.ar
  store ptr %i.hf, ptr %i.hb, align 8, !tbaa !12
  %i.hk = load i64, ptr %i.gq, align 8, !tbaa !20
  store i64 %i.hk, ptr %i.he, align 8, !tbaa !20
  %.pre154 = load i64, ptr %i.gy, align 8, !tbaa !19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
  %i.hl = phi i64 [ %.pre154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73 ], [ %i.hh, %bb.as ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !19
  store ptr %i.gq, ptr %8, align 8, !tbaa !12
  store i64 0, ptr %i.gy, align 8, !tbaa !19
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store ptr %i.ho, ptr %i.h, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.hb, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76 unwind label %bb.au

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76: ; preds = %bb.at
  %.pre155 = load ptr, ptr %8, align 8, !tbaa !12 ; 2 uses
  %i.hp = icmp eq ptr %.pre155, %i.gq
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76
  call void @_ZdlPv(ptr noundef %.pre155) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hq = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.hr = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %.not.i80 = icmp ult i64 %i.hu, 33
  br i1 %.not.i80, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %.lr.ph.i
  %i.hv = phi i64 [ %i.ig, %.lr.ph.i ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.hw = phi ptr [ %i.id, %.lr.ph.i ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %.07.i = phi i64 [ %i.ib, %.lr.ph.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %.07.i
  %i.hy = xor i64 %.07.i, -1
  %i.hz = getelementptr i8, ptr %i.hw, i64 %i.hv
  %i.ia = getelementptr [32 x i8], ptr %i.hz, i64 %i.hy
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hx, ptr noundef nonnull align 8 dereferenceable(32) %i.ia) #24
  %i.ib = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %i.ic = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.id = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = ashr exact i64 %i.ig, 5
  %i.ii = lshr i64 %i.ih, 1
  %i.ij = icmp samesign ult i64 %i.ib, %i.ii
  br i1 %i.ij, label %.lr.ph.i, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !55

_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %._crit_edge.thread.i, %bb.b
  ret void

bb.au:                                            ; preds = %bb.at
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.gq
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.il) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring8do_stripERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 12 uses
  %i.e = trunc i64 %i.d to i32                    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp ne i32 %2, 1
  %i.j = icmp sgt i32 %i.e, 0
  %or.cond78 = select i1 %.not61, i1 %i.j, i1 false
  br i1 %or.cond78, label %.lr.ph74, label %.critedge

.lr.ph74:                                         ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !12
  %wide.trip.count88 = and i64 %i.d, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph74, %bb.d
  %indvars.iv85 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next86, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv85
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = sext i8 %i.m to i32
  %i.o = tail call i32 @isspace(i32 noundef %i.n) #23
  %.not62 = icmp eq i32 %i.o, 0
  br i1 %.not62, label %.critedge.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.critedge, label %bb.c, !llvm.loop !66

.critedge.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv85 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.p, %.critedge.loopexit.split.loop.exit ], [ %i.e, %bb.d ] ; 3 uses
  %.not63 = icmp eq i32 %2, 0
  br i1 %.not63, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.q = load ptr, ptr %1, align 8
  %sext100 = shl i64 %i.d, 32
  %i.r = ashr exact i64 %sext100, 32              ; 3 uses
  %i.s = sext i32 %.1 to i64                      ; 2 uses
  %indvars.iv.next91115 = add nsw i64 %i.r, -1    ; 2 uses
  %.not64116 = icmp slt i64 %indvars.iv.next91115, %i.s
  br i1 %.not64116, label %.critedge2.loopexit.split.loop.exit109, label %.lr.ph121

bb.e:                                             ; preds = %.lr.ph121
  %indvars.iv.next91 = add nsw i64 %indvars.iv90120, -1 ; 2 uses
  %.not64 = icmp slt i64 %indvars.iv.next91, %i.s
  br i1 %.not64, label %.critedge2.loopexit.split.loop.exit109, label %.lr.ph121, !llvm.loop !67

.lr.ph121:                                        ; preds = %.preheader, %bb.e
  %indvars.iv90120 = phi i64 [ %indvars.iv.next91, %bb.e ], [ %indvars.iv.next91115, %.preheader ] ; 4 uses
  %indvars.iv90117 = phi i64 [ %indvars.iv90120, %bb.e ], [ %i.r, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv90120
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = sext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #23
  %.not65 = icmp eq i32 %i.w, 0
  br i1 %.not65, label %..critedge2.loopexit_crit_edge121, label %bb.e, !llvm.loop !67

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %.not = icmp ne i32 %2, 1
  %i.y = icmp sgt i32 %i.e, 0
  %or.cond79 = select i1 %.not, i1 %i.y, i1 false
  br i1 %or.cond79, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !tbaa !12
  %sext = shl i64 %i.g, 32
  %i.aa = ashr exact i64 %sext, 32
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = sext i8 %i.ac to i32
  %i.ae = tail call noundef ptr @memchr(ptr noundef %i.x, i32 noundef %i.ad, i64 noundef %i.aa) #23
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %.critedge4.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.g, !llvm.loop !68

.critedge4.loopexit.split.loop.exit:              ; preds = %bb.g
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.h, %.critedge4.loopexit.split.loop.exit, %bb.f
  %.3 = phi i32 [ 0, %bb.f ], [ %i.af, %.critedge4.loopexit.split.loop.exit ], [ %i.e, %bb.h ] ; 3 uses
  %.not57 = icmp eq i32 %2, 0
  br i1 %.not57, label %.critedge2, label %.preheader67

.preheader67:                                     ; preds = %.critedge4
  %i.ag = load ptr, ptr %1, align 8
  %sext59 = shl i64 %i.g, 32
  %i.ah = ashr exact i64 %sext59, 32
  %sext99 = shl i64 %i.d, 32
  %i.ai = ashr exact i64 %sext99, 32              ; 3 uses
  %i.aj = sext i32 %.3 to i64                     ; 2 uses
  %indvars.iv.next83108 = add nsw i64 %i.ai, -1   ; 2 uses
  %.not58109 = icmp slt i64 %indvars.iv.next83108, %i.aj
  br i1 %.not58109, label %.critedge2.loopexit101.split.loop.exit, label %.lr.ph118

bb.i:                                             ; preds = %.lr.ph118
  %indvars.iv.next83 = add nsw i64 %indvars.iv82117, -1 ; 2 uses
  %.not58 = icmp slt i64 %indvars.iv.next83, %i.aj
  br i1 %.not58, label %.critedge2.loopexit101.split.loop.exit, label %.lr.ph118, !llvm.loop !69

.lr.ph118:                                        ; preds = %.preheader67, %bb.i
  %indvars.iv82117 = phi i64 [ %indvars.iv.next83, %bb.i ], [ %indvars.iv.next83108, %.preheader67 ] ; 4 uses
  %indvars.iv82110 = phi i64 [ %indvars.iv82117, %bb.i ], [ %i.ai, %.preheader67 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv82117
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = sext i8 %i.al to i32
  %i.an = tail call noundef ptr @memchr(ptr noundef %i.x, i32 noundef %i.am, i64 noundef %i.ah) #23
  %.not60 = icmp eq ptr %i.an, null
  br i1 %.not60, label %..critedge2.loopexit100_crit_edge, label %bb.i, !llvm.loop !69

..critedge2.loopexit_crit_edge121:                ; preds = %.lr.ph121
  br label %.critedge2.loopexit.split.loop.exit109, !llvm.loop !67

.critedge2.loopexit.split.loop.exit109:           ; preds = %bb.e, %..critedge2.loopexit_crit_edge121, %.preheader
  %indvars.iv90.lcssa = phi i64 [ %i.r, %.preheader ], [ %indvars.iv90117, %..critedge2.loopexit_crit_edge121 ], [ %indvars.iv90120, %bb.e ]
  %i.ao = trunc nsw i64 %indvars.iv90.lcssa to i32
  br label %.critedge2

..critedge2.loopexit100_crit_edge:                ; preds = %.lr.ph118
  br label %.critedge2.loopexit101.split.loop.exit, !llvm.loop !69

.critedge2.loopexit101.split.loop.exit:           ; preds = %bb.i, %..critedge2.loopexit100_crit_edge, %.preheader67
  %indvars.iv82.lcssa = phi i64 [ %indvars.iv82110, %..critedge2.loopexit100_crit_edge ], [ %i.ai, %.preheader67 ], [ %indvars.iv82117, %bb.i ]
  %i.ap = trunc nsw i64 %indvars.iv82.lcssa to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit101.split.loop.exit, %.critedge2.loopexit.split.loop.exit109, %.critedge4, %.critedge
  %.352 = phi i32 [ %i.e, %.critedge4 ], [ %i.e, %.critedge ], [ %i.ao, %.critedge2.loopexit.split.loop.exit109 ], [ %i.ap, %.critedge2.loopexit101.split.loop.exit ] ; 2 uses
  %.4 = phi i32 [ %.3, %.critedge4 ], [ %.1, %.critedge ], [ %.1, %.critedge2.loopexit.split.loop.exit109 ], [ %.3, %.critedge2.loopexit101.split.loop.exit ] ; 3 uses
  %i.aq = icmp eq i32 %.4, 0
  %i.ar = icmp eq i32 %.352, %i.e
  %or.cond = and i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.critedge2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !26
  %i.at = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  %i.au = icmp ugt i64 %i.d, 15
  br i1 %i.au, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !12
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.j
  %i.ax = phi ptr [ %i.av, %.noexc.i ], [ %i.as, %bb.j ] ; 2 uses
  switch i64 %i.d, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !20
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.at, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.k, %bb.l
  %i.az = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !19
  %i.bb = load ptr, ptr %0, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.q

bb.m:                                             ; preds = %.critedge2
  %i.bd = sext i32 %.4 to i64                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.be = icmp ult i64 %i.d, %i.bd
  br i1 %i.be, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.bd, i64 noundef %i.d) #25, !noalias !70
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.m
  %i.bf = sub nsw i32 %.352, %.4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !26, !alias.scope !70
  %i.bi = load ptr, ptr %1, align 8, !tbaa !12, !noalias !70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd ; 2 uses
  %i.bk = sub nuw i64 %i.d, %i.bd
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !70
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !27, !noalias !70
  %i.bl = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bl, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !12, !alias.scope !70
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !70
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !20, !alias.scope !70
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bo = phi ptr [ %i.bm, %.noexc10.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !20
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.o, %bb.p
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !70 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !19, !alias.scope !70
  %i.bs = load ptr, ptr %0, align 8, !tbaa !12, !alias.scope !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !70
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring9partitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 3, %i.i
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.k)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.h, 96
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.m) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %1, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.s, i64 noundef 0, i64 noundef %i.u) #24 ; 4 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.x = load i64, ptr %i.t, align 8, !tbaa !19
  %i.y = add i64 %i.x, %i.v
  %sext = shl i64 %i.r, 32
  %i.z = ashr exact i64 %sext, 32
  %i.aa = icmp ugt i64 %i.y, %i.z
  %i.ab = and i64 %i.v, 2147483648
  %i.ac = icmp ne i64 %i.ab, 0
  %or.cond = or i1 %i.ac, %i.aa
  br i1 %or.cond, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.f

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread: ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  %i.ag = load ptr, ptr %2, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  br label %bb.x

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ai = and i64 %i.v, 2147483647                ; 2 uses
end_hunk_0
