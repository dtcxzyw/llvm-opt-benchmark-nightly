Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_fns?download=true
inline.NumInlined: 358
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@pmix_bfrops_base_tma_copy_darray:bb.a
  %i.cy = phi ptr [ %i.dr, %.lr.phthread-pre-split.i ], [ %i.cw, %bb.ap ]
  %.0814.i = phi ptr [ %i.dq, %.lr.phthread-pre-split.i ], [ %i.cu, %bb.ap ]
  %.0313.i = phi ptr [ %i.df, %.lr.phthread-pre-split.i ], [ %i.cv, %bb.ap ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i ]
  %.062.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %.0313.i, %.lr.ph.i ]
  %i.cz = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !218

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cz, %.lr.ph.i.i.i ] ; 2 uses
  %i.dc = add nsw i32 %.0.lcssa.i.i.i, 2
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.de) #29 ; 8 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.aq

bb.aq:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.dh = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.cy) #26 ; 2 uses
  %i.di = sext i32 %.0.lcssa.i.i.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.di ; 2 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !40
  %i.dk = icmp eq ptr %i.dh, null
  br i1 %i.dk, label %.preheader.i.i, label %bb.ar

.preheader.i.i:                                   ; preds = %bb.aq
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.dl, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.df) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.dl, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.df, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.dm) #26
  %i.dn = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.do, null
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !71

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr i8, ptr %i.dj, i64 8
  store ptr null, ptr %i.dp, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.lr.phthread-pre-split.i, !llvm.loop !219

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.ar, %bb.ap, %._crit_edge.i.i
  %.1.i = phi ptr [ %i.cv, %bb.ap ], [ null, %._crit_edge.i.i ], [ %i.df, %bb.ar ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %.1.i, ptr %i.dt, align 8, !tbaa !203
  br label %bb.as

bb.as:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit, %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !204 ; 3 uses
  %.not903 = icmp eq ptr %i.dv, null
  br i1 %.not903, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !40
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !40 ; 2 uses
  %.not12.i913 = icmp eq ptr %i.dx, null
  br i1 %.not12.i913, label %pmix_bfrops_base_tma_argv_copy.exit934, label %.lr.ph.i914

.lr.phthread-pre-split.i925:                      ; preds = %bb.av
  %.pr.i926 = load ptr, ptr %i.eg, align 8, !tbaa !40
  br label %.lr.ph.i914

.lr.ph.i914:                                      ; preds = %bb.at, %.lr.phthread-pre-split.i925
  %i.dy = phi ptr [ %.pr.i926, %.lr.phthread-pre-split.i925 ], [ null, %bb.at ]
  %i.dz = phi ptr [ %i.es, %.lr.phthread-pre-split.i925 ], [ %i.dx, %bb.at ]
  %.0814.i915 = phi ptr [ %i.er, %.lr.phthread-pre-split.i925 ], [ %i.dv, %bb.at ]
  %.0313.i916 = phi ptr [ %i.eg, %.lr.phthread-pre-split.i925 ], [ %i.dw, %bb.at ] ; 2 uses
  %.not1.i.i.i917 = icmp eq ptr %i.dy, null
  br i1 %.not1.i.i.i917, label %pmix_bfrops_base_tma_argv_count.exit.i.i922, label %.lr.ph.i.i.i918

.lr.ph.i.i.i918:                                  ; preds = %.lr.ph.i914, %.lr.ph.i.i.i918
  %.03.i.i.i919 = phi i32 [ %i.ea, %.lr.ph.i.i.i918 ], [ 0, %.lr.ph.i914 ]
  %.062.i.i.i920 = phi ptr [ %i.eb, %.lr.ph.i.i.i918 ], [ %.0313.i916, %.lr.ph.i914 ]
  %i.ea = add nuw nsw i32 %.03.i.i.i919, 1        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.062.i.i.i920, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40
  %.not.i.i.i921 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i921, label %pmix_bfrops_base_tma_argv_count.exit.i.i922, label %.lr.ph.i.i.i918, !llvm.loop !218

pmix_bfrops_base_tma_argv_count.exit.i.i922:      ; preds = %.lr.ph.i.i.i918, %.lr.ph.i914
  %.0.lcssa.i.i.i923 = phi i32 [ 0, %.lr.ph.i914 ], [ %i.ea, %.lr.ph.i.i.i918 ] ; 2 uses
  %i.ed = add nsw i32 %.0.lcssa.i.i.i923, 2
  %i.ee = sext i32 %i.ed to i64
  %i.ef = shl nsw i64 %i.ee, 3
  %i.eg = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i916, i64 noundef %i.ef) #29 ; 8 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %pmix_bfrops_base_tma_argv_copy.exit934, label %bb.au

bb.au:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i922
  %i.ei = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.dz) #26 ; 2 uses
  %i.ej = sext i32 %.0.lcssa.i.i.i923 to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !40
  %i.el = icmp eq ptr %i.ei, null
  br i1 %i.el, label %.preheader.i.i928, label %bb.av

.preheader.i.i928:                                ; preds = %bb.au
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %.not101.i.i929 = icmp eq ptr %i.em, null
  br i1 %.not101.i.i929, label %._crit_edge.i.i933, label %.lr.ph.i.i930

._crit_edge.i.i933:                               ; preds = %.lr.ph.i.i930, %.preheader.i.i928
  tail call void @free(ptr noundef nonnull %i.eg) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit934

.lr.ph.i.i930:                                    ; preds = %.preheader.i.i928, %.lr.ph.i.i930
  %i.en = phi ptr [ %i.ep, %.lr.ph.i.i930 ], [ %i.em, %.preheader.i.i928 ]
  %.02.i.i931 = phi ptr [ %i.eo, %.lr.ph.i.i930 ], [ %i.eg, %.preheader.i.i928 ]
  tail call void @free(ptr noundef nonnull %i.en) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %.02.i.i931, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !40 ; 2 uses
  %.not10.i.i932 = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i932, label %._crit_edge.i.i933, label %.lr.ph.i.i930, !llvm.loop !71

bb.av:                                            ; preds = %bb.au
  %i.eq = getelementptr i8, ptr %i.ek, i64 8
  store ptr null, ptr %i.eq, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw i8, ptr %.0814.i915, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !40 ; 2 uses
  %.not.i924 = icmp eq ptr %i.es, null
  br i1 %.not.i924, label %pmix_bfrops_base_tma_argv_copy.exit934, label %.lr.phthread-pre-split.i925, !llvm.loop !219

pmix_bfrops_base_tma_argv_copy.exit934:           ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i922, %bb.av, %bb.at, %._crit_edge.i.i933
  %.1.i927 = phi ptr [ %i.dw, %bb.at ], [ null, %._crit_edge.i.i933 ], [ %i.eg, %bb.av ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i922 ]
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %.1.i927, ptr %i.eu, align 8, !tbaa !204
  br label %bb.aw

bb.aw:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit934, %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !205 ; 2 uses
  %.not904 = icmp eq ptr %i.ew, null
  br i1 %.not904, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ew) #26
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !205
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !220
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i32 %i.fb, ptr %i.fd, align 8, !tbaa !220
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !207 ; 5 uses
  %.not905 = icmp eq i64 %i.ff, 0
  br i1 %.not905, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !206
  %.not906 = icmp eq ptr %i.fh, null
  br i1 %.not906, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = mul i64 %i.ff, 552
  %i.fj = tail call noalias noundef ptr @malloc(i64 noundef %i.fi) #27 ; 7 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.bb, label %.preheader.i.preheader, !prof !117

.preheader.i.preheader:                           ; preds = %bb.ba
  %xtraiter96 = and i64 %i.ff, 3                  ; 3 uses
  %i.fl = icmp ult i64 %i.ff, 4
  br i1 %i.fl, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter100 = and i64 %i.ff, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.01.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.fx, %.preheader.i ] ; 5 uses
  %niter101 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter101.next.3, %.preheader.i ]
  %i.fm = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fm, i8 0, i64 516, i1 false)
  %i.fo = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 552
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fp, i8 0, i64 516, i1 false)
  %i.fr = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fs, i8 0, i64 516, i1 false)
  %i.fu = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1656
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fv, i8 0, i64 516, i1 false)
  %i.fx = add nuw i64 %.01.i, 4                   ; 2 uses
  %niter101.next.3 = add nuw i64 %niter101, 4     ; 2 uses
  %niter101.ncmp.3 = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !221

bb.bb:                                            ; preds = %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store ptr null, ptr %i.fy, align 8, !tbaa !206
  %i.fz = load i64, ptr %i.f, align 8, !tbaa !39
  tail call fastcc void @pmix_bfrops_base_tma_app_free(ptr noundef nonnull %calloc.i911, i64 noundef %i.fz)
  br label %.thread10

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod98.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.fx, %.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter96, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.gc, %.preheader.i.epil ], [ %.01.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter97 = phi i64 [ %epil.iter97.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i.epil ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ga, i8 0, i64 516, i1 false)
  %i.gc = add nuw i64 %.01.i.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !222

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 2 uses
  store ptr %i.fj, ptr %i.gd, align 8, !tbaa !206
  %i.ge = load i64, ptr %i.fe, align 8, !tbaa !207 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !207
  %.not153 = icmp eq i64 %i.ge, 0
  br i1 %.not153, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.epilog-lcssa, %pmix_bfrops_base_tma_info_xfer.exit
  %.0795130 = phi i64 [ %i.hn, %pmix_bfrops_base_tma_info_xfer.exit ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !206 ; 2 uses
  %i.gh = getelementptr inbounds nuw [552 x i8], ptr %i.gg, i64 %.0795130 ; 4 uses
  %i.gi = load ptr, ptr %i.fg, align 8, !tbaa !206 ; 2 uses
  %i.gj = getelementptr inbounds nuw [552 x i8], ptr %i.gi, i64 %.0795130 ; 3 uses
  %i.gk = icmp eq ptr %i.gg, null
  %i.gl = icmp eq ptr %i.gi, null
  %i.gm = or i1 %i.gk, %i.gl
  br i1 %i.gm, label %pmix_bfrops_base_tma_info_xfer.exit, label %bb.bc, !prof !117

bb.bc:                                            ; preds = %.lr.ph132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.gh, i8 0, i64 512, i1 false)
  br label %.preheader.i1034

.preheader.i1034:                                 ; preds = %bb.be, %bb.bc
  %.012.i.i1035 = phi i64 [ 0, %bb.bc ], [ %i.hb, %bb.be ] ; 2 uses
  %.0811.i.i1036 = phi ptr [ %i.gh, %bb.bc ], [ %i.hd, %bb.be ] ; 8 uses
  %.0910.i.i1037 = phi ptr [ %i.gj, %bb.bc ], [ %i.hc, %bb.be ] ; 5 uses
  %i.gn = load i8, ptr %.0910.i.i1037, align 1, !tbaa !11 ; 2 uses
  store i8 %i.gn, ptr %.0811.i.i1036, align 1, !tbaa !11
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %pmix_bfrops_base_tma_load_key.exit1041, label %.preheader.i1034.1

.preheader.i1034.1:                               ; preds = %.preheader.i1034
  %i.gp = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 1
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !11  ; 2 uses
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !11
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit192, label %.preheader.i1034.2

.preheader.i1034.2:                               ; preds = %.preheader.i1034.1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 2
  %i.gu = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 2
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !11  ; 2 uses
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !11
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit190, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i1034.2
  %i.gx = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 3 ; 3 uses
  %exitcond.not.i.i1038.2 = icmp eq i64 %.012.i.i1035, 508
  br i1 %exitcond.not.i.i1038.2, label %pmix_bfrops_base_tma_load_key.exit1041, label %.preheader.i1034.3

.preheader.i1034.3:                               ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11  ; 2 uses
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !11
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %pmix_bfrops_base_tma_load_key.exit1041, label %bb.be

bb.be:                                            ; preds = %.preheader.i1034.3
  %i.hb = add nuw nsw i64 %.012.i.i1035, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 4
  br label %.preheader.i1034

pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit190: ; preds = %.preheader.i1034.2
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1041

pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit192: ; preds = %.preheader.i1034.1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1041

pmix_bfrops_base_tma_load_key.exit1041:           ; preds = %.preheader.i1034, %bb.bd, %.preheader.i1034.3, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit192, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit190
  %.08.lcssa.i.i1040 = phi ptr [ %i.hf, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit192 ], [ %i.gx, %bb.bd ], [ %i.he, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit190 ], [ %i.gx, %.preheader.i1034.3 ], [ %.0811.i.i1036, %.preheader.i1034 ]
  store i8 0, ptr %.08.lcssa.i.i1040, align 1, !tbaa !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 512
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !45 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gh, i64 512
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !45
  %i.hj = and i32 %i.hh, 16
  %.not20 = icmp eq i32 %i.hj, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gh, i64 520 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gj, i64 520 ; 2 uses
  br i1 %.not20, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1041
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit

bb.bg:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1041
  %i.hm = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hl) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit

pmix_bfrops_base_tma_info_xfer.exit:              ; preds = %.lr.ph132, %bb.bf, %bb.bg
  %i.hn = add nuw i64 %.0795130, 1                ; 2 uses
  %i.ho = load i64, ptr %i.gf, align 8, !tbaa !207
  %i.hp = icmp ult i64 %i.hn, %i.ho
  br i1 %i.hp, label %.lr.ph132, label %.loopexit, !llvm.loop !223

.loopexit:                                        ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %.epilog-lcssa, %bb.ay, %bb.az
  %i.hq = add nuw i64 %.0796133, 1                ; 2 uses
  %i.hr = load i64, ptr %i.d, align 8, !tbaa !39
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %.lr.ph134, label %.sink.split, !llvm.loop !224

bb.bh:                                            ; preds = %bb.d
  %i.ht = tail call fastcc ptr @pmix_bfrops_base_tma_info_create(i64 noundef %i.e) ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !38
  %i.hv = icmp eq ptr %i.ht, null
  br i1 %i.hv, label %.thread10, label %bb.bi, !prof !117

bb.bi:                                            ; preds = %bb.bh
  %i.hw = load ptr, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.hx = load i64, ptr %i.d, align 8, !tbaa !39
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = icmp eq ptr %i.hw, null
  %or.cond = select i1 %i.hy, i1 true, i1 %i.hz, !prof !225
  br i1 %or.cond, label %.sink.split, label %.lr.ph129.split, !prof !225

.lr.ph129.split:                                  ; preds = %bb.bi, %pmix_bfrops_base_tma_info_xfer.exit938
  %.0794127 = phi i64 [ %i.jc, %pmix_bfrops_base_tma_info_xfer.exit938 ], [ 0, %bb.bi ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [552 x i8], ptr %i.ht, i64 %.0794127 ; 4 uses
  %i.ib = getelementptr inbounds nuw [552 x i8], ptr %i.hw, i64 %.0794127 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ia, i8 0, i64 512, i1 false)
  br label %.preheader.i1043

.preheader.i1043:                                 ; preds = %bb.bk, %.lr.ph129.split
  %.012.i.i1044 = phi i64 [ 0, %.lr.ph129.split ], [ %i.iq, %bb.bk ] ; 2 uses
  %.0811.i.i1045 = phi ptr [ %i.ia, %.lr.ph129.split ], [ %i.is, %bb.bk ] ; 8 uses
  %.0910.i.i1046 = phi ptr [ %i.ib, %.lr.ph129.split ], [ %i.ir, %bb.bk ] ; 5 uses
  %i.ic = load i8, ptr %.0910.i.i1046, align 1, !tbaa !11 ; 2 uses
  store i8 %i.ic, ptr %.0811.i.i1045, align 1, !tbaa !11
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %pmix_bfrops_base_tma_load_key.exit1050, label %.preheader.i1043.1

.preheader.i1043.1:                               ; preds = %.preheader.i1043
  %i.ie = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 1
  %i.if = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 1
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !11  ; 2 uses
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !11
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit183, label %.preheader.i1043.2

.preheader.i1043.2:                               ; preds = %.preheader.i1043.1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 2
  %i.ij = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 2
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !11  ; 2 uses
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !11
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit181, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i1043.2
  %i.im = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 3 ; 3 uses
  %exitcond.not.i.i1047.2 = icmp eq i64 %.012.i.i1044, 508
  br i1 %exitcond.not.i.i1047.2, label %pmix_bfrops_base_tma_load_key.exit1050, label %.preheader.i1043.3

.preheader.i1043.3:                               ; preds = %bb.bj
  %i.in = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11  ; 2 uses
  store i8 %i.io, ptr %i.im, align 1, !tbaa !11
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %pmix_bfrops_base_tma_load_key.exit1050, label %bb.bk

bb.bk:                                            ; preds = %.preheader.i1043.3
  %i.iq = add nuw nsw i64 %.012.i.i1044, 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 4
  br label %.preheader.i1043

pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit181: ; preds = %.preheader.i1043.2
  %i.it = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1050

pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit183: ; preds = %.preheader.i1043.1
  %i.iu = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1050

pmix_bfrops_base_tma_load_key.exit1050:           ; preds = %.preheader.i1043, %bb.bj, %.preheader.i1043.3, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit183, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit181
  %.08.lcssa.i.i1049 = phi ptr [ %i.iu, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit183 ], [ %i.im, %bb.bj ], [ %i.it, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit181 ], [ %i.im, %.preheader.i1043.3 ], [ %.0811.i.i1045, %.preheader.i1043 ]
  store i8 0, ptr %.08.lcssa.i.i1049, align 1, !tbaa !11
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 512
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !45 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ia, i64 512
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !45
  %i.iy = and i32 %i.iw, 16
  %.not19 = icmp eq i32 %i.iy, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 520 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ib, i64 520 ; 2 uses
  br i1 %.not19, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1050
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %i.ja, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit938

bb.bm:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1050
  %i.jb = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit938

pmix_bfrops_base_tma_info_xfer.exit938:           ; preds = %bb.bl, %bb.bm
  %i.jc = add nuw i64 %.0794127, 1                ; 2 uses
  %i.jd = load i64, ptr %i.d, align 8, !tbaa !39
  %i.je = icmp ult i64 %i.jc, %i.jd
  br i1 %i.je, label %.lr.ph129.split, label %.sink.split, !llvm.loop !226

pmix_bfrops_base_tma_pdata_create.exit:           ; preds = %bb.d
  %i.jf = mul i64 %i.e, 808
  %calloc.i939 = tail call ptr @calloc(i64 1, i64 %i.jf) ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i939, ptr %i.jg, align 8, !tbaa !38
  %i.jh = icmp eq ptr %calloc.i939, null
  br i1 %i.jh, label %.thread10, label %.lr.ph126, !prof !117

.lr.ph126:                                        ; preds = %pmix_bfrops_base_tma_pdata_create.exit, %pmix_bfrops_base_tma_load_key.exit1059
  %.0793125 = phi i64 [ %i.lk, %pmix_bfrops_base_tma_load_key.exit1059 ], [ 0, %pmix_bfrops_base_tma_pdata_create.exit ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [808 x i8], ptr %calloc.i939, i64 %.0793125 ; 5 uses
  %i.jj = getelementptr inbounds nuw [808 x i8], ptr %i.i, i64 %.0793125 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(808) %i.ji, i8 0, i64 808, i1 false)
  br label %.preheader.i1061

.preheader.i1061:                                 ; preds = %bb.bn, %.lr.ph126
  %.012.i.i1062 = phi i64 [ 0, %.lr.ph126 ], [ %i.kc, %bb.bn ]
  %.0811.i.i1063 = phi ptr [ %i.ji, %.lr.ph126 ], [ %i.ke, %bb.bn ] ; 11 uses
  %.0910.i.i1064 = phi ptr [ %i.jj, %.lr.ph126 ], [ %i.kd, %bb.bn ] ; 6 uses
  %i.jk = load i8, ptr %.0910.i.i1064, align 1, !tbaa !11 ; 2 uses
  store i8 %i.jk, ptr %.0811.i.i1063, align 1, !tbaa !11
  %i.jl = icmp eq i8 %i.jk, 0
  br i1 %i.jl, label %pmix_bfrops_base_tma_load_nspace.exit1068, label %.preheader.i1061.1

.preheader.i1061.1:                               ; preds = %.preheader.i1061
  %i.jm = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 1
  %i.jo = load i8, ptr %i.jm, align 1, !tbaa !11  ; 2 uses
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !11
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit163, label %.preheader.i1061.2

.preheader.i1061.2:                               ; preds = %.preheader.i1061.1
  %i.jq = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 2
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !11  ; 2 uses
  store i8 %i.js, ptr %i.jr, align 1, !tbaa !11
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit161, label %.preheader.i1061.3

.preheader.i1061.3:                               ; preds = %.preheader.i1061.2
  %i.ju = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 3
  %i.jv = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 3
  %i.jw = load i8, ptr %i.ju, align 1, !tbaa !11  ; 2 uses
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !11
  %i.jx = icmp eq i8 %i.jw, 0
  br i1 %i.jx, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit159, label %.preheader.i1061.4

.preheader.i1061.4:                               ; preds = %.preheader.i1061.3
  %i.jy = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 4
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !11  ; 2 uses
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !11
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit157, label %bb.bn

bb.bn:                                            ; preds = %.preheader.i1061.4
  %i.kc = add nuw nsw i64 %.012.i.i1062, 5        ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 5
  %i.ke = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 5 ; 2 uses
  %exitcond.not.i.i1065.4 = icmp eq i64 %i.kc, 255
  br i1 %exitcond.not.i.i1065.4, label %pmix_bfrops_base_tma_load_nspace.exit1068, label %.preheader.i1061, !llvm.loop !208

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit157: ; preds = %.preheader.i1061.4
  %i.kf = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 4
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit159: ; preds = %.preheader.i1061.3
  %i.kg = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 3
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit161: ; preds = %.preheader.i1061.2
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 2
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit163: ; preds = %.preheader.i1061.1
  %i.ki = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 1
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068:        ; preds = %.preheader.i1061, %bb.bn, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit163, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit161, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit159, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit157
  %.08.lcssa.i.i1067 = phi ptr [ %i.ki, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit163 ], [ %i.kf, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit157 ], [ %i.kh, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit161 ], [ %i.ke, %bb.bn ], [ %i.kg, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit159 ], [ %.0811.i.i1063, %.preheader.i1061 ]
  store i8 0, ptr %.08.lcssa.i.i1067, align 1, !tbaa !11
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jj, i64 256
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !227
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ji, i64 256
  store i32 %i.kk, ptr %i.kl, align 8, !tbaa !227
  %i.km = getelementptr inbounds nuw i8, ptr %i.ji, i64 260 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jj, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.km, i8 0, i64 512, i1 false)
  br label %.preheader.i1052

.preheader.i1052:                                 ; preds = %bb.bp, %pmix_bfrops_base_tma_load_nspace.exit1068
  %.012.i.i1053 = phi i64 [ 0, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.lc, %bb.bp ] ; 2 uses
  %.0811.i.i1054 = phi ptr [ %i.km, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.le, %bb.bp ] ; 8 uses
  %.0910.i.i1055 = phi ptr [ %i.kn, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.ld, %bb.bp ] ; 5 uses
  %i.ko = load i8, ptr %.0910.i.i1055, align 1, !tbaa !11 ; 2 uses
  store i8 %i.ko, ptr %.0811.i.i1054, align 1, !tbaa !11
  %i.kp = icmp eq i8 %i.ko, 0
  br i1 %i.kp, label %pmix_bfrops_base_tma_load_key.exit1059, label %.preheader.i1052.1

.preheader.i1052.1:                               ; preds = %.preheader.i1052
  %i.kq = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 1
  %i.ks = load i8, ptr %i.kq, align 1, !tbaa !11  ; 2 uses
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !11
  %i.kt = icmp eq i8 %i.ks, 0
  br i1 %i.kt, label %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit174, label %.preheader.i1052.2

.preheader.i1052.2:                               ; preds = %.preheader.i1052.1
  %i.ku = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 2
  %i.kv = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 2
  %i.kw = load i8, ptr %i.ku, align 1, !tbaa !11  ; 2 uses
  store i8 %i.kw, ptr %i.kv, align 1, !tbaa !11
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit172, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i1052.2
  %i.ky = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 3 ; 3 uses
  %exitcond.not.i.i1056.2 = icmp eq i64 %.012.i.i1053, 508
  br i1 %exitcond.not.i.i1056.2, label %pmix_bfrops_base_tma_load_key.exit1059, label %.preheader.i1052.3

.preheader.i1052.3:                               ; preds = %bb.bo
  %i.kz = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !11  ; 2 uses
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !11
  %i.lb = icmp eq i8 %i.la, 0
  br i1 %i.lb, label %pmix_bfrops_base_tma_load_key.exit1059, label %bb.bp

bb.bp:                                            ; preds = %.preheader.i1052.3
  %i.lc = add nuw nsw i64 %.012.i.i1053, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 4
  %i.le = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 4
  br label %.preheader.i1052

pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit172: ; preds = %.preheader.i1052.2
  %i.lf = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1059

pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit174: ; preds = %.preheader.i1052.1
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1059

pmix_bfrops_base_tma_load_key.exit1059:           ; preds = %.preheader.i1052, %bb.bo, %.preheader.i1052.3, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit174, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit172
  %.08.lcssa.i.i1058 = phi ptr [ %i.lg, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit174 ], [ %i.ky, %bb.bo ], [ %i.lf, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit172 ], [ %i.ky, %.preheader.i1052.3 ], [ %.0811.i.i1054, %.preheader.i1052 ]
  store i8 0, ptr %.08.lcssa.i.i1058, align 1, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 776
  %i.li = getelementptr inbounds nuw i8, ptr %i.jj, i64 776
  %i.lj = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.lh, ptr noundef nonnull %i.li) ; 0 uses
  %i.lk = add nuw i64 %.0793125, 1                ; 2 uses
  %i.ll = load i64, ptr %i.d, align 8, !tbaa !39
  %i.lm = icmp ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph126, label %.sink.split, !llvm.loop !229

bb.bq:                                            ; preds = %bb.d
  %i.ln = mul i64 %i.e, 168
  %i.lo = tail call noalias noundef ptr @malloc(i64 noundef %i.ln) #27 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !38
  %i.lq = icmp eq ptr %i.lo, null
  br i1 %i.lq, label %.thread10, label %.lr.ph124, !prof !117

.lr.ph124:                                        ; preds = %bb.bq, %pmix_bfrops_base_tma_copy_payload.exit
  %.0792123 = phi i64 [ %i.oq, %pmix_bfrops_base_tma_copy_payload.exit ], [ 0, %bb.bq ] ; 3 uses
  %i.lr = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !138
  %i.ls = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !142
  %.not900 = icmp eq i32 %i.lr, %i.ls
  br i1 %.not900, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph124
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph124
  %i.lt = getelementptr inbounds nuw [168 x i8], ptr %i.lo, i64 %.0792123 ; 15 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  store ptr @pmix_buffer_t_class, ptr %i.lu, align 8, !tbaa !49
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  store i32 1, ptr %i.lv, align 8, !tbaa !143
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lw, i8 0, i64 64, i1 false)
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !144 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !28 ; 2 uses
  %.not6.i = icmp eq ptr %i.ly, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i941

.lr.ph.i941:                                      ; preds = %bb.bs, %.lr.ph.i941
  %i.lz = phi ptr [ %i.mb, %.lr.ph.i941 ], [ %i.ly, %bb.bs ]
  %.07.i = phi ptr [ %i.ma, %.lr.ph.i941 ], [ %i.lx, %bb.bs ]
  tail call void %i.lz(ptr noundef nonnull %i.lt) #26, !inline_history !230
  %i.ma = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !28 ; 2 uses
  %.not.i942 = icmp eq ptr %i.mb, null
  br i1 %.not.i942, label %pmix_obj_run_constructors.exit, label %.lr.ph.i941, !llvm.loop !146

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i941, %bb.bs
  %i.mc = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %.0792123 ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 128 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !128 ; 3 uses
  %i.mf = icmp eq ptr %i.me, null                 ; 2 uses
  br i1 %i.mf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 120
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !231
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lt, i64 120
  store i8 %i.mh, ptr %i.mi, align 8, !tbaa !231
  br label %bb.bw

bb.bu:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lt, i64 120
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !231
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mc, i64 120
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !231
  %.not.i943 = icmp eq i8 %i.mk, %i.mm
  br i1 %.not.i943, label %bb.bw, label %bb.bv, !prof !134

bb.bv:                                            ; preds = %bb.bu
  %i.mn = tail call ptr @PMIx_Error_string(i32 noundef -27) #26
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.mn, ptr noundef nonnull @.str.3, i32 noundef 124) #26
  br label %pmix_bfrops_base_tma_copy_payload.exit

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 160
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !122
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 136
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !119 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 144 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !129 ; 2 uses
  %i.mv = icmp eq ptr %i.ms, %i.mu
  br i1 %i.mv, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lt, i64 152 ; 3 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !121 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lt, i64 160 ; 4 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !122 ; 2 uses
  %i.nd = sub i64 %i.na, %i.nc
  %.not.i.i = icmp ult i64 %i.nd, %i.my
  br i1 %.not.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !119
  br label %pmix_bfrops_base_tma_buffer_extend.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.ng = add i64 %i.nc, %i.my                    ; 3 uses
  %i.nh = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_bfrops_globals, i64 288), align 8, !tbaa !123 ; 3 uses
  %.not54.i.i = icmp ult i64 %i.ng, %i.nh
  br i1 %.not54.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ni = add i64 %i.nh, %i.ng
  %.fr55.i.i = freeze i64 %i.ni
  %i.nj = add i64 %.fr55.i.i, -1                  ; 2 uses
  %i.nk = urem i64 %i.nj, %i.nh
  %i.nl = sub nuw i64 %i.nj, %i.nk
  br label %.loopexit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.nm = icmp eq i64 %i.na, 0
  %i.nn = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_bfrops_globals, i64 280), align 8
  %spec.select.i.i = select i1 %i.nm, i64 %i.nn, i64 %i.na
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.cc ], [ %i.np, %bb.cd ] ; 3 uses
  %i.no = icmp ult i64 %.1.i.i, %i.ng
  %i.np = shl i64 %.1.i.i, 1
  br i1 %i.no, label %bb.cd, label %.loopexit.i.i, !llvm.loop !127

.loopexit.i.i:                                    ; preds = %bb.cd, %bb.cb
  %.2.i.i = phi i64 [ %i.nl, %bb.cb ], [ %.1.i.i, %bb.cd ] ; 4 uses
  br i1 %i.mf, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !119
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.nu = sub i64 %i.ns, %i.nt                    ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lt, i64 144
end_hunk_0
begin_hunk_1_@pmix_bfrops_base_tma_copy_darray:bb.a
  br i1 %i.rs, label %.thread10, label %bb.dc, !prof !117

bb.dc:                                            ; preds = %bb.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull align 1 %i.i, i64 %i.e, i1 false)
  br label %.sink.split

bb.dd:                                            ; preds = %bb.d
  %i.rt = shl i64 %i.e, 2                         ; 2 uses
  %i.ru = tail call noalias noundef ptr @malloc(i64 noundef %i.rt) #27 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ru, ptr %i.rv, align 8, !tbaa !38
  %i.rw = icmp eq ptr %i.ru, null
  br i1 %i.rw, label %.thread10, label %bb.de, !prof !117

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ru, ptr nonnull align 1 %i.i, i64 %i.rt, i1 false)
  br label %.sink.split

pmix_bfrops_base_tma_proc_info_create.exit:       ; preds = %bb.d
  %i.rx = mul i64 %i.e, 296
  %calloc.i946 = tail call ptr @calloc(i64 1, i64 %i.rx) ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i946, ptr %i.ry, align 8, !tbaa !38
  %i.rz = icmp eq ptr %calloc.i946, null
  br i1 %i.rz, label %.thread10, label %.lr.ph113, !prof !117

.lr.ph113:                                        ; preds = %pmix_bfrops_base_tma_proc_info_create.exit, %bb.di
  %.0788112 = phi i64 [ %i.sq, %bb.di ], [ 0, %pmix_bfrops_base_tma_proc_info_create.exit ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [296 x i8], ptr %calloc.i946, i64 %.0788112 ; 5 uses
  %i.sb = getelementptr inbounds nuw [296 x i8], ptr %i.i, i64 %.0788112 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.sa, ptr noundef nonnull align 8 dereferenceable(260) %i.sb, i64 260, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 264
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !18 ; 2 uses
  %.not893 = icmp eq ptr %i.sd, null
  br i1 %.not893, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph113
  %i.se = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sd) #26
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph113, %bb.df
  %.sink = phi ptr [ %i.se, %bb.df ], [ null, %.lr.ph113 ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 264
  store ptr %.sink, ptr %i.sf, align 8, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 272
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !21 ; 2 uses
  %.not894 = icmp eq ptr %i.sh, null
  br i1 %.not894, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.si = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sh) #26
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %.sink211 = phi ptr [ %i.si, %bb.dh ], [ null, %bb.dg ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 272
  store ptr %.sink211, ptr %i.sj, align 8, !tbaa !21
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 280
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sa, i64 280
  %i.sm = load <2 x i32>, ptr %i.sk, align 8, !tbaa !138
  store <2 x i32> %i.sm, ptr %i.sl, align 8, !tbaa !138
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sb, i64 288
  %i.so = load i8, ptr %i.sn, align 8, !tbaa !240
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sa, i64 288
  store i8 %i.so, ptr %i.sp, align 8, !tbaa !240
  %i.sq = add nuw i64 %.0788112, 1                ; 2 uses
  %exitcond207.not = icmp eq i64 %i.sq, %i.e
  br i1 %exitcond207.not, label %.sink.split, label %.lr.ph113, !llvm.loop !241

pmix_bfrops_base_tma_query_create.exit:           ; preds = %bb.d
  %i.sr = mul i64 %i.e, 24
  %calloc.i948 = tail call ptr @calloc(i64 1, i64 %i.sr) ; 6 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i948, ptr %i.ss, align 8, !tbaa !38
  %i.st = icmp eq ptr %calloc.i948, null
  br i1 %i.st, label %.thread10, label %.lr.ph111, !prof !117

.lr.ph111:                                        ; preds = %pmix_bfrops_base_tma_query_create.exit, %bb.dv
  %.0787109 = phi i64 [ %i.wj, %bb.dv ], [ 0, %pmix_bfrops_base_tma_query_create.exit ] ; 6 uses
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.0787109 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !67 ; 3 uses
  %.not890 = icmp eq ptr %i.sv, null
  br i1 %.not890, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph111
  %i.sw = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  store ptr null, ptr %i.sw, align 8, !tbaa !40
  %i.sx = load ptr, ptr %i.sv, align 8, !tbaa !40 ; 2 uses
  %.not12.i950 = icmp eq ptr %i.sx, null
  br i1 %.not12.i950, label %pmix_bfrops_base_tma_argv_copy.exit971, label %.lr.ph.i951

.lr.phthread-pre-split.i962:                      ; preds = %bb.dl
  %.pr.i963 = load ptr, ptr %i.tg, align 8, !tbaa !40
  br label %.lr.ph.i951

.lr.ph.i951:                                      ; preds = %bb.dj, %.lr.phthread-pre-split.i962
  %i.sy = phi ptr [ %.pr.i963, %.lr.phthread-pre-split.i962 ], [ null, %bb.dj ]
  %i.sz = phi ptr [ %i.ts, %.lr.phthread-pre-split.i962 ], [ %i.sx, %bb.dj ]
  %.0814.i952 = phi ptr [ %i.tr, %.lr.phthread-pre-split.i962 ], [ %i.sv, %bb.dj ]
  %.0313.i953 = phi ptr [ %i.tg, %.lr.phthread-pre-split.i962 ], [ %i.sw, %bb.dj ] ; 2 uses
  %.not1.i.i.i954 = icmp eq ptr %i.sy, null
  br i1 %.not1.i.i.i954, label %pmix_bfrops_base_tma_argv_count.exit.i.i959, label %.lr.ph.i.i.i955

.lr.ph.i.i.i955:                                  ; preds = %.lr.ph.i951, %.lr.ph.i.i.i955
  %.03.i.i.i956 = phi i32 [ %i.ta, %.lr.ph.i.i.i955 ], [ 0, %.lr.ph.i951 ]
  %.062.i.i.i957 = phi ptr [ %i.tb, %.lr.ph.i.i.i955 ], [ %.0313.i953, %.lr.ph.i951 ]
  %i.ta = add nuw nsw i32 %.03.i.i.i956, 1        ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.062.i.i.i957, i64 8 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !40
  %.not.i.i.i958 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i958, label %pmix_bfrops_base_tma_argv_count.exit.i.i959, label %.lr.ph.i.i.i955, !llvm.loop !218

pmix_bfrops_base_tma_argv_count.exit.i.i959:      ; preds = %.lr.ph.i.i.i955, %.lr.ph.i951
  %.0.lcssa.i.i.i960 = phi i32 [ 0, %.lr.ph.i951 ], [ %i.ta, %.lr.ph.i.i.i955 ] ; 2 uses
  %i.td = add nsw i32 %.0.lcssa.i.i.i960, 2
  %i.te = sext i32 %i.td to i64
  %i.tf = shl nsw i64 %i.te, 3
  %i.tg = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i953, i64 noundef %i.tf) #29 ; 8 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %pmix_bfrops_base_tma_argv_copy.exit971, label %bb.dk

bb.dk:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i959
  %i.ti = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sz) #26 ; 2 uses
  %i.tj = sext i32 %.0.lcssa.i.i.i960 to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.tj ; 2 uses
  store ptr %i.ti, ptr %i.tk, align 8, !tbaa !40
  %i.tl = icmp eq ptr %i.ti, null
  br i1 %i.tl, label %.preheader.i.i965, label %bb.dl

.preheader.i.i965:                                ; preds = %bb.dk
  %i.tm = load ptr, ptr %i.tg, align 8, !tbaa !40 ; 2 uses
  %.not101.i.i966 = icmp eq ptr %i.tm, null
  br i1 %.not101.i.i966, label %._crit_edge.i.i970, label %.lr.ph.i.i967

._crit_edge.i.i970:                               ; preds = %.lr.ph.i.i967, %.preheader.i.i965
  tail call void @free(ptr noundef nonnull %i.tg) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit971

.lr.ph.i.i967:                                    ; preds = %.preheader.i.i965, %.lr.ph.i.i967
  %i.tn = phi ptr [ %i.tp, %.lr.ph.i.i967 ], [ %i.tm, %.preheader.i.i965 ]
  %.02.i.i968 = phi ptr [ %i.to, %.lr.ph.i.i967 ], [ %i.tg, %.preheader.i.i965 ]
  tail call void @free(ptr noundef nonnull %i.tn) #26
  %i.to = getelementptr inbounds nuw i8, ptr %.02.i.i968, i64 8 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !40 ; 2 uses
  %.not10.i.i969 = icmp eq ptr %i.tp, null
  br i1 %.not10.i.i969, label %._crit_edge.i.i970, label %.lr.ph.i.i967, !llvm.loop !71

bb.dl:                                            ; preds = %bb.dk
  %i.tq = getelementptr i8, ptr %i.tk, i64 8
  store ptr null, ptr %i.tq, align 8, !tbaa !40
  %i.tr = getelementptr inbounds nuw i8, ptr %.0814.i952, i64 8 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !40 ; 2 uses
  %.not.i961 = icmp eq ptr %i.ts, null
  br i1 %.not.i961, label %pmix_bfrops_base_tma_argv_copy.exit971, label %.lr.phthread-pre-split.i962, !llvm.loop !219

pmix_bfrops_base_tma_argv_copy.exit971:           ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i959, %bb.dl, %bb.dj, %._crit_edge.i.i970
  %.1.i964 = phi ptr [ %i.sw, %bb.dj ], [ null, %._crit_edge.i.i970 ], [ %i.tg, %bb.dl ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i959 ]
  %i.tt = getelementptr inbounds nuw [24 x i8], ptr %calloc.i948, i64 %.0787109
  store ptr %.1.i964, ptr %i.tt, align 8, !tbaa !67
  br label %bb.dm

bb.dm:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit971, %.lr.ph111
  %i.tu = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !72
  %.not891 = icmp eq ptr %i.tv, null
  br i1 %.not891, label %bb.du, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.tw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !73 ; 5 uses
  %.not892 = icmp eq i64 %i.tx, 0
  br i1 %.not892, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ty = mul i64 %i.tx, 552
  %i.tz = tail call noalias noundef ptr @malloc(i64 noundef %i.ty) #27 ; 7 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %pmix_bfrops_base_tma_info_create.exit976.thread, label %.preheader.i972.preheader, !prof !117

.preheader.i972.preheader:                        ; preds = %bb.do
  %xtraiter = and i64 %i.tx, 3                    ; 3 uses
  %i.ub = icmp ult i64 %i.tx, 4
  br i1 %i.ub, label %.preheader.i972.epil.preheader, label %.preheader.i972.preheader.new

.preheader.i972.preheader.new:                    ; preds = %.preheader.i972.preheader
  %unroll_iter = and i64 %i.tx, -4
  br label %.preheader.i972

pmix_bfrops_base_tma_info_create.exit976.thread:  ; preds = %bb.do
  %i.uc = getelementptr inbounds nuw [24 x i8], ptr %calloc.i948, i64 %.0787109
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store ptr null, ptr %i.ud, align 8, !tbaa !72
  br label %.thread10

.preheader.i972:                                  ; preds = %.preheader.i972, %.preheader.i972.preheader.new
  %.01.i973 = phi i64 [ 0, %.preheader.i972.preheader.new ], [ %i.up, %.preheader.i972 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i972.preheader.new ], [ %niter.next.3, %.preheader.i972 ]
  %i.ue = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i973 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uf, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ue, i8 0, i64 516, i1 false)
  %i.ug = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i973 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 552
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ui, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uh, i8 0, i64 516, i1 false)
  %i.uj = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i973 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 1104
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ul, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uk, i8 0, i64 516, i1 false)
  %i.um = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i973 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1656
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uo, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.un, i8 0, i64 516, i1 false)
  %i.up = add nuw i64 %.01.i973, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_info_create.exit976.unr-lcssa, label %.preheader.i972, !llvm.loop !221

pmix_bfrops_base_tma_info_create.exit976.unr-lcssa: ; preds = %.preheader.i972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_info_create.exit976, label %.preheader.i972.epil.preheader

.preheader.i972.epil.preheader:                   ; preds = %pmix_bfrops_base_tma_info_create.exit976.unr-lcssa, %.preheader.i972.preheader
  %.01.i973.epil.init = phi i64 [ 0, %.preheader.i972.preheader ], [ %i.up, %pmix_bfrops_base_tma_info_create.exit976.unr-lcssa ]
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.preheader.i972.epil

.preheader.i972.epil:                             ; preds = %.preheader.i972.epil, %.preheader.i972.epil.preheader
  %.01.i973.epil = phi i64 [ %i.us, %.preheader.i972.epil ], [ %.01.i973.epil.init, %.preheader.i972.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i972.epil ], [ 0, %.preheader.i972.epil.preheader ]
  %i.uq = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i973.epil ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uq, i8 0, i64 516, i1 false)
  %i.us = add nuw i64 %.01.i973.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_info_create.exit976, label %.preheader.i972.epil, !llvm.loop !242

pmix_bfrops_base_tma_info_create.exit976:         ; preds = %.preheader.i972.epil, %pmix_bfrops_base_tma_info_create.exit976.unr-lcssa
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %calloc.i948, i64 %.0787109 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  store ptr %i.tz, ptr %i.uu, align 8, !tbaa !72
  %i.uv = load i64, ptr %i.tw, align 8, !tbaa !73
  %.not148 = icmp eq i64 %i.uv, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph108

._crit_edge:                                      ; preds = %pmix_bfrops_base_tma_info_xfer.exit979, %pmix_bfrops_base_tma_info_create.exit976
  %.lcssa74 = phi i64 [ 0, %pmix_bfrops_base_tma_info_create.exit976 ], [ %i.wf, %pmix_bfrops_base_tma_info_xfer.exit979 ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store i64 %.lcssa74, ptr %i.uw, align 8, !tbaa !73
  br label %bb.dv

.lr.ph108:                                        ; preds = %pmix_bfrops_base_tma_info_create.exit976, %pmix_bfrops_base_tma_info_xfer.exit979
  %.0786107 = phi i64 [ %i.we, %pmix_bfrops_base_tma_info_xfer.exit979 ], [ 0, %pmix_bfrops_base_tma_info_create.exit976 ] ; 3 uses
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !72 ; 2 uses
  %i.uy = getelementptr inbounds nuw [552 x i8], ptr %i.ux, i64 %.0786107 ; 4 uses
  %i.uz = load ptr, ptr %i.tu, align 8, !tbaa !72 ; 2 uses
  %i.va = getelementptr inbounds nuw [552 x i8], ptr %i.uz, i64 %.0786107 ; 3 uses
  %i.vb = icmp eq ptr %i.ux, null
  %i.vc = icmp eq ptr %i.uz, null
  %i.vd = or i1 %i.vb, %i.vc
  br i1 %i.vd, label %pmix_bfrops_base_tma_info_xfer.exit979, label %bb.dp, !prof !117

bb.dp:                                            ; preds = %.lr.ph108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.uy, i8 0, i64 512, i1 false)
  br label %.preheader.i1070

.preheader.i1070:                                 ; preds = %bb.dr, %bb.dp
  %.012.i.i1071 = phi i64 [ 0, %bb.dp ], [ %i.vs, %bb.dr ] ; 2 uses
  %.0811.i.i1072 = phi ptr [ %i.uy, %bb.dp ], [ %i.vu, %bb.dr ] ; 8 uses
  %.0910.i.i1073 = phi ptr [ %i.va, %bb.dp ], [ %i.vt, %bb.dr ] ; 5 uses
  %i.ve = load i8, ptr %.0910.i.i1073, align 1, !tbaa !11 ; 2 uses
  store i8 %i.ve, ptr %.0811.i.i1072, align 1, !tbaa !11
  %i.vf = icmp eq i8 %i.ve, 0
  br i1 %i.vf, label %pmix_bfrops_base_tma_load_key.exit1077, label %.preheader.i1070.1

.preheader.i1070.1:                               ; preds = %.preheader.i1070
  %i.vg = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 1
  %i.vh = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 1
  %i.vi = load i8, ptr %i.vg, align 1, !tbaa !11  ; 2 uses
  store i8 %i.vi, ptr %i.vh, align 1, !tbaa !11
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit152, label %.preheader.i1070.2

.preheader.i1070.2:                               ; preds = %.preheader.i1070.1
  %i.vk = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 2
  %i.vl = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 2
  %i.vm = load i8, ptr %i.vk, align 1, !tbaa !11  ; 2 uses
  store i8 %i.vm, ptr %i.vl, align 1, !tbaa !11
  %i.vn = icmp eq i8 %i.vm, 0
  br i1 %i.vn, label %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit150, label %bb.dq

bb.dq:                                            ; preds = %.preheader.i1070.2
  %i.vo = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 3 ; 3 uses
  %exitcond.not.i.i1074.2 = icmp eq i64 %.012.i.i1071, 508
  br i1 %exitcond.not.i.i1074.2, label %pmix_bfrops_base_tma_load_key.exit1077, label %.preheader.i1070.3

.preheader.i1070.3:                               ; preds = %bb.dq
  %i.vp = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 3
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !11  ; 2 uses
  store i8 %i.vq, ptr %i.vo, align 1, !tbaa !11
  %i.vr = icmp eq i8 %i.vq, 0
  br i1 %i.vr, label %pmix_bfrops_base_tma_load_key.exit1077, label %bb.dr

bb.dr:                                            ; preds = %.preheader.i1070.3
  %i.vs = add nuw nsw i64 %.012.i.i1071, 4
  %i.vt = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 4
  %i.vu = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 4
  br label %.preheader.i1070

pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit150: ; preds = %.preheader.i1070.2
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1077

pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit152: ; preds = %.preheader.i1070.1
  %i.vw = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1077

pmix_bfrops_base_tma_load_key.exit1077:           ; preds = %.preheader.i1070, %bb.dq, %.preheader.i1070.3, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit152, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit150
  %.08.lcssa.i.i1076 = phi ptr [ %i.vw, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit152 ], [ %i.vo, %bb.dq ], [ %i.vv, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit150 ], [ %i.vo, %.preheader.i1070.3 ], [ %.0811.i.i1072, %.preheader.i1070 ]
  store i8 0, ptr %.08.lcssa.i.i1076, align 1, !tbaa !11
  %i.vx = getelementptr inbounds nuw i8, ptr %i.va, i64 512
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !45 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.uy, i64 512
  store i32 %i.vy, ptr %i.vz, align 8, !tbaa !45
  %i.wa = and i32 %i.vy, 16
  %.not18 = icmp eq i32 %i.wa, 0
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uy, i64 520 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.va, i64 520 ; 2 uses
  br i1 %.not18, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1077
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %i.wc, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit979

bb.dt:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1077
  %i.wd = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.wb, ptr noundef nonnull %i.wc) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit979

pmix_bfrops_base_tma_info_xfer.exit979:           ; preds = %.lr.ph108, %bb.ds, %bb.dt
  %i.we = add nuw i64 %.0786107, 1                ; 2 uses
  %i.wf = load i64, ptr %i.tw, align 8, !tbaa !73 ; 2 uses
  %i.wg = icmp ult i64 %i.we, %i.wf
  br i1 %i.wg, label %.lr.ph108, label %._crit_edge, !llvm.loop !243

bb.du:                                            ; preds = %bb.dn, %bb.dm
  %i.wh = getelementptr inbounds nuw [24 x i8], ptr %calloc.i948, i64 %.0787109
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, i8 0, i64 16, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge, %bb.du
  %i.wj = add nuw i64 %.0787109, 1                ; 2 uses
  %i.wk = load i64, ptr %i.d, align 8, !tbaa !39
  %i.wl = icmp ult i64 %i.wj, %i.wk
  br i1 %i.wl, label %.lr.ph111, label %.sink.split, !llvm.loop !244

bb.dw:                                            ; preds = %bb.d
  %i.wm = tail call fastcc ptr @pmix_bfrops_base_tma_envar_create(i64 noundef %i.e) ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.wm, ptr %i.wn, align 8, !tbaa !38
  %i.wo = icmp eq ptr %i.wm, null
  br i1 %i.wo, label %.thread10, label %bb.dx, !prof !117

bb.dx:                                            ; preds = %bb.dw
  %i.wp = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.wq = load i64, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %.not146 = icmp eq i64 %i.wq, 0
  br i1 %.not146, label %.sink.split, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.dx, %bb.eb
  %.0785105 = phi i64 [ %i.xe, %bb.eb ], [ 0, %bb.dx ] ; 5 uses
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %i.wp, i64 %.0785105 ; 3 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !22 ; 2 uses
  %.not888 = icmp eq ptr %i.ws, null
  br i1 %.not888, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph106
  %i.wt = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ws) #26
  %i.wu = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph106
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !24 ; 2 uses
  %.not889 = icmp eq ptr %i.ww, null
  br i1 %.not889, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wx = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ww) #26
  %i.wy = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store ptr %i.wx, ptr %i.wz, align 8, !tbaa !24
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.xb = load i8, ptr %i.xa, align 8, !tbaa !25
  %i.xc = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store i8 %i.xb, ptr %i.xd, align 8, !tbaa !25
  %i.xe = add nuw i64 %.0785105, 1                ; 2 uses
  %exitcond206.not = icmp eq i64 %i.xe, %i.wq
  br i1 %exitcond206.not, label %.sink.split, label %.lr.ph106, !llvm.loop !245

bb.ec:                                            ; preds = %bb.d
  %i.xf = mul i64 %i.e, 24
  %i.xg = tail call noalias noundef ptr @malloc(i64 noundef %i.xf) #27 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !38
  %i.xi = icmp eq ptr %i.xg, null
  br i1 %i.xi, label %.thread10, label %.lr.ph104, !prof !117

.lr.ph104:                                        ; preds = %bb.ec, %bb.ef
  %.0784103 = phi i64 [ %i.xv, %bb.ef ], [ 0, %bb.ec ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [24 x i8], ptr %i.xg, i64 %.0784103 ; 3 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.0784103 ; 3 uses
  %i.xl = load i8, ptr %i.xk, align 8, !tbaa !76
  store i8 %i.xl, ptr %i.xj, align 8, !tbaa !76
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !162 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !162
  %.not.i980 = icmp eq i64 %i.xn, 0
  br i1 %.not.i980, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph104
  %i.xp = shl i64 %i.xn, 2                        ; 2 uses
  %i.xq = tail call noalias noundef ptr @malloc(i64 noundef %i.xp) #27 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store ptr %i.xq, ptr %i.xr, align 8, !tbaa !79
  %i.xs = icmp eq ptr %i.xq, null
end_hunk_1
begin_hunk_2_@pmix_bfrops_base_tma_copy_geometry:bb.a
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.h) #26
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !87   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !87
  %i.p = tail call noalias noundef ptr @calloc(i64 noundef %i.n, i64 noundef 24) #33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !86
  %.not4812.not = icmp eq i64 %i.n, 0
  br i1 %.not4812.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.013 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.g ]  ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.013 ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.013 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !76
  store i8 %i.t, ptr %i.r, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !162  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !162
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = shl i64 %i.v, 2                          ; 2 uses
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #27 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !79
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %.thread9, label %bb.i, !prof !117

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.ac, i64 %i.x, i1 false)
  br label %bb.j

.thread9:                                         ; preds = %bb.h
  tail call void @PMIx_Geometry_free(ptr noundef nonnull %calloc.i, i64 noundef 1) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.ad = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !270

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !271
  br label %bb.k

bb.k:                                             ; preds = %.thread9, %bb.a, %.loopexit
  %.340 = phi i32 [ -32, %.thread9 ], [ 0, %.loopexit ], [ -32, %bb.a ]
  ret i32 %.340
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_devdist(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_device_distance_create.exit.thread, label %.preheader.i, !prof !117

.preheader.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  %i.b = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #26
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !252
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load <2 x i16>, ptr %i.k, align 8, !tbaa !130
  store <2 x i16> %i.l, ptr %i.a, align 8, !tbaa !130
  store ptr %calloc, ptr %0, align 8, !tbaa !273
  br label %pmix_bfrops_base_tma_device_distance_create.exit.thread

pmix_bfrops_base_tma_device_distance_create.exit.thread: ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_endpoint(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.i, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !93     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #26
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !164  ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.k) #27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i64 %i.k, ptr %i.n, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !275
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_regattr(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(536) ptr @malloc(i64 noundef 536) #27 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_regattr_create.exit.thread, label %.preheader.i, !prof !117

pmix_bfrops_base_tma_regattr_create.exit.thread:  ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !277
  br label %bb.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.a, i8 0, i64 522, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !277
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.c) #26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  br label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.e, %bb.c
  %.012.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.e ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.e, %bb.c ], [ %i.w, %bb.e ] ; 8 uses
  %.0910.i.i = phi ptr [ %i.f, %bb.c ], [ %i.v, %bb.e ] ; 5 uses
  %i.g = load i8, ptr %.0910.i.i, align 1, !tbaa !11 ; 2 uses
  store i8 %i.g, ptr %.0811.i.i, align 1, !tbaa !11
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i17.1

.preheader.i17.1:                                 ; preds = %.preheader.i17
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !11    ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !11
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, label %.preheader.i17.2

.preheader.i17.2:                                 ; preds = %.preheader.i17.1
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.o = load i8, ptr %i.m, align 1, !tbaa !11    ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9, label %bb.d

bb.d:                                             ; preds = %.preheader.i17.2
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i64 %.012.i.i, 508
  br i1 %exitcond.not.i.i.2, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i17.3

.preheader.i17.3:                                 ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11    ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !11
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %pmix_bfrops_base_tma_load_key.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i17.3
  %i.u = add nuw nsw i64 %.012.i.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %.preheader.i17

pmix_bfrops_base_tma_load_key.exit.split.loop.exit9: ; preds = %.preheader.i17.2
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit.split.loop.exit11: ; preds = %.preheader.i17.1
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit:               ; preds = %.preheader.i17, %bb.d, %.preheader.i17.3, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9
  %.08.lcssa.i.i = phi ptr [ %i.y, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11 ], [ %i.q, %bb.d ], [ %i.x, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9 ], [ %i.q, %.preheader.i17.3 ], [ %.0811.i.i, %.preheader.i17 ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !34
  %i.ab = load ptr, ptr %0, align 8, !tbaa !277   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 520
  store i16 %i.aa, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.f

bb.f:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit
  %i.ag = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !40
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.not12.i = icmp eq ptr %i.ah, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.lr.ph.i

.lr.phthread-pre-split.i:                         ; preds = %bb.h
  %.pr.i = load ptr, ptr %i.aq, align 8, !tbaa !40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.phthread-pre-split.i
  %i.ai = phi ptr [ %.pr.i, %.lr.phthread-pre-split.i ], [ null, %bb.f ]
  %i.aj = phi ptr [ %i.bc, %.lr.phthread-pre-split.i ], [ %i.ah, %bb.f ]
  %.0814.i = phi ptr [ %i.bb, %.lr.phthread-pre-split.i ], [ %i.ae, %bb.f ]
  %.0313.i = phi ptr [ %i.aq, %.lr.phthread-pre-split.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i ]
  %.062.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0313.i, %.lr.ph.i ]
  %i.ak = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !218

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = add nsw i32 %.0.lcssa.i.i.i, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.ap) #29 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.as = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aj) #26 ; 2 uses
  %i.at = sext i32 %.0.lcssa.i.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !40
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.aw, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !277
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.loopexit ], [ %i.ab, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.aq) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.aw, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.aq, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.ax) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !71

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.au, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bc, null
  br i1 %.not.i18, label %pmix_bfrops_base_tma_argv_copy.exit, label %.lr.phthread-pre-split.i, !llvm.loop !219

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.h, %pmix_bfrops_base_tma_load_key.exit, %bb.f, %._crit_edge.i.i
  %i.bd = phi ptr [ %i.ab, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %.1.i = phi ptr [ null, %pmix_bfrops_base_tma_load_key.exit ], [ null, %._crit_edge.i.i ], [ %i.ag, %bb.f ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %i.aq, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 528
  store ptr %.1.i, ptr %i.be, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %pmix_bfrops_base_tma_regattr_create.exit.thread, %pmix_bfrops_base_tma_argv_copy.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_argv_copy.exit ], [ -32, %pmix_bfrops_base_tma_regattr_create.exit.thread ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pmix_bfrops_base_tma_copy_dbuf(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !279
  %i.b = tail call i32 @PMIx_Data_copy_payload(ptr noundef nonnull %calloc.i, ptr noundef %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_pstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(352) ptr @calloc(i64 1, i64 352) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.f, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !281
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(260) %i.e, i64 260, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 268
  store i32 %i.g, ptr %i.h, align 4, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 2 uses
  %.not35.i = icmp eq ptr %i.j, null
  br i1 %.not35.i, label %pmix_bfrops_base_tma_populate_pstats.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.j) #26
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 272
  store ptr %i.k, ptr %i.l, align 8, !tbaa !107
  br label %pmix_bfrops_base_tma_populate_pstats.exit

pmix_bfrops_base_tma_populate_pstats.exit:        ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.n = load i8, ptr %i.m, align 8, !tbaa !257
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 280
  store i8 %i.n, ptr %i.o, align 8, !tbaa !257
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !258
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.s = load i32, ptr %i.r, align 4, !tbaa !259
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i, i64 308
  store i32 %i.s, ptr %i.t, align 4, !tbaa !259
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.v = load i16, ptr %i.u, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 312
  store i16 %i.v, ptr %i.w, align 8, !tbaa !260
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 316
  %i.z = load <4 x float>, ptr %i.x, align 4, !tbaa !261
  store <4 x float> %i.z, ptr %i.y, align 4, !tbaa !261
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !262
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 332
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !262
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 336
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !29
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_pstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_pstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_dkstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 9 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !109    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_populate_dkstats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !109
  br label %pmix_bfrops_base_tma_populate_dkstats.exit

pmix_bfrops_base_tma_populate_dkstats.exit:       ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !29
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !29
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !29
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 56
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !29
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  %i.r = load <2 x i64>, ptr %i.p, align 8, !tbaa !29
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !264
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i, i64 88
  store i64 %i.t, ptr %i.u, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_dkstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_dkstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_netstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_populate_netstats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !112
  br label %pmix_bfrops_base_tma_populate_netstats.exit

pmix_bfrops_base_tma_populate_netstats.exit:      ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !29
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !29
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !29
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_netstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_netstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_ndstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !28
  tail call fastcc void @pmix_bfrops_base_tma_populate_ndstats(ptr noundef %calloc.i, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_info_create(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 552
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #27 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !117

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.e = icmp ult i64 %0, 4
  br i1 %i.e, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.f = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.f, i8 0, i64 516, i1 false)
  %i.h = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.i, i8 0, i64 516, i1 false)
  %i.k = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.l, i8 0, i64 516, i1 false)
  %i.n = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.o, i8 0, i64 516, i1 false)
  %i.q = add nuw i64 %.01, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !221

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.t, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.r = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.r, i8 0, i64 516, i1 false)
  %i.t = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !283

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.1
}

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_envar_create(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 24
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #27 ; 12 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader, !prof !117

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 7                       ; 3 uses
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.m, i8 0, i64 17, i1 false)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i8 0, i64 17, i1 false)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.q, i8 0, i64 17, i1 false)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.s, i8 0, i64 17, i1 false)
  %i.t = add nuw i64 %.01, 8                      ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !284

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.v, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.u, i8 0, i64 17, i1 false)
  %i.v = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !285

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.011
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_regattr_create(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 536
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #27 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader, !prof !117

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.d = icmp ult i64 %0, 4
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.p, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.e = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  store ptr null, ptr %i.f, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.e, i8 0, i64 522, i1 false)
  %i.g = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  store ptr null, ptr %i.i, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.h, i8 0, i64 522, i1 false)
  %i.j = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1072
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1600
  store ptr null, ptr %i.l, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.k, i8 0, i64 522, i1 false)
  %i.m = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1608
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2136
  store ptr null, ptr %i.o, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.n, i8 0, i64 522, i1 false)
  %i.p = add nuw i64 %.01, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !286

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.p, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.s, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.q = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %.01.epil ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 528
  store ptr null, ptr %i.r, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.q, i8 0, i64 522, i1 false)
  %i.s = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !287

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.011
}

declare i32 @pmix_hwloc_copy_cpuset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_device_distance_create(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %0, 5
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #27 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader, !prof !117

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.d = icmp ult i64 %0, 4
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.01 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i16 -1, ptr %i.f, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i16 -1, ptr %i.g, align 2, !tbaa !289
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.01 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
end_hunk_2
