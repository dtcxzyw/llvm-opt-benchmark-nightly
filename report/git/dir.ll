Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/dir?download=true
inline.NumInlined: 229
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@free_untracked:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.preheader14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader14 ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152
  tail call fastcc void @free_untracked(ptr noundef %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !36
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %.preheader, !llvm.loop !240

bb.b:                                             ; preds = %.lr.ph17, %bb.b
  %indvars.iv21 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next22, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv21
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118
  tail call void @free(ptr noundef %i.n) #25
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !36
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next22, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.s) #25
  %i.t = load ptr, ptr %0, align 8, !tbaa !160
  tail call void @free(ptr noundef %i.t) #25
  tail call void @free(ptr noundef nonnull %0) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @read_untracked_extension(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.read_data, align 8          ; 14 uses
  %i.a = alloca ptr, align 8                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %0, ptr %i.a, align 8, !tbaa !118
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = shl i64 %i.f, 1
  %i.h = add i64 %i.g, 76
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.m = call i64 @decode_varint(ptr noundef nonnull %i.a) #25 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 3 uses
  %i.p = icmp ugt ptr %i.o, %i.k
  br i1 %i.p, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.a, align 8, !tbaa !118
  %i.q = and i64 %i.h, 4294967294                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = icmp ugt ptr %i.s, %i.k
  br i1 %i.t, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call ptr @xcalloc(i64 noundef 1, i64 noundef 232) #25 ; 22 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 3 uses
  call void @strbuf_init(ptr noundef nonnull %i.v, i64 noundef %i.m) #25
  call void @strbuf_add(ptr noundef nonnull %i.v, ptr noundef %i.n, i64 noundef %i.m) #25
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(36) %i.w, i64 36, i1 false)
  %i.y = load <4 x i32>, ptr %i.u, align 4, !tbaa !36
  %i.z = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.y)
  store <4 x i32> %i.z, ptr %i.u, align 4, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ab = load <4 x i32>, ptr %i.aa, align 4, !tbaa !36
  %i.ac = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ab)
  store <4 x i32> %i.ac, ptr %i.aa, align 4, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !168
  %i.af = call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 36 ; 2 uses
  %i.ah = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 448
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull readonly align 1 %i.x, i64 %i.al, i1 false)
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !167 ; 3 uses
  %i.an = icmp ult i64 %i.am, 32
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  %i.ap = sub nuw nsw i64 32, %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i.i.i = icmp eq ptr %i.aj, @hash_algos
  br i1 %.not.i.i.i, label %load_oid_stat.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.1.i.i.i = icmp eq ptr %i.aj, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %load_oid_stat.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.2.i.i.i = icmp eq ptr %i.aj, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %load_oid_stat.exit

load_oid_stat.exit:                               ; preds = %bb.g, %bb.h, %bb.i
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  store i32 %.2.i.i.i, ptr %i.aq, align 4, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i32 1, ptr %i.ar, align 4, !tbaa !142
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 76 ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  %i.aw = and i64 %i.f, 4294967295
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(36) %i.au, i64 36, i1 false)
  %i.ay = load <4 x i32>, ptr %i.as, align 4, !tbaa !36
  %i.az = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ay)
  store <4 x i32> %i.az, ptr %i.as, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 92 ; 2 uses
  %i.bb = load <4 x i32>, ptr %i.ba, align 4, !tbaa !36
  %i.bc = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.bb)
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 108 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !168
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.bh = load ptr, ptr @the_repository, align 8, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !138 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr nonnull readonly align 1 %i.ax, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !167 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 32
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %load_oid_stat.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  %i.bp = sub nuw nsw i64 32, %i.bm
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 0, i64 %i.bp, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %load_oid_stat.exit
  %.not.i.i.i60 = icmp eq ptr %i.bj, @hash_algos
  br i1 %.not.i.i.i60, label %load_oid_stat.exit65, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.1.i.i.i61 = icmp eq ptr %i.bj, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i61, label %load_oid_stat.exit65, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.2.i.i.i62 = icmp eq ptr %i.bj, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i63 = select i1 %.not.2.i.i.i62, i32 2, i32 0
  br label %load_oid_stat.exit65

load_oid_stat.exit65:                             ; preds = %bb.k, %bb.l, %bb.m
  %.2.i.i.i64 = phi i32 [ %spec.select.i.i.i63, %bb.m ], [ 0, %bb.k ], [ 1, %bb.l ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  store i32 %.2.i.i.i64, ptr %i.bq, align 4, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 148
  store i32 1, ptr %i.br, align 4, !tbaa !142
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %3 = load i32, ptr %i.bt, align 1
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  store i32 %4, ptr %i.bu, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.q ; 2 uses
  %i.bw = call ptr @xstrdup(ptr noundef %i.bv) #25 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !155
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !79
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #27
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.q
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz
  %i.cd = getelementptr i8, ptr %i.cc, i64 1      ; 3 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !118
  %.not54 = icmp ult ptr %i.cd, %i.k
  br i1 %.not54, label %bb.n, label %bb.v

bb.n:                                             ; preds = %load_oid_stat.exit65
  %i.ce = call i64 @decode_varint(ptr noundef nonnull %i.a) #25 ; 5 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.cg = icmp ugt ptr %i.cf, %i.k
  %i.ch = icmp eq i64 %i.ce, 0
  %or.cond = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = call ptr @ewah_new() #25
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !242
  %i.ck = call ptr @ewah_new() #25
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !243
  %i.cm = call ptr @ewah_new() #25
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !244
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !175
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.k, ptr %i.cq, align 8, !tbaa !176
  store i32 0, ptr %2, align 8, !tbaa !177
  %mul.ov.i = icmp ugt i64 %i.ce, 2305843009213693951
  br i1 %mul.ov.i, label %bb.p, label %st_mult.exit

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @die(ptr noundef nonnull @.str.37, i64 noundef 8, i64 noundef %i.ce) #26
  unreachable

st_mult.exit:                                     ; preds = %bb.o
  %i.cr = shl nuw i64 %i.ce, 3
  %i.cs = call ptr @xmalloc(i64 noundef %i.cr) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !178
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.cv = call fastcc i32 @read_one_dir(ptr noundef nonnull %i.cu, ptr noundef %2)
  %.not55 = icmp eq i32 %i.cv, 0
  %i.cw = load i32, ptr %2, align 8
  %i.cx = sext i32 %i.cw to i64
  %.not56 = icmp eq i64 %i.ce, %i.cx
  %or.cond59 = select i1 %.not55, i1 %.not56, i1 false
  br i1 %or.cond59, label %bb.q, label %bb.u

bb.q:                                             ; preds = %st_mult.exit
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !175 ; 3 uses
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !118
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !242
  %i.da = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = call i64 @ewah_read_mmap(ptr noundef %i.cz, ptr noundef %i.cy, i64 noundef %i.dc) #25 ; 2 uses
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd ; 3 uses
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !118
  %i.dh = load ptr, ptr %i.cl, align 8, !tbaa !243 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.da, %i.di
  %i.dk = call i64 @ewah_read_mmap(ptr noundef %i.dh, ptr noundef %i.dg, i64 noundef %i.dj) #25 ; 2 uses
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !118
  %i.do = load ptr, ptr %i.cn, align 8, !tbaa !244
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.da, %i.dp
  %i.dr = call i64 @ewah_read_mmap(ptr noundef %i.do, ptr noundef %i.dn, i64 noundef %i.dq) #25 ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ewah_each_bit(ptr noundef %i.dh, ptr noundef nonnull @set_check_only, ptr noundef nonnull %2) #25
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store ptr %i.du, ptr %i.cp, align 8, !tbaa !175
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !242
  call void @ewah_each_bit(ptr noundef %i.dv, ptr noundef nonnull @read_stat, ptr noundef nonnull %2) #25
  %i.dw = load ptr, ptr %i.cn, align 8, !tbaa !244
  call void @ewah_each_bit(ptr noundef %i.dw, ptr noundef nonnull @read_oid, ptr noundef nonnull %2) #25
  %i.dx = load ptr, ptr %i.cp, align 8, !tbaa !175
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !118
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %st_mult.exit, %bb.t
  %i.dy = load ptr, ptr %i.ct, align 8, !tbaa !178
  call void @free(ptr noundef %i.dy) #25
  %i.dz = load ptr, ptr %i.cj, align 8, !tbaa !242
  call void @ewah_free(ptr noundef %i.dz) #25
  %i.ea = load ptr, ptr %i.cl, align 8, !tbaa !243
  call void @ewah_free(ptr noundef %i.ea) #25
  %i.eb = load ptr, ptr %i.cn, align 8, !tbaa !244
  call void @ewah_free(ptr noundef %i.eb) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %load_oid_stat.exit65, %bb.u
  %i.ec = phi ptr [ %i.cf, %bb.n ], [ %i.cd, %load_oid_stat.exit65 ], [ %.pre, %bb.u ]
  %.not57 = icmp eq ptr %i.ec, %i.k
  br i1 %.not57, label %bb.w, label %free_untracked_cache.exit

free_untracked_cache.exit:                        ; preds = %bb.v
  %i.ed = load ptr, ptr %i.bx, align 8, !tbaa !155
  call void @free(ptr noundef %i.ed) #25
  call void @strbuf_release(ptr noundef nonnull %i.v) #25
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !85
  call fastcc void @free_untracked(ptr noundef %i.ef)
  call void @free(ptr noundef nonnull %i.u) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %free_untracked_cache.exit, %bb.d, %bb.c, %bb.a, %bb.b
  %.047 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %free_untracked_cache.exit ], [ %i.u, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %.047
}

declare i64 @decode_varint(ptr noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_one_dir(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175
  store ptr %i.c, ptr %i.a, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176  ; 5 uses
  %i.f = call i64 @decode_varint(ptr noundef nonnull %i.a) #25 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.h = icmp ugt ptr %i.g, %i.e
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.f to i32                    ; 3 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %st_mult.exit

st_mult.exit:                                     ; preds = %bb.b
  %i.j = shl i64 %i.f, 3
  %i.k = and i64 %i.j, 34359738360
  %i.l = call ptr @xmalloc(i64 noundef %i.k) #25
  br label %bb.c

bb.c:                                             ; preds = %st_mult.exit, %bb.b
  %.sroa.5.0 = phi ptr [ %i.l, %st_mult.exit ], [ null, %bb.b ]
  %i.m = call i64 @decode_varint(ptr noundef nonnull %i.a) #25 ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.p = icmp ugt ptr %i.o, %i.e
  br i1 %i.p, label %.loopexit, label %st_mult.exit53

st_mult.exit53:                                   ; preds = %bb.c
  %i.q = shl i64 %i.m, 3
  %i.r = and i64 %i.q, 34359738360
  %i.s = call ptr @xmalloc(i64 noundef %i.r) #25
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.u = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = call ptr @memchr(ptr noundef %i.t, i32 noundef 0, i64 noundef %i.w) #27 ; 4 uses
  %.not48 = icmp eq ptr %i.x, null
  %i.y = icmp eq ptr %i.x, %i.e
  %or.cond = select i1 %.not48, i1 true, i1 %i.y
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %st_mult.exit53
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.v                      ; 2 uses
  %i.ab = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aa, i64 112) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.e, label %st_add.exit

bb.e:                                             ; preds = %bb.d
end_hunk_0
