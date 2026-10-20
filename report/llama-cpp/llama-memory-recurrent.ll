Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-memory-recurrent?download=true
inline.NumInlined: 1548
inline.NumDeleted: 796
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN22llama_memory_recurrent9find_slotERK12llama_ubatch:bb.a
  %.0189.lcssa449454 = phi i32 [ 0, %._crit_edge ], [ %.1190, %._crit_edge344 ] ; 4 uses
  %.0182.lcssa450453 = phi i32 [ %i.q, %._crit_edge ], [ %spec.select244, %._crit_edge344 ] ; 5 uses
  %i.il = load i32, ptr %i.o, align 4, !tbaa !49  ; 4 uses
  %i.im = zext i32 %i.il to i64                   ; 4 uses
  %.not.i.i.i.i246 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i.i246, label %._crit_edge350, label %.lr.ph349

bb.an:                                            ; preds = %.lr.ph346, %._crit_edge344
  %.0185345 = phi i32 [ 0, %.lr.ph346 ], [ %i.jt, %._crit_edge344 ] ; 3 uses
  %i.in = mul i32 %.0185345, %i.c                 ; 3 uses
  %i.io = load ptr, ptr %i.fr, align 8, !tbaa !136
  %i.ip = add i32 %i.fs, %i.in
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !52 ; 3 uses
  %i.it = add i32 %.0185345, %spec.select244      ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = load ptr, ptr %i.ft, align 8, !tbaa !53
  %i.iw = getelementptr inbounds nuw [64 x i8], ptr %i.iv, i64 %i.iu ; 8 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !98 ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 0
  %i.iz = add nsw i32 %i.ix, %i.c
  %.not234 = icmp eq i32 %i.is, %i.iz
  %or.cond = select i1 %i.iy, i1 true, i1 %.not234
  br i1 %or.cond, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = load ptr, ptr %i.fu, align 8, !tbaa !133
  %i.jb = zext i32 %i.in to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !102
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !52
  call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._ZN22llama_memory_recurrent9find_slotERK12llama_ubatch, i32 noundef %i.is, i32 noundef %i.ix, i32 noundef %i.je, i32 noundef %i.c)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 %i.is, ptr %i.iw, align 8, !tbaa !98
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.jf, ptr noundef %i.jh)
          to label %_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #28
  unreachable

_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit:         ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 5 uses
  store ptr null, ptr %i.jg, align 8, !tbaa !60
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 40 ; 2 uses
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !63
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  store ptr %i.jk, ptr %i.jm, align 8, !tbaa !64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iw, i64 56 ; 3 uses
  store i64 0, ptr %i.jn, align 8, !tbaa !65
  %i.jo = zext i32 %i.in to i64                   ; 3 uses
  %i.jp = load ptr, ptr %i.fv, align 8, !tbaa !132 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jo
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !52
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.lr.ph343, label %._crit_edge344

._crit_edge344:                                   ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270, %_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit
  %i.jt = add nuw i32 %.0185345, 1                ; 2 uses
  %exitcond398.not = icmp eq i32 %i.jt, %i.e
  br i1 %exitcond398.not, label %._crit_edge347, label %bb.an, !llvm.loop !207

.lr.ph343:                                        ; preds = %_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270
  %i.ju = phi ptr [ %i.kr, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270 ], [ %i.jp, %_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit ]
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270 ], [ 0, %_ZNSt3setIiSt4lessIiESaIiEE5clearEv.exit ] ; 2 uses
  %i.jv = load ptr, ptr %i.fu, align 8, !tbaa !133
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jo
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !102
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv395
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !52 ; 5 uses
  %.02022.i.i.i247 = load ptr, ptr %i.jg, align 8, !tbaa !70 ; 2 uses
  %.not23.i.i.i248 = icmp eq ptr %.02022.i.i.i247, null
  br i1 %.not23.i.i.i248, label %._crit_edge.thread.i.i.i265, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %.lr.ph343, %.lr.ph.i.i.i249
  %.02024.i.i.i250 = phi ptr [ %.020.i.i.i253, %.lr.ph.i.i.i249 ], [ %.02022.i.i.i247, %.lr.ph343 ] ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.02024.i.i.i250, i64 32
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !52 ; 2 uses
  %i.kc = icmp slt i32 %i.jz, %i.kb               ; 2 uses
  %.in.v.i.i.i251 = select i1 %i.kc, i64 16, i64 24
  %.in.i.i.i252 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i250, i64 %.in.v.i.i.i251
  %.020.i.i.i253 = load ptr, ptr %.in.i.i.i252, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %.020.i.i.i253, null
  br i1 %.not.i.i.i254, label %._crit_edge.i.i.i255, label %.lr.ph.i.i.i249, !llvm.loop !3

._crit_edge.i.i.i255:                             ; preds = %.lr.ph.i.i.i249
  br i1 %i.kc, label %._crit_edge.thread.i.i.i265, label %bb.as

._crit_edge.thread.i.i.i265:                      ; preds = %._crit_edge.i.i.i255, %.lr.ph343
  %.019.lcssa29.i.i.i266 = phi ptr [ %.02024.i.i.i250, %._crit_edge.i.i.i255 ], [ %i.jk, %.lr.ph343 ] ; 4 uses
  %i.kd = load ptr, ptr %i.jl, align 8, !tbaa !63
  %i.ke = icmp eq ptr %.019.lcssa29.i.i.i266, %i.kd
  br i1 %i.ke, label %select.unfold.i.i262, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.thread.i.i.i265
  %i.kf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i266) #29
  %.phi.trans.insert.i.i267 = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %.pre.i.i268 = load i32, ptr %.phi.trans.insert.i.i267, align 4, !tbaa !52
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i255
  %i.kg = phi i32 [ %.pre.i.i268, %bb.ar ], [ %i.kb, %._crit_edge.i.i.i255 ]
  %.019.lcssa28.i.i.i256 = phi ptr [ %.019.lcssa29.i.i.i266, %bb.ar ], [ %.02024.i.i.i250, %._crit_edge.i.i.i255 ]
  %i.kh = icmp slt i32 %i.kg, %i.jz
  br i1 %i.kh, label %select.unfold.i.i262, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270

select.unfold.i.i262:                             ; preds = %bb.as, %._crit_edge.thread.i.i.i265
  %.sroa.4.0.i.ph.i.i263 = phi ptr [ %.019.lcssa29.i.i.i266, %._crit_edge.thread.i.i.i265 ], [ %.019.lcssa28.i.i.i256, %bb.as ] ; 3 uses
  %i.ki = icmp eq ptr %.sroa.4.0.i.ph.i.i263, %i.jk
  br i1 %i.ki, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i264, label %bb.at

bb.at:                                            ; preds = %select.unfold.i.i262
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i263, i64 32
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !52
  %i.kl = icmp slt i32 %i.jz, %i.kk
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i264

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i264: ; preds = %bb.at, %select.unfold.i.i262
  %i.km = phi i1 [ %i.kl, %bb.at ], [ true, %select.unfold.i.i262 ]
  %i.kn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  store i32 %i.jz, ptr %i.ko, align 4, !tbaa !52
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.km, ptr noundef nonnull %i.kn, ptr noundef nonnull %.sroa.4.0.i.ph.i.i263, ptr noundef nonnull align 8 dereferenceable(32) %i.jk) #27
  %i.kp = load i64, ptr %i.jn, align 8, !tbaa !65
  %i.kq = add i64 %i.kp, 1
  store i64 %i.kq, ptr %i.jn, align 8, !tbaa !65
  %.pre411 = load ptr, ptr %i.fv, align 8, !tbaa !132
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit270:   ; preds = %bb.as, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i264
  %i.kr = phi ptr [ %i.ju, %bb.as ], [ %.pre411, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i264 ] ; 2 uses
  %i.ks = sext i32 %i.jz to i64
  %i.kt = load ptr, ptr %i.ft, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw [64 x i8], ptr %i.kt, i64 %i.ks
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 %i.it, ptr %i.kv, align 4, !tbaa !100
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.jo
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !52
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next396, %i.ky
  br i1 %i.kz, label %.lr.ph343, label %._crit_edge344, !llvm.loop !208

.lr.ph349:                                        ; preds = %._crit_edge347
  %i.la = shl nuw nsw i64 %i.im, 2                ; 2 uses
  %i.lb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #30 ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lb, i8 0, i64 %i.la, i1 false), !tbaa !52
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.im
  %i.ld = ptrtoint ptr %i.lc to i64               ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !53 ; 3 uses
  %xtraiter = and i64 %i.im, 1
  %i.lg = icmp eq i32 %i.il, 1
  br i1 %i.lg, label %.epil.preheader, label %.lr.ph349.new

.lr.ph349.new:                                    ; preds = %.lr.ph349
  %unroll_iter = and i64 %i.im, 4294967294
  br label %bb.av

._crit_edge350.loopexit.unr-lcssa:                ; preds = %bb.az
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge350, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge350.loopexit.unr-lcssa, %.lr.ph349
  %.0179348.epil.init = phi i64 [ 0, %.lr.ph349 ], [ %i.mh, %._crit_edge350.loopexit.unr-lcssa ]
  %lcmp.mod496 = trunc i32 %i.il to i1
  call void @llvm.assume(i1 %lcmp.mod496)
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %.0179348.epil.init
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !99 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, -1
  br i1 %i.lk, label %bb.au, label %._crit_edge350

bb.au:                                            ; preds = %.epil.preheader
  %i.ll = zext nneg i32 %i.lj to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !52
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !52
  br label %._crit_edge350

._crit_edge350:                                   ; preds = %._crit_edge350.loopexit.unr-lcssa, %bb.au, %.epil.preheader, %._crit_edge347
  %.sroa.11.0458 = phi i64 [ 0, %._crit_edge347 ], [ %i.ld, %.epil.preheader ], [ %i.ld, %bb.au ], [ %i.ld, %._crit_edge350.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0279.0457 = phi ptr [ null, %._crit_edge347 ], [ %i.lb, %.epil.preheader ], [ %i.lb, %bb.au ], [ %i.lb, %._crit_edge350.loopexit.unr-lcssa ] ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 -1, ptr %i.lp, align 4, !tbaa !46
  %.not231351 = icmp sgt i32 %.0182.lcssa450453, %.0189.lcssa449454
  br i1 %.not231351, label %._crit_edge359, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %._crit_edge350
  %i.lq = sext i32 %.0182.lcssa450453 to i64
  %2 = zext nneg i32 %.0189.lcssa449454 to i64
  br label %.lr.ph354

bb.av:                                            ; preds = %bb.az, %.lr.ph349.new
  %.0179348 = phi i64 [ 0, %.lr.ph349.new ], [ %i.mh, %bb.az ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph349.new ], [ %niter.next.1, %bb.az ]
  %i.lr = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %.0179348
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !99 ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, -1
  br i1 %i.lu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lv = zext nneg i32 %i.lt to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lv ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !52
  %i.ly = add nsw i32 %i.lx, 1
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !52
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lz = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %.0179348
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 68
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !99 ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, -1
  br i1 %i.mc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.md = zext nneg i32 %i.mb to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !52
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !52
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mh = add nuw nsw i64 %.0179348, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge350.loopexit.unr-lcssa, label %bb.av, !llvm.loop !209

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %bb.bb
  %indvars.iv400 = phi i64 [ %i.lq, %.lr.ph354.preheader ], [ %indvars.iv.next401, %bb.bb ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0279.0457, i64 %indvars.iv400
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !52
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph354
  %i.ml = trunc nsw i64 %indvars.iv400 to i32     ; 2 uses
  store i32 %i.ml, ptr %i.lp, align 4, !tbaa !46
  br label %.lr.ph358

bb.bb:                                            ; preds = %.lr.ph354
  %indvars.iv.next401 = add nsw i64 %indvars.iv400, 1 ; 2 uses
  %.not231 = icmp sgt i64 %indvars.iv.next401, %2
  br i1 %.not231, label %.lr.ph358, label %.lr.ph354, !llvm.loop !210

.lr.ph358:                                        ; preds = %bb.bb, %bb.ba
  %i.mm = phi i32 [ %i.ml, %bb.ba ], [ -1, %bb.bb ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !53
  %i.mp = sext i32 %.0182.lcssa450453 to i64
  %3 = zext nneg i32 %.0189.lcssa449454 to i64
  %i.mq = icmp sgt i32 %i.mm, -1
  br label %bb.bc

._crit_edge359:                                   ; preds = %bb.bh, %._crit_edge350
  %.not.i.i.i271 = icmp eq ptr %.sroa.0279.0457, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge359.thread

._crit_edge359.thread:                            ; preds = %._crit_edge359
  %i.mr = ptrtoint ptr %.sroa.0279.0457 to i64
  %i.ms = sub i64 %.sroa.11.0458, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0457, i64 noundef %i.ms) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge359, %._crit_edge359.thread
  store i32 %.0182.lcssa450453, ptr %i.f, align 8, !tbaa !48
  %i.mt = sub nsw i32 %.0189.lcssa449454, %.0182.lcssa450453
  %i.mu = add nsw i32 %i.mt, 1                    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.mu, ptr %i.mv, align 8, !tbaa !216
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !217 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !217 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.mx, %i.mz
  br i1 %.not5.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.02.06.i.i = phi ptr [ %i.nc, %.lr.ph.i.i ], [ %i.mx, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.na = getelementptr i8, ptr %.sroa.02.06.i.i, i64 56
  %.val.i.i.i = load i64, ptr %i.na, align 8, !tbaa !65
  %.not4.i.i = icmp ne i64 %.val.i.i.i, 0
  %i.nb = zext i1 %.not4.i.i to i32
  %spec.select.i.i = add i32 %.07.i.i, %i.nb      ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.nc, %i.mz
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit", label %.lr.ph.i.i, !llvm.loop !211

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit": ; preds = %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  store i32 %.0.lcssa.i.i, ptr %i.h, align 8, !tbaa !50
  %i.nd = icmp uge i32 %i.mu, %i.e
  br label %bb.bi

bb.bc:                                            ; preds = %.lr.ph358, %bb.bh
  %indvars.iv404 = phi i64 [ %i.mp, %.lr.ph358 ], [ %indvars.iv.next405, %bb.bh ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [64 x i8], ptr %i.mo, i64 %indvars.iv404 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !99 ; 2 uses
  %i.nh = icmp sgt i32 %i.ng, -1                  ; 2 uses
  %brmerge = select i1 %i.nh, i1 true, i1 %i.mq
  br i1 %brmerge, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef 695, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21) #32
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i272 = icmp eq ptr %.sroa.0279.0457, null
  br i1 %.not.i.i.i272, label %_ZNSt6vectorIiSaIiEED2Ev.exit273, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nj = ptrtoint ptr %.sroa.0279.0457 to i64
  %i.nk = sub i64 %.sroa.11.0458, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0457, i64 noundef %i.nk) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit273

bb.bh:                                            ; preds = %bb.bc
  %.mux = select i1 %i.nh, i32 %i.ng, i32 %i.mm
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i32 %.mux, ptr %i.nl, align 8, !tbaa !137
  %i.nm = trunc nsw i64 %indvars.iv404 to i32
  store i32 %i.nm, ptr %i.nf, align 4, !tbaa !99
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, 1 ; 2 uses
  %.not232 = icmp sgt i64 %indvars.iv.next405, %3
  br i1 %.not232, label %._crit_edge359, label %bb.bc, !llvm.loop !212

_ZNSt6vectorIiSaIiEED2Ev.exit273:                 ; preds = %bb.bg, %bb.bf
  resume { ptr, i32 } %i.ni

bb.bi:                                            ; preds = %bb.r, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit"
  %.5 = phi i1 [ %i.nd, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPN22llama_memory_recurrent8mem_cellESt6vectorIS3_SaIS3_EEEEZNS2_9find_slotERK12llama_ubatchE3$_0ENSt15iterator_traitsIT_E15difference_typeESE_SE_T0_.exit" ], [ false, %bb.r ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK22llama_memory_recurrent13get_can_shiftEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK22llama_memory_recurrent10total_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.011 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = tail call i64 @ggml_backend_buffer_get_size(ptr noundef %i.f)
  %i.h = add i64 %i.g, %.012                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i64 @ggml_nbytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK22llama_memory_recurrent11state_writeER16llama_io_write_iij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.194", align 8   ; 20 uses
  %5 = alloca %"class.std::vector.194", align 8   ; 13 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !49   ; 3 uses
  %.not203 = icmp eq i32 %i.c, 0
  br i1 %.not203, label %._crit_edge.thread, label %.lr.ph180

._crit_edge.thread:                               ; preds = %bb.a
  store ptr null, ptr %5, align 8
  store ptr null, ptr %4, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

.lr.ph180:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = icmp eq i32 %2, -1                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = icmp sgt i32 %2, -1
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %i.o = icmp eq i32 %.2131, %i.eh
  store ptr %i.en, ptr %5, align 8
  store ptr %i.em, ptr %4, align 8
  br i1 %i.o, label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit, label %bb.z

bb.b:                                             ; preds = %.lr.ph180, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %i.p = phi i32 [ %i.c, %.lr.ph180 ], [ %i.eh, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 5 uses
  %i.q = phi ptr [ null, %.lr.ph180 ], [ %i.ei, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 7 uses
  %i.r = phi ptr [ null, %.lr.ph180 ], [ %i.ej, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph180 ], [ %i.ek, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 12 uses
  %i.t = phi ptr [ null, %.lr.ph180 ], [ %i.el, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 10 uses
  %.0129177 = phi i32 [ %i.c, %.lr.ph180 ], [ %.2131, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 5 uses
  %i.u = phi ptr [ null, %.lr.ph180 ], [ %i.en, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 18 uses
  %i.v = phi ptr [ null, %.lr.ph180 ], [ %i.em, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ] ; 12 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %indvars.iv ; 6 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ad, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.ag = icmp slt i32 %i.af, %2                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.ad
  br i1 %i.ah, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit

_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !52
  %.not137 = icmp slt i32 %2, %i.aj
  br i1 %.not137, label %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !52
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !52
  %i.am = load i32, ptr %i.f, align 4, !tbaa !51
  %.not51 = icmp eq i32 %i.am, 0
  br i1 %.not51, label %.loopexit, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.an = load i32, ptr %i.a, align 4, !tbaa !52
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !52
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !51
  %.not51133 = icmp eq i32 %i.ap, 0
  br i1 %.not51133, label %.loopexit, label %.thread134

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %.thread134, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.loopexit226.invoke

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !88  ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = icmp ugt i64 %i.av, %i.h
  br i1 %i.aw, label %bb.i, label %.loopexit226.invoke

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.h
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !52
  br label %.loopexit

.thread134:                                       ; preds = %.thread, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.not138158 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not138158, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread134
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.j, label %.loopexit226.invoke

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.bf = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bf
  br i1 %i.bm, label %bb.k, label %.loopexit226.invoke

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !52 ; 3 uses
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ba) #29 ; 2 uses
end_hunk_0
