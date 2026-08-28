Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ecp_curves?download=true
inline.NumInlined: 176
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ecp_mod_p256:bb.a
  %i.fx = add nsw i8 %i.fv, %.neg.i251
  %i.fy = sub i32 %i.fs, %i.l                     ; 2 uses
  %i.fz = icmp ult i32 %i.fy, %i.bd
  %.neg.i252 = sext i1 %i.fz to i8
  %i.ga = add nsw i8 %i.fx, %.neg.i252            ; 2 uses
  %i.gb = sub i32 %i.fy, %i.bd
  %i.gc = zext i32 %i.gb to i64
  %i.gd = lshr i64 %i.es, 32
  %i.ge = trunc nuw i64 %i.gd to i32              ; 3 uses
  %i.gf = sext i8 %i.ga to i32                    ; 4 uses
  %i.gg = icmp slt i8 %i.ga, 0
  br i1 %i.gg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gh = sub nsw i32 0, %i.gf
  %i.gi = icmp ult i32 %i.ge, %i.gh
  %.neg.i253 = sext i1 %i.gi to i8
  %i.gj = add i32 %i.gf, %i.ge
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gk = add i32 %i.gf, %i.ge                    ; 2 uses
  %i.gl = icmp ult i32 %i.gk, %i.gf
  %i.gm = zext i1 %i.gl to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4457 = phi i8 [ %.neg.i253, %bb.o ], [ %i.gm, %bb.p ]
  %.4 = phi i32 [ %i.gj, %bb.o ], [ %i.gk, %bb.p ]
  %i.gn = add i32 %.4, %i.z                       ; 2 uses
  %i.go = icmp ult i32 %i.gn, %i.z
  %i.gp = zext i1 %i.go to i8
  %i.gq = add nsw i8 %.4457, %i.gp
  %i.gr = add i32 %i.gn, %i.z                     ; 2 uses
  %i.gs = icmp ult i32 %i.gr, %i.z
  %i.gt = zext i1 %i.gs to i8
  %i.gu = add nsw i8 %i.gq, %i.gt
  %i.gv = add i32 %i.gr, %i.n                     ; 2 uses
  %i.gw = icmp ult i32 %i.gv, %i.n
  %i.gx = zext i1 %i.gw to i8
  %i.gy = add nsw i8 %i.gu, %i.gx
  %i.gz = add i32 %i.gv, %i.n                     ; 2 uses
  %i.ha = icmp ult i32 %i.gz, %i.n
  %i.hb = zext i1 %i.ha to i8
  %i.hc = add nsw i8 %i.gy, %i.hb
  %i.hd = add i32 %i.gz, %i.bs                    ; 3 uses
  %i.he = icmp ult i32 %i.hd, %i.bs
  %i.hf = zext i1 %i.he to i8
  %i.hg = add nsw i8 %i.hc, %i.hf
  %i.hh = icmp ult i32 %i.hd, %i.bd
  %.neg.i254 = sext i1 %i.hh to i8
  %i.hi = add nsw i8 %i.hg, %.neg.i254
  %i.hj = sub i32 %i.hd, %i.bd                    ; 2 uses
  %i.hk = icmp ult i32 %i.hj, %i.ab
  %.neg.i255 = sext i1 %i.hk to i8
  %i.hl = add nsw i8 %i.hi, %.neg.i255            ; 2 uses
  %i.hm = sub i32 %i.hj, %i.ab
  %i.hn = zext i32 %i.hm to i64
  %i.ho = shl nuw i64 %i.hn, 32
  %i.hp = or disjoint i64 %i.ho, %i.gc
  store i64 %i.hp, ptr %i.er, align 8, !tbaa !26
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !26 ; 2 uses
  %i.hs = trunc i64 %i.hr to i32                  ; 3 uses
  %i.ht = sext i8 %i.hl to i32                    ; 4 uses
  %i.hu = icmp slt i8 %i.hl, 0
  br i1 %i.hu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hv = sub nsw i32 0, %i.ht
  %i.hw = icmp ult i32 %i.hs, %i.hv
  %.neg.i256 = sext i1 %i.hw to i8
  %i.hx = add i32 %i.ht, %i.hs
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.hy = add i32 %i.ht, %i.hs                    ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %i.ht
  %i.ia = zext i1 %i.hz to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5458 = phi i8 [ %.neg.i256, %bb.r ], [ %i.ia, %bb.s ]
  %.5 = phi i32 [ %i.hx, %bb.r ], [ %i.hy, %bb.s ]
  %i.ib = add i32 %.5, %i.n                       ; 2 uses
  %i.ic = add i32 %i.ib, %i.n                     ; 2 uses
  %i.id = add i32 %i.ic, %i.bs                    ; 2 uses
  %i.ie = add i32 %i.id, %i.bs                    ; 2 uses
  %i.if = add i32 %i.ie, %i.n                     ; 2 uses
  %i.ig = add i32 %i.if, %i.z                     ; 3 uses
  %i.ih = sub i32 %i.ig, %i.m                     ; 2 uses
  %i.ii = icmp ult i32 %i.ih, %i.l
  %i.ij = icmp ult i32 %i.ig, %i.m
  %i.ik = icmp ult i32 %i.ig, %i.z
  %i.il = icmp ult i32 %i.if, %i.n
  %i.im = icmp ult i32 %i.ie, %i.bs
  %i.in = icmp ult i32 %i.id, %i.bs
  %i.io = icmp ult i32 %i.ic, %i.n
  %i.ip = icmp ult i32 %i.ib, %i.n
  %i.iq = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %i.ir = insertelement <8 x i1> %i.iq, i1 %i.io, i64 1
  %i.is = insertelement <8 x i1> %i.ir, i1 %i.in, i64 2
  %i.it = insertelement <8 x i1> %i.is, i1 %i.im, i64 3
  %i.iu = insertelement <8 x i1> %i.it, i1 %i.il, i64 4
  %i.iv = insertelement <8 x i1> %i.iu, i1 %i.ik, i64 5
  %i.iw = insertelement <8 x i1> %i.iv, i1 %i.ij, i64 6
  %i.ix = insertelement <8 x i1> %i.iw, i1 %i.ii, i64 7 ; 2 uses
  %i.iy = zext <8 x i1> %i.ix to <8 x i8>
  %i.iz = sext <8 x i1> %i.ix to <8 x i8>
  %i.ja = shufflevector <8 x i8> %i.iy, <8 x i8> %i.iz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.jb = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ja)
  %op.rdx = add i8 %i.jb, %.5458                  ; 2 uses
  %i.jc = sub i32 %i.ih, %i.l
  %i.jd = zext i32 %i.jc to i64
  %i.je = lshr i64 %i.hr, 32
  %i.jf = trunc nuw i64 %i.je to i32              ; 3 uses
  %i.jg = sext i8 %op.rdx to i32                  ; 4 uses
  %i.jh = icmp slt i8 %op.rdx, 0
  br i1 %i.jh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ji = sub nsw i32 0, %i.jg
  %i.jj = icmp ult i32 %i.jf, %i.ji
  %.neg.i259 = sext i1 %i.jj to i8
  %i.jk = add i32 %i.jg, %i.jf
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.jl = add i32 %i.jg, %i.jf                    ; 2 uses
  %i.jm = icmp ult i32 %i.jl, %i.jg
  %i.jn = zext i1 %i.jm to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.6459 = phi i8 [ %.neg.i259, %bb.u ], [ %i.jn, %bb.v ]
  %.6 = phi i32 [ %i.jk, %bb.u ], [ %i.jl, %bb.v ]
  %i.jo = add i32 %.6, %i.bs                      ; 2 uses
  %i.jp = icmp ult i32 %i.jo, %i.bs
  %i.jq = zext i1 %i.jp to i8
  %i.jr = add nsw i8 %.6459, %i.jq
  %i.js = add i32 %i.jo, %i.bs                    ; 2 uses
  %i.jt = icmp ult i32 %i.js, %i.bs
  %i.ju = zext i1 %i.jt to i8
  %i.jv = add nsw i8 %i.jr, %i.ju
  %i.jw = add i32 %i.js, %i.bs                    ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.bs
  %i.jy = zext i1 %i.jx to i8
  %i.jz = add nsw i8 %i.jv, %i.jy
  %i.ka = add i32 %i.jw, %i.m                     ; 3 uses
  %i.kb = icmp ult i32 %i.ka, %i.m
  %i.kc = zext i1 %i.kb to i8
  %i.kd = add nsw i8 %i.jz, %i.kc
  %i.ke = icmp ult i32 %i.ka, %i.bd
  %.neg.i260 = sext i1 %i.ke to i8
  %i.kf = add nsw i8 %i.kd, %.neg.i260
  %i.kg = sub i32 %i.ka, %i.bd                    ; 2 uses
  %i.kh = icmp ult i32 %i.kg, %i.ab
  %.neg.i261 = sext i1 %i.kh to i8
  %i.ki = add nsw i8 %i.kf, %.neg.i261
  %i.kj = sub i32 %i.kg, %i.ab                    ; 2 uses
  %i.kk = icmp ult i32 %i.kj, %i.aa
  %.neg.i262 = sext i1 %i.kk to i8
  %i.kl = add nsw i8 %i.ki, %.neg.i262
  %i.km = sub i32 %i.kj, %i.aa                    ; 2 uses
  %i.kn = icmp ult i32 %i.km, %i.z
  %.neg.i263 = sext i1 %i.kn to i8
  %i.ko = add nsw i8 %i.kl, %.neg.i263            ; 3 uses
  %i.kp = sub i32 %i.km, %i.z
  %i.kq = zext i32 %i.kp to i64
  %i.kr = shl nuw i64 %i.kq, 32
  %i.ks = or disjoint i64 %i.kr, %i.jd
  store i64 %i.ks, ptr %i.hq, align 8, !tbaa !26
  %i.kt = tail call i8 @llvm.smax.i8(i8 %i.ko, i8 0)
  %i.ku = and i64 %i.i, -4294967296
  %i.kv = zext nneg i8 %i.kt to i64
  %i.kw = or disjoint i64 %i.ku, %i.kv
  store i64 %i.kw, ptr %i.e, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !19 ; 3 uses
  %i.kz = icmp ugt i16 %i.ky, 4
  br i1 %i.kz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.la = icmp eq i16 %i.ky, 5
  br i1 %i.la, label %.lr.ph.epil, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %i.lb = zext i16 %i.ky to i64
  %i.lc = shl nuw nsw i64 %i.lb, 1
  %i.ld = add nsw i64 %i.lc, -12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.le = phi i64 [ 9, %.lr.ph.preheader.new ], [ %i.lo, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %i.lf = lshr i64 %i.le, 1
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lf ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !26
  %i.li = and i64 %i.lh, 4294967295
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !26
  %i.lj = add nuw nsw i64 %i.le, 1
  %i.lk = lshr i64 %i.lj, 1
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lk ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !26
  %i.ln = and i64 %i.lm, -4294967296
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !26
  %i.lo = add nuw nsw i64 %i.le, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ld
  br i1 %niter.ncmp.1, label %.lr.ph.epil, label %.lr.ph, !llvm.loop !27

.lr.ph.epil:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %.epil.init = phi i64 [ 9, %.lr.ph.preheader ], [ %i.lo, %.lr.ph ] ; 2 uses
  %.not233.epil = trunc i64 %.epil.init to i1
  %i.lp = lshr i64 %.epil.init, 1
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lp ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !26
  %..epil = select i1 %.not233.epil, i64 4294967295, i64 -4294967296
  %i.ls = and i64 %i.lr, %..epil
  store i64 %i.ls, ptr %i.lq, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil, %bb.w
  %i.lt = icmp slt i8 %i.ko, 0
  br i1 %i.lt, label %.preheader.preheader, label %bb.x

.preheader.preheader:                             ; preds = %._crit_edge
  %i.lu = load <2 x i64>, ptr %i.b, align 8, !tbaa !26
  %i.lv = xor <2 x i64> %i.lu, splat (i64 -1)
  store <2 x i64> %i.lv, ptr %i.b, align 8, !tbaa !26
  %i.lw = load <2 x i64>, ptr %i.er, align 8, !tbaa !26
  %i.lx = xor <2 x i64> %i.lw, splat (i64 -1)
  store <2 x i64> %i.lx, ptr %i.er, align 8, !tbaa !26
  %i.ly = load i64, ptr %i.e, align 8, !tbaa !26
  %i.lz = xor i64 %i.ly, -1
  store i64 %i.lz, ptr %i.e, align 8, !tbaa !26
  %i.ma = load i64, ptr %i.b, align 8, !tbaa !26
  %i.mb = add i64 %i.ma, 1                        ; 2 uses
  store i64 %i.mb, ptr %i.b, align 8, !tbaa !26
  %.not465.a = icmp eq i64 %i.mb, 0
  br i1 %.not465.a, label %.preheader.i.1, label %mbedtls_ecp_fix_negative.exit

.preheader.i.1:                                   ; preds = %.preheader.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !26
  %i.me = add i64 %i.md, 1                        ; 2 uses
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !26
  %.not466.a = icmp eq i64 %i.me, 0
  br i1 %.not466.a, label %.preheader.i.2, label %mbedtls_ecp_fix_negative.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !26
  %i.mh = add i64 %i.mg, 1                        ; 2 uses
  store i64 %i.mh, ptr %i.mf, align 8, !tbaa !26
  %.not467.a = icmp eq i64 %i.mh, 0
  br i1 %.not467.a, label %.preheader.i.3, label %mbedtls_ecp_fix_negative.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !26
  %i.mk = add i64 %i.mj, 1                        ; 2 uses
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !26
  %.not468 = icmp eq i64 %i.mk, 0
  br i1 %.not468, label %.preheader.i.4, label %mbedtls_ecp_fix_negative.exit

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !26
  %i.mn = add i64 %i.mm, 1
  store i64 %i.mn, ptr %i.ml, align 8, !tbaa !26
  br label %mbedtls_ecp_fix_negative.exit

mbedtls_ecp_fix_negative.exit:                    ; preds = %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.preheader
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.mo, align 8, !tbaa !18
  %i.mp = sext i8 %i.ko to i64
  %i.mq = load i64, ptr %i.e, align 8, !tbaa !26
  %i.mr = sub i64 %i.mq, %i.mp
  store i64 %i.mr, ptr %i.e, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %mbedtls_ecp_fix_negative.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @ecp_mod_p384(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @mbedtls_mpi_grow(ptr noundef %0, i64 noundef 13) #5 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 26 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 8 uses
  %i.h = add i32 %i.g, %i.d                       ; 2 uses
  %i.i = icmp ult i32 %i.h, %i.g
  %i.j = zext i1 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32                ; 16 uses
  %i.o = add i32 %i.h, %i.n                       ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.n
  %i.q = zext i1 %i.p to i8
  %i.r = add nuw nsw i8 %i.q, %i.j
  %i.s = trunc i64 %i.l to i32                    ; 14 uses
  %i.t = add i32 %i.o, %i.s                       ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.s
  %i.v = zext i1 %i.u to i8
  %i.w = add nuw nsw i8 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32               ; 22 uses
  %i.ab = icmp ult i32 %i.t, %i.aa
  %.neg.i = sext i1 %i.ab to i8
  %i.ac = add nsw i8 %i.w, %.neg.i                ; 2 uses
  %i.ad = sub i32 %i.t, %i.aa
  %i.ae = zext i32 %i.ad to i64
  %i.af = lshr i64 %i.c, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  %i.ah = sext i8 %i.ac to i32                    ; 4 uses
  %i.ai = icmp slt i8 %i.ac, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i32 0, %i.ah
  %i.ak = icmp ult i32 %i.ag, %i.aj
  %.neg.i325 = sext i1 %i.ak to i8
  %i.al = add i32 %i.ah, %i.ag
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.am = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.an = icmp ult i32 %i.am, %i.ah
  %i.ao = zext i1 %i.an to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0586 = phi i8 [ %.neg.i325, %bb.c ], [ %i.ao, %bb.d ]
  %.0585 = phi i32 [ %i.al, %bb.c ], [ %i.am, %bb.d ]
  %i.ap = lshr i64 %i.f, 32
  %i.aq = trunc nuw i64 %i.ap to i32              ; 8 uses
  %i.ar = add i32 %.0585, %i.aq                   ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.aq
  %i.at = zext i1 %i.as to i8
  %i.au = add nsw i8 %.0586, %i.at
  %i.av = trunc i64 %i.y to i32                   ; 16 uses
  %i.aw = add i32 %i.ar, %i.av                    ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.av
  %i.ay = zext i1 %i.ax to i8
  %i.az = add nsw i8 %i.au, %i.ay
  %i.ba = add i32 %i.aw, %i.aa                    ; 3 uses
  %i.bb = icmp ult i32 %i.ba, %i.aa
  %i.bc = zext i1 %i.bb to i8
  %i.bd = add nsw i8 %i.az, %i.bc
  %i.be = icmp ult i32 %i.ba, %i.g
  %.neg.i326 = sext i1 %i.be to i8
  %i.bf = add nsw i8 %i.bd, %.neg.i326
  %i.bg = sub i32 %i.ba, %i.g                     ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.s
  %.neg.i327 = sext i1 %i.bh to i8
  %i.bi = add nsw i8 %i.bf, %.neg.i327            ; 2 uses
  %i.bj = sub i32 %i.bg, %i.s
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw i64 %i.bk, 32
  %i.bm = or disjoint i64 %i.bl, %i.ae
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %i.bq = sext i8 %i.bi to i32                    ; 4 uses
  %i.br = icmp slt i8 %i.bi, 0
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = sub nsw i32 0, %i.bq
  %i.bt = icmp ult i32 %i.bp, %i.bs
  %.neg.i328 = sext i1 %i.bt to i8
  %i.bu = add i32 %i.bq, %i.bp
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bv = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %i.bq
  %i.bx = zext i1 %i.bw to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1587 = phi i8 [ %.neg.i328, %bb.f ], [ %i.bx, %bb.g ]
  %.1 = phi i32 [ %i.bu, %bb.f ], [ %i.bv, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 8 uses
  %i.cb = add i32 %.1, %i.ca                      ; 2 uses
  %i.cc = icmp ult i32 %i.cb, %i.ca
  %i.cd = zext i1 %i.cc to i8
  %i.ce = add nsw i8 %.1587, %i.cd
  %i.cf = add i32 %i.cb, %i.aa                    ; 3 uses
  %i.cg = icmp ult i32 %i.cf, %i.aa
  %i.ch = zext i1 %i.cg to i8
  %i.ci = add nsw i8 %i.ce, %i.ch
  %i.cj = icmp ult i32 %i.cf, %i.aq
  %.neg.i329 = sext i1 %i.cj to i8
  %i.ck = add nsw i8 %i.ci, %.neg.i329
  %i.cl = sub i32 %i.cf, %i.aq                    ; 2 uses
  %i.cm = icmp ult i32 %i.cl, %i.n
  %.neg.i330 = sext i1 %i.cm to i8
  %i.cn = add nsw i8 %i.ck, %.neg.i330            ; 2 uses
  %i.co = sub i32 %i.cl, %i.n
  %i.cp = zext i32 %i.co to i64
  %i.cq = lshr i64 %i.bo, 32
end_hunk_0
begin_hunk_1_@ecp_mod_p384:bb.a
  %i.ki = icmp ult i32 %i.ke, %i.il
  %.neg.i344 = sext i1 %i.ki to i8
  %i.kj = add nsw i8 %i.kh, %.neg.i344            ; 2 uses
  %i.kk = sub i32 %i.ke, %i.il
  %i.kl = zext i32 %i.kk to i64
  %i.km = shl nuw i64 %i.kl, 32
  %i.kn = or disjoint i64 %i.km, %i.jf
  store i64 %i.kn, ptr %i.hq, align 8, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !26 ; 2 uses
  %i.kq = trunc i64 %i.kp to i32                  ; 3 uses
  %i.kr = sext i8 %i.kj to i32                    ; 4 uses
  %i.ks = icmp slt i8 %i.kj, 0
  br i1 %i.ks, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kt = sub nsw i32 0, %i.kr
  %i.ku = icmp ult i32 %i.kq, %i.kt
  %.neg.i345 = sext i1 %i.ku to i8
  %i.kv = add i32 %i.kr, %i.kq
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.kw = add i32 %i.kr, %i.kq                    ; 2 uses
  %i.kx = icmp ult i32 %i.kw, %i.kr
  %i.ky = zext i1 %i.kx to i8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.7593 = phi i8 [ %.neg.i345, %bb.x ], [ %i.ky, %bb.y ]
  %.7 = phi i32 [ %i.kv, %bb.x ], [ %i.kw, %bb.y ]
  %i.kz = add i32 %.7, %i.s                       ; 2 uses
  %i.la = icmp ult i32 %i.kz, %i.s
  %i.lb = zext i1 %i.la to i8
  %i.lc = add nsw i8 %.7593, %i.lb
  %i.ld = add i32 %i.kz, %i.gm                    ; 2 uses
  %i.le = icmp ult i32 %i.ld, %i.gm
  %i.lf = zext i1 %i.le to i8
  %i.lg = add nsw i8 %i.lc, %i.lf
  %i.lh = add i32 %i.ld, %i.et                    ; 3 uses
  %i.li = icmp ult i32 %i.lh, %i.et
  %i.lj = zext i1 %i.li to i8
  %i.lk = add nsw i8 %i.lg, %i.lj
  %i.ll = icmp ult i32 %i.lh, %i.jr
  %.neg.i346 = sext i1 %i.ll to i8
  %i.lm = add nsw i8 %i.lk, %.neg.i346            ; 2 uses
  %i.ln = sub i32 %i.lh, %i.jr
  %i.lo = zext i32 %i.ln to i64
  %i.lp = lshr i64 %i.kp, 32
  %i.lq = trunc nuw i64 %i.lp to i32              ; 3 uses
  %i.lr = sext i8 %i.lm to i32                    ; 4 uses
  %i.ls = icmp slt i8 %i.lm, 0
  br i1 %i.ls, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.lt = sub nsw i32 0, %i.lr
  %i.lu = icmp ult i32 %i.lq, %i.lt
  %.neg.i347 = sext i1 %i.lu to i8
  %i.lv = add i32 %i.lr, %i.lq
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.lw = add i32 %i.lr, %i.lq                    ; 2 uses
  %i.lx = icmp ult i32 %i.lw, %i.lr
  %i.ly = zext i1 %i.lx to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.8594 = phi i8 [ %.neg.i347, %bb.aa ], [ %i.ly, %bb.ab ]
  %.8 = phi i32 [ %i.lv, %bb.aa ], [ %i.lw, %bb.ab ]
  %i.lz = add i32 %.8, %i.n                       ; 2 uses
  %i.ma = icmp ult i32 %i.lz, %i.n
  %i.mb = zext i1 %i.ma to i8
  %i.mc = add nsw i8 %.8594, %i.mb
  %i.md = add i32 %i.lz, %i.il                    ; 2 uses
  %i.me = icmp ult i32 %i.md, %i.il
  %i.mf = zext i1 %i.me to i8
  %i.mg = add nsw i8 %i.mc, %i.mf
  %i.mh = add i32 %i.md, %i.gm                    ; 3 uses
  %i.mi = icmp ult i32 %i.mh, %i.gm
  %i.mj = zext i1 %i.mi to i8
  %i.mk = add nsw i8 %i.mg, %i.mj
  %i.ml = icmp ult i32 %i.mh, %i.s
  %.neg.i348 = sext i1 %i.ml to i8
  %i.mm = add nsw i8 %i.mk, %.neg.i348            ; 2 uses
  %i.mn = sub i32 %i.mh, %i.s
  %i.mo = zext i32 %i.mn to i64
  %i.mp = shl nuw i64 %i.mo, 32
  %i.mq = or disjoint i64 %i.mp, %i.lo
  store i64 %i.mq, ptr %i.ko, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !26 ; 2 uses
  %i.mt = trunc i64 %i.ms to i32                  ; 3 uses
  %i.mu = sext i8 %i.mm to i32                    ; 4 uses
  %i.mv = icmp slt i8 %i.mm, 0
  br i1 %i.mv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mw = sub nsw i32 0, %i.mu
  %i.mx = icmp ult i32 %i.mt, %i.mw
  %.neg.i349 = sext i1 %i.mx to i8
  %i.my = add i32 %i.mu, %i.mt
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.mz = add i32 %i.mu, %i.mt                    ; 2 uses
  %i.na = icmp ult i32 %i.mz, %i.mu
  %i.nb = zext i1 %i.na to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.9595 = phi i8 [ %.neg.i349, %bb.ad ], [ %i.nb, %bb.ae ]
  %.9 = phi i32 [ %i.my, %bb.ad ], [ %i.mz, %bb.ae ]
  %i.nc = add i32 %.9, %i.av                      ; 2 uses
  %i.nd = icmp ult i32 %i.nc, %i.av
  %i.ne = zext i1 %i.nd to i8
  %i.nf = add nsw i8 %.9595, %i.ne
  %i.ng = add i32 %i.nc, %i.jr                    ; 2 uses
  %i.nh = icmp ult i32 %i.ng, %i.jr
  %i.ni = zext i1 %i.nh to i8
  %i.nj = add nsw i8 %i.nf, %i.ni
  %i.nk = add i32 %i.ng, %i.il                    ; 3 uses
  %i.nl = icmp ult i32 %i.nk, %i.il
  %i.nm = zext i1 %i.nl to i8
  %i.nn = add nsw i8 %i.nj, %i.nm
  %i.no = icmp ult i32 %i.nk, %i.n
  %.neg.i350 = sext i1 %i.no to i8
  %i.np = add nsw i8 %i.nn, %.neg.i350            ; 2 uses
  %i.nq = sub i32 %i.nk, %i.n
  %i.nr = zext i32 %i.nq to i64
  %i.ns = lshr i64 %i.ms, 32
  %i.nt = trunc nuw i64 %i.ns to i32              ; 3 uses
  %i.nu = sext i8 %i.np to i32                    ; 4 uses
  %i.nv = icmp slt i8 %i.np, 0
  br i1 %i.nv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.nw = sub nsw i32 0, %i.nu
  %i.nx = icmp ult i32 %i.nt, %i.nw
  %.neg.i351 = sext i1 %i.nx to i8
  %i.ny = add i32 %i.nu, %i.nt
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.nz = add i32 %i.nu, %i.nt                    ; 2 uses
  %i.oa = icmp ult i32 %i.nz, %i.nu
  %i.ob = zext i1 %i.oa to i8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.10596 = phi i8 [ %.neg.i351, %bb.ag ], [ %i.ob, %bb.ah ]
  %.10 = phi i32 [ %i.ny, %bb.ag ], [ %i.nz, %bb.ah ]
  %i.oc = add i32 %.10, %i.aa                     ; 2 uses
  %i.od = icmp ult i32 %i.oc, %i.aa
  %i.oe = zext i1 %i.od to i8
  %i.of = add nsw i8 %.10596, %i.oe
  %i.og = add i32 %i.oc, %i.s                     ; 2 uses
  %i.oh = icmp ult i32 %i.og, %i.s
  %i.oi = zext i1 %i.oh to i8
  %i.oj = add nsw i8 %i.of, %i.oi
  %i.ok = add i32 %i.og, %i.jr                    ; 3 uses
  %i.ol = icmp ult i32 %i.ok, %i.jr
  %i.om = zext i1 %i.ol to i8
  %i.on = add nsw i8 %i.oj, %i.om
  %i.oo = icmp ult i32 %i.ok, %i.av
  %.neg.i352 = sext i1 %i.oo to i8
  %i.op = add nsw i8 %i.on, %.neg.i352            ; 3 uses
  %i.oq = sub i32 %i.ok, %i.av
  %i.or = zext i32 %i.oq to i64
  %i.os = shl nuw i64 %i.or, 32
  %i.ot = or disjoint i64 %i.os, %i.nr
  store i64 %i.ot, ptr %i.mr, align 8, !tbaa !26
  %i.ou = tail call i8 @llvm.smax.i8(i8 %i.op, i8 0)
  %i.ov = and i64 %i.f, -4294967296
  %i.ow = zext nneg i8 %i.ou to i64
  %i.ox = or disjoint i64 %i.ov, %i.ow
  store i64 %i.ox, ptr %i.e, align 8, !tbaa !26
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !19 ; 3 uses
  %i.pa = icmp ugt i16 %i.oz, 6
  br i1 %i.pa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ai
  %i.pb = icmp eq i16 %i.oz, 7
  br i1 %i.pb, label %.lr.ph.epil, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %i.pc = zext i16 %i.oz to i64
  %i.pd = shl nuw nsw i64 %i.pc, 1
  %i.pe = add nsw i64 %i.pd, -16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.pf = phi i64 [ 13, %.lr.ph.preheader.new ], [ %i.pp, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %i.pg = lshr i64 %i.pf, 1
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pg ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !26
  %i.pj = and i64 %i.pi, 4294967295
  store i64 %i.pj, ptr %i.ph, align 8, !tbaa !26
  %i.pk = add nuw nsw i64 %i.pf, 1
  %i.pl = lshr i64 %i.pk, 1
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pl ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !26
  %i.po = and i64 %i.pn, -4294967296
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !26
  %i.pp = add nuw nsw i64 %i.pf, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.pe
  br i1 %niter.ncmp.1, label %.lr.ph.epil, label %.lr.ph, !llvm.loop !29

.lr.ph.epil:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %.epil.init = phi i64 [ 13, %.lr.ph.preheader ], [ %i.pp, %.lr.ph ] ; 2 uses
  %.not324.epil = trunc i64 %.epil.init to i1
  %i.pq = lshr i64 %.epil.init, 1
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pq ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !26
  %..epil = select i1 %.not324.epil, i64 4294967295, i64 -4294967296
  %i.pt = and i64 %i.ps, %..epil
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil, %bb.ai
  %i.pu = icmp slt i8 %i.op, 0
  br i1 %i.pu, label %.preheader.preheader, label %bb.aj

.preheader.preheader:                             ; preds = %._crit_edge
  %i.pv = load <2 x i64>, ptr %i.b, align 8, !tbaa !26
  %i.pw = xor <2 x i64> %i.pv, splat (i64 -1)
  store <2 x i64> %i.pw, ptr %i.b, align 8, !tbaa !26
  %i.px = load <2 x i64>, ptr %i.ee, align 8, !tbaa !26
  %i.py = xor <2 x i64> %i.px, splat (i64 -1)
  store <2 x i64> %i.py, ptr %i.ee, align 8, !tbaa !26
  %i.pz = load <2 x i64>, ptr %i.ko, align 8, !tbaa !26
  %i.qa = xor <2 x i64> %i.pz, splat (i64 -1)
  store <2 x i64> %i.qa, ptr %i.ko, align 8, !tbaa !26
  %i.qb = load i64, ptr %i.e, align 8, !tbaa !26
  %i.qc = xor i64 %i.qb, -1
  store i64 %i.qc, ptr %i.e, align 8, !tbaa !26
  %i.qd = load i64, ptr %i.b, align 8, !tbaa !26
  %i.qe = add i64 %i.qd, 1                        ; 2 uses
  store i64 %i.qe, ptr %i.b, align 8, !tbaa !26
  %.not604.a = icmp eq i64 %i.qe, 0
  br i1 %.not604.a, label %.preheader.i.1, label %mbedtls_ecp_fix_negative.exit

.preheader.i.1:                                   ; preds = %.preheader.preheader
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !26
  %i.qh = add i64 %i.qg, 1                        ; 2 uses
  store i64 %i.qh, ptr %i.qf, align 8, !tbaa !26
  %.not605.a = icmp eq i64 %i.qh, 0
  br i1 %.not605.a, label %.preheader.i.2, label %mbedtls_ecp_fix_negative.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !26
  %i.qk = add i64 %i.qj, 1                        ; 2 uses
  store i64 %i.qk, ptr %i.qi, align 8, !tbaa !26
  %.not606.a = icmp eq i64 %i.qk, 0
  br i1 %.not606.a, label %.preheader.i.3, label %mbedtls_ecp_fix_negative.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !26
  %i.qn = add i64 %i.qm, 1                        ; 2 uses
  store i64 %i.qn, ptr %i.ql, align 8, !tbaa !26
  %.not607.a = icmp eq i64 %i.qn, 0
  br i1 %.not607.a, label %.preheader.i.4, label %mbedtls_ecp_fix_negative.exit

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !26
  %i.qq = add i64 %i.qp, 1                        ; 2 uses
  store i64 %i.qq, ptr %i.qo, align 8, !tbaa !26
  %.not608.a = icmp eq i64 %i.qq, 0
  br i1 %.not608.a, label %.preheader.i.5, label %mbedtls_ecp_fix_negative.exit

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !26
  %i.qt = add i64 %i.qs, 1                        ; 2 uses
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !26
  %.not609 = icmp eq i64 %i.qt, 0
  br i1 %.not609, label %.preheader.i.6, label %mbedtls_ecp_fix_negative.exit

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !26
  %i.qw = add i64 %i.qv, 1
  store i64 %i.qw, ptr %i.qu, align 8, !tbaa !26
  br label %mbedtls_ecp_fix_negative.exit

mbedtls_ecp_fix_negative.exit:                    ; preds = %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.preheader
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.qx, align 8, !tbaa !18
  %i.qy = sext i8 %i.op to i64
  %i.qz = load i64, ptr %i.e, align 8, !tbaa !26
  %i.ra = sub i64 %i.qz, %i.qy
  store i64 %i.ra, ptr %i.e, align 8, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %mbedtls_ecp_fix_negative.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @ecp_mod_p521(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  %i.a = alloca [10 x i64], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !19   ; 2 uses
  %i.d = icmp ult i16 %i.c, 9
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.e, align 8, !tbaa !18
  %i.f = add i16 %i.c, -8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10
  %spec.select = tail call i16 @llvm.umin.i16(i16 %i.f, i16 10) ; 2 uses
  store i16 %spec.select, ptr %i.g, align 2, !tbaa !19
  store ptr %i.a, ptr %1, align 8, !tbaa !20
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = shl nuw nsw i16 %spec.select, 3
  %i.k = zext nneg i16 %i.j to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.i, i64 %i.k, i1 false)
  %i.l = call i32 @mbedtls_mpi_shift_r(ptr noundef nonnull %1, i64 noundef 9) #5 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = and i64 %i.o, 511
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %i.q = load i16, ptr %i.b, align 2, !tbaa !19   ; 2 uses
  %i.r = icmp ugt i16 %i.q, 9
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = zext i16 %i.q to i64
  %scevgep = getelementptr i8, ptr %i.m, i64 72
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nsw i64 %i.t, -72
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.u, i1 false), !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %i.v = call i32 @mbedtls_mpi_add_abs(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %i.v, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal i32 @ecp_mod_p256k1(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.mbedtls_mpi, align 8        ; 11 uses
  %2 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  %i.a = alloca [6 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !19   ; 4 uses
  %i.d = icmp ult i16 %i.c, 4
  br i1 %i.d, label %ecp_mod_koblitz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 1, ptr %i.e, align 8, !tbaa !18
  store ptr @ecp_mod_p256k1.Rp, ptr %2, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 1, ptr %i.f, align 2, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.g, align 8, !tbaa !18
  store ptr %i.a, ptr %1, align 8, !tbaa !20
  %i.h = add i16 %i.c, -4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.h, i16 4) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  %i.l = shl nuw nsw i16 %spec.select.i, 3
  %i.m = zext nneg i16 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.k, i64 %i.m, i1 false)
  %i.n = add nuw nsw i16 %spec.select.i, 1
  store i16 %i.n, ptr %i.i, align 2, !tbaa !19
  %.not6.i = icmp eq i16 %i.c, 4
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.o = zext i16 %i.c to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = add nsw i64 %i.p, -32
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.q, i1 false), !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %i.r = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %2) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.c, label %ecp_mod_koblitz.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.s = call i32 @mbedtls_mpi_add_abs(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %1) #5 ; 2 uses
  %.not66.i = icmp eq i32 %i.s, 0
  br i1 %.not66.i, label %bb.d, label %ecp_mod_koblitz.exit

bb.d:                                             ; preds = %bb.c
end_hunk_1
