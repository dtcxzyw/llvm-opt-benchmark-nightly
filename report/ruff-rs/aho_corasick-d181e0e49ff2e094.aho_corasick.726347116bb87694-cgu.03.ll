Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.03?download=true
inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0_@_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous:bb.a
  %exitcond.peel.not.i.i = icmp eq i64 %i.nv, %i.nr
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %bb.dw, %bb.ea
  %.sroa.9.399.i.i = phi i8 [ %.sroa.9.5.i128.i, %bb.ea ], [ %.sroa.9.5.peel.i.i, %bb.dw ] ; 2 uses
  %.sroa.08.198.i.i = phi i64 [ %i.oc, %bb.ea ], [ %i.nv, %bb.dw ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.198.i.i
  %i.ob = load i8, ptr %i.oa, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %i.oc = add nuw nsw i64 %.sroa.08.198.i.i, 1    ; 2 uses
  %.not44.i127.i = icmp eq i8 %.sroa.9.399.i.i, %i.ob
  br i1 %.not44.i127.i, label %bb.ea, label %bb.dz

._crit_edge.i118.i:                               ; preds = %bb.ea, %bb.dw, %bb.du
  %.sroa.08.1.lcssa.i119.i = phi i64 [ %.sroa.08.0105.i.i, %bb.du ], [ %i.nr, %bb.dw ], [ %i.nr, %bb.ea ] ; 2 uses
  %.sroa.9.3.lcssa.i120.i = phi i8 [ %.sroa.9.0106.i.i, %bb.du ], [ %.sroa.9.5.peel.i.i, %bb.dw ], [ %.sroa.9.5.i128.i, %bb.ea ] ; 2 uses
  %.sroa.0.3.lcssa.i121.i = phi i1 [ %.sroa.0.0107.i.i, %bb.du ], [ true, %bb.dw ], [ true, %bb.ea ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.nr
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %i.of = add i64 %.sroa.08.1.lcssa.i119.i, 1     ; 4 uses
  %.not.i122.i = icmp eq i8 %.sroa.9.3.lcssa.i120.i, %i.oe
  %or.cond46.i123.i = select i1 %.sroa.0.3.lcssa.i121.i, i1 %.not.i122.i, i1 false
  br i1 %or.cond46.i123.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i118.i
  %i.og = zext i8 %i.oe to i64
  %i.oh = icmp eq i32 %.sroa.431.0.copyload.i115.i, 1 ; 2 uses
  %i.oi = add nuw nsw i64 %i.og, %i.mn            ; 3 uses
  %i.oj = icmp ult i64 %i.oi, %i.mp
  br i1 %i.oj, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, label %.loopexit.i.invoke.i.loopexit129.split.loop.exit184

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i: ; preds = %bb.dx
  %..sroa.431.0.copyload.i115.i = select i1 %i.oh, i32 0, i32 %.sroa.431.0.copyload.i115.i
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.oi
  store i32 %..sroa.431.0.copyload.i115.i, ptr %i.ok, align 4, !noalias !183
  br label %bb.dy

bb.dy:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, %._crit_edge.i118.i
  %.sroa.9.4.i124.i = phi i8 [ %i.oe, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i ], [ %.sroa.9.3.lcssa.i120.i, %._crit_edge.i118.i ] ; 3 uses
  %i.ol = icmp eq i32 %.sroa.532.0.copyload.i117.i, 0
  br i1 %i.ol, label %.preheader.i125.i, label %bb.dr

bb.dz:                                            ; preds = %.lr.ph.i126.i
  %i.om = zext i8 %i.ob to i64
  %i.on = add nuw nsw i64 %i.om, %i.mn            ; 3 uses
  %i.oo = icmp ult i64 %i.on, %i.mp
  br i1 %i.oo, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, label %.loopexit.i.invoke.i

.loopexit.i.invoke.i.loopexit129.split.loop.exit184: ; preds = %bb.dx
  %..i.le = select i1 %i.oh, ptr @12, ptr @13
  br label %.loopexit.i.invoke.i

.loopexit.i.invoke.i:                             ; preds = %bb.eb, %bb.dp, %._crit_edge401.i, %bb.dm, %bb.dj, %bb.di, %bb.df, %bb.co, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cf, %bb.cd, %bb.cr, %bb.dr, %bb.dv, %bb.ds, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i, %bb.cw, %bb.dz, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, %bb.dc, %.lr.ph.i.i.i, %bb.bj, %.lr.ph.i, %.lr.ph207.i, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184, %bb.bm, %bb.bl, %bb.bk, %._crit_edge.i
  %i.op = phi i64 [ %i.et, %bb.bl ], [ %i.fm, %bb.bk ], [ %i.fa, %._crit_edge.i ], [ %.sroa.011.0208.i, %bb.bj ], [ %i.on, %bb.dz ], [ %i.gp, %.lr.ph.i ], [ %i.nn, %bb.ds ], [ %i.kn, %.lr.ph.i.i.i ], [ %i.hg, %.lr.ph207.i ], [ %i.jj, %bb.cr ], [ %i.oi, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ %i.kv, %bb.dc ], [ %i.ke, %bb.cw ], [ %i.es, %bb.bm ], [ %i.nx, %bb.dv ], [ %i.la, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ %i.le, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ %i.ng, %bb.dr ], [ %i.ho, %bb.cd ], [ %i.ho, %bb.cf ], [ %i.ic, %bb.cj ], [ %i.ic, %bb.cl ], [ %i.ic, %bb.df ], [ %i.es, %bb.ck ], [ %i.es, %bb.di ], [ %i.lx, %bb.dj ], [ %i.et, %bb.ci ], [ %i.ip, %bb.cm ], [ %i.ic, %bb.co ], [ %i.mz, %bb.dp ], [ %.pre402.i, %._crit_edge401.i ], [ %.pre402.i, %bb.eb ], [ %i.et, %bb.dm ]
  %i.oq = phi i64 [ %i.fq, %bb.bl ], [ %i.fb, %bb.bk ], [ %i.fb, %._crit_edge.i ], [ %i.ff, %bb.bj ], [ %i.mp, %bb.dz ], [ %i.gq, %.lr.ph.i ], [ %i.ne, %bb.ds ], [ %i.ei, %.lr.ph.i.i.i ], [ %i.hh, %.lr.ph207.i ], [ %i.ei, %bb.cr ], [ %i.mp, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ %i.eq, %bb.dc ], [ %i.da, %bb.cw ], [ %i.fb, %bb.bm ], [ %i.mp, %bb.dv ], [ %i.da, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ %i.lf, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ %i.ei, %bb.dr ], [ %i.hp, %bb.cd ], [ %i.hu, %bb.cf ], [ %i.id, %bb.cj ], [ %i.ij, %bb.cl ], [ %i.da, %bb.df ], [ %i.if, %bb.ck ], [ %i.ls, %bb.di ], [ %i.ly, %bb.dj ], [ %i.hz, %bb.ci ], [ %i.iq, %bb.cm ], [ %i.da, %bb.co ], [ %i.mv, %bb.dp ], [ %i.da, %._crit_edge401.i ], [ %i.da, %bb.eb ], [ %i.mg, %bb.dm ]
  %i.or = phi ptr [ @24, %bb.bl ], [ @23, %bb.bk ], [ @22, %._crit_edge.i ], [ @26, %bb.bj ], [ @12, %bb.dz ], [ @27, %.lr.ph.i ], [ @12, %bb.ds ], [ @7, %.lr.ph.i.i.i ], [ @30, %.lr.ph207.i ], [ @7, %bb.cr ], [ %..i.le, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ @44, %bb.dc ], [ @43, %bb.cw ], [ @25, %bb.bm ], [ @12, %bb.dv ], [ @43, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ @9, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ @7, %bb.dr ], [ @33, %bb.cd ], [ @34, %bb.cf ], [ @35, %bb.cj ], [ @36, %bb.cl ], [ @16, %bb.df ], [ @38, %bb.ck ], [ @39, %bb.di ], [ @40, %bb.dj ], [ @41, %bb.ci ], [ @37, %bb.cm ], [ @6, %bb.co ], [ @12, %bb.dp ], [ @6, %._crit_edge401.i ], [ @16, %bb.eb ], [ @42, %bb.dm ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef %i.oq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.or) #13
          to label %.loopexit.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.cont.i:                               ; preds = %.loopexit.i.invoke.i
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i: ; preds = %bb.dz
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.on
  store i32 0, ptr %i.os, align 4, !noalias !183
  br label %bb.ea

bb.ea:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, %.lr.ph.i126.i
  %.sroa.9.5.i128.i = phi i8 [ %i.ob, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i ], [ %.sroa.9.399.i.i, %.lr.ph.i126.i ] ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %i.oc, %i.nr
  br i1 %exitcond.not.i129.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i, !llvm.loop !158

bb.eb:                                            ; preds = %bb.dl
  %i.ot = icmp ugt i64 %i.da, %.pre402.i
  br i1 %i.ot, label %bb.ec, label %.loopexit.i.invoke.i

bb.ec:                                            ; preds = %bb.eb
  %i.ou = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %.pre402.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load i32, ptr %i.ov, align 4, !noundef !4
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.ow)
          to label %._crit_edge401.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %bb.bc, %bb.ax, %bb.ar
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ed, %bb.bb, %bb.aw, %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.eg

.invoke:                                          ; preds = %bb.ao, %bb.ee
  %i.oy = phi i1 [ true, %bb.ee ], [ false, %bb.ao ]
  invoke fastcc void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start(i1 noundef zeroext %i.oy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, ptr noalias noundef align 8 dereferenceable(424) %i.p)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ao
  br label %.invoke

bb.ef:                                            ; preds = %.invoke451, %.invoke, %bb.em, %bb.ek, %bb.eh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i, %bb.ap
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.bu, %bb.ef
  %eh.lpad-body = phi { ptr, i32 } [ %i.oz, %bb.ef ], [ %i.gc, %bb.bu ], [ %.pn.pn.i, %bb.ar ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFAEBF_(ptr noalias noundef align 8 dereferenceable(424) %i.p) #15
          to label %bb.eq unwind label %bb.ep

bb.eg:                                            ; preds = %.invoke, %_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit
  %i.pa = load i64, ptr %i.p, align 8, !range !6, !noundef !4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.pc = load i64, ptr %i.pb, align 8, !noundef !4 ; 2 uses
  %i.pd = icmp ugt i64 %i.pa, %i.pc
  br i1 %i.pd, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pe = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef range(i64 0, 9223372036854775807) %i.pc, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit unwind label %bb.ef ; 2 uses

bb.ei:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit, %bb.eg
  %i.pf = load i64, ptr %i.cm, align 8, !range !6, !noundef !4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ph = load i64, ptr %i.pg, align 8, !noundef !4 ; 2 uses
  %i.pi = icmp ugt i64 %i.pf, %i.ph
  br i1 %i.pi, label %bb.ek, label %bb.el

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit: ; preds = %bb.eh
  %i.pj = extractvalue { i64, i64 } %i.pe, 0      ; 2 uses
  %.not97 = icmp eq i64 %i.pj, -1
  br i1 %.not97, label %bb.ei, label %.invoke451, !prof !186

bb.ej:                                            ; preds = %bb.ac
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.pk = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm, i64 noundef range(i64 0, 9223372036854775807) %i.ph, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 unwind label %bb.ef ; 2 uses

bb.el:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %bb.ei
  %i.pl = load i64, ptr %i.ck, align 8, !range !6, !noundef !4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.pn = load i64, ptr %i.pm, align 8, !noundef !4 ; 2 uses
  %i.po = icmp ugt i64 %i.pl, %i.pn
  br i1 %i.po, label %bb.em, label %bb.en

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111: ; preds = %bb.ek
  %i.pp = extractvalue { i64, i64 } %i.pk, 0      ; 2 uses
  %.not98 = icmp eq i64 %i.pp, -1
  br i1 %.not98, label %bb.el, label %.invoke451, !prof !186

bb.em:                                            ; preds = %bb.el
  %i.pq = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ck, i64 noundef range(i64 0, 9223372036854775807) %i.pn, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 unwind label %bb.ef ; 2 uses

bb.en:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115, %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %i.p, i64 424, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.eo

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115: ; preds = %bb.em
  %i.pr = extractvalue { i64, i64 } %i.pq, 0      ; 2 uses
  %.not99 = icmp eq i64 %i.pr, -1
  br i1 %.not99, label %bb.en, label %.invoke451, !prof !186

.invoke451:                                       ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit
  %.sink452 = phi { i64, i64 } [ %i.pk, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pe, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pq, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.ps = phi i64 [ %i.pp, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pj, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pr, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.pt = extractvalue { i64, i64 } %.sink452, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ps, i64 %i.pt) #13
          to label %.cont unwind label %bb.ef

.cont:                                            ; preds = %.invoke451
  unreachable

bb.eo:                                            ; preds = %bb.en, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.ep:                                            ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit, %.body, %bb.z, %bb.w
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.eq:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn.pn.pn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit: ; preds = %bb.am, %bb.al, %bb.an
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #15
          to label %bb.z unwind label %bb.ep
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !207 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [1 x i8], align 1                 ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 3 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !4, !nonnull !4
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 10)
  br i1 %i.ag, label %.loopexit413, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph462

.lr.ph462:                                        ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = and i64 %i.ak, 63                       ; 3 uses
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 383
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64                    ; 4 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4 ; 2 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = freeze i32 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i64, ptr %i.ba, align 8            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4 ; 2 uses
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre500 = load ptr, ptr %1, align 8
  %.pre501 = load ptr, ptr %i.ac, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.be = phi ptr [ %.pre501, %._crit_edge.loopexit ], [ %i.ad, %bb.b ]
  %i.bf = phi ptr [ %.pre500, %._crit_edge.loopexit ], [ %i.ab, %bb.b ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.bg, ptr %i.n, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.bh = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be, ptr noundef nonnull @48, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.bh, label %.loopexit413, label %bb.d

bb.c:                                             ; preds = %.lr.ph462, %.backedge
  %.sroa.040.0461 = phi i64 [ 0, %.lr.ph462 ], [ %.sroa.040.0.be, %.backedge ] ; 3 uses
  %i.bi = add nuw i64 %.sroa.040.0461, 1          ; 2 uses
  %i.bj = shl i64 %.sroa.040.0461, %i.al          ; 3 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp eq i64 %.sroa.040.0461, 1
  br i1 %i.bl, label %bb.m, label %bb.n

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !4
  %i.bo = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.bp = zext i1 %i.bo to i8
  store i8 %i.bp, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt, ptr %.sroa.4229.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.br = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.bs = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @49, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.bs, label %.loopexit413, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ah, ptr %i.k, align 8
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4245.0..sroa_idx, align 8
  %i.bt = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bu = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.bv = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu, ptr noundef nonnull @50, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bv, label %.loopexit413, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 3 uses
  store i64 %i.bx, ptr %i.j, align 8
  %i.by = icmp ult i64 %i.bx, 2305843009213693952
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4261.0..sroa_idx, align 8
  %i.bz = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ca = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cb = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noundef nonnull @51, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.cb, label %.loopexit413, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.cc, ptr %i.h, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.cd = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ce = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cf = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce, ptr noundef nonnull @52, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.cf, label %.loopexit413, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.cg, ptr %i.g, align 8
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.ch = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ci = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cj = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noundef nonnull @53, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.cj, label %.loopexit413, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ck, ptr %i.f, align 8
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4309.0..sroa_idx, align 8
  %i.cl = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cm = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cn = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm, ptr noundef nonnull @54, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.cn, label %.loopexit413, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 31
  %i.cs = shl nuw i32 1, %i.cr
  store i32 %i.cs, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsQ_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.4325.0..sroa_idx, align 8
  %i.ct = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cu = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cv = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noundef nonnull @55, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cv, label %.loopexit413, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cw, ptr %i.c, align 8
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB4_11ByteClassesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4341.0..sroa_idx, align 8
  %i.cx = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cy = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.cz = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cy, ptr noundef nonnull @56, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.cz, label %.loopexit413, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0EBP_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0EBP_.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !208, !noundef !4 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 2305843009213693952
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !208, !noundef !4 ; 2 uses
  %i.df = icmp ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !208, !noundef !4
  %i.di = mul nuw nsw i64 %i.de, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load i64, ptr %i.dj, align 8
  %.sroa.02.0.i = select i1 %i.bo, i64 %.val.i, i64 0
  %reass.add = add nuw nsw i64 %i.db, %i.bx
  %reass.mul = shl nuw i64 %reass.add, 2
  %i.dk = add i64 %i.di, %reass.mul
  %i.dl = add i64 %i.dk, %i.dh
  %i.dm = add i64 %i.dl, %.sroa.02.0.i
  store i64 %i.dm, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4357.0..sroa_idx, align 8
  %i.dn = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.do = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.dp = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.do, ptr noundef nonnull @57, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.dp, label %.loopexit413, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0EBP_.exit
  %i.dq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dr = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !invariant.load !4, !nonnull !4
  %i.du = call noundef zeroext i1 %i.dt(ptr noundef nonnull %i.dq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 2)
  br label %.loopexit413

.loopexit413:                                     ; preds = %bb.o, %bb.m, %bb.n, %._crit_edge.split.us, %bb.x, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_.exit, %bb.ah, %bb.ag, %bb.af, %.lr.ph.split.us.peel.next, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0EBP_.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %._crit_edge, %.split451.us, %bb.l, %bb.a
  %.sroa.0.0 = phi i1 [ %i.du, %bb.l ], [ true, %bb.a ], [ true, %.lr.ph.split.us.peel.next ], [ true, %._crit_edge ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.ah ], [ true, %.split451.us ], [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0EBP_.exit ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_.exit ], [ true, %bb.x ], [ true, %._crit_edge.split.us ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.o ]
  ret i1 %.sroa.0.0

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dv = and i64 %i.bj, 4294967295
  store i64 %i.dv, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aa, ptr %i.z, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.dw = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dx = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.dy = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dx, ptr noundef nonnull @59, ptr noundef nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.dy, label %.loopexit413, label %.backedge

bb.n:                                             ; preds = %bb.c
  %i.dz = call noundef zeroext i1 @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton19fmt_state_indicatorRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, i32 noundef %i.bk)
  br i1 %i.dz, label %.loopexit413, label %bb.o

.backedge:                                        ; preds = %bb.m, %bb.w, %._crit_edge.split.us
  %.sroa.040.0.be = phi i64 [ %i.bi, %bb.w ], [ %i.bi, %._crit_edge.split.us ], [ 2, %bb.m ] ; 2 uses
  %i.ea = icmp ult i64 %.sroa.040.0.be, %i.ai
  br i1 %i.ea, label %bb.c, label %._crit_edge.loopexit

bb.o:                                             ; preds = %bb.n
  %i.eb = and i64 %i.bj, 4294967295               ; 4 uses
  store i64 %i.eb, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.y, ptr %i.x, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  %i.ec = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ed = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ee = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ed, ptr noundef nonnull @60, ptr noundef nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %i.ee, label %.loopexit413, label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader.backedge
  %.sroa.25.0 = phi i64 [ %.sroa.25.1, %.preheader.backedge ], [ undef, %bb.o ] ; 8 uses
  %.sroa.17.0 = phi i32 [ %.sroa.17.1, %.preheader.backedge ], [ 0, %bb.o ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.1, %.preheader.backedge ], [ 0, %bb.o ] ; 11 uses
  %.sroa.0.0396 = phi i64 [ %i.ew, %.preheader.backedge ], [ 0, %bb.o ] ; 2 uses
  %.not411 = icmp ugt i64 %.sroa.10.0, %i.ao
  br i1 %.not411, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader
  %i.ef = add nuw nsw i64 %.sroa.10.0, 1          ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.10.0, %i.eb      ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.ar
  br i1 %i.eh, label %bb.p, label %.loopexit.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ei = trunc nuw i32 %.sroa.17.0 to i1
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.eg
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !209, !noundef !4 ; 6 uses
  br i1 %i.ei, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.53.0.insert.ext.peel.i.i.i = zext i32 %i.ek to i64
  %.sroa.53.0.insert.shift.peel.i.i.i = shl nuw i64 %.sroa.53.0.insert.ext.peel.i.i.i, 32
  %.sroa.42.0.insert.shift.peel.i.i.i = shl nuw nsw i64 %.sroa.10.0, 8
  %.sroa.42.0.insert.insert.peel.i.i.i = or disjoint i64 %.sroa.53.0.insert.shift.peel.i.i.i, %.sroa.42.0.insert.shift.peel.i.i.i
  %.sroa.01.0.insert.insert.peel.i.i.i = or disjoint i64 %.sroa.42.0.insert.insert.peel.i.i.i, %.sroa.10.0
  br label %.backedge.peel.i.i.i

bb.r:                                             ; preds = %bb.p
  %.sroa.25.48.extract.shift = lshr i64 %.sroa.25.0, 32
  %.sroa.25.48.extract.trunc = trunc nuw i64 %.sroa.25.48.extract.shift to i32
  %i.el = icmp eq i32 %i.ek, %.sroa.25.48.extract.trunc
  br i1 %i.el, label %bb.s, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r
  %.sroa.25.45.extract.shift = lshr i64 %.sroa.25.0, 8
  %.pre.i = and i64 %.sroa.25.0, 255
  %.pre37.i = and i64 %.sroa.25.0, -4294967296
  br label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %.sroa.59.0.insert.ext.peel.i.i.i = zext i32 %i.ek to i64
  %.sroa.59.0.insert.shift.peel.i.i.i = shl nuw i64 %.sroa.59.0.insert.ext.peel.i.i.i, 32
  %.sroa.47.0.insert.ext.peel.i.i.i = shl nuw nsw i64 %.sroa.10.0, 8
  %.sroa.47.0.insert.shift.peel.i.i.i = and i64 %.sroa.47.0.insert.ext.peel.i.i.i, 65280
  %.sroa.06.0.insert.ext.peel.i.i.i = and i64 %.sroa.25.0, 255
  %i.em = or disjoint i64 %.sroa.59.0.insert.shift.peel.i.i.i, %.sroa.47.0.insert.shift.peel.i.i.i
  %.sroa.06.0.insert.insert.peel.i.i.i = or disjoint i64 %i.em, %.sroa.06.0.insert.ext.peel.i.i.i
  br label %.backedge.peel.i.i.i

.backedge.peel.i.i.i:                             ; preds = %bb.s, %bb.q
  %.sroa.25.2 = phi i64 [ %.sroa.06.0.insert.insert.peel.i.i.i, %bb.s ], [ %.sroa.01.0.insert.insert.peel.i.i.i, %bb.q ] ; 2 uses
  %.in = phi i64 [ %.sroa.25.0, %bb.s ], [ %.sroa.10.0, %bb.q ]
  %exitcond.peel.not.i.i.i = icmp eq i64 %.sroa.10.0, %i.ao
  br i1 %exitcond.peel.not.i.i.i, label %bb.v, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.backedge.peel.i.i.i
  %.sroa.59.0.insert.ext.i.i.i = zext i32 %i.ek to i64
  %.sroa.59.0.insert.shift.i.i.i = shl nuw i64 %.sroa.59.0.insert.ext.i.i.i, 32 ; 2 uses
  %.sroa.06.0.insert.ext.i.i.i = and i64 %.in, 255 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.backedge.i.i.i, %.peel.next.i.i.i
  %.in.i.i.i = phi i64 [ %.sroa.10.0, %.peel.next.i.i.i ], [ %i.eu, %.backedge.i.i.i ]
  %i.en = phi i64 [ %i.ef, %.peel.next.i.i.i ], [ %i.eo, %.backedge.i.i.i ] ; 5 uses
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %i.ep = add i64 %i.en, %i.eb                    ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.ar
  br i1 %i.eq, label %bb.u, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.t
  %.lcssa46.i.i.i = phi i64 [ %i.ar, %bb.t ], [ %i.eg, %.lr.ph.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa46.i.i.i, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !noalias !210
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4, !noalias !210, !noundef !4 ; 2 uses
  %i.et = icmp eq i32 %i.ek, %i.es
  br i1 %i.et, label %.backedge.i.i.i, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i

.backedge.i.i.i:                                  ; preds = %bb.u
  %.sroa.47.0.insert.ext.i.i.i = shl i64 %i.en, 8
  %.sroa.47.0.insert.shift.i.i.i = and i64 %.sroa.47.0.insert.ext.i.i.i, 65280
  %.sroa.47.0.insert.insert.i.i.i = or disjoint i64 %.sroa.47.0.insert.shift.i.i.i, %.sroa.59.0.insert.shift.i.i.i ; 2 uses
  %i.eu = lshr exact i64 %.sroa.47.0.insert.insert.i.i.i, 8
  %exitcond.not.i.i.i = icmp eq i64 %i.en, %i.ao
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %bb.t, !llvm.loop !203

_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i: ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.6.8.insert.shift.pre-phi.i = phi i64 [ %.pre37.i, %._crit_edge.i.i.i ], [ %.sroa.59.0.insert.shift.i.i.i, %bb.u ]
  %.sroa.6.4.insert.ext.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i.i.i ], [ %.sroa.06.0.insert.ext.i.i.i, %bb.u ]
  %.in412 = phi i64 [ %.sroa.25.45.extract.shift, %._crit_edge.i.i.i ], [ %.in.i.i.i, %bb.u ]
  %.lcssa55.i.i.i = phi i32 [ %i.ek, %._crit_edge.i.i.i ], [ %i.es, %bb.u ]
  %.lcssa53.i.i.i = phi i64 [ %.sroa.10.0, %._crit_edge.i.i.i ], [ %i.en, %bb.u ]
  %.lcssa50.i.i.i = phi i64 [ %i.ef, %._crit_edge.i.i.i ], [ %i.eo, %bb.u ]
  %.sroa.515.0.insert.ext.i.i.i = zext i32 %.lcssa55.i.i.i to i64
  %.sroa.515.0.insert.shift.i.i.i = shl nuw i64 %.sroa.515.0.insert.ext.i.i.i, 32
  %.sroa.413.0.insert.ext.i.i.i = and i64 %.lcssa53.i.i.i, 255 ; 2 uses
  %.sroa.413.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.413.0.insert.ext.i.i.i, 8
  %.sroa.413.0.insert.insert.i.i.i = or disjoint i64 %.sroa.413.0.insert.shift.i.i.i, %.sroa.515.0.insert.shift.i.i.i
  %.sroa.012.0.insert.insert.i.i.i = or disjoint i64 %.sroa.413.0.insert.insert.i.i.i, %.sroa.413.0.insert.ext.i.i.i
  %.sroa.6.5.insert.ext.i = shl i64 %.in412, 8
  %.sroa.6.5.insert.shift.i = and i64 %.sroa.6.5.insert.ext.i, 65280
  %.sroa.6.5.insert.insert.i = or disjoint i64 %.sroa.6.4.insert.ext.pre-phi.i, %.sroa.6.8.insert.shift.pre-phi.i
  %.sroa.6.8.insert.insert.i = or disjoint i64 %.sroa.6.5.insert.insert.i, %.sroa.6.5.insert.shift.i
  br label %bb.v

_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i: ; preds = %.preheader
  %i.ev = trunc nuw i32 %.sroa.17.0 to i1
  br i1 %i.ev, label %bb.v, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_.exit

.loopexit:                                        ; preds = %.backedge.i.i.i
  %.sroa.06.0.insert.insert.i.i.i.le = or disjoint i64 %.sroa.47.0.insert.insert.i.i.i, %.sroa.06.0.insert.ext.i.i.i ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i, %.backedge.peel.i.i.i
  %.sroa.25.1 = phi i64 [ %.sroa.25.0, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i ], [ %.sroa.012.0.insert.insert.i.i.i, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ %.sroa.25.2, %.backedge.peel.i.i.i ], [ %.sroa.06.0.insert.insert.i.i.i.le, %.loopexit ]
  %.sroa.17.1 = phi i32 [ 0, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i ], [ 1, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ 0, %.backedge.peel.i.i.i ], [ 0, %.loopexit ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.0, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i ], [ %.lcssa50.i.i.i, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ %i.ap, %.backedge.peel.i.i.i ], [ %i.ap, %.loopexit ]
  %.sroa.6.011.i = phi i64 [ %.sroa.25.0, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i ], [ %.sroa.6.8.insert.insert.i, %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ %.sroa.25.2, %.backedge.peel.i.i.i ], [ %.sroa.06.0.insert.insert.i.i.i.le, %.loopexit ] ; 3 uses
  %i.ew = add i64 %.sroa.0.0396, 1
  %.sroa.8395.16.extract.trunc = trunc i64 %.sroa.6.011.i to i8 ; 3 uses
  %.sroa.8395.17.extract.shift = lshr i64 %.sroa.6.011.i, 8
  %.sroa.8395.17.extract.trunc = trunc i64 %.sroa.8395.17.extract.shift to i8 ; 2 uses
  %.sroa.8395.20.extract.shift = lshr i64 %.sroa.6.011.i, 32 ; 2 uses
  %.not388 = icmp eq i64 %.sroa.0.0396, 0
  br i1 %.not388, label %bb.ae, label %bb.af

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_.exit: ; preds = %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.i
  %i.ex = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ey = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !invariant.load !4, !nonnull !4
  %i.fb = call noundef zeroext i1 %i.fa(ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 1)
  br i1 %i.fb, label %.loopexit413, label %bb.w

bb.w:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_.exit
  %i.fc = add i32 %i.bk, -1
  %or.cond.not = icmp ult i32 %i.fc, %i.az
  br i1 %or.cond.not, label %bb.x, label %.backedge

bb.x:                                             ; preds = %bb.w
  %i.fd = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fe = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !invariant.load !4, !nonnull !4
  %i.fh = call noundef zeroext i1 %i.fg(ptr noundef nonnull %i.fd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 10)
  br i1 %i.fh, label %.loopexit413, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = load i64, ptr %i.y, align 8, !noundef !4
  %i.fj = lshr i64 %i.fi, %i.al
  %i.fk = add i64 %i.fj, -2                       ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.bb
  br i1 %i.fl, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !4 ; 4 uses
  %i.fp = icmp ult i64 %i.fo, 2305843009213693952
  call void @llvm.assume(i1 %i.fp)
  %.not463 = icmp eq i64 %i.fo, 0
  br i1 %.not463, label %._crit_edge.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.fq = lshr i64 %i.eb, %i.al
  %i.fr = add nsw i64 %i.fq, -2                   ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.bb
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.fr ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %.fr = freeze i1 %i.fs
  br i1 %.fr, label %.lr.ph.split.us.preheader._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader._crit_edge:             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.fu, align 8, !noalias !211
  %.not519 = icmp eq i64 %.pre, 0
  br i1 %.not519, label %.split.us, label %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel

_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel: ; preds = %.lr.ph.split.us.preheader._crit_edge
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !211, !nonnull !4, !noundef !4
  %i.fx = load i32, ptr %i.fw, align 4, !noalias !211, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fy = zext i32 %i.fx to i64
  store i64 %i.fy, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
  %i.fz = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ga = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gb = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ga, ptr noundef nonnull @65, ptr noundef nonnull %i.o)
  br i1 %i.gb, label %.split451.us, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.peel.not = icmp eq i64 %i.fo, 1
  br i1 %exitcond.peel.not, label %._crit_edge.split.us, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %bb.aa, %bb.ac
  %.sroa.0172.0448.us = phi i64 [ %i.gc, %bb.ac ], [ 1, %bb.aa ] ; 4 uses
  %i.gc = add nuw nsw i64 %.sroa.0172.0448.us, 1  ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ge = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !invariant.load !4, !nonnull !4
  %i.gh = call noundef zeroext i1 %i.gg(ptr noundef nonnull %i.gd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 2)
  br i1 %i.gh, label %.loopexit413, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us.peel.next
  %i.gi = load i64, ptr %i.fu, align 8, !noalias !211, !noundef !4 ; 2 uses
  %i.gj = icmp ult i64 %.sroa.0172.0448.us, %i.gi
  br i1 %i.gj, label %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us, label %.split.us

_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us: ; preds = %bb.ab
  %i.gk = load ptr, ptr %i.fv, align 8, !noalias !211, !nonnull !4, !noundef !4
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.0172.0448.us
  %i.gm = load i32, ptr %i.gl, align 4, !noalias !211, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gn = zext i32 %i.gm to i64
  store i64 %i.gn, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
  %i.go = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gp = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gq = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gp, ptr noundef nonnull @65, ptr noundef nonnull %i.o)
  br i1 %i.gq, label %.split451.us, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.not = icmp eq i64 %i.gc, %i.fo
  br i1 %exitcond.not, label %._crit_edge.split.us, label %.lr.ph.split.us.peel.next, !llvm.loop !206

bb.ad:                                            ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fk, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #13
  unreachable

._crit_edge.split.us:                             ; preds = %bb.ac, %bb.aa, %bb.z
  %i.gr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gs = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !4, !nonnull !4
  %i.gv = call noundef zeroext i1 %i.gu(ptr noundef nonnull %i.gr, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 1)
  br i1 %i.gv, label %.loopexit413, label %.backedge

.lr.ph.split:                                     ; preds = %.lr.ph
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13, !noalias !211
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.us.preheader._crit_edge, %bb.ab
  %.lcssa480 = phi i64 [ %i.gi, %bb.ab ], [ 0, %.lr.ph.split.us.preheader._crit_edge ]
  %.sroa.0172.0448.us.lcssa477 = phi i64 [ %.sroa.0172.0448.us, %bb.ab ], [ 0, %.lr.ph.split.us.preheader._crit_edge ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693951) %.sroa.0172.0448.us.lcssa477, i64 noundef %.lcssa480, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13, !noalias !211
  unreachable

.split451.us:                                     ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel, %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit413

bb.ae:                                            ; preds = %bb.af, %bb.v
  %i.gw = icmp eq i8 %.sroa.8395.16.extract.trunc, %.sroa.8395.17.extract.trunc
  br i1 %i.gw, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.gx = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gy = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !invariant.load !4, !nonnull !4
  %i.hb = call noundef zeroext i1 %i.ha(ptr noundef nonnull %i.gx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 2)
  br i1 %i.hb, label %.loopexit413, label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 %.sroa.8395.16.extract.trunc, ptr %i.t, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %.sroa.8395.17.extract.trunc, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.8395.20.extract.shift, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.t, ptr %i.q, align 8
  store ptr @_RNvXNtNtCs9OSMwK5JXHk_12aho_corasick4util5debugNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4127.0..sroa_idx, align 8
  store ptr %i.s, ptr %i.au, align 8
  store ptr @_RNvXNtNtCs9OSMwK5JXHk_12aho_corasick4util5debugNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4131.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.av, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4135.0..sroa_idx, align 8
  %i.hc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hd = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.he = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hd, ptr noundef nonnull @66, ptr noundef nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.he, label %.loopexit413, label %.preheader.backedge

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 %.sroa.8395.16.extract.trunc, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.8395.20.extract.shift, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.w, ptr %i.u, align 8
  store ptr @_RNvXNtNtCs9OSMwK5JXHk_12aho_corasick4util5debugNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  store ptr %i.v, ptr %i.aw, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4111.0..sroa_idx, align 8
  %i.hf = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hg = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.hh = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.hf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hg, ptr noundef nonnull @67, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.hh, label %.loopexit413, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ah, %bb.ag
  br label %.preheader
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !212 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.7, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !213 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !214 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !215 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFANtNtB6_9automaton9Automaton20try_find_overlappingB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(64) %2) unnamed_addr #0 !guid !216 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef ptr @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(64) %2)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFANtNtB6_9automaton9Automaton8try_findB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 !guid !217 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton12try_find_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9OSMwK5JXHk_12aho_corasick(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1A_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_3nfa13noncontiguous5StateEE3newBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, ptr } @_RNvXs1B_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_3nfa13noncontiguous5StateEENtNtNtNtB1n_4iter6traits8iterator8Iterator4nextBa_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses10singletons(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 1 captures(none) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses7stride2(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses6stride(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBQ_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB4_11ByteClassesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton19fmt_state_indicatorRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs9OSMwK5JXHk_12aho_corasick4util5debugNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef ptr @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton12try_find_fwdRNtNtB4_3dfa3DFAEB4_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 4163113598191628346}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 8}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = !{i8 0, i8 3}
!10 = distinct !{!10, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB16_3NFA12iter_matches0ENtNtNtB6_6traits8iterator8Iterator4nextB1a_"}
!11 = distinct !{!11, !10, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB16_3NFA12iter_matches0ENtNtNtB6_6traits8iterator8Iterator4nextB1a_: argument 0"}
!12 = distinct !{!12, i1 true, !"_RNCNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_3NFA12iter_matches0Ba_"}
!13 = distinct !{!13, !12, !"_RNCNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB6_3NFA12iter_matches0Ba_: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDE8push_mutBK_"}
!15 = distinct !{!15, !14, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDE8push_mutBK_: argument 0"}
!16 = !{i64 -5208423286367659197}
!17 = !{!13, !11}
!18 = !{!15}
!19 = !{i64 2146261840700865450}
!20 = !{i64 -6213584907772141575}
!21 = !{i64 -7199089213245590917}
!22 = distinct !{!22, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_"}
!23 = distinct !{!23, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_"}
!25 = distinct !{!25, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_"}
!27 = distinct !{!27, !26, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!29 = distinct !{!29, !28, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_"}
!31 = distinct !{!31, !30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_: argument 0"}
!32 = distinct !{!32, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_"}
!33 = distinct !{!33, !32, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_"}
!35 = distinct !{!35, !34, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!37 = distinct !{!37, !36, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!38 = !{i64 5185121919462494199}
!39 = !{!23}
!40 = !{!29, !27, !25, !23}
!41 = !{!31}
!42 = !{!37, !35, !33, !31}
!43 = distinct !{!43, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!44 = distinct !{!44, !43, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!46 = distinct !{!46, !45, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!48 = distinct !{!48, !47, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!49 = !{i64 -5721973990724789093}
!50 = !{i64 4}
!51 = !{!44}
!52 = !{!46, !44}
!53 = !{!46}
!54 = !{!48}
!55 = !{!48, !44}
!56 = distinct !{!56, i1 true, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_"}
!57 = distinct !{!57, !56, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_: argument 1"}
!58 = distinct !{!58, !56, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_: argument 2"}
!59 = distinct !{!59, !56, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_"}
!61 = distinct !{!61, !60, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_: argument 0"}
!62 = distinct !{!62, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!63 = distinct !{!63, !62, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!65 = distinct !{!65, !64, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!67 = distinct !{!67, !66, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!68 = distinct !{!68, i1 true, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_"}
!69 = distinct !{!69, !68, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_: argument 0"}
!70 = distinct !{!70, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!71 = distinct !{!71, !70, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!73 = distinct !{!73, !72, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!75 = distinct !{!75, !74, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!76 = distinct !{!76, !8}
!77 = distinct !{!77, i1 true, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_"}
!78 = distinct !{!78, !77, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_: argument 0"}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, i1 true, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_"}
!81 = distinct !{!81, !80, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_: argument 0"}
!82 = distinct !{!82, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!83 = distinct !{!83, !82, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!85 = distinct !{!85, !84, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!86 = distinct !{!86, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!87 = distinct !{!87, !86, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!88 = distinct !{!88, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!89 = distinct !{!89, !88, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!90 = distinct !{!90, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!91 = distinct !{!91, !90, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!93 = distinct !{!93, !92, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!94 = !{i64 158680348245540945}
!95 = !{!57}
!96 = !{!59, !57, !58}
!97 = !{!61, !59, !57}
!98 = !{!63}
!99 = !{!59, !57}
!100 = !{!65}
!101 = !{!65, !63, !61, !59, !57}
!102 = !{!67, !63, !61, !59, !57}
!103 = !{!65, !63}
!104 = !{!63, !61, !59, !57}
!105 = !{!69, !59, !57}
!106 = !{!71}
!107 = !{!73}
!108 = !{!73, !71, !69, !59, !57}
!109 = !{!75, !71, !69, !59, !57}
!110 = !{!73, !71}
!111 = !{!71, !69, !59, !57}
!112 = !{!78, !59, !57, !58}
!113 = !{!81, !59, !57}
!114 = !{!83}
!115 = !{!85}
!116 = !{!85, !83, !81, !59, !57}
!117 = !{!87, !83, !81, !59, !57}
!118 = !{!85, !83}
!119 = !{!83, !81, !59, !57}
!120 = !{!89}
!121 = !{!91}
!122 = !{!91, !89, !78, !59, !57, !58}
!123 = !{!93, !89, !78, !59, !57, !58}
!124 = !{!91, !89}
!125 = !{!89, !78, !59, !57, !58}
!126 = distinct !{!126, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_"}
!127 = distinct !{!127, !126, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_: argument 0"}
!128 = distinct !{!128, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_"}
!129 = distinct !{!129, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEBH_: argument 0"}
!130 = distinct !{!130, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_"}
!131 = distinct !{!131, !130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_EEB1f_: argument 0"}
!132 = distinct !{!132, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!133 = distinct !{!133, !132, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!134 = distinct !{!134, i1 true, !"_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts"}
!135 = distinct !{!135, !134, !"_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts: argument 0"}
!136 = distinct !{!136, !134, !"_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts: argument 1"}
!137 = distinct !{!137, i1 true, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs9OSMwK5JXHk_12aho_corasick"}
!138 = distinct !{!138, !137, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs9OSMwK5JXHk_12aho_corasick: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_"}
!140 = distinct !{!140, !139, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_: argument 1"}
!141 = distinct !{!141, !139, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_: argument 2"}
!142 = distinct !{!142, !139, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_: argument 0"}
!143 = distinct !{!143, !8}
!144 = distinct !{!144, i1 true, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_"}
!145 = distinct !{!145, !144, !"_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state"}
!147 = distinct !{!147, !146, !"_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition"}
!149 = distinct !{!149, !148, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition: argument 0"}
!150 = distinct !{!150, i1 true, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse"}
!151 = distinct !{!151, !150, !"_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA24follow_transition_sparse: argument 0"}
!152 = distinct !{!152, i1 true, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_"}
!153 = distinct !{!153, !152, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_: argument 1"}
!154 = distinct !{!154, !152, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_: argument 2"}
!155 = distinct !{!155, !152, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_: argument 3"}
!156 = distinct !{!156, !152, !"_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_: argument 0"}
!157 = distinct !{!157, !8}
!158 = distinct !{!158, !8}
!159 = !{i64 -8238940979438975629}
!160 = !{i8 0, i8 2}
!161 = !{i64 0, i64 2}
!162 = !{i64 0, i64 -9223372036854775807}
!163 = !{!133, !131, !129, !127}
!164 = !{!135}
!165 = !{!136}
!166 = !{!135, !136}
!167 = !{!138}
!168 = !{!138, !135, !136}
!169 = !{!"branch_weights", i32 4001, i32 4000000}
!170 = !{!140}
!171 = !{!142, !140, !141}
!172 = !{!140, !136}
!173 = !{!145, !142, !140, !141}
!174 = !{!147}
!175 = !{!149}
!176 = !{!149, !147, !145, !142, !140, !141}
!177 = !{!151, !147, !145, !142, !140, !141}
!178 = !{!149, !147, !135}
!179 = !{!147, !145, !142, !140, !141}
!180 = !{!145, !142, !140, !141, !135, !136}
!181 = !{!153}
!182 = !{!154}
!183 = !{!156, !153, !154, !155}
!184 = !{!153, !136}
!185 = !{!154, !136}
!186 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!187 = distinct !{!187, i1 true, !"_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton12memory_usage"}
!188 = distinct !{!188, !187, !"_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton12memory_usage: argument 0"}
!189 = distinct !{!189, i1 true, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_"}
!190 = distinct !{!190, !189, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_: argument 1"}
!191 = distinct !{!191, !189, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtB8_7sources7from_fn6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvXs1_NtB1L_3dfaNtB3x_3DFANtNtBa_3fmt5Debug3fmt0EE0EENtNtNtB8_6traits8iterator8Iterator4nextB1L_: argument 0"}
!192 = distinct !{!192, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_"}
!193 = distinct !{!193, !192, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_: argument 1"}
!194 = distinct !{!194, !192, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_: argument 0"}
!195 = distinct !{!195, i1 true, !"_RNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1b_3ops5range5RangejENCNvXs1_NtB6_3dfaNtB2r_3DFANtNtB1b_3fmt5Debug3fmt0EE0B6_"}
!196 = distinct !{!196, !195, !"_RNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1b_3ops5range5RangejENCNvXs1_NtB6_3dfaNtB2r_3DFANtNtB1b_3fmt5Debug3fmt0EE0B6_: argument 1"}
!197 = distinct !{!197, !195, !"_RNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1b_3ops5range5RangejENCNvXs1_NtB6_3dfaNtB2r_3DFANtNtB1b_3fmt5Debug3fmt0EE0B6_: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB1w_3DFANtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_"}
!199 = distinct !{!199, !198, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB1w_3DFANtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 1:Peel0"}
!200 = distinct !{!200, i1 true, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB1w_3DFANtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_"}
!201 = distinct !{!201, !200, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB1w_3DFANtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 0"}
!202 = distinct !{!202, !200, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB1w_3DFANtNtBb_3fmt5Debug3fmt0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_: argument 1"}
!203 = distinct !{!203, !8}
!204 = distinct !{!204, i1 true, !"_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern"}
!205 = distinct !{!205, !204, !"_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern: argument 0"}
!206 = distinct !{!206, !8}
!207 = !{i64 -3657715976109873650}
!208 = !{!188}
!209 = !{!201, !199, !197, !196, !194, !193, !191, !190}
!210 = !{!201, !202, !197, !196, !194, !193, !191, !190}
!211 = !{!205}
!212 = !{i64 -4520036938154506751}
!213 = !{i64 906180004296053213}
!214 = !{i64 -3443094257275292575}
!215 = !{i64 279647879250852403}
!216 = !{i64 -2035924278243666753}
!217 = !{i64 -7673687142761654499}
end_hunk_0
