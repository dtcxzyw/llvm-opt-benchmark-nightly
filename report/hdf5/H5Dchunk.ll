Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5D__chunk_update_old_edge_chunks:bb.a
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %bb.o ], [ 0, %._crit_edge ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv149 ; 2 uses
  store i8 0, ptr %i.bb, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv149
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !23 ; 5 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph118
  %i.bf = trunc nuw i64 %indvars.iv149 to i32
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.bh = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !23
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_update_old_edge_chunks, i32 noundef 5753, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.24, i32 noundef %i.bf) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit108

bb.k:                                             ; preds = %.lr.ph118
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv149
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23 ; 3 uses
  %i.bl = udiv i64 %i.bk, %i.bd                   ; 2 uses
  %i.bm = urem i64 %i.bk, %i.bd
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv149
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv149
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = udiv i64 %i.bp, %i.bd                   ; 4 uses
  %i.br = icmp ugt i64 %i.bq, 1
  br i1 %i.br, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bs = add i64 %i.bk, -1
  %i.bt = udiv i64 %i.bs, %i.bd                   ; 2 uses
  %i.bu = add i64 %i.bq, -1
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.bw = phi i64 [ %spec.select, %.critedge ], [ %i.bt, %bb.l ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv149
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !23
  %i.by = icmp eq i64 %i.bm, 0
  %i.bz = add i64 %i.bl, 1
  %.not107 = icmp ult i64 %i.bq, %i.bz
  %or.cond113 = select i1 %i.by, i1 true, i1 %.not107
  br i1 %or.cond113, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.bb, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %i.q
  br i1 %exitcond153.not, label %.lr.ph136, label %.lr.ph118, !llvm.loop !292

.lr.ph136.split:                                  ; preds = %.lr.ph136, %bb.v
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %bb.v ], [ 0, %.lr.ph136 ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv157
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8, !range !10, !noundef !11
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.split, label %bb.v

.split:                                           ; preds = %.lr.ph136.split
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.ad, i1 false)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv157
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv157
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !23
  %i.cg = call i32 @H5D__chunk_lookup(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2)
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.split127.us, label %.lr.ph182

._crit_edge123.loopexit:                          ; preds = %bb.r
  %i.ci = call i32 @H5D__chunk_lookup(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2)
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.split127.us, label %.lr.ph182

.split127.us:                                     ; preds = %.split, %._crit_edge123.loopexit, %.split.us.us
  %i.ck = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.cl = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %i.cm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_update_old_edge_chunks, i32 noundef 5800, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit108

.lr.ph182:                                        ; preds = %.split, %._crit_edge123.loopexit
  %i.cn = load i64, ptr %i.ae, align 8, !tbaa !178
  %i.co = icmp ne i64 %i.cn, -1
  %i.cp = load i32, ptr %i.af, align 8
  %i.cq = icmp ne i32 %i.cp, -1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.p, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %bb.q, %.lr.ph182
  br label %.lr.ph122

bb.p:                                             ; preds = %.lr.ph182
  %i.cr = call fastcc ptr @H5D__chunk_lock(ptr noundef nonnull %4, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.split129.us, label %bb.q

.split129.us:                                     ; preds = %bb.p, %bb.h
  %i.ct = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.cu = load i64, ptr @H5E_CANTLOCK_g, align 8, !tbaa !23
  %i.cv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_update_old_edge_chunks, i32 noundef 5809, i64 noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.35) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit108

bb.q:                                             ; preds = %bb.p
  %i.cw = call fastcc i32 @H5D__chunk_unlock(ptr noundef nonnull %4, ptr noundef %2, i1 noundef zeroext true, ptr noundef %i.cr, i64 noundef 0)
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.split131.us, label %.lr.ph122.preheader

.split131.us:                                     ; preds = %bb.q, %bb.i
  %i.cy = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.cz = load i64, ptr @H5E_CANTUNLOCK_g, align 8, !tbaa !23
  %i.da = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_update_old_edge_chunks, i32 noundef 5813, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull @.str.36) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit108

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.t
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %bb.t ], [ %i.q, %.lr.ph122.preheader ] ; 2 uses
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, -1 ; 4 uses
  %.not = icmp eq i64 %indvars.iv.next155, %indvars.iv157
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph122
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next155 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !23
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next155
  %i.df = load i64, ptr %i.de, align 8, !tbaa !23
  %i.dg = icmp ugt i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.s, label %._crit_edge123.loopexit

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.db, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph122, %bb.s
  %i.dh = icmp slt i64 %indvars.iv154, 2
  br i1 %i.dh, label %.split133, label %.lr.ph122, !llvm.loop !293

.split133:                                        ; preds = %bb.t
  %i.di = icmp eq i64 %i.ce, 0
  br i1 %i.di, label %._crit_edge137, label %bb.u

bb.u:                                             ; preds = %.split133
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv157 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, -1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph136.split, %bb.u
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %i.q
  br i1 %exitcond161.not, label %._crit_edge137, label %.lr.ph136.split, !llvm.loop !291

._crit_edge137:                                   ; preds = %bb.v, %.split133, %bb.f, %.split133.us.us, %bb.b
  %i.dm = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = xor i1 %i.dp, true
  %i.dr = select i1 %i.dn, i1 true, i1 %i.dq
  br i1 %i.dr, label %bb.w, label %H5D__chunk_cinfo_cache_reset.exit108, !prof !12

bb.w:                                             ; preds = %._crit_edge137
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 3728
  store i8 0, ptr %i.dt, align 8, !tbaa !69
  br label %H5D__chunk_cinfo_cache_reset.exit108

H5D__chunk_cinfo_cache_reset.exit108:             ; preds = %.split131.us, %.split129.us, %.split127.us, %bb.w, %._crit_edge137, %bb.a, %bb.j, %H5D__chunk_cinfo_cache_reset.exit
  %.5 = phi i32 [ 0, %H5D__chunk_cinfo_cache_reset.exit ], [ -1, %bb.j ], [ 0, %bb.w ], [ 0, %bb.a ], [ 0, %._crit_edge137 ], [ -1, %.split127.us ], [ -1, %.split129.us ], [ -1, %.split131.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @H5D__chunk_lock(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5D_fill_buf_info_t, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.H5Z_cb_t, align 8           ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !191
  %i.f = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %bb.b, label %H5D__chunk_mem_xfree.exit293, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 26 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 3648 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 552
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22   ; 24 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !211  ; 2 uses
  %.not = icmp eq i32 %i.u, -1
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4032
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !214  ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 3652 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !294
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !294
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 200 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !213
  %.not254 = icmp eq i64 %i.ae, 0
  br i1 %.not254, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !212, !range !10, !noundef !11
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %H5D__chunk_mem_alloc.exit, label %bb.j

H5D__chunk_mem_alloc.exit:                        ; preds = %bb.d
  %i.ai = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_blk_free_list, i64 noundef %i.s) #15 ; 4 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !191
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %H5D__chunk_mem_alloc.exit
  %i.ak = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.al = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4688, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread88

bb.f:                                             ; preds = %H5D__chunk_mem_alloc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 312 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !254 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.ao, i64 %i.s, i1 false)
  %i.ap = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = xor i1 %i.as, true
  %i.au = select i1 %i.aq, i1 true, i1 %i.at
  %i.av = icmp ne ptr %i.ao, null
  %or.cond.i = and i1 %i.av, %i.au
  br i1 %or.cond.i, label %bb.g, label %H5D__chunk_mem_xfree.exit, !prof !269

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !213
  %.not8.i = icmp eq i64 %i.aw, 0
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

H5D__chunk_mem_xfree.exit:                        ; preds = %bb.f, %bb.h, %bb.i
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !254
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !255
  %i.bb = or i32 %i.ba, 3
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !255
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  br i1 %3, label %H5D__chunk_mem_alloc.exit266, label %bb.n

H5D__chunk_mem_alloc.exit266:                     ; preds = %bb.j
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.s) #16 ; 4 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !191
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %H5D__chunk_mem_alloc.exit266
  %i.be = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.bf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4714, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread88

bb.l:                                             ; preds = %H5D__chunk_mem_alloc.exit266
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 312 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !254 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.bi, i64 %i.s, i1 false)
  %6 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %7 = trunc nuw i8 %6 to i1
  %8 = xor i1 %7, true
  %9 = select i1 %i.g, i1 true, i1 %8
  %10 = icmp ne ptr %i.bi, null
  %or.cond.i267 = and i1 %10, %9
  br i1 %or.cond.i267, label %bb.m, label %H5D__chunk_mem_xfree.exit268, !prof !269

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.bi) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit268

H5D__chunk_mem_xfree.exit268:                     ; preds = %bb.l, %bb.m
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !255
  %i.bm = and i32 %i.bl, -4
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !255
  br label %bb.n

bb.n:                                             ; preds = %H5D__chunk_mem_xfree.exit, %H5D__chunk_mem_xfree.exit268, %bb.j, %bb.c
  %.0218 = phi ptr [ null, %H5D__chunk_mem_xfree.exit ], [ %i.p, %H5D__chunk_mem_xfree.exit268 ], [ %i.p, %bb.j ], [ %i.p, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 328 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !239 ; 6 uses
  %.not255 = icmp eq ptr %i.bo, null
  br i1 %.not255, label %.thread96, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 328
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !239 ; 3 uses
  %.not256 = icmp eq ptr %i.bq, null
  br i1 %.not256, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 336
  store ptr %i.z, ptr %i.br, align 8, !tbaa !256
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 3696
  store ptr %i.z, ptr %i.bs, align 8, !tbaa !257
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 336 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !256 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !256
  %.not257 = icmp eq ptr %i.bu, null
  br i1 %.not257, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 328
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !239
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !239 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 328
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !239
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 3688
  store ptr %i.bo, ptr %i.bx, align 8, !tbaa !238
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = phi ptr [ %i.bq, %bb.t ], [ %.pre106, %bb.s ]
  %i.bz = phi ptr [ %i.bo, %bb.t ], [ %.pre, %bb.s ] ; 2 uses
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !256
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 328
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !239
  store ptr %i.z, ptr %i.ca, align 8, !tbaa !239
  br label %.thread96

bb.v:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !178 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !221 ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !213
  %.not242 = icmp eq i64 %i.cg, 0
  br i1 %.not242, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !212, !range !10, !noundef !11 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1                ; 3 uses
  %brmerge = or i1 %3, %i.cj
  %.mux = select i1 %i.cj, ptr null, ptr %i.p
  %.mux263 = select i1 %i.cj, ptr %i.p, ptr null
  %.mux264 = zext nneg i8 %i.ci to i32
  br i1 %brmerge, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 268
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !22
  %i.cm = and i8 %i.cl, 1
  %.not243 = icmp eq i8 %i.cm, 0
  br i1 %.not243, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 2836
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !202
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 2840
  %.not105 = icmp eq i32 %i.co, 0
  br i1 %.not105, label %H5D__chunk_is_partial_edge_chunk.exit, label %.lr.ph.preheader.i, !prof !208

.lr.ph.preheader.i:                               ; preds = %bb.y
  %wide.trip.count.i = zext i32 %i.co to i64
  br label %.lr.ph.i

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %H5D__chunk_is_partial_edge_chunk.exit, label %.lr.ph.i, !llvm.loop !209

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !23
  %i.cw = add i64 %i.cv, 1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.cz = mul i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !23
  %i.dc = icmp ugt i64 %i.cz, %i.db
  br i1 %i.dc, label %H5D__chunk_is_partial_edge_chunk.exit.thread2, label %bb.z

H5D__chunk_is_partial_edge_chunk.exit:            ; preds = %bb.z, %bb.y, %bb.w, %bb.x, %bb.v
  %.1219 = phi ptr [ %i.p, %bb.v ], [ %.mux, %bb.w ], [ %i.p, %bb.x ], [ %i.p, %bb.y ], [ %i.p, %bb.z ] ; 14 uses
  %.0217 = phi ptr [ %i.p, %bb.v ], [ %.mux263, %bb.w ], [ %i.p, %bb.x ], [ %i.p, %bb.y ], [ %i.p, %bb.z ] ; 6 uses
  %.0207 = phi i32 [ 0, %bb.v ], [ %.mux264, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ] ; 9 uses
  %i.dd = icmp ne i64 %i.ce, %i.s
  %i.de = icmp ne i64 %i.cc, -1                   ; 2 uses
  %or.cond = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond, label %bb.aa, label %.critedge

H5D__chunk_is_partial_edge_chunk.exit.thread2:    ; preds = %.lr.ph.i
  %i.df = icmp ne i64 %i.ce, %i.s
  %i.dg = icmp ne i64 %i.cc, -1                   ; 2 uses
  %or.cond7 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond7, label %.critedge260, label %.critedge.thread

bb.aa:                                            ; preds = %H5D__chunk_is_partial_edge_chunk.exit
  %.not244 = icmp eq ptr %.0217, null
  br i1 %.not244, label %.critedge260, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %.0217, i64 56
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !213
  %.not245 = icmp eq i64 %i.di, 0
  br i1 %.not245, label %.critedge260, label %.critedge, !prof !175

.critedge260:                                     ; preds = %H5D__chunk_is_partial_edge_chunk.exit.thread2, %bb.aa, %bb.ab
  %.12191019 = phi ptr [ %.1219, %bb.ab ], [ %.1219, %bb.aa ], [ null, %H5D__chunk_is_partial_edge_chunk.exit.thread2 ]
  %i.dj = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.dk = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !23
  %i.dl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4788, i64 noundef %i.dj, i64 noundef %i.dk, ptr noundef nonnull @.str.170) #15 ; 0 uses
  br label %.thread88

.critedge:                                        ; preds = %H5D__chunk_is_partial_edge_chunk.exit, %bb.ab
  br i1 %2, label %bb.ac, label %bb.ai

.critedge.thread:                                 ; preds = %H5D__chunk_is_partial_edge_chunk.exit.thread2
  br i1 %2, label %.thread30, label %.thread47

.thread30:                                        ; preds = %.critedge.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 3652 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !294
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !294
  br label %bb.af

bb.ac:                                            ; preds = %.critedge
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 3652 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !294
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !294
  %.not.i = icmp eq ptr %.1219, null
  br i1 %.not.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %.1219, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !213
  %.not6.i272 = icmp eq i64 %i.dt, 0
  br i1 %.not6.i272, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.s) #16
  br label %H5D__chunk_mem_alloc.exit273

bb.af:                                            ; preds = %.thread30, %bb.ad, %bb.ac
  %.0207132537 = phi i32 [ 1, %.thread30 ], [ %.0207, %bb.ad ], [ %.0207, %bb.ac ]
  %.121992735 = phi ptr [ null, %.thread30 ], [ %.1219, %bb.ad ], [ null, %bb.ac ]
  %i.dv = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_blk_free_list, i64 noundef %i.s) #15
  br label %H5D__chunk_mem_alloc.exit273

H5D__chunk_mem_alloc.exit273:                     ; preds = %bb.ae, %bb.af
  %.0207132536 = phi i32 [ %.0207, %bb.ae ], [ %.0207132537, %bb.af ]
  %.121992734 = phi ptr [ %.1219, %bb.ae ], [ %.121992735, %bb.af ] ; 2 uses
  %.0.i271 = phi ptr [ %i.du, %bb.ae ], [ %i.dv, %bb.af ] ; 3 uses
  store ptr %.0.i271, ptr %i.a, align 8, !tbaa !191
end_hunk_0
