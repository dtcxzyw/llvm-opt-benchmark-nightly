Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-memory-recurrent?download=true
inline.NumInlined: 1548
inline.NumDeleted: 796
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN22llama_memory_recurrent9find_slotERK12llama_ubatch:bb.a
  %i.hv = load ptr, ptr %i.gp, align 8, !tbaa !70
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hu, ptr %i.hw, align 8, !tbaa !135
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gh, i64 56 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gj, i64 56 ; 2 uses
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !74
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !74
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !74
  store i64 %i.hz, ptr %i.hy, align 8, !tbaa !74
  br label %_ZSt4swapIiSt4lessIiESaIiEEvRSt3setIT_T0_T1_ES8_.exit

_ZSt4swapIiSt4lessIiESaIiEEvRSt3setIT_T0_T1_ES8_.exit: ; preds = %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %i.ib = load i32, ptr %i.o, align 4, !tbaa !49
  %.not365 = icmp eq i32 %i.ib, 0
  br i1 %.not365, label %.loopexit294, label %.lr.ph339

.lr.ph339:                                        ; preds = %_ZSt4swapIiSt4lessIiESaIiEEvRSt3setIT_T0_T1_ES8_.exit, %bb.am
  %indvars.iv391 = phi i64 [ %indvars.iv.next392, %bb.am ], [ 0, %_ZSt4swapIiSt4lessIiESaIiEEvRSt3setIT_T0_T1_ES8_.exit ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [64 x i8], ptr %i.cs, i64 %indvars.iv391
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 12 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !52 ; 2 uses
  %i.if = icmp eq i32 %i.ie, %i.gf
  br i1 %i.if, label %.sink.split, label %bb.al

bb.al:                                            ; preds = %.lr.ph339
  %i.ig = icmp eq i32 %i.ie, %i.fx
  br i1 %i.ig, label %.sink.split, label %bb.am

.sink.split:                                      ; preds = %bb.al, %.lr.ph339
  %.sink = phi i32 [ %i.fx, %.lr.ph339 ], [ %i.gf, %bb.al ]
  store i32 %.sink, ptr %i.id, align 4, !tbaa !52
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.al
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %i.ih = load i32, ptr %i.o, align 4, !tbaa !49
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv.next392, %i.ii
  br i1 %i.ij, label %.lr.ph339, label %.loopexit294, !llvm.loop !205

.loopexit294:                                     ; preds = %bb.am, %_ZSt4swapIiSt4lessIiESaIiEEvRSt3setIT_T0_T1_ES8_.exit, %bb.ae
  %i.ik = add nuw i32 %.0187340, 1                ; 2 uses
  %exitcond394.not = icmp eq i32 %i.ik, %i.e
  br i1 %exitcond394.not, label %.lr.ph346, label %bb.ae, !llvm.loop !206

._crit_edge347:                                   ; preds = %._crit_edge344, %._crit_edge
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
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.im
  %3 = ptrtoint ptr %2 to i64                     ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !53 ; 3 uses
  %xtraiter = and i64 %i.im, 1
  %i.le = icmp eq i32 %i.il, 1
  br i1 %i.le, label %.epil.preheader, label %.lr.ph349.new

.lr.ph349.new:                                    ; preds = %.lr.ph349
  %unroll_iter = and i64 %i.im, 4294967294
  br label %bb.av

._crit_edge350.loopexit.unr-lcssa:                ; preds = %bb.az
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge350, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge350.loopexit.unr-lcssa, %.lr.ph349
  %.0179348.epil.init = phi i64 [ 0, %.lr.ph349 ], [ %i.mg, %._crit_edge350.loopexit.unr-lcssa ]
  %lcmp.mod496 = trunc i32 %i.il to i1
  call void @llvm.assume(i1 %lcmp.mod496)
  %i.lf = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %.0179348.epil.init
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !99 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.au, label %._crit_edge350

bb.au:                                            ; preds = %.epil.preheader
  %i.lj = zext nneg i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lj ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !52
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !52
  br label %._crit_edge350

._crit_edge350:                                   ; preds = %._crit_edge350.loopexit.unr-lcssa, %bb.au, %.epil.preheader, %._crit_edge347
  %.sroa.11.0458 = phi i64 [ 0, %._crit_edge347 ], [ %3, %.epil.preheader ], [ %3, %bb.au ], [ %3, %._crit_edge350.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0279.0457 = phi ptr [ null, %._crit_edge347 ], [ %i.lb, %.epil.preheader ], [ %i.lb, %bb.au ], [ %i.lb, %._crit_edge350.loopexit.unr-lcssa ] ; 7 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 -1, ptr %i.ln, align 4, !tbaa !46
  %.not231351 = icmp sgt i32 %.0182.lcssa450453, %.0189.lcssa449454
  br i1 %.not231351, label %._crit_edge359, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %._crit_edge350
  %i.lo = sext i32 %.0182.lcssa450453 to i64
  %i.lp = add nuw i32 %.0189.lcssa449454, 1
  br label %.lr.ph354

bb.av:                                            ; preds = %bb.az, %.lr.ph349.new
  %.0179348 = phi i64 [ 0, %.lr.ph349.new ], [ %i.mg, %bb.az ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph349.new ], [ %niter.next.1, %bb.az ]
  %i.lq = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %.0179348
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !99 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, -1
  br i1 %i.lt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lu = zext nneg i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lu ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !52
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !52
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ly = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %.0179348
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 68
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !99 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, -1
  br i1 %i.mb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mc = zext nneg i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !52
  %i.mf = add nsw i32 %i.me, 1
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !52
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mg = add nuw nsw i64 %.0179348, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge350.loopexit.unr-lcssa, label %bb.av, !llvm.loop !209

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %bb.bb
  %indvars.iv400 = phi i64 [ %i.lo, %.lr.ph354.preheader ], [ %indvars.iv.next401, %bb.bb ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0279.0457, i64 %indvars.iv400
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !52
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph354
  %i.mk = trunc nsw i64 %indvars.iv400 to i32     ; 2 uses
  store i32 %i.mk, ptr %i.ln, align 4, !tbaa !46
  br label %.lr.ph358

bb.bb:                                            ; preds = %.lr.ph354
  %indvars.iv.next401 = add nsw i64 %indvars.iv400, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next401 to i32
  %exitcond403.not = icmp eq i32 %i.lp, %lftr.wideiv
  br i1 %exitcond403.not, label %.lr.ph358, label %.lr.ph354, !llvm.loop !210

.lr.ph358:                                        ; preds = %bb.bb, %bb.ba
  %i.ml = phi i32 [ %i.mk, %bb.ba ], [ -1, %bb.bb ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !53
  %i.mo = sext i32 %.0182.lcssa450453 to i64
  %i.mp = add nuw i32 %.0189.lcssa449454, 1
  %i.mq = icmp sgt i32 %i.ml, -1
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
  %indvars.iv404 = phi i64 [ %i.mo, %.lr.ph358 ], [ %indvars.iv.next405, %bb.bh ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [64 x i8], ptr %i.mn, i64 %indvars.iv404 ; 2 uses
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
  %.mux = select i1 %i.nh, i32 %i.ng, i32 %i.ml
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i32 %.mux, ptr %i.nl, align 8, !tbaa !137
  %i.nm = trunc nsw i64 %indvars.iv404 to i32
  store i32 %i.nm, ptr %i.nf, align 4, !tbaa !99
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, 1 ; 2 uses
  %lftr.wideiv407 = trunc i64 %indvars.iv.next405 to i32
  %exitcond408.not = icmp eq i32 %i.mp, %lftr.wideiv407
  br i1 %exitcond408.not, label %._crit_edge359, label %bb.bc, !llvm.loop !212

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
end_hunk_0
begin_hunk_1_@_ZNK22llama_memory_recurrent11state_writeER16llama_io_write_iij:bb.a
bb.af:                                            ; preds = %bb.ae
  store ptr %i.u, ptr %5, align 8
  store ptr %i.v, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
          to label %.noexc73 unwind label %.loopexit.split-lp142

.noexc73:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i62: ; preds = %bb.ae
  %i.dt = ashr exact i64 %i.dr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i63, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 1152921504606846975)
  %i.dx = select i1 %i.dv, i64 1152921504606846975, i64 %i.dw ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i64)
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #30
          to label %.noexc74 unwind label %.loopexit141 ; 5 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr ; 2 uses
  store i32 %.0129186, ptr %i.ea, align 4, !tbaa !141
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !140
  %.not10.i.i.i.i.i65 = icmp eq ptr %i.v, %i.q
  br i1 %.not10.i.i.i.i.i65, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70, label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.noexc74, %.lr.ph.i.i.i.i.i66
  %.012.i.i.i.i.i67 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i66 ], [ %i.dz, %.noexc74 ] ; 2 uses
  %.0911.i.i.i.i.i68 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i66 ], [ %i.v, %.noexc74 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.ed = load i64, ptr %.0911.i.i.i.i.i68, align 4, !alias.scope !241, !noalias !240
  store i64 %i.ed, ptr %.012.i.i.i.i.i67, align 4, !alias.scope !240, !noalias !241
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i68, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.ee, %i.q
  br i1 %.not.i.i.i.i.i69, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70, label %.lr.ph.i.i.i.i.i66, !llvm.loop !222

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70: ; preds = %.lr.ph.i.i.i.i.i66, %.noexc74
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.dz, %.noexc74 ], [ %i.ef, %.lr.ph.i.i.i.i.i66 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i71, i64 8 ; 2 uses
  %.not.i34.i.i72 = icmp eq ptr %i.v, null
  br i1 %.not.i34.i.i72, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.dr) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i70
  store ptr %i.eg, ptr %i.m, align 8, !tbaa !236
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx ; 2 uses
  store ptr %i.eh, ptr %i.n, align 8, !tbaa !239
  %.pre248 = load i32, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit: ; preds = %bb.ad, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread
  %i.ei = phi i32 [ %i.dh, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.p, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %.pre248, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.ad ] ; 3 uses
  %i.ej = phi ptr [ %i.q, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.q, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.eh, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.q, %bb.ad ] ; 9 uses
  %i.ek = phi ptr [ %i.r, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.r, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.eg, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.do, %bb.ad ] ; 6 uses
  %i.el = phi ptr [ %i.di, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.s, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.s, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.s, %bb.ad ] ; 6 uses
  %i.em = phi ptr [ %i.dj, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.t, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.t, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.t, %bb.ad ] ; 4 uses
  %i.en = phi ptr [ %i.v, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.v, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.dz, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.v, %bb.ad ] ; 9 uses
  %i.eo = phi ptr [ %i.dk, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.u, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %i.u, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.u, %bb.ad ] ; 5 uses
  %.2131 = phi i32 [ %spec.select, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRKjjEEERS1_DpOT_.exit ], [ %i.p, %_ZNK22llama_memory_recurrent8mem_cell10has_seq_idERKi.exit.thread ], [ %.pre248, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.ad ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = zext i32 %i.ei to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.b, label %._crit_edge, !llvm.loop !226

bb.ah:                                            ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not.i75 = icmp eq ptr %i.ek, %i.ej
  br i1 %.not.i75, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %.2131, ptr %i.ek, align 4, !tbaa !141
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !52
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !140
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !236
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ew = ptrtoint ptr %i.ej to i64
  %i.ex = ptrtoint ptr %i.en to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.ak, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
          to label %.noexc87 unwind label %bb.am

.noexc87:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76: ; preds = %bb.aj
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i77 = tail call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i77, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i78 = icmp ne i64 %i.fe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i78)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #30
          to label %.noexc88 unwind label %bb.am  ; 6 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store i32 %.2131, ptr %i.fh, align 4, !tbaa !141
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.b, align 4, !tbaa !52
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !140
  %.not10.i.i.i.i.i79 = icmp eq ptr %i.en, %i.ej
  br i1 %.not10.i.i.i.i.i79, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84, label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %.noexc88, %.lr.ph.i.i.i.i.i80
  %.012.i.i.i.i.i81 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i80 ], [ %i.fg, %.noexc88 ] ; 2 uses
  %.0911.i.i.i.i.i82 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i80 ], [ %i.en, %.noexc88 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.fk = load i64, ptr %.0911.i.i.i.i.i82, align 4, !alias.scope !243, !noalias !242
  store i64 %i.fk, ptr %.012.i.i.i.i.i81, align 4, !alias.scope !242, !noalias !243
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i82, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i81, i64 8 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fl, %i.ej
  br i1 %.not.i.i.i.i.i83, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84, label %.lr.ph.i.i.i.i.i80, !llvm.loop !222

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84: ; preds = %.lr.ph.i.i.i.i.i80, %.noexc88
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.fg, %.noexc88 ], [ %i.fm, %.lr.ph.i.i.i.i.i80 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i85, i64 8 ; 2 uses
  %.not.i34.i.i86 = icmp eq ptr %i.en, null
  br i1 %.not.i34.i.i86, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.ey) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i84
  store ptr %i.fg, ptr %4, align 8, !tbaa !244
  store ptr %i.fn, ptr %i.er, align 8, !tbaa !236
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe ; 2 uses
  store ptr %i.fo, ptr %i.es, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit

bb.am:                                            ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76, %bb.ak, %bb.an
  %i.fp = phi ptr [ %i.el, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76 ], [ %i.el, %bb.ak ], [ %i.fu, %bb.an ]
  %i.fq = phi ptr [ %i.ej, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i76 ], [ %i.ej, %bb.ak ], [ %i.fv, %bb.an ]
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit: ; preds = %._crit_edge.thread, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ai, %._crit_edge
  %i.fs = phi ptr [ %i.eo, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.eo, %bb.ai ], [ %i.eo, %._crit_edge ], [ null, %._crit_edge.thread ] ; 9 uses
  %i.ft = phi ptr [ %i.em, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.em, %bb.ai ], [ %i.em, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.fu = phi ptr [ %i.el, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.el, %bb.ai ], [ %i.el, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.fv = phi ptr [ %i.fo, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ej, %bb.ai ], [ %i.ej, %._crit_edge ], [ null, %._crit_edge.thread ] ; 2 uses
  %i.fw = phi ptr [ %i.fg, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.en, %bb.ai ], [ %i.en, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.fx = phi ptr [ %i.fn, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ev, %bb.ai ], [ %i.ek, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.fy = and i32 %3, 2
  %.not49 = icmp ne i32 %i.fy, 0
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ugt i64 %i.gb, 8
  %or.cond = select i1 %.not49, i1 %i.gc, i1 false
  br i1 %or.cond, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef 825, ptr noundef nonnull @.str.25) #32
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjRKjEEERS1_DpOT_.exit
  %i.gd = load ptr, ptr %4, align 8, !tbaa !143   ; 9 uses
  %.not135198 = icmp eq ptr %i.gd, %i.fx
  br i1 %.not135198, label %._crit_edge203, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %bb.ap
  %i.ge = ptrtoaddr ptr %i.gd to i64
  %i.gf = add i64 %i.fz, -8
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gg, 56
  br i1 %min.iters.check, label %.lr.ph202.preheader424, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph202.preheader
  %n.vec = and i64 %i.gi, 4611686018427387896     ; 3 uses
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %i.gd, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gn, %vector.body ]
  %vec.phi393 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.go, %vector.body ]
  %i.gj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gd, i64 %i.gj
  %i.gk = getelementptr i8, ptr %i.gd, i64 %i.gj
  %next.gep394 = getelementptr i8, ptr %i.gk, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !52 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec395 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec396 = load <8 x i32>, ptr %next.gep394, align 4, !tbaa !52 ; 2 uses
  %strided.vec397 = shufflevector <8 x i32> %wide.vec396, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec398 = shufflevector <8 x i32> %wide.vec396, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gl = add <4 x i32> %strided.vec395, %vec.phi
  %i.gm = add <4 x i32> %strided.vec398, %vec.phi393
  %i.gn = sub <4 x i32> %i.gl, %strided.vec       ; 2 uses
  %i.go = sub <4 x i32> %i.gm, %strided.vec397    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.go, %i.gn
  %i.gq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %._crit_edge203, label %.lr.ph202.preheader424

.lr.ph202.preheader424:                           ; preds = %.lr.ph202.preheader, %middle.block
  %.0200.ph = phi i32 [ 0, %.lr.ph202.preheader ], [ %i.gq, %middle.block ]
  %.sroa.0100.0199.ph = phi ptr [ %i.gd, %.lr.ph202.preheader ], [ %7, %middle.block ]
  br label %.lr.ph202

._crit_edge203:                                   ; preds = %.lr.ph202, %middle.block, %bb.ap
  %.0.lcssa = phi i32 [ 0, %bb.ap ], [ %i.gq, %middle.block ], [ %i.gx, %.lr.ph202 ] ; 2 uses
  %i.gr = load i32, ptr %i.a, align 4, !tbaa !52
  %i.gs = icmp eq i32 %i.gr, %.0.lcssa
  br i1 %i.gs, label %bb.ar, label %.invoke

.lr.ph202:                                        ; preds = %.lr.ph202.preheader424, %.lr.ph202
  %.0200 = phi i32 [ %i.gx, %.lr.ph202 ], [ %.0200.ph, %.lr.ph202.preheader424 ]
  %.sroa.0100.0199 = phi ptr [ %i.gy, %.lr.ph202 ], [ %.sroa.0100.0199.ph, %.lr.ph202.preheader424 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0100.0199, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !140
  %i.gv = load i32, ptr %.sroa.0100.0199, align 4, !tbaa !141
  %i.gw = add i32 %i.gu, %.0200
  %i.gx = sub i32 %i.gw, %i.gv                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0100.0199, i64 8 ; 2 uses
  %.not135 = icmp eq ptr %i.gy, %i.fx
  br i1 %.not135, label %._crit_edge203, label %.lr.ph202, !llvm.loop !231

bb.aq:                                            ; preds = %.invoke, %bb.au, %bb.at, %bb.as
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.ar:                                            ; preds = %._crit_edge203
  %.not136205 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not136205, label %._crit_edge210, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %bb.ar
  %i.ha = ptrtoaddr ptr %i.ft to i64
  %i.hb = ptrtoaddr ptr %i.fs to i64
  %i.hc = add i64 %i.ha, -8
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.hd, 56
  br i1 %min.iters.check400, label %.lr.ph209.preheader421, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph209.preheader
  %n.vec402 = and i64 %i.hf, 4611686018427387896  ; 3 uses
  %8 = shl i64 %n.vec402, 3
  %9 = getelementptr i8, ptr %i.fs, i64 %8
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next415, %vector.body403 ] ; 2 uses
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.hk, %vector.body403 ]
  %vec.phi406 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.hl, %vector.body403 ]
  %i.hg = shl i64 %index404, 3                    ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.fs, i64 %i.hg
  %i.hh = getelementptr i8, ptr %i.fs, i64 %i.hg
  %next.gep408 = getelementptr i8, ptr %i.hh, i64 32
  %wide.vec409 = load <8 x i32>, ptr %next.gep407, align 4, !tbaa !52 ; 2 uses
  %strided.vec410 = shufflevector <8 x i32> %wide.vec409, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec411 = shufflevector <8 x i32> %wide.vec409, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec412 = load <8 x i32>, ptr %next.gep408, align 4, !tbaa !52 ; 2 uses
  %strided.vec413 = shufflevector <8 x i32> %wide.vec412, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec414 = shufflevector <8 x i32> %wide.vec412, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hi = add <4 x i32> %strided.vec411, %vec.phi405
  %i.hj = add <4 x i32> %strided.vec414, %vec.phi406
  %i.hk = sub <4 x i32> %i.hi, %strided.vec410    ; 2 uses
  %i.hl = sub <4 x i32> %i.hj, %strided.vec413    ; 2 uses
  %index.next415 = add nuw i64 %index404, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next415, %n.vec402
  br i1 %i.hm, label %middle.block416, label %vector.body403, !llvm.loop !232

middle.block416:                                  ; preds = %vector.body403
  %bin.rdx417 = add <4 x i32> %i.hl, %i.hk
  %i.hn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx417) ; 2 uses
  %cmp.n418 = icmp eq i64 %i.hf, %n.vec402
  br i1 %cmp.n418, label %._crit_edge210, label %.lr.ph209.preheader421

.lr.ph209.preheader421:                           ; preds = %.lr.ph209.preheader, %middle.block416
  %.1207.ph = phi i32 [ 0, %.lr.ph209.preheader ], [ %i.hn, %middle.block416 ]
  %.sroa.096.0206.ph = phi ptr [ %i.fs, %.lr.ph209.preheader ], [ %9, %middle.block416 ]
  br label %.lr.ph209

._crit_edge210:                                   ; preds = %.lr.ph209, %middle.block416, %bb.ar
  %.1.lcssa = phi i32 [ 0, %bb.ar ], [ %i.hn, %middle.block416 ], [ %i.ht, %.lr.ph209 ]
  %i.ho = icmp eq i32 %.0.lcssa, %.1.lcssa
  br i1 %i.ho, label %bb.as, label %.invoke

.lr.ph209:                                        ; preds = %.lr.ph209.preheader421, %.lr.ph209
  %.1207 = phi i32 [ %i.ht, %.lr.ph209 ], [ %.1207.ph, %.lr.ph209.preheader421 ]
  %.sroa.096.0206 = phi ptr [ %i.hu, %.lr.ph209 ], [ %.sroa.096.0206.ph, %.lr.ph209.preheader421 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.096.0206, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !140
  %i.hr = load i32, ptr %.sroa.096.0206, align 4, !tbaa !141
  %i.hs = add i32 %i.hq, %.1207
  %i.ht = sub i32 %i.hs, %i.hr                    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.096.0206, i64 8 ; 2 uses
  %.not136 = icmp eq ptr %i.hu, %i.ft
  br i1 %.not136, label %._crit_edge210, label %.lr.ph209, !llvm.loop !233

.invoke:                                          ; preds = %._crit_edge203, %._crit_edge210
  %i.hv = phi i32 [ 839, %._crit_edge210 ], [ 833, %._crit_edge203 ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.11, i32 noundef %i.hv, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.26) #32
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

bb.as:                                            ; preds = %._crit_edge210
  %i.hw = load ptr, ptr %1, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK22llama_memory_recurrent16state_write_metaER16llama_io_write_iRKSt6vectorISt4pairIjjESaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK22llama_memory_recurrent16state_write_dataER16llama_io_write_iRKSt6vectorISt4pairIjjESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.av unwind label %bb.aq

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not.i.i.i89 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hz = ptrtoint ptr %i.fu to i64
  %i.ia = ptrtoint ptr %i.fs to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.ib) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.not.i.i.i90 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit91, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !239
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.gd to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.ig) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit91

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit91:      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

thread-pre-split:                                 ; preds = %bb.am, %bb.aq
  %.ph = phi ptr [ %i.fq, %bb.am ], [ %i.fv, %bb.aq ]
  %.ph292 = phi ptr [ %i.fp, %bb.am ], [ %i.fu, %bb.aq ]
  %.pn56.pn.pn.ph = phi { ptr, i32 } [ %i.fr, %bb.am ], [ %i.gz, %bb.aq ]
  %.pr = load ptr, ptr %5, align 8, !tbaa !244
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split, %.loopexit140, %.loopexit.split-lp, %.loopexit141, %.loopexit.split-lp142, %bb.k, %bb.t, %bb.q
  %i.ih = phi ptr [ %.pr, %thread-pre-split ], [ %i.u, %.loopexit140 ], [ %i.u, %.loopexit.split-lp ], [ %i.u, %.loopexit141 ], [ %i.u, %.loopexit.split-lp142 ], [ %i.u, %bb.k ], [ %i.u, %bb.t ], [ %i.u, %bb.q ] ; 3 uses
  %i.ii = phi ptr [ %.ph, %thread-pre-split ], [ %i.q, %.loopexit140 ], [ %i.q, %.loopexit.split-lp ], [ %i.q, %.loopexit141 ], [ %i.q, %.loopexit.split-lp142 ], [ %i.q, %bb.k ], [ %i.q, %bb.t ], [ %i.q, %bb.q ]
  %i.ij = phi ptr [ %.ph292, %thread-pre-split ], [ %i.s, %.loopexit140 ], [ %i.s, %.loopexit.split-lp ], [ %i.s, %.loopexit141 ], [ %i.s, %.loopexit.split-lp142 ], [ %i.s, %bb.k ], [ %i.s, %bb.t ], [ %i.s, %bb.q ]
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit140 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ], [ %i.ax, %bb.k ], [ %i.bz, %bb.t ], [ %i.bw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not.i.i.i92 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit93, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.im) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit93

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit93:      ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.in = load ptr, ptr %4, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit95, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit93
  %i.io = ptrtoint ptr %i.ii to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.iq) #31
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit95

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit95:      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit93, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22llama_memory_recurrent16state_write_metaER16llama_io_write_iRKSt6vectorISt4pairIjjESaIS4_EEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !143    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 3 uses
  %.not2430 = icmp eq ptr %i.d, %i.f
  br i1 %.not2430, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = icmp eq i32 %3, -1
  br i1 %i.h, label %.lr.ph33.split.us, label %.lr.ph33.split

.lr.ph33.split.us:                                ; preds = %.lr.ph33, %._crit_edge.split.us.us
  %.sroa.021.031.us = phi ptr [ %i.am, %._crit_edge.split.us.us ], [ %i.d, %.lr.ph33 ] ; 3 uses
  %i.i = load i32, ptr %.sroa.021.031.us, align 4, !tbaa !141 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.021.031.us, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph29.us.preheader, label %._crit_edge.split.us.us

.lr.ph29.us.preheader:                            ; preds = %.lr.ph33.split.us
  %i.m = zext i32 %i.i to i64
  br label %.lr.ph29.us

.lr.ph29.us:                                      ; preds = %.lr.ph29.us.preheader, %.loopexit.us.us
  %indvars.iv37 = phi i64 [ %i.m, %.lr.ph29.us.preheader ], [ %indvars.iv.next38, %.loopexit.us.us ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %indvars.iv37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.p = load i32, ptr %i.o, align 8, !tbaa !98
  store i32 %i.p, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.b, align 4, !tbaa !52
  %i.t = load ptr, ptr %1, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.w = load ptr, ptr %1, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %i.z = load i32, ptr %i.b, align 4, !tbaa !52
  %.not.us.us = icmp eq i32 %i.z, 0
  br i1 %.not.us.us, label %.loopexit.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph29.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.not2526.us.us = icmp eq ptr %i.ab, %i.ac
  br i1 %.not2526.us.us, label %.loopexit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.b, %.lr.ph.us.us
  %.sroa.017.027.us.us = phi ptr [ %i.ai, %.lr.ph.us.us ], [ %i.ab, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.027.us.us, i64 32
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !52
  %i.af = load ptr, ptr %1, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ai = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.017.027.us.us) #29 ; 2 uses
  %.not25.us.us = icmp eq ptr %i.ai, %i.ac
  br i1 %.not25.us.us, label %.loopexit.us.us, label %.lr.ph.us.us

.loopexit.us.us:                                  ; preds = %.lr.ph.us.us, %bb.b, %.lr.ph29.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE24_M_get_insert_unique_posERS3_:bb.a
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.023.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @ggml_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call fastcc void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.c = getelementptr i8, ptr %.02, i64 40
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @ggml_free(ptr noundef nonnull %.val.i)
          to label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 48) #31
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !301

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_EZN22llama_memory_recurrentC1ERK11llama_model9ggml_typeSF_bjjjRKSt8functionIFbiEEE28ggml_backend_buft_comparatorSaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !303
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !303
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN22llama_memory_recurrent8mem_cellEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN22llama_memory_recurrent8mem_cellEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN22llama_memory_recurrent8mem_cellEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN22llama_memory_recurrent8mem_cellEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIN22llama_memory_recurrent8mem_cellEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZSt8_DestroyIN22llama_memory_recurrent8mem_cellEEvPT_.exit.i: ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN22llama_memory_recurrent8mem_cellEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN22llama_memory_recurrent8mem_cellEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN22llama_memory_recurrent8mem_cellEEvPT_.exit.i, %bb.a
  ret void
}

declare void @ggml_backend_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_assignEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #32
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2                    ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !52     ; 2 uses
  %i.n = add nsw i64 %i.j, -4                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.n, 28
  br i1 %min.iters.check50, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %n.vec52 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %3 = shl i64 %n.vec52, 2
  %4 = getelementptr i8, ptr %i.k, i64 %3
  %broadcast.splatinsert53 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat54 = shufflevector <4 x i32> %broadcast.splatinsert53, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph51
  %index56 = phi i64 [ 0, %vector.ph51 ], [ %index.next58, %vector.body55 ] ; 2 uses
  %i.q = shl i64 %index56, 2
  %next.gep57 = getelementptr i8, ptr %i.k, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> %broadcast.splat54, ptr %next.gep57, align 4, !tbaa !52
  store <4 x i32> %broadcast.splat54, ptr %i.r, align 4, !tbaa !52
  %index.next58 = add nuw i64 %index56, 8         ; 2 uses
  %i.s = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.s, label %middle.block59, label %vector.body55, !llvm.loop !305

middle.block59:                                   ; preds = %vector.body55
  %cmp.n60 = icmp eq i64 %i.p, %n.vec52
  br i1 %cmp.n60, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %middle.block59
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %4, %middle.block59 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.m, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !306

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block59
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !88
  store ptr %i.l, ptr %i.v, align 8, !tbaa !138
  store ptr %i.u, ptr %i.a, align 8, !tbaa !89
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138  ; 8 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.e                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = icmp ugt i64 %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %2, align 4, !tbaa !52    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.x
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ad = add i64 %i.y, -4
  %i.ae = sub i64 %i.ad, %i.e                     ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec26 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %5 = shl i64 %n.vec26, 2
  %6 = getelementptr i8, ptr %i.c, i64 %5
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.ah = shl i64 %index30, 2
  %next.gep31 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x i32> %broadcast.splat28, ptr %next.gep31, align 4, !tbaa !52
  store <4 x i32> %broadcast.splat28, ptr %i.ai, align 4, !tbaa !52
  %index.next32 = add nuw i64 %index30, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.aj, label %middle.block33, label %vector.body29, !llvm.loop !307

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.ag, %n.vec26
  br i1 %cmp.n34, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block33
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %6, %middle.block33 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  store i32 %i.ac, ptr %.06.i.i.i.i, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.x
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !308

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block33
  %.pre = load i32, ptr %2, align 4, !tbaa !52
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.al = phi i32 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit.loopexit ], [ %i.ac, %bb.f ] ; 2 uses
  %i.am = sub nuw i64 %1, %i.aa
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.ao = shl i64 %1, 2
  %i.ap = add i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.z                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %n.vec39 = and i64 %i.as, 9223372036854775800   ; 3 uses
  %7 = shl i64 %n.vec39, 2
  %8 = getelementptr i8, ptr %i.x, i64 %7
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.at = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.x, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %broadcast.splat41, ptr %next.gep44, align 4, !tbaa !52
  store <4 x i32> %broadcast.splat41, ptr %i.au, align 4, !tbaa !52
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.av, label %middle.block46, label %vector.body42, !llvm.loop !309

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.as, %n.vec39
  br i1 %cmp.n47, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, %middle.block46
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit ], [ %8, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.al, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !310

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block46
  store ptr %i.an, ptr %i.w, align 8, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = icmp eq i64 %1, 0
  br i1 %i.ax, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.az = load i32, ptr %2, align 4, !tbaa !52    ; 2 uses
  %i.ba = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %9 = shl i64 %n.vec, 2
  %10 = getelementptr i8, ptr %i.c, i64 %9
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %10, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.az, ptr %.06.i.i.i.i13, align 4, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bg, %i.ay
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !312

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.ay, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.x, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.w, align 8, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 6                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 144115188075855871         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 -1, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.q, ptr %i.s, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.q, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.u, align 8, !tbaa !65
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i, i8 -1, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 0, ptr %i.ad, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 -1, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  store ptr null, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store i64 0, ptr %i.ak, align 8, !tbaa !65
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !313

_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !54
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #32
  unreachable

_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 144115188075855871) ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 6
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #30 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter46 = and i64 %1, 1
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i8 -1, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr null, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 0, ptr %i.ay, align 8, !tbaa !65
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i31, i8 -1, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store ptr null, ptr %i.be, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i64 0, ptr %i.bh, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 -1, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  store ptr null, ptr %i.bl, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store i64 0, ptr %i.bo, align 8, !tbaa !65
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !313

_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i64 16, i1 false), !alias.scope !320
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60, !alias.scope !319, !noalias !318 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !62, !alias.scope !319, !noalias !318
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63, !alias.scope !319, !noalias !318
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !64, !alias.scope !319, !noalias !318
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.br, ptr %i.ca, align 8, !tbaa !135, !noalias !320
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !65, !alias.scope !319, !noalias !318
  store ptr null, ptr %i.bs, align 8, !tbaa !60, !alias.scope !319, !noalias !318
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !63, !alias.scope !319, !noalias !318
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !64, !alias.scope !319, !noalias !318
  store i64 0, ptr %i.cb, align 8, !tbaa !65, !alias.scope !319, !noalias !318
  br label %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i37
  %.sink6.i.i.i.i = phi ptr [ %i.bx, %bb.e ], [ %i.br, %.lr.ph.i.i.i37 ]
  %.sink5.i.i.i.i = phi ptr [ %i.bz, %bb.e ], [ %i.br, %.lr.ph.i.i.i37 ]
  %.sink.i.i.i.i = phi i64 [ %i.cc, %bb.e ], [ 0, %.lr.ph.i.i.i37 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.e ], [ 0, %.lr.ph.i.i.i37 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %i.bt, ptr %i.cd, align 8, !tbaa !60, !alias.scope !318, !noalias !319
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink6.i.i.i.i, ptr %i.ce, align 8, !tbaa !63, !alias.scope !318, !noalias !319
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store ptr %.sink5.i.i.i.i, ptr %i.cf, align 8, !tbaa !64, !alias.scope !318, !noalias !319
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %.sink.i.i.i.i, ptr %i.cg, align 8, !tbaa !65, !alias.scope !318, !noalias !319
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !62, !alias.scope !318, !noalias !319
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %.not.i.i.i38 = icmp eq ptr %i.ch, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !317

_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN22llama_memory_recurrent8mem_cellES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN22llama_memory_recurrent8mem_cellESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.cj = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cj) #31
  br label %_ZNSt12_Vector_baseIN22llama_memory_recurrent8mem_cellESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN22llama_memory_recurrent8mem_cellESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN22llama_memory_recurrent8mem_cellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.f
  store ptr %i.ar, ptr %0, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %1
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.cl, ptr %i.h, align 8, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN22llama_memory_recurrent8mem_cellEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN22llama_memory_recurrent8mem_cellESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIP11ggml_tensorSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !81
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !81
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #32
  unreachable

_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !81
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !81
  br label %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPP11ggml_tensormS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIP11ggml_tensorSaIS1_EE13_M_deallocateEPS1_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ac = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #31
  br label %_ZNSt12_Vector_baseIP11ggml_tensorSaIS1_EE13_M_deallocateEPS1_m.exit36

_ZNSt12_Vector_baseIP11ggml_tensorSaIS1_EE13_M_deallocateEPS1_m.exit36: ; preds = %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP11ggml_tensormS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIP11ggml_tensorSaIS1_EE13_M_deallocateEPS1_m.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE17_M_realloc_insertIJS4_RPS5_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #32
  unreachable

_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !78
  store i64 %i.r, ptr %i.q, align 8, !tbaa !78
  store ptr null, ptr %2, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %i.t, ptr %i.s, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.v = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !329, !noalias !328
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !78, !alias.scope !329, !noalias !328
  store <2 x i64> %i.v, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !328, !noalias !329
  store ptr null, ptr %i.u, align 8, !tbaa !84, !alias.scope !329, !noalias !328
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !324

_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.x, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ac, %.lr.ph.i.i.i28 ], [ %i.y, %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ab, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.aa = load <2 x i64>, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !331, !noalias !330
  store ptr null, ptr %.0911.i.i.i30, align 8, !tbaa !78, !alias.scope !331, !noalias !330
  store <2 x i64> %i.aa, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !330, !noalias !331
  store ptr null, ptr %i.z, align 8, !tbaa !84, !alias.scope !331, !noalias !330
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !324

_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.y, %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.ac, %.lr.ph.i.i.i28 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #31
  br label %_ZNSt12_Vector_baseISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt4pairISt10unique_ptrI12ggml_context20ggml_context_deleterES1_I19ggml_backend_buffer27ggml_backend_buffer_deleterEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !90
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8, !tbaa !70 ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !52     ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
end_hunk_2
