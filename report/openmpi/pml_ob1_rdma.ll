Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_rdma?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@mca_pml_ob1_rdma_btls:bb.a
  br i1 %i.o, label %._crit_edge76.thread, label %bb.i

mca_bml_base_btl_array_get_index.exit:            ; preds = %mca_bml_base_btl_array_get_index.exit.lr.ph, %bb.h
  %i.p = phi i8 [ %.pre82, %mca_bml_base_btl_array_get_index.exit.lr.ph ], [ %i.bg, %bb.h ] ; 5 uses
  %indvars.iv79 = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph ], [ %indvars.iv.next80, %bb.h ] ; 2 uses
  %.05674 = phi i32 [ 0, %mca_bml_base_btl_array_get_index.exit.lr.ph ], [ %.157, %bb.h ] ; 5 uses
  %.05873 = phi double [ 0.000000e+00, %mca_bml_base_btl_array_get_index.exit.lr.ph ], [ %.159, %bb.h ] ; 4 uses
  %i.q = load i64, ptr %i.j, align 8, !tbaa !31
  %i.r = add i64 %i.q, %indvars.iv79
  %i.s = urem i64 %i.r, %sext63                   ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !8
  %i.u = icmp ult i64 %i.s, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.s ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 4 uses
  %i.z = icmp eq i8 %i.p, 0
  %i.aa = and i1 %i.z, %i.l
  br i1 %i.aa, label %mca_bml_base_btl_array_get_index.exit69.lr.ph, label %._crit_edge

mca_bml_base_btl_array_get_index.exit69.lr.ph:    ; preds = %mca_bml_base_btl_array_get_index.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  br label %mca_bml_base_btl_array_get_index.exit69

bb.b:                                             ; preds = %mca_bml_base_btl_array_get_index.exit69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %mca_bml_base_btl_array_get_index.exit69, !llvm.loop !41

mca_bml_base_btl_array_get_index.exit69:          ; preds = %mca_bml_base_btl_array_get_index.exit69.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit69.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.af = icmp ugt i64 %i.ab, %indvars.iv
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %.not = icmp eq ptr %i.ai, %i.ae
  br i1 %.not, label %._crit_edge.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %mca_bml_base_btl_array_get_index.exit
  %i.aj = trunc i8 %i.p to i1
  br i1 %i.aj, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %mca_bml_base_btl_array_get_index.exit69, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %.not64 = icmp eq ptr %i.al, null
  br i1 %.not64, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.am = load i32, ptr @opal_leave_pinned, align 4, !tbaa !46
  %.not65 = icmp eq i32 %i.am, 0
  br i1 %.not65, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !47
  %i.ap = and i32 %i.ao, 2
  %.not66 = icmp eq i32 %i.ap, 0
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  %i.as = icmp ugt i64 %2, %i.ar
  br i1 %i.as, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = tail call ptr %i.al(ptr noundef nonnull %i.y, ptr noundef %i.au, ptr noundef %1, i64 noundef %2, i32 noundef 2) #7 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !15, !range !30 ; 2 uses
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  %i.ax = phi i8 [ %.pre, %bb.f ], [ %i.p, %._crit_edge.thread ]
  %.053 = phi ptr [ %i.av, %bb.f ], [ null, %._crit_edge.thread ]
  %i.ay = sext i32 %.05674 to i64
  %i.az = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ay ; 2 uses
  store ptr %i.w, ptr %i.az, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.053, ptr %i.ba, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !53
  %i.bd = fpext float %i.bc to double
  %i.be = fadd double %.05873, %i.bd
  %i.bf = add nsw i32 %.05674, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge, %bb.g
  %i.bg = phi i8 [ %i.p, %._crit_edge ], [ %i.p, %bb.e ], [ %i.ax, %bb.g ], [ %.pre, %bb.f ]
  %.159 = phi double [ %.05873, %._crit_edge ], [ %.05873, %bb.e ], [ %i.be, %bb.g ], [ %.05873, %bb.f ] ; 3 uses
  %.157 = phi i32 [ %.05674, %._crit_edge ], [ %.05674, %bb.e ], [ %i.bf, %bb.g ], [ %.05674, %bb.f ] ; 7 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next80, %i.n
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.bj = icmp slt i32 %.157, %i.bi
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %mca_bml_base_btl_array_get_index.exit, label %._crit_edge76, !llvm.loop !54

bb.i:                                             ; preds = %._crit_edge76
  %i.bl = load i32, ptr @opal_leave_pinned, align 4, !tbaa !46
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = fcmp olt double %.159, 5.000000e-01
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %._crit_edge76.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp eq i32 %.157, 1
  br i1 %i.bo, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.bp, align 8, !tbaa !56
  br label %mca_pml_ob1_calc_weighted_length.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = sext i32 %.157 to i64                   ; 2 uses
  tail call void @qsort(ptr noundef %3, i64 noundef %i.bq, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  %i.br = icmp sgt i32 %.157, 0
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bs = uitofp i64 %2 to double
  %wide.trip.count.i = zext nneg i32 %.157 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.02733.i = phi i64 [ %2, %.lr.ph.i ], [ %.128.i, %bb.q ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.q, label %bb.n, !prof !55

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !57
  %i.bz = icmp ugt i64 %.02733.i, %i.by
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !53
  %i.cc = fpext float %i.cb to double
  %i.cd = fdiv double %i.cc, %.159
  %i.ce = fmul double %i.cd, %i.bs
  %i.cf = fptoui double %i.ce to i64
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %.02733.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %spec.select.i = phi i64 [ %i.cg, %bb.o ], [ %.02733.i, %bb.n ] ; 2 uses
  %i.ch = sub i64 %.02733.i, %spec.select.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.128.i = phi i64 [ %i.ch, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %.1.i = phi i64 [ %spec.select.i, %bb.p ], [ 0, %bb.m ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.1.i, ptr %i.ci, align 8, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !58

._crit_edge.i:                                    ; preds = %bb.q, %bb.l
  %.027.lcssa.i = phi i64 [ %2, %bb.l ], [ %.128.i, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !56
  %i.cl = add i64 %i.ck, %.027.lcssa.i
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !56
  br label %mca_pml_ob1_calc_weighted_length.exit

mca_pml_ob1_calc_weighted_length.exit:            ; preds = %bb.k, %._crit_edge.i
  %.pre-phi = phi i64 [ 1, %bb.k ], [ %i.bq, %._crit_edge.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = add i64 %i.cn, 1
  %sext = and i64 %.val67, 2147483647
  %i.cp = urem i64 %i.co, %sext
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !31
  br label %._crit_edge76.thread

._crit_edge76.thread:                             ; preds = %.preheader, %._crit_edge76, %bb.i, %bb.a, %mca_pml_ob1_calc_weighted_length.exit
  %.060 = phi i64 [ %.pre-phi, %mca_pml_ob1_calc_weighted_length.exit ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %._crit_edge76 ], [ 0, %.preheader ]
  ret i64 %.060
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define range(i64 0, 2147483648) i64 @mca_pml_ob1_rdma_pipeline_btls_count(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val23 = load i64, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.b = trunc i64 %.val23 to i32                 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.c, align 8, !tbaa !8   ; 3 uses
  %i.d = icmp sgt i32 %i.b, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %.fr = freeze i32 %i.e
  %i.f = icmp sgt i32 %.fr, 0
  %i.g = and i1 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge31

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %.val to i32
  %i.i = icmp eq i64 %.val23, 1                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !15, !range !30, !noundef !59 ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp sgt i32 %i.h, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %wide.trip.count = and i64 %.val, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.split.us33.us, %.lr.ph.split.us
  %.02029.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %._crit_edge.split.us33.us ]
  %.02128.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %spec.select.us.us, %._crit_edge.split.us33.us ]
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.val23
  %..i.us.us = select i1 %i.t, i64 0, i64 %i.s
  store i64 %..i.us.us, ptr %i.j, align 8, !tbaa !60
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.r
  br label %mca_bml_base_btl_array_get_next.exit.us.us

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %mca_bml_base_btl_array_get_next.exit.us.us

mca_bml_base_btl_array_get_next.exit.us.us:       ; preds = %bb.d, %bb.c
  %.0.i.us.us = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.us.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  br label %mca_bml_base_btl_array_get_index.exit.us.us

bb.e:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us33.us, label %mca_bml_base_btl_array_get_index.exit.us.us, !llvm.loop !61

mca_bml_base_btl_array_get_index.exit.us.us:      ; preds = %mca_bml_base_btl_array_get_next.exit.us.us, %bb.e
  %indvars.iv = phi i64 [ 0, %mca_bml_base_btl_array_get_next.exit.us.us ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.z = icmp ugt i64 %.val, %indvars.iv
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %.not.us32.us = icmp eq ptr %i.ac, %i.y
  br i1 %.not.us32.us, label %._crit_edge.split.us33.us, label %bb.e

._crit_edge.split.us33.us:                        ; preds = %mca_bml_base_btl_array_get_index.exit.us.us, %bb.e
  %.2.us.us = phi i32 [ 0, %bb.e ], [ 1, %mca_bml_base_btl_array_get_index.exit.us.us ]
  %spec.select.us.us = add nuw nsw i32 %.02128.us.us, %.2.us.us ; 2 uses
  %i.ad = add nuw nsw i32 %.02029.us.us, 1        ; 3 uses
  %i.ae = icmp slt i32 %i.ad, %i.b
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ag = icmp slt i32 %i.ad, %i.af
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.b, label %._crit_edge31, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = zext nneg i8 %i.l to i32                ; 2 uses
  br i1 %i.i, label %._crit_edge31, label %mca_bml_base_btl_array_get_next.exit.preheader

mca_bml_base_btl_array_get_next.exit.preheader:   ; preds = %.lr.ph.split
  %.pre = load i64, ptr %i.j, align 8, !tbaa !60
  br label %mca_bml_base_btl_array_get_next.exit

._crit_edge31:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %._crit_edge.split.us33.us, %.lr.ph.split, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.us.us, %._crit_edge.split.us33.us ], [ %i.ai, %.lr.ph.split ], [ %spec.select, %mca_bml_base_btl_array_get_next.exit ]
  %i.aj = zext nneg i32 %.021.lcssa to i64
  ret i64 %i.aj

mca_bml_base_btl_array_get_next.exit:             ; preds = %mca_bml_base_btl_array_get_next.exit.preheader, %mca_bml_base_btl_array_get_next.exit
  %i.ak = phi i64 [ %..i, %mca_bml_base_btl_array_get_next.exit ], [ %.pre, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02029 = phi i32 [ %i.an, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02128 = phi i32 [ %spec.select, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  %i.am = icmp eq i64 %i.al, %.val23
  %..i = select i1 %i.am, i64 0, i64 %i.al        ; 2 uses
  store i64 %..i, ptr %i.j, align 8, !tbaa !60
  %spec.select = add nuw nsw i32 %.02128, %i.ai   ; 2 uses
  %i.an = add nuw nsw i32 %.02029, 1              ; 3 uses
  %i.ao = icmp slt i32 %i.an, %i.b
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.aq = icmp slt i32 %i.an, %i.ap
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge31, !llvm.loop !62
}

; Function Attrs: nofree nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @mca_pml_ob1_rdma_pipeline_btls(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val35 = load i64, ptr %i.a, align 8, !tbaa !8 ; 5 uses
  %i.b = trunc i64 %.val35 to i32                 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.c, align 8, !tbaa !8   ; 3 uses
  %i.d = icmp sgt i32 %i.b, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %.val to i32
  %i.i = icmp eq i64 %.val35, 1                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !15, !range !30, !noundef !59
  %i.m = icmp eq i8 %i.l, 0                       ; 3 uses
  %i.n = icmp sgt i32 %i.h, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %wide.trip.count = and i64 %.val, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %mca_bml_base_btl_array_get_index.exit._crit_edge.us, %.lr.ph.split.us
  %.03042.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.al, %mca_bml_base_btl_array_get_index.exit._crit_edge.us ]
  %.03141.us = phi i32 [ 0, %.lr.ph.split.us ], [ %.132.us, %mca_bml_base_btl_array_get_index.exit._crit_edge.us ] ; 3 uses
  %.03340.us = phi double [ 0.000000e+00, %.lr.ph.split.us ], [ %.134.us, %mca_bml_base_btl_array_get_index.exit._crit_edge.us ] ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.val35
  %..i.us = select i1 %i.t, i64 0, i64 %i.s
  store i64 %..i.us, ptr %i.j, align 8, !tbaa !60
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.r
  br label %mca_bml_base_btl_array_get_index.exit.us.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %mca_bml_base_btl_array_get_index.exit.us.preheader

mca_bml_base_btl_array_get_index.exit.us.preheader: ; preds = %bb.c, %bb.d
  %.0.i.us = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  br label %mca_bml_base_btl_array_get_index.exit.us

bb.e:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond.not, label %mca_bml_base_btl_array_get_index.exit._crit_edge.us, label %mca_bml_base_btl_array_get_index.exit.us, !llvm.loop !63

mca_bml_base_btl_array_get_index.exit.us:         ; preds = %mca_bml_base_btl_array_get_index.exit.us.preheader, %bb.e
  %indvars.iv91 = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.us.preheader ], [ %indvars.iv.next92, %bb.e ] ; 3 uses
  %i.z = icmp ugt i64 %.val, %indvars.iv91
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %.not.us46 = icmp eq ptr %i.ac, %i.y
  br i1 %.not.us46, label %mca_bml_base_btl_array_get_index.exit._crit_edge.us.thread, label %bb.e

mca_bml_base_btl_array_get_index.exit._crit_edge.us.thread: ; preds = %mca_bml_base_btl_array_get_index.exit.us
  %i.ad = sext i32 %.03141.us to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ad ; 2 uses
  store ptr %.0.i.us, ptr %i.ae, align 8, !tbaa !49
  %i.af = add nsw i32 %.03141.us, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !53
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %.03340.us, %i.aj
  br label %mca_bml_base_btl_array_get_index.exit._crit_edge.us

mca_bml_base_btl_array_get_index.exit._crit_edge.us: ; preds = %bb.e, %mca_bml_base_btl_array_get_index.exit._crit_edge.us.thread
  %.134.us = phi double [ %i.ak, %mca_bml_base_btl_array_get_index.exit._crit_edge.us.thread ], [ %.03340.us, %bb.e ] ; 2 uses
  %.132.us = phi i32 [ %i.af, %mca_bml_base_btl_array_get_index.exit._crit_edge.us.thread ], [ %.03141.us, %bb.e ] ; 2 uses
  %i.al = add nuw nsw i32 %.03042.us, 1           ; 3 uses
  %i.am = icmp slt i32 %i.al, %i.b
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ao = icmp slt i32 %i.al, %i.an
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.b, label %._crit_edge44, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !34  ; 3 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.m, label %.thread, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !53
  %i.at = fpext float %i.as to double
  br label %mca_bml_base_btl_array_get_next.exit.us54

mca_bml_base_btl_array_get_next.exit.us54:        ; preds = %mca_bml_base_btl_array_get_next.exit.us54, %.lr.ph.split.split.us.split
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %.03340.us53 = phi double [ %i.aw, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0.000000e+00, %.lr.ph.split.split.us.split ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv85 ; 2 uses
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !49
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars87 = trunc i64 %indvars.iv.next86 to i32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !52
  %i.aw = fadd double %.03340.us53, %i.at         ; 2 uses
  %i.ax = icmp slt i32 %indvars87, %i.b
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.az = icmp sgt i32 %i.ay, %indvars87
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %mca_bml_base_btl_array_get_next.exit.us54, label %._crit_edge44, !llvm.loop !64

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre95 = load i64, ptr %i.j, align 8, !tbaa !60 ; 2 uses
  br i1 %i.m, label %mca_bml_base_btl_array_get_next.exit.us62, label %mca_bml_base_btl_array_get_next.exit

mca_bml_base_btl_array_get_next.exit.us62:        ; preds = %.lr.ph.split.split, %mca_bml_base_btl_array_get_next.exit.us62
  %i.bb = phi i64 [ %..i.us66, %mca_bml_base_btl_array_get_next.exit.us62 ], [ %.pre95, %.lr.ph.split.split ]
  %.03042.us63 = phi i32 [ %i.be, %mca_bml_base_btl_array_get_next.exit.us62 ], [ 0, %.lr.ph.split.split ]
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %.val35
  %..i.us66 = select i1 %i.bd, i64 0, i64 %i.bc   ; 2 uses
  store i64 %..i.us66, ptr %i.j, align 8, !tbaa !60
  %i.be = add nuw nsw i32 %.03042.us63, 1         ; 3 uses
  %i.bf = icmp slt i32 %i.be, %i.b
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.bh = icmp slt i32 %i.be, %i.bg
  %i.bi = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %i.bi, label %mca_bml_base_btl_array_get_next.exit.us62, label %.thread, !llvm.loop !64

.thread:                                          ; preds = %mca_bml_base_btl_array_get_next.exit.us62, %.lr.ph.split.split.us, %bb.a
  tail call void @qsort(ptr noundef %2, i64 noundef 0, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  br label %._crit_edge.i

._crit_edge44:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %mca_bml_base_btl_array_get_next.exit.us54, %mca_bml_base_btl_array_get_index.exit._crit_edge.us
  %.033.lcssa = phi double [ %.134.us, %mca_bml_base_btl_array_get_index.exit._crit_edge.us ], [ %i.aw, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %i.cr, %mca_bml_base_btl_array_get_next.exit ]
  %.031.lcssa = phi i32 [ %.132.us, %mca_bml_base_btl_array_get_index.exit._crit_edge.us ], [ %indvars87, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %indvars, %mca_bml_base_btl_array_get_next.exit ] ; 4 uses
  %i.bj = icmp eq i32 %.031.lcssa, 1
  br i1 %i.bj, label %bb.f, label %bb.g, !prof !65

bb.f:                                             ; preds = %._crit_edge44
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.bk, align 8, !tbaa !56
  br label %mca_pml_ob1_calc_weighted_length.exit

bb.g:                                             ; preds = %._crit_edge44
  %i.bl = sext i32 %.031.lcssa to i64             ; 3 uses
  tail call void @qsort(ptr noundef %2, i64 noundef %i.bl, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  %i.bm = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bn = uitofp i64 %1 to double
  %wide.trip.count.i = zext nneg i32 %.031.lcssa to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.02733.i = phi i64 [ %1, %.lr.ph.i ], [ %.128.i, %bb.l ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.l, label %bb.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
end_hunk_0
