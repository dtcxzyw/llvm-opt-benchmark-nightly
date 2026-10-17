Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-context?download=true
inline.NumInlined: 3997
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN13llama_context6decodeERK11llama_batch:bb.a
  store <4 x i32> splat (i32 2147483647), ptr %i.it, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.iu, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.iv, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.iw, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.ix, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.iy, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.iz, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.ja, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.jb, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.jc, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.jd, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.je, align 16, !tbaa !199
  store <4 x i32> splat (i32 2147483647), ptr %i.jf, align 16, !tbaa !199
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !459 ; 4 uses
  %.not693 = icmp eq i32 %i.kn, 0
  br i1 %.not693, label %.preheader552.preheader, label %.lr.ph663

.preheader552.preheader.loopexit.unr-lcssa:       ; preds = %bb.bo
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader552.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader552.preheader.loopexit.unr-lcssa, %.lr.ph663
  %indvars.iv744.epil.init = phi i64 [ 0, %.lr.ph663 ], [ %indvars.iv.next745.1, %.preheader552.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod947 = trunc i32 %i.kn to i1
  call void @llvm.assume(i1 %lcmp.mod947)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv744.epil.init
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !356
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !199
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv744.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !199
  %i.kv = load i32, ptr %i.ks, align 4, !tbaa !199
  %i.kw = call i32 @llvm.smin.i32(i32 %i.ku, i32 %i.kv)
  store i32 %i.kw, ptr %i.ks, align 4, !tbaa !199
  br label %.preheader552.preheader

.preheader552.preheader:                          ; preds = %.epil.preheader, %.preheader552.preheader.loopexit.unr-lcssa, %vector.ph
  br label %.preheader552

.lr.ph663:                                        ; preds = %vector.ph
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !882 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !883 ; 3 uses
  %wide.trip.count747 = zext i32 %i.kn to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count747, 1
  %i.lb = icmp eq i32 %i.kn, 1
  br i1 %i.lb, label %.epil.preheader, label %.lr.ph663.new

.lr.ph663.new:                                    ; preds = %.lr.ph663
  %unroll_iter = and i64 %wide.trip.count747, 4294967294
  br label %bb.bo

.loopexit557:                                     ; preds = %_ZL22ctx_type_to_graph_type18llama_context_type.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bo:                                            ; preds = %bb.bo, %.lr.ph663.new
  %indvars.iv744 = phi i64 [ 0, %.lr.ph663.new ], [ %indvars.iv.next745.1, %bb.bo ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph663.new ], [ %niter.next.1, %bb.bo ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv744
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !356
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !199
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv744
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !199
  %i.lj = load i32, ptr %i.lg, align 4, !tbaa !199
  %i.lk = call i32 @llvm.smin.i32(i32 %i.li, i32 %i.lj)
  store i32 %i.lk, ptr %i.lg, align 4, !tbaa !199
  %indvars.iv.next745 = or disjoint i64 %indvars.iv744, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next745
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !356
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !199
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next745
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !199
  %i.ls = load i32, ptr %i.lp, align 4, !tbaa !199
  %i.lt = call i32 @llvm.smin.i32(i32 %i.lr, i32 %i.ls)
  store i32 %i.lt, ptr %i.lp, align 4, !tbaa !199
  %indvars.iv.next745.1 = add nuw nsw i64 %indvars.iv744, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader552.preheader.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !869

bb.bp:                                            ; preds = %bb.bs
  %i.lu = load i32, ptr %i.a, align 4, !tbaa !430 ; 2 uses
  switch i32 %i.lu, label %bb.bx [
    i32 1, label %.loopexit558.loopexit
    i32 -2, label %.loopexit558.loopexit916
    i32 -1, label %.loopexit558
    i32 0, label %bb.bu
  ]

.preheader552:                                    ; preds = %.preheader552.preheader, %bb.bs
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %bb.bs ], [ 0, %.preheader552.preheader ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv749
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !199 ; 3 uses
  %i.lx = icmp eq i32 %i.lw, 2147483647
  br i1 %i.lx, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.preheader552
  %i.ly = trunc nuw nsw i64 %indvars.iv749 to i32 ; 2 uses
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__._ZN13llama_context6decodeERK11llama_batch, i32 noundef %i.ly, i32 noundef %i.lw)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.lz = load ptr, ptr %i.i, align 8, !tbaa !327 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !329
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef zeroext i1 %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, i32 noundef %i.ly, i32 noundef %i.lw, i32 noundef -1)
          to label %bb.bs unwind label %bb.bt     ; 0 uses

bb.bs:                                            ; preds = %bb.br, %.preheader552
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next750, 256
  br i1 %exitcond752.not, label %bb.bp, label %.preheader552, !llvm.loop !870

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bu:                                            ; preds = %bb.bp
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1856, ptr noundef nonnull @.str.102) #33
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bt
  %.pn342 = phi { ptr, i32 } [ %i.me, %bb.bt ], [ %i.mf, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.body

bb.bz:                                            ; preds = %bb.bx, %bb.bn
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !468 ; 3 uses
  %i.mi = load i8, ptr %i.af, align 8, !tbaa !228, !range !226, !noundef !227
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !470
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.mm = phi ptr [ %i.ml, %bb.ca ], [ null, %bb.bz ] ; 2 uses
  %i.mn = load i8, ptr %i.ga, align 1, !tbaa !229, !range !226, !noundef !227
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !471
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.mr = phi ptr [ %i.mq, %bb.cc ], [ null, %bb.cb ] ; 3 uses
  %.not344 = icmp eq ptr %i.mm, null
  br i1 %.not344, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !469 ; 2 uses
  %.not345 = icmp eq ptr %i.mt, null
  %spec.select537 = select i1 %.not345, ptr %i.mm, ptr %i.mt
  br label %bb.cg

bb.cf:                                            ; preds = %.loopexit549
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %.0258 = phi ptr [ null, %bb.cd ], [ %spec.select537, %bb.ce ] ; 5 uses
  %i.mv = load ptr, ptr %i.gb, align 8, !tbaa !357
  %i.mw = icmp ne ptr %i.mv, null
  %i.mx = icmp ne ptr %i.mh, null
  %or.cond = and i1 %i.mx, %i.mw
  br i1 %or.cond, label %12, label %.loopexit.thread

12:                                               ; preds = %bb.cg
  %13 = load i32, ptr %i.fz, align 8, !tbaa !194
  %.not346 = icmp eq i32 %13, 0
  br i1 %.not346, label %.loopexit.thread, label %bb.ch

bb.ch:                                            ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.my = load i32, ptr %14, align 4, !tbaa !459  ; 2 uses
  %.not346.a = icmp eq i32 %i.my, 0
  br i1 %.not346.a, label %.loopexit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jn, i64 80
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !405 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = load ptr, ptr %i.gc, align 8
  %.fr.i = freeze ptr %i.nf                       ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %.fr.i, null
  %wide.trip.count52.i = zext i32 %i.my to i64    ; 2 uses
  br i1 %.not10.i.i.i.i, label %.lr.ph667.a, label %.lr.ph34.split.i

.lr.ph667.a:                                      ; preds = %bb.ci, %.loopexit.us.i
  %indvars.iv36.i666 = phi i64 [ %indvars.iv.next50.i, %.loopexit.us.i ], [ 0, %bb.ci ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 %indvars.iv36.i666
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !205
  %.not.i399.a = icmp eq i8 %i.nh, 0
  br i1 %.not.i399.a, label %.loopexit.us.i, label %.preheader.i.a

.loopexit.us.i:                                   ; preds = %.preheader.i.a, %.lr.ph667.a
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv36.i666, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %.loopexit.thread, label %.lr.ph667.a, !llvm.loop !871

.preheader.i.a:                                   ; preds = %.lr.ph667.a
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv36.i666
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !199
  %.not2331.i.a = icmp sgt i32 %i.nj, 0
  br i1 %.not2331.i.a, label %bb.ck, label %.loopexit.us.i

.lr.ph34.split.i:                                 ; preds = %bb.ci, %.loopexit.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next37.i, %.loopexit.i ], [ 0, %bb.ci ] ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.na, i64 %indvars.iv44.i
  %16 = load i8, ptr %15, align 1, !tbaa !205
  %.not.i399 = icmp eq i8 %16, 0
  br i1 %.not.i399, label %.loopexit.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph34.split.i
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv44.i
  %18 = load i32, ptr %17, align 4, !tbaa !199    ; 2 uses
  %.not2331.i = icmp sgt i32 %18, 0
  br i1 %.not2331.i, label %.lr.ph.i.i.i.preheader.preheader.i, label %.loopexit.i

.lr.ph.i.i.i.preheader.preheader.i:               ; preds = %.lr.ph.i.a
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv44.i
  %20 = load ptr, ptr %19, align 8, !tbaa !356
  %wide.trip.count.i = zext nneg i32 %18 to i64
  br label %.lr.ph.i.i.i.preheader.i

bb.cj:                                            ; preds = %_ZNKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader.i, !llvm.loop !872

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.cj, %.lr.ph.i.i.i.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.cj ] ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv.i
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !199 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.fr.i, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fy, %.lr.ph.i.i.i.preheader.i ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !199
  %i.no = icmp slt i32 %i.nn, %i.nl               ; 2 uses
  %.19.i.i.i.i = select i1 %i.no, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.no, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i400 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i400, label %_ZNKSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.np = icmp eq ptr %.19.i.i.i.i, %i.fy
  br i1 %i.np, label %bb.ck, label %_ZNKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i

_ZNKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !199
  %i.ns = icmp slt i32 %i.nl, %i.nr
  br i1 %i.ns, label %bb.ck, label %bb.cj

.loopexit.i:                                      ; preds = %bb.cj, %.lr.ph.i.a, %.lr.ph34.split.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count52.i
  br i1 %exitcond40.not.i, label %.loopexit.thread, label %.lr.ph34.split.i, !llvm.loop !871

bb.ck:                                            ; preds = %.preheader.i.a, %_ZNKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS1_EEE4findERS5_.exit.i, %_ZNKSt8_Rb_treeIiSt4pairIKiP13llama_samplerESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.nt = load ptr, ptr %i.gd, align 8, !tbaa !365
  %i.nu = invoke ptr @ggml_backend_sched_get_tensor_backend(ptr noundef %i.nt, ptr noundef nonnull %i.mh)
          to label %bb.cl unwind label %.loopexit559.a ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %.not347 = icmp eq ptr %i.nu, null
  br i1 %.not347, label %.invoke, label %bb.cm

.invoke:                                          ; preds = %bb.cl, %bb.cm
  %i.nv = phi i32 [ 1877, %bb.cm ], [ 1876, %bb.cl ]
  %i.nw = phi ptr [ @.str.104, %bb.cm ], [ @.str.103, %bb.cl ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.nv, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.nw) #33
          to label %.cont unwind label %.loopexit.split-lp560

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit559.a:                                   ; preds = %bb.ck
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp560:                            ; preds = %.invoke
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cm:                                            ; preds = %bb.cl
  %i.nx = load ptr, ptr %i.gb, align 8, !tbaa !357 ; 2 uses
  %.not348 = icmp eq ptr %i.nx, null
  br i1 %.not348, label %.invoke, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ny = mul nuw nsw i64 %.0267, %i.r
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = load i32, ptr %i.fz, align 8, !tbaa !194 ; 2 uses
  %.not349 = icmp eq i32 %i.oa, 0
  br i1 %.not349, label %.loopexit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = add nuw nsw i64 %.0267, %i.ob           ; 2 uses
  %.not350 = icmp samesign ugt i64 %i.oc, %i.ge
  br i1 %.not350, label %.invoke868, label %bb.cp

.invoke868:                                       ; preds = %bb.co, %bb.cp
  %i.od = phi i32 [ 1883, %bb.cp ], [ 1882, %bb.co ]
  %i.oe = phi ptr [ @.str.123, %bb.cp ], [ @.str.122, %bb.co ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.od, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.oe) #33
          to label %.cont869 unwind label %.loopexit.split-lp565

.cont869:                                         ; preds = %.invoke868
  unreachable

.loopexit564:                                     ; preds = %bb.cq
  %lpad.loopexit566 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp565:                            ; preds = %.invoke868
  %lpad.loopexit.split-lp567 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %bb.co
  %i.of = mul nuw nsw i64 %i.oc, %i.r
  %i.og = load i64, ptr %i.gf, align 8, !tbaa !353
  %.not351 = icmp sgt i64 %i.of, %i.og
  br i1 %.not351, label %.invoke868, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oh = mul i64 %i.gg, %i.ob
  invoke void @ggml_backend_tensor_get_async(ptr noundef nonnull %i.nu, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.nz, i64 noundef 0, i64 noundef %i.oh)
          to label %.loopexit.thread unwind label %.loopexit564

.loopexit.thread:                                 ; preds = %.loopexit.i, %.loopexit.us.i, %bb.ch, %bb.cn, %bb.cq, %12, %bb.cg
  %i.oi = load ptr, ptr %i.gh, align 8, !tbaa !358
  %i.oj = icmp ne ptr %i.oi, null
  %i.ok = icmp ne ptr %.0258, null
  %or.cond9 = and i1 %i.ok, %i.oj
  br i1 %or.cond9, label %bb.cr, label %.loopexit549

bb.cr:                                            ; preds = %.loopexit.thread
  %i.ol = load i32, ptr %i.fz, align 8, !tbaa !194
  %.not354 = icmp eq i32 %i.ol, 0
  br i1 %.not354, label %.loopexit549, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.om = load ptr, ptr %i.gd, align 8, !tbaa !365
  %i.on = invoke ptr @ggml_backend_sched_get_tensor_backend(ptr noundef %i.om, ptr noundef nonnull %.0258)
          to label %bb.ct unwind label %.loopexit569 ; 4 uses

bb.ct:                                            ; preds = %bb.cs
  %.not355 = icmp eq ptr %i.on, null
  br i1 %.not355, label %.invoke870, label %bb.cu

.invoke870:                                       ; preds = %bb.ct, %bb.cv
  %i.oo = phi i32 [ 1897, %bb.cv ], [ 1891, %bb.ct ]
  %i.op = phi ptr [ @.str.106, %bb.cv ], [ @.str.105, %bb.ct ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.oo, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.op) #33
          to label %.cont871 unwind label %.loopexit.split-lp570

.cont871:                                         ; preds = %.invoke870
  unreachable

.loopexit569:                                     ; preds = %bb.cs
  %lpad.loopexit571 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp570:                            ; preds = %.invoke870, %bb.eb
  %lpad.loopexit.split-lp572 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cu:                                            ; preds = %bb.ct
  %i.oq = load i32, ptr %i.gi, align 8, !tbaa !236
  switch i32 %i.oq, label %.loopexit549 [
    i32 0, label %bb.cv
    i32 1, label %bb.dc
    i32 2, label %bb.dc
    i32 3, label %bb.dc
    i32 4, label %bb.dp
    i32 -1, label %bb.eb
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.or = load ptr, ptr %i.gh, align 8, !tbaa !358
  %.not358 = icmp eq ptr %i.or, null
  br i1 %.not358, label %.invoke870, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.os = invoke noundef i32 @_ZNK13llama_hparams10n_embd_outEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.p)
          to label %bb.cx unwind label %bb.cz     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.ot = load ptr, ptr %i.gh, align 8, !tbaa !358
  %i.ou = zext i32 %i.os to i64                   ; 2 uses
  %i.ov = mul nuw nsw i64 %.0267, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ov
  %i.ox = load i32, ptr %i.fz, align 8, !tbaa !194 ; 3 uses
  %.not359 = icmp eq i32 %i.ox, 0
  br i1 %.not359, label %.loopexit549, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oy = zext i32 %i.ox to i64
  %i.oz = add nuw nsw i64 %.0267, %i.oy           ; 2 uses
  %.not360 = icmp samesign ugt i64 %i.oz, %i.ge
  br i1 %.not360, label %.invoke872, label %bb.da

.invoke872:                                       ; preds = %bb.cy, %bb.da
  %i.pa = phi i32 [ 1903, %bb.da ], [ 1902, %bb.cy ]
  %i.pb = phi ptr [ @.str.124, %bb.da ], [ @.str.122, %bb.cy ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.pa, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.pb) #33
          to label %.cont873 unwind label %.loopexit.split-lp575

.cont873:                                         ; preds = %.invoke872
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit574:                                     ; preds = %bb.db
  %lpad.loopexit576 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp575:                            ; preds = %.invoke872
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %bb.cy
  %i.pd = mul nuw nsw i64 %i.oz, %i.ou
  %i.pe = load i64, ptr %i.gk, align 8, !tbaa !354
  %.not361 = icmp sgt i64 %i.pd, %i.pe
  br i1 %.not361, label %.invoke872, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pf = mul i32 %i.ox, %i.os
  %i.pg = zext i32 %i.pf to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2
  invoke void @ggml_backend_tensor_get_async(ptr noundef nonnull %i.on, ptr noundef nonnull %.0258, ptr noundef %i.ow, i64 noundef 0, i64 noundef %i.ph)
          to label %.loopexit549 unwind label %.loopexit574

bb.dc:                                            ; preds = %bb.cu, %bb.cu, %bb.cu
  %i.pi = invoke noundef i32 @_ZNK13llama_hparams10n_embd_outEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.p)
          to label %.preheader548 unwind label %bb.dd ; 2 uses

.preheader548:                                    ; preds = %bb.dc
  %i.pj = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !472
  %.not695 = icmp eq i32 %i.pk, 0
  br i1 %.not695, label %.loopexit549, label %.lr.ph673

.lr.ph673:                                        ; preds = %.preheader548
  %i.pl = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.pn = zext i32 %i.pi to i64                   ; 5 uses
  %i.po = shl nuw nsw i64 %i.pn, 2
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.de:                                            ; preds = %.lr.ph673, %bb.dn
  %indvars.iv756 = phi i64 [ 0, %.lr.ph673 ], [ %indvars.iv.next757, %bb.dn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.pq = load ptr, ptr %i.pl, align 8, !tbaa !404
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv756
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !199 ; 4 uses
  store i32 %i.ps, ptr %i.c, align 4, !tbaa !199
  %i.pt = load ptr, ptr %i.pm, align 8, !tbaa !473
  %i.pu = sext i32 %i.ps to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !199
  %i.px = load ptr, ptr %i.du, align 8, !tbaa !72 ; 2 uses
  %.not10.i.i.i.i401 = icmp eq ptr %i.px, null
  br i1 %.not10.i.i.i.i401, label %.critedge.i, label %.lr.ph.i.i.i.i402

.lr.ph.i.i.i.i402:                                ; preds = %bb.de, %.lr.ph.i.i.i.i402
  %.012.i.i.i.i403 = phi ptr [ %.1.i.i.i.i408, %.lr.ph.i.i.i.i402 ], [ %i.px, %bb.de ] ; 3 uses
  %.0811.i.i.i.i404 = phi ptr [ %.19.i.i.i.i405, %.lr.ph.i.i.i.i402 ], [ %i.dy, %bb.de ]
  %i.py = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i403, i64 32
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !199
  %i.qa = icmp slt i32 %i.pz, %i.ps               ; 2 uses
  %.19.i.i.i.i405 = select i1 %i.qa, ptr %.0811.i.i.i.i404, ptr %.012.i.i.i.i403 ; 6 uses
  %.1.in.v.i.i.i.i406 = select i1 %i.qa, i64 24, i64 16
  %.1.in.i.i.i.i407 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i403, i64 %.1.in.v.i.i.i.i406
  %.1.i.i.i.i408 = load ptr, ptr %.1.in.i.i.i.i407, align 8, !tbaa !349 ; 2 uses
  %.not.i.i.i.i409 = icmp eq ptr %.1.i.i.i.i408, null
  br i1 %.not.i.i.i.i409, label %_ZNSt3mapIiSt6vectorIfSaIfEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i402, !llvm.loop !9

_ZNSt3mapIiSt6vectorIfSaIfEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i402
  %i.qb = icmp eq ptr %.19.i.i.i.i405, %i.dy
  br i1 %i.qb, label %.critedge.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt3mapIiSt6vectorIfSaIfEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i405, i64 32
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !199
  %i.qe = icmp slt i32 %i.ps, %i.qd
  br i1 %i.qe, label %.critedge.i, label %bb.dg

.critedge.i:                                      ; preds = %bb.df, %_ZNSt3mapIiSt6vectorIfSaIfEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %bb.de
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i405, %bb.df ], [ %.19.i.i.i.i405, %_ZNSt3mapIiSt6vectorIfSaIfEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.dy, %bb.de ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.c, ptr %8, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.qf = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIfSaIfEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc410 unwind label %bb.do

.noexc410:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.dg

bb.dg:                                            ; preds = %.noexc410, %bb.df
  %.sroa.06.0.i = phi ptr [ %i.qf, %.noexc410 ], [ %.19.i.i.i.i405, %bb.df ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !474 ; 2 uses
  %i.qj = load ptr, ptr %i.qg, align 8, !tbaa !373 ; 2 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = ashr exact i64 %i.qm, 2                 ; 3 uses
  %i.qo = icmp ult i64 %i.qn, %i.pn
  br i1 %i.qo, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qp = sub nuw nsw i64 %i.pn, %i.qn
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qg, i64 noundef %i.qp)
end_hunk_0
