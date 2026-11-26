Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5744
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8Box_ftyp4dumpER6Indent:bb.a
  %i.gr = select i1 %i.gp, ptr %i.gq, ptr %i.ft
  %i.gs = load i64, ptr %i.fu, align 8
  %i.gt = lshr i8 %i.go, 1
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = select i1 %i.gp, i64 %i.gs, i64 %i.gu
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.gr, i64 noundef %i.gv)
          to label %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit64 unwind label %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit64: ; preds = %bb.an
  %i.gx = load i8, ptr %10, align 8
  %i.gy = trunc i8 %i.gx to i1
  br i1 %i.gy, label %bb.ao, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65

bb.ao:                                            ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit64
  %i.gz = load ptr, ptr %i.fs, align 8, !tbaa !41
  %i.ha = load i64, ptr %10, align 8
  %i.hb = and i64 %i.ha, -2
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hb) #39
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65: ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit64, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.069.073, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.hc, %i.fr
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !1625

.loopexit.split-lp79.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %bb.ak
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load i8, ptr %10, align 8
  %i.he = trunc i8 %i.hd to i1
  br i1 %i.he, label %bb.ap, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

bb.ap:                                            ; preds = %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp
  %i.hf = load ptr, ptr %i.fs, align 8, !tbaa !41
  %i.hg = load i64, ptr %10, align 8
  %i.hh = and i64 %i.hg, -2
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hh) #39
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66: ; preds = %.loopexit.split-lp79.loopexit.split-lp.loopexit.split-lp, %bb.ap, %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp
  %.pn25 = phi { ptr, i32 } [ %lpad.loopexit.split-lp105, %bb.ap ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp79.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.body

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit61: ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.hi = load i32, ptr %i.r, align 8, !tbaa !58, !noalias !1635 ; 2 uses
  %i.hj = and i32 %i.hi, 16
  %.not.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit61
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !60, !noalias !1635 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !61, !noalias !1635 ; 3 uses
  %i.ho = icmp ult ptr %i.hl, %i.hn
  br i1 %i.ho, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.hn, ptr %i.hk, align 8, !tbaa !60, !noalias !1635
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hp = phi ptr [ %i.hn, %bb.ar ], [ %i.hl, %bb.aq ]
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.at:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit61
  %i.hr = and i32 %i.hi, 8
  %.not1.i.i.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.au

.thread15.i.i.i:                                  ; preds = %bb.at
  store i8 0, ptr %0, align 8, !alias.scope !1635
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !62, !noalias !1635
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.au, %bb.as
  %.sink22.i.i.i = phi ptr [ %i.hp, %bb.as ], [ %i.hv, %bb.au ]
  %.sink21.in.i.i.i = phi ptr [ %i.hq, %bb.as ], [ %i.ht, %bb.au ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !40, !noalias !1635 ; 2 uses
  %i.hw = ptrtoint ptr %.sink22.i.i.i to i64
  %i.hx = ptrtoint ptr %.sink21.i.i.i to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 8 uses
  %i.hz = icmp ugt i64 %i.hy, -9
  br i1 %i.hz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.ia = icmp ult i64 %i.hy, 23
  br i1 %i.ia, label %bb.ax, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.aw
  %i.ib = or i64 %i.hy, 7                         ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 23
  %i.id = add nuw i64 %i.ib, 1
  %i.ie = select i1 %i.ic, i64 25, i64 %i.id      ; 2 uses
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #38
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1635 ; 2 uses

.noexc68:                                         ; preds = %.thread.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !41, !alias.scope !1635
  %i.ih = or i64 %i.ie, 1
  store i64 %i.ih, ptr %0, align 8, !alias.scope !1635
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hy, ptr %i.ii, align 8, !tbaa !41, !alias.scope !1635
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ij = trunc nuw nsw i64 %i.hy to i8
  %i.ik = shl nuw nsw i8 %i.ij, 1
  store i8 %i.ik, ptr %0, align 8, !alias.scope !1635
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc68
  %.017.i.i.i.i.i = phi ptr [ %i.if, %.noexc68 ], [ %i.il, %bb.ax ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i, ptr align 1 %.sink21.i.i.i, i64 %i.hy, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.thread15.i.i.i
  %.sroa.4.0.i712.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.hy, %bb.ay ], [ 0, %.thread15.i.i.i ]
  %.018.i.i.i.i.i = phi ptr [ %i.il, %bb.ax ], [ %.017.i.i.i.i.i, %bb.ay ], [ %i.hs, %.thread15.i.i.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i, i64 %.sroa.4.0.i712.i.i.i
  store i8 0, ptr %i.im, align 1, !tbaa !41
  %i.in = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.in, ptr %6, align 8, !tbaa !28
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.ip = getelementptr i8, ptr %i.in, i64 -24
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds i8, ptr %6, i64 %i.iq
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !28
  %i.is = load i8, ptr %i.q, align 8
  %i.it = trunc i8 %i.is to i1
  br i1 %i.it, label %bb.ba, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.ba:                                            ; preds = %bb.az
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !41
  %i.iw = load i64, ptr %i.q, align 8
  %i.ix = and i64 %i.iw, -2
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.ix) #39
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %bb.az, %bb.ba
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.c) #40
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #40
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.thread.i.i.i.i.i, %bb.av, %._crit_edge, %bb.ai, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit51, %bb.ae, %bb.k, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.r
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i52, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44 ], [ %i.fh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i52 ], [ %.pn23, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit49 ], [ %.pn21, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45 ], [ %.pn25, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66 ], [ %i.ba, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4.i ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8Box_ftyp20add_compatible_brandEj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !477  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = tail call noundef ptr @wmemchr(ptr noundef %i.b, i32 noundef signext %1, i64 noundef %i.h) #40 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.i, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.d, ptr %i.i ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !477  ; 4 uses
  %.not = icmp eq ptr %spec.select.i.i.i, %i.j
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !478  ; 2 uses
  %i.m = icmp ult ptr %spec.select.i.i.i, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.j, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !479
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add nsw i64 %i.s, 1                      ; 2 uses
  %i.u = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.u, label %bb.e, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #37
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.d
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.v, %i.q                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.w, 9223372036854775804
  %i.x = ashr exact i64 %i.w, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.t)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.y = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.z, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #37
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  %i.aa = shl nuw i64 %.0.i.i.i, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 7 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.0.i.i.i
  store i32 %1, ptr %i.ad, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !477 ; 6 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !479 ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = add i64 %i.ah, -4
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ao = add i64 %i.q, %i.ah
  %i.ap = add i64 %i.ac, %i.p
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ar = mul i64 %n.vec, -4                      ; 2 uses
  %i.as = getelementptr i8, ptr %i.ad, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.au ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %next.gep8, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %next.gep8, i64 -32
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !26, !noalias !1646
  %wide.load9 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !26, !noalias !1646
  %i.ax = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ay = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !26, !noalias !1646
  store <4 x i32> %wide.load9, ptr %i.ay, align 4, !tbaa !26, !noalias !1646
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.i.preheader11:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11 ]
  %i.bb = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26, !noalias !1646
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 3 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !26, !noalias !1646
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1645

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.as, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !478
  store ptr %i.af, ptr %i.c, align 8, !tbaa !478
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !478
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !478
  %.not.i5.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.ai to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bh) #39
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit: ; preds = %bb.c, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, %bb.g
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.af, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.af, %bb.g ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !477
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_ftyp5writeER12StreamWriter(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Error, align 8               ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !479  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !477  ; 2 uses
  %.not14 = icmp eq ptr %i.j, %i.l
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39, !noalias !1649
  %i.o = load ptr, ptr %2, align 8, !tbaa !38, !noalias !1649
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = add i64 %i.d, %i.q
  %i.s = sub i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.d, ptr %i.t, align 8, !tbaa !78, !noalias !1649
  %i.u = load ptr, ptr %1, align 8, !tbaa !28, !noalias !1649
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1649
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %3, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.s, i1 noundef zeroext false), !inline_history !466
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !39, !noalias !1649
  %i.y = load ptr, ptr %2, align 8, !tbaa !38, !noalias !1649
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !78, !noalias !1649
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %_ZN5ErrorD2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ah = load i64, ptr %i.ac, align 8
  %i.ai = and i64 %i.ah, -2
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #39
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %._crit_edge, %bb.b
  %i.aj = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5ErrorD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !76
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !41
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !41
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %i.an, i64 noundef %i.ao)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.c, %bb.d
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.015 = phi ptr [ %i.aq, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.09.015, align 4, !tbaa !26
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8Box_free5parseER14BitstreamRangePK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr nofree readnone captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN14BitstreamRange18skip_to_end_of_boxEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN14BitstreamRange31skip_without_advancing_file_posEm(ptr noundef nonnull align 8 dereferenceable(41) %i.d, i64 noundef %i.b)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i64 [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.f = load ptr, ptr %2, align 8, !tbaa !68     ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f), !inline_history !6
  %i.k = add i64 %i.j, %i.e
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef %i.k), !inline_history !6 ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !92
  br label %_ZN14BitstreamRange18skip_to_end_of_boxEv.exit

_ZN14BitstreamRange18skip_to_end_of_boxEv.exit:   ; preds = %bb.a, %bb.d
  tail call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_free4dumpER6Indent(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 24 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
end_hunk_0
begin_hunk_1_@"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE":bb.a
  switch i64 %3, label %bb.f [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 2
  %i.d = load i32, ptr %1, align 2
  store i32 %i.d, ptr %0, align 2
  store i32 %i.c, ptr %1, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 6
  %.val62 = load i16, ptr %i.f, align 2, !tbaa !548 ; 2 uses
  %i.g = icmp eq i16 %.val62, 0
  br i1 %i.g, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val61 = load ptr, ptr %2, align 8             ; 2 uses
  %i.h = zext i16 %.val62 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !464
  %i.k = load ptr, ptr %.val61, align 8, !tbaa !463 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit": ; preds = %bb.d
  %i.q = getelementptr [16 x i8], ptr %i.k, i64 %i.h
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(153) %i.s), !inline_history !2907
  br i1 %i.w, label %bb.e, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread": ; preds = %bb.c, %bb.d, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"
  %i.x = load i32, ptr %0, align 2                ; 2 uses
  %i.y = load i32, ptr %i.e, align 2
  store i32 %i.y, ptr %0, align 2
  store i32 %i.x, ptr %i.e, align 2
  %i.z = load i32, ptr %1, align 2
  store i32 %i.z, ptr %i.e, align 2
  store i32 %i.x, ptr %1, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.e:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"
  %i.aa = load i32, ptr %i.e, align 2
  %i.ab = load i32, ptr %1, align 2
  store i32 %i.ab, ptr %i.e, align 2
  store i32 %i.aa, ptr %1, align 2
  %i.ac = load <2 x i32>, ptr %0, align 2
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ad, ptr %0, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.f:                                             ; preds = %bb.a
  %.not = icmp sgt i64 %3, %5
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %0, align 2
  store i32 %i.ae, ptr %4, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.not115123 = icmp eq ptr %i.ag, %1
  br i1 %.not115123, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.g
  %i.ah = load i32, ptr %i.ag, align 2
  store i32 %i.ah, ptr %0, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph132.preheader

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %i.aj = phi ptr [ %i.bg, %bb.j ], [ %i.ag, %bb.g ] ; 4 uses
  %.0126 = phi ptr [ %.1, %bb.j ], [ %i.af, %bb.g ] ; 3 uses
  %.sroa.087.0125 = phi ptr [ %i.aj, %bb.j ], [ %0, %bb.g ]
  %.sroa.0101.0124 = phi ptr [ %.sroa.0101.1, %bb.j ], [ %0, %bb.g ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.sroa.087.0125, i64 6
  %.val60 = load i16, ptr %i.ak, align 2, !tbaa !548 ; 2 uses
  %i.al = icmp eq i16 %.val60, 0
  br i1 %i.al, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread", label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val59 = load ptr, ptr %2, align 8             ; 2 uses
  %i.am = zext i16 %.val60 to i64                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !464
  %i.ap = load ptr, ptr %.val59, align 8, !tbaa !463 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4
  %i.au = icmp ult i64 %i.at, %i.am
  br i1 %i.au, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72": ; preds = %bb.h
  %i.av = getelementptr [16 x i8], ptr %i.ap, i64 %i.am
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(153) %i.ax), !inline_history !2907
  br i1 %i.bb, label %bb.i, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread": ; preds = %.lr.ph, %bb.h, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"
  %i.bc = load i32, ptr %i.aj, align 2
  store i32 %i.bc, ptr %.sroa.0101.0124, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0101.0124, i64 4
  br label %bb.j

bb.i:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"
  %i.be = load i32, ptr %i.aj, align 2
  store i32 %i.be, ptr %.0126, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread"
  %.sroa.0101.1 = phi ptr [ %i.bd, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread" ], [ %.sroa.0101.0124, %bb.i ] ; 3 uses
  %.1 = phi ptr [ %.0126, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread" ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %.not115 = icmp eq ptr %i.bg, %1
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !2908

._crit_edge:                                      ; preds = %bb.j
  %i.bh = load i32, ptr %i.bg, align 2
  store i32 %i.bh, ptr %.sroa.0101.1, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0101.1, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %4, %.1
  br i1 %i.bj, label %.lr.ph132.preheader, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

.lr.ph132.preheader:                              ; preds = %._crit_edge.thread, %._crit_edge
  %i.bk = phi ptr [ %i.ai, %._crit_edge.thread ], [ %i.bi, %._crit_edge ] ; 6 uses
  %.0.lcssa171 = phi ptr [ %i.af, %._crit_edge.thread ], [ %.1, %._crit_edge ] ; 2 uses
  %.0.lcssa171180 = ptrtoaddr ptr %.0.lcssa171 to i64
  %i.bl = add i64 %i.b, 4
  %i.bm = tail call i64 @llvm.umax.i64(i64 %.0.lcssa171180, i64 %i.bl)
  %i.bn = xor i64 %i.b, -1
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 44
  %i.br = ptrtoaddr ptr %i.bk to i64
  %i.bs = sub i64 %i.b, %i.br
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph132.preheader211, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph132.preheader
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %4, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.bw ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.bk, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 2
  %wide.load182 = load <4 x i32>, ptr %i.bx, align 2
  %i.by = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> %wide.load, ptr %next.gep181, align 2
  store <4 x i32> %wide.load182, ptr %i.by, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %.lr.ph132.preheader211

.lr.ph132.preheader211:                           ; preds = %.lr.ph132.preheader, %middle.block
  %.0110130.ph = phi ptr [ %4, %.lr.ph132.preheader ], [ %i.bu, %middle.block ]
  %.sroa.087.1129.ph = phi ptr [ %i.bk, %.lr.ph132.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader211, %.lr.ph132
  %.0110130 = phi ptr [ %i.cb, %.lr.ph132 ], [ %.0110130.ph, %.lr.ph132.preheader211 ] ; 2 uses
  %.sroa.087.1129 = phi ptr [ %i.cc, %.lr.ph132 ], [ %.sroa.087.1129.ph, %.lr.ph132.preheader211 ] ; 2 uses
  %i.ca = load i32, ptr %.0110130, align 2
  store i32 %i.ca, ptr %.sroa.087.1129, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.0110130, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.087.1129, i64 4
  %i.cd = icmp ult ptr %i.cb, %.0.lcssa171
  br i1 %i.cd, label %.lr.ph132, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, !llvm.loop !2910

bb.k:                                             ; preds = %bb.f
  %i.ce = sdiv i64 %3, 2                          ; 6 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ce ; 17 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 -2
  %.val58133 = load i16, ptr %i.ci, align 2, !tbaa !548 ; 2 uses
  %i.cj = icmp eq i16 %.val58133, 0
  br i1 %i.cj, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.k, %bb.m
  %.val58135 = phi i16 [ %.val58, %bb.m ], [ %.val58133, %bb.k ]
  %i.ck = phi ptr [ %i.dd, %bb.m ], [ %i.ch, %bb.k ] ; 5 uses
  %.050134 = phi i64 [ %i.dc, %bb.m ], [ %i.ce, %bb.k ] ; 3 uses
  %.val57 = load ptr, ptr %2, align 8             ; 2 uses
  %i.cl = zext i16 %.val58135 to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val57, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !464
  %i.co = load ptr, ptr %.val57, align 8, !tbaa !463 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ult i64 %i.cs, %i.cl
  br i1 %i.ct, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74": ; preds = %.lr.ph137
  %i.cu = getelementptr [16 x i8], ptr %i.co, i64 %i.cl
  %i.cv = getelementptr i8, ptr %i.cu, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !104 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(153) %i.cw), !inline_history !2907
  br i1 %i.da, label %bb.l, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread"

bb.l:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74"
  %i.db = icmp eq ptr %i.ck, %0
  br i1 %i.db, label %.loopexit116, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = add nsw i64 %.050134, -1                ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.de = getelementptr i8, ptr %i.ck, i64 -2
  %.val58 = load i16, ptr %i.de, align 2, !tbaa !548 ; 2 uses
  %i.df = icmp eq i16 %.val58, 0
  br i1 %i.df, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %.lr.ph137, !llvm.loop !2911

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread": ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74", %.lr.ph137, %bb.m, %bb.k
  %.050.lcssa = phi i64 [ %i.ce, %bb.k ], [ %i.dc, %bb.m ], [ %.050134, %.lr.ph137 ], [ %.050134, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74" ]
  %.lcssa = phi ptr [ %i.ch, %bb.k ], [ %i.dd, %bb.m ], [ %i.ck, %.lr.ph137 ], [ %i.ck, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74" ]
  %i.dg = tail call fastcc ptr @"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE"(ptr %0, ptr nonnull %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.050.lcssa, ptr %4, i64 %5)
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.l, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread"
  %.sroa.016.0 = phi ptr [ %i.dg, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread" ], [ %0, %bb.l ] ; 24 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.di = sub nsw i64 %3, %i.ce
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.loopexit116
  %.sroa.077.1 = phi ptr [ %i.cf, %.loopexit116 ], [ %i.eb, %bb.p ] ; 3 uses
  %.151 = phi i64 [ %i.di, %.loopexit116 ], [ %i.ed, %bb.p ] ; 2 uses
  %i.dj = getelementptr i8, ptr %.sroa.077.1, i64 2
  %.val56 = load i16, ptr %i.dj, align 2, !tbaa !548 ; 2 uses
  %i.dk = icmp eq i16 %.val56, 0
  br i1 %i.dk, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.dl = zext i16 %.val56 to i64                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !464
  %i.do = load ptr, ptr %.val, align 8, !tbaa !463 ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 4
  %i.dt = icmp ult i64 %i.ds, %i.dl
  br i1 %i.dt, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76": ; preds = %bb.o
  %i.du = getelementptr [16 x i8], ptr %i.do, i64 %i.dl
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !104 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(153) %i.dw), !inline_history !2907
  br i1 %i.ea, label %bb.q, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread": ; preds = %bb.n, %bb.o, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 4 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %1
  br i1 %i.ec, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread"
  %i.ed = add nsw i64 %.151, -1
  br label %bb.n, !llvm.loop !2912

bb.q:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"
  %i.ee = tail call fastcc ptr @"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE"(ptr nonnull %.sroa.077.1, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.151, ptr %4, i64 %5)
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", %bb.q
  %.sroa.0.0 = phi ptr [ %i.ee, %bb.q ], [ %i.dh, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread" ] ; 8 uses
  %i.ef = icmp eq ptr %.sroa.016.0, %i.cf
  br i1 %i.ef, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.eg = icmp eq ptr %i.cf, %.sroa.0.0
  br i1 %i.eg, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 4 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, %i.cf
  br i1 %i.ei, label %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, label %bb.t

_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i: ; preds = %bb.s
  %i.ej = load i32, ptr %.sroa.016.0, align 2
  %i.ek = ptrtoint ptr %.sroa.0.0 to i64
  %6 = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ek, %6                       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.016.0, ptr nonnull align 2 %i.eh, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.el ; 2 uses
  store i32 %i.ej, ptr %i.em, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.eo = icmp eq ptr %i.en, %.sroa.0.0
  br i1 %i.eo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 2
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %.sroa.016.0 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 2 uses
  %i.eu = ashr exact i64 %i.et, 2
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.ev ; 2 uses
  %.not.i.i.i.i.i.i.i9.i.i = icmp eq ptr %i.ep, %.sroa.016.0
  br i1 %.not.i.i.i.i.i.i.i9.i.i, label %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ew, ptr align 2 %.sroa.016.0, i64 %i.et, i1 false)
  br label %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i

_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i: ; preds = %bb.v, %bb.u
  store i32 %i.eq, ptr %.sroa.016.0, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.w:                                             ; preds = %bb.t
  %i.ex = ptrtoint ptr %.sroa.016.0 to i64        ; 4 uses
  %i.ey = sub i64 %i.cg, %i.ex                    ; 7 uses
  %i.ez = ashr exact i64 %i.ey, 2                 ; 8 uses
  %i.fa = ptrtoint ptr %.sroa.0.0 to i64          ; 6 uses
  %i.fb = sub i64 %i.fa, %i.cg                    ; 2 uses
  %i.fc = ashr exact i64 %i.fb, 2                 ; 2 uses
  %i.fd = icmp eq i64 %i.ez, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i.preheader, label %.preheader.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.w
  %i.fe = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.ff = add i64 %i.fa, -4
  %i.fg = sub i64 %i.ff, %i.a                     ; 2 uses
  %i.fh = sub i64 %i.fg, %i.fe
  %.fr = freeze i64 %i.fh
  %i.fi = lshr i64 %.fr, 2
  %i.fj = add i64 %i.fe, %i.a
  %i.fk = add i64 %i.fj, -4
  %i.fl = sub i64 %i.fk, %i.ex
  %i.fm = lshr i64 %i.fl, 2
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fm) ; 2 uses
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check188 = icmp samesign ult i64 %i.fn, 35
  br i1 %min.iters.check188, label %.lr.ph.i.i.i.i.preheader208, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.preheader
  %i.fp = sub i64 %i.a, %i.ex
  %i.fq = sub i64 %i.fa, %i.a
  %i.fr = or i64 %i.fp, %i.fq
  %i.fs = and i64 %i.fr, 3
  %.not205 = icmp eq i64 %i.fs, 0
  br i1 %.not205, label %vector.memcheck189, label %.lr.ph.i.i.i.i.preheader208

vector.memcheck189:                               ; preds = %vector.scevcheck
  %i.ft = shl nsw i64 %i.ce, 2                    ; 3 uses
  %i.fu = sub i64 %i.fg, %i.ft
  %.fr206 = freeze i64 %i.fu
  %i.fv = lshr i64 %.fr206, 2
  %i.fw = add i64 %i.ft, %i.a
  %i.fx = add i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.ex
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fz)
  %i.gb = shl nuw i64 %i.ga, 2                    ; 2 uses
  %i.gc = getelementptr i8, ptr %.sroa.016.0, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = getelementptr i8, ptr %0, i64 %i.ft
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.gb
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  %bound0 = icmp ult ptr %.sroa.016.0, %i.gg
  %bound1 = icmp ult ptr %i.cf, %i.gd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader208, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck189
  %n.vec191 = and i64 %i.fo, 9223372036854775800  ; 3 uses
  %i.gh = shl i64 %n.vec191, 2                    ; 2 uses
  %i.gi = getelementptr i8, ptr %.sroa.016.0, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.cf, i64 %i.gh
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 2 uses
  %i.gk = shl i64 %index193, 2                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.sroa.016.0, i64 %i.gk ; 3 uses
  %next.gep195 = getelementptr i8, ptr %i.cf, i64 %i.gk ; 3 uses
  %i.gl = getelementptr i8, ptr %next.gep194, i64 16 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %next.gep194, align 2, !alias.scope !2921, !noalias !2922
  %wide.load197 = load <4 x i32>, ptr %i.gl, align 2, !alias.scope !2921, !noalias !2922
  %i.gm = getelementptr i8, ptr %next.gep195, i64 16 ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %next.gep195, align 2, !alias.scope !2922
  %wide.load199 = load <4 x i32>, ptr %i.gm, align 2, !alias.scope !2922
  store <4 x i32> %wide.load198, ptr %next.gep194, align 2, !alias.scope !2921, !noalias !2922
  store <4 x i32> %wide.load199, ptr %i.gl, align 2, !alias.scope !2921, !noalias !2922
  store <4 x i32> %wide.load196, ptr %next.gep195, align 2, !alias.scope !2922
  store <4 x i32> %wide.load197, ptr %i.gm, align 2, !alias.scope !2922
  %index.next200 = add nuw i64 %index193, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.gn, label %middle.block201, label %vector.body192, !llvm.loop !2916

middle.block201:                                  ; preds = %vector.body192
  %cmp.n202 = icmp eq i64 %i.fo, %n.vec191
  br i1 %cmp.n202, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %.lr.ph.i.i.i.i.preheader208

.lr.ph.i.i.i.i.preheader208:                      ; preds = %vector.memcheck189, %vector.scevcheck, %.lr.ph.i.i.i.i.preheader, %middle.block201
  %.sroa.04.09.i.i.i.i.ph = phi ptr [ %.sroa.016.0, %vector.memcheck189 ], [ %.sroa.016.0, %vector.scevcheck ], [ %.sroa.016.0, %.lr.ph.i.i.i.i.preheader ], [ %i.gi, %middle.block201 ]
  %.sroa.01.08.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck189 ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %.lr.ph.i.i.i.i.preheader ], [ %i.gj, %middle.block201 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader208, %.lr.ph.i.i.i.i
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i ], [ %.sroa.04.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader208 ] ; 3 uses
  %.sroa.01.08.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i ], [ %.sroa.01.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader208 ] ; 3 uses
  %i.go = load i32, ptr %.sroa.04.09.i.i.i.i, align 2
  %i.gp = load i32, ptr %.sroa.01.08.i.i.i.i, align 2
  store i32 %i.gp, ptr %.sroa.04.09.i.i.i.i, align 2
  store i32 %i.go, ptr %.sroa.01.08.i.i.i.i, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 4 ; 2 uses
  %i.gs = icmp ne ptr %i.gq, %i.cf
  %i.gt = icmp ne ptr %i.gr, %.sroa.0.0
  %or.cond.i.i.i.i = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, !llvm.loop !2917

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.gu, %.preheader.i.i.i ], [ %i.fc, %bb.w ] ; 3 uses
  %.0.i.i.i.i = phi i64 [ %.06.i.i.i.i, %.preheader.i.i.i ], [ %i.ez, %bb.w ]
  %i.gu = srem i64 %.0.i.i.i.i, %.06.i.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.preheader.i.i.i, !llvm.loop !2918

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.idx.i.i.i = shl i64 %.06.i.i.i.i, 2           ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %.idx.i.i.i ; 2 uses
  %i.gw = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.gx = and i64 %i.gw, 4
  %lcmp.mod.not.not = icmp eq i64 %i.gx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 -4 ; 5 uses
  %i.gz = load i32, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.ey
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i.i.prol
  %.sroa.027.0.i.i.i.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.i.i.prol, %bb.x ]
  %.sroa.0.0.i.i.i.prol = phi ptr [ %i.ha, %.lr.ph.i.i.i.prol ], [ %.sroa.0.1.i.i.i.prol, %bb.x ] ; 5 uses
  %i.hb = load i32, ptr %.sroa.0.0.i.i.i.prol, align 2
  store i32 %i.hb, ptr %.sroa.027.0.i.i.i.prol, align 2
  %i.hc = ptrtoint ptr %.sroa.0.0.i.i.i.prol to i64
  %i.hd = sub i64 %i.fa, %i.hc
  %i.he = ashr exact i64 %i.hd, 2                 ; 2 uses
  %i.hf = icmp slt i64 %i.ez, %i.he
  %i.hg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.prol, i64 %i.ey
  %i.hh = sub nsw i64 %i.ez, %i.he
  %i.hi = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.hh
  %.sroa.0.1.i.i.i.prol = select i1 %i.hf, ptr %i.hg, ptr %i.hi ; 2 uses
  %.not39.i.i.i.prol = icmp eq ptr %.sroa.0.1.i.i.i.prol, %i.gy
  br i1 %.not39.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, label %bb.x, !llvm.loop !2919

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.x
  store i32 %i.gz, ptr %.sroa.0.0.i.i.i.prol, align 2
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.sroa.030.041.i.i.i.unr = phi ptr [ %i.gv, %.lr.ph.preheader.i.i.i ], [ %i.gy, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.hj = icmp eq i64 %i.gw, 0
  br i1 %i.hj, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i.prol.loopexit
  %i.hk = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %i.fb
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa
  %.sroa.030.041.i.i.i = phi ptr [ %i.hw, %bb.aa ], [ %.sroa.030.041.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.sroa.030.041.i.i.i, i64 -4 ; 4 uses
  %i.hm = load i32, ptr %i.hl, align 2
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 %i.ey
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.027.0.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.y ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.y ] ; 5 uses
  %i.ho = load i32, ptr %.sroa.0.0.i.i.i, align 2
  store i32 %i.ho, ptr %.sroa.027.0.i.i.i, align 2
  %i.hp = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.hq = sub i64 %i.fa, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2                 ; 2 uses
  %i.hs = icmp slt i64 %i.ez, %i.hr
end_hunk_1
