Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_rdma?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@mca_pml_ob1_rdma_btls:bb.a
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
  %i.g = and i1 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge31

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %.val to i32
  %i.i = icmp eq i64 %.val23, 1                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 232), align 8, !tbaa !30, !range !31, !noundef !50 ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp sgt i32 %i.h, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %wide.trip.count = and i64 %.val, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.split.us34.us, %.lr.ph.split.us
  %.02029.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %._crit_edge.split.us34.us ]
  %.02128.us.us = phi i32 [ 0, %.lr.ph.split.us ], [ %spec.select.us.us, %._crit_edge.split.us34.us ]
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.val23
  %..i.us.us = select i1 %i.t, i64 0, i64 %i.s
  store i64 %..i.us.us, ptr %i.j, align 8, !tbaa !51
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.r
  br label %mca_bml_base_btl_array_get_next.exit.us.us

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !32
  br label %mca_bml_base_btl_array_get_next.exit.us.us

mca_bml_base_btl_array_get_next.exit.us.us:       ; preds = %bb.d, %bb.c
  %.0.i.us.us = phi ptr [ %i.w, %bb.d ], [ %i.v, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.us.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  br label %mca_bml_base_btl_array_get_index.exit.us.us

mca_bml_base_btl_array_get_index.exit.us.us:      ; preds = %bb.e, %mca_bml_base_btl_array_get_next.exit.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %mca_bml_base_btl_array_get_next.exit.us.us ] ; 3 uses
  %i.z = icmp ugt i64 %.val, %indvars.iv
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %.not.us33.us = icmp eq ptr %i.ac, %i.y
  br i1 %.not.us33.us, label %._crit_edge.split.us34.us, label %bb.e

bb.e:                                             ; preds = %mca_bml_base_btl_array_get_index.exit.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us34.us, label %mca_bml_base_btl_array_get_index.exit.us.us, !llvm.loop !61

._crit_edge.split.us34.us:                        ; preds = %mca_bml_base_btl_array_get_index.exit.us.us, %bb.e
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
  br i1 %i.i, label %.lr.ph.split.split.us, label %mca_bml_base_btl_array_get_next.exit.preheader

mca_bml_base_btl_array_get_next.exit.preheader:   ; preds = %.lr.ph.split
  %.pre = load i64, ptr %i.j, align 8, !tbaa !51
  br label %mca_bml_base_btl_array_get_next.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.aj = mul nuw nsw i32 %i.b, %i.ai
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %._crit_edge.split.us34.us, %.lr.ph.split.split.us, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %i.aj, %.lr.ph.split.split.us ], [ %spec.select.us.us, %._crit_edge.split.us34.us ], [ %spec.select, %mca_bml_base_btl_array_get_next.exit ]
  %i.ak = zext nneg i32 %.021.lcssa to i64
  ret i64 %i.ak

mca_bml_base_btl_array_get_next.exit:             ; preds = %mca_bml_base_btl_array_get_next.exit.preheader, %mca_bml_base_btl_array_get_next.exit
  %i.al = phi i64 [ %..i, %mca_bml_base_btl_array_get_next.exit ], [ %.pre, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02029 = phi i32 [ %i.ao, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %.02128 = phi i32 [ %spec.select, %mca_bml_base_btl_array_get_next.exit ], [ 0, %mca_bml_base_btl_array_get_next.exit.preheader ]
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = icmp eq i64 %i.am, %.val23
  %..i = select i1 %i.an, i64 0, i64 %i.am        ; 2 uses
  store i64 %..i, ptr %i.j, align 8, !tbaa !51
  %spec.select = add nuw nsw i32 %.02128, %i.ai   ; 2 uses
  %i.ao = add nuw nsw i32 %.02029, 1              ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.b
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.ar = icmp slt i32 %i.ao, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge31, !llvm.loop !62
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
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !32  ; 3 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.m, label %.thread, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !46
  %i.at = fpext float %i.as to double
  br label %mca_bml_base_btl_array_get_next.exit.us54

mca_bml_base_btl_array_get_next.exit.us54:        ; preds = %mca_bml_base_btl_array_get_next.exit.us54, %.lr.ph.split.split.us.split
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %.03340.us53 = phi double [ %i.aw, %mca_bml_base_btl_array_get_next.exit.us54 ], [ 0.000000e+00, %.lr.ph.split.split.us.split ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv85 ; 2 uses
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !44
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars87 = trunc i64 %indvars.iv.next86 to i32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !45
  %i.aw = fadd double %.03340.us53, %i.at         ; 2 uses
  %i.ax = icmp slt i32 %indvars87, %i.b
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.az = icmp sgt i32 %i.ay, %indvars87
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %mca_bml_base_btl_array_get_next.exit.us54, label %._crit_edge44, !llvm.loop !64

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre95 = load i64, ptr %i.j, align 8, !tbaa !51 ; 2 uses
  br i1 %i.m, label %mca_bml_base_btl_array_get_next.exit.us62, label %mca_bml_base_btl_array_get_next.exit

mca_bml_base_btl_array_get_next.exit.us62:        ; preds = %.lr.ph.split.split, %mca_bml_base_btl_array_get_next.exit.us62
  %i.bb = phi i64 [ %..i.us66, %mca_bml_base_btl_array_get_next.exit.us62 ], [ %.pre95, %.lr.ph.split.split ]
  %.03042.us63 = phi i32 [ %i.be, %mca_bml_base_btl_array_get_next.exit.us62 ], [ 0, %.lr.ph.split.split ]
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %.val35
  %..i.us66 = select i1 %i.bd, i64 0, i64 %i.bc   ; 2 uses
  store i64 %..i.us66, ptr %i.j, align 8, !tbaa !51
  %i.be = add nuw nsw i32 %.03042.us63, 1         ; 3 uses
  %i.bf = icmp slt i32 %i.be, %i.b
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.bh = icmp slt i32 %i.be, %i.bg
  %i.bi = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %i.bi, label %mca_bml_base_btl_array_get_next.exit.us62, label %.thread, !llvm.loop !64

.thread:                                          ; preds = %mca_bml_base_btl_array_get_next.exit.us62, %.lr.ph.split.split.us, %bb.a
  tail call void @qsort(ptr noundef %2, i64 noundef 0, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  br label %._crit_edge.i

._crit_edge44:                                    ; preds = %mca_bml_base_btl_array_get_next.exit, %mca_bml_base_btl_array_get_next.exit.us54, %._crit_edge.us
  %.033.lcssa = phi double [ %.134.us, %._crit_edge.us ], [ %i.aw, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %i.cr, %mca_bml_base_btl_array_get_next.exit ]
  %.031.lcssa = phi i32 [ %.132.us, %._crit_edge.us ], [ %indvars87, %mca_bml_base_btl_array_get_next.exit.us54 ], [ %indvars, %mca_bml_base_btl_array_get_next.exit ] ; 4 uses
  %i.bj = icmp eq i32 %.031.lcssa, 1
  br i1 %i.bj, label %bb.g, label %bb.h, !prof !65

bb.g:                                             ; preds = %._crit_edge44
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.bk, align 8, !tbaa !48
  br label %mca_pml_ob1_calc_weighted_length.exit

bb.h:                                             ; preds = %._crit_edge44
  %i.bl = sext i32 %.031.lcssa to i64             ; 3 uses
  tail call void @qsort(ptr noundef %2, i64 noundef %i.bl, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #7
  %i.bm = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bn = uitofp i64 %1 to double
  %wide.trip.count.i = zext nneg i32 %.031.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.02733.i = phi i64 [ %1, %.lr.ph.i ], [ %.128.i, %bb.m ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.m, label %bb.j, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !49
  %i.bu = icmp ugt i64 %.02733.i, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = fpext float %i.bw to double
  %i.by = fdiv double %i.bx, %.033.lcssa
  %i.bz = fmul double %i.by, %i.bn
  %i.ca = fptoui double %i.bz to i64
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %.02733.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %spec.select.i = phi i64 [ %i.cb, %bb.k ], [ %.02733.i, %bb.j ] ; 2 uses
  %i.cc = sub i64 %.02733.i, %spec.select.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.128.i = phi i64 [ %i.cc, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %spec.select.i, %bb.l ], [ 0, %bb.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.1.i, ptr %i.cd, align 8, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.m, %.thread, %bb.h
  %i.ce = phi i64 [ %i.bl, %bb.h ], [ 0, %.thread ], [ %i.bl, %bb.m ]
  %.027.lcssa.i = phi i64 [ %1, %bb.h ], [ %1, %.thread ], [ %.128.i, %bb.m ]
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !48
  %i.ch = add i64 %i.cg, %.027.lcssa.i
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !48
  br label %mca_pml_ob1_calc_weighted_length.exit

mca_pml_ob1_calc_weighted_length.exit:            ; preds = %bb.g, %._crit_edge.i
  %.pre-phi = phi i64 [ 1, %bb.g ], [ %i.ce, %._crit_edge.i ]
  ret i64 %.pre-phi

mca_bml_base_btl_array_get_next.exit:             ; preds = %.lr.ph.split.split, %mca_bml_base_btl_array_get_next.exit
  %i.ci = phi i64 [ %..i, %mca_bml_base_btl_array_get_next.exit ], [ %.pre95, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %mca_bml_base_btl_array_get_next.exit ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.03340 = phi double [ %i.cr, %mca_bml_base_btl_array_get_next.exit ], [ 0.000000e+00, %.lr.ph.split.split ]
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %.val35
  %..i = select i1 %i.ck, i64 0, i64 %i.cj        ; 2 uses
  store i64 %..i, ptr %i.j, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ci ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr null, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !46
  %i.cq = fpext float %i.cp to double
  %i.cr = fadd double %.03340, %i.cq              ; 2 uses
  %i.cs = icmp slt i32 %indvars, %i.b
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 224), align 16
  %i.cu = icmp sgt i32 %i.ct, %indvars
  %i.cv = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %i.cv, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge44, !llvm.loop !64
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
