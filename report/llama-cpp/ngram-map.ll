Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ngram-map?download=true
begin_hunk_0_@_Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_:bb.a

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cp, %.lr.ph.i ] ; 5 uses
  %.071.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.co, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bw = mul i32 %.071.i, -1640531535
  %i.bx = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = mul i32 %i.bz, -1640531535
  %i.cb = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = mul i32 %i.ce, -1640531535
  %i.cg = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = mul i32 %i.cj, -1640531535
  %i.cl = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14
  %i.co = add i32 %i.cn, %i.ck                    ; 3 uses
  %i.cp = add nuw nsw i64 %.02.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cp, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %.071.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.co, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod901 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod901)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.02.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.02.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.071.i.epil = phi i32 [ %i.ct, %.lr.ph.i.epil ], [ %.071.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cq = mul i32 %.071.i.epil, -1640531535
  %i.cr = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i.epil
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = add i32 %i.cs, %i.cq                    ; 2 uses
  %i.cu = add nuw nsw i64 %.02.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !68

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa
  %.lcssa895 = phi i32 [ %i.co, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ]
  %i.cv = zext i32 %.lcssa895 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, %bb.v
  %.07.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.cv, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit ]
  %i.cw = ptrtoint ptr %i.bt to i64
  %i.cx = ptrtoint ptr %i.br to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2
  %i.da = urem i64 %.07.lcssa.i, %i.cz            ; 2 uses
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14 ; 3 uses
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = zext i16 %.fr665 to i64
  %i.dg = xor i64 %i.df, -1
  %i.dh = add nsw i64 %i.ad, %i.dg
  %i.di = icmp ugt i64 %i.dh, %i.de
  br i1 %i.di, label %.preheader565, label %.thread

.preheader565:                                    ; preds = %bb.w
  br i1 %.not543, label %._crit_edge604, label %.lr.ph603

.lr.ph603:                                        ; preds = %.preheader565
  %i.dj = load ptr, ptr %1, align 8, !tbaa !12
  %invariant.gep = getelementptr [4 x i8], ptr %i.dj, i64 %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph603
  %.0335601 = phi i64 [ 0, %.lr.ph603 ], [ %i.dn, %bb.x ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0335601
  %i.dk = load i32, ptr %gep, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0335601
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14
  %.not373 = icmp eq i32 %i.dk, %i.dm             ; 2 uses
  %i.dn = add nuw nsw i64 %.0335601, 1            ; 2 uses
  %exitcond684.not = icmp ne i64 %i.dn, %i.z
  %or.cond.not = select i1 %.not373, i1 %exitcond684.not, i1 false
  br i1 %or.cond.not, label %bb.x, label %._crit_edge604, !llvm.loop !69

._crit_edge604:                                   ; preds = %bb.x, %.preheader565
  %.not374.lcssa = phi i1 [ true, %.preheader565 ], [ %.not373, %bb.x ] ; 2 uses
  %i.do = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %._crit_edge604
  %i.dp = icmp sgt i32 %i.do, 4
  br i1 %i.dp, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dq = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = zext i1 %.not374.lcssa to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.dq, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i32 noundef %i.db, i32 noundef %i.dd, i32 noundef %i.dr)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge604
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ac:                                            ; preds = %bb.aa, %bb.y
  br i1 %.not374.lcssa, label %.critedge.thread, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.ac
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit, %bb.w, %bb.u
  %i.dt = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.bn, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit ], [ %i.bn, %bb.w ], [ %i.bn, %bb.u ] ; 4 uses
  %i.du = add nuw nsw i32 %i.p, 1
  %i.dv = add nuw nsw i32 %i.du, %i.r
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = icmp ugt i64 %i.dt, %i.dw
  %i.dy = zext i16 %.fr665 to i64                 ; 2 uses
  br i1 %i.dx, label %bb.ad, label %.thread518

bb.ad:                                            ; preds = %.thread
  %i.dz = add nuw nsw i64 %i.dy, %i.z
  %i.ea = xor i64 %i.dz, -1
  %i.eb = add i64 %i.dt, %i.ea                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !38
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp ugt i64 %i.eb, %i.ee
  br i1 %i.ef, label %.preheader562.lr.ph, label %.thread518

.preheader562.lr.ph:                              ; preds = %bb.ad
  br i1 %.not543, label %.critedge.thread, label %.preheader562.lr.ph.split.us

.preheader562.lr.ph.split.us:                     ; preds = %.preheader562.lr.ph
  %i.eg = load ptr, ptr %1, align 8, !tbaa !12
  br label %.preheader562.us

.preheader562.us:                                 ; preds = %bb.ag, %.preheader562.lr.ph.split.us
  %.0334613.us = phi i64 [ %i.eb, %.preheader562.lr.ph.split.us ], [ %i.en, %bb.ag ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %.0334613.us
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.ei = add nuw nsw i64 %.0332609.us, 1         ; 2 uses
  %exitcond685.not = icmp eq i64 %i.ei, %i.z
  br i1 %exitcond685.not, label %.critedge.thread, label %bb.af, !llvm.loop !70

bb.af:                                            ; preds = %.preheader562.us, %bb.ae
  %.0332609.us = phi i64 [ 0, %.preheader562.us ], [ %i.ei, %bb.ae ] ; 3 uses
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %.0332609.us
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !14
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0332609.us
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %.not375.us = icmp eq i32 %i.ek, %i.em
  br i1 %.not375.us, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = add i64 %.0334613.us, -1                ; 2 uses
  %i.eo = icmp ugt i64 %i.en, %i.ee
  br i1 %i.eo, label %.preheader562.us, label %.thread518, !llvm.loop !71

.thread518:                                       ; preds = %bb.ag, %.thread, %bb.ad
  %i.ep = xor i64 %i.dy, -1
  %i.eq = add nsw i64 %i.ad, %i.ep                ; 4 uses
  %i.er = icmp ugt i64 %i.eq, %i.dt
  br i1 %i.er, label %.lr.ph620, label %.critedge.thread836

.lr.ph620:                                        ; preds = %.thread518
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.et = load i32, ptr %i.es, align 8, !tbaa !38
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  br i1 %.not543, label %.lr.ph620.split, label %.lr.ph620.split.us

.lr.ph620.split.us:                               ; preds = %.lr.ph620, %bb.aj
  %.0331619.us = phi i64 [ %i.fb, %bb.aj ], [ %i.eq, %.lr.ph620 ] ; 4 uses
  %i.ev = icmp ugt i64 %.0331619.us, %i.eu
  br i1 %i.ev, label %.preheader560.us, label %.critedge.thread836

bb.ah:                                            ; preds = %bb.ai
  %i.ew = add nuw nsw i64 %.0329615.us, 1         ; 2 uses
  %exitcond686.not = icmp eq i64 %i.ew, %i.z
  br i1 %exitcond686.not, label %.critedge.thread, label %bb.ai, !llvm.loop !72

bb.ai:                                            ; preds = %.preheader560.us, %bb.ah
  %.0329615.us = phi i64 [ 0, %.preheader560.us ], [ %i.ew, %bb.ah ] ; 3 uses
  %i.ex = getelementptr [4 x i8], ptr %7, i64 %.0329615.us
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0329615.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %.not377.us = icmp eq i32 %i.ey, %i.fa
  br i1 %.not377.us, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = add i64 %.0331619.us, -1                ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %i.dt
  br i1 %i.fc, label %.lr.ph620.split.us, label %.critedge.thread836, !llvm.loop !73

.preheader560.us:                                 ; preds = %.lr.ph620.split.us
  %6 = load ptr, ptr %1, align 8, !tbaa !12
  %7 = getelementptr [4 x i8], ptr %6, i64 %.0331619.us
  br label %bb.ai

.lr.ph620.split:                                  ; preds = %.lr.ph620
  %i.fd = icmp ugt i64 %i.eq, %i.eu
  br i1 %i.fd, label %.critedge.thread, label %.critedge.thread836

.critedge.thread:                                 ; preds = %bb.ae, %bb.ah, %.lr.ph620.split, %.preheader562.lr.ph, %bb.ac
  %.10527 = phi i64 [ %.0331619.us, %bb.ah ], [ %i.eq, %.lr.ph620.split ], [ %i.de, %bb.ac ], [ %i.eb, %.preheader562.lr.ph ], [ %.0334613.us, %bb.ae ] ; 3 uses
  %i.fe = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ak unwind label %bb.t

bb.ak:                                            ; preds = %.critedge.thread
  %i.ff = icmp sgt i32 %i.fe, 4
  br i1 %i.ff, label %bb.al, label %.critedge.thread836

bb.al:                                            ; preds = %bb.ak
  %i.fg = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.am unwind label %bb.t

bb.am:                                            ; preds = %bb.al
  %i.fh = ptrtoint ptr %.sroa.19.2 to i64
  %i.fi = ptrtoint ptr %.sroa.0.4 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.fg, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.l, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %i.fk, i32 noundef %2, i64 noundef %.10527)
          to label %.critedge.thread836 unwind label %bb.t

.critedge.thread836:                              ; preds = %bb.aj, %.lr.ph620.split.us, %.lr.ph620.split, %.thread518, %bb.ak, %bb.am
  %.not379530 = phi i1 [ false, %bb.ak ], [ false, %bb.am ], [ true, %.lr.ph620.split ], [ true, %.thread518 ], [ true, %.lr.ph620.split.us ], [ true, %bb.aj ]
  %.10528 = phi i64 [ %.10527, %bb.ak ], [ %.10527, %bb.am ], [ 0, %.lr.ph620.split ], [ 0, %.thread518 ], [ 0, %.lr.ph620.split.us ], [ 0, %bb.aj ] ; 7 uses
  %i.fl = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 5 uses
  %i.fm = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 3 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %.critedge.thread836
  %i.fo = load i64, ptr %i.bm, align 8, !tbaa !32 ; 4 uses
  %i.fp = add nuw nsw i32 %i.p, 1
  %i.fq = add nuw nsw i32 %i.fp, %i.r
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = icmp ugt i64 %i.fo, %i.fr
  %i.ft = zext i16 %.fr665 to i64                 ; 2 uses
  br i1 %i.fs, label %bb.ao, label %.loopexit559

bb.ao:                                            ; preds = %bb.an
  %i.fu = add nuw nsw i64 %i.ft, %i.z
  %i.fv = xor i64 %i.fu, -1
  %i.fw = add i64 %i.fo, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !38 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp ugt i64 %i.fw, %i.fz
  br i1 %i.ga, label %.lr.ph624, label %.loopexit559

.lr.ph624:                                        ; preds = %bb.ao
  %i.gb = ptrtoint ptr %i.fm to i64
  %i.gc = ptrtoint ptr %i.fl to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 2
  %xtraiter902 = and i64 %i.z, 3                  ; 3 uses
  %i.gf = icmp ult i16 %.fr, 4
  %unroll_iter907 = and i64 %i.z, 65532
  %lcmp.mod904.not = icmp eq i64 %xtraiter902, 0
  %lcmp.mod906 = icmp ne i64 %xtraiter902, 0
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph624, %bb.as
  %i.gg = phi i32 [ %i.fy, %.lr.ph624 ], [ %i.hn, %bb.as ]
  %.0328622 = phi i64 [ %i.fw, %.lr.ph624 ], [ %i.ho, %bb.as ] ; 3 uses
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427, label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %bb.ap
  %.val = load ptr, ptr %1, align 8
  %i.gh = getelementptr [4 x i8], ptr %.val, i64 %.0328622 ; 5 uses
  br i1 %i.gf, label %.epil.preheader, label %.lr.ph.i422.new

.lr.ph.i422.new:                                  ; preds = %.lr.ph.i422, %.lr.ph.i422.new
  %.02.i423 = phi i64 [ %i.hb, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ] ; 5 uses
  %.071.i424 = phi i32 [ %i.ha, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %niter908 = phi i64 [ %niter908.next.3, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %i.gi = mul i32 %.071.i424, -1640531535
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !14
  %i.gl = add i32 %i.gk, %i.gi
  %i.gm = mul i32 %i.gl, -1640531535
  %i.gn = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !14
  %i.gq = add i32 %i.gp, %i.gm
  %i.gr = mul i32 %i.gq, -1640531535
  %i.gs = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !14
  %i.gv = add i32 %i.gu, %i.gr
  %i.gw = mul i32 %i.gv, -1640531535
  %i.gx = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gy = getelementptr i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !14
  %i.ha = add i32 %i.gz, %i.gw                    ; 3 uses
  %i.hb = add nuw nsw i64 %.02.i423, 4            ; 2 uses
  %niter908.next.3 = add i64 %niter908, 4         ; 2 uses
  %niter908.ncmp.3 = icmp eq i64 %niter908.next.3, %unroll_iter907
  br i1 %niter908.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, label %.lr.ph.i422.new, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa: ; preds = %.lr.ph.i422.new
  br i1 %lcmp.mod904.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, %.lr.ph.i422
  %.02.i423.epil.init = phi i64 [ 0, %.lr.ph.i422 ], [ %i.hb, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  %.071.i424.epil.init = phi i32 [ 0, %.lr.ph.i422 ], [ %i.ha, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod906)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %.02.i423.epil = phi i64 [ %.02.i423.epil.init, %.epil.preheader ], [ %i.hg, %bb.aq ] ; 2 uses
  %.071.i424.epil = phi i32 [ %.071.i424.epil.init, %.epil.preheader ], [ %i.hf, %bb.aq ]
  %epil.iter903 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter903.next, %bb.aq ]
  %i.hc = mul i32 %.071.i424.epil, -1640531535
  %i.hd = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423.epil
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !14
  %i.hf = add i32 %i.he, %i.hc                    ; 2 uses
  %i.hg = add nuw nsw i64 %.02.i423.epil, 1
  %epil.iter903.next = add i64 %epil.iter903, 1   ; 2 uses
  %epil.iter903.cmp.not = icmp eq i64 %epil.iter903.next, %xtraiter902
  br i1 %epil.iter903.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %bb.aq, !llvm.loop !74

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit: ; preds = %bb.aq, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa
  %.lcssa891 = phi i32 [ %i.ha, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ], [ %i.hf, %bb.aq ]
  %i.hh = zext i32 %.lcssa891 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, %bb.ap
  %.07.lcssa.i426 = phi i64 [ 0, %bb.ap ], [ %i.hh, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit ]
  %i.hi = urem i64 %.07.lcssa.i426, %i.ge
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.hm = trunc i64 %.0328622 to i32
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !14
  %.pre757 = load i32, ptr %i.fx, align 8, !tbaa !38
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.hn = phi i32 [ %.pre757, %bb.ar ], [ %i.gg, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427 ] ; 2 uses
  %i.ho = add i64 %.0328622, -1                   ; 2 uses
  %i.hp = zext i32 %i.hn to i64
  %i.hq = icmp ugt i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.ap, label %.loopexit559, !llvm.loop !75

.loopexit559:                                     ; preds = %bb.as, %bb.an, %bb.ao
  %i.hr = xor i64 %i.ft, -1
  %i.hs = add nsw i64 %i.ad, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hu = icmp ugt i64 %i.hs, %i.fo
  br i1 %i.hu, label %.lr.ph627, label %.critedge5

.lr.ph627:                                        ; preds = %.loopexit559
  %i.hv = ptrtoint ptr %i.fm to i64
  %i.hw = ptrtoint ptr %i.fl to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 2
  %xtraiter910 = and i64 %i.z, 3                  ; 3 uses
  %i.hz = icmp ult i16 %.fr, 4
  %unroll_iter915 = and i64 %i.z, 65532
  %lcmp.mod912.not = icmp eq i64 %xtraiter910, 0
  %lcmp.mod914 = icmp ne i64 %xtraiter910, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph627, %bb.ax
  %.0327625 = phi i64 [ %i.hs, %.lr.ph627 ], [ %i.jl, %bb.ax ] ; 4 uses
  %i.ia = load i32, ptr %i.ht, align 8, !tbaa !38
  %i.ib = zext i32 %i.ia to i64
  %i.ic = icmp ugt i64 %.0327625, %i.ib
  br i1 %i.ic, label %bb.au, label %.critedge5

.critedge5:                                       ; preds = %bb.at, %bb.ax, %.loopexit559
  %i.id = trunc i64 %i.hs to i32
  %i.ie = load i32, ptr %i.ht, align 8, !tbaa !14
  %.sroa.speculated491 = tail call i32 @llvm.umax.i32(i32 %i.ie, i32 %i.id)
  store i32 %.sroa.speculated491, ptr %i.ht, align 8, !tbaa !38
  br label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %bb.au
  %.val406 = load ptr, ptr %1, align 8
  %i.if = getelementptr [4 x i8], ptr %.val406, i64 %.0327625 ; 5 uses
  br i1 %i.hz, label %.epil.preheader909, label %.lr.ph.i429.new

.lr.ph.i429.new:                                  ; preds = %.lr.ph.i429, %.lr.ph.i429.new
  %.02.i430 = phi i64 [ %i.iz, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ] ; 5 uses
  %.071.i431 = phi i32 [ %i.iy, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %niter916 = phi i64 [ %niter916.next.3, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %i.ig = mul i32 %.071.i431, -1640531535
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !14
  %i.ij = add i32 %i.ii, %i.ig
  %i.ik = mul i32 %i.ij, -1640531535
end_hunk_0
begin_hunk_1_@_Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_:bb.a
  %i.mb = icmp eq i64 %i.ma, 9223372036854775804
  br i1 %i.mb, label %bb.bm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i443

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc449 unwind label %.loopexit.split-lp

.noexc449:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i443: ; preds = %bb.bl
  %i.mc = ashr exact i64 %i.ma, 2                 ; 3 uses
  %.sroa.speculated.i.i.i444 = tail call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i444, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = tail call i64 @llvm.umin.i64(i64 %i.md, i64 2305843009213693951)
  %i.mg = select i1 %i.me, i64 2305843009213693951, i64 %i.mf ; 3 uses
  %.not.i.i.i445 = icmp ne i64 %i.mg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i445)
  %i.mh = shl nuw nsw i64 %i.mg, 2
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #12
          to label %.noexc450 unwind label %.loopexit ; 4 uses

.noexc450:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i443
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 %i.ma ; 2 uses
  %i.mk = load i32, ptr %i.lu, align 4, !tbaa !14
  store i32 %i.mk, ptr %i.mj, align 4, !tbaa !14
  %i.ml = icmp sgt i64 %i.ma, 0
  br i1 %i.ml, label %bb.bn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i446

bb.bn:                                            ; preds = %.noexc450
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mi, ptr align 4 %i.lx, i64 %i.ma, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i446

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i446: ; preds = %bb.bn, %.noexc450
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 4 ; 2 uses
  %.not.i17.i.i447 = icmp eq ptr %i.lx, null
  br i1 %.not.i17.i.i447, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i446
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.ma) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448: ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i446
  store ptr %i.mi, ptr %3, align 8, !tbaa !12
  store ptr %i.mm, ptr %i.lm, align 8, !tbaa !11
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mg ; 2 uses
  store ptr %i.mn, ptr %i.ln, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit451

_ZNSt6vectorIiSaIiEE9push_backERKi.exit451:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448, %bb.bk
  %i.mo = phi ptr [ %i.mn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448 ], [ %i.lp, %bb.bk ]
  %i.mp = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i448 ], [ %i.lw, %bb.bk ]
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next711, %wide.trip.count713
  br i1 %exitcond714.not, label %._crit_edge663, label %bb.bj, !llvm.loop !84

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i443
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp:                               ; preds = %bb.bm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bp:                                            ; preds = %._crit_edge663
  %i.mq = icmp sgt i32 %i.lo, 4
  br i1 %i.mq, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.mr = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ms = load i64, ptr %i.lb, align 8, !tbaa !40
  %i.mt = load i16, ptr %i.lc, align 8, !tbaa !100
  %i.mu = zext i16 %i.mt to i32
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !11
  %i.mx = load ptr, ptr %3, align 8, !tbaa !12
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = ashr exact i64 %i.na, 2
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.mr, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.ms, i64 noundef %.2326843, i32 noundef %i.mu, i64 noundef %i.nb)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %._crit_edge663
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bt:                                            ; preds = %bb.br, %bb.bp
  store i8 1, ptr %i.c, align 8, !tbaa !49
  store i64 %.2326843, ptr %i.d, align 8, !tbaa !50
  br label %.sink.split

bb.bu:                                            ; preds = %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ne = load i16, ptr %i.nd, align 8, !tbaa !101
  %i.nf = icmp ult i16 %narrow, %i.ne
  br i1 %i.nf, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ng = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.nh = icmp sgt i32 %i.ng, 4
  br i1 %i.nh, label %bb.bx, label %bb.eb

bb.bx:                                            ; preds = %bb.bw
  %i.ni = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nj = load i16, ptr %i.lc, align 8, !tbaa !100
  %i.nk = zext i16 %i.nj to i32
  %i.nl = load i16, ptr %i.nd, align 8, !tbaa !101
  %i.nm = zext i16 %i.nl to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ni, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %.2326843, i32 noundef %i.nk, i32 noundef %i.nm)
          to label %bb.eb unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ca:                                            ; preds = %bb.bu
  %i.no = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !102 ; 2 uses
  %.not382647 = icmp ugt i64 %i.np, %.10528
  br i1 %.not382647, label %._crit_edge649, label %.preheader554.lr.ph

.preheader554.lr.ph:                              ; preds = %bb.ca
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lb, i64 24 ; 3 uses
  %i.nr = zext i16 %.fr665 to i64                 ; 4 uses
  %.not393639.not = icmp eq i16 %.fr665, 0
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lb, i64 56 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lb, i64 72 ; 2 uses
  br label %.preheader554

.preheader554:                                    ; preds = %.preheader554.lr.ph, %.loopexit555
  %.0318648 = phi i64 [ %i.np, %.preheader554.lr.ph ], [ %i.qc, %.loopexit555 ] ; 3 uses
  br i1 %.not543, label %.critedge403, label %.lr.ph638

.lr.ph638:                                        ; preds = %.preheader554
  %i.nv = load ptr, ptr %1, align 8, !tbaa !12
  %i.nw = getelementptr [4 x i8], ptr %i.nv, i64 %.0318648
  br label %bb.cc

._crit_edge649:                                   ; preds = %.loopexit555, %bb.ca
  store i64 %.10528, ptr %i.no, align 8, !tbaa !102
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 8, !tbaa !48 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.oa = load i16, ptr %i.nz, align 8, !tbaa !48 ; 3 uses
  %i.ob = icmp ugt i16 %i.oa, %i.ny
  %spec.select404.1 = tail call i16 @llvm.umax.i16(i16 %i.oa, i16 %i.ny) ; 2 uses
  %spec.select405.1 = zext i1 %i.ob to i32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.od = load i16, ptr %i.oc, align 8, !tbaa !48 ; 3 uses
  %i.oe = icmp ugt i16 %i.od, %spec.select404.1   ; 2 uses
  %spec.select404.2 = tail call i16 @llvm.umax.i16(i16 %i.od, i16 %spec.select404.1) ; 2 uses
  %spec.select405.2 = select i1 %i.oe, i32 2, i32 %spec.select405.1
  %i.of = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %i.lb, i64 80
  %i.oh = load i16, ptr %i.og, align 8, !tbaa !48 ; 3 uses
  %i.oi = icmp ule i16 %i.oh, %spec.select404.2   ; 3 uses
  %spec.select405.3 = select i1 %i.oi, i32 %spec.select405.2, i32 3 ; 6 uses
  %i.oj = zext nneg i32 %spec.select405.3 to i64
  %i.ok = icmp eq i32 %spec.select405.3, 0
  br i1 %i.ok, label %.thread846, label %bb.cl

bb.cb:                                            ; preds = %bb.cc
  %i.ol = add nuw nsw i64 %.0316637, 1            ; 2 uses
  %exitcond691.not = icmp eq i64 %i.ol, %i.z
  br i1 %exitcond691.not, label %.critedge403, label %bb.cc, !llvm.loop !85

bb.cc:                                            ; preds = %.lr.ph638, %bb.cb
  %.0316637 = phi i64 [ 0, %.lr.ph638 ], [ %i.ol, %bb.cb ] ; 3 uses
  %i.om = getelementptr [4 x i8], ptr %i.nw, i64 %.0316637
  %i.on = load i32, ptr %i.om, align 4, !tbaa !14
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0316637
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !14
  %.not390 = icmp eq i32 %i.on, %i.op
  br i1 %.not390, label %bb.cb, label %.loopexit555

.critedge403:                                     ; preds = %bb.cb, %.preheader554
  %i.oq = add i64 %.0318648, %i.z                 ; 2 uses
  %i.or = load i64, ptr %i.nq, align 8, !tbaa !47 ; 2 uses
  %i.os = icmp eq i64 %i.or, 0                    ; 2 uses
  br i1 %.not393639.not, label %.critedge403.split, label %.critedge403.split.us.preheader

.critedge403.split.us.preheader:                  ; preds = %.critedge403
  br i1 %i.os, label %.thread540, label %.preheader551.us

bb.cd:                                            ; preds = %bb.ce
  %i.ot = add nuw nsw i64 %.0311640.us, 1         ; 2 uses
  %exitcond692.not = icmp eq i64 %i.ot, %i.nr
  br i1 %exitcond692.not, label %.loopexit553.split.us.thread, label %bb.ce, !llvm.loop !86

bb.ce:                                            ; preds = %.preheader551.us, %bb.cd
  %.0311640.us = phi i64 [ 0, %.preheader551.us ], [ %i.ot, %bb.cd ] ; 3 uses
  %i.ou = getelementptr [4 x i8], ptr %9, i64 %.0311640.us
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !14
  %i.ow = getelementptr [4 x i8], ptr %10, i64 %.0311640.us
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !14
  %.not392.us = icmp eq i32 %i.ov, %i.ox
  br i1 %.not392.us, label %bb.cd, label %.critedge403.split.us.1

.critedge403.split.us.1:                          ; preds = %bb.ce
  %i.oy = load i64, ptr %i.ns, align 8, !tbaa !47 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %.thread540, label %.preheader551.us.1

.preheader551.us.1:                               ; preds = %.critedge403.split.us.1
  %i.pa = getelementptr [4 x i8], ptr %8, i64 %i.oy
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %.preheader551.us.1
  %.0311640.us.1 = phi i64 [ 0, %.preheader551.us.1 ], [ %i.ph, %bb.cg ] ; 3 uses
  %i.pb = getelementptr [4 x i8], ptr %9, i64 %.0311640.us.1
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !14
  %i.pd = getelementptr [4 x i8], ptr %i.pa, i64 %.0311640.us.1
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !14
  %.not392.us.1 = icmp eq i32 %i.pc, %i.pe
  br i1 %.not392.us.1, label %bb.cg, label %.critedge403.split.us.2

.critedge403.split.us.2:                          ; preds = %bb.cf
  %i.pf = load i64, ptr %i.nt, align 8, !tbaa !47 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %.thread540, label %.preheader551.us.2

bb.cg:                                            ; preds = %bb.cf
  %i.ph = add nuw nsw i64 %.0311640.us.1, 1       ; 2 uses
  %exitcond692.1.not = icmp eq i64 %i.ph, %i.nr
  br i1 %exitcond692.1.not, label %.loopexit553.split.us.thread, label %bb.cf, !llvm.loop !86

.preheader551.us.2:                               ; preds = %.critedge403.split.us.2
  %i.pi = getelementptr [4 x i8], ptr %8, i64 %i.pf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.preheader551.us.2
  %.0311640.us.2 = phi i64 [ 0, %.preheader551.us.2 ], [ %i.pp, %bb.ci ] ; 3 uses
  %i.pj = getelementptr [4 x i8], ptr %9, i64 %.0311640.us.2
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !14
  %i.pl = getelementptr [4 x i8], ptr %i.pi, i64 %.0311640.us.2
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !14
  %.not392.us.2 = icmp eq i32 %i.pk, %i.pm
  br i1 %.not392.us.2, label %bb.ci, label %.critedge403.split.us.3

.critedge403.split.us.3:                          ; preds = %bb.ch
  %i.pn = load i64, ptr %i.nu, align 8, !tbaa !47 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %.thread540, label %.preheader551.us.3

bb.ci:                                            ; preds = %bb.ch
  %i.pp = add nuw nsw i64 %.0311640.us.2, 1       ; 2 uses
  %exitcond692.2.not = icmp eq i64 %i.pp, %i.nr
  br i1 %exitcond692.2.not, label %.loopexit553.split.us.thread, label %bb.ch, !llvm.loop !86

.preheader551.us.3:                               ; preds = %.critedge403.split.us.3
  %i.pq = getelementptr [4 x i8], ptr %8, i64 %i.pn
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %.preheader551.us.3
  %.0311640.us.3 = phi i64 [ 0, %.preheader551.us.3 ], [ %i.pv, %bb.ck ] ; 3 uses
  %i.pr = getelementptr [4 x i8], ptr %9, i64 %.0311640.us.3
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !14
  %i.pt = getelementptr [4 x i8], ptr %i.pq, i64 %.0311640.us.3
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !14
  %.not392.us.3 = icmp eq i32 %i.ps, %i.pu
  br i1 %.not392.us.3, label %bb.ck, label %.loopexit555

bb.ck:                                            ; preds = %bb.cj
  %i.pv = add nuw nsw i64 %.0311640.us.3, 1       ; 2 uses
  %exitcond692.3.not = icmp eq i64 %i.pv, %i.nr
  br i1 %exitcond692.3.not, label %.loopexit553.split.us.thread, label %bb.cj, !llvm.loop !86

.preheader551.us:                                 ; preds = %.critedge403.split.us.preheader
  %8 = load ptr, ptr %1, align 8, !tbaa !12       ; 5 uses
  %9 = getelementptr [4 x i8], ptr %8, i64 %i.oq  ; 4 uses
  %10 = getelementptr [4 x i8], ptr %8, i64 %i.or
  br label %bb.ce

.critedge403.split:                               ; preds = %.critedge403
  br i1 %i.os, label %.thread540, label %.loopexit553.split.us.thread

.thread540:                                       ; preds = %.critedge403.split.us.preheader, %.critedge403.split.us.1, %.critedge403.split.us.2, %.critedge403.split.us.3, %.critedge403.split
  %.us-phi = phi ptr [ %i.nq, %.critedge403.split ], [ %i.nq, %.critedge403.split.us.preheader ], [ %i.ns, %.critedge403.split.us.1 ], [ %i.nt, %.critedge403.split.us.2 ], [ %i.nu, %.critedge403.split.us.3 ] ; 3 uses
  %.us-phi645 = phi i64 [ 0, %.critedge403.split ], [ 0, %.critedge403.split.us.preheader ], [ 1, %.critedge403.split.us.1 ], [ 2, %.critedge403.split.us.2 ], [ 3, %.critedge403.split.us.3 ]
  store i64 %i.oq, ptr %.us-phi, align 8, !tbaa !47
  %i.pw = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  store i16 0, ptr %i.pw, align 8, !tbaa !48
  %i.px = getelementptr inbounds nuw i8, ptr %.us-phi, i64 10
  store i16 %.fr665, ptr %i.px, align 2, !tbaa !52
  br label %.loopexit553.split.us.thread

.loopexit553.split.us.thread:                     ; preds = %bb.cd, %bb.cg, %bb.ci, %bb.ck, %.critedge403.split, %.thread540
  %.3542 = phi i64 [ %.us-phi645, %.thread540 ], [ 0, %.critedge403.split ], [ 3, %bb.ck ], [ 2, %bb.ci ], [ 1, %bb.cg ], [ 0, %bb.cd ]
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %.3542
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32 ; 2 uses
  %i.qa = load i16, ptr %i.pz, align 8, !tbaa !48
  %i.qb = tail call i16 @llvm.umin.i16(i16 %i.qa, i16 16379)
  %narrow544 = add nuw nsw i16 %i.qb, 1
  store i16 %narrow544, ptr %i.pz, align 8, !tbaa !48
  br label %.loopexit555

.loopexit555:                                     ; preds = %bb.cc, %bb.cj, %.loopexit553.split.us.thread
  %i.qc = add i64 %.0318648, 1                    ; 2 uses
  %.not382 = icmp ugt i64 %i.qc, %.10528
  br i1 %.not382, label %._crit_edge649, label %.preheader554, !llvm.loop !87

bb.cl:                                            ; preds = %._crit_edge649
  %i.qd = zext i16 %i.ny to i32                   ; 2 uses
  %i.qe = icmp eq i32 %spec.select405.3, 1
  br i1 %i.qe, label %bb.cm, label %.thread846

.thread846:                                       ; preds = %._crit_edge649, %bb.cl
  %.1848 = phi i32 [ %i.qd, %bb.cl ], [ 0, %._crit_edge649 ]
  %i.qf = zext i16 %i.oa to i32
  %i.qg = add nuw nsw i32 %.1848, %i.qf
  br label %bb.cm

bb.cm:                                            ; preds = %.thread846, %bb.cl
  %.1.1 = phi i32 [ %i.qd, %bb.cl ], [ %i.qg, %.thread846 ]
  %i.qh = and i1 %i.oi, %i.oe
  %i.qi = zext i16 %i.od to i32
  %i.qj = select i1 %i.qh, i32 0, i32 %i.qi
  %.1.2 = add nuw nsw i32 %.1.1, %i.qj
  %narrow870 = select i1 %i.oi, i16 %i.oh, i16 0
  %i.qk = zext i16 %narrow870 to i32
  %.1.3 = add nuw nsw i32 %.1.2, %i.qk            ; 3 uses
  %spec.select404.3 = tail call i16 @llvm.umax.i16(i16 %i.oh, i16 %spec.select404.2) ; 2 uses
  %i.ql = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.qm = icmp sgt i32 %i.ql, 4
  br i1 %i.qm, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.qn = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qo = zext i16 %spec.select404.3 to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !47
  %i.qr = load i16, ptr %i.nx, align 8, !tbaa !48
  %i.qs = zext i16 %i.qr to i32
  %i.qt = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !47
  %i.qv = load i16, ptr %i.of, align 8, !tbaa !48
  %i.qw = zext i16 %i.qv to i32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !47
  %i.qz = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.ra = load i16, ptr %i.qz, align 8, !tbaa !48
  %i.rb = zext i16 %i.ra to i32
  %i.rc = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !47
  %i.re = getelementptr inbounds nuw i8, ptr %i.lb, i64 80
  %i.rf = load i16, ptr %i.re, align 8, !tbaa !48
  %i.rg = zext i16 %i.rf to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.qn, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %.2326843, i32 noundef %i.qo, i32 noundef %.1.3, i32 noundef %spec.select405.3, i64 noundef %i.qq, i32 noundef %i.qs, i64 noundef %i.qu, i32 noundef %i.qw, i64 noundef %i.qy, i32 noundef %i.rb, i64 noundef %i.rd, i32 noundef %i.rg)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.cr:                                            ; preds = %bb.cp, %bb.cn
  %i.ri = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.rj = zext i16 %.fr665 to i64
  %.not19.i = icmp eq i16 %.fr665, 0
  %exitcond.peel.not.i = icmp eq i16 %.fr665, 1
  %i.rk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ro = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.rp = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.rq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.rr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.rs = getelementptr i8, ptr %i.rq, i64 -24
  %i.rt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.ct

bb.cs:                                            ; preds = %bb.dn
  %.not383 = icmp eq i32 %.1.3, 0
  br i1 %.not383, label %bb.dp, label %bb.do

bb.ct:                                            ; preds = %bb.cr, %bb.dn
  %indvars.iv = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next, %bb.dn ] ; 3 uses
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.ri, i64 %indvars.iv ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !47
  %.not385 = icmp eq i64 %i.ry, 0
  br i1 %.not385, label %bb.dn, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rz = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cv unwind label %bb.dk

bb.cv:                                            ; preds = %bb.cu
  %i.sa = icmp sgt i32 %i.rz, 4
  br i1 %i.sa, label %bb.cw, label %bb.dn

bb.cw:                                            ; preds = %bb.cv
  %i.sb = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cx unwind label %bb.dk

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.sc = load i64, ptr %i.rx, align 8, !tbaa !47 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !103
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %.noexc455 unwind label %bb.dl

.noexc455:                                        ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  store i8 91, ptr %i.b, align 1, !tbaa !43, !noalias !103
  %i.sd = load ptr, ptr %4, align 8, !tbaa !105, !noalias !103
  %i.se = getelementptr i8, ptr %i.sd, i64 -24
  %i.sf = load i64, ptr %i.se, align 8, !noalias !103
  %i.sg = getelementptr inbounds i8, ptr %4, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !114, !noalias !103
  %.not.i.i = icmp eq i64 %i.si, 0
  br i1 %.not.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.noexc455
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.dd, !noalias !103 ; 0 uses

bb.cz:                                            ; preds = %.noexc455
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.dd, !noalias !103 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  br i1 %.not19.i, label %._crit_edge.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !12, !noalias !103
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %.pre.i, i64 %i.sc
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !14, !noalias !103
  %i.sl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %.pre21.i)
          to label %bb.da unwind label %.loopexit.split-lp.i, !noalias !103 ; 0 uses

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel.i
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.lr.ph.peel.next.i

._crit_edge.i:                                    ; preds = %bb.de, %bb.da, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  store i8 93, ptr %i.a, align 1, !tbaa !43, !noalias !103
  %i.sm = load ptr, ptr %4, align 8, !tbaa !105, !noalias !103
  %i.sn = getelementptr i8, ptr %i.sm, i64 -24
  %i.so = load i64, ptr %i.sn, align 8, !noalias !103
  %i.sp = getelementptr inbounds i8, ptr %4, i64 %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !114, !noalias !103
  %.not.i12.i = icmp eq i64 %i.sr, 0
  br i1 %.not.i12.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i
  %i.ss = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.df unwind label %bb.dd, !noalias !103 ; 0 uses

bb.dc:                                            ; preds = %._crit_edge.i
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 93)
          to label %bb.df unwind label %bb.dd, !noalias !103 ; 0 uses

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cz, %bb.cy
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.peel.next.i:                               ; preds = %bb.da, %bb.de
  %.018.i = phi i64 [ %i.tb, %bb.de ], [ 1, %bb.da ] ; 2 uses
end_hunk_1
