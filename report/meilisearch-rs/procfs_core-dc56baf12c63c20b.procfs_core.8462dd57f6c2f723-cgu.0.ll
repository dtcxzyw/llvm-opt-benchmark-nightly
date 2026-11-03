Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core6mounts14unmangle_octal17h5e9b16983b09f5dfE:bb.a
  %i.ck = and i32 %i.cj, 1835008
  %i.cl = shl nuw nsw i32 %i.cb, 6
  %i.cm = and i8 %i.ci, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.ck
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = zext nneg i8 %i.bh to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.cd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel" ], [ %i.cp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel" ], [ %i.cq, %bb.n ] ; 4 uses
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.cr), !noalias !1157
  br i1 %i.az, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.cs, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.ct, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.cu, i64 3, i64 4
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.cv = icmp eq i64 %.sroa.30134.0, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35135.0.copyload), "nonnull"(ptr %.sroa.39.0.copyload) ]
  %i.cw = add i64 %.sroa.18.0, %i.aw              ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %.sroa.37.0.copyload ; 2 uses
  br i1 %i.cv, label %bb.aj, label %bb.y

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.q ], [ %..i.i.peel, %bb.r ], [ 1, %bb.p ]
  %i.cy = add i64 %.sroa.01.0.i.i.peel, %.sroa.4127.0 ; 23 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i = icmp ult i64 %i.cy, %.sroa.37.0.copyload
  br i1 %.not.i.i.i, label %bb.v, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.u
  %i.da = icmp eq i64 %i.cy, %.sroa.37.0.copyload
  br i1 %i.da, label %bb.w, label %.loopexit474

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !1158, !noalias !1159, !noundef !4
  %i.dd = icmp sgt i8 %i.dc, -65
  br i1 %i.dd, label %bb.w, label %.loopexit474

bb.w:                                             ; preds = %bb.v, %.split.i.i.i, %bb.t
  %i.de = icmp samesign eq i64 %i.cy, %.sroa.37.0.copyload
  br i1 %i.de, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.cy
  %i.dg = load i8, ptr %i.df, align 1, !noalias !1160, !noundef !4 ; 3 uses
  %i.dh = icmp sgt i8 %i.dg, -1
  br i1 %i.dh, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i": ; preds = %bb.x
  %i.di = add nuw nsw i64 %i.cy, 1
  %i.dj = icmp samesign ne i64 %i.di, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dj), !noalias !1157
  %i.dk = icmp samesign ugt i8 %i.dg, -33
  br i1 %i.dk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i"
  %i.dl = add nuw nsw i64 %i.cy, 2
  %i.dm = icmp samesign ne i64 %i.dl, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dm), !noalias !1157
  %i.dn = icmp samesign ugt i8 %i.dg, -17
  br i1 %i.dn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i"
  %i.do = add nuw nsw i64 %i.cy, 3
  %i.dp = icmp samesign ne i64 %i.do, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dp), !noalias !1157
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

.loopexit474:                                     ; preds = %bb.k, %.split.i.i.i.peel, %bb.v, %.split.i.i.i
  %.sroa.4127.1.lcssa = phi i64 [ %i.cy, %bb.v ], [ %i.cy, %.split.i.i.i ], [ %.sroa.4127.0, %.split.i.i.i.peel ], [ %.sroa.4127.0, %bb.k ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.35135.0.copyload, i64 noundef %.sroa.37.0.copyload, i64 noundef %.sroa.4127.1.lcssa, i64 noundef %.sroa.37.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #37
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %.loopexit474
  unreachable

.loopexit475:                                     ; preds = %bb.l
  br i1 %i.az, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %.loopexit

bb.y:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  br i1 %i.cx, label %.lr.ph.i90, label %.loopexit

.lr.ph.i90:                                       ; preds = %bb.y
  %.sroa.8130.sroa.0.0.insert.ext138 = zext i8 %.sroa.8130.sroa.0.0 to i64
  %.sroa.8130.sroa.0.0.insert.insert140 = or disjoint i64 %.sroa.8130.sroa.9.0.insert.insert144, %.sroa.8130.sroa.0.0.insert.ext138 ; 2 uses
  %i.dq = sub i64 %.sroa.40.0.copyload, %.sroa.8130.sroa.0.0.insert.insert140
  %invariant.op = sub i64 1, %.sroa.4127.0
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %.lr.ph.i90
  %i.dr = phi i64 [ %.sroa.30134.0, %.lr.ph.i90 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.ds = phi i64 [ %i.cw, %.lr.ph.i90 ], [ %i.ec, %.sink.split.i ]
  %i.dt = phi i64 [ %.sroa.18.0, %.lr.ph.i90 ], [ %.ph72.i, %.sink.split.i ] ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !1161, !noundef !4
  %i.dw = and i8 %i.dv, 63
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %.sroa.16.0.copyload
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eb = add i64 %i.dt, %.sroa.40.0.copyload
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %.sroa.0.0.i.i92 = call i64 @llvm.umax.i64(i64 %i.dr, i64 %.sroa.4127.0) ; 4 uses
  %umax50.i93 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i92, i64 %.sroa.40.0.copyload)
  %exitcond.not.i95774.not = icmp ult i64 %.sroa.0.0.i.i92, %.sroa.40.0.copyload
  br i1 %exitcond.not.i95774.not, label %.lr.ph, label %.preheader173.preheader

.sink.split.i:                                    ; preds = %bb.ai, %bb.af, %bb.aa
  %.sink.i = phi i64 [ %i.dq, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.aa ]
  %.ph72.i = phi i64 [ %i.es, %bb.af ], [ %i.fb, %bb.ai ], [ %i.eb, %bb.aa ] ; 2 uses
  %i.ec = add i64 %.ph72.i, %i.aw                 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %.sroa.37.0.copyload
  br i1 %i.ed, label %bb.z, label %.loopexit

bb.ac:                                            ; preds = %bb.ag
  %i.ee = add nuw i64 %.sroa.02.0.i94775, 1       ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %i.ee, %umax50.i93
  br i1 %exitcond.not.i95, label %.preheader173.preheader, label %.lr.ph

.preheader173.preheader:                          ; preds = %bb.ac, %bb.ab
  %i.ef = icmp ult i64 %i.dr, %.sroa.4127.0
  br i1 %i.ef, label %.lr.ph777, label %.preheader173.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %.sroa.02.0.i94775 = phi i64 [ %i.ee, %bb.ac ], [ %.sroa.0.0.i.i92, %bb.ab ] ; 4 uses
  %i.eg = add i64 %.sroa.02.0.i94775, %i.dt       ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %.sroa.37.0.copyload
  br i1 %i.eh, label %bb.ag, label %bb.ah

.preheader173:                                    ; preds = %bb.ae
  %i.ei = icmp ult i64 %i.dr, %i.ek
  br i1 %i.ei, label %.lr.ph777, label %.preheader173.preheader._crit_edge

.preheader173.preheader._crit_edge:               ; preds = %.preheader173.preheader, %.preheader173
  %i.ej = add i64 %i.dt, %.sroa.40.0.copyload     ; 2 uses
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

.lr.ph777:                                        ; preds = %.preheader173.preheader, %.preheader173
  %.sroa.57.0.i98776 = phi i64 [ %i.ek, %.preheader173 ], [ %.sroa.4127.0, %.preheader173.preheader ]
  %i.ek = add i64 %.sroa.57.0.i98776, -1          ; 6 uses
  %i.el = icmp ult i64 %i.ek, %.sroa.40.0.copyload
  br i1 %i.el, label %bb.ad, label %.invoke800

bb.ad:                                            ; preds = %.lr.ph777
  %i.em = add i64 %i.ek, %i.dt                    ; 3 uses
  %i.en = icmp ult i64 %i.em, %.sroa.37.0.copyload
  br i1 %i.en, label %bb.ae, label %.invoke800

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %i.ek
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !1162, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.em
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !1161, !noundef !4
  %.not.i99 = icmp eq i8 %i.ep, %i.er
  br i1 %.not.i99, label %.preheader173, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = add i64 %i.dt, %.sroa.8130.sroa.0.0.insert.insert140
  br label %.sink.split.i

bb.ag:                                            ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %.sroa.02.0.i94775
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !1162, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.eg
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !1161, !noundef !4
  %.not22.i97 = icmp eq i8 %i.eu, %i.ew
  br i1 %.not22.i97, label %bb.ac, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  %i.ex = add i64 %i.dt, %.sroa.0.0.i.i92
  %umax.i96 = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload, i64 %i.ex)
  br label %.invoke800

.invoke800:                                       ; preds = %bb.ad, %.lr.ph777, %bb.an, %.lr.ph784, %bb.ar, %bb.ah
  %i.ey = phi i64 [ %umax.i96, %bb.ah ], [ %umax.i, %bb.ar ], [ %3, %.lr.ph784 ], [ %4, %bb.an ], [ %i.em, %bb.ad ], [ %i.ek, %.lr.ph777 ]
  %i.ez = phi i64 [ %.sroa.37.0.copyload, %bb.ah ], [ %.sroa.37.0.copyload, %bb.ar ], [ %.sroa.40.0.copyload, %.lr.ph784 ], [ %.sroa.37.0.copyload, %bb.an ], [ %.sroa.37.0.copyload, %bb.ad ], [ %.sroa.40.0.copyload, %.lr.ph777 ]
  %i.fa = phi ptr [ @269, %bb.ah ], [ @269, %bb.ar ], [ @267, %.lr.ph784 ], [ @268, %bb.an ], [ @268, %bb.ad ], [ @267, %.lr.ph777 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ey, i64 noundef %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa) #37
          to label %.cont801 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont801:                                         ; preds = %.invoke800
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %.reass.reass = add i64 %i.dt, %invariant.op
  %i.fb = add i64 %.reass.reass, %.sroa.02.0.i94775
  br label %.sink.split.i

bb.aj:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br i1 %i.cx, label %.lr.ph.i82, label %.loopexit

.lr.ph.i82:                                       ; preds = %bb.aj
  %.sroa.8130.sroa.0.0.insert.ext = zext i8 %.sroa.8130.sroa.0.0 to i64
  %.sroa.8130.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8130.sroa.9.0.insert.insert144, %.sroa.8130.sroa.0.0.insert.ext
  %umax50.i = call i64 @llvm.umax.i64(i64 %.sroa.4127.0, i64 %.sroa.40.0.copyload)
  %i.fc = add i64 %.sroa.4127.0, -1
  %.first_iter = icmp ult i64 %i.fc, %.sroa.40.0.copyload
  %exitcond.not.i779.not = icmp ult i64 %.sroa.4127.0, %.sroa.40.0.copyload
  %invariant.op1006 = sub i64 1, %.sroa.4127.0
  %.not172782 = icmp eq i64 %.sroa.4127.0, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i82
  %i.fd = phi i64 [ %i.cw, %.lr.ph.i82 ], [ %i.fo, %bb.am ]
  %i.fe = phi i64 [ %.sroa.18.0, %.lr.ph.i82 ], [ %i.fn, %bb.am ] ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !1163, !noundef !4
  %i.fh = and i8 %i.fg, 63
  %i.fi = zext nneg i8 %i.fh to i64
  %i.fj = shl nuw i64 1, %i.fi
  %i.fk = and i64 %i.fj, %.sroa.16.0.copyload
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.al, label %.preheader335.preheader

.preheader335.preheader:                          ; preds = %bb.ak
  br i1 %exitcond.not.i779.not, label %.lr.ph781, label %.preheader.preheader.a

bb.al:                                            ; preds = %bb.ak
  %i.fm = add i64 %i.fe, %.sroa.40.0.copyload
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %bb.ap, %bb.al
  %i.fn = phi i64 [ %i.ga, %bb.as ], [ %i.fu, %bb.ap ], [ %i.fm, %bb.al ] ; 2 uses
  %i.fo = add i64 %i.fn, %i.aw                    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %.sroa.37.0.copyload
  br i1 %i.fp, label %bb.ak, label %.loopexit

.preheader335:                                    ; preds = %bb.aq
  %i.fq = add nuw i64 %.sroa.02.0.i780, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fq, %umax50.i
  br i1 %exitcond.not.i, label %.preheader.preheader.a, label %.lr.ph781

.preheader.preheader.a:                           ; preds = %.preheader335, %.preheader335.preheader
  br i1 %.not172782, label %.preheader.preheader._crit_edge, label %.lr.ph784

.lr.ph781:                                        ; preds = %.preheader335.preheader, %.preheader335
  %.sroa.02.0.i780 = phi i64 [ %i.fq, %.preheader335 ], [ %.sroa.4127.0, %.preheader335.preheader ] ; 4 uses
  %i.fr = add i64 %.sroa.02.0.i780, %i.fe         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %.sroa.37.0.copyload
  br i1 %i.fs, label %bb.aq, label %bb.ar

.preheader:                                       ; preds = %bb.ao
  %.not172 = icmp eq i64 %3, 0
  br i1 %.not172, label %.preheader.preheader._crit_edge, label %.lr.ph784

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader.a, %.preheader
  %i.ft = add i64 %i.fe, %.sroa.40.0.copyload     ; 2 uses
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

.lr.ph784:                                        ; preds = %.preheader.preheader.a, %.preheader
  %.sroa.57.0.i783 = phi i64 [ %3, %.preheader ], [ %.sroa.4127.0, %.preheader.preheader.a ]
  %3 = add i64 %.sroa.57.0.i783, -1               ; 5 uses
  br i1 %.first_iter, label %bb.an, label %.invoke800

bb.an:                                            ; preds = %.lr.ph784
  %4 = add i64 %3, %i.fe                          ; 3 uses
  %5 = icmp ult i64 %4, %.sroa.37.0.copyload
  br i1 %5, label %bb.ao, label %.invoke800

bb.ao:                                            ; preds = %bb.an
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %3
  %7 = load i8, ptr %6, align 1, !alias.scope !1164, !noundef !4
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %4
  %9 = load i8, ptr %8, align 1, !alias.scope !1163, !noundef !4
  %.not.i83 = icmp eq i8 %7, %9
  br i1 %.not.i83, label %.preheader, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = add i64 %.sroa.8130.sroa.0.0.insert.insert, %i.fe
  br label %bb.am

bb.aq:                                            ; preds = %.lr.ph781
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %.sroa.02.0.i780
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !1164, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.fr
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !1163, !noundef !4
  %.not22.i = icmp eq i8 %i.fw, %i.fy
  br i1 %.not22.i, label %.preheader335, label %bb.as

bb.ar:                                            ; preds = %.lr.ph781
  %i.fz = add i64 %i.fe, %.sroa.4127.0
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload, i64 %i.fz)
  br label %.invoke800

bb.as:                                            ; preds = %bb.aq
  %.reass639.reass = add i64 %i.fe, %invariant.op1006
  %i.ga = add i64 %.reass639.reass, %.sroa.02.0.i780
  br label %bb.am

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ay, %bb.av, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i", %.invoke800, %.loopexit474
  %lpad.loopexit.split-lp814 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !noalias !1155 ; 2 uses
  %i.gb = icmp eq i64 %.val.i, 0
  br i1 %i.gb, label %.body, label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val26.i = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !1155, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !1157
  br label %.body

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i", %bb.x, %bb.w, %bb.o, %.loopexit475, %.preheader.preheader._crit_edge, %.preheader173.preheader._crit_edge
  %.sroa.11157.1 = phi i64 [ %.sroa.37.0.copyload, %.loopexit475 ], [ %i.ft, %.preheader.preheader._crit_edge ], [ %i.ej, %.preheader173.preheader._crit_edge ], [ %.sroa.37.0.copyload, %bb.w ], [ %.sroa.4127.0, %bb.o ], [ %i.cy, %bb.x ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %.sroa.7156.1 = phi i64 [ %.sroa.37.0.copyload, %.loopexit475 ], [ %i.fe, %.preheader.preheader._crit_edge ], [ %i.dt, %.preheader173.preheader._crit_edge ], [ %.sroa.37.0.copyload, %bb.w ], [ %.sroa.4127.0, %bb.o ], [ %i.cy, %bb.x ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %.sroa.8130.sroa.0.3 = phi i8 [ 0, %.loopexit475 ], [ %.sroa.8130.sroa.0.0, %.preheader.preheader._crit_edge ], [ %.sroa.8130.sroa.0.0, %.preheader173.preheader._crit_edge ], [ 0, %bb.w ], [ 0, %bb.o ], [ 0, %bb.x ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %.sroa.30134.1 = phi i64 [ %.sroa.30134.0, %.loopexit475 ], [ -1, %.preheader.preheader._crit_edge ], [ 0, %.preheader173.preheader._crit_edge ], [ %.sroa.30134.0, %bb.w ], [ %.sroa.30134.0, %bb.o ], [ %.sroa.30134.0, %bb.x ], [ %.sroa.30134.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ %.sroa.30134.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ %.sroa.30134.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %.sroa.18.1 = phi i64 [ %.sroa.18.0, %.loopexit475 ], [ %i.ft, %.preheader.preheader._crit_edge ], [ %i.ej, %.preheader173.preheader._crit_edge ], [ %.sroa.18.0, %bb.w ], [ %.sroa.18.0, %bb.o ], [ %.sroa.18.0, %bb.x ], [ %.sroa.18.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ %.sroa.18.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ %.sroa.18.0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %.sroa.4127.3 = phi i64 [ %.sroa.37.0.copyload, %.loopexit475 ], [ %.sroa.4127.0, %.preheader.preheader._crit_edge ], [ %.sroa.4127.0, %.preheader173.preheader._crit_edge ], [ %.sroa.37.0.copyload, %bb.w ], [ %.sroa.4127.0, %bb.o ], [ %i.cy, %bb.x ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i" ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.8.0328, i64 %.sroa.08.0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %gepdiff66.i = sub nuw nsw i64 %.sroa.7156.1, %.sroa.08.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.gd = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1167, !noalias !1155, !noundef !4
  %i.ge = sub i64 %i.gd, %i.ay
  %i.gf = icmp ugt i64 %gepdiff66.i, %i.ge
  br i1 %i.gf, label %bb.au, label %bb.ax, !prof !10

bb.au:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h93637df415de0a1bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ay, i64 noundef %gepdiff66.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1157

.noexc.i:                                         ; preds = %bb.au
  %.pre.i.i.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1168, !noalias !1155
  %.pre70.i = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !alias.scope !1168, !noalias !1155
  br label %bb.ax

.loopexit:                                        ; preds = %bb.y, %.loopexit475, %.preheader.i, %bb.aj, %.sink.split.i, %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.8.0328, i64 %.sroa.08.0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %gepdiff.i = sub nuw nsw i64 %.sroa.11.0327, %.sroa.08.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.gh = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1171, !noalias !1155, !noundef !4
  %i.gi = sub i64 %i.gh, %i.ay
  %i.gj = icmp ugt i64 %gepdiff.i, %i.gi
  br i1 %i.gj, label %bb.av, label %bb.aw, !prof !10

bb.av:                                            ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h93637df415de0a1bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ay, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1157

.noexc36.i:                                       ; preds = %bb.av
  %.pre.i.i35.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1172, !noalias !1155
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !alias.scope !1172, !noalias !1155
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc36.i, %.loopexit
  %i.gk = phi ptr [ %i.ax, %.loopexit ], [ %.pre.i, %.noexc36.i ]
  %i.gl = phi i64 [ %i.ay, %.loopexit ], [ %.pre.i.i35.i, %.noexc36.i ] ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr nonnull readonly align 1 %i.gg, i64 %gepdiff.i, i1 false), !noalias !1173
  %i.go = add i64 %i.gl, %gepdiff.i
  %.sroa.0121.0.copyload = load i64, ptr %i.b, align 8, !noalias !1174
  %.sroa.6122.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !1174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1155
  br label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit"

bb.ax:                                            ; preds = %.noexc.i, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"
  %i.gp = phi ptr [ %i.ax, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit" ], [ %.pre70.i, %.noexc.i ]
  %i.gq = phi i64 [ %i.ay, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit" ], [ %.pre.i.i.i, %.noexc.i ] ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull readonly align 1 %i.gc, i64 %gepdiff66.i, i1 false), !noalias !1175
  %i.gt = add i64 %i.gq, %gepdiff66.i             ; 4 uses
  store i64 %i.gt, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1168, !noalias !1155
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.gu = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1178, !noalias !1155, !noundef !4
  %i.gv = sub i64 %i.gu, %i.gt
  %i.gw = icmp ugt i64 %.sroa.8120.0.copyload, %i.gv
  br i1 %i.gw, label %bb.ay, label %bb.az, !prof !10

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h93637df415de0a1bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.gt, i64 noundef %.sroa.8120.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1157

.noexc39.i:                                       ; preds = %bb.ay
  %.pre.i.i38.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1179, !noalias !1155
  br label %bb.az

bb.az:                                            ; preds = %.noexc39.i, %bb.ax
  %i.gx = phi i64 [ %i.gt, %bb.ax ], [ %.pre.i.i38.i, %.noexc39.i ] ; 3 uses
  %i.gy = icmp sgt i64 %i.gx, -1
  call void @llvm.assume(i1 %i.gy)
  %i.gz = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !alias.scope !1179, !noalias !1155, !nonnull !4, !noundef !4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull readonly align 1 %.sroa.7.0.copyload, i64 %.sroa.8120.0.copyload, i1 false), !noalias !1180
  %i.hb = add i64 %i.gx, %.sroa.8120.0.copyload   ; 2 uses
  store i64 %i.hb, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1179, !noalias !1155
  br label %bb.i

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp814, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp814, %bb.at ], [ %i.h, %bb.c ]
  %i.hc = icmp eq i64 %.sroa.0.0331, 0
  br i1 %i.hc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.ba

bb.ba:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0328, i64 noundef %.sroa.0.0331, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit.thread": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76", %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit"
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.9.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ], [ %.sroa.11.0327, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit" ]
  %.sroa.8.0.lcssa = phi ptr [ %.sroa.6122.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ], [ %.sroa.8.0328, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit" ]
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0121.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ], [ %.sroa.0.0331, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.8.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.lcssa, ptr %.sroa.8.0..sroa_idx107, align 8
  %.sroa.11.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.lcssa, ptr %.sroa.11.0..sroa_idx113, align 8
  ret void

"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit": ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.aw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.9.0 = phi i64 [ %i.go, %bb.aw ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.11.0327, %middle.block ], [ %.sroa.11.0327, %vec.epilog.middle.block ], [ %.sroa.11.0327, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6122.0 = phi ptr [ %.sroa.6122.0.copyload, %bb.aw ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.r, %middle.block ], [ %i.r, %vec.epilog.middle.block ], [ %i.r, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0121.0 = phi i64 [ %.sroa.0121.0.copyload, %bb.aw ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.11.0327, %middle.block ], [ %.sroa.11.0327, %vec.epilog.middle.block ], [ %.sroa.11.0327, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.0.0331, 0
  br i1 %i.hd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76", label %bb.bb

bb.bb:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0328, i64 noundef %.sroa.0.0331, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76": ; preds = %bb.bb, %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit"
  %.not.i = icmp eq i64 %i.j, 4
  br i1 %.not.i, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit.thread", label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.ba, %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN11procfs_core6uptime6Uptime13idle_duration17h4fab176e62b98190E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = tail call double @llvm.trunc.f64(double %i.b) ; 2 uses
  %i.d = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.c) ; 3 uses
  %i.e = fsub double %i.b, %i.c
  %i.f = fmul double %i.e, 1.000000e+02
  %i.g = tail call double @llvm.round.f64(double %i.f)
  %i.h = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.g)
  %i.i = mul i32 %i.h, 10000000                   ; 4 uses
  %i.j = icmp ult i32 %i.i, 1000000000
  br i1 %i.j, label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = udiv i32 %i.i, 1000000000
  %i.l = urem i32 %i.i, 1000000000
  %i.m = zext nneg i32 %i.k to i64
  %i.n = add i64 %i.d, %i.m                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.d
  br i1 %i.o, label %bb.c, label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @272, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #37
  unreachable

_ZN4core4time8Duration3new17heaed37e477563ad0E.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0.i = phi i32 [ %i.i, %bb.a ], [ %i.l, %bb.b ]
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.a ], [ %i.n, %bb.b ]
  %i.p = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i32 } %i.p, i32 %.sroa.3.0.i, 1
  ret { i64, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN11procfs_core6uptime6Uptime15uptime_duration17h875c1f955c6cff9fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.b = tail call double @llvm.trunc.f64(double %i.a) ; 2 uses
  %i.c = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.b) ; 3 uses
  %i.d = fsub double %i.a, %i.b
  %i.e = fmul double %i.d, 1.000000e+02
  %i.f = tail call double @llvm.round.f64(double %i.e)
  %i.g = tail call i32 @llvm.fptoui.sat.i32.f64(double %i.f)
  %i.h = mul i32 %i.g, 10000000                   ; 4 uses
  %i.i = icmp ult i32 %i.h, 1000000000
  br i1 %i.i, label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i32 %i.h, 1000000000
  %i.k = urem i32 %i.h, 1000000000
  %i.l = zext nneg i32 %i.j to i64
  %i.m = add i64 %i.c, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.c
  br i1 %i.n, label %bb.c, label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @272, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #37
  unreachable

_ZN4core4time8Duration3new17heaed37e477563ad0E.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0.i = phi i32 [ %i.h, %bb.a ], [ %i.k, %bb.b ]
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.a ], [ %i.m, %bb.b ]
  %i.o = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0
  %i.p = insertvalue { i64, i32 } %i.o, i32 %.sroa.3.0.i, 1
  ret { i64, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN11procfs_core7CpuTime10softirq_ms17hf77f0387f4ee0628E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
end_hunk_0
