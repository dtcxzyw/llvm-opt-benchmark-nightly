Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.15?download=true
inline.NumInlined: 250
inline.NumDeleted: 136
begin_hunk_0_@_ZN3ftl6string14serialize_file17hba01a40c060305a5E:bb.a

.lr.ph.i34.us.i:                                  ; preds = %bb.m, %bb.r
  %i.bm = phi i64 [ %i.cn, %bb.r ], [ %i.ae, %bb.m ]
  %i.bn = phi i64 [ %i.cm, %bb.r ], [ %.sroa.18.0.us.i, %bb.m ] ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !98, !noalias !95, !noundef !6
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, %.sroa.746.0.copyload.i
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i34.us.i
  br i1 %exitcond.not.i.us.i225.not, label %.lr.ph227, label %.preheader.us.i.preheader

.preheader.i:                                     ; preds = %bb.o
  %i.bv = add nuw i64 %.sroa.02.0.i.us.i226, 1    ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bv, %umax49.i.us.i
  br i1 %exitcond.not.i.us.i, label %.preheader.us.i.preheader, label %.lr.ph227

.preheader.us.i.preheader:                        ; preds = %.preheader.i, %.preheader.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader.us.i.us.preheader, label %.preheader.us.i.preheader.split

.preheader.us.i.us.preheader:                     ; preds = %.preheader.us.i.preheader
  br i1 %.not67.us.i.us228, label %.loopexit.i.us.i, label %.lr.ph230

.preheader.us.i.us:                               ; preds = %bb.n
  %.not67.us.i.us = icmp eq i64 %i.bw, 0
  br i1 %.not67.us.i.us, label %.loopexit.i.us.i, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i.us.i.us229 = phi i64 [ %i.bw, %.preheader.us.i.us ], [ %.sroa.443.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.bw = add i64 %.sroa.2.0.i.us.i.us229, -1     ; 4 uses
  %i.bx = add i64 %i.bw, %i.bn                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, %.sroa.1352.0.copyload.i
  br i1 %i.by, label %bb.n, label %.split.us.invoke.i

bb.n:                                             ; preds = %.lr.ph230
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !99, !noalias !95, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.bx
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !98, !noalias !95, !noundef !6
  %.not.i.us.i.us = icmp eq i8 %i.ca, %i.cc
  br i1 %.not.i.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.cd = add i64 %i.bn, %.sroa.645.0.copyload.i
  br label %bb.r

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not67.us.i, label %.loopexit.i.us.i, label %.split.us.invoke.i

.lr.ph227:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i.us.i226 = phi i64 [ %i.bv, %.preheader.i ], [ %.sroa.443.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.ce = add i64 %.sroa.02.0.i.us.i226, %i.bn    ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.1352.0.copyload.i
  br i1 %i.cf, label %bb.o, label %.split132.us.i

bb.o:                                             ; preds = %.lr.ph227
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i.us.i226
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !99, !noalias !95, !noundef !6
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ce
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !98, !noalias !95, !noundef !6
  %.not21.i.us.i = icmp eq i8 %i.ch, %i.cj
  br i1 %.not21.i.us.i, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass259.i.reass.reass = add i64 %i.bn, %invariant.op302
  %i.ck = add i64 %.reass259.i.reass.reass, %.sroa.02.0.i.us.i226
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i34.us.i
  %i.cl = add i64 %i.bn, %.sroa.15.0.copyload.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.split.us, %bb.p
  %i.cm = phi i64 [ %i.ck, %bb.p ], [ %i.cl, %bb.q ], [ %i.cd, %.split.us ] ; 2 uses
  %i.cn = add i64 %i.cm, %i.aa                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %.sroa.1352.0.copyload.i
  br i1 %i.co, label %.lr.ph.i34.us.i, label %.critedge23.i

.loopexit.i.us.i:                                 ; preds = %.preheader68.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader68.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.754.3.us.i = phi i64 [ %i.bn, %.preheader.us.i.preheader.split ], [ %i.bn, %.preheader.us.i.us ], [ %i.ai, %.preheader68.us.i ], [ %i.bn, %.preheader.us.i.us.preheader ], [ %i.ai, %.preheader68.us.i.preheader ] ; 2 uses
  %.sroa.3014.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader68.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader68.us.i.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.06.0.us.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.754.3.us.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.cp, ptr noundef nonnull readonly %i.cq)
          to label %bb.s unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

bb.s:                                             ; preds = %.loopexit.i.us.i
  %.sroa.1155.3.us.i = add i64 %.sroa.754.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @9, i64 7))
          to label %bb.c unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i"
  %i.cr = and i64 %.sroa.645.0.copyload.i, 65536
  %.not.i14 = icmp eq i64 %i.cr, 0
  br i1 %.not.i14, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.i", label %.critedge23.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload.i) ]
  %i.cs = trunc i64 %.sroa.645.0.copyload.i to i1 ; 2 uses
  %i.ct = icmp eq i64 %.sroa.443.0.copyload.i, 0
  br i1 %i.ct, label %bb.v, label %bb.t

bb.t:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.i"
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.u, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.t
  %i.cu = icmp eq i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %i.cu, label %bb.v, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.443.0.copyload.i
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !100, !noalias !101, !noundef !6
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.peel.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.443.0.copyload.i ; 4 uses
  %i.cz = icmp samesign eq i64 %.sroa.443.0.copyload.i, %.sroa.1352.0.copyload.i
  br i1 %i.cz, label %.loopexit196.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load i8, ptr %i.cy, align 1, !noalias !102, !noundef !6 ; 5 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i.peel": ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dd = and i8 %i.da, 31
  %i.de = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.df = add nuw nsw i64 %.sroa.443.0.copyload.i, 1
  %i.dg = icmp samesign ne i64 %i.df, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.dc, align 1, !noalias !102, !noundef !6
  %i.di = shl nuw nsw i32 %i.de, 6
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i32               ; 2 uses
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = icmp samesign ugt i8 %i.da, -33
  br i1 %i.dm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i.peel", label %bb.y

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i.peel"
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.do = add nuw nsw i64 %.sroa.443.0.copyload.i, 2
  %i.dp = icmp samesign ne i64 %i.do, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.dp)
  %i.dq = load i8, ptr %i.dn, align 1, !noalias !102, !noundef !6
  %i.dr = shl nuw nsw i32 %i.dk, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt            ; 2 uses
  %i.dv = shl nuw nsw i32 %i.de, 12
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = icmp samesign ugt i8 %i.da, -17
  br i1 %i.dx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i.peel", label %bb.y

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i.peel"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  %i.dz = add nuw nsw i64 %.sroa.443.0.copyload.i, 3
  %i.ea = icmp samesign ne i64 %i.dz, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dy, align 1, !noalias !102, !noundef !6
  %i.ec = shl nuw nsw i32 %i.de, 18
  %i.ed = and i32 %i.ec, 1835008
  %i.ee = shl nuw nsw i32 %i.du, 6
  %i.ef = and i8 %i.eb, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = or disjoint i32 %i.eh, %i.ed
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ej = zext nneg i8 %i.da to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.dw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i.peel" ], [ %i.ei, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i.peel" ], [ %i.dl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i.peel" ], [ %i.ej, %bb.x ] ; 4 uses
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.ek)
  br i1 %i.cs, label %.loopexit.i.i.peel, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.el, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.em, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.en, i64 3, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.aa ], [ %..i.i.peel.i.peel, %bb.ab ], [ 1, %bb.z ]
  %i.eo = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.443.0.copyload.i ; 12 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i.peel = icmp ult i64 %i.eo, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.ae, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.ad
  %i.eq = icmp eq i64 %i.eo, %.sroa.1352.0.copyload.i
  br i1 %i.eq, label %bb.af, label %.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.eo
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !100, !noalias !101, !noundef !6
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae, %.split.i.i.i.i.peel, %bb.ac
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.eo ; 4 uses
  %i.eu = icmp samesign eq i64 %i.eo, %.sroa.1352.0.copyload.i
  br i1 %i.eu, label %.loopexit.i.i.peel, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = load i8, ptr %4, align 1, !noalias !102, !noundef !6 ; 5 uses
  %i.ew = icmp sgt i8 %i.ev, -1
  br i1 %i.ew, label %30, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i.peel": ; preds = %bb.ag
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %6 = and i8 %i.ev, 31
  %7 = zext nneg i8 %6 to i32                     ; 3 uses
  %i.ex = add nuw nsw i64 %i.eo, 1
  %i.ey = icmp samesign ne i64 %i.ex, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.ey)
  %8 = load i8, ptr %5, align 1, !noalias !102, !noundef !6
  %9 = shl nuw nsw i32 %7, 6
  %10 = and i8 %8, 63
  %11 = zext nneg i8 %10 to i32                   ; 2 uses
  %12 = or disjoint i32 %9, %11
  %i.ez = icmp samesign ugt i8 %i.ev, -33
  br i1 %i.ez, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i.peel", label %.loopexit.i.loopexit.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i.peel"
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fa = add nuw nsw i64 %i.eo, 2
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.fb)
  %14 = load i8, ptr %13, align 1, !noalias !102, !noundef !6
  %15 = shl nuw nsw i32 %11, 6
  %16 = and i8 %14, 63
  %17 = zext nneg i8 %16 to i32
  %18 = or disjoint i32 %15, %17                  ; 2 uses
  %19 = shl nuw nsw i32 %7, 12
  %20 = or disjoint i32 %18, %19
  %i.fc = icmp samesign ugt i8 %i.ev, -17
  br i1 %i.fc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i.peel", label %.loopexit.i.loopexit.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i.peel"
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.fd = add nuw nsw i64 %i.eo, 3
  %i.fe = icmp samesign ne i64 %i.fd, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.fe)
  %22 = load i8, ptr %21, align 1, !noalias !102, !noundef !6
  %23 = shl nuw nsw i32 %7, 18
  %24 = and i32 %23, 1835008
  %25 = shl nuw nsw i32 %18, 6
  %26 = and i8 %22, 63
  %27 = zext nneg i8 %26 to i32
  %28 = or disjoint i32 %25, %27
  %29 = or disjoint i32 %28, %24
  br label %.loopexit.i.loopexit.loopexit.i.peel

30:                                               ; preds = %bb.ag
  %31 = zext nneg i8 %i.ev to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %30, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %20, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i.peel" ], [ %29, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i.peel" ], [ %12, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i.peel" ], [ %31, %30 ]
  %32 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %32)
  br label %.loopexit.i.i.peel

.loopexit196.i.peel:                              ; preds = %bb.v
  br i1 %i.cs, label %.loopexit.i.i.peel, label %.critedge23.i

.loopexit.i.i.peel:                               ; preds = %.loopexit196.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.af, %bb.y
  %.sroa.46.1192.i.peel = phi i64 [ %.sroa.443.0.copyload.i, %.loopexit196.i.peel ], [ %i.eo, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.sroa.443.0.copyload.i, %bb.y ], [ %.sroa.1352.0.copyload.i, %bb.af ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.1192.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.ff)
          to label %bb.ah unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

bb.ah:                                            ; preds = %.loopexit.i.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @9, i64 7))
          to label %.preheader.i.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

.preheader.i.i:                                   ; preds = %bb.ah, %bb.at
  %.sroa.46.0.i = phi i64 [ %.sroa.46.1192.i, %bb.at ], [ %.sroa.46.1192.i.peel, %bb.ah ] ; 13 uses
  %i.fg = icmp eq i64 %.sroa.46.0.i, 0
  br i1 %i.fg, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.46.0.i, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.aj, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.ai
  %i.fh = icmp eq i64 %.sroa.46.0.i, %.sroa.1352.0.copyload.i
  br i1 %i.fh, label %bb.ak, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.46.0.i
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !100, !noalias !101, !noundef !6
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.ak, label %.loopexit.i

bb.ak:                                            ; preds = %bb.aj, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %.sroa.46.0.i ; 4 uses
  %i.fm = icmp samesign eq i64 %.sroa.46.0.i, %.sroa.1352.0.copyload.i
  br i1 %i.fm, label %.critedge23.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !102, !noundef !6 ; 4 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %.thread149, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i": ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = and i8 %i.fn, 31
  %i.fr = zext nneg i8 %i.fq to i32               ; 3 uses
  %i.fs = add nuw nsw i64 %.sroa.46.0.i, 1
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fp, align 1, !noalias !102, !noundef !6
  %i.fv = shl nuw nsw i32 %i.fr, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32               ; 2 uses
  %i.fy = or disjoint i32 %i.fv, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i", label %bb.am

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i"
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gb = add nuw nsw i64 %.sroa.46.0.i, 2
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !102, !noundef !6
  %i.ge = shl nuw nsw i32 %i.fx, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg            ; 2 uses
  %i.gi = shl nuw nsw i32 %i.fr, 12
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.gk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i", label %bb.am

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i"
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gm = add nuw nsw i64 %.sroa.46.0.i, 3
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i8, ptr %i.gl, align 1, !noalias !102, !noundef !6
  %i.gp = shl nuw nsw i32 %i.fr, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gh, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.am

bb.am:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.peel.i" ], [ %i.gv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.peel.i" ], [ %i.fy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.peel.i" ] ; 4 uses
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gx, label %.thread149, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gy, label %.thread149, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.gz, i64 3, i64 4
  br label %.thread149

.thread149:                                       ; preds = %bb.al, %bb.ao, %bb.an, %bb.am
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.an ], [ %..i.i.peel.i, %bb.ao ], [ 1, %bb.am ], [ 1, %bb.al ]
  %i.ha = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.46.0.i ; 15 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.thread149
  %.not.i.i.i.i = icmp ult i64 %i.ha, %.sroa.1352.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.aq, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ap
  %i.hc = icmp eq i64 %i.ha, %.sroa.1352.0.copyload.i
  br i1 %i.hc, label %bb.ar, label %.loopexit.i

bb.aq:                                            ; preds = %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ha
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !100, !noalias !101, !noundef !6
  %i.hf = icmp sgt i8 %i.he, -65
  br i1 %i.hf, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq, %.split.i.i.i.i, %.thread149
  %i.hg = icmp samesign eq i64 %i.ha, %.sroa.1352.0.copyload.i
  br i1 %i.hg, label %.loopexit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload.i, i64 %i.ha
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !102, !noundef !6 ; 3 uses
  %i.hj = icmp sgt i8 %i.hi, -1
  br i1 %i.hj, label %.loopexit.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i": ; preds = %bb.as
  %i.hk = add nuw nsw i64 %i.ha, 1
  %i.hl = icmp samesign ne i64 %i.hk, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i8 %i.hi, -33
  br i1 %i.hm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i", label %.loopexit.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i"
  %i.hn = add nuw nsw i64 %i.ha, 2
  %i.ho = icmp samesign ne i64 %i.hn, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp samesign ugt i8 %i.hi, -17
  br i1 %i.hp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i", label %.loopexit.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i"
  %i.hq = add nuw nsw i64 %i.ha, 3
  %i.hr = icmp samesign ne i64 %i.hq, %.sroa.1352.0.copyload.i
  call void @llvm.assume(i1 %i.hr)
  br label %.loopexit.i.i

.loopexit.i:                                      ; preds = %bb.aq, %.split.i.i.i.i, %bb.aj, %.split.i.i.i.peel.i, %bb.ae, %.split.i.i.i.i.peel, %bb.u, %.split.i.i.i.peel.i.peel
  %.sroa.46.1.lcssa.i = phi i64 [ %.sroa.443.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.443.0.copyload.i, %bb.u ], [ %i.eo, %.split.i.i.i.i.peel ], [ %i.eo, %bb.ae ], [ %i.ha, %bb.aq ], [ %i.ha, %.split.i.i.i.i ], [ %.sroa.46.0.i, %.split.i.i.i.peel.i ], [ %.sroa.46.0.i, %bb.aj ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1251.0.copyload.i, i64 noundef %.sroa.1352.0.copyload.i, i64 noundef %.sroa.46.1.lcssa.i, i64 noundef %.sroa.1352.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #15
          to label %.noexc.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !101

.noexc.i:                                         ; preds = %.loopexit.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.hs = add i64 %i.ai, %.sroa.0.0.i.i43.us.i
  %umax.i47.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload.i, i64 %i.hs)
  br label %.split.us.invoke.i

.split.us.invoke.i:                               ; preds = %.preheader.us.i.preheader.split, %bb.i, %.lr.ph223, %.lr.ph230, %.split132.us.i, %.split.us.i
  %i.ht = phi i64 [ %umax.i47.i, %.split.us.i ], [ %umax.i.i, %.split132.us.i ], [ %i.bx, %.lr.ph230 ], [ %i.ba, %.lr.ph223 ], [ %i.bc, %bb.i ], [ %i.ac, %.preheader.us.i.preheader.split ]
  %i.hu = phi i64 [ %.sroa.1352.0.copyload.i, %.split.us.i ], [ %.sroa.1352.0.copyload.i, %.split132.us.i ], [ %.sroa.1352.0.copyload.i, %.lr.ph230 ], [ %.sroa.15.0.copyload.i, %.lr.ph223 ], [ %.sroa.1352.0.copyload.i, %bb.i ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.hv = phi ptr [ @47, %.split.us.i ], [ @47, %.split132.us.i ], [ @46, %.lr.ph230 ], [ @45, %.lr.ph223 ], [ @46, %bb.i ], [ @45, %.preheader.us.i.preheader.split ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ht, i64 noundef %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hv) #15
          to label %.split.us.cont.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.split.us.cont.i:                                 ; preds = %.split.us.invoke.i
  unreachable

.split132.us.i:                                   ; preds = %.lr.ph227
  %i.hw = add i64 %i.bn, %.sroa.443.0.copyload.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload.i, i64 %i.hw)
  br label %.split.us.invoke.i

.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %.loopexit.i.us.i, %.loopexit.i.i, %bb.at, %bb.ah, %.loopexit.i.i.peel, %.critedge23.i, %.split.us.invoke.i, %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hae5f774b570a836fE.exit.i"
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %.thread30 unwind label %bb.au, !noalias !95

.loopexit.i.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i", %bb.as, %bb.ar
  %.sroa.46.1192.i = phi i64 [ %.sroa.1352.0.copyload.i, %bb.ar ], [ %i.ha, %bb.as ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit16.i.i.i.i" ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit14.i.i.i.i" ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfa7c2ed26adfcceE.exit12.i.i.i.i" ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.0.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.46.1192.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.hx, ptr noundef nonnull readonly %i.hy)
          to label %bb.at unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

.critedge23.i:                                    ; preds = %bb.ak, %bb.m, %bb.d, %.sink.split.i.us.i, %bb.r, %.loopexit196.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i"
  %.sroa.06.0111.i = phi i64 [ 0, %.loopexit196.i.peel ], [ %.sroa.06.0.us.i, %.sink.split.i.us.i ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i" ], [ %.sroa.06.0.us.i, %bb.r ], [ %.sroa.06.0.us.i, %bb.m ], [ %.sroa.06.0.us.i, %bb.d ], [ %.sroa.1352.0.copyload.i, %bb.ak ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.06.0111.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly %i.hz, ptr noundef nonnull readonly %i.ia)
          to label %bb.av unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95

bb.at:                                            ; preds = %.loopexit.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h3be60f348eb6ee04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @9, i64 7))
          to label %.preheader.i.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !95, !llvm.loop !88

end_hunk_0
