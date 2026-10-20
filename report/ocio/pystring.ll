Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/pystring?download=true
inline.NumInlined: 1018
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8pystring6rsplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
  %.pre142 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  %i.gx = icmp eq ptr %.pre142, %i.ei
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gy = load i64, ptr %i.ei, align 8, !tbaa !21
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %.pre142, i64 noundef %i.gz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %i.hb = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ei
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ao
  %i.hd = load i64, ptr %i.ei, align 8, !tbaa !21
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

.critedge.thread:                                 ; preds = %bb.y, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.147 = phi i32 [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.046113, %.critedge ], [ %.046113, %bb.y ]
  %.145 = phi i32 [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.el, %.critedge ], [ %i.el, %bb.y ] ; 2 uses
  %.1 = phi i32 [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.043115, %.critedge ], [ %.043115, %bb.y ] ; 2 uses
  %.not = icmp slt i32 %.145, %i.ec
  br i1 %.not, label %.critedge.thread.._crit_edge.loopexit_crit_edge, label %bb.y, !llvm.loop !64

.critedge.thread.._crit_edge.loopexit_crit_edge:  ; preds = %.critedge.thread
  %.pre143.pre = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !71
  br label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.ag, %.critedge.thread.._crit_edge.loopexit_crit_edge, %bb.x
  %i.hf = phi i64 [ %i.t, %bb.x ], [ %.pre143.pre, %.critedge.thread.._crit_edge.loopexit_crit_edge ], [ %.pre143.pre148, %bb.ag ]
  %.043.lcssa = phi i32 [ %i.eb, %bb.x ], [ %.1, %.critedge.thread.._crit_edge.loopexit_crit_edge ], [ %.043115, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.hg = sext i32 %.043.lcssa to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.hh, ptr %8, align 8, !tbaa !24, !alias.scope !71
  %i.hi = load ptr, ptr %0, align 8, !tbaa !20, !noalias !71 ; 2 uses
  %spec.select.i.i.i68 = call noundef i64 @llvm.umin.i64(i64 %i.hg, i64 %i.hf) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !71
  store i64 %spec.select.i.i.i68, ptr %i.a, align 8, !tbaa !25, !noalias !71
  %i.hj = icmp ugt i64 %spec.select.i.i.i68, 15
  br i1 %i.hj, label %.noexc10.i.i70, label %._crit_edge.i.i.i69

.noexc10.i.i70:                                   ; preds = %._crit_edge
  %i.hk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.hk, ptr %8, align 8, !tbaa !20, !alias.scope !71
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !71
  store i64 %i.hl, ptr %i.hh, align 8, !tbaa !21, !alias.scope !71
  br label %._crit_edge.i.i.i69

._crit_edge.i.i.i69:                              ; preds = %.noexc10.i.i70, %._crit_edge
  %i.hm = phi ptr [ %i.hk, %.noexc10.i.i70 ], [ %i.hh, %._crit_edge ] ; 2 uses
  switch i64 %spec.select.i.i.i68, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i69
  %i.hn = load i8, ptr %i.hi, align 1, !tbaa !21
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71

bb.aq:                                            ; preds = %._crit_edge.i.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hi, i64 %spec.select.i.i.i68, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71: ; preds = %._crit_edge.i.i.i69, %bb.ap, %bb.aq
  %i.ho = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !71 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !23, !alias.scope !71
  %i.hq = load ptr, ptr %8, align 8, !tbaa !20, !alias.scope !71
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ho
  store i8 0, ptr %i.hr, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !71
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !15  ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26
  %.not.i.i72 = icmp eq ptr %i.hs, %i.hu
  br i1 %.not.i.i72, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 3 uses
  store ptr %i.hv, ptr %i.hs, align 8, !tbaa !24
  %i.hw = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hh
  br i1 %i.hx, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

bb.as:                                            ; preds = %bb.ar
  %i.hy = load i64, ptr %i.hp, align 8, !tbaa !23 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 16
  call void @llvm.assume(i1 %i.hz)
  %i.ia = add nuw nsw i64 %i.hy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hv, ptr noundef nonnull align 8 dereferenceable(1) %i.hh, i64 %i.ia, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %bb.ar
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !20
  %i.ib = load i64, ptr %i.hh, align 8, !tbaa !21
  store i64 %i.ib, ptr %i.hv, align 8, !tbaa !21
  %.pre144 = load i64, ptr %i.hp, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
  %i.ic = phi i64 [ %.pre144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73 ], [ %i.hy, %bb.as ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !23
  store ptr %i.hh, ptr %8, align 8, !tbaa !20
  store i64 0, ptr %i.hp, align 8, !tbaa !23
  %i.ie = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store ptr %i.if, ptr %i.h, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit71
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76 unwind label %bb.au

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76: ; preds = %bb.at
  %.pre145 = load ptr, ptr %8, align 8, !tbaa !20 ; 2 uses
  %i.ig = icmp eq ptr %.pre145, %i.hh
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76
  %i.ih = load i64, ptr %i.hh, align 8, !tbaa !21
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %.pre145, i64 noundef %i.ii) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit76.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ij = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ik = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im                    ; 2 uses
  %.not.i80 = icmp ult i64 %i.in, 33
  br i1 %.not.i80, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %.lr.ph.i
  %i.io = phi i64 [ %i.iz, %.lr.ph.i ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ip = phi ptr [ %i.iw, %.lr.ph.i ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %.07.i = phi i64 [ %i.iu, %.lr.ph.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.ip, i64 %.07.i
  %i.ir = xor i64 %.07.i, -1
  %i.is = getelementptr i8, ptr %i.ip, i64 %i.io
  %i.it = getelementptr [32 x i8], ptr %i.is, i64 %i.ir
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.it) #24
  %i.iu = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %i.iv = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.iw = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %i.ja = ashr exact i64 %i.iz, 5
  %i.jb = lshr i64 %i.ja, 1
  %i.jc = icmp samesign ult i64 %i.iu, %i.jb
  br i1 %i.jc, label %.lr.ph.i, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !59

_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %._crit_edge.thread.i, %bb.b
  ret void

bb.au:                                            ; preds = %bb.at
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %i.je = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.hh
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.au
  %i.jg = load i64, ptr %i.hh, align 8, !tbaa !21
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring8do_stripERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 12 uses
  %i.e = trunc i64 %i.d to i32                    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp ne i32 %2, 1
  %i.j = icmp sgt i32 %i.e, 0
  %or.cond78 = select i1 %.not61, i1 %i.j, i1 false
  br i1 %or.cond78, label %.lr.ph74, label %.critedge

.lr.ph74:                                         ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !20
  %wide.trip.count88 = and i64 %i.d, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph74, %bb.d
  %indvars.iv85 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next86, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv85
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = sext i8 %i.m to i32
  %i.o = tail call i32 @isspace(i32 noundef %i.n) #23
  %.not62 = icmp eq i32 %i.o, 0
  br i1 %.not62, label %.critedge.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.critedge, label %bb.c, !llvm.loop !72

.critedge.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv85 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit, %bb.b
  %.150 = phi i32 [ 0, %bb.b ], [ %i.p, %.critedge.loopexit.split.loop.exit ], [ %i.e, %bb.d ] ; 6 uses
  %.not63 = icmp eq i32 %2, 0
  br i1 %.not63, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %sext99 = shl i64 %i.d, 32
  %i.q = ashr exact i64 %sext99, 32               ; 2 uses
  %i.r = sext i32 %.150 to i64                    ; 2 uses
  %smin92 = tail call i32 @llvm.smin.i32(i32 %.150, i32 %i.e) ; 2 uses
  %.not64.not118 = icmp sgt i64 %i.q, %i.r
  br i1 %.not64.not118, label %.lr.ph120.preheader, label %.critedge2

.lr.ph120.preheader:                              ; preds = %.preheader.preheader
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  br label %.lr.ph120

.preheader:                                       ; preds = %.lr.ph120
  %.not64.not = icmp sgt i64 %indvars.iv.next91, %i.r
  br i1 %.not64.not, label %.lr.ph120, label %.critedge2, !llvm.loop !73

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.preheader
  %indvars.iv90119 = phi i64 [ %indvars.iv.next91, %.preheader ], [ %i.q, %.lr.ph120.preheader ] ; 2 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90119, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next91
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = sext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #23
  %.not65 = icmp eq i32 %i.w, 0
  br i1 %.not65, label %.critedge2.loopexit.split.loop.exit108, label %.preheader, !llvm.loop !73

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not = icmp ne i32 %2, 1
  %i.y = icmp sgt i32 %i.e, 0
  %or.cond79 = select i1 %.not, i1 %i.y, i1 false
  br i1 %or.cond79, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %bb.e
  %i.z = load ptr, ptr %1, align 8, !tbaa !20
  %sext = shl i64 %i.g, 32
  %i.aa = ashr exact i64 %sext, 32
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = sext i8 %i.ac to i32
  %i.ae = tail call noundef ptr @memchr(ptr noundef %i.x, i32 noundef %i.ad, i64 noundef %i.aa) #23
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %.critedge4.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.f, !llvm.loop !74

.critedge4.loopexit.split.loop.exit:              ; preds = %bb.f
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.g, %.critedge4.loopexit.split.loop.exit, %bb.e
  %.352 = phi i32 [ 0, %bb.e ], [ %i.af, %.critedge4.loopexit.split.loop.exit ], [ %i.e, %bb.g ] ; 6 uses
  %.not57 = icmp eq i32 %2, 0
  br i1 %.not57, label %.critedge2, label %.preheader67

.preheader67:                                     ; preds = %.critedge4
  %sext59 = shl i64 %i.g, 32
  %i.ag = ashr exact i64 %sext59, 32
  %sext98 = shl i64 %i.d, 32
  %i.ah = ashr exact i64 %sext98, 32              ; 2 uses
  %i.ai = sext i32 %.352 to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.352, i32 %i.e) ; 2 uses
  %.not58.not115 = icmp sgt i64 %i.ah, %i.ai
  br i1 %.not58.not115, label %.lr.ph117.preheader, label %.critedge2

.lr.ph117.preheader:                              ; preds = %.preheader67
  %i.aj = load ptr, ptr %1, align 8, !tbaa !20
  br label %.lr.ph117

bb.h:                                             ; preds = %.lr.ph117
  %.not58.not = icmp sgt i64 %indvars.iv.next83, %i.ai
  br i1 %.not58.not, label %.lr.ph117, label %.critedge2, !llvm.loop !75

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.h
  %indvars.iv82116 = phi i64 [ %indvars.iv.next83, %bb.h ], [ %i.ah, %.lr.ph117.preheader ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82116, -1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next83
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = sext i8 %i.al to i32
  %i.an = tail call noundef ptr @memchr(ptr noundef %i.x, i32 noundef %i.am, i64 noundef %i.ag) #23
  %.not60 = icmp eq ptr %i.an, null
  br i1 %.not60, label %.critedge2.loopexit100.split.loop.exit, label %bb.h, !llvm.loop !75

.critedge2.loopexit.split.loop.exit108:           ; preds = %.lr.ph120
  %i.ao = trunc nsw i64 %indvars.iv90119 to i32
  br label %.critedge2

.critedge2.loopexit100.split.loop.exit:           ; preds = %.lr.ph117
  %i.ap = trunc nsw i64 %indvars.iv82116 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.h, %.preheader, %.preheader67, %.preheader.preheader, %.critedge2.loopexit100.split.loop.exit, %.critedge2.loopexit.split.loop.exit108, %.critedge4, %.critedge
  %.4 = phi i32 [ %.150, %.critedge2.loopexit.split.loop.exit108 ], [ %.150, %.critedge ], [ %.352, %.critedge4 ], [ %.352, %.critedge2.loopexit100.split.loop.exit ], [ %.150, %.preheader.preheader ], [ %.352, %.preheader67 ], [ %.150, %.preheader ], [ %.352, %bb.h ] ; 3 uses
  %.3 = phi i32 [ %i.ao, %.critedge2.loopexit.split.loop.exit108 ], [ %i.e, %.critedge ], [ %i.e, %.critedge4 ], [ %i.ap, %.critedge2.loopexit100.split.loop.exit ], [ %smin92, %.preheader.preheader ], [ %smin, %.preheader67 ], [ %smin92, %.preheader ], [ %smin, %bb.h ] ; 2 uses
  %i.aq = icmp eq i32 %.4, 0
  %i.ar = icmp eq i32 %.3, %i.e
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.critedge2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !24
  %i.at = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.d, ptr %i.b, align 8, !tbaa !25
  %i.au = icmp ugt i64 %i.d, 15
  br i1 %i.au, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !20
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.i
  %i.ax = phi ptr [ %i.av, %.noexc.i ], [ %i.as, %bb.i ] ; 2 uses
  switch i64 %i.d, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !21
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.at, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  %i.az = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !23
  %i.bb = load ptr, ptr %0, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.p

bb.l:                                             ; preds = %.critedge2
  %i.bd = sext i32 %.4 to i64                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.be = icmp ult i64 %i.d, %i.bd
  br i1 %i.be, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.bd, i64 noundef %i.d) #25, !noalias !78
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.l
  %i.bf = sub nsw i32 %.3, %.4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !24, !alias.scope !78
  %i.bi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd ; 2 uses
  %i.bk = sub nuw i64 %i.d, %i.bd
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !78
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !25, !noalias !78
  %i.bl = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bl, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !20, !alias.scope !78
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !78
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !21, !alias.scope !78
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bo = phi ptr [ %i.bm, %.noexc10.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !21
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.n, %bb.o
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !78 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !23, !alias.scope !78
  %i.bs = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !78
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring9partitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
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
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !21
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %1, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  %i.x = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.u, i64 noundef 0, i64 noundef %i.w) #24 ; 4 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.z = load i64, ptr %i.v, align 8, !tbaa !23
  %i.aa = add i64 %i.z, %i.x
  %i.ab = shl i64 %i.t, 32
  %i.ac = ashr exact i64 %i.ab, 32
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  %i.ae = and i64 %i.x, 2147483648
  %i.af = icmp ne i64 %i.ae, 0
  %or.cond = or i1 %i.af, %i.ad
  br i1 %or.cond, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.f

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread: ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ag = load ptr, ptr %2, align 8, !tbaa !14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  %i.aj = load ptr, ptr %2, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  br label %bb.x

bb.f:                                             ; preds = %bb.e
end_hunk_0
