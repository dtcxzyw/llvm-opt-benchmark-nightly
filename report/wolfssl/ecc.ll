Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ecc?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ecc_projective_add_point_safe:bb.a
  br i1 %or.cond3, label %bb.ag, label %wc_ecc_copy_point.exit

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %6, align 4, !tbaa !44
  br label %wc_ecc_copy_point.exit

wc_ecc_copy_point.exit:                           ; preds = %bb.ad, %bb.ae, %bb.z, %bb.q, %bb.r, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.u, %bb.v, %bb.af, %bb.ag, %bb.ac, %bb.ab, %bb.aa, %bb.p, %bb.t, %bb.s
  %.5 = phi i32 [ %i.av, %bb.u ], [ %i.n, %bb.f ], [ %i.al, %bb.p ], [ 0, %bb.t ], [ %i.as, %bb.s ], [ %i.bm, %bb.ab ], [ %i.bk, %bb.aa ], [ %i.bn, %bb.ac ], [ 0, %bb.ag ], [ %i.bt, %bb.af ], [ 0, %bb.v ], [ %i.k, %bb.e ], [ -170, %bb.c ], [ %i.h, %bb.d ], [ %i.x, %bb.k ], [ -170, %bb.i ], [ %i.u, %bb.j ], [ %i.aa, %bb.l ], [ %i.bi, %bb.z ], [ %i.am, %bb.q ], [ %i.ap, %bb.r ], [ %i.br, %bb.ae ], [ %i.bo, %bb.ad ]
  ret i32 %.5
}

declare i32 @sp_mont_norm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ecc_projective_dbl_point_safe(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !20
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %wc_ecc_copy_point.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @sp_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #15 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %wc_ecc_copy_point.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.i = tail call i32 @sp_copy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h) #15 ; 2 uses
  %.not20.i = icmp eq i32 %i.i, 0
  br i1 %.not20.i, label %bb.f, label %wc_ecc_copy_point.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.l = tail call i32 @sp_copy(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #15
  br label %wc_ecc_copy_point.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call fastcc i32 @_ecc_projective_dbl_point(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i64 noundef %4) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %wc_ecc_copy_point.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.i, label %wc_ecc_copy_point.exit

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @sp_set(ptr noundef nonnull %1, i64 noundef 0) #15 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %wc_ecc_copy_point.exit

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.u = tail call i32 @sp_set(ptr noundef nonnull %i.t, i64 noundef 0) #15 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %wc_ecc_copy_point.exit

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @sp_set(ptr noundef nonnull %i.o, i64 noundef 1) #15
  br label %wc_ecc_copy_point.exit

wc_ecc_copy_point.exit:                           ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.g, %bb.h, %bb.k, %bb.j
  %.1 = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.k ], [ %i.u, %bb.j ], [ 0, %bb.h ], [ %i.i, %bb.e ], [ -170, %bb.c ], [ %i.g, %bb.d ], [ %i.l, %bb.f ], [ %i.r, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ecc_mul2add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, ptr noundef %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 37 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 0, ptr %i.c, align 8, !tbaa !24
  %i.d = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.e = insertelement <4 x ptr> %i.d, ptr %1, i64 1
  %i.f = insertelement <4 x ptr> %i.e, ptr %2, i64 2
  %i.g = insertelement <4 x ptr> %i.f, ptr %3, i64 3
  %i.h = icmp eq <4 x ptr> %i.g, splat (ptr null)
  %i.i = icmp eq ptr %4, null
  %i.j = icmp eq ptr %6, null
  %i.k = bitcast <4 x i1> %i.h to i4
  %i.l = icmp ne i4 %i.k, 0
  %op.rdx = or i1 %i.l, %i.i
  %op.rdx415 = or i1 %op.rdx, %i.j
  br i1 %op.rdx415, label %bb.ca, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 257) #15 ; 11 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.ca, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @wolfSSL_Malloc(i64 noundef 257) #15 ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.m) #15
  br label %bb.ca

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(257) %i.m, i8 0, i64 257, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(257) %i.o, i8 0, i64 257, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.q = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %1) #15 ; 3 uses
  %i.r = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %3) #15 ; 3 uses
  %i.s = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.r) ; 6 uses
  %i.t = icmp ult i32 %i.q, 258
  %i.u = icmp ult i32 %i.r, 258
  %or.cond11.not = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond11.not, label %bb.f, label %.thread243

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.s, %i.q
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = tail call i32 @sp_to_unsigned_bin(ptr noundef nonnull %1, ptr noundef nonnull %i.x) #15 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.thread243

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nsw i32 %i.s, %i.r
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  %i.ad = tail call i32 @sp_to_unsigned_bin(ptr noundef nonnull %3, ptr noundef nonnull %i.ac) #15 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.preheader249, label %.thread243

.preheader249:                                    ; preds = %bb.g, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %.preheader249
  %i.ai = tail call ptr @wolfSSL_Malloc(i64 noundef 3128) #15 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread243, label %bb.i

.thread.i:                                        ; preds = %.preheader249
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %i.ag, i8 0, i64 3128, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %i.ai, i8 0, i64 3128, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 3120
  store i8 1, ptr %i.ak, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %bb.i
  %.02.i200 = phi ptr [ %i.ai, %bb.i ], [ %i.ag, %.thread.i ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02.i200, i64 1040
  %i.am = getelementptr inbounds nuw i8, ptr %.02.i200, i64 2080
  %i.an = tail call i32 @sp_init_multi(ptr noundef nonnull %.02.i200, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.02.i200, i64 3120
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = and i8 %i.ap, 1
  %.not21.i = icmp eq i8 %i.aq, 0
  br i1 %.not21.i, label %wc_ecc_new_point_ex.exit.thread204, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @wolfSSL_Free(ptr noundef nonnull %.02.i200) #15
  br label %wc_ecc_new_point_ex.exit.thread204

wc_ecc_new_point_ex.exit.thread204:               ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.af, align 8, !tbaa !22
  br label %.thread243

bb.m:                                             ; preds = %bb.j
  store ptr %.02.i200, ptr %i.af, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.n, label %.preheader249, !llvm.loop !63

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 @sp_mont_setup(ptr noundef %6, ptr noundef nonnull %i.c) #15 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %.thread243

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !22 ; 6 uses
  %i.ax = call fastcc i32 @ecc_mont_norm_points(ptr noundef %0, ptr noundef %i.au, ptr noundef %2, ptr noundef %i.aw, ptr noundef %6) ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %.thread243

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !22 ; 5 uses
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bc = call i32 @ecc_projective_dbl_point_safe(ptr noundef %i.au, ptr noundef %i.ba, ptr poison, ptr noundef %6, i64 noundef %i.bb) ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %.thread243

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22 ; 4 uses
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bh = call i32 @ecc_projective_add_point_safe(ptr noundef %i.au, ptr noundef %i.ba, ptr noundef %i.bf, ptr poison, ptr noundef %6, i64 noundef %i.bg, ptr noundef null) ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %.thread243

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !22 ; 5 uses
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bm = call i32 @ecc_projective_dbl_point_safe(ptr noundef %i.aw, ptr noundef %i.bk, ptr poison, ptr noundef %6, i64 noundef %i.bl) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %.thread243

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !22 ; 4 uses
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !24
  %i.br = call i32 @ecc_projective_add_point_safe(ptr noundef %i.aw, ptr noundef %i.bk, ptr noundef %i.bp, ptr poison, ptr noundef %6, i64 noundef %i.bq, ptr noundef null) ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.t, label %.thread243

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bw = call i32 @ecc_projective_add_point_safe(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.bu, ptr poison, ptr noundef %6, i64 noundef %i.bv, ptr noundef null) ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %.thread243

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cb = call i32 @ecc_projective_add_point_safe(ptr noundef %i.au, ptr noundef %i.bk, ptr noundef %i.bz, ptr poison, ptr noundef %6, i64 noundef %i.ca, ptr noundef null) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.1, label %.thread243

.preheader.1:                                     ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cg = call i32 @ecc_projective_add_point_safe(ptr noundef %i.au, ptr noundef %i.bp, ptr noundef %i.ce, ptr poison, ptr noundef %6, i64 noundef %i.cf, ptr noundef null) ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %.thread243

bb.v:                                             ; preds = %.preheader.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !22
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cl = call i32 @ecc_projective_add_point_safe(ptr noundef %i.ba, ptr noundef %i.aw, ptr noundef %i.cj, ptr poison, ptr noundef %6, i64 noundef %i.ck, ptr noundef null) ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %.thread243

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !22
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cq = call i32 @ecc_projective_add_point_safe(ptr noundef %i.ba, ptr noundef %i.bk, ptr noundef %i.co, ptr poison, ptr noundef %6, i64 noundef %i.cp, ptr noundef null) ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.preheader.2, label %.thread243

.preheader.2:                                     ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !22
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cv = call i32 @ecc_projective_add_point_safe(ptr noundef %i.ba, ptr noundef %i.bp, ptr noundef %i.ct, ptr poison, ptr noundef %6, i64 noundef %i.cu, ptr noundef null) ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %.thread243

bb.x:                                             ; preds = %.preheader.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !22
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !24
  %i.da = call i32 @ecc_projective_add_point_safe(ptr noundef %i.bf, ptr noundef %i.aw, ptr noundef %i.cy, ptr poison, ptr noundef %6, i64 noundef %i.cz, ptr noundef null) ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.y, label %.thread243

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.de = load i64, ptr %i.c, align 8, !tbaa !24
  %i.df = call i32 @ecc_projective_add_point_safe(ptr noundef %i.bf, ptr noundef %i.bk, ptr noundef %i.dd, ptr poison, ptr noundef %6, i64 noundef %i.de, ptr noundef null) ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.z, label %.thread243

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !24
  %i.dk = call i32 @ecc_projective_add_point_safe(ptr noundef %i.bf, ptr noundef %i.bp, ptr noundef %i.di, ptr poison, ptr noundef %6, i64 noundef %i.dj, ptr noundef null) ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %.thread243

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.b, align 4, !tbaa !44
  %i.dm = load i8, ptr %i.m, align 1, !tbaa !51
  %i.dn = zext i8 %i.dm to i32
  %i.do = load i8, ptr %i.o, align 1, !tbaa !51
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 1040
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 2080
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.aa
  %i.ds = phi i32 [ 1, %bb.aa ], [ %.be, %.outer.backedge ]
  %.0163.ph = phi i32 [ %i.dn, %bb.aa ], [ %.us-phi275, %.outer.backedge ] ; 2 uses
  %.0161.ph = phi i32 [ %i.dp, %bb.aa ], [ %.us-phi276, %.outer.backedge ] ; 2 uses
  %.0159.ph = phi i32 [ 3, %bb.aa ], [ %.us-phi271, %.outer.backedge ] ; 3 uses
  %.14.ph = phi i32 [ 0, %bb.aa ], [ %.14.ph.be, %.outer.backedge ] ; 5 uses
  %.2.ph = phi i32 [ 0, %bb.aa ], [ %.us-phi272, %.outer.backedge ] ; 6 uses
  %.fr280 = freeze i32 %i.ds                      ; 3 uses
  %i.dt = icmp eq i32 %.fr280, 1                  ; 2 uses
  br i1 %i.dt, label %.outer.split, label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer
  %i.du = icmp slt i32 %.2.ph, %i.s
  %i.dv = icmp ne i32 %.0159.ph, 3
  %i.dw = or i1 %i.dv, %i.du
  br i1 %i.dw, label %bb.ab, label %.split.us

bb.ab:                                            ; preds = %.outer.split.us
  %i.dx = add nuw nsw i32 %.0159.ph, 1            ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 4
  br i1 %i.dy, label %bb.ac, label %.split270.us

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp eq i32 %.2.ph, %i.s
  br i1 %i.dz, label %.split.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = sext i32 %.2.ph to i64                  ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.m, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !51
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds i8, ptr %i.o, i64 %i.ea
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !51
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nsw i32 %.2.ph, 1
  br label %.split270.us

.split270.us:                                     ; preds = %bb.ad, %bb.ab
  %.1164.us = phi i32 [ %i.ed, %bb.ad ], [ %.0163.ph, %bb.ab ] ; 2 uses
  %.1162.us = phi i32 [ %i.eg, %bb.ad ], [ %.0161.ph, %bb.ab ] ; 2 uses
  %.1160.us = phi i32 [ 0, %bb.ad ], [ %i.dx, %bb.ab ]
  %.3.us = phi i32 [ %i.eh, %bb.ad ], [ %.2.ph, %bb.ab ]
  %i.ei = lshr i32 %.1164.us, 6
  %i.ej = lshr i32 %.1162.us, 6
  %i.ek = shl nuw nsw i32 %.1164.us, 2
  %i.el = and i32 %i.ek, 252
  %i.em = shl nuw nsw i32 %.1162.us, 2
  %i.en = and i32 %i.em, 252
  br label %.split270

.outer.split:                                     ; preds = %.outer, %bb.ah
  %.0163 = phi i32 [ %i.ff, %bb.ah ], [ %.0163.ph, %.outer ]
  %.0161 = phi i32 [ %i.fh, %bb.ah ], [ %.0161.ph, %.outer ]
  %.0159 = phi i32 [ %.1160, %bb.ah ], [ %.0159.ph, %.outer ] ; 2 uses
  %.2 = phi i32 [ %.3, %bb.ah ], [ %.2.ph, %.outer ] ; 5 uses
  %i.eo = icmp slt i32 %.2, %i.s
  %i.ep = icmp ne i32 %.0159, 3
  %i.eq = or i1 %i.ep, %i.eo
  br i1 %i.eq, label %bb.ae, label %.split.us

bb.ae:                                            ; preds = %.outer.split
  %i.er = add nuw nsw i32 %.0159, 1               ; 2 uses
  %i.es = icmp eq i32 %i.er, 4
  br i1 %i.es, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.et = icmp eq i32 %.2, %i.s
  br i1 %i.et, label %.split.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = sext i32 %.2 to i64                     ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.m, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds i8, ptr %i.o, i64 %i.eu
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !51
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %.2, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1164 = phi i32 [ %i.ex, %bb.ag ], [ %.0163, %bb.ae ] ; 2 uses
  %.1162 = phi i32 [ %i.fa, %bb.ag ], [ %.0161, %bb.ae ] ; 2 uses
  %.1160 = phi i32 [ 0, %bb.ag ], [ %i.er, %bb.ae ] ; 2 uses
  %.3 = phi i32 [ %i.fb, %bb.ag ], [ %.2, %bb.ae ] ; 2 uses
  %i.fc = lshr i32 %.1164, 6                      ; 2 uses
  %i.fd = lshr i32 %.1162, 6                      ; 2 uses
  %i.fe = shl nuw nsw i32 %.1164, 2
  %i.ff = and i32 %i.fe, 252                      ; 2 uses
  %i.fg = shl nuw nsw i32 %.1162, 2
  %i.fh = and i32 %i.fg, 252                      ; 2 uses
  %i.fi = icmp eq i32 %i.fc, 0
  %i.fj = icmp eq i32 %i.fd, 0
  %or.cond13 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond13, label %.outer.split, label %.split270, !llvm.loop !64

.split270:                                        ; preds = %bb.ah, %.split270.us
  %.us-phi271 = phi i32 [ %.1160.us, %.split270.us ], [ %.1160, %bb.ah ]
  %.us-phi272 = phi i32 [ %.3.us, %.split270.us ], [ %.3, %bb.ah ]
  %.us-phi273 = phi i32 [ %i.ei, %.split270.us ], [ %i.fc, %bb.ah ] ; 2 uses
  %.us-phi274 = phi i32 [ %i.ej, %.split270.us ], [ %i.fd, %bb.ah ] ; 2 uses
  %.us-phi275 = phi i32 [ %i.el, %.split270.us ], [ %i.ff, %bb.ah ]
  %.us-phi276 = phi i32 [ %i.en, %.split270.us ], [ %i.fh, %bb.ah ]
  %i.fk = icmp eq i32 %.fr280, 0
  br i1 %i.fk, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.split270
  %i.fl = icmp eq i32 %.14.ph, 0
  br i1 %i.fl, label %bb.aj, label %.thread243

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i64, ptr %i.c, align 8, !tbaa !24
  %i.fn = call i32 @ecc_projective_dbl_point_safe(ptr noundef %4, ptr noundef %4, ptr poison, ptr noundef %6, i64 noundef %i.fm) ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ak, label %.thread243

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i64, ptr %i.c, align 8, !tbaa !24
  %i.fq = call i32 @ecc_projective_dbl_point_safe(ptr noundef %4, ptr noundef %4, ptr poison, ptr noundef %6, i64 noundef %i.fp)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.split270
  %.16 = phi i32 [ %i.fq, %bb.ak ], [ %.14.ph, %.split270 ] ; 5 uses
  %i.fr = icmp ne i32 %.us-phi273, 0
  %i.fs = icmp ne i32 %.us-phi274, 0
  %or.cond17 = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond17, label %bb.am, label %.outer.backedge

bb.am:                                            ; preds = %bb.al
  %i.ft = shl nuw nsw i32 %.us-phi274, 2
  %i.fu = add nuw nsw i32 %i.ft, %.us-phi273      ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.b, align 4, !tbaa !44
  %i.fv = icmp eq i32 %.16, 0
  br i1 %i.fv, label %bb.ao, label %.thread243

bb.ao:                                            ; preds = %bb.an
  %i.fw = zext nneg i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !22 ; 3 uses
  %i.fz = call i32 @sp_copy(ptr noundef %i.fy, ptr noundef %4) #15 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ap, label %.thread243

bb.ap:                                            ; preds = %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 1040
  %i.gc = call i32 @sp_copy(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.dq) #15 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.aq, label %.thread243

bb.aq:                                            ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 2080
  %i.gf = call i32 @sp_copy(ptr noundef nonnull %i.ge, ptr noundef nonnull %i.dr) #15
  br label %.outer.backedge

bb.ar:                                            ; preds = %bb.am
  %i.gg = icmp eq i32 %.16, 0
  br i1 %i.gg, label %bb.as, label %.thread243

bb.as:                                            ; preds = %bb.ar
  %i.gh = zext nneg i32 %i.fu to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !22
  %i.gk = load i64, ptr %i.c, align 8, !tbaa !24
  %i.gl = call i32 @ecc_projective_add_point_safe(ptr noundef %4, ptr noundef %i.gj, ptr noundef %4, ptr poison, ptr noundef %6, i64 noundef %i.gk, ptr noundef nonnull %i.b) ; 2 uses
  %.not176 = icmp eq i32 %i.gl, 0
  %.pre = load i32, ptr %i.b, align 4
  br i1 %.not176, label %.outer.backedge, label %.thread243

.outer.backedge:                                  ; preds = %bb.as, %bb.aq, %bb.al
  %.be = phi i32 [ %.fr280, %bb.al ], [ 0, %bb.aq ], [ %.pre, %bb.as ]
  %.14.ph.be = phi i32 [ %.16, %bb.al ], [ %i.gf, %bb.aq ], [ 0, %bb.as ]
  br label %.outer, !llvm.loop !64

.split.us:                                        ; preds = %.outer.split.us, %bb.ac, %bb.af, %.outer.split
  %i.gm = icmp eq i32 %.14.ph, 0
  br i1 %i.gm, label %bb.at, label %.thread243

bb.at:                                            ; preds = %.split.us
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !24
  %i.go = call i32 @ecc_map_ex(ptr noundef %4, ptr noundef %6, i64 noundef %i.gn, i32 noundef 0)
  br label %.thread243

.thread243:                                       ; preds = %bb.h, %bb.ar, %bb.an, %bb.ao, %bb.ap, %bb.as, %bb.ai, %bb.aj, %bb.t, %bb.u, %.preheader.1, %bb.v, %bb.w, %.preheader.2, %bb.x, %bb.y, %bb.e, %wc_ecc_new_point_ex.exit.thread204, %bb.g, %bb.f, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.z, %bb.at, %.split.us
  %.24 = phi i32 [ %i.go, %bb.at ], [ %.14.ph, %.split.us ], [ -173, %bb.e ], [ %i.an, %wc_ecc_new_point_ex.exit.thread204 ], [ %i.dk, %bb.z ], [ %i.ad, %bb.g ], [ %i.br, %bb.s ], [ %i.bm, %bb.r ], [ %i.bh, %bb.q ], [ %i.bc, %bb.p ], [ %i.ax, %bb.o ], [ %i.ar, %bb.n ], [ %i.y, %bb.f ], [ %i.da, %bb.x ], [ %.14.ph, %bb.ai ], [ %i.cv, %.preheader.2 ], [ %i.cq, %bb.w ], [ %i.cl, %bb.v ], [ %i.cg, %.preheader.1 ], [ %i.cb, %bb.u ], [ %i.bw, %bb.t ], [ %i.df, %bb.y ], [ %.16, %bb.ar ], [ %.16, %bb.an ], [ %i.fz, %bb.ao ], [ %i.gc, %bb.ap ], [ %i.gl, %bb.as ], [ %i.fn, %bb.aj ], [ -125, %bb.h ]
  %i.gp = load ptr, ptr %i.a, align 16, !tbaa !22 ; 6 uses
  %.not.i179 = icmp eq ptr %i.gp, null
  br i1 %.not.i179, label %wc_ecc_del_point_ex.exit, label %bb.au

bb.au:                                            ; preds = %.thread243
  call void @sp_clear(ptr noundef nonnull %i.gp) #15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.gq) #15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.gr) #15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 3120
  %i.gt = load i8, ptr %i.gs, align 8
  %i.gu = and i8 %i.gt, 1
  %.not8.i = icmp eq i8 %i.gu, 0
  br i1 %.not8.i, label %wc_ecc_del_point_ex.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @wolfSSL_Free(ptr noundef nonnull %i.gp) #15
  br label %wc_ecc_del_point_ex.exit

wc_ecc_del_point_ex.exit:                         ; preds = %.thread243, %bb.au, %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !22 ; 6 uses
  %.not.i179.1 = icmp eq ptr %i.gw, null
  br i1 %.not.i179.1, label %wc_ecc_del_point_ex.exit.1, label %bb.aw

bb.aw:                                            ; preds = %wc_ecc_del_point_ex.exit
  call void @sp_clear(ptr noundef nonnull %i.gw) #15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.gx) #15
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.gy) #15
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 3120
  %i.ha = load i8, ptr %i.gz, align 8
  %i.hb = and i8 %i.ha, 1
  %.not8.i.1 = icmp eq i8 %i.hb, 0
  br i1 %.not8.i.1, label %wc_ecc_del_point_ex.exit.1, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @wolfSSL_Free(ptr noundef nonnull %i.gw) #15
  br label %wc_ecc_del_point_ex.exit.1

wc_ecc_del_point_ex.exit.1:                       ; preds = %bb.ax, %bb.aw, %wc_ecc_del_point_ex.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hd = load ptr, ptr %i.hc, align 16, !tbaa !22 ; 6 uses
  %.not.i179.2 = icmp eq ptr %i.hd, null
  br i1 %.not.i179.2, label %wc_ecc_del_point_ex.exit.2, label %bb.ay

bb.ay:                                            ; preds = %wc_ecc_del_point_ex.exit.1
  call void @sp_clear(ptr noundef nonnull %i.hd) #15
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.he) #15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.hf) #15
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 3120
  %i.hh = load i8, ptr %i.hg, align 8
  %i.hi = and i8 %i.hh, 1
  %.not8.i.2 = icmp eq i8 %i.hi, 0
  br i1 %.not8.i.2, label %wc_ecc_del_point_ex.exit.2, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @wolfSSL_Free(ptr noundef nonnull %i.hd) #15
  br label %wc_ecc_del_point_ex.exit.2

wc_ecc_del_point_ex.exit.2:                       ; preds = %bb.az, %bb.ay, %wc_ecc_del_point_ex.exit.1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !22 ; 6 uses
  %.not.i179.3 = icmp eq ptr %i.hk, null
  br i1 %.not.i179.3, label %wc_ecc_del_point_ex.exit.3, label %bb.ba

bb.ba:                                            ; preds = %wc_ecc_del_point_ex.exit.2
  call void @sp_clear(ptr noundef nonnull %i.hk) #15
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.hl) #15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.hm) #15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 3120
  %i.ho = load i8, ptr %i.hn, align 8
  %i.hp = and i8 %i.ho, 1
  %.not8.i.3 = icmp eq i8 %i.hp, 0
  br i1 %.not8.i.3, label %wc_ecc_del_point_ex.exit.3, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @wolfSSL_Free(ptr noundef nonnull %i.hk) #15
  br label %wc_ecc_del_point_ex.exit.3

wc_ecc_del_point_ex.exit.3:                       ; preds = %bb.bb, %bb.ba, %wc_ecc_del_point_ex.exit.2
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hr = load ptr, ptr %i.hq, align 16, !tbaa !22 ; 6 uses
  %.not.i179.4 = icmp eq ptr %i.hr, null
  br i1 %.not.i179.4, label %wc_ecc_del_point_ex.exit.4, label %bb.bc

bb.bc:                                            ; preds = %wc_ecc_del_point_ex.exit.3
  call void @sp_clear(ptr noundef nonnull %i.hr) #15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.hs) #15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.ht) #15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 3120
  %i.hv = load i8, ptr %i.hu, align 8
  %i.hw = and i8 %i.hv, 1
  %.not8.i.4 = icmp eq i8 %i.hw, 0
  br i1 %.not8.i.4, label %wc_ecc_del_point_ex.exit.4, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @wolfSSL_Free(ptr noundef nonnull %i.hr) #15
  br label %wc_ecc_del_point_ex.exit.4

wc_ecc_del_point_ex.exit.4:                       ; preds = %bb.bd, %bb.bc, %wc_ecc_del_point_ex.exit.3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !22 ; 6 uses
  %.not.i179.5 = icmp eq ptr %i.hy, null
  br i1 %.not.i179.5, label %wc_ecc_del_point_ex.exit.5, label %bb.be

bb.be:                                            ; preds = %wc_ecc_del_point_ex.exit.4
  call void @sp_clear(ptr noundef nonnull %i.hy) #15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.hz) #15
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.ia) #15
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 3120
  %i.ic = load i8, ptr %i.ib, align 8
  %i.id = and i8 %i.ic, 1
  %.not8.i.5 = icmp eq i8 %i.id, 0
  br i1 %.not8.i.5, label %wc_ecc_del_point_ex.exit.5, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @wolfSSL_Free(ptr noundef nonnull %i.hy) #15
  br label %wc_ecc_del_point_ex.exit.5

wc_ecc_del_point_ex.exit.5:                       ; preds = %bb.bf, %bb.be, %wc_ecc_del_point_ex.exit.4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !22 ; 6 uses
  %.not.i179.6 = icmp eq ptr %i.if, null
  br i1 %.not.i179.6, label %wc_ecc_del_point_ex.exit.6, label %bb.bg

bb.bg:                                            ; preds = %wc_ecc_del_point_ex.exit.5
  call void @sp_clear(ptr noundef nonnull %i.if) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.ig) #15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.ih) #15
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 3120
  %i.ij = load i8, ptr %i.ii, align 8
  %i.ik = and i8 %i.ij, 1
  %.not8.i.6 = icmp eq i8 %i.ik, 0
  br i1 %.not8.i.6, label %wc_ecc_del_point_ex.exit.6, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @wolfSSL_Free(ptr noundef nonnull %i.if) #15
  br label %wc_ecc_del_point_ex.exit.6

wc_ecc_del_point_ex.exit.6:                       ; preds = %bb.bh, %bb.bg, %wc_ecc_del_point_ex.exit.5
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !22 ; 6 uses
  %.not.i179.7 = icmp eq ptr %i.im, null
  br i1 %.not.i179.7, label %wc_ecc_del_point_ex.exit.7, label %bb.bi

bb.bi:                                            ; preds = %wc_ecc_del_point_ex.exit.6
  call void @sp_clear(ptr noundef nonnull %i.im) #15
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.in) #15
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.io) #15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 3120
  %i.iq = load i8, ptr %i.ip, align 8
  %i.ir = and i8 %i.iq, 1
end_hunk_0
