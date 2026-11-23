Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.03?download=true
inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0_@_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous:bb.a
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
define noundef zeroext i1 @_RNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !208 {
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
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !209, !noundef !4 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 2305843009213693952
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !209, !noundef !4 ; 2 uses
  %i.df = icmp ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !209, !noundef !4
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
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !210, !noundef !4 ; 6 uses
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
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa46.i.i.i, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !noalias !211
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4, !noalias !211, !noundef !4 ; 2 uses
  %i.et = icmp eq i32 %i.ek, %i.es
  br i1 %i.et, label %.backedge.i.i.i, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fnINtB2_6FromFnNCINvNtCs9OSMwK5JXHk_12aho_corasick9automaton18sparse_transitionsINtNtNtB6_8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvXs1_NtB16_3dfaNtB33_3DFANtNtB8_3fmt5Debug3fmt0EE0ENtNtNtB6_6traits8iterator8Iterator4nextB16_.exit.thread.i

.backedge.i.i.i:                                  ; preds = %bb.u
  %.sroa.47.0.insert.ext.i.i.i = shl i64 %i.en, 8
  %.sroa.47.0.insert.shift.i.i.i = and i64 %.sroa.47.0.insert.ext.i.i.i, 65280
  %.sroa.47.0.insert.insert.i.i.i = or disjoint i64 %.sroa.47.0.insert.shift.i.i.i, %.sroa.59.0.insert.shift.i.i.i ; 2 uses
  %i.eu = lshr exact i64 %.sroa.47.0.insert.insert.i.i.i, 8
  %exitcond.not.i.i.i = icmp eq i64 %i.en, %i.ao
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %bb.t, !llvm.loop !204

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
  %2 = lshr i64 %i.eb, %i.al
  %i.fq = add nsw i64 %2, -2                      ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.bb
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.fq ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %.fr = freeze i1 %i.fr
  br i1 %.fr, label %.lr.ph.split.us.preheader._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader._crit_edge:             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.ft, align 8, !noalias !212
  %.not519 = icmp eq i64 %.pre, 0
  br i1 %.not519, label %.split.us, label %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel

_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel: ; preds = %.lr.ph.split.us.preheader._crit_edge
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !212, !nonnull !4, !noundef !4
  %i.fw = load i32, ptr %i.fv, align 4, !noalias !212, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
  %i.fy = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fz = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ga = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fz, ptr noundef nonnull @65, ptr noundef nonnull %i.o)
  br i1 %i.ga, label %.split451.us, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.peel.not = icmp eq i64 %i.fo, 1
  br i1 %exitcond.peel.not, label %._crit_edge.split.us, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %bb.aa, %bb.ac
  %.sroa.0172.0448.us = phi i64 [ %i.gb, %bb.ac ], [ 1, %bb.aa ] ; 4 uses
  %i.gb = add nuw nsw i64 %.sroa.0172.0448.us, 1  ; 2 uses
  %i.gc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gd = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !invariant.load !4, !nonnull !4
  %i.gg = call noundef zeroext i1 %i.gf(ptr noundef nonnull %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 2)
  br i1 %i.gg, label %.loopexit413, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us.peel.next
  %i.gh = load i64, ptr %i.ft, align 8, !noalias !212, !noundef !4 ; 2 uses
  %i.gi = icmp ult i64 %.sroa.0172.0448.us, %i.gh
  br i1 %i.gi, label %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us, label %.split.us

_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us: ; preds = %bb.ab
  %i.gj = load ptr, ptr %i.fu, align 8, !noalias !212, !nonnull !4, !noundef !4
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.sroa.0172.0448.us
  %i.gl = load i32, ptr %i.gk, align 4, !noalias !212, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gm = zext i32 %i.gl to i64
  store i64 %i.gm, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
  %i.gn = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.go = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gp = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go, ptr noundef nonnull @65, ptr noundef nonnull %i.o)
  br i1 %i.gp, label %.split451.us, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.not = icmp eq i64 %i.gb, %i.fo
  br i1 %exitcond.not, label %._crit_edge.split.us, label %.lr.ph.split.us.peel.next, !llvm.loop !207

bb.ad:                                            ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fk, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #13
  unreachable

._crit_edge.split.us:                             ; preds = %bb.ac, %bb.aa, %bb.z
  %i.gq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gr = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !invariant.load !4, !nonnull !4
  %i.gu = call noundef zeroext i1 %i.gt(ptr noundef nonnull %i.gq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 1)
  br i1 %i.gu, label %.loopexit413, label %.backedge

.lr.ph.split:                                     ; preds = %.lr.ph
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13, !noalias !212
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.us.preheader._crit_edge, %bb.ab
  %.lcssa480 = phi i64 [ %i.gh, %bb.ab ], [ 0, %.lr.ph.split.us.preheader._crit_edge ]
  %.sroa.0172.0448.us.lcssa477 = phi i64 [ %.sroa.0172.0448.us, %bb.ab ], [ 0, %.lr.ph.split.us.preheader._crit_edge ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693951) %.sroa.0172.0448.us.lcssa477, i64 noundef %.lcssa480, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13, !noalias !212
  unreachable

.split451.us:                                     ; preds = %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us.peel, %_RNvXs0_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtB7_9automaton9Automaton13match_pattern.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit413

bb.ae:                                            ; preds = %bb.af, %bb.v
  %i.gv = icmp eq i8 %.sroa.8395.16.extract.trunc, %.sroa.8395.17.extract.trunc
  br i1 %i.gv, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.gw = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gx = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !invariant.load !4, !nonnull !4
  %i.ha = call noundef zeroext i1 %i.gz(ptr noundef nonnull %i.gw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 2)
  br i1 %i.ha, label %.loopexit413, label %bb.ae

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
  %i.hb = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hc = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.hd = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.hb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hc, ptr noundef nonnull @66, ptr noundef nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.hd, label %.loopexit413, label %.preheader.backedge

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
  %i.he = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hf = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4
  %i.hg = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.he, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hf, ptr noundef nonnull @67, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.hg, label %.loopexit413, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ah, %bb.ag
  br label %.preheader
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !213 {
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
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs4NRVxsYgnAr_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !214 {
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
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !215 {
end_hunk_0
