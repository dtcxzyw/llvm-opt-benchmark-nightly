inline.NumInlined: 154
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@print_pos:bb.a
  %wide.trip.count = zext nneg i32 %.pre118 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.063100 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %bb.k ]
  %.06499 = phi i64 [ 1, %.lr.ph ], [ %i.az, %bb.k ] ; 2 uses
  %.06598 = phi i64 [ 1, %.lr.ph ], [ %i.ay, %bb.k ]
  %.07097 = phi i64 [ %1, %.lr.ph ], [ %i.aw, %bb.k ] ; 3 uses
  %.07296 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.ag = xor i64 %indvars.iv, -1
  %i.ah = add nsw i64 %i.af, %i.ag                ; 4 uses
  %i.ai = mul i64 %.063100, %.06598               ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ah
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ah
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = mul i64 %i.am, %i.ak                    ; 3 uses
  %i.aq = urem i64 %.07097, %i.ap
  %i.ar = udiv i64 %.07097, %i.ap
  %i.as = mul i64 %i.ao, %i.ai
  %i.at = mul i64 %i.as, %i.aq
  %i.au = add i64 %i.at, %.07296                  ; 3 uses
  %.not82 = icmp ugt i64 %i.ap, %.07097
  br i1 %.not82, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = freeze i64 %i.ar                        ; 3 uses
  %i.aw = mul i64 %i.av, %.06499
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ah
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  %i.az = mul i64 %i.ay, %.06499
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ba = mul i64 %i.av, %i.ao
  %i.bb = icmp eq i64 %i.av, 0
  %i.bc = mul i64 %i.ba, %i.ai
  %i.bd = select i1 %i.bb, i64 0, i64 %i.bc
  %i.be = add i64 %i.bd, %i.au
  br label %.thread

.thread:                                          ; preds = %bb.j, %._crit_edge.loopexit, %..thread_crit_edge, %bb.i
  %i.bf = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre118, %bb.i ], [ %.pre118, %._crit_edge.loopexit ], [ %.pre118, %bb.j ]
  %.4 = phi i64 [ %1, %..thread_crit_edge ], [ 0, %bb.i ], [ %i.be, %._crit_edge.loopexit ], [ %i.au, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bi = tail call i64 @calc_acc_pos(i32 noundef %i.bf, i64 noundef %.4, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh) #15 ; 0 uses
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !95
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  br label %bb.l

._crit_edge107:                                   ; preds = %bb.l, %.thread
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.64) #15
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph106, %bb.l
  %indvars.iv115 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next116, %bb.l ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv115
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv115 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !17
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.62, i64 noundef %i.bq) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.63) #15
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.br = load i32, ptr %i.s, align 8, !tbaa !95
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next116, %i.bs
  br i1 %i.bt, label %bb.l, label %._crit_edge107, !llvm.loop !104

bb.m:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !77
  %.not79 = icmp eq i32 %i.bv, 0
  br i1 %.not79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.61) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.65, i64 noundef %2) #15
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.64) #15
  store i32 0, ptr %i.bu, align 4, !tbaa !77
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.66) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %._crit_edge107
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.67) #15
  br label %print_data.exit.thread

print_data.exit.thread:                           ; preds = %bb.b, %bb.p, %print_data.exit
  ret void
}

declare void @parallel_print(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @H5Tget_super(i64 noundef) local_unnamed_addr #2

declare i32 @H5Tget_array_ndims(i64 noundef) local_unnamed_addr #2

declare i32 @H5Tget_array_dims2(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Tclose(i64 noundef) local_unnamed_addr #2

declare i32 @H5Rget_type(ptr noundef) local_unnamed_addr #2

declare i32 @H5Rget_obj_type3(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Ropen_object(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @diff_datasetid(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Dclose(i64 noundef) local_unnamed_addr #2

declare i64 @H5Ropen_region(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @diff_region(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %union.anon.2, align 8              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.H5O_info2_t, align 8        ; 4 uses
  %7 = alloca %struct.H5O_info2_t, align 8        ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = tail call i32 @H5Sget_simple_extent_ndims(i64 noundef %2) #15 ; 13 uses
  %i.f = tail call i32 @H5Sget_simple_extent_ndims(i64 noundef %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.g = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !55
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.j = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = call i32 @H5Eget_auto1(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.l = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = call i64 @H5Sget_select_hyper_nblocks(i64 noundef %2) #15 ; 7 uses
  %i.n = call i64 @H5Sget_select_hyper_nblocks(i64 noundef %3) #15
  %i.o = call i64 @H5Sget_select_elem_npoints(i64 noundef %2) #15 ; 7 uses
  %i.p = call i64 @H5Sget_select_elem_npoints(i64 noundef %3) #15
  %i.q = load i32, ptr %i.a, align 4, !tbaa !55
  %.not175 = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %5, align 8, !tbaa !62     ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  br i1 %.not175, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.r, ptr noundef %i.s) #15 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = call i32 @H5Eset_auto1(ptr noundef %i.r, ptr noundef %i.s) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not176 = icmp eq i64 %i.m, %i.n
  %.not177 = icmp eq i64 %i.o, %i.p
  %or.cond192 = select i1 %.not176, i1 %.not177, i1 false
  %.not178 = icmp eq i32 %i.e, %i.f
  %or.cond193 = select i1 %or.cond192, i1 %.not178, i1 false
  br i1 %or.cond193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 1, ptr %i.v, align 4, !tbaa !74
  br label %bb.as

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.x = zext i32 %i.e to i64                     ; 3 uses
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = mul i64 %i.y, %i.m                       ; 2 uses
  %i.aa = call noalias ptr @malloc(i64 noundef %i.z) #19 ; 10 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 2, ptr %i.ac, align 8, !tbaa !54
  %i.ad = load i32, ptr @enable_error_stack, align 4, !tbaa !55
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !17 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  %i.ah = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr @H5E_tools_g, align 8, !tbaa !17
  %i.ak = load i64, ptr @H5E_tools_min_info_id_g, align 8, !tbaa !17
  %i.al = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.af, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.diff_region, i32 noundef 1565, i64 noundef %i.ah, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.79) #15 ; 0 uses
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.an = call i64 @fwrite(ptr nonnull @.str.79, i64 24, i64 1, ptr %i.am) #16 ; 0 uses
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !56
  %fputc183 = call i32 @fputc(i32 10, ptr %i.ao)  ; 0 uses
  br label %bb.ad

bb.o:                                             ; preds = %bb.j
  %i.ap = call i32 @H5Sget_select_hyper_blocklist(i64 noundef %2, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.aa) #15 ; 0 uses
  %i.aq = call noalias ptr @malloc(i64 noundef %i.z) #19 ; 10 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.p, label %.preheader205.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 2, ptr %i.as, align 8, !tbaa !54
  %i.at = load i32, ptr @enable_error_stack, align 4, !tbaa !55
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !17 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  %i.ax = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  %or.cond3 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr @H5E_tools_g, align 8, !tbaa !17
  %i.ba = load i64, ptr @H5E_tools_min_info_id_g, align 8, !tbaa !17
  %i.bb = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.av, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.diff_region, i32 noundef 1573, i64 noundef %i.ax, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.79) #15 ; 0 uses
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.bd = call i64 @fwrite(ptr nonnull @.str.79, i64 24, i64 1, ptr %i.bc) #16 ; 0 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !56
  %fputc = call i32 @fputc(i32 10, ptr %i.be)     ; 0 uses
  br label %bb.ac

.preheader205.lr.ph:                              ; preds = %bb.o
  %i.bf = call i32 @H5Sget_select_hyper_blocklist(i64 noundef %3, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.aq) #15 ; 0 uses
  %factor.op.mul208 = shl i32 %i.e, 1
  %i.bg = icmp sgt i32 %i.e, 0
  br i1 %i.bg, label %.preheader205.us.preheader, label %._crit_edge211.thread

.preheader205.us.preheader:                       ; preds = %.preheader205.lr.ph
  %i.bh = zext nneg i32 %i.e to i64               ; 3 uses
  %xtraiter = and i64 %i.x, 1
  %i.bi = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %i.x, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod294 = trunc i32 %i.e to i1
  br label %.preheader205.us

.preheader205.us:                                 ; preds = %.preheader205.us.preheader, %._crit_edge.us
  %indvars.iv233 = phi i64 [ 0, %.preheader205.us.preheader ], [ %indvars.iv.next234, %._crit_edge.us ] ; 2 uses
  %.0146210.us = phi i64 [ 0, %.preheader205.us.preheader ], [ %.2148.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv233 to i32
  %factor.op.mul.reass.us = mul i32 %factor.op.mul208, %i.bj
  %i.bk = sext i32 %factor.op.mul.reass.us to i64 ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.preheader205.us.new

.preheader205.us.new:                             ; preds = %.preheader205.us, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.y ], [ 0, %.preheader205.us ] ; 3 uses
  %.1147207.us = phi i64 [ %.2148.us.1, %bb.y ], [ %.0146210.us, %.preheader205.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.y ], [ 0, %.preheader205.us ]
  %i.bl = add nsw i64 %indvars.iv, %i.bk          ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bl
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  %.not181.us = icmp eq i64 %i.bn, %i.bp
  br i1 %.not181.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader205.us.new
  %i.bq = add nsw i64 %i.bl, %i.bh                ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !17
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bq
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %.not182.us = icmp eq i64 %i.bu, %i.bs
  br i1 %.not182.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader205.us.new
  %i.bv = add i64 %.1147207.us, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2148.us = phi i64 [ %i.bv, %bb.u ], [ %.1147207.us, %bb.t ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bw = add nsw i64 %indvars.iv.next, %i.bk     ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !17
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !17
  %.not181.us.1 = icmp eq i64 %i.by, %i.ca
  br i1 %.not181.us.1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = add nsw i64 %i.bw, %i.bh                ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cb
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17
  %.not182.us.1 = icmp eq i64 %i.cf, %i.cd
  br i1 %.not182.us.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cg = add i64 %.2148.us, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2148.us.1 = phi i64 [ %i.cg, %bb.x ], [ %.2148.us, %bb.w ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader205.us.new, !llvm.loop !105

._crit_edge.us.unr-lcssa:                         ; preds = %bb.y
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader205.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader205.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.1147207.us.epil.init = phi i64 [ %.0146210.us, %.preheader205.us ], [ %.2148.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod294)
  %i.ch = add nsw i64 %indvars.iv.epil.init, %i.bk ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !17
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ch
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !17
  %.not181.us.epil = icmp eq i64 %i.cj, %i.cl
  br i1 %.not181.us.epil, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.epil.preheader
  %i.cm = add nsw i64 %i.ch, %i.bh                ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cm
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !17
  %.not182.us.epil = icmp eq i64 %i.cq, %i.co
  br i1 %.not182.us.epil, label %._crit_edge.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.epil.preheader
  %i.cr = add i64 %.1147207.us.epil.init, 1
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.z, %bb.aa, %._crit_edge.us.unr-lcssa
  %.2148.us.lcssa = phi i64 [ %.2148.us.1, %._crit_edge.us.unr-lcssa ], [ %i.cr, %bb.aa ], [ %.1147207.us.epil.init, %bb.z ] ; 4 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, %i.m
  br i1 %exitcond236.not, label %._crit_edge211, label %.preheader205.us, !llvm.loop !106

._crit_edge211:                                   ; preds = %._crit_edge.us
  %.not179 = icmp eq i64 %.2148.us.lcssa, 0
  br i1 %.not179, label %._crit_edge211.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge211
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !46
  %.not180 = icmp eq i32 %i.ct, 0
  br i1 %.not180, label %._crit_edge211.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !75
  %i.cu = call i32 @H5Oget_info3(i64 noundef %0, ptr noundef nonnull %6, i32 noundef 1) #15 ; 0 uses
  %i.cv = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #15 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = call i32 @H5Otoken_to_str(i64 noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cz = call i32 @H5Otoken_to_str(i64 noundef %1, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.d) #15 ; 0 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !75
  call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.80, ptr noundef %i.da, ptr noundef %i.db) #15
  call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.78) #15
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.dd = call i32 @H5free_memory(ptr noundef %i.dc) #15 ; 0 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.df = call i32 @H5free_memory(ptr noundef %i.de) #15 ; 0 uses
  call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.81) #15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv237 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next238, %.lr.ph ] ; 2 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv237 to i32 ; 3 uses
  call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.82, i32 noundef %i.dg) #15
  call fastcc void @print_region_block(i32 noundef %i.dg, ptr noundef %i.aa, i32 noundef %i.e)
  call fastcc void @print_region_block(i32 noundef %i.dg, ptr noundef %i.aq, i32 noundef %i.e)
  call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.2) #15
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next238, %i.m
  br i1 %exitcond240.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %._crit_edge211.thread

._crit_edge211.thread:                            ; preds = %.preheader205.lr.ph, %._crit_edge, %bb.ab, %._crit_edge211
  %.0146.lcssa283 = phi i64 [ 0, %._crit_edge211 ], [ %.2148.us.lcssa, %._crit_edge ], [ %.2148.us.lcssa, %bb.ab ], [ 0, %.preheader205.lr.ph ]
  call void @free(ptr noundef nonnull %i.aq) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.p, %bb.s, %bb.r, %._crit_edge211.thread
  %.3149 = phi i64 [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.p ], [ %.0146.lcssa283, %._crit_edge211.thread ]
  call void @free(ptr noundef nonnull %i.aa) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.m, %bb.n, %bb.k, %bb.i
  %.4150 = phi i64 [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.k ], [ %.3149, %bb.ac ], [ 0, %bb.i ]
  %i.dh = icmp sgt i64 %i.o, 0
  %i.di = zext i32 %i.e to i64                    ; 11 uses
  br i1 %i.dh, label %bb.ae, label %._crit_edge266

bb.ae:                                            ; preds = %bb.ad
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = mul i64 %i.dj, %i.o                     ; 2 uses
  %i.dl = call noalias ptr @malloc(i64 noundef %i.dk) #19 ; 7 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 2, ptr %i.dn, align 8, !tbaa !54
  %i.do = load i32, ptr @enable_error_stack, align 4, !tbaa !55
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %._crit_edge266

bb.ag:                                            ; preds = %bb.af
  %i.dq = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !17 ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  %i.ds = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  %or.cond5 = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %or.cond5, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.du = load i64, ptr @H5E_tools_g, align 8, !tbaa !17
  %i.dv = load i64, ptr @H5E_tools_min_info_id_g, align 8, !tbaa !17
  %i.dw = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.dq, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.diff_region, i32 noundef 1637, i64 noundef %i.ds, i64 noundef %i.du, i64 noundef %i.dv, ptr noundef nonnull @.str.79) #15 ; 0 uses
  br label %._crit_edge266

bb.ai:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !56
end_hunk_0
