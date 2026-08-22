Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/drbg_ctr?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@drbg_ctr_generate:bb.a
  %i.ic = lshr i32 %i.ia, 8
  %i.id = and i32 %i.fk, 255
  %i.ie = add nuw nsw i32 %i.ic, %i.id            ; 2 uses
  %i.if = trunc i32 %i.ie to i8
  store i8 %i.if, ptr %i.fh, align 1, !tbaa !28
  %i.ig = lshr i32 %i.ie, 8
  %i.ih = and i32 %i.fq, 255
  %i.ii = add nuw nsw i32 %i.ig, %i.ih            ; 2 uses
  %i.ij = trunc i32 %i.ii to i8
  store i8 %i.ij, ptr %i.fn, align 1, !tbaa !28
  %i.ik = lshr i32 %i.ii, 8
  %i.il = and i32 %i.fw, 255
  %i.im = add nuw nsw i32 %i.ik, %i.il            ; 2 uses
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %i.ft, align 1, !tbaa !28
  %i.io = lshr i32 %i.im, 8
  %i.ip = and i32 %i.gc, 255
  %i.iq = add nuw nsw i32 %i.io, %i.ip            ; 2 uses
  %i.ir = trunc i32 %i.iq to i8
  store i8 %i.ir, ptr %i.fz, align 1, !tbaa !28
  %i.is = lshr i32 %i.iq, 8
  %i.it = and i32 %i.gi, 255
  %i.iu = add nuw nsw i32 %i.is, %i.it            ; 2 uses
  %i.iv = trunc i32 %i.iu to i8
  store i8 %i.iv, ptr %i.gf, align 1, !tbaa !28
  %i.iw = lshr i32 %i.iu, 8
  %i.ix = trunc nuw nsw i32 %i.iw to i8
  %i.iy = add i8 %i.gn, %i.ix
  store i8 %i.iy, ptr %i.cy, align 1, !tbaa !28
  %i.iz = tail call fastcc i32 @ctr_update(ptr noundef nonnull %0, ptr noundef %.054, i64 noundef %.058, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.053 = phi i64 [ %2, %bb.f ], [ %i.lx, %bb.k ] ; 2 uses
  %.052 = phi ptr [ %1, %bb.f ], [ %i.lw, %bb.k ] ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !18
  %i.jc = call i32 @EVP_CipherInit_ex(ptr noundef %i.jb, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.cy, i32 noundef -1) #7
  %.not67 = icmp eq i32 %i.jc, 0
  br i1 %.not67, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jd = call i64 @llvm.umin.i64(i64 %.053, i64 1073741824)
  %i.je = trunc nuw nsw i64 %i.jd to i32          ; 3 uses
  %i.jf = add nuw nsw i32 %i.je, 15
  %i.jg = lshr i32 %i.jf, 4                       ; 2 uses
  %i.jh = load i32, ptr %i.dr, align 8, !tbaa !24
  %i.ji = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jh) #9, !srcloc !58 ; 2 uses
  %i.jj = add i32 %i.ji, %i.jg                    ; 3 uses
  %i.jk = icmp ult i32 %i.jj, %i.jg
  br i1 %i.jk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not68 = icmp eq i32 %i.jj, 0
  %.neg = mul i32 %i.ji, -16
  %spec.select75 = select i1 %.not68, i32 %i.je, i32 %.neg
  %i.jl = load i8, ptr %i.dx, align 1, !tbaa !28
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nuw nsw i32 %i.jm, 1                ; 2 uses
  %i.jo = trunc i32 %i.jn to i8
  store i8 %i.jo, ptr %i.dx, align 1, !tbaa !28
  %i.jp = lshr i32 %i.jn, 8
  %i.jq = load i8, ptr %i.ed, align 2, !tbaa !28
  %i.jr = zext i8 %i.jq to i32
  %i.js = add nuw nsw i32 %i.jp, %i.jr            ; 2 uses
  %i.jt = trunc i32 %i.js to i8
  store i8 %i.jt, ptr %i.ed, align 2, !tbaa !28
  %i.ju = lshr i32 %i.js, 8
  %i.jv = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nuw nsw i32 %i.ju, %i.jw            ; 2 uses
  %i.jy = trunc i32 %i.jx to i8
  store i8 %i.jy, ptr %i.ej, align 1, !tbaa !28
  %i.jz = lshr i32 %i.jx, 8
  %i.ka = load i8, ptr %i.ep, align 4, !tbaa !28
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nuw nsw i32 %i.jz, %i.kb            ; 2 uses
  %i.kd = trunc i32 %i.kc to i8
  store i8 %i.kd, ptr %i.ep, align 4, !tbaa !28
  %i.ke = lshr i32 %i.kc, 8
  %i.kf = load i8, ptr %i.ev, align 1, !tbaa !28
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nuw nsw i32 %i.ke, %i.kg            ; 2 uses
  %i.ki = trunc i32 %i.kh to i8
  store i8 %i.ki, ptr %i.ev, align 1, !tbaa !28
  %i.kj = lshr i32 %i.kh, 8
  %i.kk = load i8, ptr %i.fb, align 2, !tbaa !28
  %i.kl = zext i8 %i.kk to i32
  %i.km = add nuw nsw i32 %i.kj, %i.kl            ; 2 uses
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %i.fb, align 2, !tbaa !28
  %i.ko = lshr i32 %i.km, 8
  %i.kp = load i8, ptr %i.fh, align 1, !tbaa !28
  %i.kq = zext i8 %i.kp to i32
  %i.kr = add nuw nsw i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = trunc i32 %i.kr to i8
  store i8 %i.ks, ptr %i.fh, align 1, !tbaa !28
  %i.kt = lshr i32 %i.kr, 8
  %i.ku = load i8, ptr %i.fn, align 8, !tbaa !28
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add nuw nsw i32 %i.kt, %i.kv            ; 2 uses
  %i.kx = trunc i32 %i.kw to i8
  store i8 %i.kx, ptr %i.fn, align 8, !tbaa !28
  %i.ky = lshr i32 %i.kw, 8
  %i.kz = load i8, ptr %i.ft, align 1, !tbaa !28
  %i.la = zext i8 %i.kz to i32
  %i.lb = add nuw nsw i32 %i.ky, %i.la            ; 2 uses
  %i.lc = trunc i32 %i.lb to i8
  store i8 %i.lc, ptr %i.ft, align 1, !tbaa !28
  %i.ld = lshr i32 %i.lb, 8
  %i.le = load i8, ptr %i.fz, align 2, !tbaa !28
  %i.lf = zext i8 %i.le to i32
  %i.lg = add nuw nsw i32 %i.ld, %i.lf            ; 2 uses
  %i.lh = trunc i32 %i.lg to i8
  store i8 %i.lh, ptr %i.fz, align 2, !tbaa !28
  %i.li = lshr i32 %i.lg, 8
  %i.lj = load i8, ptr %i.gf, align 1, !tbaa !28
  %i.lk = zext i8 %i.lj to i32
  %i.ll = add nuw nsw i32 %i.li, %i.lk            ; 2 uses
  %i.lm = trunc i32 %i.ll to i8
  store i8 %i.lm, ptr %i.gf, align 1, !tbaa !28
  %i.ln = lshr i32 %i.ll, 8
  %i.lo = load i8, ptr %i.cy, align 4, !tbaa !28
  %i.lp = trunc nuw nsw i32 %i.ln to i8
  %i.lq = add i8 %i.lo, %i.lp
  store i8 %i.lq, ptr %i.cy, align 4, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.157 = phi i32 [ 0, %bb.i ], [ %i.jj, %bb.h ]
  %.1 = phi i32 [ %spec.select75, %bb.i ], [ %i.je, %bb.h ] ; 3 uses
  %i.lr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.157) #9, !srcloc !59
  store i32 %i.lr, ptr %i.dr, align 8, !tbaa !24
  %i.ls = load ptr, ptr %i.ja, align 8, !tbaa !18
  %i.lt = call i32 @EVP_CipherUpdate(ptr noundef %i.ls, ptr noundef %.052, ptr noundef nonnull %i.a, ptr noundef %.052, i32 noundef %.1) #7
  %.not69 = icmp ne i32 %i.lt, 0
  %i.lu = load i32, ptr %i.a, align 4
  %.not70 = icmp eq i32 %i.lu, %.1
  %or.cond76 = select i1 %.not69, i1 %.not70, i1 false
  br i1 %or.cond76, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.lv = sext i32 %.1 to i64                     ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %.052, i64 %i.lv
  %i.lx = sub i64 %.053, %i.lv                    ; 2 uses
  %.not71 = icmp eq i64 %i.lx, 0
  br i1 %.not71, label %bb.l, label %bb.g, !llvm.loop !60

bb.l:                                             ; preds = %bb.k
  %i.ly = call fastcc i32 @ctr_update(ptr noundef %0, ptr noundef %.054, i64 noundef %.058, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.l, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.iz, %bb.e ], [ %i.ly, %bb.l ], [ 0, %bb.g ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noalias ptr @CRYPTO_secure_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ctr_update(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [48 x i8], align 16               ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 16, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84 ; 34 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 99 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1                  ; 3 uses
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.j, align 1, !tbaa !28
  %i.o = lshr i32 %i.m, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 98 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.o, %i.r               ; 3 uses
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.p, align 1, !tbaa !28
  %i.u = lshr i32 %i.s, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 97 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.u, %i.x               ; 3 uses
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %i.v, align 1, !tbaa !28
  %i.aa = lshr i32 %i.y, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.aa, %i.ad            ; 3 uses
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !28
  %i.ag = lshr i32 %i.ae, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 95 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.ag, %i.aj            ; 3 uses
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !28
  %i.am = lshr i32 %i.ak, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 94 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.am, %i.ap            ; 3 uses
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !28
  %i.as = lshr i32 %i.aq, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.as, %i.av            ; 3 uses
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !28
  %i.ay = lshr i32 %i.aw, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 92 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ay, %i.bb            ; 3 uses
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !28
  %i.be = lshr i32 %i.bc, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 91 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.be, %i.bh            ; 3 uses
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !28
  %i.bk = lshr i32 %i.bi, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 90 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bk, %i.bn            ; 3 uses
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !28
  %i.bq = lshr i32 %i.bo, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 89 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, %i.bt            ; 3 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !28
  %i.bw = lshr i32 %i.bu, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bw, %i.bz            ; 3 uses
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !28
  %i.cc = lshr i32 %i.ca, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 87 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !28
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cc, %i.cf            ; 3 uses
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !28
  %i.ci = lshr i32 %i.cg, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 86 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !28
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.ci, %i.cl            ; 3 uses
  %i.cn = trunc i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !28
  %i.co = lshr i32 %i.cm, 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 85 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.co, %i.cr            ; 3 uses
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !28
  %i.cu = lshr i32 %i.cs, 8
  %i.cv = load i8, ptr %i.i, align 1, !tbaa !28
  %i.cw = trunc nuw nsw i32 %i.cu to i8
  %i.cx = add i8 %i.cv, %i.cw                     ; 2 uses
  store i8 %i.cx, ptr %i.i, align 1, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 7 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !57
  %i.db = icmp eq i64 %i.da, 16
  br i1 %i.db, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dc = and i32 %i.m, 255
  %i.dd = add nuw nsw i32 %i.dc, 1                ; 2 uses
  %i.de = trunc i32 %i.dd to i8
  store i8 %i.de, ptr %i.j, align 1, !tbaa !28
  %i.df = lshr i32 %i.dd, 8
  %i.dg = and i32 %i.s, 255
  %i.dh = add nuw nsw i32 %i.df, %i.dg            ; 2 uses
  %i.di = trunc i32 %i.dh to i8
  store i8 %i.di, ptr %i.p, align 2, !tbaa !28
  %i.dj = lshr i32 %i.dh, 8
  %i.dk = and i32 %i.y, 255
  %i.dl = add nuw nsw i32 %i.dj, %i.dk            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.v, align 1, !tbaa !28
  %i.dn = lshr i32 %i.dl, 8
  %i.do = and i32 %i.ae, 255
  %i.dp = add nuw nsw i32 %i.dn, %i.do            ; 2 uses
  %i.dq = trunc i32 %i.dp to i8
  store i8 %i.dq, ptr %i.ab, align 8, !tbaa !28
  %i.dr = lshr i32 %i.dp, 8
  %i.ds = and i32 %i.ak, 255
  %i.dt = add nuw nsw i32 %i.dr, %i.ds            ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  store i8 %i.du, ptr %i.ah, align 1, !tbaa !28
  %i.dv = lshr i32 %i.dt, 8
  %i.dw = and i32 %i.aq, 255
  %i.dx = add nuw nsw i32 %i.dv, %i.dw            ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.an, align 2, !tbaa !28
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = and i32 %i.aw, 255
  %i.eb = add nuw nsw i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = trunc i32 %i.eb to i8
  store i8 %i.ec, ptr %i.at, align 1, !tbaa !28
  %i.ed = lshr i32 %i.eb, 8
  %i.ee = and i32 %i.bc, 255
  %i.ef = add nuw nsw i32 %i.ed, %i.ee            ; 2 uses
  %i.eg = trunc i32 %i.ef to i8
  store i8 %i.eg, ptr %i.az, align 4, !tbaa !28
  %i.eh = lshr i32 %i.ef, 8
  %i.ei = and i32 %i.bi, 255
  %i.ej = add nuw nsw i32 %i.eh, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.bf, align 1, !tbaa !28
  %i.el = lshr i32 %i.ej, 8
  %i.em = and i32 %i.bo, 255
  %i.en = add nuw nsw i32 %i.el, %i.em            ; 2 uses
  %i.eo = trunc i32 %i.en to i8
  store i8 %i.eo, ptr %i.bl, align 2, !tbaa !28
  %i.ep = lshr i32 %i.en, 8
  %i.eq = and i32 %i.bu, 255
  %i.er = add nuw nsw i32 %i.ep, %i.eq            ; 2 uses
  %i.es = trunc i32 %i.er to i8
  store i8 %i.es, ptr %i.br, align 1, !tbaa !28
  %i.et = lshr i32 %i.er, 8
  %i.eu = and i32 %i.ca, 255
  %i.ev = add nuw nsw i32 %i.et, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.bx, align 8, !tbaa !28
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = and i32 %i.cg, 255
  %i.ez = add nuw nsw i32 %i.ex, %i.ey            ; 2 uses
  %i.fa = trunc i32 %i.ez to i8
  store i8 %i.fa, ptr %i.cd, align 1, !tbaa !28
  %i.fb = lshr i32 %i.ez, 8
  %i.fc = and i32 %i.cm, 255
  %i.fd = add nuw nsw i32 %i.fb, %i.fc            ; 2 uses
  %i.fe = trunc i32 %i.fd to i8
  store i8 %i.fe, ptr %i.cj, align 2, !tbaa !28
  %i.ff = lshr i32 %i.fd, 8
  %i.fg = and i32 %i.cs, 255
  %i.fh = add nuw nsw i32 %i.ff, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.cp, align 1, !tbaa !28
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = trunc nuw nsw i32 %i.fj to i8
  %i.fl = add i8 %i.cx, %i.fk
  store i8 %i.fl, ptr %i.i, align 4, !tbaa !28
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 48, %bb.b ], [ 32, %bb.a ]      ; 2 uses
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.fo = call i32 @EVP_CipherUpdate(ptr noundef %i.fn, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.0) #7
  %.not = icmp ne i32 %i.fo, 0
  %i.fp = load i32, ptr %i.d, align 4
  %.not43 = icmp eq i32 %i.fp, %.0
  %or.cond49 = select i1 %.not, i1 %.not43, i1 false
  br i1 %or.cond49, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.fq = getelementptr i8, ptr %i.h, i64 52      ; 25 uses
  %i.fr = load i64, ptr %i.cz, align 8, !tbaa !57 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fq, ptr nonnull align 16 %i.f, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.fs, i64 16, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !49
  %.not44 = icmp eq i32 %i.fu, 0
  br i1 %.not44, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fv = icmp ne ptr %1, null
  %i.fw = icmp ne ptr %5, null
  %or.cond = or i1 %i.fv, %i.fw
  %i.fx = icmp ne ptr %3, null
  %or.cond3 = or i1 %i.fx, %or.cond
  br i1 %or.cond3, label %vector.ph, label %bb.q

vector.ph:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 16, ptr %i.c, align 4, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, i8 0, i64 48, i1 false)
  %i.fz = icmp eq i64 %i.fr, 16                   ; 2 uses
  %i.ga = select i1 %i.fz, i32 32, i32 48         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 16, ptr %i.b, align 4, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %wide.load97.1 = load <16 x i8>, ptr %i.gb, align 8, !tbaa !28
  %i.gc = xor <16 x i8> %wide.load97.1, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  store <16 x i8> %i.gc, ptr %i.gb, align 8, !tbaa !28
  br i1 %i.fz, label %ctr_BCC_init.exit.i, label %vector.body.2

vector.body.2:                                    ; preds = %vector.ph
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  %wide.load97.2 = load <16 x i8>, ptr %i.gd, align 8, !tbaa !28
  %i.ge = xor <16 x i8> %wide.load97.2, <i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  store <16 x i8> %i.ge, ptr %i.gd, align 8, !tbaa !28
  br label %ctr_BCC_init.exit.i

ctr_BCC_init.exit.i:                              ; preds = %vector.body.2, %vector.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 100 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !19
  %i.gi = call i32 @EVP_CipherUpdate(ptr noundef %i.gh, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fy, i32 noundef range(i32 32, 49) %i.ga) #7
  %.not.i.i.i = icmp eq i32 %i.gi, 0
  %i.gj = load i32, ptr %i.b, align 4
  %.not14.i.i.i = icmp ne i32 %i.gj, %i.ga
  %or.cond.i.i.not.i = select i1 %.not.i.i.i, i1 true, i1 %.not14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br i1 %or.cond.i.i.not.i, label %ctr_df.exit.thread, label %bb.f

bb.f:                                             ; preds = %ctr_BCC_init.exit.i
  %i.gk = icmp eq ptr %1, null
  %spec.select.i = select i1 %i.gk, i64 0, i64 %2 ; 2 uses
  %i.gl = icmp eq ptr %5, null
  %.052.i = select i1 %i.gl, i64 0, i64 %6        ; 2 uses
  %i.gm = icmp eq ptr %3, null
  %.0.i = select i1 %i.gm, i64 0, i64 %4          ; 2 uses
  %i.gn = add i64 %.0.i, %spec.select.i
  %i.go = add i64 %i.gn, %.052.i                  ; 4 uses
  %i.gp = lshr i64 %i.go, 24
  %i.gq = trunc i64 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 101
  store i8 %i.gq, ptr %i.gf, align 4, !tbaa !28
  %i.gs = lshr i64 %i.go, 16
  %i.gt = trunc i64 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 102
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !28
  %i.gv = lshr i64 %i.go, 8
  %i.gw = trunc i64 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.h, i64 103
  store i8 %i.gw, ptr %i.gu, align 2, !tbaa !28
  %i.gy = trunc i64 %i.go to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 105
  store i8 0, ptr %i.gz, align 8, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 106
  store i8 0, ptr %i.ha, align 1, !tbaa !28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.h, i64 107
  store i8 0, ptr %i.hb, align 2, !tbaa !28
  %i.hd = load i64, ptr %i.cz, align 8, !tbaa !57
  %i.he = trunc i64 %i.hd to i8
  %i.hf = add i8 %i.he, 16
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !28
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  store i64 8, ptr %i.hg, align 8, !tbaa !23
  %i.hh = call fastcc i32 @ctr_BCC_update(ptr noundef nonnull %i.h, ptr noundef readonly %1, i64 noundef %spec.select.i)
  %.not54.i = icmp eq i32 %i.hh, 0
  br i1 %.not54.i, label %ctr_df.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hi = call fastcc i32 @ctr_BCC_update(ptr noundef nonnull %i.h, ptr noundef readonly %5, i64 noundef %.052.i)
  %.not55.i = icmp eq i32 %i.hi, 0
  br i1 %.not55.i, label %ctr_df.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hj = call fastcc i32 @ctr_BCC_update(ptr noundef nonnull %i.h, ptr noundef readonly %3, i64 noundef %.0.i)
end_hunk_0
