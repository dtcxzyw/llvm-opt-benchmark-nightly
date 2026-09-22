Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-batch?download=true
inline.NumInlined: 1712
inline.NumDeleted: 794
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN18llama_batch_allocr4initERK11llama_batchRK11llama_vocabPK14llama_memory_ijjb:bb.a
  %i.di = phi i32 [ %i.cx, %.preheader432 ], [ %i.dz, %._crit_edge499 ]
  store ptr %.pre706, ptr %i.cg, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph501, %._crit_edge499
  %indvars.iv634 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next635, %._crit_edge499 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv634
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !99 ; 6 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !68
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !68 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre706, i64 %indvars.iv634
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !68
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv634
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !68 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %bb.y
  %i.dt = add nsw i32 %i.do, 1                    ; 5 uses
  %wide.trip.count632 = zext nneg i32 %i.dr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count632, 3      ; 3 uses
  %i.du = icmp ult i32 %i.dr, 4
  br i1 %i.du, label %.epil.preheader, label %.lr.ph498.new

.lr.ph498.new:                                    ; preds = %.lr.ph498
  %unroll_iter = and i64 %wide.trip.count632, 2147483644
  br label %bb.aa

._crit_edge499.loopexit.unr-lcssa:                ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge499, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge499.loopexit.unr-lcssa, %.lr.ph498
  %indvars.iv629.epil.init = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next630.3, %._crit_edge499.loopexit.unr-lcssa ]
  %lcmp.mod975 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod975)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv629.epil = phi i64 [ %indvars.iv629.epil.init, %.epil.preheader ], [ %indvars.iv.next630.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv629.epil
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !68
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dx
  store i32 %i.dt, ptr %i.dy, align 4, !tbaa !68
  %indvars.iv.next630.epil = add nuw nsw i64 %indvars.iv629.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge499, label %bb.z, !llvm.loop !194

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit.unr-lcssa, %bb.z, %bb.y
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %i.dz = load i32, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next635, %i.ea
  br i1 %i.eb, label %bb.y, label %._crit_edge502, !llvm.loop !195

bb.aa:                                            ; preds = %bb.aa, %.lr.ph498.new
  %indvars.iv629 = phi i64 [ 0, %.lr.ph498.new ], [ %indvars.iv.next630.3, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph498.new ], [ %niter.next.3, %bb.aa ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv629
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !68
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ee
  store i32 %i.dt, ptr %i.ef, align 4, !tbaa !68
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv629
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !68
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej
  store i32 %i.dt, ptr %i.ek, align 4, !tbaa !68
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv629
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !68
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eo
  store i32 %i.dt, ptr %i.ep, align 4, !tbaa !68
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv629
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !68
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.et
  store i32 %i.dt, ptr %i.eu, align 4, !tbaa !68
  %indvars.iv.next630.3 = add nuw nsw i64 %indvars.iv629, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge499.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !196

bb.ab:                                            ; preds = %._crit_edge502, %bb.t
  %i.ev = phi i32 [ %i.di, %._crit_edge502 ], [ %i.cf, %bb.t ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !112 ; 6 uses
  %.not294 = icmp eq ptr %i.ex, null
  br i1 %.not294, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ez = sext i32 %i.ev to i64                   ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  br i1 %6, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i8 1, ptr %i.b, align 1, !tbaa !113
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !114 ; 3 uses
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !91 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %i.ez
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = sub nuw i64 %i.ez, %i.ff
  call void @_ZNSt6vectorIaSaIaEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPaS1_EEmRKa(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr %i.fb, i64 noundef %i.fh, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit

bb.af:                                            ; preds = %bb.ad
  %i.fi = icmp ugt i64 %i.ff, %i.ez
  br i1 %i.fi, label %bb.ag, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez ; 2 uses
  %.not.i.i327 = icmp eq ptr %i.fb, %i.fj
  br i1 %.not.i.i327, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ag
  store ptr %i.fj, ptr %i.fa, align 8, !tbaa !114
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit

_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit:            ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.al

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 0, ptr %i.c, align 1, !tbaa !113
  %i.fk = load ptr, ptr %i.fa, align 8, !tbaa !114 ; 5 uses
  %i.fl = load ptr, ptr %i.ey, align 8, !tbaa !91 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.ez
  br i1 %i.fp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fq = sub nuw i64 %i.ez, %i.fo
  call void @_ZNSt6vectorIaSaIaEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPaS1_EEmRKa(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr %i.fk, i64 noundef %i.fq, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre708 = load ptr, ptr %i.fa, align 8, !tbaa !114
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330

bb.aj:                                            ; preds = %bb.ah
  %i.fr = icmp ugt i64 %i.fo, %i.ez
  br i1 %i.fr, label %bb.ak, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330

bb.ak:                                            ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ez ; 3 uses
  %.not.i.i328 = icmp eq ptr %i.fk, %i.fs
  br i1 %.not.i.i328, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i329

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i329:     ; preds = %bb.ak
  store ptr %i.fs, ptr %i.fa, align 8, !tbaa !114
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330

_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330:         ; preds = %bb.ai, %bb.aj, %bb.ak, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i329
  %i.ft = phi ptr [ %.pre708, %bb.ai ], [ %i.fk, %bb.aj ], [ %i.fk, %bb.ak ], [ %i.fs, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.fu
  store i8 1, ptr %i.fv, align 1, !tbaa !113
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit330, %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !91
  br label %.critedge554.sink.split

bb.am:                                            ; preds = %bb.ab
  %i.fy = icmp sgt i32 %i.ev, 0
  %or.cond851 = and i1 %6, %i.fy
  br i1 %or.cond851, label %iter.check, label %.critedge554

iter.check:                                       ; preds = %bb.am
  %wide.trip.count639 = zext nneg i32 %i.ev to i64 ; 6 uses
  %min.iters.check889 = icmp ult i32 %i.ev, 4
  br i1 %min.iters.check889, label %.lr.ph505.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check890 = icmp ult i32 %i.ev, 32
  br i1 %min.iters.check890, label %vec.epilog.ph, label %vector.ph891

vector.ph891:                                     ; preds = %vector.main.loop.iter.check
  %i.fz = and i64 %wide.trip.count639, 28
  %n.vec892 = and i64 %wide.trip.count639, 2147483616 ; 4 uses
  br label %vector.body893

vector.body893:                                   ; preds = %vector.ph891, %vector.body893
  %index894 = phi i64 [ 0, %vector.ph891 ], [ %index.next897, %vector.body893 ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph891 ], [ %i.ge, %vector.body893 ]
  %vec.phi895 = phi <16 x i1> [ zeroinitializer, %vector.ph891 ], [ %i.gf, %vector.body893 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ex, i64 %index894 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load = load <16 x i8>, ptr %i.ga, align 1, !tbaa !113
  %wide.load896 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !113
  %i.gc = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.gd = icmp eq <16 x i8> %wide.load896, zeroinitializer
  %i.ge = or <16 x i1> %vec.phi, %i.gc            ; 2 uses
  %i.gf = or <16 x i1> %vec.phi895, %i.gd         ; 2 uses
  %index.next897 = add nuw i64 %index894, 32      ; 2 uses
  %i.gg = icmp eq i64 %index.next897, %n.vec892
  br i1 %i.gg, label %middle.block898, label %vector.body893, !llvm.loop !197

middle.block898:                                  ; preds = %vector.body893
  %bin.rdx = or <16 x i1> %i.gf, %i.ge
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.gh = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.gi = icmp ne i16 %i.gh, 0                    ; 3 uses
  %cmp.n899 = icmp eq i64 %n.vec892, %wide.trip.count639
  br i1 %cmp.n899, label %._crit_edge506, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block898
  %min.epilog.iters.check = icmp eq i64 %i.fz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph505.preheader, label %vec.epilog.ph, !prof !235

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec892, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.gi, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec900 = and i64 %wide.trip.count639, 2147483644 ; 3 uses
  %broadcast.splatinsert901 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat902 = shufflevector <4 x i1> %broadcast.splatinsert901, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index903 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next906, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi904 = phi <4 x i1> [ %broadcast.splat902, %vec.epilog.ph ], [ %i.gl, %vec.epilog.vector.body ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ex, i64 %index903
  %wide.load905 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !113
  %wide.load905.fr = freeze <4 x i8> %wide.load905
  %i.gk = icmp eq <4 x i8> %wide.load905.fr, zeroinitializer
  %i.gl = or <4 x i1> %vec.phi904, %i.gk          ; 2 uses
  %index.next906 = add nuw i64 %index903, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next906, %n.vec900
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gn = bitcast <4 x i1> %i.gl to i4
  %i.go = icmp ne i4 %i.gn, 0                     ; 2 uses
  %cmp.n907 = icmp eq i64 %n.vec900, %wide.trip.count639
  br i1 %cmp.n907, label %._crit_edge506, label %.lr.ph505.preheader

.lr.ph505.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv637.ph = phi i64 [ 0, %iter.check ], [ %n.vec892, %vec.epilog.iter.check ], [ %n.vec900, %vec.epilog.middle.block ]
  %.0263503.ph = phi i1 [ false, %iter.check ], [ %i.gi, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  br label %.lr.ph505

._crit_edge506:                                   ; preds = %.lr.ph505, %vec.epilog.middle.block, %middle.block898
  %spec.select.lcssa = phi i1 [ %i.go, %vec.epilog.middle.block ], [ %i.gi, %middle.block898 ], [ %spec.select, %.lr.ph505 ]
  br i1 %spec.select.lcssa, label %bb.an, label %.critedge554

.lr.ph505:                                        ; preds = %.lr.ph505.preheader, %.lr.ph505
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %.lr.ph505 ], [ %indvars.iv637.ph, %.lr.ph505.preheader ] ; 2 uses
  %.0263503 = phi i1 [ %spec.select, %.lr.ph505 ], [ %.0263503.ph, %.lr.ph505.preheader ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv637
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !113
  %i.gr = icmp eq i8 %i.gq, 0
  %spec.select = select i1 %i.gr, i1 true, i1 %.0263503 ; 2 uses
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %exitcond640.not = icmp eq i64 %indvars.iv.next638, %wide.trip.count639
  br i1 %exitcond640.not, label %._crit_edge506, label %.lr.ph505, !llvm.loop !199

bb.an:                                            ; preds = %._crit_edge506
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._ZN18llama_batch_allocr4initERK11llama_batchRK11llama_vocabPK14llama_memory_ijjb)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.gt = load i32, ptr %0, align 8, !tbaa !101
  %i.gu = sext i32 %i.gt to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i8 1, ptr %i.d, align 1, !tbaa !113
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !114 ; 3 uses
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !91 ; 5 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %i.gu
  br i1 %i.hb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hc = sub nuw i64 %i.gu, %i.ha
  call void @_ZNSt6vectorIaSaIaEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPaS1_EEmRKa(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr %i.gw, i64 noundef %i.hc, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre707 = load ptr, ptr %i.gs, align 8, !tbaa !91
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333

bb.ap:                                            ; preds = %bb.an
  %i.hd = icmp ugt i64 %i.ha, %i.gu
  br i1 %i.hd, label %bb.aq, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333

bb.aq:                                            ; preds = %bb.ap
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gu ; 2 uses
  %.not.i.i331 = icmp eq ptr %i.gw, %i.he
  br i1 %.not.i.i331, label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i332

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i332:     ; preds = %bb.aq
  store ptr %i.he, ptr %i.gv, align 8, !tbaa !114
  br label %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333

_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333:         ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i332
  %i.hf = phi ptr [ %.pre707, %bb.ao ], [ %i.gx, %bb.ap ], [ %i.gx, %bb.aq ], [ %i.gx, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.critedge554.sink.split

.critedge554.sink.split:                          ; preds = %bb.al, %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333
  %.sink = phi ptr [ %i.hf, %_ZNSt6vectorIaSaIaEE6resizeEmRKa.exit333 ], [ %i.fx, %bb.al ] ; 2 uses
  store ptr %.sink, ptr %i.ew, align 8, !tbaa !112
  br label %.critedge554

.critedge554:                                     ; preds = %.critedge554.sink.split, %._crit_edge506, %bb.am
  %i.hg = phi ptr [ %i.ex, %bb.am ], [ %i.ex, %._crit_edge506 ], [ %.sink, %.critedge554.sink.split ] ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %4, ptr %i.hh, align 4, !tbaa !115
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %5, ptr %i.hi, align 8, !tbaa !116
  %i.hj = load i32, ptr %0, align 8, !tbaa !101   ; 4 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph509, label %._crit_edge518.thread

.lr.ph509:                                        ; preds = %.critedge554
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 8 uses
  %.promoted = load i32, ptr %i.hl, align 4, !tbaa !117 ; 3 uses
  %wide.trip.count644 = zext nneg i32 %i.hj to i64 ; 6 uses
  %min.iters.check912 = icmp ult i32 %i.hj, 8
  br i1 %min.iters.check912, label %scalar.ph911.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph509
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 80
  %scevgep910 = getelementptr i8, ptr %i.hg, i64 %wide.trip.count644
  %bound0 = icmp ult ptr %i.hl, %scevgep910
  %bound1 = icmp ult ptr %i.hg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph911.preheader, label %vector.ph913

vector.ph913:                                     ; preds = %vector.memcheck
  %n.vec914 = and i64 %wide.trip.count644, 2147483640 ; 3 uses
  %i.hm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %vector.ph913
  %index916 = phi i64 [ 0, %vector.ph913 ], [ %index.next921, %vector.body915 ] ; 2 uses
  %vec.phi917 = phi <4 x i32> [ %i.hm, %vector.ph913 ], [ %i.ht, %vector.body915 ]
  %vec.phi918 = phi <4 x i32> [ zeroinitializer, %vector.ph913 ], [ %i.hu, %vector.body915 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %index916 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %wide.load919 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !113, !alias.scope !236
  %wide.load920 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !113, !alias.scope !236
  %i.hp = icmp ne <4 x i8> %wide.load919, zeroinitializer
  %i.hq = icmp ne <4 x i8> %wide.load920, zeroinitializer
  %i.hr = zext <4 x i1> %i.hp to <4 x i32>
  %i.hs = zext <4 x i1> %i.hq to <4 x i32>
  %i.ht = add <4 x i32> %vec.phi917, %i.hr        ; 2 uses
  %i.hu = add <4 x i32> %vec.phi918, %i.hs        ; 2 uses
  %index.next921 = add nuw i64 %index916, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next921, %n.vec914
  br i1 %i.hv, label %middle.block922, label %vector.body915, !llvm.loop !202

middle.block922:                                  ; preds = %vector.body915
  %bin.rdx923 = add <4 x i32> %i.hu, %i.ht
  %i.hw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx923) ; 2 uses
  store i32 %i.hw, ptr %i.hl, align 4, !tbaa !117, !alias.scope !237, !noalias !236
  %cmp.n924 = icmp eq i64 %n.vec914, %wide.trip.count644
  br i1 %cmp.n924, label %.lr.ph517, label %scalar.ph911.preheader

scalar.ph911.preheader:                           ; preds = %vector.memcheck, %.lr.ph509, %middle.block922
  %indvars.iv641.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph509 ], [ %n.vec914, %middle.block922 ] ; 3 uses
  %.ph = phi i32 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph509 ], [ %i.hw, %middle.block922 ] ; 2 uses
  %xtraiter976 = and i64 %wide.trip.count644, 3   ; 2 uses
  %lcmp.mod977.not = icmp eq i64 %xtraiter976, 0
  br i1 %lcmp.mod977.not, label %scalar.ph911.prol.loopexit, label %scalar.ph911.prol

scalar.ph911.prol:                                ; preds = %scalar.ph911.preheader, %scalar.ph911.prol
  %indvars.iv641.prol = phi i64 [ %indvars.iv.next642.prol, %scalar.ph911.prol ], [ %indvars.iv641.ph, %scalar.ph911.preheader ] ; 2 uses
  %i.hx = phi i32 [ %i.ic, %scalar.ph911.prol ], [ %.ph, %scalar.ph911.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph911.prol ], [ 0, %scalar.ph911.preheader ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv641.prol
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !113
  %i.ia = icmp ne i8 %i.hz, 0
  %i.ib = zext i1 %i.ia to i32
  %i.ic = add i32 %i.hx, %i.ib                    ; 3 uses
  store i32 %i.ic, ptr %i.hl, align 4, !tbaa !117
  %indvars.iv.next642.prol = add nuw nsw i64 %indvars.iv641.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter976
  br i1 %prol.iter.cmp.not, label %scalar.ph911.prol.loopexit, label %scalar.ph911.prol, !llvm.loop !204

scalar.ph911.prol.loopexit:                       ; preds = %scalar.ph911.prol, %scalar.ph911.preheader
  %indvars.iv641.unr = phi i64 [ %indvars.iv641.ph, %scalar.ph911.preheader ], [ %indvars.iv.next642.prol, %scalar.ph911.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph911.preheader ], [ %i.ic, %scalar.ph911.prol ]
  %i.id = sub nsw i64 %indvars.iv641.ph, %wide.trip.count644
  %i.ie = icmp ugt i64 %i.id, -4
end_hunk_0
