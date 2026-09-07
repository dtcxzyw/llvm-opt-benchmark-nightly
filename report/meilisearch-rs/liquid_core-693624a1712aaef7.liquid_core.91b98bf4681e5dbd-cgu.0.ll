Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE:bb.a
  br i1 %i.cn, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11201)
  %i.cp = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cc, i64 -1
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ct = getelementptr i8, ptr %i.dk, i64 1      ; 2 uses
  %i.cu = getelementptr i8, ptr %i.dj, i64 1
  %i.cv = and i64 %.sroa.15.0.lcssa, 1
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 2 uses
  %.sroa.06.013.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.cc, %.loopexit.1.i ] ; 2 uses
  %.sroa.010.012.i.i = phi ptr [ %i.df, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa116, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.011.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cs, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.cq, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.08.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.cx = add nuw nsw i64 %.sroa.018.08.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.013.i.i, align 1, !range !28, !alias.scope !11202, !noalias !11198, !noundef !6 ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.014.i.i, align 1, !range !28, !alias.scope !11202, !noalias !11198, !noundef !6 ; 2 uses
  %i.cy = icmp samesign ult i8 %.sroa.06.0.val.i.i, %.sroa.0.0.val.i.i ; 2 uses
  %i.cz = xor i1 %i.cy, true
  %i.da = call i8 @llvm.umin.i8(i8 %.sroa.06.0.val.i.i, i8 %.sroa.0.0.val.i.i)
  store i8 %i.da, ptr %.sroa.010.012.i.i, align 1, !alias.scope !11198, !noalias !11203
  %i.db = zext i1 %i.cy to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i, i64 %i.db ; 4 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i, i64 1 ; 2 uses
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.010.i.i, align 1, !range !28, !alias.scope !11202, !noalias !11198, !noundef !6 ; 2 uses
  %.sroa.013.0.val.i.i = load i8, ptr %.sroa.013.011.i.i, align 1, !range !28, !alias.scope !11202, !noalias !11198, !noundef !6 ; 2 uses
  %i.dg = icmp samesign ult i8 %.sroa.015.0.val.i.i, %.sroa.013.0.val.i.i ; 2 uses
  %i.dh = xor i1 %i.dg, true
  %i.di = call i8 @llvm.umax.i8(i8 %.sroa.015.0.val.i.i, i8 %.sroa.013.0.val.i.i)
  store i8 %i.di, ptr %.sroa.017.09.i.i, align 1, !alias.scope !11198, !noalias !11204
  %.neg.i.i.i = sext i1 %i.dh to i64
  %i.dj = getelementptr i8, ptr %.sroa.015.010.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dg to i64
  %i.dk = getelementptr i8, ptr %.sroa.013.011.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.017.09.i.i, i64 -1
  %exitcond.not.i.i = icmp eq i64 %i.cx, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dm = icmp ult ptr %i.de, %i.ct               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.dm, ptr %i.de, ptr %i.dc
  %i.dn = load i8, ptr %.sroa.0.0..sroa.06.0.i.i, align 1, !alias.scope !11202, !noalias !11198
  store i8 %i.dn, ptr %i.df, align 1, !alias.scope !11198, !noalias !11202
  %i.do = zext i1 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.do
  %i.dq = xor i1 %i.dm, true
  %i.dr = zext i1 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dr
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.dc, %._crit_edge.i.i ], [ %i.ds, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.de, %._crit_edge.i.i ], [ %i.dp, %bb.k ]
  %i.dt = icmp ne ptr %.sroa.0.1.i.i, %i.ct
  %i.du = icmp ne ptr %.sroa.06.1.i.i, %i.cu
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du, !prof !41
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit, !prof !41

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #57
          to label %.noexc.i unwind label %bb.n, !noalias !11205

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph.lcssa116, ptr nonnull align 1 %2, i64 range(i64 0, 33) %.sroa.15.0.lcssa, i1 false), !alias.scope !11205, !noalias !11206
  resume { ptr, i32 } %i.dv

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %.sroa.08.09.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.08.09.i ; 3 uses
  %i.dy = load i8, ptr %i.dw, align 1, !alias.scope !11198, !noalias !11199 ; 4 uses
  store i8 %i.dy, ptr %i.dx, align 1, !alias.scope !11199, !noalias !11198
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -1 ; 2 uses
  %.val10.i46.i = load i8, ptr %i.dz, align 1, !range !28, !alias.scope !11199, !noalias !11198, !noundef !6 ; 2 uses
  %i.ea = icmp samesign ult i8 %i.dy, %.val10.i46.i
  br i1 %i.ea, label %.preheader.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i
  store i8 %.val10.i46.i, ptr %i.dx, align 1, !alias.scope !11199, !noalias !11198
  %i.eb = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.eb, label %._crit_edge286, label %.lr.ph285

.preheader.i.i:                                   ; preds = %.lr.ph285
  store i8 %.val8.i48.i, ptr %.sroa.0.0.i47.i284, align 1, !alias.scope !11199, !noalias !11198
  %i.ec = icmp eq ptr %i.ed, %2
  br i1 %i.ec, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i47.i284 = phi ptr [ %i.ed, %.preheader.i.i ], [ %i.dz, %.preheader.i.i.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i284, i64 -1 ; 3 uses
  %.val8.i48.i = load i8, ptr %i.ed, align 1, !range !28, !alias.scope !11199, !noalias !11198, !noundef !6 ; 2 uses
  %i.ee = icmp samesign ult i8 %i.dy, %.val8.i48.i
  br i1 %i.ee, label %.preheader.i.i, label %._crit_edge286

._crit_edge286:                                   ; preds = %.preheader.i.i, %.lr.ph285, %.preheader.i.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %2, %.preheader.i.i.preheader ], [ %2, %.preheader.i.i ], [ %.sroa.0.0.i47.i284, %.lr.ph285 ]
  store i8 %i.dy, ptr %.sroa.0.0.i47.lcssa.i, align 1, !alias.scope !11199, !noalias !11200
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i: ; preds = %._crit_edge286, %.lr.ph.i
  %i.ef = icmp samesign ult i64 %.sroa.08.110.i, %i.k ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.eg
  br i1 %i.ef, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0119.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph125, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E(ptr noalias noundef nonnull align 1 %.sroa.0.0.ph126, i64 noundef %.sroa.15.0119.lcssa, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.b
  %.sroa.023.0118279 = phi i32 [ %i.eh, %bb.b ], [ %.sroa.023.0.ph124, %.lr.ph280.preheader ]
  %.sroa.15.0119278 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph125, %.lr.ph280.preheader ] ; 19 uses
  %i.eh = add i32 %.sroa.023.0118279, -1          ; 4 uses
  %i.ei = lshr i64 %.sroa.15.0119278, 3           ; 3 uses
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ej ; 3 uses
  %i.el = mul nuw i64 %i.ei, 7
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.el ; 3 uses
  %i.en = icmp ult i64 %.sroa.15.0119278, 64
  br i1 %i.en, label %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph280
  %i.eo = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1fcb386906b64E(ptr noundef nonnull readonly align 1 %.sroa.0.0.ph126, ptr noundef readonly %i.ek, ptr noundef readonly %i.em, i64 noundef %i.ei)
  br label %bb.p

_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i: ; preds = %.lr.ph280
  %.val5.i = load i8, ptr %.sroa.0.0.ph126, align 1, !range !28, !alias.scope !11207, !noundef !6 ; 2 uses
  %.val6.i = load i8, ptr %i.ek, align 1, !range !28, !alias.scope !11207, !noundef !6 ; 2 uses
  %i.ep = icmp samesign ult i8 %.val5.i, %.val6.i ; 2 uses
  %.val4.i = load i8, ptr %i.em, align 1, !range !28, !alias.scope !11207, !noundef !6 ; 2 uses
  %i.eq = icmp samesign ult i8 %.val5.i, %.val4.i
  %i.er = xor i1 %i.ep, %i.eq
  %i.es = icmp samesign ult i8 %.val6.i, %.val4.i
  %i.et = xor i1 %i.ep, %i.es
  %..i.i = select i1 %i.et, ptr %i.em, ptr %i.ek
  %.sroa.0.0.i.i = select i1 %i.er, ptr %.sroa.0.0.ph126, ptr %..i.i
  br label %bb.p

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i ], [ %i.eo, %bb.o ]
  %i.eu = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ev = sub nuw i64 %i.eu, %i.d                 ; 5 uses
  %i.ew = icmp ult i64 %i.ev, %.sroa.15.0119278
  call void @llvm.assume(i1 %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !range !28, !noundef !6 ; 9 uses
  store i8 %i.ey, ptr %i.b, align 1
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.026.0.val = load i8, ptr %.sroa.026.0.ph123, align 1, !range !28, !noundef !6
  %.not81 = icmp samesign ult i8 %.sroa.026.0.val, %i.ey
  br i1 %.not81, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !11208)
  call void @llvm.experimental.noalias.scope.decl(metadata !11209)
  %.not82 = icmp ult i64 %3, %.sroa.15.0119278
  br i1 %.not82, label %bb.s, label %bb.r, !prof !41

bb.r:                                             ; preds = %.critedge
  %i.ez = getelementptr i8, ptr %2, i64 %.sroa.15.0119278 ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.43.0.i = phi ptr [ %i.ez, %bb.r ], [ %i.hb, %bb.u ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph126, %bb.r ], [ %i.he, %bb.u ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.ev, %bb.r ], [ %.sroa.15.0119278, %bb.u ] ; 5 uses
  %i.fa = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.fa ; 2 uses
  %i.fc = icmp ult ptr %.sroa.9.0.i, %i.fb
  br i1 %i.fc, label %.lr.ph.i36, label %._crit_edge.i

.lr.ph.i36:                                       ; preds = %bb.t, %.lr.ph.i36
  %.sroa.9.131.i = phi ptr [ %i.ga, %.lr.ph.i36 ], [ %.sroa.9.0.i, %bb.t ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.fz, %.lr.ph.i36 ], [ %.sroa.27.0.i, %bb.t ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.fw, %.lr.ph.i36 ], [ %.sroa.43.0.i, %bb.t ] ; 4 uses
  %.val34.i = load i8, ptr %.sroa.9.131.i, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.fd = icmp samesign ult i8 %.val34.i, %i.ey   ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -1
  %.sroa.01.0.i.i = select i1 %i.fd, ptr %2, ptr %i.fe
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i8 %.val34.i, ptr %i.ff, align 1, !alias.scope !11209, !noalias !11210
  %i.fg = zext i1 %i.fd to i64
  %i.fh = add i64 %.sroa.27.130.i, %i.fg          ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 1
  %.val32.i = load i8, ptr %i.fi, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.fj = icmp samesign ult i8 %.val32.i, %i.ey   ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -2
  %.sroa.01.0.i36.i = select i1 %i.fj, ptr %2, ptr %i.fk
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i36.i, i64 %i.fh
  store i8 %.val32.i, ptr %i.fl, align 1, !alias.scope !11209, !noalias !11211
  %i.fm = zext i1 %i.fj to i64
  %i.fn = add i64 %i.fh, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 2
  %.val30.i = load i8, ptr %i.fo, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.fp = icmp samesign ult i8 %.val30.i, %i.ey   ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -3
  %.sroa.01.0.i37.i = select i1 %i.fp, ptr %2, ptr %i.fq
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i37.i, i64 %i.fn
  store i8 %.val30.i, ptr %i.fr, align 1, !alias.scope !11209, !noalias !11212
  %i.fs = zext i1 %i.fp to i64
  %i.ft = add i64 %i.fn, %i.fs                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 3
  %.val28.i = load i8, ptr %i.fu, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.fv = icmp samesign ult i8 %.val28.i, %i.ey   ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -4 ; 3 uses
  %.sroa.01.0.i38.i = select i1 %i.fv, ptr %2, ptr %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i38.i, i64 %i.ft
  store i8 %.val28.i, ptr %i.fx, align 1, !alias.scope !11209, !noalias !11213
  %i.fy = zext i1 %i.fv to i64
  %i.fz = add i64 %i.ft, %i.fy                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 4 ; 3 uses
  %i.gb = icmp ult ptr %i.ga, %i.fb
  br i1 %i.gb, label %.lr.ph.i36, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i36, %bb.t
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.fw, %.lr.ph.i36 ] ; 3 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.fz, %.lr.ph.i36 ] ; 4 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.ga, %.lr.ph.i36 ] ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.02.0.i
  %i.gd = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gc
  br i1 %i.gd, label %.lr.ph38.preheader.i, label %._crit_edge39.i

.lr.ph38.preheader.i:                             ; preds = %._crit_edge.i
  %.sroa.9.1.lcssa53.i = ptrtoaddr ptr %.sroa.9.1.lcssa.i to i64 ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.9.1.lcssa.i, i64 %i.d
  %i.ge = sub i64 %.sroa.02.0.i, %.sroa.9.1.lcssa53.i ; 2 uses
  %scevgep54.i = getelementptr i8, ptr %scevgep.i, i64 %i.ge ; 3 uses
  %i.gf = add i64 %i.ge, %i.d
  %i.gg = add i64 %i.f, %.sroa.02.0.i
  %xtraiter = and i64 %i.gf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.i.prol.loopexit, label %.lr.ph38.i.prol

.lr.ph38.i.prol:                                  ; preds = %.lr.ph38.preheader.i
  %.val.i.prol = load i8, ptr %.sroa.9.1.lcssa.i, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.gh = icmp samesign ult i8 %.val.i.prol, %i.ey ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.43.1.lcssa.i, i64 -1 ; 3 uses
  %.sroa.01.0.i39.i.prol = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i.prol, i64 %.sroa.27.1.lcssa.i
  store i8 %.val.i.prol, ptr %i.gj, align 1, !alias.scope !11209, !noalias !11214
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %.sroa.27.1.lcssa.i, %i.gk      ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.1.lcssa.i, i64 1
  br label %.lr.ph38.i.prol.loopexit

.lr.ph38.i.prol.loopexit:                         ; preds = %.lr.ph38.i.prol, %.lr.ph38.preheader.i
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph38.preheader.i ], [ %i.gi, %.lr.ph38.i.prol ]
  %.lcssa341.unr = phi i64 [ poison, %.lr.ph38.preheader.i ], [ %i.gl, %.lr.ph38.i.prol ]
  %.sroa.9.236.i.unr = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gm, %.lr.ph38.i.prol ]
  %.sroa.27.235.i.unr = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gl, %.lr.ph38.i.prol ]
  %.sroa.43.234.i.unr = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gi, %.lr.ph38.i.prol ]
  %i.gn = icmp eq i64 %i.gg, %.sroa.9.1.lcssa53.i
  br i1 %i.gn, label %._crit_edge39.i, label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %.lcssa342.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gw, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %.lcssa341.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gz, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %scevgep54.i, %.lr.ph38.i ], [ %scevgep54.i, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %i.go = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0119278
  br i1 %i.go, label %bb.v, label %bb.u

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.ha, %.lr.ph38.i ], [ %.sroa.9.236.i.unr, %.lr.ph38.i.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gz, %.lr.ph38.i ], [ %.sroa.27.235.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.43.234.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.val.i = load i8, ptr %.sroa.9.236.i, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.gp = icmp samesign ult i8 %.val.i, %i.ey     ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -1
  %.sroa.01.0.i39.i = select i1 %i.gp, ptr %2, ptr %i.gq
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i, i64 %.sroa.27.235.i
  store i8 %.val.i, ptr %i.gr, align 1, !alias.scope !11209, !noalias !11214
  %i.gs = zext i1 %i.gp to i64
  %i.gt = add i64 %.sroa.27.235.i, %i.gs          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 1
  %.val.i.1 = load i8, ptr %i.gu, align 1, !range !28, !alias.scope !11208, !noalias !11209, !noundef !6 ; 2 uses
  %i.gv = icmp samesign ult i8 %.val.i.1, %i.ey   ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -2 ; 3 uses
  %.sroa.01.0.i39.i.1 = select i1 %i.gv, ptr %2, ptr %i.gw
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i.1, i64 %i.gt
  store i8 %.val.i.1, ptr %i.gx, align 1, !alias.scope !11209, !noalias !11214
  %i.gy = zext i1 %i.gv to i64
  %i.gz = add i64 %i.gt, %i.gy                    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq ptr %i.ha, %scevgep54.i
  br i1 %exitcond.not.i.1, label %._crit_edge39.i, label %.lr.ph38.i

bb.u:                                             ; preds = %._crit_edge39.i
  %i.hb = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -1 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.sroa.27.2.lcssa.i
  %i.hd = load i8, ptr %.sroa.9.2.lcssa.i, align 1, !alias.scope !11208, !noalias !11215
  store i8 %i.hd, ptr %i.hc, align 1, !alias.scope !11209, !noalias !11216
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 1
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge39.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph126, ptr nonnull align 1 %2, i64 %.sroa.27.2.lcssa.i, i1 false), !alias.scope !11217
  %i.hf = sub i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i ; 9 uses
  %.not47.i = icmp eq i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit, label %iter.check318

iter.check318:                                    ; preds = %bb.v
  %i.hg = getelementptr i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check303 = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check303, label %vec.epilog.scalar.ph319.preheader, label %vector.main.loop.iter.check304

vector.main.loop.iter.check304:                   ; preds = %iter.check318
  %min.iters.check305 = icmp ult i64 %i.hf, 32
  br i1 %min.iters.check305, label %vec.epilog.ph322, label %vector.ph306

vector.ph306:                                     ; preds = %vector.main.loop.iter.check304
  %i.hh = and i64 %i.hf, 24
  %n.vec307 = and i64 %i.hf, -32                  ; 4 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %i.hi = xor i64 %index309, -1
  %i.hj = getelementptr i8, ptr %i.ez, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hg, i64 %index309 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 -15
  %i.hm = getelementptr i8, ptr %i.hj, i64 -31
  %wide.load310 = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !11209, !noalias !11208
  %wide.load311 = load <16 x i8>, ptr %i.hm, align 1, !alias.scope !11209, !noalias !11208
  %reverse312 = shufflevector <16 x i8> %wide.load310, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse313 = shufflevector <16 x i8> %wide.load311, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hn = getelementptr i8, ptr %i.hk, i64 16
  store <16 x i8> %reverse312, ptr %i.hk, align 1, !alias.scope !11208, !noalias !11209
  store <16 x i8> %reverse313, ptr %i.hn, align 1, !alias.scope !11208, !noalias !11209
  %index.next314 = add nuw i64 %index309, 32      ; 2 uses
  %i.ho = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.ho, label %middle.block315, label %vector.body308, !llvm.loop !11175

middle.block315:                                  ; preds = %vector.body308
  %cmp.n316 = icmp eq i64 %i.hf, %n.vec307
  br i1 %cmp.n316, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit, label %vec.epilog.iter.check320

vec.epilog.iter.check320:                         ; preds = %middle.block315
  %min.epilog.iters.check321 = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check321, label %vec.epilog.scalar.ph319.preheader, label %vec.epilog.ph322, !prof !46

vec.epilog.ph322:                                 ; preds = %vector.main.loop.iter.check304, %vec.epilog.iter.check320
  %vec.epilog.resume.val317 = phi i64 [ %n.vec307, %vec.epilog.iter.check320 ], [ 0, %vector.main.loop.iter.check304 ]
  %n.vec323 = and i64 %i.hf, -8                   ; 3 uses
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph322
  %index325 = phi i64 [ %vec.epilog.resume.val317, %vec.epilog.ph322 ], [ %index.next328, %vec.epilog.vector.body324 ] ; 3 uses
  %i.hp = xor i64 %index325, -1
  %i.hq = getelementptr i8, ptr %i.ez, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hg, i64 %index325
  %i.hs = getelementptr i8, ptr %i.hq, i64 -7
  %wide.load326 = load <8 x i8>, ptr %i.hs, align 1, !alias.scope !11209, !noalias !11208
  %reverse327 = shufflevector <8 x i8> %wide.load326, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse327, ptr %i.hr, align 1, !alias.scope !11208, !noalias !11209
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.ht, label %vec.epilog.middle.block329, label %vec.epilog.vector.body324, !llvm.loop !11176

vec.epilog.middle.block329:                       ; preds = %vec.epilog.vector.body324
  %cmp.n330 = icmp eq i64 %i.hf, %n.vec323
  br i1 %cmp.n330, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit, label %vec.epilog.scalar.ph319.preheader

vec.epilog.scalar.ph319.preheader:                ; preds = %iter.check318, %vec.epilog.iter.check320, %vec.epilog.middle.block329
  %.sroa.05.043.i.ph = phi i64 [ 0, %iter.check318 ], [ %n.vec307, %vec.epilog.iter.check320 ], [ %n.vec323, %vec.epilog.middle.block329 ]
  br label %vec.epilog.scalar.ph319

vec.epilog.scalar.ph319:                          ; preds = %vec.epilog.scalar.ph319.preheader, %vec.epilog.scalar.ph319
  %.sroa.05.043.i = phi i64 [ %i.hu, %vec.epilog.scalar.ph319 ], [ %.sroa.05.043.i.ph, %vec.epilog.scalar.ph319.preheader ] ; 3 uses
  %i.hu = add nuw i64 %.sroa.05.043.i, 1          ; 2 uses
  %i.hv = xor i64 %.sroa.05.043.i, -1
  %i.hw = getelementptr i8, ptr %i.ez, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hg, i64 %.sroa.05.043.i
  %i.hy = load i8, ptr %i.hw, align 1, !alias.scope !11209, !noalias !11208
  store i8 %i.hy, ptr %i.hx, align 1, !alias.scope !11208, !noalias !11209
  %exitcond55.not.i = icmp eq i64 %i.hu, %i.hf
  br i1 %exitcond55.not.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit, label %vec.epilog.scalar.ph319, !llvm.loop !11177

_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit: ; preds = %vec.epilog.scalar.ph319, %middle.block315, %vec.epilog.middle.block329, %bb.v
  %i.hz = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.hz, label %.critedge35, label %bb.w

bb.w:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit
  %.not33 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.15.0119278
  br i1 %.not33, label %bb.ae, label %bb.af, !prof !12

.critedge35:                                      ; preds = %bb.q, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h73ab84ad0062ed60E.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ev ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11218)
  call void @llvm.experimental.noalias.scope.decl(metadata !11219)
  %.not83 = icmp ult i64 %3, %.sroa.15.0119278
  br i1 %.not83, label %bb.y, label %bb.x, !prof !41

bb.x:                                             ; preds = %.critedge35
  %i.ib = getelementptr i8, ptr %2, i64 %.sroa.15.0119278 ; 4 uses
  %i.ic = add i64 %i.d, -1
  br label %bb.z

bb.y:                                             ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %.sroa.43.0.i39 = phi ptr [ %i.ib, %bb.x ], [ %i.ke, %bb.ab ] ; 2 uses
  %.sroa.27.0.i40 = phi i64 [ 0, %bb.x ], [ %i.kh, %bb.ab ] ; 2 uses
  %.sroa.9.0.i41 = phi ptr [ %.sroa.0.0.ph126, %bb.x ], [ %i.ki, %bb.ab ] ; 3 uses
  %.sroa.02.0.i42 = phi i64 [ %i.ev, %bb.x ], [ %.sroa.15.0119278, %bb.ab ] ; 5 uses
  %i.id = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i42, i64 3)
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.id ; 2 uses
  %i.if = icmp ult ptr %.sroa.9.0.i41, %i.ie
  br i1 %i.if, label %.lr.ph.i67, label %._crit_edge.i43

.lr.ph.i67:                                       ; preds = %bb.z
  %.val35.i68 = load i8, ptr %i.ia, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i67
  %.sroa.9.131.i69 = phi ptr [ %.sroa.9.0.i41, %.lr.ph.i67 ], [ %i.jd, %bb.aa ] ; 5 uses
  %.sroa.27.130.i70 = phi i64 [ %.sroa.27.0.i40, %.lr.ph.i67 ], [ %i.jc, %bb.aa ] ; 2 uses
  %.sroa.43.129.i71 = phi ptr [ %.sroa.43.0.i39, %.lr.ph.i67 ], [ %i.iz, %bb.aa ] ; 4 uses
  %.val34.i72 = load i8, ptr %.sroa.9.131.i69, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.ig = icmp samesign uge i8 %.val35.i68, %.val34.i72 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -1
  %.sroa.01.0.i.i73 = select i1 %i.ig, ptr %2, ptr %i.ih
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i70
  store i8 %.val34.i72, ptr %i.ii, align 1, !alias.scope !11219, !noalias !11220
  %i.ij = zext i1 %i.ig to i64
  %i.ik = add i64 %.sroa.27.130.i70, %i.ij        ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 1
  %.val32.i74 = load i8, ptr %i.il, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.im = icmp samesign uge i8 %.val35.i68, %.val32.i74 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -2
  %.sroa.01.0.i36.i75 = select i1 %i.im, ptr %2, ptr %i.in
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i36.i75, i64 %i.ik
  store i8 %.val32.i74, ptr %i.io, align 1, !alias.scope !11219, !noalias !11221
  %i.ip = zext i1 %i.im to i64
  %i.iq = add i64 %i.ik, %i.ip                    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 2
  %.val30.i76 = load i8, ptr %i.ir, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.is = icmp samesign uge i8 %.val35.i68, %.val30.i76 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -3
  %.sroa.01.0.i37.i77 = select i1 %i.is, ptr %2, ptr %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i37.i77, i64 %i.iq
  store i8 %.val30.i76, ptr %i.iu, align 1, !alias.scope !11219, !noalias !11222
  %i.iv = zext i1 %i.is to i64
  %i.iw = add i64 %i.iq, %i.iv                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 3
  %.val28.i78 = load i8, ptr %i.ix, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.iy = icmp samesign uge i8 %.val35.i68, %.val28.i78 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -4 ; 3 uses
  %.sroa.01.0.i38.i79 = select i1 %i.iy, ptr %2, ptr %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i38.i79, i64 %i.iw
  store i8 %.val28.i78, ptr %i.ja, align 1, !alias.scope !11219, !noalias !11223
  %i.jb = zext i1 %i.iy to i64
  %i.jc = add i64 %i.iw, %i.jb                    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 4 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.ie
  br i1 %i.je, label %bb.aa, label %._crit_edge.i43

._crit_edge.i43:                                  ; preds = %bb.aa, %bb.z
  %.sroa.43.1.lcssa.i44 = phi ptr [ %.sroa.43.0.i39, %bb.z ], [ %i.iz, %bb.aa ] ; 3 uses
  %.sroa.27.1.lcssa.i45 = phi i64 [ %.sroa.27.0.i40, %bb.z ], [ %i.jc, %bb.aa ] ; 4 uses
  %.sroa.9.1.lcssa.i46 = phi ptr [ %.sroa.9.0.i41, %bb.z ], [ %i.jd, %bb.aa ] ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.02.0.i42
  %i.jg = icmp ult ptr %.sroa.9.1.lcssa.i46, %i.jf
  br i1 %i.jg, label %.lr.ph38.preheader.i55, label %._crit_edge39.i47

.lr.ph38.preheader.i55:                           ; preds = %._crit_edge.i43
  %.sroa.9.1.lcssa53.i56 = ptrtoaddr ptr %.sroa.9.1.lcssa.i46 to i64 ; 2 uses
  %scevgep.i57 = getelementptr i8, ptr %.sroa.9.1.lcssa.i46, i64 %i.d
  %i.jh = sub i64 %.sroa.02.0.i42, %.sroa.9.1.lcssa53.i56 ; 2 uses
  %scevgep54.i58 = getelementptr i8, ptr %scevgep.i57, i64 %i.jh ; 3 uses
  %.val27.i64 = load i8, ptr %i.ia, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 3 uses
  %i.ji = add i64 %i.jh, %i.d
  %i.jj = add i64 %i.ic, %.sroa.02.0.i42
  %xtraiter390 = and i64 %i.ji, 1
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph38.i59.prol.loopexit, label %.lr.ph38.i59.prol

.lr.ph38.i59.prol:                                ; preds = %.lr.ph38.preheader.i55
  %.val.i63.prol = load i8, ptr %.sroa.9.1.lcssa.i46, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.jk = icmp samesign uge i8 %.val27.i64, %.val.i63.prol ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.sroa.43.1.lcssa.i44, i64 -1 ; 3 uses
  %.sroa.01.0.i39.i65.prol = select i1 %i.jk, ptr %2, ptr %i.jl
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i65.prol, i64 %.sroa.27.1.lcssa.i45
  store i8 %.val.i63.prol, ptr %i.jm, align 1, !alias.scope !11219, !noalias !11224
  %i.jn = zext i1 %i.jk to i64
  %i.jo = add i64 %.sroa.27.1.lcssa.i45, %i.jn    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.9.1.lcssa.i46, i64 1
  br label %.lr.ph38.i59.prol.loopexit

.lr.ph38.i59.prol.loopexit:                       ; preds = %.lr.ph38.i59.prol, %.lr.ph38.preheader.i55
  %.lcssa366.unr = phi ptr [ poison, %.lr.ph38.preheader.i55 ], [ %i.jl, %.lr.ph38.i59.prol ]
  %.lcssa365.unr = phi i64 [ poison, %.lr.ph38.preheader.i55 ], [ %i.jo, %.lr.ph38.i59.prol ]
  %.sroa.9.236.i60.unr = phi ptr [ %.sroa.9.1.lcssa.i46, %.lr.ph38.preheader.i55 ], [ %i.jp, %.lr.ph38.i59.prol ]
  %.sroa.27.235.i61.unr = phi i64 [ %.sroa.27.1.lcssa.i45, %.lr.ph38.preheader.i55 ], [ %i.jo, %.lr.ph38.i59.prol ]
  %.sroa.43.234.i62.unr = phi ptr [ %.sroa.43.1.lcssa.i44, %.lr.ph38.preheader.i55 ], [ %i.jl, %.lr.ph38.i59.prol ]
  %i.jq = icmp eq i64 %i.jj, %.sroa.9.1.lcssa53.i56
  br i1 %i.jq, label %._crit_edge39.i47, label %.lr.ph38.i59

._crit_edge39.i47:                                ; preds = %.lr.ph38.i59.prol.loopexit, %.lr.ph38.i59, %._crit_edge.i43
  %.sroa.43.2.lcssa.i48 = phi ptr [ %.sroa.43.1.lcssa.i44, %._crit_edge.i43 ], [ %.lcssa366.unr, %.lr.ph38.i59.prol.loopexit ], [ %i.jz, %.lr.ph38.i59 ]
  %.sroa.27.2.lcssa.i49 = phi i64 [ %.sroa.27.1.lcssa.i45, %._crit_edge.i43 ], [ %.lcssa365.unr, %.lr.ph38.i59.prol.loopexit ], [ %i.kc, %.lr.ph38.i59 ] ; 9 uses
  %.sroa.9.2.lcssa.i50 = phi ptr [ %.sroa.9.1.lcssa.i46, %._crit_edge.i43 ], [ %scevgep54.i58, %.lr.ph38.i59 ], [ %scevgep54.i58, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %i.jr = icmp eq i64 %.sroa.02.0.i42, %.sroa.15.0119278
  br i1 %i.jr, label %bb.ac, label %bb.ab

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59.prol.loopexit, %.lr.ph38.i59
  %.sroa.9.236.i60 = phi ptr [ %i.kd, %.lr.ph38.i59 ], [ %.sroa.9.236.i60.unr, %.lr.ph38.i59.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i61 = phi i64 [ %i.kc, %.lr.ph38.i59 ], [ %.sroa.27.235.i61.unr, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i62 = phi ptr [ %i.jz, %.lr.ph38.i59 ], [ %.sroa.43.234.i62.unr, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %.val.i63 = load i8, ptr %.sroa.9.236.i60, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.js = icmp samesign uge i8 %.val27.i64, %.val.i63 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -1
  %.sroa.01.0.i39.i65 = select i1 %i.js, ptr %2, ptr %i.jt
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i65, i64 %.sroa.27.235.i61
  store i8 %.val.i63, ptr %i.ju, align 1, !alias.scope !11219, !noalias !11224
  %i.jv = zext i1 %i.js to i64
  %i.jw = add i64 %.sroa.27.235.i61, %i.jv        ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 1
  %.val.i63.1 = load i8, ptr %i.jx, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.jy = icmp samesign uge i8 %.val27.i64, %.val.i63.1 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -2 ; 3 uses
  %.sroa.01.0.i39.i65.1 = select i1 %i.jy, ptr %2, ptr %i.jz
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i65.1, i64 %i.jw
  store i8 %.val.i63.1, ptr %i.ka, align 1, !alias.scope !11219, !noalias !11224
  %i.kb = zext i1 %i.jy to i64
  %i.kc = add i64 %i.jw, %i.kb                    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 2 ; 2 uses
  %exitcond.not.i66.1 = icmp eq ptr %i.kd, %scevgep54.i58
  br i1 %exitcond.not.i66.1, label %._crit_edge39.i47, label %.lr.ph38.i59

bb.ab:                                            ; preds = %._crit_edge39.i47
  %i.ke = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i48, i64 -1
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.27.2.lcssa.i49
  %i.kg = load i8, ptr %.sroa.9.2.lcssa.i50, align 1, !alias.scope !11218, !noalias !11225
  store i8 %i.kg, ptr %i.kf, align 1, !alias.scope !11219, !noalias !11226
  %i.kh = add i64 %.sroa.27.2.lcssa.i49, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i50, i64 1
  br label %bb.z

bb.ac:                                            ; preds = %._crit_edge39.i47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph126, ptr nonnull align 1 %2, i64 %.sroa.27.2.lcssa.i49, i1 false), !alias.scope !11227
  %i.kj = sub i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i49 ; 11 uses
  %.not47.i51 = icmp eq i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i49
  br i1 %.not47.i51, label %.outer._crit_edge.thread, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %i.kk = getelementptr i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i49 ; 3 uses
  %min.iters.check = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check294 = icmp ult i64 %i.kj, 32
  br i1 %min.iters.check294, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kl = and i64 %i.kj, 24
  %n.vec = and i64 %i.kj, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = xor i64 %index, -1
  %i.kn = getelementptr i8, ptr %i.ib, i64 %i.km  ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kk, i64 %index ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 -15
  %i.kq = getelementptr i8, ptr %i.kn, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kp, align 1, !alias.scope !11219, !noalias !11218
  %wide.load295 = load <16 x i8>, ptr %i.kq, align 1, !alias.scope !11219, !noalias !11218
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse296 = shufflevector <16 x i8> %wide.load295, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kr = getelementptr i8, ptr %i.ko, i64 16
  store <16 x i8> %reverse, ptr %i.ko, align 1, !alias.scope !11218, !noalias !11219
  store <16 x i8> %reverse296, ptr %i.kr, align 1, !alias.scope !11218, !noalias !11219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !11193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kj, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec297 = and i64 %i.kj, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next301, %vec.epilog.vector.body ] ; 3 uses
  %i.kt = xor i64 %index298, -1
  %i.ku = getelementptr i8, ptr %i.ib, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kk, i64 %index298
  %i.kw = getelementptr i8, ptr %i.ku, i64 -7
  %wide.load299 = load <8 x i8>, ptr %i.kw, align 1, !alias.scope !11219, !noalias !11218
  %reverse300 = shufflevector <8 x i8> %wide.load299, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse300, ptr %i.kv, align 1, !alias.scope !11218, !noalias !11219
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.kx = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.kx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n302 = icmp eq i64 %i.kj, %n.vec297
  br i1 %cmp.n302, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.043.i53.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec297, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.043.i53 = phi i64 [ %i.ky, %vec.epilog.scalar.ph ], [ %.sroa.05.043.i53.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ky = add nuw i64 %.sroa.05.043.i53, 1        ; 2 uses
  %i.kz = xor i64 %.sroa.05.043.i53, -1
  %i.la = getelementptr i8, ptr %i.ib, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.kk, i64 %.sroa.05.043.i53
  %i.lc = load i8, ptr %i.la, align 1, !alias.scope !11219, !noalias !11218
  store i8 %i.lc, ptr %i.lb, align 1, !alias.scope !11218, !noalias !11219
  %exitcond55.not.i54 = icmp eq i64 %i.ky, %i.kj
  br i1 %exitcond55.not.i54, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.scalar.ph, !llvm.loop !11195

_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ld = icmp ugt i64 %.sroa.27.2.lcssa.i49, %.sroa.15.0119278
  br i1 %i.ld, label %bb.ad, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit", !prof !12

.outer._crit_edge.thread:                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit

bb.ad:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i49, i64 noundef %.sroa.15.0119278, i64 noundef %.sroa.15.0119278, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @465) #57, !noalias !11228
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lf = icmp ult i64 %i.kj, 33
  br i1 %i.lf, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @462, ptr %i.a, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.lh, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.lj, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #57
  unreachable

bb.af:                                            ; preds = %bb.w
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph126) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %i.lk, i64 noundef %i.hf, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.eh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ll = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ll, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #32 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val11 = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
end_hunk_0
