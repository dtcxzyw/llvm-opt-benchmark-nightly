Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable:bb.a
  %i.ai = load i32, ptr %.0602735, align 4, !tbaa !328 ; 2 uses
  %i.aj = and i32 %.0601, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ak = phi i32 [ %i.ad, %.thread ], [ %i.ai, %bb.n ] ; 4 uses
  %.0601713 = phi i32 [ -1, %.thread ], [ %.0601, %bb.n ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0602735, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !338 ; 3 uses
  %i.an = and i32 %i.ak, 16
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = fcmp ogt float %i.am, 0.000000e+00      ; 3 uses
  %or.cond.i = and i1 %i.ao, %i.ap
  %i.aq = select i1 %or.cond.i, float %i.am, float -1.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %.0602735, i64 16
  store float %i.aq, ptr %i.ar, align 4, !tbaa !332
  %i.as = and i32 %i.ak, 8
  %.not28.i = icmp ne i32 %i.as, 0
  %or.cond37.not.i = select i1 %i.ap, i1 %.not28.i, i1 false
  %i.at = select i1 %or.cond37.not.i, float %i.am, float -1.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %.0602735, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !336
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.0602735, i64 115 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = and i16 %i.aw, -16
  store i16 %i.ax, ptr %i.av, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi i32 [ %i.ak, %bb.p ], [ %i.ak, %bb.o ], [ %i.ai, %bb.n ] ; 3 uses
  %.0601714 = phi i32 [ %.0601713, %bb.p ], [ %.0601713, %bb.o ], [ %.0601, %bb.n ] ; 3 uses
  %i.az = and i32 %.0601714, 2
  %.not29.i = icmp eq i32 %i.az, 0
  br i1 %.not29.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !217
  %i.bb = and i32 %i.ba, 2
  %.not30.i = icmp eq i32 %i.bb, 0
  br i1 %.not30.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !271
  %i.bd = ptrtoint ptr %.0602735 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 120
  %i.bh = trunc i64 %i.bg to i16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = phi i16 [ %i.bh, %bb.s ], [ -1, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0602735, i64 90
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !305
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.bk = and i32 %.0601714, 4
  %.not31.i = icmp eq i32 %i.bk, 0
  br i1 %.not31.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = and i32 %i.ay, 2
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.0602735, i64 108
  %i.bo = zext i1 %i.bm to i8                     ; 2 uses
  store i8 %i.bo, ptr %i.bn, align 4, !tbaa !307
  %i.bp = getelementptr inbounds nuw i8, ptr %.0602735, i64 107
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !308
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = and i32 %.0601714, 8
  %.not33.i = icmp eq i32 %i.bq, 0
  br i1 %.not33.i, label %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = and i32 %i.ay, 4
  %.not34.i = icmp eq i32 %i.br, 0                ; 2 uses
  %i.bs = sext i1 %.not34.i to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0602735, i64 98
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !339
  %i.bu = and i32 %i.ay, 32768
  %.not35.i = icmp eq i32 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.0602735, i64 115 ; 2 uses
  %i.bw = select i1 %.not35.i, i16 256, i16 512
  %i.bx = select i1 %.not34.i, i16 0, i16 %i.bw
  %i.by = load i16, ptr %i.bv, align 1
  %i.bz = and i16 %i.by, -769
  %i.ca = or disjoint i16 %i.bz, %i.bx
  store i16 %i.ca, ptr %i.bv, align 1
  br label %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit

_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit: ; preds = %bb.w, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.0602735, i64 120 ; 2 uses
  %.not618 = icmp eq ptr %i.cb, %i.v
  br i1 %.not618, label %._crit_edge, label %bb.j

bb.y:                                             ; preds = %._crit_edge, %bb.h
  tail call void @_ZN5ImGui24TableApplyQueuedRequestsEP10ImGuiTable(ptr noundef nonnull %0)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !340 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !317 ; 4 uses
  %i.cg = fcmp une float %i.cf, 0.000000e+00
  %i.ch = fcmp une float %i.cf, %i.cd
  %or.cond667 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond667, label %bb.z, label %.loopexit733

bb.z:                                             ; preds = %bb.y
  %i.ci = fdiv float %i.cd, %i.cf                 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !272
  %i.cl = and i32 %i.ck, 4096
  %.not619 = icmp eq i32 %i.cl, 0
  br i1 %.not619, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %0, align 8, !tbaa !218
  %i.cn = fpext float %i.cf to double
  %i.co = fpext float %i.cd to double
  %i.cp = fpext float %i.ci to double
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.2, i32 noundef %i.cm, double noundef %i.cn, double noundef %i.co, double noundef %i.cp)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = icmp sgt i32 %i.e, 0
  br i1 %i.cq, label %.lr.ph741, label %.loopexit733

.lr.ph741:                                        ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !271 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ct = icmp ult i32 %i.e, 4
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph741.new

.lr.ph741.new:                                    ; preds = %.lr.ph741
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph741.new
  %indvars.iv = phi i64 [ 0, %.lr.ph741.new ], [ %indvars.iv.next.3, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph741.new ], [ %niter.next.3, %bb.ac ]
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !332
  %i.cx = fmul float %i.ci, %i.cw
  store float %i.cx, ptr %i.cv, align 4, !tbaa !332
  %i.cy = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 136 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !332
  %i.db = fmul float %i.ci, %i.da
  store float %i.db, ptr %i.cz, align 4, !tbaa !332
  %i.dc = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 256 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !332
  %i.df = fmul float %i.ci, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !332
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 376 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !332
  %i.dj = fmul float %i.ci, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !332
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit733.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !541

.loopexit733.loopexit.unr-lcssa:                  ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit733, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit733.loopexit.unr-lcssa, %.lr.ph741
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph741 ], [ %indvars.iv.next.3, %.loopexit733.loopexit.unr-lcssa ]
  %lcmp.mod868 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod868)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ad ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv.epil
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !332
  %i.dn = fmul float %i.ci, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !332
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit733, label %bb.ad, !llvm.loop !542

.loopexit733:                                     ; preds = %.loopexit733.loopexit.unr-lcssa, %bb.ad, %bb.ab, %bb.y
  store float %i.cd, ptr %i.ce, align 4, !tbaa !317
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 16 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !217
  %2 = and i32 %i.dp, 57344                       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  store i8 1, ptr %i.dq, align 4, !tbaa !341
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 579 ; 2 uses
  store i8 1, ptr %i.dr, align 1, !tbaa !342
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 514 ; 5 uses
  store i16 0, ptr %i.ds, align 2, !tbaa !343
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !280
  %i.dv = add nsw i32 %i.e, 31
  %i.dw = ashr i32 %i.dv, 5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 2                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.du, i8 0, i64 %i.dy, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.dy, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 542 ; 3 uses
  store i16 -1, ptr %i.eb, align 2, !tbaa !549
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !344 ; 2 uses
  %i.ee = fcmp ole float %i.ed, 1.000000e+00
  %i.ef = select i1 %i.ee, float 1.000000e+00, float %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  store float %i.ef, ptr %i.eg, align 8, !tbaa !329
  %i.eh = icmp sgt i32 %i.e, 0                    ; 5 uses
  br i1 %i.eh, label %.lr.ph751, label %._crit_edge752

.lr.ph751:                                        ; preds = %.loopexit733
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 518
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.trip.count788 = zext nneg i32 %i.e to i64
  br label %bb.ae

._crit_edge752.loopexit:                          ; preds = %bb.bp
  %i.eo = trunc nsw i32 %.1593 to i16
  %i.ep = sitofp i32 %.2596 to float
  %i.eq = icmp ne i8 %.2588, 0
  br label %._crit_edge752

._crit_edge752:                                   ; preds = %._crit_edge752.loopexit, %.loopexit733
  %.0597.lcssa = phi i16 [ 0, %.loopexit733 ], [ %.2599, %._crit_edge752.loopexit ]
  %.0594.lcssa = phi float [ 0.000000e+00, %.loopexit733 ], [ %i.ep, %._crit_edge752.loopexit ]
  %.0592.lcssa = phi i16 [ -1, %.loopexit733 ], [ %i.eo, %._crit_edge752.loopexit ]
  %.0589.lcssa = phi i1 [ false, %.loopexit733 ], [ %.2591, %._crit_edge752.loopexit ]
  %.0586.lcssa = phi i1 [ false, %.loopexit733 ], [ %i.eq, %._crit_edge752.loopexit ]
  %.0583.lcssa = phi float [ 0.000000e+00, %.loopexit733 ], [ %.2585, %._crit_edge752.loopexit ]
  %.0580.lcssa = phi float [ 0.000000e+00, %.loopexit733 ], [ %.2582, %._crit_edge752.loopexit ]
  %i.er = load i32, ptr %i.do, align 4, !tbaa !217 ; 2 uses
  %i.es = and i32 %i.er, 8
  %.not620 = icmp eq i32 %i.es, 0
  br i1 %.not620, label %bb.bs, label %bb.bq

bb.ae:                                            ; preds = %.lr.ph751, %bb.bp
  %indvars.iv786 = phi i64 [ 0, %.lr.ph751 ], [ %indvars.iv.next787, %bb.bp ] ; 3 uses
  %.0580748 = phi float [ 0.000000e+00, %.lr.ph751 ], [ %.2582, %bb.bp ] ; 4 uses
  %.0583747 = phi float [ 0.000000e+00, %.lr.ph751 ], [ %.2585, %bb.bp ] ; 3 uses
  %.0586746 = phi i8 [ 0, %.lr.ph751 ], [ %.2588, %bb.bp ] ; 2 uses
  %.0589745 = phi i1 [ false, %.lr.ph751 ], [ %.2591, %bb.bp ] ; 2 uses
  %.0592744 = phi i32 [ -1, %.lr.ph751 ], [ %.1593, %bb.bp ] ; 4 uses
  %.0594743 = phi i32 [ 0, %.lr.ph751 ], [ %.2596, %bb.bp ] ; 3 uses
  %.0597742 = phi i16 [ 0, %.lr.ph751 ], [ %.2599, %bb.bp ] ; 3 uses
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !275
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %indvars.iv786
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !300 ; 6 uses
  %i.ew = sext i16 %i.ev to i32                   ; 4 uses
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !271
  %i.ey = sext i16 %i.ev to i64
  %i.ez = getelementptr inbounds [120 x i8], ptr %i.ex, i64 %i.ey ; 32 uses
  %i.fa = load i16, ptr %i.ek, align 2, !tbaa !257
  %.not650 = icmp sgt i16 %i.fa, %i.ev
  br i1 %.not650, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr noundef nonnull %0, ptr noundef %i.ez, i32 noundef 0)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  store i16 -1, ptr %i.fb, align 4, !tbaa !345
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  store i32 0, ptr %i.fc, align 4, !tbaa !346
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 52
  store i32 0, ptr %i.fd, align 4, !tbaa !347
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store float -1.000000e+00, ptr %i.fe, align 4, !tbaa !338
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ff = load i32, ptr %i.do, align 4, !tbaa !217
  %i.fg = and i32 %i.ff, 4
  %.not651 = icmp eq i32 %i.fg, 0
  br i1 %.not651, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load i32, ptr %i.ez, align 4, !tbaa !328
  %i.fi = and i32 %i.fh, 128
  %.not652 = icmp eq i32 %i.fi, 0
  br i1 %.not652, label %._crit_edge807, label %bb.ai

._crit_edge807:                                   ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ez, i64 108
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !307, !range !175
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 108
  store i8 1, ptr %i.fj, align 4, !tbaa !307
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge807, %bb.ai
  %i.fk = phi i8 [ %.pre, %._crit_edge807 ], [ 1, %bb.ai ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 107 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !308, !range !175, !noundef !176
  %.not653 = icmp eq i8 %i.fm, %i.fk
  br i1 %.not653, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !308
  store i8 1, ptr %i.el, align 2, !tbaa !284
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre808 = load i32, ptr %i.ez, align 4, !tbaa !328 ; 3 uses
  %i.fn = trunc i32 %.pre808 to i8
  %i.fo = and i8 %i.fn, 1
  %i.fp = xor i8 %i.fo, 1
  %i.fq = and i8 %i.fk, %i.fp                     ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 106
  store i8 %i.fq, ptr %i.fr, align 2, !tbaa !309
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 113 ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = and i8 %i.ft, -3
  store i8 %i.fu, ptr %i.fs, align 1
  %i.fv = zext nneg i8 %i.fq to i32
  %i.fw = lshr i32 %.pre808, 1
  %.lobit = and i32 %i.fw, 1
  %.not655.not = icmp eq i32 %.lobit, %i.fv
  br i1 %.not655.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.dq, align 4, !tbaa !341
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fx = sext i16 %i.ev to i64
  %.not656 = icmp eq i64 %indvars.iv786, %i.fx
  br i1 %.not656, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.dr, align 1, !tbaa !342
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 98
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !339 ; 2 uses
  %.not657 = icmp eq i16 %i.fz, -1
  br i1 %.not657, label %.thread715, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = trunc nuw i8 %i.fq to i1
  br i1 %i.ga, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i8 1, ptr %i.em, align 1, !tbaa !288
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gb = icmp sgt i16 %i.fz, 0
  br i1 %i.gb, label %bb.at, label %.thread715

bb.at:                                            ; preds = %bb.as
  %i.gc = load i32, ptr %i.do, align 4, !tbaa !217
  %i.gd = and i32 %i.gc, 67108864
  %.not658 = icmp eq i32 %i.gd, 0
  br i1 %.not658, label %bb.au, label %.thread715

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.em, align 1, !tbaa !288
  br label %.thread715

.thread715:                                       ; preds = %bb.ap, %bb.au, %bb.at, %bb.as
  %i.ge = and i32 %.pre808, 16
  %.not659 = icmp eq i32 %i.ge, 0
  %.in660.in.v = select i1 %.not659, i64 28, i64 16
  %.in660.in = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.in660.in.v
  %.in660 = load float, ptr %.in660.in, align 4, !tbaa !177
  %i.gf = fcmp olt float %.in660, 0.000000e+00
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread715
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 115 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 1
  %i.gi = and i16 %i.gh, -256
  %i.gj = or disjoint i16 %i.gi, 119
  store i16 %i.gj, ptr %i.gg, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread715
  %i.gk = trunc nuw i8 %i.fq to i1
  br i1 %i.gk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ez, i64 92
  store i16 -1, ptr %i.gl, align 4, !tbaa !348
  br label %bb.bp

bb.ay:                                            ; preds = %bb.aw
  %i.gm = trunc nsw i32 %.0592744 to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ez, i64 94
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !335
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  store i16 -1, ptr %i.go, align 4, !tbaa !333
  %.not661 = icmp eq i32 %.0592744, -1
  br i1 %.not661, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gp = load ptr, ptr %i.ej, align 8, !tbaa !271
  %i.gq = sext i32 %.0592744 to i64
  %i.gr = getelementptr inbounds [120 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  store i16 %i.ev, ptr %i.gs, align 4, !tbaa !333
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i16 %i.ev, ptr %i.eb, align 2, !tbaa !549
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gt = load i16, ptr %i.ds, align 2, !tbaa !343 ; 2 uses
  %i.gu = add i16 %i.gt, 1
  store i16 %i.gu, ptr %i.ds, align 2, !tbaa !343
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ez, i64 92
  store i16 %i.gt, ptr %i.gv, align 4, !tbaa !348
  %i.gw = load ptr, ptr %i.dt, align 8, !tbaa !280
  %i.gx = and i32 %i.ew, 31
  %i.gy = shl nuw i32 1, %i.gx
  %i.gz = ashr i32 %i.ew, 5
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !299
  %i.hd = or i32 %i.hc, %i.gy
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !299
  %i.he = load ptr, ptr %i.dz, align 8, !tbaa !279
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ez, i64 90
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !305
  %i.hh = sext i16 %i.hg to i32                   ; 2 uses
  %i.hi = and i32 %i.hh, 31
  %i.hj = shl nuw i32 1, %i.hi
  %i.hk = ashr i32 %i.hh, 5
  %i.hl = sext i32 %i.hk to i64
end_hunk_0
begin_hunk_1_@_ZN5ImGui16TableDrawBordersEP10ImGuiTable:bb.a
_ZL23TableGetColumnBorderColP10ImGuiTableii.exit: ; preds = %bb.z, %bb.ac, %bb.ad
  %.0.i120 = phi i32 [ %i.eh, %bb.z ], [ %i.ek, %bb.ac ], [ %i.el, %bb.ad ]
  tail call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.dj, float noundef %i.be, float noundef %.0, i32 noundef %.0.i120, float noundef 1.000000e+00)
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !221
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.n, %bb.p, %bb.q, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit, %bb.v
  %indvars.iv.next.pre-phi = phi i64 [ %.pre125, %._crit_edge ], [ %i.df, %bb.n ], [ %i.df, %bb.p ], [ %i.df, %bb.q ], [ %i.df, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit ], [ %i.df, %bb.v ] ; 2 uses
  %i.em = phi i32 [ %i.cg, %._crit_edge ], [ %i.cg, %bb.n ], [ %i.cg, %bb.p ], [ %i.cg, %bb.q ], [ %.pre, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit ], [ %i.cg, %bb.v ] ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next.pre-phi, %i.en
  br i1 %i.eo, label %bb.k, label %.loopexit.loopexit, !llvm.loop !613

.loopexit.loopexit:                               ; preds = %bb.ae
  %.pre123 = load i32, ptr %i.ba, align 4, !tbaa !217
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.j
  %i.ep = phi i32 [ %.pre123, %.loopexit.loopexit ], [ %i.bb, %.preheader ], [ %i.bb, %bb.j ] ; 4 uses
  %i.eq = and i32 %i.ep, 1280                     ; 2 uses
  %.not110 = icmp eq i32 %i.eq, 0
  br i1 %.not110, label %bb.am, label %bb.af

bb.af:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !230
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.es = load i32, ptr %i.er, align 4, !tbaa !261 ; 5 uses
  %i.et = icmp eq i32 %i.eq, 1280
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.z, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.eu, i32 noundef %i.es, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.ev = and i32 %i.ep, 1024
  %.not111 = icmp eq i32 %i.ev, 0
  br i1 %.not111, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ew = load float, ptr %1, align 4, !tbaa !359
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !437 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !449 ; 2 uses
  tail call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.ew, float noundef %i.ey, float noundef %i.fb, i32 noundef %i.es, float noundef 1.000000e+00)
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !358
  tail call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.fc, float noundef %i.ey, float noundef %i.fb, i32 noundef %i.es, float noundef 1.000000e+00)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.fd = and i32 %i.ep, 256
  %.not112 = icmp eq i32 %i.fd, 0
  br i1 %.not112, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fe = load float, ptr %1, align 4, !tbaa !359 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !358 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !437
  tail call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.fe, float noundef %i.fg, float noundef %i.fi, i32 noundef %i.es, float noundef 1.000000e+00)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !449
  %i.fl = fadd float %i.fk, -1.000000e+00
  tail call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.fe, float noundef %i.fg, float noundef %i.fl, i32 noundef %i.es, float noundef 1.000000e+00)
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %.pre124 = load i32, ptr %i.ba, align 4, !tbaa !217
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit
  %i.fm = phi i32 [ %.pre124, %bb.al ], [ %i.ep, %.loopexit ]
  %i.fn = and i32 %i.fm, 128
  %.not113 = icmp eq i32 %i.fn, 0
  br i1 %.not113, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !253 ; 4 uses
  %i.fq = load float, ptr %i.n, align 4, !tbaa !364
  %i.fr = fcmp olt float %i.fp, %i.fq
  br i1 %i.fr, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !454
  %i.fu = fcmp ult float %i.fp, %i.ft
  br i1 %i.fu, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !455
  %i.fx = fcmp olt float %i.fp, %i.fw
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !388
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !389
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !262
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.z, float noundef %i.fz, float noundef %i.gb, float noundef %i.fp, i32 noundef %i.gd, float noundef 1.000000e+00)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.an, %bb.am
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.z)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.ar
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TableMergeDrawChannelsEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca [4 x %struct.MergeGroup], align 16  ; 13 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.e = load i16, ptr %i.d, align 2, !tbaa !371
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 558 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = icmp sgt i16 %i.e, 0                     ; 6 uses
  %i.m = icmp sgt i16 %i.g, 0                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  %i.r = load i32, ptr %i.n, align 4, !tbaa !221
  %i.s = shl nsw i32 %i.r, 1
  %i.t = add nsw i32 %i.s, 34                     ; 2 uses
  %i.u = ashr i32 %i.t, 3
  %i.v = and i32 %i.u, -4                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 10920
  %i.x = mul nsw i32 %i.v, 5                      ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10924 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !318
  %.not.i = icmp sgt i32 %i.x, %i.z
  br i1 %.not.i, label %bb.b, label %._ZN8ImVectorIcE7reserveEi.exit_crit_edge

._ZN8ImVectorIcE7reserveEi.exit_crit_edge:        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 10928
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !414
  %.pre235 = sext i32 %i.x to i64
  br label %_ZN8ImVectorIcE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %i.ab = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 10928 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !319 ; 2 uses
  %.not6.i = icmp eq ptr %i.ad, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.w, align 8, !tbaa !320
  %i.af = sext i32 %i.ae to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !319
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ag)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !319
  store i32 %i.x, ptr %i.y, align 4, !tbaa !318
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIcE7reserveEi.exit_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre235, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %i.aa, %bb.d ]
  %i.ah = phi ptr [ %.pre, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %i.ab, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 10928
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %.pre-phi, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !414 ; 6 uses
  %i.ak = sext i32 %i.v to i64                    ; 3 uses
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !626
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.al, ptr %i.i, align 8, !tbaa !626
  %i.am = shl nsw i64 %i.ak, 1
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  store ptr %i.an, ptr %i.j, align 8, !tbaa !626
  %i.ao = mul nsw i64 %i.ak, 3
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !626
  %2 = shl nsw i32 %i.v, 2
  %3 = sext i32 %2 to i64                         ; 2 uses
  %4 = getelementptr i8, ptr %i.aj, i64 %3        ; 8 uses
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !221 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN8ImVectorIcE7reserveEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !281
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = select i1 %i.l, i32 0, i32 2
  br label %bb.e

._crit_edge:                                      ; preds = %bb.aa
  %i.ax = icmp eq i32 %.3159, 0
  br i1 %i.ax, label %._crit_edge.thread, label %bb.ab

bb.e:                                             ; preds = %.lr.ph, %bb.aa
  %i.ay = phi i32 [ %i.aq, %.lr.ph ], [ %i.fw, %bb.aa ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 6 uses
  %.0156187 = phi i32 [ 0, %.lr.ph ], [ %.3159, %bb.aa ] ; 5 uses
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  %i.ba = lshr i64 %indvars.iv, 5
  %i.bb = and i64 %i.ba, 134217727
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !299
  %i.be = and i32 %i.az, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = and i32 %i.bd, %i.bf
  %.not165 = icmp eq i32 %i.bg, 0
  br i1 %.not165, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !271
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.bh, i64 %indvars.iv ; 9 uses
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !191 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 76 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 44 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %i.bi, i64 102
  %i.bo = load i16, ptr %.in, align 2, !tbaa !300 ; 2 uses
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = zext i16 %i.bo to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bq ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !628 ; 5 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %.thread

.thread.1:                                        ; preds = %bb.r, %thread-pre-split.1, %bb.w, %_ZN6ImRect3AddERKS_.exit.1, %.thread
  %.2158.lcssa = phi i32 [ %.2158, %.thread ], [ %.2158, %bb.w ], [ %i.fv, %_ZN6ImRect3AddERKS_.exit.1 ], [ %.2158, %thread-pre-split.1 ], [ %.2158, %bb.r ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  store i16 -1, ptr %i.bu, align 4, !tbaa !423
  %.pre229 = load i32, ptr %i.n, align 4, !tbaa !221
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !629 ; 2 uses
  %i.bx = zext nneg i32 %i.bs to i64
  %i.by = getelementptr [72 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !631
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr i8, ptr %i.by, i64 -24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !632
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.cf = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !633
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h, %bb.g, %bb.i
  %i.cg = phi i32 [ %i.cf, %bb.i ], [ %i.bs, %bb.g ], [ %i.bs, %bb.h ]
  %.not166 = icmp eq i32 %i.cg, 1
  br i1 %.not166, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.ch = load i32, ptr %i.bi, align 4, !tbaa !328
  %i.ci = and i32 %i.ch, 256
  %.not167 = icmp eq i32 %i.ci, 0
  br i1 %.not167, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.l, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load float, ptr %i.bk, align 4, !tbaa !350 ; 2 uses
  %i.ck = load float, ptr %i.bl, align 4, !tbaa !458 ; 2 uses
  %i.cl = fcmp oge float %i.cj, %i.ck
  %i.cm = select i1 %i.cl, float %i.cj, float %i.ck
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cn = load float, ptr %i.bm, align 4, !tbaa !349 ; 2 uses
  %i.co = load float, ptr %i.bl, align 4, !tbaa !458 ; 2 uses
  %i.cp = fcmp oge float %i.cn, %i.co
  %i.cq = select i1 %i.cp, float %i.cn, float %i.co
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0151 = phi float [ %i.cq, %bb.m ], [ %i.cm, %bb.l ]
  %i.cr = load float, ptr %i.bn, align 4, !tbaa !384
  %i.cs = fcmp ule float %.0151, %i.cr
  br i1 %i.cs, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %bb.j
  br i1 %i.m, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load i16, ptr %i.f, align 2, !tbaa !370
  %i.cu = sext i16 %i.ct to i64
  %i.cv = icmp sge i64 %indvars.iv, %i.cu
  %i.cw = zext i1 %i.cv to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %not. = phi i32 [ 1, %bb.o ], [ %i.cw, %bb.p ]
  %i.cx = or disjoint i32 %not., %i.aw            ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.db = load i32, ptr %i.da, align 16, !tbaa !634 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZN6ImRect3AddERKS_.exit, label %._ZN6ImRect3AddERKS_.exit_crit_edge

._ZN6ImRect3AddERKS_.exit_crit_edge:              ; preds = %bb.q
  %i.dd = load <4 x float>, ptr %i.cz, align 16, !tbaa !177
  br label %_ZN6ImRect3AddERKS_.exit

_ZN6ImRect3AddERKS_.exit:                         ; preds = %bb.q, %._ZN6ImRect3AddERKS_.exit_crit_edge
  %i.de = phi <4 x float> [ %i.dd, %._ZN6ImRect3AddERKS_.exit_crit_edge ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.q ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !626
  %i.dh = and i32 %i.bp, 31
  %i.di = shl nuw i32 1, %i.dh
  %i.dj = lshr i32 %i.bp, 5
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !299
  %i.dn = or i32 %i.dm, %i.di
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !299
  %i.do = add nsw i32 %i.db, 1
  store i32 %i.do, ptr %i.da, align 16, !tbaa !634
  %i.dp = load <4 x float>, ptr %i.bw, align 4, !tbaa !177 ; 3 uses
  %i.dq = fcmp ogt <4 x float> %i.de, %i.dp
  %i.dr = fcmp olt <4 x float> %i.de, %i.dp
  %i.ds = shufflevector <4 x i1> %i.dq, <4 x i1> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dt = select <4 x i1> %i.ds, <4 x float> %i.dp, <4 x float> %i.de
  store <4 x float> %i.dt, ptr %i.cz, align 16
  %i.du = shl nuw nsw i32 1, %i.cx
  %i.dv = or i32 %i.du, %.0156187
  br label %.thread

.thread:                                          ; preds = %bb.f, %thread-pre-split, %bb.n, %_ZN6ImRect3AddERKS_.exit
  %.2158 = phi i32 [ %.0156187, %bb.n ], [ %i.dv, %_ZN6ImRect3AddERKS_.exit ], [ %.0156187, %thread-pre-split ], [ %.0156187, %bb.f ] ; 5 uses
  br i1 %i.l, label %bb.r, label %.thread.1

bb.r:                                             ; preds = %.thread
  %.in.1 = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.dw = load i16, ptr %.in.1, align 2, !tbaa !300 ; 2 uses
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = zext i16 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.dy ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !628 ; 5 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %bb.s, label %.thread.1

bb.s:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !629 ; 2 uses
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr [72 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !631
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.t, label %thread-pre-split.1

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr i8, ptr %i.ef, i64 -24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !632
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.u, label %thread-pre-split.1

bb.u:                                             ; preds = %bb.t
  %i.em = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.em, ptr %i.dz, align 8, !tbaa !633
  br label %thread-pre-split.1

thread-pre-split.1:                               ; preds = %bb.u, %bb.t, %bb.s
  %i.en = phi i32 [ %i.em, %bb.u ], [ %i.ea, %bb.s ], [ %i.ea, %bb.t ]
  %.not166.1 = icmp eq i32 %i.en, 1
  br i1 %.not166.1, label %bb.v, label %.thread.1

bb.v:                                             ; preds = %thread-pre-split.1
  %i.eo = load i32, ptr %i.bi, align 4, !tbaa !328
  %i.ep = and i32 %i.eo, 256
  %.not167.1 = icmp eq i32 %i.ep, 0
  br i1 %.not167.1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eq = load float, ptr %i.bk, align 4, !tbaa !350
  %i.er = load float, ptr %i.bn, align 4, !tbaa !384
  %i.es = fcmp ule float %i.eq, %i.er
  br i1 %i.es, label %bb.x, label %.thread.1

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.m, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_1
begin_hunk_2_@_ZN5ImGui22TableMergeDrawChannelsEP10ImGuiTable:bb.a
bb.ab:                                            ; preds = %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 9072 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 7 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !212 ; 2 uses
  %i.gc = add nsw i32 %i.gb, -2                   ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 9076 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !635 ; 4 uses
  %i.gf = icmp sgt i32 %i.gc, %i.ge
  br i1 %i.gf, label %bb.ac, label %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge

._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge: ; preds = %bb.ab
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %i.a, i64 9080
  %.pre231 = load ptr, ptr %.phi.trans.insert230, align 8, !tbaa !636
  br label %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gg = sdiv i32 %i.ge, 2
  %i.gh = add nsw i32 %i.gg, %i.ge
  br label %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i: ; preds = %bb.ad, %bb.ac
  %i.gi = phi i32 [ %i.gh, %bb.ad ], [ 8, %bb.ac ]
  %i.gj = tail call noundef i32 @llvm.smax.i32(i32 %i.gi, i32 %i.gc) ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 5
  %i.gm = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.gl) ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 9080 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !191 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.go, null
  br i1 %.not6.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i
  %i.gp = load i32, ptr %i.fz, align 8, !tbaa !637
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gm, ptr nonnull align 8 %i.go, i64 %i.gr, i1 false)
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !191
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gs)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !191
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !635
  %.pre232 = load i32, ptr %i.ga, align 4, !tbaa !212
  br label %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit

_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit:      ; preds = %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge, %bb.af
  %i.gt = phi i32 [ %i.gb, %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge ], [ %.pre232, %bb.af ] ; 3 uses
  %i.gu = phi ptr [ %.pre231, %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge ], [ %i.gm, %bb.af ]
  store i32 %i.gc, ptr %i.fz, align 8, !tbaa !637
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 9080
  %i.gw = add nsw i32 %i.gt, -1                   ; 2 uses
  %.not.not14.i = icmp sgt i32 %i.gt, 2
  br i1 %.not.not14.i, label %.lr.ph.i, label %_Z21ImBitArraySetBitRangePjii.exit

.lr.ph.i:                                         ; preds = %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit
  %i.gx = and i32 %i.gw, 31
  %i.gy = add nuw nsw i32 %i.gx, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i
  %.015.i = phi i32 [ 2, %.lr.ph.i ], [ %i.hn, %bb.ag ] ; 4 uses
  %i.gz = and i32 %.015.i, 31
  %i.ha = or i32 %.015.i, 31
  %i.hb = icmp sgt i32 %i.gw, %i.ha
  %i.hc = select i1 %i.hb, i32 32, i32 %i.gy
  %i.hd = zext nneg i32 %i.hc to i64
  %notmask.i = shl nsw i64 -1, %i.hd
  %i.he = trunc i64 %notmask.i to i32
  %i.hf = xor i32 %i.he, -1
  %notmask13.i = shl nsw i32 -1, %i.gz
  %i.hg = and i32 %notmask13.i, %i.hf
  %i.hh = ashr i32 %.015.i, 5
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !299
  %i.hl = or i32 %i.hg, %i.hk
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !299
  %i.hm = and i32 %.015.i, -32
  %i.hn = add nsw i32 %i.hm, 32                   ; 2 uses
  %.not.not.i = icmp slt i32 %i.hn, %i.gt
  br i1 %.not.not.i, label %bb.ag, label %_Z21ImBitArraySetBitRangePjii.exit, !llvm.loop !616

_Z21ImBitArraySetBitRangePjii.exit:               ; preds = %bb.ag, %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 566 ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !420
  %i.hq = zext i16 %i.hp to i32                   ; 2 uses
  %i.hr = and i32 %i.hq, 31
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = xor i32 %i.hs, -1
  %i.hu = lshr i32 %i.hq, 5
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !299
  %i.hy = and i32 %i.hx, %i.ht
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !299
  %i.hz = load i32, ptr %i.ga, align 4, !tbaa !212
  %.neg = select i1 %i.l, i32 -3, i32 -2
  %i.ia = add i32 %i.hz, %.neg
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.040.0.copyload = load float, ptr %i.ib, align 8, !tbaa !177 ; 2 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.441.0.copyload = load float, ptr %.sroa.441.0..sroa_idx, align 4, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !177 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.id = ashr i32 %i.t, 5                        ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 0
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %wide.trip.count = zext i32 %i.id to i64        ; 6 uses
  %i.ig = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ih = getelementptr i8, ptr %i.aj, i64 %i.ig
  %scevgep = getelementptr i8, ptr %i.ih, i64 %3
  %min.iters.check = icmp ult i32 %i.id, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ii = add nsw i64 %wide.trip.count, -1
  br label %bb.ah

.preheader:                                       ; preds = %bb.aw
  %i.ij = load i32, ptr %i.ga, align 4, !tbaa !212 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  %i.il = icmp ne i32 %.1146, 0
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %i.im, label %.lr.ph203, label %._crit_edge204

bb.ah:                                            ; preds = %_Z21ImBitArraySetBitRangePjii.exit, %bb.aw
  %indvars.iv215 = phi i64 [ 0, %_Z21ImBitArraySetBitRangePjii.exit ], [ %indvars.iv.next216, %bb.aw ] ; 5 uses
  %.0145198 = phi i32 [ %i.ia, %_Z21ImBitArraySetBitRangePjii.exit ], [ %.1146, %bb.aw ] ; 2 uses
  %.0147197 = phi ptr [ %i.gu, %_Z21ImBitArraySetBitRangePjii.exit ], [ %.4, %bb.aw ] ; 3 uses
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv215 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load i32, ptr %i.io, align 16, !tbaa !634 ; 3 uses
  %.not163 = icmp eq i32 %i.ip, 0
  br i1 %.not163, label %.loopexit.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.in, align 16 ; 3 uses
  %i.iq = trunc i64 %indvars.iv215 to i1          ; 2 uses
  %or.cond = select i1 %i.iq, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.ir = fcmp olt float %.sroa.0.0.vec.extract, %.sroa.040.0.copyload
  %i.is = select i1 %i.ir, float %.sroa.0.0.vec.extract, float %.sroa.040.0.copyload
  %.sroa.0.0.vec.insert = insertelement <4 x float> %.sroa.0.0.copyload, float %i.is, i64 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.0.copyload, %bb.ai ], [ %.sroa.0.0.vec.insert, %bb.aj ] ; 3 uses
  %i.it = icmp samesign ugt i64 %indvars.iv215, 1 ; 2 uses
  %or.cond3 = select i1 %i.it, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.iu = fcmp olt float %.sroa.0.4.vec.extract, %.sroa.441.0.copyload
  %i.iv = select i1 %i.iu, float %.sroa.0.4.vec.extract, float %.sroa.441.0.copyload
  %.sroa.0.4.vec.insert = insertelement <4 x float> %.sroa.0.0, float %i.iv, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.0.1 = phi <4 x float> [ %.sroa.0.0, %bb.ak ], [ %.sroa.0.4.vec.insert, %bb.al ] ; 3 uses
  br i1 %i.iq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.sroa.0.1, i64 2 ; 2 uses
  %i.iw = fcmp oge float %.sroa.0.8.vec.extract, %.sroa.5.0.copyload
  %i.ix = select i1 %i.iw, float %.sroa.0.8.vec.extract, float %.sroa.5.0.copyload
  %.sroa.0.8.vec.insert = insertelement <4 x float> %.sroa.0.1, float %i.ix, i64 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0.2 = phi <4 x float> [ %.sroa.0.8.vec.insert, %bb.an ], [ %.sroa.0.1, %bb.am ] ; 4 uses
  br i1 %i.it, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load i32, ptr %i.ic, align 4, !tbaa !217
  %i.iz = and i32 %i.iy, 131072
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.sroa.0.2, i64 3 ; 2 uses
  %i.jb = fcmp oge float %.sroa.0.12.vec.extract, %.sroa.6.0.copyload
  %i.jc = select i1 %i.jb, float %.sroa.0.12.vec.extract, float %.sroa.6.0.copyload
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.2, float %i.jc, i64 3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.3 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.aq ], [ %.sroa.0.2, %bb.ap ], [ %.sroa.0.2, %bb.ao ] ; 2 uses
  %5 = sub nsw i32 %.0145198, %i.ip               ; 2 uses
  br i1 %i.ie, label %.lr.ph191, label %.preheader183

.lr.ph191:                                        ; preds = %bb.ar
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !626 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph191
  %scevgep251 = getelementptr i8, ptr %i.je, i64 %i.ig
  %bound0 = icmp ult ptr %4, %scevgep251
  %bound1 = icmp ult ptr %i.je, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %index ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load = load <4 x i32>, ptr %i.jf, align 4, !tbaa !299, !alias.scope !638
  %wide.load252 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !299, !alias.scope !638
  %i.jh = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.ji = xor <4 x i32> %wide.load252, splat (i32 -1)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load253 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %wide.load254 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %i.jl = and <4 x i32> %wide.load253, %i.jh
  %i.jm = and <4 x i32> %wide.load254, %i.ji
  store <4 x i32> %i.jl, ptr %i.jj, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  store <4 x i32> %i.jm, ptr %i.jk, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader183, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph191, %middle.block
  %indvars.iv209.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph191 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv209.ph
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !299
  %i.jq = xor i32 %i.jp, -1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv209.ph ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !299
  %i.jt = and i32 %i.js, %i.jq
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !299
  %indvars.iv.next210.prol = or disjoint i64 %indvars.iv209.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv209.unr = phi i64 [ %indvars.iv209.ph, %scalar.ph.preheader ], [ %indvars.iv.next210.prol, %scalar.ph.prol ]
  %i.ju = icmp eq i64 %indvars.iv209.ph, %i.ii
  br i1 %i.ju, label %.preheader183, label %scalar.ph

.preheader183:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ar
  %i.jv = load i32, ptr %i.ga, align 4, !tbaa !212 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph195, label %.loopexit.a

.lr.ph195:                                        ; preds = %.preheader183
  %i.jx = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !626
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %.sroa.0.3, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %.sroa.0.3, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %scalar.ph ], [ %indvars.iv209.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv209
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !299
  %i.kb = xor i32 %i.ka, -1
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv209 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !299
  %i.ke = and i32 %i.kd, %i.kb
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !299
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.next210
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !299
  %i.kh = xor i32 %i.kg, -1
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next210 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !299
  %i.kk = and i32 %i.kj, %i.kh
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !299
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next210.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader183, label %scalar.ph, !llvm.loop !621

bb.as:                                            ; preds = %.lr.ph195, %bb.au
  %i.kl = phi i32 [ %i.jv, %.lr.ph195 ], [ %i.lc, %bb.au ]
  %indvars.iv212 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next213, %bb.au ] ; 4 uses
  %.0143193 = phi i32 [ %i.ip, %.lr.ph195 ], [ %.1, %bb.au ] ; 2 uses
  %.1148192 = phi ptr [ %.0147197, %.lr.ph195 ], [ %.2149, %bb.au ] ; 3 uses
  %i.km = trunc nuw nsw i64 %indvars.iv212 to i32
  %i.kn = lshr i64 %indvars.iv212, 5
  %i.ko = and i64 %i.kn, 134217727
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.ko ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !299 ; 2 uses
  %i.kr = and i32 %i.km, 31
  %i.ks = shl nuw i32 1, %i.kr                    ; 2 uses
  %i.kt = and i32 %i.kq, %i.ks
  %.not164 = icmp eq i32 %i.kt, 0
  br i1 %.not164, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ku = xor i32 %i.ks, -1
  %i.kv = and i32 %i.kq, %i.ku
  store i32 %i.kv, ptr %i.kp, align 4, !tbaa !299
  %i.kw = add nsw i32 %.0143193, -1
  %i.kx = load ptr, ptr %i.if, align 8, !tbaa !191
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %i.kx, i64 %indvars.iv212 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !629 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.la, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.1148192, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.1148192, ptr noundef nonnull align 8 dereferenceable(32) %i.ky, i64 32, i1 false)
  %.pre233 = load i32, ptr %i.ga, align 4, !tbaa !212
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.lc = phi i32 [ %.pre233, %bb.at ], [ %i.kl, %bb.as ] ; 2 uses
  %.2149 = phi ptr [ %i.lb, %bb.at ], [ %.1148192, %bb.as ] ; 2 uses
  %.1 = phi i32 [ %i.kw, %bb.at ], [ %.0143193, %bb.as ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next213, %i.ld
  %i.lf = icmp ne i32 %.1, 0
  %i.lg = select i1 %i.le, i1 %i.lf, i1 false
  br i1 %i.lg, label %bb.as, label %.loopexit.a, !llvm.loop !622

.loopexit.a:                                      ; preds = %bb.au, %.preheader183, %bb.ah
  %.3150 = phi ptr [ %.0147197, %bb.ah ], [ %.0147197, %.preheader183 ], [ %.2149, %bb.au ] ; 3 uses
  %.1146 = phi i32 [ %.0145198, %bb.ah ], [ %5, %.preheader183 ], [ %5, %bb.au ] ; 3 uses
  %i.lh = icmp eq i64 %indvars.iv215, 1
  %or.cond5 = select i1 %i.lh, i1 %i.l, i1 false
  br i1 %or.cond5, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit.a
  %i.li = getelementptr inbounds nuw i8, ptr %.3150, i64 32
  %i.lj = load i16, ptr %i.ho, align 2, !tbaa !420
  %i.lk = load ptr, ptr %i.if, align 8, !tbaa !191
  %i.ll = zext i16 %i.lj to i64
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.lk, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.3150, ptr noundef nonnull align 8 dereferenceable(32) %i.lm, i64 32, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.a, %bb.av
  %.4 = phi ptr [ %i.li, %bb.av ], [ %.3150, %.loopexit.a ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, 4
  br i1 %exitcond218.not, label %.preheader, label %bb.ah, !llvm.loop !623

._crit_edge204:                                   ; preds = %bb.ay, %.preheader
  %.lcssa = phi i32 [ %i.ij, %.preheader ], [ %i.mg, %bb.ay ]
  %i.ln = load ptr, ptr %i.if, align 8, !tbaa !640
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  %i.lp = load ptr, ptr %i.gv, align 8, !tbaa !636
  %i.lq = add nsw i32 %.lcssa, -2
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i64 %i.lr, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lo, ptr align 8 %i.lp, i64 %i.ls, i1 false)
  br label %._crit_edge.thread

.lr.ph203:                                        ; preds = %.preheader, %bb.ay
  %i.lt = phi i32 [ %i.mg, %bb.ay ], [ %i.ij, %.preheader ]
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %.2201 = phi i32 [ %.3, %bb.ay ], [ %.1146, %.preheader ] ; 2 uses
  %.5200 = phi ptr [ %.6, %bb.ay ], [ %.4, %.preheader ] ; 3 uses
  %i.lu = trunc nuw nsw i64 %indvars.iv219 to i32
  %i.lv = lshr i64 %indvars.iv219, 5
  %i.lw = and i64 %i.lv, 134217727
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !299
  %i.lz = and i32 %i.lu, 31
  %i.ma = shl nuw i32 1, %i.lz
  %i.mb = and i32 %i.ly, %i.ma
  %.not162 = icmp eq i32 %i.mb, 0
  br i1 %.not162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph203
  %i.mc = load ptr, ptr %i.if, align 8, !tbaa !191
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.mc, i64 %indvars.iv219
  %i.me = getelementptr inbounds nuw i8, ptr %.5200, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.5200, ptr noundef nonnull align 8 dereferenceable(32) %i.md, i64 32, i1 false)
  %i.mf = add nsw i32 %.2201, -1
  %.pre234 = load i32, ptr %i.ga, align 4, !tbaa !212
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph203, %bb.ax
  %i.mg = phi i32 [ %.pre234, %bb.ax ], [ %i.lt, %.lr.ph203 ] ; 3 uses
  %.6 = phi ptr [ %i.me, %bb.ax ], [ %.5200, %.lr.ph203 ]
  %.3 = phi i32 [ %i.mf, %bb.ax ], [ %.2201, %.lr.ph203 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.mh = sext i32 %i.mg to i64
  %i.mi = icmp slt i64 %indvars.iv.next220, %i.mh
  %i.mj = icmp ne i32 %.3, 0
  %i.mk = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %i.mk, label %.lr.ph203, label %._crit_edge204, !llvm.loop !624

._crit_edge.thread:                               ; preds = %_ZN8ImVectorIcE7reserveEi.exit, %._crit_edge204, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

declare void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui17SetScrollFromPosXEP11ImGuiWindowff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #2

declare void @_ZN5ImGui8EndChildEv() local_unnamed_addr #2

declare void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((578, 579)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 0, ptr %i.a, align 2, !tbaa !284
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %.not67 = icmp eq ptr %i.j, null
  br i1 %.not67, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.p = load i16, ptr %i.o, align 2, !tbaa !461
  %i.q = sext i16 %i.p to i32
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 4, !tbaa !312
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %bb.b, %bb.d, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !218
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  %i.v = tail call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.s, i32 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !287
  %.pre = load i32, ptr %i.t, align 4, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.ac = phi i32 [ %.pre, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.n, %bb.c ]
  %.164 = phi ptr [ %i.v, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.l, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ae = trunc i32 %i.ac to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.164, i64 12
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !314
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 10064
  %i.ah = getelementptr inbounds nuw i8, ptr %.164, i64 16
  %i.ai = load i16, ptr %i.ag, align 8, !tbaa !302
  store i16 %i.ai, ptr %i.ah, align 4, !tbaa !302
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !642
  %i.al = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 11 uses
  store i32 0, ptr %i.al, align 4, !tbaa !315
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.164, i64 20
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !217
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ar = and i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !315
  br i1 %.1, label %bb.n, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.079 = phi i32 [ %i.cu, %bb.m ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.06078 = phi i1 [ %.1, %bb.m ], [ false, %.lr.ph.preheader ]
  %.06177 = phi ptr [ %i.cw, %bb.m ], [ %i.ao, %.lr.ph.preheader ] ; 7 uses
  %.06276 = phi ptr [ %i.cv, %bb.m ], [ %i.ak, %.lr.ph.preheader ] ; 11 uses
  %i.as = load i32, ptr %.06276, align 4, !tbaa !328
  %i.at = and i32 %i.as, 8
  %.not68 = icmp eq i32 %i.at, 0
  %.in.v = select i1 %.not68, i64 16, i64 28
  %.in = getelementptr inbounds nuw i8, ptr %.06276, i64 %.in.v
  %i.au = load float, ptr %.in, align 4, !tbaa !177 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06276, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !411
  store float %i.au, ptr %.06177, align 4, !tbaa !412
  %i.ay = trunc i32 %.079 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.06177, i64 8
  store i16 %i.ay, ptr %i.az, align 4, !tbaa !462
  %i.ba = getelementptr inbounds nuw i8, ptr %.06276, i64 90 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !305
  %i.bc = getelementptr inbounds nuw i8, ptr %.06177, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !463
  %i.bd = getelementptr inbounds nuw i8, ptr %.06276, i64 98 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !339
  %i.bf = getelementptr inbounds nuw i8, ptr %.06177, i64 12
  store i16 %i.be, ptr %i.bf, align 4, !tbaa !413
  %i.bg = getelementptr inbounds nuw i8, ptr %.06276, i64 115
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = and i8 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.06177, i64 14 ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = and i8 %i.bm, -4
end_hunk_2
begin_hunk_3_@_ZN5ImGui21TablePopColumnChannelEv:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !230
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 712 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !401  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !401  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = load i32, ptr %i.w, align 8, !tbaa !457
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ac, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.ab, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !211
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !401
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !423
  %i.ai = zext i16 %i.ah to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.af, i32 noundef %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui17TableGetSortSpecsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.i = load i8, ptr %i.h, align 1, !tbaa !222, !range !175, !noundef !176
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 3 uses
  %i.f = lshr i16 %i.e, 12
  %i.g = zext nneg i16 %i.f to i32
  %i.h = lshr i16 %i.e, 8
  %i.i = and i16 %i.h, 3
  %i.j = zext nneg i16 %i.i to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.g
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 117
  %.val = load i8, ptr %i.m, align 1, !tbaa !418
  %i.n = and i8 %.val, 3
  %i.o = zext nneg i8 %i.n to i16
  %i.p = shl nuw nsw i16 %i.o, 8
  %i.q = and i16 %i.e, -769
  %i.r = or disjoint i16 %i.p, %i.q
  store i16 %i.r, ptr %i.d, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.s, align 1, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN5ImGui31TableGetColumnNextSortDirectionEP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = lshr i16 %i.e, 8                         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 117
  %.val13 = load i8, ptr %i.g, align 1, !tbaa !418 ; 4 uses
  %i.h = zext i8 %.val13 to i16
  %i.i = xor i16 %i.f, %i.h
  %i.j = and i16 %i.i, 3
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 117
  %.val14 = load i8, ptr %i.l, align 1, !tbaa !418
  %i.m = and i8 %.val14, 3
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.n = lshr i8 %.val13, 2
  %i.o = zext nneg i8 %i.n to i16
  %i.p = xor i16 %i.f, %i.o
  %i.q = and i16 %i.p, 3
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i8 %.val13, 4
  %i.t = zext nneg i8 %i.s to i16
  %i.u = xor i16 %i.f, %i.t
  %i.v = and i16 %i.u, 3
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c, %.preheader
  %.01118.lcssa = phi i8 [ 1, %.preheader ], [ 2, %bb.c ], [ 3, %bb.d ]
  %i.x = lshr i16 %i.e, 10
  %i.y = trunc nuw nsw i16 %i.x to i8
  %.rhs.trunc = and i8 %i.y, 3
  %i.z = urem i8 %.01118.lcssa, %.rhs.trunc
  %i.aa = shl nuw nsw i8 %i.z, 1
  %i.ab = lshr i8 %.val13, %i.aa
  %i.ac = and i8 %i.ab, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i8 [ %i.m, %bb.b ], [ %i.ac, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 67108864
  %.not = icmp ne i32 %i.f, 0
  %spec.select = and i1 %2, %.not                 ; 3 uses
  br i1 %spec.select, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !221  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271  ; 21 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i32 %i.h, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi60 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 98
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 218
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 338
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 458
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 578
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 698
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 818
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 938
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 1058
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1178
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1298
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 1418
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 1538
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 1658
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 1778
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 1898
  %i.ar = load i16, ptr %i.ab, align 2, !tbaa !339
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !339
  %i.at = load i16, ptr %i.ad, align 2, !tbaa !339
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !339
  %i.av = load i16, ptr %i.af, align 2, !tbaa !339
  %i.aw = load i16, ptr %i.ag, align 2, !tbaa !339
  %i.ax = load i16, ptr %i.ah, align 2, !tbaa !339
  %i.ay = load i16, ptr %i.ai, align 2, !tbaa !339
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7
  %i.bh = load i16, ptr %i.aj, align 2, !tbaa !339
  %i.bi = load i16, ptr %i.ak, align 2, !tbaa !339
  %i.bj = load i16, ptr %i.al, align 2, !tbaa !339
  %i.bk = load i16, ptr %i.am, align 2, !tbaa !339
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !339
  %i.bm = load i16, ptr %i.ao, align 2, !tbaa !339
  %i.bn = load i16, ptr %i.ap, align 2, !tbaa !339
  %i.bo = load i16, ptr %i.aq, align 2, !tbaa !339
  %i.bp = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 1
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 2
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 3
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 4
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 5
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 6
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 7
  %i.bx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.bg) ; 2 uses
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi60, <8 x i16> %i.bw) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bx, <8 x i16> %i.by)
  %i.ca = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !652

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ca, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi63 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cr, %vec.epilog.vector.body ]
  %i.cb = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cc = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cd = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 98
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 218
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 338
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 458
  %i.cj = load i16, ptr %i.cf, align 2, !tbaa !339
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !339
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !339
  %i.cm = load i16, ptr %i.ci, align 2, !tbaa !339
  %i.cn = insertelement <4 x i16> poison, i16 %i.cj, i64 0
  %i.co = insertelement <4 x i16> %i.cn, i16 %i.ck, i64 1
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cl, i64 2
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 3
  %i.cr = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi63, <4 x i16> %i.cq) ; 2 uses
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !649

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ct = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.cr) ; 2 uses
  %cmp.n65 = icmp eq i64 %n.vec61, %wide.trip.count
  br i1 %cmp.n65, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ]
  %.03740.ph = phi i16 [ 0, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.ct, %vec.epilog.middle.block ], [ %i.ca, %middle.block ], [ %i.cy, %vec.epilog.scalar.ph ]
  %i.cu = add nuw i16 %.lcssa, 1
  br label %._crit_edge

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03740 = phi i16 [ %i.cy, %vec.epilog.scalar.ph ], [ %.03740.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 98
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !339
  %i.cy = tail call noundef i16 @llvm.smax.i16(i16 %.03740, i16 %i.cx) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %i.cz = phi i16 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.cu, %._crit_edge.loopexit ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !271
  %i.dc = sext i32 %0 to i64
  %i.dd = getelementptr inbounds [120 x i8], ptr %i.db, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 115 ; 2 uses
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = and i8 %1, 3                            ; 2 uses
  %i.dh = zext nneg i8 %i.dg to i16
  %i.di = shl nuw nsw i16 %i.dh, 8
  %i.dj = and i16 %i.df, -769
  %i.dk = or disjoint i16 %i.dj, %i.di
  store i16 %i.dk, ptr %i.de, align 1
  %i.dl = icmp eq i8 %i.dg, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 98 ; 2 uses
  br i1 %i.dl, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !339
  %i.do = icmp ne i16 %i.dn, -1
  %or.cond = and i1 %spec.select, %i.do
  br i1 %or.cond, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %._crit_edge
  %.sink = phi i16 [ -1, %._crit_edge ], [ %i.cz, %bb.b ]
  store i16 %.sink, ptr %i.dm, align 2, !tbaa !339
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !221 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.c
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 573 ; 2 uses
  br i1 %spec.select, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us
  %i.dt = phi i32 [ %i.eo, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ %i.dq, %.lr.ph44 ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.du = load ptr, ptr %i.da, align 8, !tbaa !271
  %i.dv = getelementptr inbounds nuw [120 x i8], ptr %i.du, i64 %indvars.iv50 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 98
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !339
  %i.dy = icmp eq i16 %i.dx, -1
  br i1 %i.dy, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph44.split.us
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 115 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 1            ; 3 uses
  %i.eb = lshr i16 %i.ea, 12
  %i.ec = zext nneg i16 %i.eb to i32
  %i.ed = lshr i16 %i.ea, 8
  %i.ee = and i16 %i.ed, 3
  %i.ef = zext nneg i16 %i.ee to i32
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = and i32 %i.eg, %i.ec
  %.not.i.us = icmp eq i32 %i.eh, 0
  br i1 %.not.i.us, label %bb.e, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ei = getelementptr i8, ptr %i.dv, i64 117
  %.val.i.us = load i8, ptr %i.ei, align 1, !tbaa !418
  %i.ej = and i8 %.val.i.us, 3
  %i.ek = zext nneg i8 %i.ej to i16
  %i.el = shl nuw nsw i16 %i.ek, 8
  %i.em = and i16 %i.ea, -769
  %i.en = or disjoint i16 %i.el, %i.em
  store i16 %i.en, ptr %i.dz, align 1
  store i8 1, ptr %i.ds, align 1, !tbaa !288
  %.pre54 = load i32, ptr %i.dp, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us: ; preds = %bb.e, %bb.d, %.lr.ph44.split.us
  %i.eo = phi i32 [ %.pre54, %bb.e ], [ %i.dt, %bb.d ], [ %i.dt, %.lr.ph44.split.us ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next51, %i.ep
  br i1 %i.eq, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !651

._crit_edge45:                                    ; preds = %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, %bb.c
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  store i8 1, ptr %i.er, align 2, !tbaa !284
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 573
  store i8 1, ptr %i.es, align 1, !tbaa !288
  ret void

.lr.ph44.split:                                   ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit
  %i.et = phi i32 [ %i.fn, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %i.dq, %.lr.ph44 ] ; 3 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.eu = load ptr, ptr %i.da, align 8, !tbaa !271
  %i.ev = getelementptr inbounds nuw [120 x i8], ptr %i.eu, i64 %indvars.iv47 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, %i.dd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ev, i64 98 ; 2 uses
  br i1 %i.ew, label %bb.f, label %.thread

.thread:                                          ; preds = %.lr.ph44.split
  store i16 -1, ptr %.phi.trans.insert, align 2, !tbaa !339
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.f:                                             ; preds = %.lr.ph44.split
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !339
  %i.ex = icmp eq i16 %.pre, -1
  br i1 %i.ex, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 115 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 1            ; 3 uses
  %i.fa = lshr i16 %i.ez, 12
  %i.fb = zext nneg i16 %i.fa to i32
  %i.fc = lshr i16 %i.ez, 8
  %i.fd = and i16 %i.fc, 3
  %i.fe = zext nneg i16 %i.fd to i32
  %i.ff = shl nuw nsw i32 1, %i.fe
  %i.fg = and i32 %i.ff, %i.fb
  %.not.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.h:                                             ; preds = %bb.g
  %i.fh = getelementptr i8, ptr %i.ev, i64 117
  %.val.i = load i8, ptr %i.fh, align 1, !tbaa !418
  %i.fi = and i8 %.val.i, 3
  %i.fj = zext nneg i8 %i.fi to i16
  %i.fk = shl nuw nsw i16 %i.fj, 8
  %i.fl = and i16 %i.ez, -769
  %i.fm = or disjoint i16 %i.fk, %i.fl
  store i16 %i.fm, ptr %i.ey, align 1
  store i8 1, ptr %i.ds, align 1, !tbaa !288
  %.pre53 = load i32, ptr %i.dp, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

end_hunk_3
