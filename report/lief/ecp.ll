Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ecp?download=true
inline.NumInlined: 112
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ecp_mul_restartable_internal:bb.a

mbedtls_ecp_get_type.exit:                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %13) #18
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 5 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.l) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %14) #18
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %15) #18
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.m) #18
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.n) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.o) #18
  %i.p = icmp eq ptr %4, null
  br i1 %i.p, label %ecp_mul_mxz.exit.thread, label %bb.e

ecp_mul_mxz.exit.thread:                          ; preds = %mbedtls_ecp_get_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %ecp_mul_comb.exit

bb.e:                                             ; preds = %mbedtls_ecp_get_type.exit
  %i.q = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %14, ptr noundef %3) #18 ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %ecp_mul_mxz.exit

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %13, ptr noundef %3) #18 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.r, 0
  br i1 %.not.i54.i, label %bb.g, label %ecp_mul_mxz.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.k, ptr noundef nonnull %i.s) #18 ; 2 uses
  %.not8.i.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i.i, label %mbedtls_ecp_copy.exit.i, label %ecp_mul_mxz.exit

mbedtls_ecp_copy.exit.i:                          ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.u) #18 ; 2 uses
  %.not43.i = icmp eq i32 %i.v, 0
  br i1 %.not43.i, label %bb.h, label %ecp_mul_mxz.exit

bb.h:                                             ; preds = %mbedtls_ecp_copy.exit.i
  %i.w = call i32 @mbedtls_mpi_lset(ptr noundef %1, i64 noundef 1) #18 ; 2 uses
  %.not44.i = icmp eq i32 %i.w, 0
  br i1 %.not44.i, label %bb.i, label %ecp_mul_mxz.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.y = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.x, i64 noundef 0) #18 ; 2 uses
  %.not45.i = icmp eq i32 %i.y, 0
  br i1 %.not45.i, label %bb.j, label %ecp_mul_mxz.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.z) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %13, ptr noundef nonnull %i.aa) #18
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = call i32 @mbedtls_mpi_sub_abs(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %i.aa) #18 ; 2 uses
  %.not53.i = icmp eq i32 %i.ad, 0
  br i1 %.not53.i, label %bb.k, label %ecp_mul_mxz.exit, !llvm.loop !33

bb.m:                                             ; preds = %bb.k
  %i.ae = call fastcc i32 @ecp_randomize_mxz(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not46.i = icmp eq i32 %i.ae, 0
  br i1 %.not46.i, label %bb.n, label %ecp_mul_mxz.exit

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %.not47.i92 = icmp eq i64 %i.ag, -1
  br i1 %.not47.i92, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.s
  %i.ah = add i64 %i.ai, -1
  %.not47.i = icmp eq i64 %i.ai, 0
  br i1 %.not47.i, label %._crit_edge, label %.lr.ph, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %i.ai = phi i64 [ %i.ah, %bb.o ], [ %i.ag, %bb.n ] ; 3 uses
  %i.aj = call i32 @mbedtls_mpi_get_bit(ptr noundef %2, i64 noundef %i.ai) #18
  %i.ak = trunc i32 %i.aj to i8                   ; 4 uses
  %i.al = call i32 @mbedtls_mpi_safe_cond_swap(ptr noundef %1, ptr noundef nonnull %13, i8 noundef zeroext %i.ak) #18 ; 2 uses
  %.not48.i = icmp eq i32 %i.al, 0
  br i1 %.not48.i, label %bb.p, label %ecp_mul_mxz.exit

bb.p:                                             ; preds = %.lr.ph
  %i.am = call i32 @mbedtls_mpi_safe_cond_swap(ptr noundef nonnull %i.x, ptr noundef nonnull %i.l, i8 noundef zeroext %i.ak) #18 ; 2 uses
  %.not49.i = icmp eq i32 %i.am, 0
  br i1 %.not49.i, label %bb.q, label %ecp_mul_mxz.exit

bb.q:                                             ; preds = %bb.p
  %i.an = call fastcc i32 @ecp_double_add_mxz(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %13, ptr noundef nonnull %1, ptr noundef %13, ptr noundef %14, ptr noundef %15) ; 2 uses
  %.not50.i = icmp eq i32 %i.an, 0
  br i1 %.not50.i, label %bb.r, label %ecp_mul_mxz.exit

bb.r:                                             ; preds = %bb.q
  %i.ao = call i32 @mbedtls_mpi_safe_cond_swap(ptr noundef nonnull %1, ptr noundef nonnull %13, i8 noundef zeroext %i.ak) #18 ; 2 uses
  %.not51.i = icmp eq i32 %i.ao, 0
  br i1 %.not51.i, label %bb.s, label %ecp_mul_mxz.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 @mbedtls_mpi_safe_cond_swap(ptr noundef nonnull %i.x, ptr noundef nonnull %i.l, i8 noundef zeroext %i.ak) #18 ; 2 uses
  %.not52.i = icmp eq i32 %i.ap, 0
  br i1 %.not52.i, label %bb.o, label %ecp_mul_mxz.exit, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.aq = call fastcc i32 @ecp_normalize_mxz(ptr noundef nonnull %0, ptr noundef %1)
  br label %ecp_mul_mxz.exit

ecp_mul_mxz.exit:                                 ; preds = %bb.l, %.lr.ph, %bb.p, %bb.q, %bb.r, %bb.s, %bb.e, %bb.f, %bb.g, %mbedtls_ecp_copy.exit.i, %bb.h, %bb.i, %bb.m, %._crit_edge
  %.029.i = phi i32 [ %i.q, %bb.e ], [ %i.v, %mbedtls_ecp_copy.exit.i ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ %i.al, %.lr.ph ], [ %i.ae, %bb.m ], [ %i.t, %bb.g ], [ %i.r, %bb.f ], [ %i.aq, %._crit_edge ], [ %i.am, %bb.p ], [ %i.an, %bb.q ], [ %i.ao, %bb.r ], [ %i.ap, %bb.s ], [ %i.ad, %bb.l ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %13) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.k) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.l) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %14) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %15) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.m) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.n) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.not25 = icmp eq i32 %.029.i, 0
  br i1 %.not25, label %mbedtls_ecp_get_type.exit.thread, label %ecp_mul_comb.exit

mbedtls_ecp_get_type.exit.thread:                 ; preds = %ecp_mul_mxz.exit
  %.pr.pre = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.ar = icmp eq ptr %.pr.pre, null
  br i1 %i.ar, label %ecp_mul_comb.exit, label %bb.t

bb.t:                                             ; preds = %mbedtls_ecp_get_type.exit.thread
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.as = icmp eq ptr %.pr, null
  br i1 %i.as, label %ecp_mul_comb.exit, label %mbedtls_ecp_get_type.exit29

mbedtls_ecp_get_type.exit29:                      ; preds = %bb.d, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %i.at, ptr noundef nonnull %i.h) #18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %mbedtls_ecp_get_type.exit29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 383
  br i1 %i.ay, label %.critedge.i.i, label %ecp_pick_window_size.exit.i

bb.u:                                             ; preds = %mbedtls_ecp_get_type.exit29
  %i.az = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %3, ptr noundef nonnull %i.e) #18
  %.not.i31 = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !34 ; 6 uses
  %i.bc = icmp ugt i64 %i.bb, 383                 ; 2 uses
  %i.bd = select i1 %i.bc, i8 6, i8 5
  br i1 %.not.i31, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %.critedge.i.i, label %ecp_group_is_static_comb_table.exit.i.i

ecp_group_is_static_comb_table.exit.i.i:          ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !22
  %.not12.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not12.i.i, label %ecp_pick_window_size.exit.i, label %.critedge.i.i

bb.w:                                             ; preds = %bb.u
  br i1 %i.bc, label %.critedge.i.i, label %ecp_pick_window_size.exit.i

.critedge.i.i:                                    ; preds = %bb.w, %ecp_group_is_static_comb_table.exit.i.i, %bb.v, %.thread.i
  %.not.i3.i = phi i1 [ true, %bb.w ], [ false, %ecp_group_is_static_comb_table.exit.i.i ], [ false, %bb.v ], [ true, %.thread.i ]
  %i.bi = phi i64 [ %i.bb, %bb.w ], [ %i.bb, %ecp_group_is_static_comb_table.exit.i.i ], [ %i.bb, %bb.v ], [ %i.ax, %.thread.i ]
  br label %ecp_pick_window_size.exit.i

ecp_pick_window_size.exit.i:                      ; preds = %.critedge.i.i, %bb.w, %ecp_group_is_static_comb_table.exit.i.i, %.thread.i
  %.not.i2.i = phi i1 [ %.not.i3.i, %.critedge.i.i ], [ false, %ecp_group_is_static_comb_table.exit.i.i ], [ true, %bb.w ], [ true, %.thread.i ] ; 2 uses
  %i.bj = phi i64 [ %i.bi, %.critedge.i.i ], [ %i.bb, %ecp_group_is_static_comb_table.exit.i.i ], [ %i.bb, %bb.w ], [ %i.ax, %.thread.i ] ; 2 uses
  %.1.i.i = phi i8 [ 4, %.critedge.i.i ], [ %i.bd, %ecp_group_is_static_comb_table.exit.i.i ], [ 4, %bb.w ], [ 4, %.thread.i ] ; 2 uses
  %i.bk = zext nneg i8 %.1.i.i to i64
  %.not11.i.i.not = icmp ugt i64 %i.bj, %i.bk     ; 2 uses
  %spec.store.select.i.i = select i1 %.not11.i.i.not, i8 %.1.i.i, i8 2 ; 2 uses
  %i.bl = zext nneg i8 %spec.store.select.i.i to i32
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  %i.bn = shl nuw nsw i32 1, %i.bm                ; 5 uses
  %i.bo = trunc nuw nsw i32 %i.bn to i8           ; 3 uses
  %i.bp = zext nneg i8 %spec.store.select.i.i to i64 ; 6 uses
  %i.bq = add i64 %i.bj, -1
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = udiv i64 %i.br, %i.bp                   ; 9 uses
  br i1 %.not.i2.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %ecp_pick_window_size.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %.not62.i = icmp eq ptr %i.bu, null
  br i1 %.not62.i, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x, %ecp_pick_window_size.exit.i
  %i.bv = zext nneg i32 %i.bn to i64              ; 5 uses
  %i.bw = call noalias ptr @calloc(i64 noundef %i.bv, i64 noundef 48) #19 ; 18 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread17.i, label %.preheader24.i

.preheader24.i:                                   ; preds = %bb.y, %.preheader24.i
  %.05627.i = phi i8 [ %i.cc, %.preheader24.i ], [ 0, %bb.y ] ; 2 uses
  %i.by = zext i8 %.05627.i to i64
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.by ; 3 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.bz) #18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.ca) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.cb) #18
  %i.cc = add i8 %.05627.i, 1                     ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = icmp samesign ugt i32 %i.bn, %i.cd
  br i1 %i.ce, label %.preheader24.i, label %bb.z, !llvm.loop !36

bb.z:                                             ; preds = %.preheader24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %12) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.cf) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.cg) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.ch) #18
  %i.ci = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.bw, ptr noundef nonnull %3) #18 ; 2 uses
  %.not.i74.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i74.i.i, label %bb.aa, label %ecp_precompute_comb.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ck = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.at) #18 ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not8.i.i.i, label %mbedtls_ecp_copy.exit.i.i, label %ecp_precompute_comb.exit.i

mbedtls_ecp_copy.exit.i.i:                        ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm) #18 ; 2 uses
  %.not.i70.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i70.i, label %.preheader9.i.i, label %ecp_precompute_comb.exit.i

.preheader9.i.i:                                  ; preds = %mbedtls_ecp_copy.exit.i.i
  %i.co = zext nneg i32 %i.bm to i64
  %i.cp = mul i64 %i.bs, %i.co                    ; 2 uses
  %.not22.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not22.i.i, label %.lr.ph14.i.i.preheader, label %.lr.ph.i.i

.lr.ph14.i.i.preheader:                           ; preds = %bb.ab, %.preheader9.i.i
  br label %.lr.ph14.i.i

bb.ab:                                            ; preds = %bb.ae
  %i.cq = add nuw i64 %.011.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %i.cp
  br i1 %exitcond.not.i.i, label %.lr.ph14.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph.i.i:                                       ; preds = %.preheader9.i.i, %bb.ab
  %.011.i.i = phi i64 [ %i.cq, %bb.ab ], [ 0, %.preheader9.i.i ] ; 3 uses
  %i.cr = udiv i64 %.011.i.i, %i.bs
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = and i32 %i.ct, 255                      ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.cv ; 5 uses
  %i.cx = urem i64 %.011.i.i, %i.bs
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.cz = lshr i32 %i.cu, 1
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.da ; 3 uses
  %i.dc = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.db) #18 ; 2 uses
  %.not.i75.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i75.i.i, label %bb.ad, label %ecp_precompute_comb.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.de) #18 ; 2 uses
  %.not8.i77.i.i = icmp eq i32 %i.df, 0
  br i1 %.not8.i77.i.i, label %mbedtls_ecp_copy.exit78.i.i, label %ecp_precompute_comb.exit.i

mbedtls_ecp_copy.exit78.i.i:                      ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.di = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh) #18 ; 2 uses
  %.not72.i.i = icmp eq i32 %i.di, 0
  br i1 %.not72.i.i, label %bb.ae, label %ecp_precompute_comb.exit.i

bb.ae:                                            ; preds = %mbedtls_ecp_copy.exit78.i.i, %.lr.ph.i.i
  %i.dj = call fastcc i32 @ecp_double_jac(ptr noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef %12) ; 2 uses
  %.not73.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not73.i.i, label %bb.ab, label %ecp_precompute_comb.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i.preheader, %.lr.ph14.i.i
  %.113.i.i = phi i64 [ %i.dm, %.lr.ph14.i.i ], [ 0, %.lr.ph14.i.i.preheader ] ; 2 uses
  %.05312.i.i = phi i32 [ %i.do, %.lr.ph14.i.i ], [ 1, %.lr.ph14.i.i.preheader ] ; 2 uses
  %i.dk = zext nneg i32 %.05312.i.i to i64
  %i.dl = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = add i64 %.113.i.i, 1                    ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.113.i.i
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !38
  %i.do = shl nuw nsw i32 %.05312.i.i, 1          ; 2 uses
  %i.dp = icmp samesign ult i32 %i.do, %i.bn
  br i1 %i.dp, label %.lr.ph14.i.i, label %._crit_edge.i.i, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %.lr.ph14.i.i
  %i.dq = call fastcc i32 @ecp_normalize_jac_many(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.dm) ; 2 uses
  %.not68.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not68.i.i, label %.lr.ph16.i.i, label %ecp_precompute_comb.exit.i

.lr.ph16.i.i:                                     ; preds = %._crit_edge.i.i, %._crit_edge96
  %.15415.i.i = phi i8 [ %i.dx, %._crit_edge96 ], [ 1, %._crit_edge.i.i ] ; 3 uses
  %i.dr = zext i8 %.15415.i.i to i64              ; 3 uses
  %i.ds = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.dr
  %.not70.i.i93 = icmp eq i8 %.15415.i.i, 0
  br i1 %.not70.i.i93, label %._crit_edge96, label %.lr.ph95

bb.af:                                            ; preds = %.lr.ph95
  %.not70.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not70.i.i, label %._crit_edge96, label %.lr.ph95, !llvm.loop !40

.lr.ph95:                                         ; preds = %.lr.ph16.i.i, %bb.af
  %.2.i.i94 = phi i64 [ %i.dt, %bb.af ], [ %i.dr, %.lr.ph16.i.i ]
  %i.dt = add nsw i64 %.2.i.i94, -1               ; 3 uses
  %i.du = getelementptr [48 x i8], ptr %i.bw, i64 %i.dt ; 2 uses
  %i.dv = getelementptr [48 x i8], ptr %i.du, i64 %i.dr
  %i.dw = call fastcc i32 @ecp_add_mixed(ptr noundef %0, ptr noundef %i.dv, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ds, ptr noundef %12) ; 2 uses
  %.not71.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not71.i.i, label %bb.af, label %ecp_precompute_comb.exit.i, !llvm.loop !40

._crit_edge96:                                    ; preds = %bb.af, %.lr.ph16.i.i
  %i.dx = shl i8 %.15415.i.i, 1                   ; 2 uses
  %16 = icmp ult i8 %i.dx, %i.bo
  br i1 %16, label %.lr.ph16.i.i, label %.lr.ph18.i.i.preheader, !llvm.loop !41

.lr.ph18.i.i.preheader:                           ; preds = %._crit_edge96
  %i.dy = add nsw i64 %i.bv, -1                   ; 2 uses
  br i1 %.not11.i.i.not, label %vector.ph, label %.lr.ph18.i.i.preheader101

vector.ph:                                        ; preds = %.lr.ph18.i.i.preheader
  %n.vec = and i64 %i.dy, -4                      ; 5 uses
  %i.dz = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.bw, <2 x i64> %vec.ind
  %wide.gep97 = getelementptr inbounds nuw [48 x i8], ptr %i.bw, <2 x i64> %step.add
  %wide.gep98 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 48
  %wide.gep99 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep97, i64 48
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x ptr> %wide.gep98, ptr %i.ea, align 16, !tbaa !38
  store <2 x ptr> %wide.gep99, ptr %i.eb, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge19.i.i, label %.lr.ph18.i.i.preheader101

.lr.ph18.i.i.preheader101:                        ; preds = %.lr.ph18.i.i.preheader, %middle.block
  %.ph = phi i64 [ 1, %.lr.ph18.i.i.preheader ], [ %i.dz, %middle.block ]
  %.317.i.i.ph = phi i64 [ 0, %.lr.ph18.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.preheader101, %.lr.ph18.i.i
  %i.ed = phi i64 [ %i.eh, %.lr.ph18.i.i ], [ %.ph, %.lr.ph18.i.i.preheader101 ] ; 3 uses
  %.317.i.i = phi i64 [ %i.ed, %.lr.ph18.i.i ], [ %.317.i.i.ph, %.lr.ph18.i.i.preheader101 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.317.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.317.i.i
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !38
  %i.eh = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %i.eh, %i.bv
  br i1 %exitcond29.not.i.i, label %._crit_edge19.i.i, label %.lr.ph18.i.i, !llvm.loop !45

._crit_edge19.i.i:                                ; preds = %.lr.ph18.i.i, %middle.block
  %.lcssa = phi i64 [ %n.vec, %middle.block ], [ %i.ed, %.lr.ph18.i.i ]
  %i.ei = call fastcc i32 @ecp_normalize_jac_many(ptr noundef %0, ptr noundef %i.b, i64 noundef %.lcssa) ; 2 uses
  %.not69.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not69.i.i, label %.preheader.i.i, label %ecp_precompute_comb.exit.i

.preheader.i.i:                                   ; preds = %._crit_edge19.i.i, %.preheader.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.i.i ], [ 0, %._crit_edge19.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.ek) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bv
  br i1 %exitcond.not, label %ecp_precompute_comb.exit.i, label %.preheader.i.i, !llvm.loop !46

ecp_precompute_comb.exit.i:                       ; preds = %bb.ae, %mbedtls_ecp_copy.exit78.i.i, %bb.ad, %bb.ac, %.lr.ph95, %.preheader.i.i, %._crit_edge19.i.i, %._crit_edge.i.i, %mbedtls_ecp_copy.exit.i.i, %bb.aa, %bb.z
  %.056.i.i = phi i32 [ %i.cn, %mbedtls_ecp_copy.exit.i.i ], [ %i.ci, %bb.z ], [ %i.ck, %bb.aa ], [ %i.dq, %._crit_edge.i.i ], [ %i.dw, %.lr.ph95 ], [ %i.ei, %._crit_edge19.i.i ], [ 0, %.preheader.i.i ], [ %i.df, %bb.ad ], [ %i.dc, %bb.ac ], [ %i.dj, %bb.ae ], [ %i.di, %mbedtls_ecp_copy.exit78.i.i ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %12) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.cf) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.cg) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.ch) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not64.i = icmp eq i32 %.056.i.i, 0
  br i1 %.not64.i, label %bb.ag, label %bb.bc

bb.ag:                                            ; preds = %ecp_precompute_comb.exit.i
  br i1 %.not.i2.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.bw, ptr %i.el, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.bv, ptr %i.em, align 8, !tbaa !22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.x
  %.0549.i = phi ptr [ %i.bw, %bb.ag ], [ %i.bw, %bb.ah ], [ %i.bu, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %10) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %11) #18
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eo = call i32 @mbedtls_mpi_get_bit(ptr noundef nonnull %i.en, i64 noundef 0) #18
  %.not.i.i71.i = icmp eq i32 %i.eo, 1
  br i1 %.not.i.i71.i, label %bb.aj, label %ecp_comb_recode_scalar.exit.thread.i.i

ecp_comb_recode_scalar.exit.thread.i.i:           ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %ecp_mul_comb_after_precomp.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ep = call i32 @mbedtls_mpi_get_bit(ptr noundef %2, i64 noundef 0) #18
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i8                     ; 2 uses
  %i.es = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %10, ptr noundef %2) #18 ; 2 uses
  %.not15.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not15.i.i.i, label %bb.ak, label %ecp_comb_recode_scalar.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.et = call i32 @mbedtls_mpi_sub_mpi(ptr noundef nonnull %11, ptr noundef nonnull %i.en, ptr noundef %2) #18 ; 2 uses
  %.not16.i.i.i = icmp eq i32 %i.et, 0
  br i1 %.not16.i.i.i, label %bb.al, label %ecp_comb_recode_scalar.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.eu = call i32 @mbedtls_mpi_safe_cond_assign(ptr noundef nonnull %10, ptr noundef nonnull %11, i8 noundef zeroext %i.er) #18 ; 2 uses
  %.not17.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not17.i.i.i, label %bb.am, label %ecp_comb_recode_scalar.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.ev = add nuw i64 %i.bs, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.ev, i1 false)
  %.not54.i.i.i.i = icmp ult i64 %i.br, %i.bp
  br i1 %.not54.i.i.i.i, label %ecp_comb_recode_scalar.exit.i.i, label %.preheader48.i.i.i.i

.preheader48.i.i.i.i:                             ; preds = %bb.am, %bb.ao
  %.04550.i.i.i.i = phi i64 [ %i.fg, %bb.ao ], [ 0, %bb.am ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04550.i.i.i.i ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader48.i.i.i.i
  %.04449.i.i.i.i = phi i64 [ 0, %.preheader48.i.i.i.i ], [ %i.ff, %bb.an ] ; 3 uses
  %i.ex = mul i64 %.04449.i.i.i.i, %i.bs
  %i.ey = add i64 %i.ex, %.04550.i.i.i.i
  %i.ez = call i32 @mbedtls_mpi_get_bit(ptr noundef nonnull %10, i64 noundef %i.ey) #18
  %i.fa = trunc nuw nsw i64 %.04449.i.i.i.i to i32
  %i.fb = shl i32 %i.ez, %i.fa
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !27
  %i.fd = trunc i32 %i.fb to i8
  %i.fe = or i8 %i.fc, %i.fd
  store i8 %i.fe, ptr %i.ew, align 1, !tbaa !27
  %i.ff = add nuw nsw i64 %.04449.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ff, %i.bp
  br i1 %exitcond.not.i.i.i.i, label %bb.ao, label %bb.an, !llvm.loop !47

bb.ao:                                            ; preds = %bb.an
  %i.fg = add nuw nsw i64 %.04550.i.i.i.i, 1      ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.fg, %i.bs
  br i1 %exitcond55.not.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.preheader48.i.i.i.i, !llvm.loop !48

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ao
  %load_initial = load i8, ptr %i.a, align 16
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph.i.i.i.i.preheader ], [ %i.fq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.053.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.fp, %.lr.ph.i.i.i.i ] ; 2 uses
  %.152.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ft, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.152.i.i.i.i ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27  ; 2 uses
  %i.fj = and i8 %i.fi, %.053.i.i.i.i
  %i.fk = xor i8 %i.fi, %.053.i.i.i.i             ; 3 uses
  %i.fl = and i8 %i.fk, 1
  %i.fm = xor i8 %i.fl, 1                         ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fh, i64 -1
  %narrow.i.i.i.i = mul nuw nsw i8 %i.fm, %store_forwarded ; 2 uses
  %i.fo = and i8 %narrow.i.i.i.i, %i.fk
  %i.fp = or i8 %i.fo, %i.fj
  %i.fq = xor i8 %narrow.i.i.i.i, %i.fk           ; 2 uses
  store i8 %i.fq, ptr %i.fh, align 1, !tbaa !27
  %i.fr = shl nuw i8 %i.fm, 7
  %i.fs = or i8 %i.fr, %store_forwarded
  store i8 %i.fs, ptr %i.fn, align 1, !tbaa !27
  %i.ft = add nuw i64 %.152.i.i.i.i, 1
  %exitcond56.not.i.i.i.i = icmp eq i64 %.152.i.i.i.i, %i.bs
  br i1 %exitcond56.not.i.i.i.i, label %ecp_comb_recode_scalar.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !49

ecp_comb_recode_scalar.exit.i.i:                  ; preds = %.lr.ph.i.i.i.i, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.i.i.i = phi i32 [ %i.es, %bb.aj ], [ %i.et, %bb.ak ], [ %i.eu, %bb.al ], [ 0, %bb.am ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %11) #18
  call void @mbedtls_mpi_free(ptr noundef nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.not.i72.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not.i72.i, label %bb.ap, label %ecp_mul_comb_after_precomp.exit.i

bb.ap:                                            ; preds = %ecp_comb_recode_scalar.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %8) #18
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.fu) #18
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.fv) #18
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %9) #18
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.fw) #18
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.fx) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %i.fy) #18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !27
  %i.gb = call fastcc i32 @ecp_select_comb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0549.i, i8 noundef zeroext range(i8 2, 33) %i.bo, i8 noundef zeroext %i.ga) ; 2 uses
  %.not.i22.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i22.i.i, label %bb.aq, label %ecp_mul_comb_core.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %.not37.i.i.i = icmp eq ptr %4, null
  br i1 %.not37.i.i.i, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @mbedtls_mpi_init(ptr noundef nonnull %7) #18
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = call i32 @mbedtls_mpi_random(ptr noundef nonnull %7, i64 noundef 2, ptr noundef nonnull %i.gc, ptr noundef nonnull %4, ptr noundef %5) #18 ; 2 uses
  %.not.i40.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i40.i.i.i, label %bb.as, label %ecp_randomize_jac.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gf = call fastcc i32 @mbedtls_mpi_mul_mod(ptr noundef nonnull %0, ptr noundef nonnull %i.ge, ptr noundef nonnull %i.ge, ptr noundef nonnull %7) ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not22.i.i.i.i, label %bb.at, label %ecp_randomize_jac.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.gh = call fastcc i32 @mbedtls_mpi_mul_mod(ptr noundef nonnull %0, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gg, ptr noundef nonnull %7) ; 2 uses
  %.not23.i.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not23.i.i.i.i, label %bb.au, label %ecp_randomize_jac.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.gi = call fastcc i32 @mbedtls_mpi_mul_mod(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %7) ; 2 uses
  %.not24.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not24.i.i.i.i, label %bb.av, label %ecp_randomize_jac.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.gj = call fastcc i32 @mbedtls_mpi_mul_mod(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %7) ; 2 uses
  %.not25.i.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not25.i.i.i.i, label %bb.aw, label %ecp_randomize_jac.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gk = call fastcc i32 @mbedtls_mpi_mul_mod(ptr noundef nonnull %0, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gg, ptr noundef nonnull %7)
  br label %ecp_randomize_jac.exit.i.i.i

ecp_randomize_jac.exit.i.i.i:                     ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.0.i.i.i.i = phi i32 [ %i.gd, %bb.ar ], [ %i.gf, %bb.as ], [ %i.gh, %bb.at ], [ %i.gi, %bb.au ], [ %i.gj, %bb.av ], [ %i.gk, %bb.aw ] ; 2 uses
  call void @mbedtls_mpi_free(ptr noundef nonnull %7) #18
  %i.gl = icmp eq i32 %.0.i.i.i.i, -14
  %spec.store.select.i.i.i.i = select i1 %i.gl, i32 -19712, i32 %.0.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.gm = icmp eq i32 %spec.store.select.i.i.i.i, 0
  %.old1.i.i.i = icmp uge i64 %i.br, %i.bp
  %or.cond2.i.i.i = and i1 %.old1.i.i.i, %i.gm
  br i1 %or.cond2.i.i.i, label %.preheader.i.i.i.preheader, label %ecp_mul_comb_core.exit.i.i

bb.ax:                                            ; preds = %bb.aq
  %.old1.old.not.i.i.i = icmp ult i64 %i.br, %i.bp
  br i1 %.old1.old.not.i.i.i, label %ecp_mul_comb_core.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.ax, %ecp_randomize_jac.exit.i.i.i
end_hunk_0
