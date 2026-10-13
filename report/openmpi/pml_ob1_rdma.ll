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
  %i.q = load i64, ptr %i.j, align 8, !tbaa !56
  %i.r = add i64 %i.q, %indvars.iv79
  %i.s = urem i64 %i.r, %sext63                   ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !15
  %i.u = icmp ult i64 %i.s, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.s ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 4 uses
  %i.z = icmp eq i8 %i.p, 0
  %i.aa = and i1 %i.z, %i.l
  br i1 %i.aa, label %mca_bml_base_btl_array_get_index.exit69.lr.ph, label %._crit_edge

mca_bml_base_btl_array_get_index.exit69.lr.ph:    ; preds = %mca_bml_base_btl_array_get_index.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !15
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  br label %mca_bml_base_btl_array_get_index.exit69

bb.b:                                             ; preds = %mca_bml_base_btl_array_get_index.exit69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %mca_bml_base_btl_array_get_index.exit69, !llvm.loop !52

mca_bml_base_btl_array_get_index.exit69:          ; preds = %mca_bml_base_btl_array_get_index.exit69.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit69.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.af = icmp ugt i64 %i.ab, %indvars.iv
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %.not = icmp eq ptr %i.ai, %i.ae
  br i1 %.not, label %._crit_edge.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %mca_bml_base_btl_array_get_index.exit
  %i.aj = trunc i8 %i.p to i1
  br i1 %i.aj, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %mca_bml_base_btl_array_get_index.exit69, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %.not64 = icmp eq ptr %i.al, null
  br i1 %.not64, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.am = load i32, ptr @opal_leave_pinned, align 4, !tbaa !58
  %.not65 = icmp eq i32 %i.am, 0
  br i1 %.not65, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59
  %i.ap = and i32 %i.ao, 2
  %.not66 = icmp eq i32 %i.ap, 0
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.as = icmp ugt i64 %2, %i.ar
  br i1 %i.as, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = tail call ptr %i.al(ptr noundef nonnull %i.y, ptr noundef %i.au, ptr noundef %1, i64 noundef %2, i32 noundef 2) #7 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !30, !range !31 ; 2 uses
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  %i.ax = phi i8 [ %.pre, %bb.f ], [ %i.p, %._crit_edge.thread ]
  %.053 = phi ptr [ %i.av, %bb.f ], [ null, %._crit_edge.thread ]
  %i.ay = sext i32 %.05674 to i64
  %i.az = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ay ; 2 uses
  store ptr %i.w, ptr %i.az, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.053, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !46
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
  br i1 %i.bk, label %mca_bml_base_btl_array_get_index.exit, label %._crit_edge76, !llvm.loop !53

bb.i:                                             ; preds = %._crit_edge76
  %i.bl = load i32, ptr @opal_leave_pinned, align 4, !tbaa !58
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = fcmp olt double %.159, 5.000000e-01
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %._crit_edge76.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp eq i32 %.157, 1
  br i1 %i.bo, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.bp, align 8, !tbaa !48
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
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.q, label %bb.n, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !49
  %i.bz = icmp ugt i64 %.02733.i, %i.by
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !46
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
  store i64 %.1.i, ptr %i.ci, align 8, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.q, %bb.l
  %.027.lcssa.i = phi i64 [ %2, %bb.l ], [ %.128.i, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cl = add i64 %i.ck, %.027.lcssa.i
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !48
  br label %mca_pml_ob1_calc_weighted_length.exit

mca_pml_ob1_calc_weighted_length.exit:            ; preds = %bb.k, %._crit_edge.i
  %.pre-phi = phi i64 [ 1, %bb.k ], [ %i.bq, %._crit_edge.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !56
  %i.co = add i64 %i.cn, 1
  %sext = and i64 %.val67, 2147483647
  %i.cp = urem i64 %i.co, %sext
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !56
  br label %._crit_edge76.thread

._crit_edge76.thread:                             ; preds = %.preheader, %._crit_edge76, %bb.i, %bb.a, %mca_pml_ob1_calc_weighted_length.exit
  %.060 = phi i64 [ %.pre-phi, %mca_pml_ob1_calc_weighted_length.exit ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %._crit_edge76 ], [ 0, %.preheader ]
  ret i64 %.060
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define range(i64 0, 2147483648) i64 @mca_pml_ob1_rdma_pipeline_btls_count(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val23 = load i64, ptr %i.a, align 8, !tbaa !15 ; 4 uses
  %i.b = trunc i64 %.val23 to i32                 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.c, align 8, !tbaa !15  ; 3 uses
  %i.d = icmp sgt i32 %i.b, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %.fr = freeze i32 %i.e
  %i.f = icmp sgt i32 %.fr, 0
  %1 = and i1 %i.d, %i.f
  br i1 %1, label %.lr.ph, label %._crit_edge31

.lr.ph:                                           ; preds = %bb.a
  %i.g = trunc i64 %.val to i32
  %i.h = icmp eq i64 %.val23, 1                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !30, !range !31, !noundef !50 ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %wide.trip.count = and i64 %.val, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.split.us34.us, %.lr.ph.split.us
  %.02029.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ac, %._crit_edge.split.us34.us ]
  %.02128.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %spec.select.us.us, %._crit_edge.split.us34.us ]
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = icmp eq i64 %i.r, %.val23
  %..i.us.us = select i1 %i.s, i64 0, i64 %i.r
  store i64 %..i.us.us, ptr %i.i, align 8, !tbaa !51
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  br label %mca_bml_base_btl_array_get_next.exit.us.us

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !32
  br label %mca_bml_base_btl_array_get_next.exit.us.us

mca_bml_base_btl_array_get_next.exit.us.us:       ; preds = %bb.d, %bb.c
  %.0.i.us.us = phi ptr [ %i.v, %bb.d ], [ %i.u, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.us.us, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %mca_bml_base_btl_array_get_index.exit.us.us

mca_bml_base_btl_array_get_index.exit.us.us:      ; preds = %bb.e, %mca_bml_base_btl_array_get_next.exit.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %mca_bml_base_btl_array_get_next.exit.us.us ] ; 3 uses
  %i.y = icmp ugt i64 %.val, %indvars.iv
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %.not.us33.us = icmp eq ptr %i.ab, %i.x
  br i1 %.not.us33.us, label %._crit_edge.split.us34.us, label %bb.e

bb.e:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us34.us, label %mca_bml_base_btl_array_get_index.exit.us.us, !llvm.loop !61

._crit_edge.split.us34.us:                        ; preds = %mca_bml_base_btl_array_get_index.exit.us.us, %bb.e
  %.2.us.us = phi i32 [ 0, %bb.e ], [ 1, %mca_bml_base_btl_array_get_index.exit.us.us ]
  %spec.select.us.us = add nuw nsw i32 %.02128.us.us, %.2.us.us ; 2 uses
  %i.ac = add nuw nsw i32 %.02029.us.us, 1        ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %i.b
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.af = icmp slt i32 %i.ac, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.b, label %._crit_edge31, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ah = zext nneg i8 %i.k to i32                ; 2 uses
  br i1 %i.h, label %.lr.ph.split.split.us, label %mca_bml_base_btl_array_get_next.exit.preheader

mca_bml_base_btl_array_get_next.exit.preheader:   ; preds = %.lr.ph.split
  %.pre = load i64, ptr %i.i, align 8, !tbaa !51
  br label %mca_bml_base_btl_array_get_next.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %2 = mul nuw nsw i32 %i.b, %i.ah
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %._crit_edge.split.us34.us, %.lr.ph.split.split.us, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %2, %.lr.ph.split.split.us ], [ %spec.select.us.us, %._crit_edge.split.us34.us ], [ %spec.select, %mca_bml_base_btl_array_get_next.exit ]
  %i.ai = zext nneg i32 %.021.lcssa to i64
  ret i64 %i.ai

mca_bml_base_btl_array_get_next.exit:             ; preds = %mca_bml_base_btl_array_get_next.exit.preheader, %mca_bml_base_btl_array_get_next.exit
  %i.aj = phi i64 [ %..i, %mca_bml_base_btl_array_get_next.exit ], [ %.pre, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02029 = phi i32 [ %i.am, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02128 = phi i32 [ %spec.select, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  %i.al = icmp eq i64 %i.ak, %.val23
  %..i = select i1 %i.al, i64 0, i64 %i.ak        ; 2 uses
  store i64 %..i, ptr %i.i, align 8, !tbaa !51
  %spec.select = add nuw nsw i32 %.02128, %i.ah   ; 2 uses
  %i.am = add nuw nsw i32 %.02029, 1              ; 3 uses
  %i.an = icmp slt i32 %i.am, %i.b
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ap = icmp slt i32 %i.am, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge31, !llvm.loop !62
}

; Function Attrs: nofree nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @mca_pml_ob1_rdma_pipeline_btls(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val35 = load i64, ptr %i.a, align 8, !tbaa !15 ; 5 uses
  %i.b = trunc i64 %.val35 to i32                 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.c, align 8, !tbaa !15  ; 3 uses
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
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !30, !range !31, !noundef !50
  %i.m = icmp eq i8 %i.l, 0                       ; 3 uses
  %i.n = icmp sgt i32 %i.h, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %wide.trip.count = and i64 %.val, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us, %.lr.ph.split.us
  %.03042.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.al, %._crit_edge.us ]
  %.03141.us = phi i32 [ 0, %.lr.ph.split.us ], [ %.132.us, %._crit_edge.us ] ; 3 uses
  %.03340.us = phi double [ 0.000000e+00, %.lr.ph.split.us ], [ %.134.us, %._crit_edge.us ] ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.val35
  %..i.us = select i1 %i.t, i64 0, i64 %i.s
  store i64 %..i.us, ptr %i.j, align 8, !tbaa !51
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.r
  br label %mca_bml_base_btl_array_get_index.exit.us.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !32
  br label %mca_bml_base_btl_array_get_index.exit.us.preheader

mca_bml_base_btl_array_get_index.exit.us.preheader: ; preds = %bb.c, %bb.d
  %.0.i.us = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  br label %mca_bml_base_btl_array_get_index.exit.us

mca_bml_base_btl_array_get_index.exit.us:         ; preds = %mca_bml_base_btl_array_get_index.exit.us.preheader, %bb.e
  %indvars.iv91 = phi i64 [ 0, %mca_bml_base_btl_array_get_index.exit.us.preheader ], [ %indvars.iv.next92, %bb.e ] ; 3 uses
  %i.z = icmp ugt i64 %.val, %indvars.iv91
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %.not.us47.not = icmp eq ptr %i.ac, %i.y
  br i1 %.not.us47.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %mca_bml_base_btl_array_get_index.exit.us, !llvm.loop !63

bb.f:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us
  %i.ad = sext i32 %.03141.us to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ad ; 2 uses
  store ptr %.0.i.us, ptr %i.ae, align 8, !tbaa !44
  %i.af = add nsw i32 %.03141.us, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !46
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %.03340.us, %i.aj
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.e, %bb.f
  %.134.us = phi double [ %i.ak, %bb.f ], [ %.03340.us, %bb.e ] ; 2 uses
  %.132.us = phi i32 [ %i.af, %bb.f ], [ %.03141.us, %bb.e ] ; 2 uses
  %i.al = add nuw nsw i32 %.03042.us, 1           ; 3 uses
  %i.am = icmp slt i32 %i.al, %i.b
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ao = icmp slt i32 %i.al, %i.an
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.b, label %._crit_edge44, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph
  %3 = load ptr, ptr %i.k, align 8, !tbaa !32     ; 3 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.m, label %.thread, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = fpext float %5 to double
  br label %mca_bml_base_btl_array_get_next.exit.us54

mca_bml_base_btl_array_get_next.exit.us54:        ; preds = %mca_bml_base_btl_array_get_next.exit.us54, %.lr.ph.split.split.us.split
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %.03340.us53 = phi double [ %8, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0.000000e+00, %.lr.ph.split.split.us.split ]
  %7 = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv85 ; 2 uses
  store ptr %3, ptr %7, align 8, !tbaa !44
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars87 = trunc i64 %indvars.iv.next86 to i32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !45
  %8 = fadd double %.03340.us53, %6               ; 2 uses
  %9 = icmp slt i32 %indvars87, %i.b
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %11 = icmp sgt i32 %10, %indvars87
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %mca_bml_base_btl_array_get_next.exit.us54, label %._crit_edge44, !llvm.loop !64

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre95 = load i64, ptr %i.j, align 8, !tbaa !51 ; 2 uses
  br i1 %i.m, label %mca_bml_base_btl_array_get_next.exit.us62, label %mca_bml_base_btl_array_get_next.exit

mca_bml_base_btl_array_get_next.exit.us62:        ; preds = %.lr.ph.split.split, %mca_bml_base_btl_array_get_next.exit.us62
  %i.ar = phi i64 [ %..i.us66, %mca_bml_base_btl_array_get_next.exit.us62 ], [ %.pre95, %.lr.ph.split.split ]
  %.03042.us63 = phi i32 [ %i.au, %mca_bml_base_btl_array_get_next.exit.us62 ], [ 0, %.lr.ph.split.split ]
  %i.as = add i64 %i.ar, 1                        ; 2 uses
  %i.at = icmp eq i64 %i.as, %.val35
  %..i.us66 = select i1 %i.at, i64 0, i64 %i.as   ; 2 uses
  store i64 %..i.us66, ptr %i.j, align 8, !tbaa !51
  %i.au = add nuw nsw i32 %.03042.us63, 1         ; 3 uses
  %i.av = icmp slt i32 %i.au, %i.b
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ax = icmp slt i32 %i.au, %i.aw
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %mca_bml_base_btl_array_get_next.exit.us62, label %.thread, !llvm.loop !64

.thread:                                          ; preds = %mca_bml_base_btl_array_get_next.exit.us62, %.lr.ph.split.split.us, %bb.a
  tail call void @qsort(ptr noundef %2, i64 noundef 0, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  br label %._crit_edge.i

._crit_edge44:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %mca_bml_base_btl_array_get_next.exit.us54, %._crit_edge.us
  %.033.lcssa = phi double [ %.134.us, %._crit_edge.us ], [ %8, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %i.ch, %mca_bml_base_btl_array_get_next.exit ]
  %.031.lcssa = phi i32 [ %.132.us, %._crit_edge.us ], [ %indvars87, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %indvars, %mca_bml_base_btl_array_get_next.exit ] ; 4 uses
  %i.az = icmp eq i32 %.031.lcssa, 1
  br i1 %i.az, label %bb.g, label %bb.h, !prof !65

bb.g:                                             ; preds = %._crit_edge44
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.ba, align 8, !tbaa !48
  br label %mca_pml_ob1_calc_weighted_length.exit

bb.h:                                             ; preds = %._crit_edge44
  %i.bb = sext i32 %.031.lcssa to i64             ; 3 uses
  tail call void @qsort(ptr noundef %2, i64 noundef %i.bb, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  %i.bc = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bd = uitofp i64 %1 to double
  %wide.trip.count.i = zext nneg i32 %.031.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.02733.i = phi i64 [ %1, %.lr.ph.i ], [ %.128.i, %bb.m ] ; 5 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.m, label %bb.j, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %i.bk = icmp ugt i64 %.02733.i, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !46
  %i.bn = fpext float %i.bm to double
  %i.bo = fdiv double %i.bn, %.033.lcssa
  %i.bp = fmul double %i.bo, %i.bd
  %i.bq = fptoui double %i.bp to i64
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %.02733.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %spec.select.i = phi i64 [ %i.br, %bb.k ], [ %.02733.i, %bb.j ] ; 2 uses
  %i.bs = sub i64 %.02733.i, %spec.select.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.128.i = phi i64 [ %i.bs, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %spec.select.i, %bb.l ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.1.i, ptr %i.bt, align 8, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.m, %.thread, %bb.h
  %i.bu = phi i64 [ %i.bb, %bb.h ], [ 0, %.thread ], [ %i.bb, %bb.m ]
  %.027.lcssa.i = phi i64 [ %1, %bb.h ], [ %1, %.thread ], [ %.128.i, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.bx = add i64 %i.bw, %.027.lcssa.i
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !48
  br label %mca_pml_ob1_calc_weighted_length.exit

mca_pml_ob1_calc_weighted_length.exit:            ; preds = %bb.g, %._crit_edge.i
  %.pre-phi = phi i64 [ 1, %bb.g ], [ %i.bu, %._crit_edge.i ]
  ret i64 %.pre-phi

mca_bml_base_btl_array_get_next.exit:             ; preds = %.lr.ph.split.split, %mca_bml_base_btl_array_get_next.exit
  %i.by = phi i64 [ %..i, %mca_bml_base_btl_array_get_next.exit ], [ %.pre95, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %mca_bml_base_btl_array_get_next.exit ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.03340 = phi double [ %i.ch, %mca_bml_base_btl_array_get_next.exit ], [ 0.000000e+00, %.lr.ph.split.split ]
  %i.bz = add i64 %i.by, 1                        ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %.val35
  %..i = select i1 %i.ca, i64 0, i64 %i.bz        ; 2 uses
  store i64 %..i, ptr %i.j, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.by ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !46
  %i.cg = fpext float %i.cf to double
  %i.ch = fadd double %.03340, %i.cg              ; 2 uses
  %i.ci = icmp slt i32 %indvars, %i.b
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ck = icmp sgt i32 %i.cj, %indvars
  %i.cl = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %i.cl, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge44, !llvm.loop !64
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mca_pml_ob1_com_btl_comp(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !39}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS12opal_class_t", !9, i64 0}
!11 = !{!"opal_object_t", !10, i64 0, !6, i64 8}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 _ZTS18mca_bml_base_btl_t", !9, i64 0}
!14 = !{!"mca_bml_base_btl_array_t", !11, i64 0, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40}
!15 = !{!14, !12, i64 16}
!16 = !{!"mca_pml_base_module_2_1_0_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184}
!17 = !{!"_Bool", !5, i64 0}
!18 = !{!"opal_mutex_t", !11, i64 0, !5, i64 16, !6, i64 56}
!19 = !{!"p1 _ZTS16opal_list_item_t", !9, i64 0}
!20 = !{!"opal_list_item_t", !11, i64 0, !19, i64 16, !19, i64 24, !6, i64 32}
!21 = !{!"opal_lifo_t", !11, i64 0, !5, i64 16, !20, i64 32}
!22 = !{!"p1 _ZTS23mca_mpool_base_module_t", !9, i64 0}
!23 = !{!"p1 _ZTS24mca_rcache_base_module_t", !9, i64 0}
!24 = !{!"opal_condition_t", !11, i64 0, !6, i64 16, !6, i64 20}
!25 = !{!"opal_list_t", !11, i64 0, !20, i64 16, !12, i64 56}
!26 = !{!"opal_free_list_t", !21, i64 0, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !10, i64 144, !22, i64 152, !23, i64 160, !18, i64 168, !24, i64 232, !25, i64 256, !6, i64 320, !9, i64 328, !9, i64 336}
!27 = !{!"p1 omnipotent char", !9, i64 0}
!28 = !{!"p1 _ZTS27mca_allocator_base_module_t", !9, i64 0}
!29 = !{!"mca_pml_ob1_t", !16, i64 0, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !12, i64 216, !6, i64 224, !6, i64 228, !17, i64 232, !18, i64 240, !26, i64 304, !26, i64 656, !26, i64 1008, !26, i64 1360, !26, i64 1712, !25, i64 2064, !25, i64 2128, !25, i64 2192, !25, i64 2256, !25, i64 2320, !17, i64 2384, !27, i64 2392, !28, i64 2400, !6, i64 2408, !17, i64 2412}
!30 = !{!29, !17, i64 232}
!31 = !{i8 0, i8 2}
!32 = !{!14, !13, i64 40}
!33 = !{!"float", !5, i64 0}
!34 = !{!"p1 _ZTS21mca_btl_base_module_t", !9, i64 0}
!35 = !{!"p1 _ZTS23mca_btl_base_endpoint_t", !9, i64 0}
!36 = !{!"mca_bml_base_btl_t", !6, i64 0, !33, i64 4, !34, i64 8, !35, i64 16}
!37 = !{!36, !34, i64 8}
!38 = !{!36, !35, i64 16}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"p1 _ZTS30mca_btl_base_component_3_0_0_t", !9, i64 0}
!41 = !{!"mca_btl_base_module_t", !40, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !22, i64 272, !9, i64 280, !12, i64 288, !9, i64 296, !5, i64 304}
!42 = !{!"p1 _ZTS34mca_btl_base_registration_handle_t", !9, i64 0}
!43 = !{!"mca_pml_ob1_com_btl_t", !13, i64 0, !42, i64 8, !12, i64 16}
!44 = !{!43, !13, i64 0}
!45 = !{!43, !42, i64 8}
!46 = !{!36, !33, i64 4}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!43, !12, i64 16}
!49 = !{!41, !12, i64 8}
!50 = !{}
!51 = !{!14, !12, i64 32}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = !{!"p1 _ZTS11ompi_proc_t", !9, i64 0}
!55 = !{!"mca_bml_base_endpoint_t", !20, i64 0, !54, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !14, i64 72, !14, i64 120, !14, i64 168, !12, i64 216, !6, i64 224}
!56 = !{!55, !12, i64 216}
!57 = !{!41, !9, i64 256}
!58 = !{!6, !6, i64 0}
!59 = !{!41, !6, i64 68}
!60 = !{!41, !12, i64 48}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !39}
!65 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0
