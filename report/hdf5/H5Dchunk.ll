Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5D__chunk_update_cache:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.a
  %.1 = phi i32 [ %.0, %.loopexit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__chunk_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.H5D_chunk_it_ud3_t, align 8 ; 32 uses
  %9 = alloca %struct.H5D_chk_idx_info_t, align 8 ; 7 uses
  %10 = alloca %struct.H5D_chk_idx_info_t, align 8 ; 7 uses
  %i.a = alloca [33 x i64], align 16              ; 6 uses
  %i.b = alloca [33 x i64], align 16              ; 5 uses
  %11 = alloca %struct.H5O_pline_t, align 8       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %12 = alloca %struct.H5D_chunk_rec_t, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, i8 0, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = xor i1 %i.g, true                        ; 2 uses
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.bp, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %6, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, i8 0, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0170 = phi ptr [ %11, %bb.c ], [ %6, %bb.b ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2200 ; 2 uses
  %i.l = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.l, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5D_init_g, align 1, !tbaa !8
  %i.m = tail call i32 @H5D__init_package() #15
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10
  %.pre5.i = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre6.i = trunc nuw i8 %.pre.i to i1
  %.pre7.i = trunc nuw i8 %.pre5.i to i1
  %.pre = xor i1 %.pre7.i, true
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5D_init_g, align 1, !tbaa !8
  %i.o = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !23
  %i.p = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D_chunk_idx_reset, i32 noundef 3839, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.18) #15 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i, %bb.d
  %.pre-phi = phi i1 [ %.pre, %._crit_edge.i ], [ %i.h, %bb.d ]
  %.pre-phi.i = phi i1 [ %.pre6.i, %._crit_edge.i ], [ %i.e, %bb.d ]
  %i.r = select i1 %.pre-phi.i, i1 true, i1 %.pre-phi
  br i1 %i.r, label %bb.h, label %H5D_chunk_idx_reset.exit, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.k, i1 noundef zeroext true) #15, !inline_history !64
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %H5D_chunk_idx_reset.exit

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.z = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D_chunk_idx_reset, i32 noundef 3848, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.ab = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.ac = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7168, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.47) #15 ; 0 uses
  br label %.thread275

H5D_chunk_idx_reset.exit:                         ; preds = %bb.h, %bb.g
  %i.ae = call i32 @H5S_extent_get_dims(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 4 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %H5D_chunk_idx_reset.exit
  %i.ag = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.ah = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7176, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.48) #15 ; 0 uses
  br label %.thread275

bb.l:                                             ; preds = %H5D_chunk_idx_reset.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = call fastcc i32 @H5D__chunk_set_info_real(ptr noundef nonnull %i.aj, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.an = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !23
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7181, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.49) #15 ; 0 uses
  br label %.thread275

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = call fastcc i32 @H5D__chunk_set_info_real(ptr noundef nonnull %i.ap, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.at = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !23
  %i.au = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7185, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.50) #15 ; 0 uses
  br label %.thread275

bb.p:                                             ; preds = %bb.n
  store ptr %0, ptr %10, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0170, ptr %i.av, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.aw, align 8, !tbaa !77
  store ptr %2, ptr %9, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0170, ptr %i.ax, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %i.ay, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2216 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !339
  %i.be = call i32 %i.bd(ptr noundef nonnull %10, ptr noundef nonnull %9) #15
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.bh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7200, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.51) #15 ; 0 uses
  br label %.thread275

bb.r:                                             ; preds = %bb.p
  %i.bj = call i32 @H5T_detect_class(ptr noundef %5, i32 noundef 9, i1 noundef zeroext false) #15
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.ao

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.bl = call ptr @H5T_copy(ptr noundef %5, i32 noundef 0) #15 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.bo = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.bp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7215, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.52) #15 ; 0 uses
  br label %.thread202

bb.u:                                             ; preds = %bb.s
  %i.bq = call ptr @H5T_copy(ptr noundef %5, i32 noundef 0) #15 ; 14 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.bt = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7219, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.52) #15 ; 0 uses
  br label %.thread202

bb.w:                                             ; preds = %bb.u
  %i.bv = call ptr @H5F_get_vol_obj(ptr noundef %2) #15
  %i.bw = call i32 @H5T_set_loc(ptr noundef nonnull %i.bq, ptr noundef %i.bv, i32 noundef 2) #15
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = call i32 @H5T_close_real(ptr noundef nonnull %i.bq) #15 ; 0 uses
  %i.bz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.ca = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.cb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7222, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.53) #15 ; 0 uses
  br label %.thread202

bb.y:                                             ; preds = %bb.w
  %i.cc = call ptr @H5T_path_find(ptr noundef %5, ptr noundef nonnull %i.bl) #15 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.cf = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.cg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7227, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.54) #15 ; 0 uses
  br label %.thread202

bb.aa:                                            ; preds = %bb.y
  %i.ch = call ptr @H5T_path_find(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bq) #15 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.ck = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.cl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7229, i64 noundef %i.cj, i64 noundef %i.ck, ptr noundef nonnull @.str.55) #15 ; 0 uses
  br label %.thread202

bb.ac:                                            ; preds = %bb.aa
  %i.cm = call i64 @H5T_get_size(ptr noundef %5) #15 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.cp = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.cq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7233, i64 noundef %i.co, i64 noundef %i.cp, ptr noundef nonnull @.str.56) #15 ; 0 uses
  br label %.thread202

bb.ae:                                            ; preds = %bb.ac
  %i.cr = call i64 @H5T_get_size(ptr noundef nonnull %i.bl) #15 ; 4 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.cu = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.cv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7235, i64 noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.56) #15 ; 0 uses
  br label %.thread202

bb.ag:                                            ; preds = %bb.ae
  %i.cw = call i64 @H5T_get_size(ptr noundef nonnull %i.bq) #15 ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cy = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !23
  %i.cz = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.da = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7238, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull @.str.56) #15 ; 0 uses
  br label %.thread202

bb.ai:                                            ; preds = %bb.ag
  %i.db = call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.cr)
  %i.dc = call i64 @llvm.umax.i64(i64 %i.db, i64 %i.cw)
  %i.dd = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cw)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !22
  %i.dg = add i32 %i.df, -1                       ; 3 uses
  %.not290 = icmp eq i32 %i.dg, 0
  br i1 %.not290, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %wide.trip.count = zext i32 %i.dg to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.di = icmp ult i32 %i.dg, 8
  br i1 %i.di, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.aj ] ; 9 uses
  %.0138283 = phi i64 [ 1, %.lr.ph.new ], [ %i.en, %bb.aj ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.aj ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !22
  %i.dl = mul i64 %i.dk, %.0138283
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22
  %i.dp = mul i64 %i.do, %i.dl
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22
  %i.dt = mul i64 %i.ds, %i.dp
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !22
  %i.dx = mul i64 %i.dw, %i.dt
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !22
  %i.eb = mul i64 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !22
  %i.ef = mul i64 %i.ee, %i.eb
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22
  %i.ej = mul i64 %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i64, ptr %i.el, align 8, !tbaa !22
  %i.en = mul i64 %i.em, %i.ej                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !340

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.0138283.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod308 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod308)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ak ] ; 2 uses
  %.0138283.epil = phi i64 [ %.0138283.epil.init, %.epil.preheader ], [ %i.eq, %bb.ak ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.epil
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !22
  %i.eq = mul i64 %i.ep, %.0138283.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ak, !llvm.loop !341

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ak, %bb.ai
  %.0138.lcssa = phi i64 [ 1, %bb.ai ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ], [ %i.eq, %bb.ak ] ; 5 uses
  store i64 %.0138.lcssa, ptr %i.c, align 8, !tbaa !23
  %i.er = call ptr @H5S_create_simple(i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef null) #15 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge
  %i.et = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !23
  %i.eu = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !23
  %i.ev = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7253, i64 noundef %i.et, i64 noundef %i.eu, ptr noundef nonnull @.str.37) #15 ; 0 uses
  br label %.thread202

bb.am:                                            ; preds = %._crit_edge
  %i.ew = mul i64 %.0138.lcssa, %i.cr             ; 2 uses
  %i.ex = call noalias ptr @malloc(i64 noundef %i.ew) #16 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.an, label %.thread215

bb.an:                                            ; preds = %bb.am
  %i.ez = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.fa = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.fb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7262, i64 noundef %i.ez, i64 noundef %i.fa, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %.thread202

.thread202:                                       ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.an, %bb.al
  %.0163.ph = phi ptr [ %i.bq, %bb.al ], [ %i.bq, %bb.an ], [ %i.bq, %bb.ah ], [ %i.bq, %bb.af ], [ %i.bq, %bb.ad ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.z ], [ %i.bq, %bb.x ], [ null, %bb.v ], [ null, %bb.t ]
  %.0149.ph = phi ptr [ null, %bb.al ], [ %i.er, %bb.an ], [ null, %bb.ah ], [ null, %bb.af ], [ null, %bb.ad ], [ null, %bb.ab ], [ null, %bb.z ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bd

.thread215:                                       ; preds = %bb.am
  %i.fc = mul i64 %.0138.lcssa, %i.dd
  %i.fd = mul i64 %.0138.lcssa, %i.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ap

bb.ao:                                            ; preds = %bb.r
  %i.fe = call i32 @H5T_get_class(ptr noundef %5, i32 noundef 0) #15
  %i.ff = icmp eq i32 %i.fe, 7
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !22 ; 4 uses
  br i1 %i.ff, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %.thread215, %bb.ao
  %.1148247 = phi i64 [ %.0138.lcssa, %.thread215 ], [ 0, %bb.ao ] ; 3 uses
  %.1150244 = phi ptr [ %i.er, %.thread215 ], [ null, %bb.ao ] ; 4 uses
  %.1153242 = phi ptr [ %i.ex, %.thread215 ], [ null, %bb.ao ] ; 4 uses
  %.1156241 = phi i64 [ %i.ew, %.thread215 ], [ 0, %bb.ao ] ; 3 uses
  %.1158238 = phi i64 [ %i.fc, %.thread215 ], [ %i.fh, %bb.ao ] ; 5 uses
  %.1160237 = phi i64 [ %i.fd, %.thread215 ], [ %i.fh, %bb.ao ] ; 3 uses
  %.0161234 = phi ptr [ %i.bl, %.thread215 ], [ null, %bb.ao ] ; 4 uses
  %.1164232 = phi ptr [ %i.bq, %.thread215 ], [ null, %bb.ao ] ; 4 uses
  %.1167231 = phi ptr [ %i.ch, %.thread215 ], [ null, %bb.ao ] ; 3 uses
  %.1169229 = phi ptr [ %i.cc, %.thread215 ], [ null, %bb.ao ] ; 3 uses
  %i.fi = call noalias ptr @malloc(i64 noundef %.1158238) #16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !342
  %i.fk = icmp eq ptr %i.fi, null
  br i1 %i.fk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fl = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.fm = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.fn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7282, i64 noundef %i.fl, i64 noundef %i.fm, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !345, !range !10, !noundef !11
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fr = call i32 @H5T_get_class(ptr noundef %5, i32 noundef 0) #15
  %i.fs = icmp ne i32 %i.fr, 7
  %.not = icmp eq ptr %0, %2
  %or.cond = or i1 %.not, %i.fs
  br i1 %or.cond, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fi, i8 0, i64 %.1158238, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at, %bb.ao
  %.2146248 = phi i8 [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 0, %bb.ao ]
  %.1148246 = phi i64 [ %.1148247, %bb.ar ], [ %.1148247, %bb.as ], [ %.1148247, %bb.at ], [ 0, %bb.ao ]
  %.1150245 = phi ptr [ %.1150244, %bb.ar ], [ %.1150244, %bb.as ], [ %.1150244, %bb.at ], [ null, %bb.ao ] ; 5 uses
  %.1153243 = phi ptr [ %.1153242, %bb.ar ], [ %.1153242, %bb.as ], [ %.1153242, %bb.at ], [ null, %bb.ao ] ; 5 uses
  %.1156240 = phi i64 [ %.1156241, %bb.ar ], [ %.1156241, %bb.as ], [ %.1156241, %bb.at ], [ 0, %bb.ao ]
  %.1158239 = phi i64 [ %.1158238, %bb.ar ], [ %.1158238, %bb.as ], [ %.1158238, %bb.at ], [ %i.fh, %bb.ao ]
  %.1160236 = phi i64 [ %.1160237, %bb.ar ], [ %.1160237, %bb.as ], [ %.1160237, %bb.at ], [ %i.fh, %bb.ao ] ; 2 uses
  %.0161235 = phi ptr [ %.0161234, %bb.ar ], [ %.0161234, %bb.as ], [ %.0161234, %bb.at ], [ null, %bb.ao ] ; 5 uses
  %.1164233 = phi ptr [ %.1164232, %bb.ar ], [ %.1164232, %bb.as ], [ %.1164232, %bb.at ], [ null, %bb.ao ] ; 5 uses
  %.1167230 = phi ptr [ %.1167231, %bb.ar ], [ %.1167231, %bb.as ], [ %.1167231, %bb.at ], [ null, %bb.ao ]
  %.1169228 = phi ptr [ %.1169229, %bb.ar ], [ %.1169229, %bb.as ], [ %.1169229, %bb.at ], [ null, %bb.ao ]
  %i.ft = call noalias ptr @malloc(i64 noundef %.1160236) #16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !349
  %i.fv = icmp eq ptr %i.ft, null
  br i1 %i.fv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !23
  %i.fx = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !23
  %i.fy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7292, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au
  store ptr %i.aj, ptr %8, align 8, !tbaa !350
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.az, ptr %i.fz, align 8, !tbaa !351
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %i.ga, align 8, !tbaa !352
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %9, ptr %i.gb, align 8, !tbaa !353
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %.1160236, ptr %i.gc, align 8, !tbaa !354
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 %.1158239, ptr %i.gd, align 8, !tbaa !355
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %5, ptr %i.ge, align 8, !tbaa !356
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 96
  store ptr %.1164233, ptr %i.gf, align 8, !tbaa !357
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %.0161235, ptr %i.gg, align 8, !tbaa !358
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i8 %.2146248, ptr %i.gh, align 8, !tbaa !359
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr %.1169228, ptr %i.gi, align 8, !tbaa !360
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 120
  store ptr %.1167230, ptr %i.gj, align 8, !tbaa !361
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 128
  store ptr %.1153243, ptr %i.gk, align 8, !tbaa !362
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 %.1156240, ptr %i.gl, align 8, !tbaa !363
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 152
  store ptr %.1150245, ptr %i.gm, align 8, !tbaa !364
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i64 %.1148246, ptr %i.gn, align 8, !tbaa !365
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 160
  store ptr %.0170, ptr %i.go, align 8, !tbaa !366
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 %i.ae, ptr %i.gp, align 8, !tbaa !367
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr %i.a, ptr %i.gq, align 8, !tbaa !368
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  store ptr %7, ptr %i.gr, align 8, !tbaa !369
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  store i8 0, ptr %i.gs, align 8, !tbaa !370
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  store ptr null, ptr %i.gt, align 8, !tbaa !371
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !22
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !372
  %i.gx = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !272
  %i.ha = call i32 %i.gz(ptr noundef nonnull %10, ptr noundef nonnull @H5D__chunk_copy_cb, ptr noundef nonnull %8) #15
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hc = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.hd = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !23
  %i.he = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7321, i64 noundef %i.hc, i64 noundef %i.hd, ptr noundef nonnull @.str.58) #15 ; 0 uses
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.hf = load ptr, ptr %i.gr, align 8, !tbaa !369
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !373 ; 2 uses
  %.not189 = icmp eq ptr %i.hh, null
  br i1 %.not189, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.hi = load i64, ptr %i.gu, align 8, !tbaa !22
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 264
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !275
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 272
  store i32 0, ptr %i.hk, align 8, !tbaa !374
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 280
  store i64 -1, ptr %i.hl, align 8, !tbaa !375
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 3688
  %.0285 = load ptr, ptr %i.hm, align 8, !tbaa !214 ; 2 uses
  %.not190286 = icmp eq ptr %.0285, null
  br i1 %.not190286, label %.loopexit, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.az, %bb.bc
  %.0287 = phi ptr [ %.0, %bb.bc ], [ %.0285, %bb.az ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0287, i64 288
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !273
  %.not191 = icmp eq i64 %i.ho, -1
  br i1 %.not191, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph289
  %i.hp = getelementptr inbounds nuw i8, ptr %.0287, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.hp, i64 264, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %.0287, i64 312
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !254
  store ptr %i.hr, ptr %i.gt, align 8, !tbaa !371
  store i8 1, ptr %i.gs, align 8, !tbaa !370
  %i.hs = call i32 @H5D__chunk_copy_cb(ptr noundef nonnull %12, ptr noundef nonnull %8)
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hu = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.hv = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !23
  %i.hw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7339, i64 noundef %i.hu, i64 noundef %i.hv, ptr noundef nonnull @.str.59) #15 ; 0 uses
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba, %.lr.ph289
  %i.hx = getelementptr inbounds nuw i8, ptr %.0287, i64 328
  %.0 = load ptr, ptr %i.hx, align 8, !tbaa !214  ; 2 uses
  %.not190 = icmp eq ptr %.0, null
  br i1 %.not190, label %.loopexit, label %.lr.ph289, !llvm.loop !376

.loopexit:                                        ; preds = %bb.bc, %bb.az, %bb.bb
  %.3 = phi i32 [ -1, %bb.bb ], [ 0, %bb.az ], [ 0, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.bd

bb.bd:                                            ; preds = %.thread202, %.loopexit, %bb.ay, %bb.ax, %bb.av, %bb.aq
  %.2165 = phi ptr [ %.1164233, %.loopexit ], [ %.1164233, %bb.ay ], [ %.1164232, %bb.aq ], [ %.1164233, %bb.av ], [ %.1164233, %bb.ax ], [ %.0163.ph, %.thread202 ] ; 2 uses
  %.1162 = phi ptr [ %.0161235, %.loopexit ], [ %.0161235, %bb.ay ], [ %.0161234, %bb.aq ], [ %.0161235, %bb.av ], [ %.0161235, %bb.ax ], [ %i.bl, %.thread202 ] ; 2 uses
  %.2154 = phi ptr [ %.1153243, %.loopexit ], [ %.1153243, %bb.ay ], [ %.1153242, %bb.aq ], [ %.1153243, %bb.av ], [ %.1153243, %bb.ax ], [ null, %.thread202 ] ; 3 uses
  %.2151 = phi ptr [ %.1150245, %.loopexit ], [ %.1150245, %bb.ay ], [ %.1150244, %bb.aq ], [ %.1150245, %bb.av ], [ %.1150245, %bb.ax ], [ %.0149.ph, %.thread202 ] ; 2 uses
  %.4 = phi i32 [ %.3, %.loopexit ], [ 0, %bb.ay ], [ -1, %bb.aq ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %.thread202 ] ; 2 uses
  %.not192 = icmp eq ptr %.2165, null
  br i1 %.not192, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = call i32 @H5T_close(ptr noundef nonnull %.2165) #15
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ia = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.ib = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !23
  %i.ic = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7347, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef nonnull @.str.60) #15 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.5 = phi i32 [ -1, %bb.bf ], [ %.4, %bb.be ], [ %.4, %bb.bd ] ; 2 uses
  %.not193 = icmp eq ptr %.1162, null
  br i1 %.not193, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.id = call i32 @H5T_close(ptr noundef nonnull %.1162) #15
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.ig = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !23
  %i.ih = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7349, i64 noundef %i.if, i64 noundef %i.ig, ptr noundef nonnull @.str.60) #15 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.6 = phi i32 [ -1, %bb.bi ], [ %.5, %bb.bh ], [ %.5, %bb.bg ] ; 2 uses
  %.not194 = icmp eq ptr %.2151, null
  br i1 %.not194, label %.thread275, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ii = call i32 @H5S_close(ptr noundef nonnull %.2151) #15
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %bb.bl, label %.thread275

bb.bl:                                            ; preds = %bb.bk
  %i.ik = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.il = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !23
  %i.im = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7351, i64 noundef %i.ik, i64 noundef %i.il, ptr noundef nonnull @.str.61) #15 ; 0 uses
  br label %.thread275

.thread275:                                       ; preds = %bb.o, %bb.m, %bb.k, %bb.q, %bb.j, %bb.bl, %bb.bk, %bb.bj
  %.0143264272282 = phi i1 [ true, %bb.bl ], [ true, %bb.bk ], [ true, %bb.bj ], [ false, %bb.j ], [ false, %bb.q ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ]
  %.2154262274281 = phi ptr [ %.2154, %bb.bl ], [ %.2154, %bb.bk ], [ %.2154, %bb.bj ], [ null, %bb.j ], [ null, %bb.q ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ]
  %.7 = phi i32 [ -1, %bb.bl ], [ %.6, %bb.bk ], [ %.6, %bb.bj ], [ -1, %bb.j ], [ -1, %bb.q ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !349
  %i.ip = call ptr @H5MM_xfree(ptr noundef %i.io) #15 ; 0 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !342
  %i.is = call ptr @H5MM_xfree(ptr noundef %i.ir) #15 ; 0 uses
  %i.it = call ptr @H5MM_xfree(ptr noundef %.2154262274281) #15 ; 0 uses
  br i1 %.0143264272282, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %.thread275
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2216
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !22
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !377 ; 2 uses
  %.not195 = icmp eq ptr %i.ix, null
  br i1 %.not195, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.iz = call i32 %i.ix(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.k) #15
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.jc = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !23
  %i.jd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_copy, i32 noundef 7362, i64 noundef %i.jb, i64 noundef %i.jc, ptr noundef nonnull @.str.62) #15 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.a, %bb.bm, %bb.bn, %bb.bo, %.thread275
  %.8 = phi i32 [ -1, %bb.bo ], [ %.7, %bb.bn ], [ %.7, %bb.bm ], [ %.7, %.thread275 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i32 %.8
}

declare i32 @H5S_extent_get_dims(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5T_detect_class(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @H5T_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @H5T_set_loc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @H5F_get_vol_obj(ptr noundef) local_unnamed_addr #3

declare i32 @H5T_close_real(ptr noundef) local_unnamed_addr #3
end_hunk_0
