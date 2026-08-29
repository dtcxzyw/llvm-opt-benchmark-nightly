Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_testsrc?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@haldclutsrc_fill_picture:bb.a
  %i.go = call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = call i32 @llvm.umin.i32(i32 %i.go, i32 1023)
  %i.gq = trunc nuw nsw i32 %i.gp to i16
  store i16 %i.gq, ptr %i.gk, align 2, !tbaa !74
  %i.gr = load ptr, ptr %1, align 8, !tbaa !67
  %i.gs = load i32, ptr %i.k, align 8, !tbaa !57
  %i.gt = mul nsw i32 %i.gs, %.2324
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.gj
  store i16 %i.cd, ptr %i.gw, align 2, !tbaa !74
  %i.gx = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.gy = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.gz = mul nsw i32 %i.gy, %.2324
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.gj
  store i16 %i.bj, ptr %i.hc, align 2, !tbaa !74
  br i1 %i.aq, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.hd = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.he = sext i32 %.2324 to i64
  %i.hf = mul nsw i64 %i.he, %i.m
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.gj
  store i16 %i.as, ptr %i.hh, align 2, !tbaa !74
  br label %bb.x

bb.r:                                             ; preds = %bb.k
  %i.hi = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.hj = load i32, ptr %i.an, align 8, !tbaa !57
  %i.hk = mul nsw i32 %i.hj, %.2324
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  %i.hn = sext i32 %.2244323 to i64               ; 4 uses
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = uitofp nneg i32 %.0248322 to float
  %i.hq = fmul nsz float %i.ak, %i.hp
  %i.hr = fptosi float %i.hq to i32
  %i.hs = call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.ht = call i32 @llvm.umin.i32(i32 %i.hs, i32 4095)
  %i.hu = trunc nuw nsw i32 %i.ht to i16
  store i16 %i.hu, ptr %i.ho, align 2, !tbaa !74
  %i.hv = load ptr, ptr %1, align 8, !tbaa !67
  %i.hw = load i32, ptr %i.k, align 8, !tbaa !57
  %i.hx = mul nsw i32 %i.hw, %.2324
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds i8, ptr %i.hv, i64 %i.hy
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hn
  store i16 %i.cb, ptr %i.ia, align 2, !tbaa !74
  %i.ib = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.ic = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.id = mul nsw i32 %i.ic, %.2324
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 %i.ie
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.hn
  store i16 %i.bh, ptr %i.ig, align 2, !tbaa !74
  br i1 %i.aq, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ih = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.ii = sext i32 %.2324 to i64
  %i.ij = mul nsw i64 %i.ii, %i.m
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 %i.ij
  %i.il = getelementptr inbounds [2 x i8], ptr %i.ik, i64 %i.hn
  store i16 %i.as, ptr %i.il, align 2, !tbaa !74
  br label %bb.x

bb.t:                                             ; preds = %bb.k
  %i.im = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.in = load i32, ptr %i.an, align 8, !tbaa !57
  %i.io = mul nsw i32 %i.in, %.2324
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds i8, ptr %i.im, i64 %i.ip
  %i.ir = sext i32 %.2244323 to i64               ; 4 uses
  %i.is = getelementptr inbounds [2 x i8], ptr %i.iq, i64 %i.ir
  %i.it = uitofp nneg i32 %.0248322 to float
  %i.iu = fmul nsz float %i.ak, %i.it
  %i.iv = fptosi float %i.iu to i32
  %i.iw = call i32 @llvm.smax.i32(i32 %i.iv, i32 0)
  %i.ix = call i32 @llvm.umin.i32(i32 %i.iw, i32 16383)
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  store i16 %i.iy, ptr %i.is, align 2, !tbaa !74
  %i.iz = load ptr, ptr %1, align 8, !tbaa !67
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !57
  %i.jb = mul nsw i32 %i.ja, %.2324
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %i.iz, i64 %i.jc
  %i.je = getelementptr inbounds [2 x i8], ptr %i.jd, i64 %i.ir
  store i16 %i.bz, ptr %i.je, align 2, !tbaa !74
  %i.jf = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.jg = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.jh = mul nsw i32 %i.jg, %.2324
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %i.jf, i64 %i.ji
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.jj, i64 %i.ir
  store i16 %i.bf, ptr %i.jk, align 2, !tbaa !74
  br i1 %i.aq, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.jl = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.jm = sext i32 %.2324 to i64
  %i.jn = mul nsw i64 %i.jm, %i.m
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.ir
  store i16 %i.as, ptr %i.jp, align 2, !tbaa !74
  br label %bb.x

bb.v:                                             ; preds = %bb.k
  %i.jq = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.jr = load i32, ptr %i.an, align 8, !tbaa !57
  %i.js = mul nsw i32 %i.jr, %.2324
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 %i.jt
  %i.jv = sext i32 %.2244323 to i64               ; 4 uses
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.ju, i64 %i.jv
  %i.jx = uitofp nneg i32 %.0248322 to float
  %i.jy = fmul nsz float %i.ak, %i.jx
  %i.jz = fptosi float %i.jy to i32
  %i.ka = call i32 @llvm.smax.i32(i32 %i.jz, i32 0)
  %i.kb = call i32 @llvm.umin.i32(i32 %i.ka, i32 65535)
  %i.kc = trunc nuw i32 %i.kb to i16
  store i16 %i.kc, ptr %i.jw, align 2, !tbaa !74
  %i.kd = load ptr, ptr %1, align 8, !tbaa !67
  %i.ke = load i32, ptr %i.k, align 8, !tbaa !57
  %i.kf = mul nsw i32 %i.ke, %.2324
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %i.kg
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.jv
  store i16 %i.bx, ptr %i.ki, align 2, !tbaa !74
  %i.kj = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.kk = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.kl = mul nsw i32 %i.kk, %.2324
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kj, i64 %i.km
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.jv
  store i16 %i.bd, ptr %i.ko, align 2, !tbaa !74
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kp = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.kq = sext i32 %.2324 to i64
  %i.kr = mul nsw i64 %i.kq, %i.m
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.jv
  store i16 %i.as, ptr %i.kt, align 2, !tbaa !74
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %bb.u, %bb.r, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m, %bb.i, %bb.j, %bb.g, %bb.h, %bb.k
  %i.ku = add nsw i32 %.2244323, 1                ; 2 uses
  %i.kv = icmp eq i32 %i.ku, %i.g                 ; 2 uses
  %spec.select = select i1 %i.kv, i32 0, i32 %i.ku ; 3 uses
  %i.kw = zext i1 %i.kv to i32
  %spec.select252 = add nsw i32 %.2324, %i.kw     ; 3 uses
  %i.kx = add nuw nsw i32 %.0248322, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kx, %i.x
  br i1 %exitcond.not, label %bb.y, label %bb.e, !llvm.loop !76

bb.y:                                             ; preds = %bb.x
  %i.ky = add nuw nsw i32 %.0247325, 1            ; 2 uses
  %exitcond332.not = icmp eq i32 %i.ky, %i.x
  br i1 %exitcond332.not, label %bb.z, label %.preheader, !llvm.loop !78

bb.z:                                             ; preds = %bb.y
  %i.kz = add nuw nsw i32 %.0246328, 1            ; 2 uses
  %exitcond333.not = icmp eq i32 %i.kz, %i.x
  br i1 %exitcond333.not, label %._crit_edge, label %.preheader321, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.z, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_padded_bits_per_pixel(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @nullsrc_fill_picture(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @test_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !66   ; 12 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph191, label %._crit_edge192.split

.lr.ph191:                                        ; preds = %bb.a
  %i.i = sub nsw i32 1, %i.e
  %i.j = icmp sgt i32 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge192.split

.lr.ph.preheader:                                 ; preds = %.lr.ph191
  %i.l = mul nuw nsw i32 %i.g, %i.g
  %i.m = lshr i32 %i.l, 2
  %i.n = mul nuw nsw i32 %i.e, %i.e
  %i.o = lshr i32 %i.n, 2
  %i.p = add nuw nsw i32 %i.m, %i.o
  %i.q = add nuw nsw i32 %i.g, %i.e
  %i.r = lshr i32 %i.q, 2                         ; 2 uses
  %i.s = mul nuw nsw i32 %i.r, %i.r
  %i.t = sub nsw i32 %i.p, %i.s
  %i.u = sub nsw i32 1, %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0146189 = phi i32 [ %i.am, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.0149188 = phi i32 [ %i.al, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.0155187 = phi i32 [ %i.aq, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.0160186 = phi ptr [ %i.ap, %._crit_edge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0147185 = phi i32 [ %i.i, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %.0148184 = phi i32 [ %.0149188, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %.0151183 = phi i32 [ 0, %.lr.ph ], [ %.1152, %bb.b ]
  %.0153182 = phi i32 [ 0, %.lr.ph ], [ %.1154, %bb.b ] ; 3 uses
  %.0157181 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.b ]
  %.0161180 = phi ptr [ %.0160186, %.lr.ph ], [ %i.ag, %bb.b ] ; 4 uses
  %i.v = icmp slt i32 %.0148184, 0
  %i.w = xor i32 %.0153182, 7
  %spec.select = select i1 %i.v, i32 %i.w, i32 %.0153182 ; 3 uses
  %i.x = add nsw i32 %.0147185, %.0148184
  %i.y = add nsw i32 %.0147185, 2
  %.not174 = trunc i32 %spec.select to i1
  %i.z = sext i1 %.not174 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0161180, i64 1
  store i8 %i.z, ptr %.0161180, align 1, !tbaa !73
  %i.ab = shl i32 %spec.select, 30
  %sext = ashr i32 %i.ab, 31
  %i.ac = trunc nsw i32 %sext to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0161180, i64 2
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !73
  %i.ae = shl i32 %spec.select, 29
  %sext177 = ashr i32 %i.ae, 31
  %i.af = trunc nsw i32 %sext177 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0161180, i64 3
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !73
  %i.ah = add nsw i32 %.0151183, 8                ; 2 uses
  %.not178 = icmp sge i32 %i.ah, %i.e             ; 2 uses
  %i.ai = zext i1 %.not178 to i32
  %.1154 = add nuw nsw i32 %.0153182, %i.ai
  %i.aj = select i1 %.not178, i32 %i.e, i32 0
  %.1152 = sub nsw i32 %i.ah, %i.aj
  %i.ak = add nuw nsw i32 %.0157181, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b
  %i.al = add nsw i32 %.0146189, %.0149188
  %i.am = add nsw i32 %.0146189, 2
  %i.an = load i32, ptr %i.k, align 8, !tbaa !57
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.0160186, i64 %i.ao
  %i.aq = add nuw nsw i32 %.0155187, 1            ; 2 uses
  %exitcond213.not = icmp eq i32 %i.aq, %i.g
  br i1 %exitcond213.not, label %._crit_edge192.split, label %.lr.ph, !llvm.loop !81

._crit_edge192.split:                             ; preds = %._crit_edge, %.lr.ph191, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.at = mul nsw i32 %i.g, 3
  %i.au = sdiv i32 %i.at, 4
  %i.av = mul nsw i32 %i.as, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.c, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.ba = sdiv i32 1536, %i.e
  %i.bb = srem i32 1536, %i.e
  %i.bc = icmp sgt i32 %i.e, 0
  br i1 %i.bc, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %._crit_edge192.split
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !54
  %i.be = shl i32 %i.bd, 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !82
  %i.bg = mul i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !83
  %i.bj = udiv i32 %i.bg, %i.bi
  %i.bk = urem i32 %i.bj, 1536
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.i
  %.0143197 = phi i32 [ %.1, %bb.i ], [ 0, %.lr.ph199.preheader ]
  %.0144196 = phi i32 [ %.2, %bb.i ], [ %i.bk, %.lr.ph199.preheader ] ; 13 uses
  %.1158195 = phi i32 [ %i.ct, %bb.i ], [ 0, %.lr.ph199.preheader ]
  %.1162193 = phi ptr [ %i.cl, %bb.i ], [ %i.ax, %.lr.ph199.preheader ] ; 5 uses
  %i.bl = icmp sgt i32 %.0144196, 255
  %i.bm = add i32 %.0144196, -1280
  %or.cond = icmp ult i32 %i.bm, -1024
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph199
  %i.bn = and i32 %.0144196, 1536
  %or.cond3 = icmp eq i32 %i.bn, 512
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp samesign ult i32 %.0144196, 512
  %i.bp = sext i1 %i.bo to i32
  %i.bq = xor i32 %.0144196, %i.bp
  %i.br = trunc i32 %i.bq to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph199
  %i.bs = phi i8 [ -1, %.lr.ph199 ], [ %i.br, %bb.d ], [ 0, %bb.c ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1162193, i64 1 ; 2 uses
  store i8 %i.bs, ptr %.1162193, align 1, !tbaa !73
  %i.bu = icmp sgt i32 %.0144196, 1023
  br i1 %i.bu, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %.1162193, i64 2
  store i8 0, ptr %i.bt, align 1, !tbaa !73
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = add i32 %.0144196, -256
  %or.cond5 = icmp ult i32 %i.bw, 512
  %i.bx = sext i1 %i.bl to i32
  %i.by = xor i32 %.0144196, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = select i1 %or.cond5, i8 -1, i8 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.1162193, i64 2 ; 2 uses
  store i8 %i.ca, ptr %i.bt, align 1, !tbaa !73
  %i.cc = icmp slt i32 %.0144196, 512
  br i1 %i.cc, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.cd = phi ptr [ %i.bv, %.thread ], [ %i.cb, %bb.f ] ; 2 uses
  %i.ce = add nsw i32 %.0144196, -768
  %or.cond7 = icmp ult i32 %i.ce, 512
  br i1 %or.cond7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = icmp samesign ugt i32 %.0144196, 767
  %i.cg = sext i1 %i.cf to i32
  %i.ch = xor i32 %.0144196, %i.cg
  %i.ci = trunc i32 %i.ch to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cj = phi ptr [ %i.cb, %bb.f ], [ %i.cd, %bb.h ], [ %i.cd, %bb.g ]
  %i.ck = phi i8 [ 0, %bb.f ], [ %i.ci, %bb.h ], [ -1, %bb.g ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.1162193, i64 3
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !73
  %i.cm = add nsw i32 %.0144196, %i.ba
  %i.cn = add nuw nsw i32 %.0143197, %i.bb        ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1535                ; 2 uses
  %i.cp = add nsw i32 %i.cn, -1536
  %i.cq = zext i1 %i.co to i32
  %.1145 = add nsw i32 %i.cm, %i.cq               ; 3 uses
  %.1 = select i1 %i.co, i32 %i.cp, i32 %i.cn
  %i.cr = icmp sgt i32 %.1145, 1535
  %i.cs = add nsw i32 %.1145, -1536
  %.2 = select i1 %i.cr, i32 %i.cs, i32 %.1145
  %i.ct = add nuw nsw i32 %.1158195, 1            ; 2 uses
  %exitcond214.not = icmp eq i32 %i.ct, %i.e
  br i1 %exitcond214.not, label %._crit_edge200, label %.lr.ph199, !llvm.loop !84

._crit_edge200:                                   ; preds = %bb.i, %._crit_edge192.split
  %i.cu = icmp sgt i32 %i.g, 7
  br i1 %i.cu, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %._crit_edge200
  %i.cv = lshr i32 %i.g, 3                        ; 3 uses
  %i.cw = mul nsw i32 %i.e, 3
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %.pre = load i32, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %2 = and i32 %i.g, 8
  %lcmp.mod.not = icmp eq i32 %2, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph204
  %3 = sext i32 %.pre to i64
  %4 = getelementptr inbounds i8, ptr %i.ax, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %i.ax, i64 %i.cx, i1 false)
  %5 = load i32, ptr %i.ar, align 8, !tbaa !57    ; 2 uses
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %i.ax, i64 %6
  %8 = add nsw i32 %i.cv, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph204
  %.unr = phi i32 [ %.pre, %.lr.ph204 ], [ %5, %.prol.loopexit.unr-lcssa ]
  %.1156202.unr = phi i32 [ %i.cv, %.lr.ph204 ], [ %8, %.prol.loopexit.unr-lcssa ]
  %.2163201.unr = phi ptr [ %i.ax, %.lr.ph204 ], [ %7, %.prol.loopexit.unr-lcssa ]
  %9 = icmp eq i32 %i.cv, 1
  br i1 %9, label %._crit_edge205, label %bb.j

bb.j:                                             ; preds = %.prol.loopexit, %bb.j
  %i.cy = phi i32 [ %i.db, %bb.j ], [ %.unr, %.prol.loopexit ]
  %.1156202 = phi i32 [ %i.de, %bb.j ], [ %.1156202.unr, %.prol.loopexit ] ; 2 uses
  %.2163201 = phi ptr [ %i.dd, %bb.j ], [ %.2163201.unr, %.prol.loopexit ] ; 3 uses
  %10 = sext i32 %i.cy to i64
  %11 = getelementptr inbounds i8, ptr %.2163201, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %.2163201, i64 %i.cx, i1 false)
  %12 = load i32, ptr %i.ar, align 8, !tbaa !57   ; 2 uses
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %.2163201, i64 %13 ; 3 uses
  %i.cz = sext i32 %12 to i64
  %i.da = getelementptr inbounds i8, ptr %14, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %14, i64 %i.cx, i1 false)
  %i.db = load i32, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %14, i64 %i.dc
  %i.de = add nsw i32 %.1156202, -2
  %15 = icmp sgt i32 %.1156202, 2
  br i1 %15, label %bb.j, label %._crit_edge205, !llvm.loop !85

._crit_edge205:                                   ; preds = %.prol.loopexit, %bb.j, %._crit_edge200
  %i.df = sdiv i32 %i.e, 80                       ; 14 uses
  %i.dg = icmp sgt i32 %i.e, 79
  br i1 %i.dg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %._crit_edge205
  %i.dh = mul nuw nsw i32 %i.df, 13               ; 5 uses
  %.not = icmp slt i32 %i.g, %i.dh
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load i64, ptr %i.az, align 4            ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.di to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %i.di, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.dj = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.dk = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.dl = fdiv nsz double %i.dj, %i.dk
  %i.dm = load i32, ptr %i.ay, align 8, !tbaa !54 ; 2 uses
  %i.dn = uitofp nsz i32 %i.dm to double
  %i.do = fmul nsz double %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !86 ; 5 uses
  %i.dr = sitofp nsz i32 %i.dq to double
  %i.ds = fmul nnan nsz double %i.dr, f0x400A934F0979A371
  %i.dt = tail call nnan nsz double @llvm.exp2.f64(double %i.ds)
  %i.du = fmul nsz double %i.do, %i.dt
  %i.dv = fcmp nsz ult double %i.du, f0x41DFFFFFFFC00000
  br i1 %i.dv, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.l
  %i.dw = icmp sgt i32 %i.dq, 0
  br i1 %i.dw, label %.lr.ph208.preheader, label %._crit_edge209

.lr.ph208.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %i.dq, 7                    ; 3 uses
  %i.dx = icmp ult i32 %i.dq, 8
  br i1 %i.dx, label %.lr.ph208.epil.preheader, label %.lr.ph208.preheader.new

.lr.ph208.preheader.new:                          ; preds = %.lr.ph208.preheader
  %unroll_iter = and i32 %i.dq, 2147483640
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader.new
  %.0140207 = phi i64 [ 1, %.lr.ph208.preheader.new ], [ %i.dy, %.lr.ph208 ]
  %niter = phi i32 [ 0, %.lr.ph208.preheader.new ], [ %niter.next.7, %.lr.ph208 ]
  %i.dy = mul nuw nsw i64 %.0140207, 100000000    ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge209.loopexit.unr-lcssa, label %.lr.ph208, !llvm.loop !87

._crit_edge209.loopexit.unr-lcssa:                ; preds = %.lr.ph208
  %lcmp.mod.not.a = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not.a, label %._crit_edge209, label %.lr.ph208.epil.preheader

.lr.ph208.epil.preheader:                         ; preds = %._crit_edge209.loopexit.unr-lcssa, %.lr.ph208.preheader
  %.0140207.epil.init = phi i64 [ 1, %.lr.ph208.preheader ], [ %i.dy, %._crit_edge209.loopexit.unr-lcssa ]
  %lcmp.mod229 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %.lr.ph208.epil

.lr.ph208.epil:                                   ; preds = %.lr.ph208.epil, %.lr.ph208.epil.preheader
  %.0140207.epil = phi i64 [ %i.dz, %.lr.ph208.epil ], [ %.0140207.epil.init, %.lr.ph208.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph208.epil ], [ 0, %.lr.ph208.epil.preheader ]
  %i.dz = mul nuw nsw i64 %.0140207.epil, 10      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge209, label %.lr.ph208.epil, !llvm.loop !88

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit.unr-lcssa, %.lr.ph208.epil, %.preheader
  %.0140.lcssa = phi i64 [ 1, %.preheader ], [ %i.dy, %._crit_edge209.loopexit.unr-lcssa ], [ %i.dz, %.lr.ph208.epil ]
  %i.ea = mul i32 %i.dm, %.sroa.0.0.extract.trunc.i
  %i.eb = zext i32 %i.ea to i64
  %i.ec = ashr i64 %i.di, 32
  %i.ed = tail call i64 @av_rescale_rnd(i64 noundef %i.eb, i64 noundef %.0140.lcssa, i64 noundef %i.ec, i32 noundef 0) #20
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.df, 6
  %i.eg = sub nsw i32 %i.e, %i.ef
  %.neg = sdiv i32 %i.eg, -2
  %i.eh = add i32 %.neg, %i.e
  %i.ei = sub nuw nsw i32 %i.g, %i.dh
  %i.ej = lshr i32 %i.ei, 1
  %i.ek = mul nsw i32 %i.eh, 3
  %i.el = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.em = mul nsw i32 %i.el, %i.ej
  %i.en = add nsw i32 %i.em, %i.ek
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.c, i64 %i.eo
  %i.eq = mul nuw nsw i32 %i.df, 24
  %i.er = zext nneg i32 %i.eq to i64              ; 10 uses
  %i.es = sub nsw i64 0, %i.er
  %i.et = mul nuw nsw i32 %i.df, 3
  %i.eu = zext nneg i32 %i.df to i64              ; 7 uses
  %i.ev = mul nuw nsw i32 %i.df, 15
  %i.ew = mul nuw nsw i64 %i.eu, 3
  %i.ex = zext nneg i32 %i.ev to i64              ; 27 uses
  %i.ey = mul nuw nsw i32 %i.df, 5                ; 9 uses
  %i.ez = zext nneg i32 %i.et to i64              ; 36 uses
  %i.fa = mul nuw nsw i64 %i.eu, 7
  %i.fb = add nsw i32 %i.dh, -1
  %i.fc = add nsw i32 %i.df, -1                   ; 3 uses
  %i.fd = add nsw i32 %i.ey, -1                   ; 4 uses
  %xtraiter230 = and i32 %i.dh, 7                 ; 3 uses
  %i.fe = icmp ult i32 %i.fb, 7
  %unroll_iter234 = and i32 %i.dh, 536870904
  %lcmp.mod232.not = icmp eq i32 %xtraiter230, 0
  %lcmp.mod233 = icmp ne i32 %xtraiter230, 0
  %xtraiter237 = and i32 %i.df, 7                 ; 3 uses
  %i.ff = icmp ult i32 %i.fc, 7
  %unroll_iter241 = and i32 %i.df, 33554424
  %lcmp.mod239.not = icmp eq i32 %xtraiter237, 0
  %lcmp.mod240 = icmp ne i32 %xtraiter237, 0
  %xtraiter244 = and i32 %i.df, 7                 ; 3 uses
  %i.fg = icmp ult i32 %i.fc, 7
  %unroll_iter248 = and i32 %i.df, 33554424
  %lcmp.mod246.not = icmp eq i32 %xtraiter244, 0
  %lcmp.mod247 = icmp ne i32 %xtraiter244, 0
  %xtraiter251 = and i32 %i.df, 7                 ; 3 uses
  %i.fh = icmp ult i32 %i.fc, 7
  %unroll_iter255 = and i32 %i.df, 33554424
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter251, 0
  %xtraiter258 = and i32 %i.ey, 7                 ; 3 uses
  %i.fi = icmp ult i32 %i.fd, 7
  %unroll_iter262 = and i32 %i.ey, 268435448
  %lcmp.mod260.not = icmp eq i32 %xtraiter258, 0
  %lcmp.mod261 = icmp ne i32 %xtraiter258, 0
  %xtraiter265 = and i32 %i.ey, 7                 ; 3 uses
  %i.fj = icmp ult i32 %i.fd, 7
  %unroll_iter269 = and i32 %i.ey, 268435448
  %lcmp.mod267.not = icmp eq i32 %xtraiter265, 0
  %lcmp.mod268 = icmp ne i32 %xtraiter265, 0
  %xtraiter272 = and i32 %i.ey, 7                 ; 3 uses
  %i.fk = icmp ult i32 %i.fd, 7
  %unroll_iter276 = and i32 %i.ey, 268435448
  %lcmp.mod274.not = icmp eq i32 %xtraiter272, 0
  %lcmp.mod275 = icmp ne i32 %xtraiter272, 0
  %xtraiter279 = and i32 %i.ey, 7                 ; 3 uses
  %i.fl = icmp ult i32 %i.fd, 7
  %unroll_iter283 = and i32 %i.ey, 268435448
  %lcmp.mod281.not = icmp eq i32 %xtraiter279, 0
  %lcmp.mod282 = icmp ne i32 %xtraiter279, 0
  br label %bb.m

bb.m:                                             ; preds = %draw_digit.exit, %._crit_edge209
  %.0141212 = phi i32 [ 0, %._crit_edge209 ], [ %i.jr, %draw_digit.exit ]
  %.0142211 = phi i32 [ %i.ee, %._crit_edge209 ], [ %i.fo, %draw_digit.exit ] ; 3 uses
  %.3210 = phi ptr [ %i.ep, %._crit_edge209 ], [ %i.fm, %draw_digit.exit ]
  %i.fm = getelementptr inbounds i8, ptr %.3210, i64 %i.es ; 10 uses
  %i.fn = srem i32 %.0142211, 10
  %i.fo = sdiv i32 %.0142211, 10
  %i.fp = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.fq = sext i32 %i.fp to i64                   ; 78 uses
  %i.fr = sext i32 %i.fn to i64
  %i.fs = getelementptr inbounds i8, ptr @draw_digit.masks, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !73
  br i1 %i.fe, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.m, %.new
  %.01819.i.i = phi ptr [ %i.gb, %.new ], [ %i.fm, %bb.m ] ; 2 uses
  %niter235 = phi i32 [ %niter235.next.7, %.new ], [ 0, %bb.m ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.01819.i.i, i8 0, i64 %i.er, i1 false)
  %i.fu = getelementptr inbounds i8, ptr %.01819.i.i, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fu, i8 0, i64 %i.er, i1 false)
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fv, i8 0, i64 %i.er, i1 false)
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, i8 0, i64 %i.er, i1 false)
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fx, i8 0, i64 %i.er, i1 false)
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fy, i8 0, i64 %i.er, i1 false)
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fz, i8 0, i64 %i.er, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.fq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, i8 0, i64 %i.er, i1 false)
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fq ; 2 uses
  %niter235.next.7 = add i32 %niter235, 8         ; 2 uses
  %niter235.ncmp.7 = icmp eq i32 %niter235.next.7, %unroll_iter234
  br i1 %niter235.ncmp.7, label %draw_rectangle.exit.preheader.i.unr-lcssa, label %.new, !llvm.loop !90

draw_rectangle.exit.preheader.i.unr-lcssa:        ; preds = %.new
  br i1 %lcmp.mod232.not, label %draw_rectangle.exit.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %draw_rectangle.exit.preheader.i.unr-lcssa, %bb.m
  %.01819.i.i.epil.init = phi ptr [ %i.fm, %bb.m ], [ %i.gb, %draw_rectangle.exit.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.01819.i.i.epil = phi ptr [ %.01819.i.i.epil.init, %.epil.preheader ], [ %i.gc, %bb.n ] ; 2 uses
  %epil.iter231 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter231.next, %bb.n ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.01819.i.i.epil, i8 0, i64 %i.er, i1 false)
  %i.gc = getelementptr inbounds i8, ptr %.01819.i.i.epil, i64 %i.fq
  %epil.iter231.next = add i32 %epil.iter231, 1   ; 2 uses
  %epil.iter231.cmp.not = icmp eq i32 %epil.iter231.next, %xtraiter230
  br i1 %epil.iter231.cmp.not, label %draw_rectangle.exit.preheader.i, label %bb.n, !llvm.loop !91

draw_rectangle.exit.preheader.i:                  ; preds = %bb.n, %draw_rectangle.exit.preheader.i.unr-lcssa
  %i.gd = zext i8 %i.ft to i32                    ; 7 uses
  %i.ge = and i32 %i.gd, 1
end_hunk_0
