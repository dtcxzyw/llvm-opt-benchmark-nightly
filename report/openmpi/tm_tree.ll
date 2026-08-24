Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_tree?download=true
inline.NumInlined: 48
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 37
begin_hunk_0_@build_level_topology:bb.a
  br label %tm_complete_obj_weight.exit

tm_complete_obj_weight.exit:                      ; preds = %tm_complete_obj_weight.exit.loopexit.epilog-lcssa, %tm_complete_obj_weight.exit.loopexit.unr-lcssa, %complete_aff_mat.exit.thread, %complete_aff_mat.exit
  %i.dp = phi ptr [ %i.bk, %complete_aff_mat.exit ], [ %i.bo, %complete_aff_mat.exit.thread ], [ %i.cx, %tm_complete_obj_weight.exit.loopexit.unr-lcssa ], [ %i.cx, %tm_complete_obj_weight.exit.loopexit.epilog-lcssa ] ; 3 uses
  %.1168 = phi ptr [ null, %complete_aff_mat.exit ], [ null, %complete_aff_mat.exit.thread ], [ %i.da, %tm_complete_obj_weight.exit.loopexit.unr-lcssa ], [ %i.da, %tm_complete_obj_weight.exit.loopexit.epilog-lcssa ] ; 3 uses
  %i.dq = icmp eq i32 %i.t, 0
  br i1 %i.dq, label %complete_tab_node.exit, label %bb.o

tm_complete_obj_weight.exit.thread:               ; preds = %._crit_edge.i94
  %i.dr = icmp eq i32 %i.t, 0
  br i1 %i.dr, label %complete_tab_node.exit, label %.thread

.thread:                                          ; preds = %tm_complete_obj_weight.exit.thread
  %i.ds = mul nsw i64 %i.y, 80
  %i.dt = tail call noalias ptr @malloc(i64 noundef %i.ds) #27
  br label %._crit_edge.i104

bb.o:                                             ; preds = %tm_complete_obj_weight.exit
  %i.du = mul nsw i64 %i.y, 80
  %i.dv = tail call noalias ptr @malloc(i64 noundef %i.du) #27 ; 3 uses
  br i1 %i.ab, label %.lr.ph.preheader.i105, label %._crit_edge.i104

.lr.ph.preheader.i105:                            ; preds = %bb.o
  %i.dw = sext i32 %i.i to i64
  %wide.trip.count.i106 = zext nneg i32 %i.s to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %clone_tree.exit.i, %.lr.ph.preheader.i105
  %indvars.iv.i108 = phi i64 [ 0, %.lr.ph.preheader.i105 ], [ %indvars.iv.next.i109, %clone_tree.exit.i ] ; 5 uses
  %i.dx = icmp slt i64 %indvars.iv.i108, %i.dw
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.dv, i64 %indvars.iv.i108 ; 16 uses
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i107
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %indvars.iv.i108 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !21 ; 10 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !22
  store <2 x ptr> %i.ef, ptr %i.ee, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store double %i.eh, ptr %i.ei, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.el = load <4 x i32>, ptr %i.ej, align 8, !tbaa !8
  %i.em = load i32, ptr %i.ej, align 8, !tbaa !20 ; 3 uses
  store <4 x i32> %i.el, ptr %i.ek, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !17
  %i.eq = icmp sgt i32 %i.em, 0
  br i1 %i.eq, label %.lr.ph.preheader.i.i, label %clone_tree.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %wide.trip.count.i.i = zext nneg i32 %i.em to i64 ; 2 uses
  %xtraiter415 = and i64 %wide.trip.count.i.i, 7  ; 3 uses
  %i.er = icmp ult i32 %i.em, 8
  br i1 %i.er, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter419 = and i64 %wide.trip.count.i.i, 2147483640
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter420 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter420.next.7, %.lr.ph.i.i ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.dy, ptr %i.eu, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.dy, ptr %i.ey, align 8, !tbaa !26
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.dy, ptr %i.fc, align 8, !tbaa !26
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.dy, ptr %i.fg, align 8, !tbaa !26
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store ptr %i.dy, ptr %i.fk, align 8, !tbaa !26
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.dy, ptr %i.fo, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.dy, ptr %i.fs, align 8, !tbaa !26
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.dy, ptr %i.fw, align 8, !tbaa !26
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter420.next.7 = add i64 %niter420, 8         ; 2 uses
  %niter420.ncmp.7 = icmp eq i64 %niter420.next.7, %unroll_iter419
  br i1 %niter420.ncmp.7, label %clone_tree.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !69

bb.q:                                             ; preds = %.lr.ph.i107
  tail call fastcc void @create_dumb_tree(ptr noundef %i.dy, i32 noundef range(i32 -2147483648, 2147483647) %3, ptr noundef readonly %4)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.fy = trunc nuw nsw i64 %indvars.iv.i108 to i32
  store i32 %i.fy, ptr %i.fx, align 8, !tbaa !27
  br label %clone_tree.exit.i

clone_tree.exit.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i
  %lcmp.mod417.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod417.not, label %clone_tree.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %clone_tree.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %clone_tree.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod418 = icmp ne i64 %xtraiter415, 0
  tail call void @llvm.assume(i1 %lcmp.mod418)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter416 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter416.next, %.lr.ph.i.i.epil ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.epil
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !22
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.dy, ptr %i.gb, align 8, !tbaa !26
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter416.next = add i64 %epil.iter416, 1   ; 2 uses
  %epil.iter416.cmp.not = icmp eq i64 %epil.iter416.next, %xtraiter415
  br i1 %epil.iter416.cmp.not, label %clone_tree.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !70

clone_tree.exit.i:                                ; preds = %clone_tree.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.q, %bb.p
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i106
  br i1 %exitcond.not.i110, label %._crit_edge.i104, label %.lr.ph.i107, !llvm.loop !71

._crit_edge.i104:                                 ; preds = %clone_tree.exit.i, %.thread, %bb.o
  %i.gc = phi ptr [ %i.dt, %.thread ], [ %i.dv, %bb.o ], [ %i.dv, %clone_tree.exit.i ]
  %i.gd = phi ptr [ %i.cx, %.thread ], [ %i.dp, %bb.o ], [ %i.dp, %clone_tree.exit.i ]
  %.1168174177 = phi ptr [ %i.da, %.thread ], [ %.1168, %bb.o ], [ %.1168, %clone_tree.exit.i ]
  tail call void @free(ptr noundef %0) #23
  br label %complete_tab_node.exit

complete_tab_node.exit:                           ; preds = %tm_complete_obj_weight.exit.thread, %tm_complete_obj_weight.exit, %._crit_edge.i104
  %.1168175 = phi ptr [ %.1168, %tm_complete_obj_weight.exit ], [ %.1168174177, %._crit_edge.i104 ], [ %i.da, %tm_complete_obj_weight.exit.thread ] ; 2 uses
  %i.ge = phi ptr [ %i.dp, %tm_complete_obj_weight.exit ], [ %i.gd, %._crit_edge.i104 ], [ %i.cx, %tm_complete_obj_weight.exit.thread ] ; 2 uses
  %.1171 = phi ptr [ %0, %tm_complete_obj_weight.exit ], [ %i.gc, %._crit_edge.i104 ], [ %0, %tm_complete_obj_weight.exit.thread ] ; 2 uses
  %i.gf = tail call double @tm_time_diff() #23
  %i.gg = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.gh = icmp sgt i32 %i.gg, 4
  br i1 %i.gh, label %bb.r, label %.thread178

bb.r:                                             ; preds = %complete_tab_node.exit
  %i.gi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.gf) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.f
  %.0170.ph = phi ptr [ %.1171, %bb.r ], [ %0, %bb.f ] ; 2 uses
  %.0169.ph = phi ptr [ %i.ge, %bb.r ], [ %1, %bb.f ] ; 2 uses
  %.0167.ph = phi ptr [ %.1168175, %bb.r ], [ %5, %bb.f ] ; 2 uses
  %.084.ph = phi i32 [ %i.s, %bb.r ], [ %i.i, %bb.f ] ; 4 uses
  %.082.ph = phi i32 [ %i.t, %bb.r ], [ 0, %bb.f ] ; 2 uses
  %.pr = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.gj = sdiv i32 %.084.ph, %2                   ; 3 uses
  %i.gk = icmp sgt i32 %.pr, 4
  br i1 %i.gk, label %bb.t, label %.thread178

bb.t:                                             ; preds = %bb.s
  %i.gl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3, i32 noundef %.084.ph, i32 noundef %i.gj, i32 noundef %2) ; 0 uses
  br label %.thread178

.thread178:                                       ; preds = %complete_tab_node.exit, %bb.t, %bb.s
  %i.gm = phi i32 [ %i.gj, %bb.s ], [ %i.gj, %bb.t ], [ %i.r, %complete_tab_node.exit ] ; 26 uses
  %.082191 = phi i32 [ %.082.ph, %bb.s ], [ %.082.ph, %bb.t ], [ %i.t, %complete_tab_node.exit ] ; 2 uses
  %.084190 = phi i32 [ %.084.ph, %bb.s ], [ %.084.ph, %bb.t ], [ %i.s, %complete_tab_node.exit ] ; 2 uses
  %.0167188 = phi ptr [ %.0167.ph, %bb.s ], [ %.0167.ph, %bb.t ], [ %.1168175, %complete_tab_node.exit ] ; 18 uses
  %.0169187 = phi ptr [ %.0169.ph, %bb.s ], [ %.0169.ph, %bb.t ], [ %i.ge, %complete_tab_node.exit ] ; 8 uses
  %.0170184 = phi ptr [ %.0170.ph, %bb.s ], [ %.0170.ph, %bb.t ], [ %.1171, %complete_tab_node.exit ] ; 9 uses
  tail call void @tm_get_time() #23
  %i.gn = sext i32 %i.gm to i64                   ; 8 uses
  %i.go = mul nsw i64 %i.gn, 80
  %i.gp = tail call noalias ptr @malloc(i64 noundef %i.go) #27 ; 18 uses
  %i.gq = icmp sgt i32 %i.gm, 0                   ; 7 uses
  br i1 %i.gq, label %.lr.ph, label %._crit_edge.a

.lr.ph:                                           ; preds = %.thread178
  %i.gr = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.gm to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.gs = tail call noalias ptr @calloc(i64 noundef %i.gr, i64 noundef 8) #28
  %i.gt = getelementptr inbounds nuw [80 x i8], ptr %i.gp, i64 %indvars.iv ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store i32 %2, ptr %i.gv, align 8, !tbaa !20
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store ptr %.0170184, ptr %i.gw, align 8, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store ptr null, ptr %i.gx, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.gz = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gz, ptr %i.gy, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !28
  %12 = load i32, ptr @tm_set_node.uniq, align 4, !tbaa !8 ; 2 uses
  %i.hb = add nsw i32 %12, 1
  store i32 %i.hb, ptr @tm_set_node.uniq, align 4, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 52
  store i32 %12, ptr %i.hc, align 4, !tbaa !29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  store i32 %3, ptr %i.hd, align 4, !tbaa !30
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  store i32 0, ptr %i.he, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.a, label %bb.u, !llvm.loop !72

._crit_edge.a:                                    ; preds = %bb.u, %.thread178
  %i.hf = tail call double @tm_time_diff() #23
  %i.hg = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.hh = icmp sgt i32 %i.hg, 4
  br i1 %i.hh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.a
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.hf) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.a
  %.not92 = icmp eq ptr %6, null
  br i1 %.not92, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hj = sext i32 %3 to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.080 = phi double [ %i.hl, %bb.x ], [ -1.000000e+00, %bb.w ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0169187, i64 16 ; 3 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  tail call void @tm_get_time() #23
  %.not.i.i = icmp eq ptr %.0167188, null         ; 2 uses
  br i1 %.not.i.i, label %build_cost_matrix.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ho = load i32, ptr %i.hm, align 8, !tbaa !59 ; 7 uses
  %i.hp = load ptr, ptr %.0169187, align 8, !tbaa !36
  %i.hq = sext i32 %i.ho to i64                   ; 3 uses
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = tail call noalias ptr @malloc(i64 noundef %i.hr) #27 ; 3 uses
  %i.ht = icmp sgt i32 %i.ho, 0                   ; 2 uses
  br i1 %i.ht, label %.lr.ph.preheader.i.i118, label %._crit_edge.i.i

.lr.ph.preheader.i.i118:                          ; preds = %bb.z
  %wide.trip.count.i.i119 = zext nneg i32 %i.ho to i64 ; 3 uses
  br label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %.lr.ph.i.i120, %.lr.ph.preheader.i.i118
  %indvars.iv.i.i121 = phi i64 [ 0, %.lr.ph.preheader.i.i118 ], [ %indvars.iv.next.i.i122, %.lr.ph.i.i120 ] ; 2 uses
  %i.hu = tail call noalias ptr @malloc(i64 noundef %i.hr) #27
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.i.i121
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !31
  %indvars.iv.next.i.i122 = add nuw nsw i64 %indvars.iv.i.i121, 1 ; 2 uses
  %exitcond.not.i.i123 = icmp eq i64 %indvars.iv.next.i.i122, %wide.trip.count.i.i119
  br i1 %exitcond.not.i.i123, label %.lr.ph69.preheader.i.i, label %.lr.ph.i.i120, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %bb.z
  %i.hw = tail call noalias ptr @calloc(i64 noundef %i.hq, i64 noundef 8) #28
  br label %._crit_edge70.i.i

.lr.ph69.preheader.i.i:                           ; preds = %.lr.ph.i.i120
  %i.hx = tail call noalias ptr @calloc(i64 noundef %i.hq, i64 noundef 8) #28 ; 2 uses
  %xtraiter421 = and i64 %wide.trip.count.i.i119, 7 ; 3 uses
  %i.hy = icmp ult i32 %i.ho, 8
  br i1 %i.hy, label %.lr.ph69.i.i.epil.preheader, label %.lr.ph69.preheader.i.i.new

.lr.ph69.preheader.i.i.new:                       ; preds = %.lr.ph69.preheader.i.i
  %unroll_iter426 = and i64 %wide.trip.count.i.i119, 2147483640
  br label %.lr.ph69.i.i

.lr.ph69.i.i:                                     ; preds = %.lr.ph69.i.i, %.lr.ph69.preheader.i.i.new
  %indvars.iv81.i.i = phi i64 [ 0, %.lr.ph69.preheader.i.i.new ], [ %indvars.iv.next82.i.i.7, %.lr.ph69.i.i ] ; 9 uses
  %.06166.i.i = phi double [ 0.000000e+00, %.lr.ph69.preheader.i.i.new ], [ %i.jd, %.lr.ph69.i.i ]
  %niter427 = phi i64 [ 0, %.lr.ph69.preheader.i.i.new ], [ %niter427.next.7, %.lr.ph69.i.i ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !33
  %i.ib = fadd double %.06166.i.i, %i.ia
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !33
  %i.if = fadd double %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !33
  %i.ij = fadd double %i.if, %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load double, ptr %i.il, align 8, !tbaa !33
  %i.in = fadd double %i.ij, %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !33
  %i.ir = fadd double %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load double, ptr %i.it, align 8, !tbaa !33
  %i.iv = fadd double %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !33
  %i.iz = fadd double %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !33
  %i.jd = fadd double %i.iz, %i.jc                ; 3 uses
  %indvars.iv.next82.i.i.7 = add nuw nsw i64 %indvars.iv81.i.i, 8 ; 2 uses
  %niter427.next.7 = add i64 %niter427, 8         ; 2 uses
  %niter427.ncmp.7 = icmp eq i64 %niter427.next.7, %unroll_iter426
  br i1 %niter427.ncmp.7, label %._crit_edge70.i.i.loopexit.unr-lcssa, label %.lr.ph69.i.i, !llvm.loop !74

._crit_edge70.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph69.i.i
  %lcmp.mod423.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod423.not, label %._crit_edge70.i.i, label %.lr.ph69.i.i.epil.preheader

.lr.ph69.i.i.epil.preheader:                      ; preds = %._crit_edge70.i.i.loopexit.unr-lcssa, %.lr.ph69.preheader.i.i
  %indvars.iv81.i.i.epil.init = phi i64 [ 0, %.lr.ph69.preheader.i.i ], [ %indvars.iv.next82.i.i.7, %._crit_edge70.i.i.loopexit.unr-lcssa ]
  %.06166.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph69.preheader.i.i ], [ %i.jd, %._crit_edge70.i.i.loopexit.unr-lcssa ]
  %lcmp.mod425 = icmp ne i64 %xtraiter421, 0
  tail call void @llvm.assume(i1 %lcmp.mod425)
  br label %.lr.ph69.i.i.epil

.lr.ph69.i.i.epil:                                ; preds = %.lr.ph69.i.i.epil, %.lr.ph69.i.i.epil.preheader
  %indvars.iv81.i.i.epil = phi i64 [ %indvars.iv81.i.i.epil.init, %.lr.ph69.i.i.epil.preheader ], [ %indvars.iv.next82.i.i.epil, %.lr.ph69.i.i.epil ] ; 2 uses
  %.06166.i.i.epil = phi double [ %.06166.i.i.epil.init, %.lr.ph69.i.i.epil.preheader ], [ %i.jg, %.lr.ph69.i.i.epil ]
  %epil.iter422 = phi i64 [ 0, %.lr.ph69.i.i.epil.preheader ], [ %epil.iter422.next, %.lr.ph69.i.i.epil ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv81.i.i.epil
  %i.jf = load double, ptr %i.je, align 8, !tbaa !33
  %i.jg = fadd double %.06166.i.i.epil, %i.jf     ; 2 uses
  %indvars.iv.next82.i.i.epil = add nuw nsw i64 %indvars.iv81.i.i.epil, 1
  %epil.iter422.next = add i64 %epil.iter422, 1   ; 2 uses
  %epil.iter422.cmp.not = icmp eq i64 %epil.iter422.next, %xtraiter421
  br i1 %epil.iter422.cmp.not, label %._crit_edge70.i.i, label %.lr.ph69.i.i.epil, !llvm.loop !75

._crit_edge70.i.i:                                ; preds = %._crit_edge70.i.i.loopexit.unr-lcssa, %.lr.ph69.i.i.epil, %._crit_edge.i.i
  %i.jh = phi ptr [ %i.hw, %._crit_edge.i.i ], [ %i.hx, %.lr.ph69.i.i.epil ], [ %i.hx, %._crit_edge70.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.061.lcssa.i.i = phi double [ 0.000000e+00, %._crit_edge.i.i ], [ %i.jd, %._crit_edge70.i.i.loopexit.unr-lcssa ], [ %i.jg, %.lr.ph69.i.i.epil ]
  %i.ji = sitofp i32 %i.ho to double
  %i.jj = fdiv double %.061.lcssa.i.i, %i.ji      ; 2 uses
  %i.jk = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.jl = icmp sgt i32 %i.jk, 5
  br i1 %i.jl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge70.i.i
  %i.jm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, double noundef %i.jj) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge70.i.i
  br i1 %i.ht, label %.preheader.us.preheader.i.i, label %._crit_edge78.i.i

.preheader.us.preheader.i.i:                      ; preds = %bb.ab
  %wide.trip.count94.i.i = zext nneg i32 %i.ho to i64 ; 2 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge74.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv91.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next92.i.i, %._crit_edge74.us.i.i ] ; 7 uses
  %.077.us.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %.2.us.i.i, %._crit_edge74.us.i.i ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv91.i.i
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv91.i.i
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv91.i.i
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv91.i.i ; 2 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !31 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv91.i.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.preheader.us.i.i
  %indvars.iv86.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next87.i.i, %bb.af ] ; 6 uses
  %.172.us.i.i = phi i64 [ %.077.us.i.i, %.preheader.us.i.i ], [ %.2.us.i.i, %bb.af ]
  %i.jt = icmp eq i64 %indvars.iv91.i.i, %indvars.iv86.i.i
  br i1 %i.jt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ju = load ptr, ptr %i.jn, align 8, !tbaa !31
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv86.i.i
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !33
  %i.jx = fmul double %i.jw, 1.000000e-04
  %i.jy = fdiv double %i.jx, %.080
  %i.jz = load double, ptr %i.jo, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.0167188, i64 %indvars.iv86.i.i
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !33
  %i.kc = fadd double %i.jz, %i.kb
  %i.kd = fmul double %i.kc, 5.000000e-01
  %i.ke = fsub double %i.jj, %i.kd
  %i.kf = tail call double @llvm.fabs.f64(double %i.ke)
  %i.kg = fsub double %i.jy, %i.kf                ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv86.i.i
  store double %i.kg, ptr %i.kh, align 8, !tbaa !33
  %i.ki = load double, ptr %i.jq, align 8, !tbaa !33
  %i.kj = fadd double %i.ki, %i.kg
  store double %i.kj, ptr %i.jq, align 8, !tbaa !33
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !33
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv86.i.i
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !33
  %i.km = fcmp une double %i.kl, 0.000000e+00
  %i.kn = zext i1 %i.km to i64
  %.2.us.i.i = add nsw i64 %.172.us.i.i, %i.kn    ; 3 uses
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, %wide.trip.count94.i.i
  br i1 %exitcond90.not.i.i, label %._crit_edge74.us.i.i, label %bb.ac, !llvm.loop !76

end_hunk_0
