inline.NumInlined: 218
inline.NumDeleted: 10
begin_hunk_0_@ecp_mod_p256:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 20 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %2 = lshr i64 %i.f, 32
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %5 = load i64, ptr %1, align 8, !tbaa !26       ; 3 uses
  %6 = load i64, ptr %4, align 8, !tbaa !26       ; 2 uses
  %7 = load i64, ptr %3, align 8, !tbaa !26       ; 2 uses
  %8 = lshr i64 %5, 32
  %9 = lshr i64 %7, 32
  %10 = trunc nuw i64 %8 to i32                   ; 10 uses
  %11 = trunc i64 %5 to i32                       ; 8 uses
  %12 = trunc nuw i64 %9 to i32                   ; 20 uses
  %13 = trunc i64 %6 to i32                       ; 18 uses
  %14 = add i32 %11, %i.d                         ; 2 uses
  %15 = icmp ult i32 %14, %11
  %16 = zext i1 %15 to i8
  %17 = add i32 %14, %10                          ; 3 uses
  %18 = icmp ult i32 %17, %10
  %19 = zext i1 %18 to i8
  %20 = add nuw nsw i8 %19, %16
  %21 = trunc i64 %7 to i32                       ; 14 uses
  %i.g = trunc nuw i64 %2 to i32                  ; 12 uses
  %i.h = icmp ult i32 %17, %i.g
  %.neg.i234.a = sext i1 %i.h to i8
  %i.i = add nsw i8 %20, %.neg.i234.a
  %i.j = sub i32 %17, %i.g                        ; 2 uses
  %i.k = icmp ult i32 %i.j, %21
  %.neg.i235.a = sext i1 %i.k to i8
  %i.l = add nsw i8 %i.i, %.neg.i235.a
  %i.m = sub i32 %i.j, %21                        ; 2 uses
  %22 = icmp ult i32 %i.m, %12
  %.neg.i235 = sext i1 %22 to i8
  %23 = add nsw i8 %i.l, %.neg.i235
  %24 = sub i32 %i.m, %12                         ; 2 uses
  %i.n = icmp ult i32 %24, %13
  %.neg.i236 = sext i1 %i.n to i8
  %i.o = add nsw i8 %23, %.neg.i236               ; 2 uses
  %i.p = sub i32 %24, %13
  %i.q = zext i32 %i.p to i64
  %i.r = lshr i64 %i.c, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 3 uses
end_hunk_0
begin_hunk_1_@ecp_mod_p256:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0453 = phi i8 [ %.neg.i237, %bb.c ], [ %i.aa, %bb.d ]
  %.0452 = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ]
  %i.ab = add i32 %.0452, %10                     ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %10
  %i.ad = zext i1 %i.ac to i8
  %i.ae = add nsw i8 %.0453, %i.ad
  %i.af = trunc i64 %i.f to i32                   ; 10 uses
  %i.ag = add i32 %i.ab, %i.af                    ; 3 uses
  %i.ah = icmp ult i32 %i.ag, %i.af
  %i.ai = zext i1 %i.ah to i8
  %i.aj = add nsw i8 %i.ae, %i.ai
  %i.ak = icmp ult i32 %i.ag, %21
  %.neg.i238 = sext i1 %i.ak to i8
  %i.al = add nsw i8 %i.aj, %.neg.i238
  %i.am = sub i32 %i.ag, %21                      ; 2 uses
  %i.an = icmp ult i32 %i.am, %12
  %.neg.i239 = sext i1 %i.an to i8
  %i.ao = add nsw i8 %i.al, %.neg.i239
  %i.ap = sub i32 %i.am, %12                      ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %13
  %.neg.i240 = sext i1 %i.aq to i8
  %i.ar = add nsw i8 %i.ao, %.neg.i240
  %i.as = sub i32 %i.ap, %13                      ; 2 uses
  %i.at = lshr i64 %6, 32
  %i.au = trunc nuw i64 %i.at to i32              ; 18 uses
  %i.av = icmp ult i32 %i.as, %i.au
  %.neg.i241 = sext i1 %i.av to i8
end_hunk_1
begin_hunk_2_@ecp_mod_p256:bb.a
  %i.bn = icmp ult i32 %i.bm, %i.af
  %i.bo = zext i1 %i.bn to i8
  %i.bp = add nsw i8 %.1454, %i.bo
  %i.bq = add i32 %i.bm, %i.g                     ; 3 uses
  %i.br = icmp ult i32 %i.bq, %i.g
  %i.bs = zext i1 %i.br to i8
  %i.bt = add nsw i8 %i.bp, %i.bs
  %i.bu = icmp ult i32 %i.bq, %12
  %.neg.i243 = sext i1 %i.bu to i8
  %i.bv = add nsw i8 %i.bt, %.neg.i243
  %i.bw = sub i32 %i.bq, %12                      ; 2 uses
  %i.bx = icmp ult i32 %i.bw, %13
  %.neg.i244 = sext i1 %i.bx to i8
  %i.by = add nsw i8 %i.bv, %.neg.i244
  %i.bz = sub i32 %i.bw, %13                      ; 2 uses
  %i.ca = icmp ult i32 %i.bz, %i.au
  %.neg.i245 = sext i1 %i.ca to i8
  %i.cb = add nsw i8 %i.by, %.neg.i245            ; 2 uses
end_hunk_2
begin_hunk_3_@ecp_mod_p256:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %.2455 = phi i8 [ %.neg.i246, %bb.i ], [ %i.cn, %bb.j ]
  %.2 = phi i32 [ %i.ck, %bb.i ], [ %i.cl, %bb.j ]
  %i.co = add i32 %.2, %i.g                       ; 2 uses
  %25 = add i32 %i.co, %i.g                       ; 2 uses
  %i.cp = add i32 %25, %21                        ; 2 uses
  %26 = add i32 %i.cp, %21                        ; 2 uses
  %27 = add i32 %26, %12                          ; 3 uses
  %28 = sub i32 %27, %i.au                        ; 2 uses
  %29 = sub i32 %28, %11                          ; 2 uses
  %i.cq = icmp ult i32 %29, %10
  %30 = icmp ult i32 %28, %11
  %31 = icmp ult i32 %27, %i.au
  %i.cr = icmp ult i32 %27, %12
  %32 = icmp ult i32 %26, %21
  %33 = icmp ult i32 %i.cp, %21
  %34 = icmp ult i32 %25, %i.g
  %i.cs = icmp ult i32 %i.co, %i.g
  %35 = insertelement <8 x i1> poison, i1 %i.cs, i64 0
  %36 = insertelement <8 x i1> %35, i1 %34, i64 1
  %37 = insertelement <8 x i1> %36, i1 %33, i64 2
  %38 = insertelement <8 x i1> %37, i1 %32, i64 3
  %39 = insertelement <8 x i1> %38, i1 %i.cr, i64 4
  %40 = insertelement <8 x i1> %39, i1 %31, i64 5
  %41 = insertelement <8 x i1> %40, i1 %30, i64 6
  %42 = insertelement <8 x i1> %41, i1 %i.cq, i64 7 ; 2 uses
  %43 = zext <8 x i1> %42 to <8 x i8>
  %44 = sext <8 x i1> %42 to <8 x i8>
  %45 = shufflevector <8 x i8> %43, <8 x i8> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %46 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %45)
  %i.ct = add i8 %46, %.2455                      ; 2 uses
  %i.cu = sub i32 %29, %10
  %i.cv = zext i32 %i.cu to i64
  %i.cw = shl nuw i64 %i.cv, 32
  %i.cx = or disjoint i64 %i.cw, %i.cd
end_hunk_3
begin_hunk_4_@ecp_mod_p256:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %.3456 = phi i8 [ %.neg.i250, %bb.l ], [ %i.di, %bb.m ]
  %.3 = phi i32 [ %i.df, %bb.l ], [ %i.dg, %bb.m ]
  %i.dj = add i32 %.3, %21                        ; 2 uses
  %i.dk = icmp ult i32 %i.dj, %21
  %i.dl = zext i1 %i.dk to i8
  %i.dm = add nsw i8 %.3456, %i.dl
  %i.dn = add i32 %i.dj, %21                      ; 2 uses
  %i.do = icmp ult i32 %i.dn, %21
  %i.dp = zext i1 %i.do to i8
  %i.dq = add nsw i8 %i.dm, %i.dp
  %i.dr = add i32 %i.dn, %12                      ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %12
  %i.dt = zext i1 %i.ds to i8
  %i.du = add nsw i8 %i.dq, %i.dt
  %i.dv = add i32 %i.dr, %12                      ; 2 uses
  %i.dw = icmp ult i32 %i.dv, %12
  %i.dx = zext i1 %i.dw to i8
  %i.dy = add nsw i8 %i.du, %i.dx
  %i.dz = add i32 %i.dv, %13                      ; 3 uses
  %i.ea = icmp ult i32 %i.dz, %13
  %i.eb = zext i1 %i.ea to i8
  %i.ec = add nsw i8 %i.dy, %i.eb
  %i.ed = icmp ult i32 %i.dz, %10
  %.neg.i251 = sext i1 %i.ed to i8
  %i.ee = add nsw i8 %i.ec, %.neg.i251
  %i.ef = sub i32 %i.dz, %10                      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.af
  %.neg.i252 = sext i1 %i.eg to i8
  %i.eh = add nsw i8 %i.ee, %.neg.i252            ; 2 uses
end_hunk_4
begin_hunk_5_@ecp_mod_p256:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %.4457 = phi i8 [ %.neg.i253, %bb.o ], [ %i.et, %bb.p ]
  %.4 = phi i32 [ %i.eq, %bb.o ], [ %i.er, %bb.p ]
  %i.eu = add i32 %.4, %12                        ; 2 uses
  %i.ev = icmp ult i32 %i.eu, %12
  %i.ew = zext i1 %i.ev to i8
  %i.ex = add nsw i8 %.4457, %i.ew
  %i.ey = add i32 %i.eu, %12                      ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %12
  %i.fa = zext i1 %i.ez to i8
  %i.fb = add nsw i8 %i.ex, %i.fa
  %i.fc = add i32 %i.ey, %13                      ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %13
  %i.fe = zext i1 %i.fd to i8
  %i.ff = add nsw i8 %i.fb, %i.fe
  %i.fg = add i32 %i.fc, %13                      ; 2 uses
  %i.fh = icmp ult i32 %i.fg, %13
  %i.fi = zext i1 %i.fh to i8
  %i.fj = add nsw i8 %i.ff, %i.fi
  %i.fk = add i32 %i.fg, %i.au                    ; 3 uses
end_hunk_5
begin_hunk_6_@ecp_mod_p256:bb.a
  %.neg.i254 = sext i1 %i.fo to i8
  %i.fp = add nsw i8 %i.fn, %.neg.i254
  %i.fq = sub i32 %i.fk, %i.af                    ; 2 uses
  %i.fr = icmp ult i32 %i.fq, %i.g
  %.neg.i255 = sext i1 %i.fr to i8
  %i.fs = add nsw i8 %i.fp, %.neg.i255            ; 2 uses
  %i.ft = sub i32 %i.fq, %i.g
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fu, 32
  %i.fw = or disjoint i64 %i.fv, %i.ej
end_hunk_6
begin_hunk_7_@ecp_mod_p256:bb.a
bb.t:                                             ; preds = %bb.s, %bb.r
  %.5458 = phi i8 [ %.neg.i256, %bb.r ], [ %i.gh, %bb.s ]
  %.5 = phi i32 [ %i.ge, %bb.r ], [ %i.gf, %bb.s ]
  %i.gi = add i32 %.5, %13                        ; 2 uses
  %i.gj = add i32 %i.gi, %13                      ; 2 uses
  %47 = add i32 %i.gj, %i.au                      ; 2 uses
  %48 = add i32 %47, %i.au                        ; 2 uses
  %49 = add i32 %48, %13                          ; 2 uses
  %i.gk = add i32 %49, %12                        ; 3 uses
  %50 = sub i32 %i.gk, %11                        ; 2 uses
  %51 = icmp ult i32 %50, %10
  %52 = icmp ult i32 %i.gk, %11
  %53 = icmp ult i32 %i.gk, %12
  %i.gl = icmp ult i32 %49, %13
  %54 = icmp ult i32 %48, %i.au
  %55 = icmp ult i32 %47, %i.au
  %56 = icmp ult i32 %i.gj, %13
  %i.gm = icmp ult i32 %i.gi, %13
  %57 = insertelement <8 x i1> poison, i1 %i.gm, i64 0
  %58 = insertelement <8 x i1> %57, i1 %56, i64 1
  %59 = insertelement <8 x i1> %58, i1 %55, i64 2
  %60 = insertelement <8 x i1> %59, i1 %54, i64 3
  %61 = insertelement <8 x i1> %60, i1 %i.gl, i64 4
  %62 = insertelement <8 x i1> %61, i1 %53, i64 5
  %63 = insertelement <8 x i1> %62, i1 %52, i64 6
  %64 = insertelement <8 x i1> %63, i1 %51, i64 7 ; 2 uses
  %65 = zext <8 x i1> %64 to <8 x i8>
  %66 = sext <8 x i1> %64 to <8 x i8>
  %67 = shufflevector <8 x i8> %65, <8 x i8> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %68 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %67)
  %i.gn = add i8 %68, %.5458                      ; 2 uses
  %i.go = sub i32 %50, %10
  %i.gp = zext i32 %i.go to i64
  %i.gq = lshr i64 %i.fy, 32
  %i.gr = trunc nuw i64 %i.gq to i32              ; 3 uses
end_hunk_7
begin_hunk_8_@ecp_mod_p256:bb.a
  %i.hj = icmp ult i32 %i.hi, %i.au
  %i.hk = zext i1 %i.hj to i8
  %i.hl = add nsw i8 %i.hh, %i.hk
  %i.hm = add i32 %i.hi, %11                      ; 3 uses
  %i.hn = icmp ult i32 %i.hm, %11
  %i.ho = zext i1 %i.hn to i8
  %i.hp = add nsw i8 %i.hl, %i.ho
  %i.hq = icmp ult i32 %i.hm, %i.af
  %.neg.i260 = sext i1 %i.hq to i8
  %i.hr = add nsw i8 %i.hp, %.neg.i260
  %i.hs = sub i32 %i.hm, %i.af                    ; 2 uses
  %i.ht = icmp ult i32 %i.hs, %i.g
  %.neg.i261 = sext i1 %i.ht to i8
  %i.hu = add nsw i8 %i.hr, %.neg.i261
  %i.hv = sub i32 %i.hs, %i.g                     ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %21
  %.neg.i262 = sext i1 %i.hw to i8
  %i.hx = add nsw i8 %i.hu, %.neg.i262
  %i.hy = sub i32 %i.hv, %21                      ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %12
  %.neg.i263 = sext i1 %i.hz to i8
  %i.ia = add nsw i8 %i.hx, %.neg.i263            ; 3 uses
  %i.ib = sub i32 %i.hy, %12
  %i.ic = zext i32 %i.ib to i64
  %i.id = shl nuw i64 %i.ic, 32
  %i.ie = or disjoint i64 %i.id, %i.gp
  store i64 %i.ie, ptr %i.fx, align 8, !tbaa !26
  %i.if = tail call i8 @llvm.smax.i8(i8 %i.ia, i8 0)
  %i.ig = and i64 %5, -4294967296
  %i.ih = zext nneg i8 %i.if to i64
  %i.ii = or disjoint i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %1, align 8, !tbaa !26
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !19 ; 3 uses
  %i.il = icmp ugt i16 %i.ik, 4
end_hunk_8
begin_hunk_9_@ecp_mod_p256:bb.a
  %i.jj = load <2 x i64>, ptr %i.cy, align 8, !tbaa !26
  %i.jk = xor <2 x i64> %i.jj, splat (i64 -1)
  store <2 x i64> %i.jk, ptr %i.cy, align 8, !tbaa !26
  %i.jl = load i64, ptr %1, align 8, !tbaa !26
  %i.jm = xor i64 %i.jl, -1
  store i64 %i.jm, ptr %1, align 8, !tbaa !26
  %i.jn = load i64, ptr %i.b, align 8, !tbaa !26
  %i.jo = add i64 %i.jn, 1                        ; 2 uses
  store i64 %i.jo, ptr %i.b, align 8, !tbaa !26
end_hunk_9
begin_hunk_10_@ecp_mod_p256:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.kb, align 8, !tbaa !18
  %i.kc = sext i8 %i.ia to i64
  %i.kd = load i64, ptr %1, align 8, !tbaa !26
  %i.ke = sub i64 %i.kd, %i.kc
  store i64 %i.ke, ptr %1, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %mbedtls_ecp_fix_negative.exit, %bb.a
end_hunk_10
begin_hunk_11_@ecp_mod_p384:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %.3589 = phi i8 [ %.neg.i335, %bb.l ], [ %i.eo, %bb.m ]
  %.3 = phi i32 [ %i.el, %bb.l ], [ %i.em, %bb.m ]
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %2 = load i64, ptr %1, align 8, !tbaa !26       ; 2 uses
  %3 = trunc i64 %2 to i32                        ; 8 uses
  %i.ep = add i32 %.3, %i.n                       ; 2 uses
  %4 = add i32 %i.ep, %i.n                        ; 2 uses
  %5 = add i32 %4, %3                             ; 2 uses
  %6 = add i32 %5, %i.aq                          ; 2 uses
  %7 = add i32 %6, %i.g                           ; 2 uses
  %8 = add i32 %7, %i.s                           ; 2 uses
  %9 = add i32 %8, %i.av                          ; 3 uses
  %10 = icmp ult i32 %9, %i.db
  %i.eq = icmp ult i32 %9, %i.av
  %11 = icmp ult i32 %8, %i.s
  %12 = icmp ult i32 %7, %i.g
  %13 = icmp ult i32 %6, %i.aq
  %i.er = icmp ult i32 %5, %3
  %14 = icmp ult i32 %4, %i.n
  %15 = icmp ult i32 %i.ep, %i.n
  %16 = insertelement <8 x i1> poison, i1 %15, i64 0
  %17 = insertelement <8 x i1> %16, i1 %14, i64 1
  %18 = insertelement <8 x i1> %17, i1 %i.er, i64 2
  %19 = insertelement <8 x i1> %18, i1 %13, i64 3
  %20 = insertelement <8 x i1> %19, i1 %12, i64 4
  %21 = insertelement <8 x i1> %20, i1 %11, i64 5
  %22 = insertelement <8 x i1> %21, i1 %i.eq, i64 6
  %23 = insertelement <8 x i1> %22, i1 %10, i64 7 ; 2 uses
  %24 = zext <8 x i1> %23 to <8 x i8>
  %25 = sext <8 x i1> %23 to <8 x i8>
  %26 = shufflevector <8 x i8> %24, <8 x i8> %25, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %27 = sub i32 %9, %i.db                         ; 2 uses
  %i.es = icmp ult i32 %27, %i.aa
  %.neg.i336 = sext i1 %i.es to i8
  %i.et = sub i32 %27, %i.aa                      ; 2 uses
  %i.eu = icmp ult i32 %i.et, %i.aa
  %.neg.i337 = sext i1 %i.eu to i8
  %28 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %26)
  %op.rdx600 = add i8 %28, %.neg.i336
  %op.rdx601 = add nsw i8 %.3589, %.neg.i337
  %i.ev = add i8 %op.rdx600, %op.rdx601           ; 2 uses
  %i.ew = sub i32 %i.et, %i.aa
  %i.ex = zext i32 %i.ew to i64
  %i.ey = lshr i64 %i.ef, 32
  %i.ez = trunc nuw i64 %i.ey to i32              ; 3 uses
end_hunk_11
begin_hunk_12_@ecp_mod_p384:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %.4590 = phi i8 [ %.neg.i339, %bb.o ], [ %i.fh, %bb.p ]
  %.4 = phi i32 [ %i.fe, %bb.o ], [ %i.ff, %bb.p ]
  %29 = lshr i64 %2, 32
  %30 = trunc nuw i64 %29 to i32                  ; 8 uses
  %i.fi = add i32 %.4, %i.av                      ; 2 uses
  %31 = add i32 %i.fi, %i.av                      ; 2 uses
  %32 = add i32 %31, %30                          ; 2 uses
  %33 = add i32 %32, %i.ca                        ; 2 uses
  %34 = add i32 %33, %i.aq                        ; 2 uses
  %35 = add i32 %34, %i.n                         ; 2 uses
  %i.fj = add i32 %35, %i.aa                      ; 3 uses
  %i.fk = icmp ult i32 %i.fj, %3
  %36 = icmp ult i32 %i.fj, %i.aa
  %37 = icmp ult i32 %35, %i.n
  %i.fl = icmp ult i32 %34, %i.aq
  %38 = icmp ult i32 %33, %i.ca
  %39 = icmp ult i32 %32, %30
  %40 = icmp ult i32 %31, %i.av
  %i.fm = icmp ult i32 %i.fi, %i.av
  %41 = insertelement <8 x i1> poison, i1 %i.fm, i64 0
  %42 = insertelement <8 x i1> %41, i1 %40, i64 1
  %43 = insertelement <8 x i1> %42, i1 %39, i64 2
  %44 = insertelement <8 x i1> %43, i1 %38, i64 3
  %45 = insertelement <8 x i1> %44, i1 %i.fl, i64 4
  %46 = insertelement <8 x i1> %45, i1 %37, i64 5
  %47 = insertelement <8 x i1> %46, i1 %36, i64 6
  %48 = insertelement <8 x i1> %47, i1 %i.fk, i64 7 ; 2 uses
  %49 = zext <8 x i1> %48 to <8 x i8>
  %50 = sext <8 x i1> %48 to <8 x i8>
  %51 = shufflevector <8 x i8> %49, <8 x i8> %50, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %52 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %51)
  %i.fn = add i8 %52, %.4590                      ; 2 uses
  %i.fo = sub i32 %i.fj, %3
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw i64 %i.fp, 32
  %i.fr = or disjoint i64 %i.fq, %i.ex
end_hunk_12
begin_hunk_13_@ecp_mod_p384:bb.a
  %i.hb = icmp ult i32 %i.ha, %i.av
  %i.hc = zext i1 %i.hb to i8
  %i.hd = add nsw i8 %i.gz, %i.hc
  %i.he = icmp ult i32 %i.ha, %30
  %.neg.i342 = sext i1 %i.he to i8
  %i.hf = add nsw i8 %i.hd, %.neg.i342            ; 2 uses
  %i.hg = sub i32 %i.ha, %30
  %i.hh = zext i32 %i.hg to i64
  %i.hi = lshr i64 %i.ft, 32
  %i.hj = trunc nuw i64 %i.hi to i32              ; 3 uses
end_hunk_13
begin_hunk_14_@ecp_mod_p384:bb.a
  %i.hv = icmp ult i32 %i.hu, %i.ht
  %i.hw = zext i1 %i.hv to i8
  %i.hx = add nsw i8 %.6592, %i.hw
  %i.hy = add i32 %i.hu, %3                       ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %3
  %i.ia = zext i1 %i.hz to i8
  %i.ib = add nsw i8 %i.hx, %i.ia
  %i.ic = add i32 %i.hy, %i.db                    ; 2 uses
end_hunk_14
begin_hunk_15_@ecp_mod_p384:bb.a
  %i.jc = icmp ult i32 %i.jb, %i.s
  %i.jd = zext i1 %i.jc to i8
  %i.je = add nsw i8 %.7593, %i.jd
  %i.jf = add i32 %i.jb, %30                      ; 2 uses
  %i.jg = icmp ult i32 %i.jf, %30
  %i.jh = zext i1 %i.jg to i8
  %i.ji = add nsw i8 %i.je, %i.jh
  %i.jj = add i32 %i.jf, %3                       ; 3 uses
  %i.jk = icmp ult i32 %i.jj, %3
  %i.jl = zext i1 %i.jk to i8
  %i.jm = add nsw i8 %i.ji, %i.jl
  %i.jn = icmp ult i32 %i.jj, %i.ht
end_hunk_15
begin_hunk_16_@ecp_mod_p384:bb.a
  %i.kg = icmp ult i32 %i.kf, %i.gn
  %i.kh = zext i1 %i.kg to i8
  %i.ki = add nsw i8 %i.ke, %i.kh
  %i.kj = add i32 %i.kf, %30                      ; 3 uses
  %i.kk = icmp ult i32 %i.kj, %30
  %i.kl = zext i1 %i.kk to i8
  %i.km = add nsw i8 %i.ki, %i.kl
  %i.kn = icmp ult i32 %i.kj, %i.s
end_hunk_16
begin_hunk_17_@llvm.umin.i16
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_17
