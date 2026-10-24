Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@H5D__chunk_lock:bb.a
  %i.ai = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_blk_free_list, i64 noundef %i.s) #15 ; 4 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !153
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %H5D__chunk_mem_alloc.exit
  %i.ak = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.al = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4688, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread88

bb.f:                                             ; preds = %H5D__chunk_mem_alloc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 312 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !196 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.ao, i64 %i.s, i1 false)
  %i.ap = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = xor i1 %i.as, true
  %i.au = select i1 %i.aq, i1 true, i1 %i.at
  %i.av = icmp ne ptr %i.ao, null
  %or.cond.i = and i1 %i.av, %i.au
  br i1 %or.cond.i, label %bb.g, label %H5D__chunk_mem_xfree.exit, !prof !206

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !170
  %.not8.i = icmp eq i64 %i.aw, 0
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

H5D__chunk_mem_xfree.exit:                        ; preds = %bb.f, %bb.h, %bb.i
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !196
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !197
  %i.bb = or i32 %i.ba, 3
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !197
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  br i1 %3, label %H5D__chunk_mem_alloc.exit266, label %bb.n

H5D__chunk_mem_alloc.exit266:                     ; preds = %bb.j
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.s) #16 ; 4 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !153
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %H5D__chunk_mem_alloc.exit266
  %i.be = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.bf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4714, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread88

bb.l:                                             ; preds = %H5D__chunk_mem_alloc.exit266
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 312 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !196 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.bi, i64 %i.s, i1 false)
  %.not149 = icmp eq ptr %i.bi, null
  br i1 %.not149, label %H5D__chunk_mem_xfree.exit268, label %bb.m, !prof !167

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.bi) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit268

H5D__chunk_mem_xfree.exit268:                     ; preds = %bb.l, %bb.m
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !196
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.bm = and i32 %i.bl, -4
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !197
  br label %bb.n

bb.n:                                             ; preds = %H5D__chunk_mem_xfree.exit, %H5D__chunk_mem_xfree.exit268, %bb.j, %bb.c
  %.0218 = phi ptr [ null, %H5D__chunk_mem_xfree.exit ], [ %i.p, %H5D__chunk_mem_xfree.exit268 ], [ %i.p, %bb.j ], [ %i.p, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 328 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !189 ; 6 uses
  %.not255 = icmp eq ptr %i.bo, null
  br i1 %.not255, label %.thread96, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 328
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !189 ; 3 uses
  %.not256 = icmp eq ptr %i.bq, null
  br i1 %.not256, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 336
  store ptr %i.z, ptr %i.br, align 8, !tbaa !198
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 3696
  store ptr %i.z, ptr %i.bs, align 8, !tbaa !199
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 336 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !198 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !198
  %.not257 = icmp eq ptr %i.bu, null
  br i1 %.not257, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 328
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !189
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !189 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 328
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !189
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 3688
  store ptr %i.bo, ptr %i.bx, align 8, !tbaa !188
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = phi ptr [ %i.bq, %bb.t ], [ %.pre106, %bb.s ]
  %i.bz = phi ptr [ %i.bo, %bb.t ], [ %.pre, %bb.s ] ; 2 uses
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !198
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 328
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !189
  store ptr %i.z, ptr %i.ca, align 8, !tbaa !189
  br label %.thread96

bb.v:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !147 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !175 ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !170
  %.not242 = icmp eq i64 %i.cg, 0
  br i1 %.not242, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !169, !range !12, !noundef !13 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1                ; 3 uses
  %brmerge = or i1 %3, %i.cj
  %.mux = select i1 %i.cj, ptr null, ptr %i.p
  %.mux263 = select i1 %i.cj, ptr %i.p, ptr null
  %.mux264 = zext nneg i8 %i.ci to i32
  br i1 %brmerge, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 268
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !24
  %i.cm = and i8 %i.cl, 1
  %.not243 = icmp eq i8 %i.cm, 0
  br i1 %.not243, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 2836
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !52 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !161
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 2840
  %.not105 = icmp eq i32 %i.co, 0
  br i1 %.not105, label %H5D__chunk_is_partial_edge_chunk.exit, label %.lr.ph.preheader.i, !prof !167

.lr.ph.preheader.i:                               ; preds = %bb.y
  %wide.trip.count.i = zext i32 %i.co to i64
  br label %.lr.ph.i

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %H5D__chunk_is_partial_edge_chunk.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.cw = add i64 %i.cv, 1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.cz = mul i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !25
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
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !170
  %.not245 = icmp eq i64 %i.di, 0
  br i1 %.not245, label %.critedge260, label %.critedge.a, !prof !141

.critedge260:                                     ; preds = %H5D__chunk_is_partial_edge_chunk.exit.thread2, %bb.aa, %bb.ab
  %.12191019 = phi ptr [ %.1219, %bb.ab ], [ %.1219, %bb.aa ], [ null, %H5D__chunk_is_partial_edge_chunk.exit.thread2 ]
  %i.dj = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.dk = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.dl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4788, i64 noundef %i.dj, i64 noundef %i.dk, ptr noundef nonnull @.str.170) #15 ; 0 uses
  br label %.thread88

.critedge:                                        ; preds = %H5D__chunk_is_partial_edge_chunk.exit
  br i1 %2, label %bb.ac, label %bb.ai

.critedge.a:                                      ; preds = %bb.ab
  br i1 %2, label %bb.ac, label %bb.aj

.critedge.thread:                                 ; preds = %H5D__chunk_is_partial_edge_chunk.exit.thread2
  br i1 %2, label %.thread30, label %.thread47

.thread30:                                        ; preds = %.critedge.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 3652 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !353
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !353
  br label %bb.af

bb.ac:                                            ; preds = %.critedge.a, %.critedge
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 3652 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !353
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !353
  %.not.i = icmp eq ptr %.1219, null
  br i1 %.not.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %.1219, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !170
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
  store ptr %.0.i271, ptr %i.a, align 8, !tbaa !153
  %i.dw = icmp eq ptr %.0.i271, null
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %H5D__chunk_mem_alloc.exit273
  %i.dx = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.dy = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.dz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4800, i64 noundef %i.dx, i64 noundef %i.dy, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread88

bb.ah:                                            ; preds = %H5D__chunk_mem_alloc.exit273
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i271, i8 0, i64 %i.s, i1 false)
  br label %bb.bu

bb.ai:                                            ; preds = %.critedge
  br i1 %i.de, label %bb.aj, label %bb.bf

.thread47:                                        ; preds = %.critedge.thread
  br i1 %i.dg, label %.thread.a, label %.thread57

.thread.a:                                        ; preds = %.thread47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !25
  %i.ea = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.s) ; 2 uses
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.am

.thread57:                                        ; preds = %.thread47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  br label %bb.bi

bb.aj:                                            ; preds = %.critedge.a, %bb.ai
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.pre108 = load i8, ptr %.phi.trans.insert107, align 4, !tbaa !169, !range !12
  %i.ec = trunc nuw i8 %.pre108 to i1
  %i.ed = select i1 %i.ec, ptr %.0217, ptr %.1219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !25
  %i.ee = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.s) ; 4 uses
  store i64 %i.ee, ptr %i.c, align 8, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %.not.i275 = icmp eq ptr %i.ed, null
  br i1 %.not.i275, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !170
  %.not6.i276 = icmp eq i64 %i.eh, 0
  br i1 %.not6.i276, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = tail call noalias ptr @malloc(i64 noundef %i.ee) #16
  br label %H5D__chunk_mem_alloc.exit277

bb.am:                                            ; preds = %.thread.a, %bb.ak, %bb.aj
  %i.ej = phi ptr [ %i.eb, %.thread.a ], [ %i.ef, %bb.ak ], [ %i.ef, %bb.aj ]
  %i.ek = phi i64 [ %i.ea, %.thread.a ], [ %i.ee, %bb.ak ], [ %i.ee, %bb.aj ]
  %.121992851159 = phi ptr [ null, %.thread.a ], [ %.1219, %bb.ak ], [ %.1219, %bb.aj ]
  %.0217122654157 = phi ptr [ null, %.thread.a ], [ %.0217, %bb.ak ], [ %.0217, %bb.aj ]
  %.0207132455155 = phi i32 [ 1, %.thread.a ], [ %.0207, %bb.ak ], [ %.0207, %bb.aj ]
  %i.el = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_blk_free_list, i64 noundef %i.ek) #15
  br label %H5D__chunk_mem_alloc.exit277

H5D__chunk_mem_alloc.exit277:                     ; preds = %bb.al, %bb.am
  %i.em = phi ptr [ %i.ef, %bb.al ], [ %i.ej, %bb.am ]
  %.121992851158 = phi ptr [ %.1219, %bb.al ], [ %.121992851159, %bb.am ] ; 3 uses
  %.0217122654156 = phi ptr [ %.0217, %bb.al ], [ %.0217122654157, %bb.am ] ; 5 uses
  %.0207132455154 = phi i32 [ %.0207, %bb.al ], [ %.0207132455155, %bb.am ]
  %i.en = phi ptr [ %i.ei, %bb.al ], [ %i.el, %bb.am ] ; 3 uses
  store ptr %i.en, ptr %i.a, align 8, !tbaa !153
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %H5D__chunk_mem_alloc.exit277
  %i.ep = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.eq = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.er = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4831, i64 noundef %i.ep, i64 noundef %i.eq, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread44

bb.ao:                                            ; preds = %H5D__chunk_mem_alloc.exit277
  %i.es = load ptr, ptr %i.l, align 8, !tbaa !160
  %i.et = tail call ptr @H5F_get_shared(ptr noundef %i.es) #15
  %i.eu = tail call i32 @H5F_shared_block_read(ptr noundef %i.et, i32 noundef 3, i64 noundef %i.cc, i64 noundef %i.ce, ptr noundef nonnull %i.en) #15
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.ex = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !25
  %i.ey = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4836, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %.thread44

bb.aq:                                            ; preds = %bb.ao
  %.not246 = icmp eq ptr %.0217122654156, null
  br i1 %.not246, label %bb.be, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %.0217122654156, i64 56
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !170
  %.not247 = icmp eq i64 %i.fa, 0
  br i1 %.not247, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.fb = call i32 @H5CX_get_err_detect(ptr noundef nonnull %i.d) #15
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fd = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.fe = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.ff = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4845, i64 noundef %i.fd, i64 noundef %i.fe, ptr noundef nonnull @.str.28) #15 ; 0 uses
  br label %.thread40

bb.au:                                            ; preds = %bb.as
  %i.fg = call i32 @H5CX_get_filter_cb(ptr noundef nonnull %5) #15
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fi = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.fj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.fk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4847, i64 noundef %i.fi, i64 noundef %i.fj, ptr noundef nonnull @.str.29) #15 ; 0 uses
  br label %.thread40

bb.aw:                                            ; preds = %bb.au
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fm = load i32, ptr %i.d, align 4, !tbaa !54
  %i.fn = load ptr, ptr %5, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call i32 @H5Z_pipeline(ptr noundef nonnull %.0217122654156, i32 noundef 256, ptr noundef nonnull %i.fl, i32 noundef %i.fm, ptr %i.fn, ptr %i.fp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #15
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fs = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ft = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !25
  %i.fu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4852, i64 noundef %i.fs, i64 noundef %i.ft, ptr noundef nonnull @.str.171) #15 ; 0 uses
  br label %.thread40

bb.ay:                                            ; preds = %bb.aw
  %i.fv = load i64, ptr %i.b, align 8, !tbaa !25
  %.not248 = icmp eq i64 %i.fv, %i.s
  br i1 %.not248, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.fx = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.fy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4857, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull @.str.172) #15 ; 0 uses
  br label %.thread40

bb.ba:                                            ; preds = %bb.ay
  %i.fz = load i8, ptr %i.em, align 4, !tbaa !169, !range !12, !noundef !13
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !153 ; 3 uses
  %i.gc = call noalias ptr @H5D__chunk_mem_alloc(i64 noundef %i.s, ptr noundef %.121992851158) ; 3 uses
  store ptr %i.gc, ptr %i.a, align 8, !tbaa !153
  %.not249 = icmp eq ptr %i.gc, null
  br i1 %.not249, label %.thread38, label %bb.bc

.thread38:                                        ; preds = %bb.bb
  %i.gd = call ptr @H5D__chunk_mem_xfree(ptr noundef %i.gb, ptr noundef nonnull %.0217122654156) ; 0 uses
  %i.ge = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.gf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.gg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4866, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread40

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr align 1 %i.gb, i64 %i.s, i1 false)
  %i.gh = call ptr @H5D__chunk_mem_xfree(ptr noundef %i.gb, ptr noundef nonnull %.0217122654156) ; 0 uses
  br label %bb.bd

.thread40:                                        ; preds = %bb.at, %bb.av, %bb.ax, %bb.az, %.thread38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread44

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.be

.thread44:                                        ; preds = %bb.an, %bb.ap, %.thread40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread88

bb.be:                                            ; preds = %bb.aq, %bb.ar, %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 3656 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !354
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 8, !tbaa !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.bu

bb.bf:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %.not.i279 = icmp eq ptr %.1219, null
  br i1 %.not.i279, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = getelementptr inbounds nuw i8, ptr %.1219, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !170
  %.not6.i280 = icmp eq i64 %i.gm, 0
  br i1 %.not6.i280, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = tail call noalias ptr @malloc(i64 noundef %i.s) #16
  br label %H5D__chunk_mem_alloc.exit281

bb.bi:                                            ; preds = %.thread57, %bb.bg, %bb.bf
  %.12199285264 = phi ptr [ null, %.thread57 ], [ %.1219, %bb.bg ], [ null, %bb.bf ]
  %.020713245662 = phi i32 [ 1, %.thread57 ], [ %.0207, %bb.bg ], [ %.0207, %bb.bf ]
  %i.go = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_blk_free_list, i64 noundef %i.s) #15
  br label %H5D__chunk_mem_alloc.exit281

H5D__chunk_mem_alloc.exit281:                     ; preds = %bb.bh, %bb.bi
  %.12199285263 = phi ptr [ %.1219, %bb.bh ], [ %.12199285264, %bb.bi ] ; 3 uses
  %.020713245661 = phi i32 [ %.0207, %bb.bh ], [ %.020713245662, %bb.bi ]
  %.0.i278 = phi ptr [ %i.gn, %bb.bh ], [ %i.go, %bb.bi ] ; 2 uses
  store ptr %.0.i278, ptr %i.a, align 8, !tbaa !153
  %i.gp = icmp eq ptr %.0.i278, null
  br i1 %i.gp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %H5D__chunk_mem_alloc.exit281
end_hunk_0
