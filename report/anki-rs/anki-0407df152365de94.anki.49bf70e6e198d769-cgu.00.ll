Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki4tags8register46_$LT$impl$u20$anki..collection..Collection$GT$25adjusted_case_for_parents17h75e96d498c6dd9deE":bb.a
  %.ph71.i.us = phi i64 [ %i.bk, %bb.v ], [ %i.ba, %bb.s ], [ %i.bl, %bb.w ] ; 2 uses
  %i.bm = add i64 %.ph71.i.us, %i.ac              ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.13.0.copyload
  br i1 %i.bn, label %.lr.ph.i63.us, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit

bb.x:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !5350)
  call void @llvm.experimental.noalias.scope.decl(metadata !5351)
  br i1 %i.ah, label %.lr.ph.i55.us, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit

.lr.ph.i55.us:                                    ; preds = %bb.x, %bb.ae
  %i.bo = phi i64 [ %i.cp, %bb.ae ], [ %i.ag, %bb.x ]
  %i.bp = phi i64 [ %i.co, %bb.ae ], [ %.sroa.17.0.us, %bb.x ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !5350, !noundef !4
  %i.bs = and i8 %i.br, 63
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.bu, %.sroa.7117.0.copyload
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.ad, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i55.us
  br i1 %exitcond.not.i.us380.not, label %.lr.ph382, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.y
  %i.bx = add nuw i64 %.sroa.02.0.i.us381, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bx, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph382

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not139.us383, label %.loopexit294, label %.lr.ph385

.lr.ph382:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us381 = phi i64 [ %i.bx, %.preheader ], [ %.sroa.4114.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.by = add i64 %.sroa.02.0.i.us381, %i.bp      ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.13.0.copyload
  br i1 %i.bz, label %bb.y, label %.split204.us

bb.y:                                             ; preds = %.lr.ph382
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us381
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !5351, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !5350, !noundef !4
  %.not21.i.us = icmp eq i8 %i.cb, %i.cd
  br i1 %.not21.i.us, label %.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.reass339.reass = add i64 %i.bp, %invariant.op456
  %i.ce = add i64 %.reass339.reass, %.sroa.02.0.i.us381
  br label %bb.ae

.preheader.us:                                    ; preds = %bb.ab
  %.not139.us = icmp eq i64 %i.cf, 0
  br i1 %.not139.us, label %.loopexit294, label %.lr.ph385

.lr.ph385:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us384 = phi i64 [ %i.cf, %.preheader.us ], [ %.sroa.4114.0.copyload, %.preheader.us.preheader ]
  %i.cf = add i64 %.sroa.2.0.i.us384, -1          ; 5 uses
  br i1 %.first_iter, label %bb.aa, label %.split193.us.invoke

bb.aa:                                            ; preds = %.lr.ph385
  %i.cg = add i64 %i.cf, %i.bp                    ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %.sroa.13.0.copyload
  br i1 %i.ch, label %bb.ab, label %.split193.us.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.cf
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !5351, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.cg
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !5350, !noundef !4
  %.not.i56.us = icmp eq i8 %i.cj, %i.cl
  br i1 %.not.i56.us, label %.preheader.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = add i64 %.sroa.6116.0.copyload, %i.bp
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i55.us
  %i.cn = add i64 %i.bp, %.sroa.15120.0.copyload
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.z
  %i.co = phi i64 [ %i.ce, %bb.z ], [ %i.cn, %bb.ad ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cp = add i64 %i.co, %i.ac                    ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %.sroa.13.0.copyload
  br i1 %i.cq, label %.lr.ph.i55.us, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit

.loopexit294:                                     ; preds = %.preheader140.us.preheader, %.preheader.us.preheader, %.preheader140.us, %.preheader.us
  %.sroa.2986.1.ph.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader140.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader140.us.preheader ]
  %.pn220 = phi i64 [ %i.bp, %.preheader.us ], [ %i.ak, %.preheader140.us ], [ %i.bp, %.preheader.us.preheader ], [ %i.ak, %.preheader140.us.preheader ]
  %.sroa.17.1.ph.us = add i64 %.pn220, %.sroa.15120.0.copyload
  %i.cr = add i64 %.sroa.0.0.i.us, 1
  br label %bb.n

.split:                                           ; preds = %bb.m
  %i.cs = and i64 %.sroa.6116.0.copyload, 65536
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.lr.ph, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit

.lr.ph.i.i.i.i.lr.ph:                             ; preds = %.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12119.0.copyload) ]
  %i.ct = trunc i64 %.sroa.6116.0.copyload to i1  ; 2 uses
  %i.cu = icmp eq i64 %.sroa.4114.0.copyload, 0
  br i1 %i.cu, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.lr.ph
  %.not.i.i.i.peel.i.i.i.peel = icmp ult i64 %.sroa.4114.0.copyload, %.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i.peel, label %bb.ag, label %.split.i.i.i.peel.i.i.i.peel

.split.i.i.i.peel.i.i.i.peel:                     ; preds = %bb.af
  %i.cv = icmp eq i64 %.sroa.4114.0.copyload, %.sroa.13.0.copyload
  br i1 %i.cv, label %bb.ah, label %.loopexit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %.sroa.4114.0.copyload
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !5352, !noalias !5353, !noundef !4
  %i.cy = icmp sgt i8 %i.cx, -65
  br i1 %i.cy, label %bb.ah, label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %.sroa.4114.0.copyload ; 4 uses
  %i.da = icmp samesign eq i64 %.sroa.4114.0.copyload, %.sroa.13.0.copyload
  br i1 %i.da, label %.loopexit19.i.i.i.peel, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i8, ptr %i.cz, align 1, !noalias !5354, !noundef !4 ; 5 uses
  %i.dc = icmp sgt i8 %i.db, -1
  br i1 %i.dc, label %bb.aj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.de = and i8 %i.db, 31
  %i.df = zext nneg i8 %i.de to i32               ; 3 uses
  %i.dg = add nuw nsw i64 %.sroa.4114.0.copyload, 1
  %i.dh = icmp samesign ne i64 %i.dg, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i8, ptr %i.dd, align 1, !noalias !5354, !noundef !4
  %i.dj = shl nuw nsw i32 %i.df, 6
  %i.dk = and i8 %i.di, 63
  %i.dl = zext nneg i8 %i.dk to i32               ; 2 uses
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %i.dn = icmp samesign ugt i8 %i.db, -33
  br i1 %i.dn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i.peel", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i.peel"
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dp = add nuw nsw i64 %.sroa.4114.0.copyload, 2
  %i.dq = icmp samesign ne i64 %i.dp, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i8, ptr %i.do, align 1, !noalias !5354, !noundef !4
  %i.ds = shl nuw nsw i32 %i.dl, 6
  %i.dt = and i8 %i.dr, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 2 uses
  %i.dw = shl nuw nsw i32 %i.df, 12
  %i.dx = or disjoint i32 %i.dv, %i.dw
  %i.dy = icmp samesign ugt i8 %i.db, -17
  br i1 %i.dy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i.peel", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i.peel"
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.ea = add nuw nsw i64 %.sroa.4114.0.copyload, 3
  %i.eb = icmp samesign ne i64 %i.ea, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dz, align 1, !noalias !5354, !noundef !4
  %i.ed = shl nuw nsw i32 %i.df, 18
  %i.ee = and i32 %i.ed, 1835008
  %i.ef = shl nuw nsw i32 %i.dv, 6
  %i.eg = and i8 %i.ec, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = or disjoint i32 %i.ei, %i.ee
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ek = zext nneg i8 %i.db to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel = phi i32 [ %i.dx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i.peel" ], [ %i.ej, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i.peel" ], [ %i.dm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i.peel" ], [ %i.ek, %bb.aj ] ; 4 uses
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.el)
  br i1 %i.ct, label %.lr.ph.i.i.i.i.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 128
  br i1 %i.em, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 2048
  br i1 %i.en, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 65536
  %..i.i.peel.i.i.i.peel = select i1 %i.eo, i64 3, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.01.0.i.i.peel.i.i.i.peel = phi i64 [ 2, %bb.am ], [ %..i.i.peel.i.i.i.peel, %bb.an ], [ 1, %bb.al ]
  %i.ep = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel, %.sroa.4114.0.copyload ; 12 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i.i.i.peel = icmp ult i64 %i.ep, %.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.aq, label %.split.i.i.i.i.i.i.peel

.split.i.i.i.i.i.i.peel:                          ; preds = %bb.ap
  %i.er = icmp eq i64 %i.ep, %.sroa.13.0.copyload
  br i1 %i.er, label %bb.ar, label %.loopexit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.ep
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !5352, !noalias !5355, !noundef !4
  %i.eu = icmp sgt i8 %i.et, -65
  br i1 %i.eu, label %bb.ar, label %.loopexit.i.i.i

bb.ar:                                            ; preds = %bb.aq, %.split.i.i.i.i.i.i.peel, %bb.ao
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.ep ; 4 uses
  %i.ev = icmp samesign eq i64 %i.ep, %.sroa.13.0.copyload
  br i1 %i.ev, label %.lr.ph.i.i.i.i.preheader, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = load i8, ptr %4, align 1, !noalias !5356, !noundef !4 ; 5 uses
  %i.ex = icmp sgt i8 %i.ew, -1
  br i1 %i.ex, label %30, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.peel": ; preds = %bb.as
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %6 = and i8 %i.ew, 31
  %7 = zext nneg i8 %6 to i32                     ; 3 uses
  %i.ey = add nuw nsw i64 %i.ep, 1
  %i.ez = icmp samesign ne i64 %i.ey, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ez)
  %8 = load i8, ptr %5, align 1, !noalias !5356, !noundef !4
  %9 = shl nuw nsw i32 %7, 6
  %10 = and i8 %8, 63
  %11 = zext nneg i8 %10 to i32                   ; 2 uses
  %12 = or disjoint i32 %9, %11
  %i.fa = icmp samesign ugt i8 %i.ew, -33
  br i1 %i.fa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.peel"
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fb = add nuw nsw i64 %i.ep, 2
  %i.fc = icmp samesign ne i64 %i.fb, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fc)
  %14 = load i8, ptr %13, align 1, !noalias !5356, !noundef !4
  %15 = shl nuw nsw i32 %11, 6
  %16 = and i8 %14, 63
  %17 = zext nneg i8 %16 to i32
  %18 = or disjoint i32 %15, %17                  ; 2 uses
  %19 = shl nuw nsw i32 %7, 12
  %20 = or disjoint i32 %18, %19
  %i.fd = icmp samesign ugt i8 %i.ew, -17
  br i1 %i.fd, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.peel"
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.fe = add nuw nsw i64 %i.ep, 3
  %i.ff = icmp samesign ne i64 %i.fe, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ff)
  %22 = load i8, ptr %21, align 1, !noalias !5356, !noundef !4
  %23 = shl nuw nsw i32 %7, 18
  %24 = and i32 %23, 1835008
  %25 = shl nuw nsw i32 %18, 6
  %26 = and i8 %22, 63
  %27 = zext nneg i8 %26 to i32
  %28 = or disjoint i32 %25, %27
  %29 = or disjoint i32 %28, %24
  br label %.loopexit.i.loopexit.i.i.i.peel

30:                                               ; preds = %bb.as
  %31 = zext nneg i8 %i.ew to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %30, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %20, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.peel" ], [ %29, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.peel" ], [ %12, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.peel" ], [ %31, %30 ]
  %32 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %32)
  br label %.lr.ph.i.i.i.i.preheader

.loopexit19.i.i.i.peel:                           ; preds = %bb.ah
  br i1 %i.ct, label %.lr.ph.i.i.i.i.preheader, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ak, %bb.ar, %.loopexit.i.loopexit.i.i.i.peel, %.loopexit19.i.i.i.peel
  %.sroa.4.0216.ph = phi i64 [ %.sroa.4114.0.copyload, %.loopexit19.i.i.i.peel ], [ %i.ep, %.loopexit.i.loopexit.i.i.i.peel ], [ %.sroa.13.0.copyload, %bb.ar ], [ %.sroa.4114.0.copyload, %bb.ak ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.0.0.i217 = phi i64 [ %i.hx, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.4.0216 = phi i64 [ %.sroa.4.3.ph, %.preheader.i.i.i.i ], [ %.sroa.4.0216.ph, %.lr.ph.i.i.i.i.preheader ] ; 12 uses
  %i.fg = icmp eq i64 %.sroa.4.0216, 0
  br i1 %i.fg, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0216, %.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.au, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.at
  %i.fh = icmp eq i64 %.sroa.4.0216, %.sroa.13.0.copyload
  br i1 %i.fh, label %bb.av, label %.loopexit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %.sroa.4.0216
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !5352, !noalias !5353, !noundef !4
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.av, label %.loopexit.i.i.i

bb.av:                                            ; preds = %bb.au, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %.sroa.4.0216 ; 4 uses
  %i.fm = icmp samesign eq i64 %.sroa.4.0216, %.sroa.13.0.copyload
  br i1 %i.fm, label %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !5354, !noundef !4 ; 4 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i": ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = and i8 %i.fn, 31
  %i.fr = zext nneg i8 %i.fq to i32               ; 3 uses
  %i.fs = add nuw nsw i64 %.sroa.4.0216, 1
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fp, align 1, !noalias !5354, !noundef !4
  %i.fv = shl nuw nsw i32 %i.fr, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32               ; 2 uses
  %i.fy = or disjoint i32 %i.fv, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i", label %bb.ax

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i"
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gb = add nuw nsw i64 %.sroa.4.0216, 2
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !5354, !noundef !4
  %i.ge = shl nuw nsw i32 %i.fx, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg            ; 2 uses
  %i.gi = shl nuw nsw i32 %i.fr, 12
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.gk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i", label %bb.ax

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i"
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gm = add nuw nsw i64 %.sroa.4.0216, 3
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i8, ptr %i.gl, align 1, !noalias !5354, !noundef !4
  %i.gp = shl nuw nsw i32 %i.fr, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gh, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.gj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i.i.i" ], [ %i.gv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i.i.i" ], [ %i.fy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.gx, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.gy, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.gz, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.aw, %bb.az, %bb.ay, %bb.ax
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.ay ], [ %..i.i.peel.i.i.i, %bb.az ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %i.ha = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0216 ; 15 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.ha, %.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.ba
  %i.hc = icmp eq i64 %i.ha, %.sroa.13.0.copyload
  br i1 %i.hc, label %bb.bc, label %.loopexit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.ha
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !5352, !noalias !5355, !noundef !4
  %i.hf = icmp sgt i8 %i.he, -65
  br i1 %i.hf, label %bb.bc, label %.loopexit.i.i.i

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i.i.i, %.thread
  %i.hg = icmp samesign eq i64 %i.ha, %.sroa.13.0.copyload
  br i1 %i.hg, label %.preheader.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.12119.0.copyload, i64 %i.ha
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !5356, !noundef !4 ; 3 uses
  %i.hj = icmp sgt i8 %i.hi, -1
  br i1 %i.hj, label %.preheader.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i": ; preds = %bb.bd
  %i.hk = add nuw nsw i64 %i.ha, 1
  %i.hl = icmp samesign ne i64 %i.hk, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i8 %i.hi, -33
  br i1 %i.hm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", label %.preheader.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"
  %i.hn = add nuw nsw i64 %i.ha, 2
  %i.ho = icmp samesign ne i64 %i.hn, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp samesign ugt i8 %i.hi, -17
  br i1 %i.hp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", label %.preheader.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i"
  %i.hq = add nuw nsw i64 %i.ha, 3
  %i.hr = icmp samesign ne i64 %i.hq, %.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hr)
  br label %.preheader.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.bb, %.split.i.i.i.i.i.i, %bb.au, %.split.i.i.i.peel.i.i.i, %bb.aq, %.split.i.i.i.i.i.i.peel, %bb.ag, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.4114.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.4114.0.copyload, %bb.ag ], [ %i.ep, %.split.i.i.i.i.i.i.peel ], [ %i.ep, %bb.aq ], [ %.sroa.4.0216, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0216, %bb.au ], [ %i.ha, %.split.i.i.i.i.i.i ], [ %i.ha, %bb.bb ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12119.0.copyload, i64 noundef %.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #26
          to label %.noexc unwind label %bb.l, !noalias !5355

.noexc:                                           ; preds = %.loopexit.i.i.i
  unreachable

.split193.us:                                     ; preds = %.lr.ph
  %i.hs = add i64 %i.ak, %.sroa.0.0.i.i65.us
  %umax.i69 = call i64 @llvm.umax.i64(i64 %.sroa.13.0.copyload, i64 %i.hs)
  br label %.split193.us.invoke

.split193.us.invoke:                              ; preds = %bb.t, %.lr.ph378, %bb.aa, %.lr.ph385, %.split204.us, %.split193.us
  %i.ht = phi i64 [ %umax.i69, %.split193.us ], [ %umax.i, %.split204.us ], [ %i.cf, %.lr.ph385 ], [ %i.cg, %bb.aa ], [ %i.bc, %.lr.ph378 ], [ %i.be, %bb.t ]
  %i.hu = phi i64 [ %.sroa.13.0.copyload, %.split193.us ], [ %.sroa.13.0.copyload, %.split204.us ], [ %.sroa.15120.0.copyload, %.lr.ph385 ], [ %.sroa.13.0.copyload, %bb.aa ], [ %.sroa.15120.0.copyload, %.lr.ph378 ], [ %.sroa.13.0.copyload, %bb.t ]
  %i.hv = phi ptr [ @398, %.split193.us ], [ @398, %.split204.us ], [ @396, %.lr.ph385 ], [ @397, %bb.aa ], [ @396, %.lr.ph378 ], [ @397, %bb.t ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ht, i64 noundef %i.hu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hv) #26
          to label %.split193.us.cont unwind label %bb.l, !noalias !5357

.split193.us.cont:                                ; preds = %.split193.us.invoke
  unreachable

.split204.us:                                     ; preds = %.lr.ph382
  %i.hw = add i64 %i.bp, %.sroa.4114.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13.0.copyload, i64 %i.hw)
  br label %.split193.us.invoke

.preheader.i.i.i.i:                               ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", %bb.bd, %bb.bc
  %.sroa.4.3.ph = phi i64 [ %.sroa.13.0.copyload, %bb.bc ], [ %i.ha, %bb.bd ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i" ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i" ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i" ]
  %i.hx = add i64 %.sroa.0.0.i217, 1
  br label %.lr.ph.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit: ; preds = %bb.av, %bb.x, %bb.o, %.sink.split.i.us, %bb.ae, %.loopexit19.i.i.i.peel, %.split
  %.sroa.0.0.i178 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.split ], [ %.sroa.0.0.i.us, %.sink.split.i.us ], [ %.sroa.0.0.i.us, %bb.ae ], [ %.sroa.0.0.i.us, %bb.x ], [ %.sroa.0.0.i.us, %bb.o ], [ %.sroa.0.0.i217, %bb.av ]
  %i.hy = add i64 %.sroa.0.0.i178, 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !4 ; 4 uses
  %i.ib = icmp ugt i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bf, label %bb.be, !prof !10

bb.be:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !4, !noundef !4
  %i.ie = sub nuw i64 %i.ia, %i.hy
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN5alloc3str17join_generic_copy17hfa2aeb34a889be14E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.if, i64 noundef %i.ie, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 2)
          to label %bb.bg unwind label %bb.l

bb.bf:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17he11ee9dc019ac917E.exit
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.hy, i64 noundef %i.ia, i64 noundef %i.ia, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #26
          to label %bb.br unwind label %bb.l

bb.bg:                                            ; preds = %bb.be
end_hunk_0
