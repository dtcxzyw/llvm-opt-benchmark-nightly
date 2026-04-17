inline.NumInlined: 218
inline.NumDeleted: 10
begin_hunk_0_@ecp_mod_p256:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 20 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %1 = trunc i64 %i.f to i32                      ; 8 uses
  %2 = add i32 %1, %i.d                           ; 2 uses
  %3 = icmp ult i32 %2, %1
  %4 = zext i1 %3 to i8
  %5 = lshr i64 %i.f, 32
  %6 = trunc nuw i64 %5 to i32                    ; 10 uses
  %7 = add i32 %2, %6                             ; 3 uses
  %8 = icmp ult i32 %7, %6
  %9 = zext i1 %8 to i8
  %10 = add nuw nsw i8 %9, %4
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !26     ; 2 uses
  %13 = lshr i64 %12, 32
  %14 = trunc nuw i64 %13 to i32                  ; 12 uses
  %15 = icmp ult i32 %7, %14
  %.neg.i = sext i1 %15 to i8
  %16 = add nsw i8 %10, %.neg.i
  %17 = sub i32 %7, %14                           ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %19 = load i64, ptr %18, align 8, !tbaa !26     ; 2 uses
  %i.g = trunc i64 %19 to i32                     ; 14 uses
  %i.h = icmp ult i32 %17, %i.g
  %.neg.i234.a = sext i1 %i.h to i8
  %i.i = add nsw i8 %16, %.neg.i234.a
  %i.j = sub i32 %17, %i.g                        ; 2 uses
  %20 = lshr i64 %19, 32
  %21 = trunc nuw i64 %20 to i32                  ; 20 uses
  %i.k = icmp ult i32 %i.j, %21
  %.neg.i235.a = sext i1 %i.k to i8
  %i.l = add nsw i8 %i.i, %.neg.i235.a
  %i.m = sub i32 %i.j, %21                        ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %23 = load i64, ptr %22, align 8, !tbaa !26     ; 2 uses
  %24 = trunc i64 %23 to i32                      ; 18 uses
  %i.n = icmp ult i32 %i.m, %24
  %.neg.i236 = sext i1 %i.n to i8
  %i.o = add nsw i8 %i.l, %.neg.i236              ; 2 uses
  %i.p = sub i32 %i.m, %24
  %i.q = zext i32 %i.p to i64
  %i.r = lshr i64 %i.c, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 3 uses
end_hunk_0
begin_hunk_1_@ecp_mod_p256:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0453 = phi i8 [ %.neg.i237, %bb.c ], [ %i.aa, %bb.d ]
  %.0452 = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ]
  %i.ab = add i32 %.0452, %6                      ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %6
  %i.ad = zext i1 %i.ac to i8
  %i.ae = add nsw i8 %.0453, %i.ad
  %i.af = trunc i64 %12 to i32                    ; 10 uses
  %i.ag = add i32 %i.ab, %i.af                    ; 3 uses
  %i.ah = icmp ult i32 %i.ag, %i.af
  %i.ai = zext i1 %i.ah to i8
  %i.aj = add nsw i8 %i.ae, %i.ai
  %i.ak = icmp ult i32 %i.ag, %i.g
  %.neg.i238 = sext i1 %i.ak to i8
  %i.al = add nsw i8 %i.aj, %.neg.i238
  %i.am = sub i32 %i.ag, %i.g                     ; 2 uses
  %i.an = icmp ult i32 %i.am, %21
  %.neg.i239 = sext i1 %i.an to i8
  %i.ao = add nsw i8 %i.al, %.neg.i239
  %i.ap = sub i32 %i.am, %21                      ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %24
  %.neg.i240 = sext i1 %i.aq to i8
  %i.ar = add nsw i8 %i.ao, %.neg.i240
  %i.as = sub i32 %i.ap, %24                      ; 2 uses
  %i.at = lshr i64 %23, 32
  %i.au = trunc nuw i64 %i.at to i32              ; 18 uses
  %i.av = icmp ult i32 %i.as, %i.au
  %.neg.i241 = sext i1 %i.av to i8
end_hunk_1
begin_hunk_2_@ecp_mod_p256:bb.a
  %i.bn = icmp ult i32 %i.bm, %i.af
  %i.bo = zext i1 %i.bn to i8
  %i.bp = add nsw i8 %.1454, %i.bo
  %i.bq = add i32 %i.bm, %14                      ; 3 uses
  %i.br = icmp ult i32 %i.bq, %14
  %i.bs = zext i1 %i.br to i8
  %i.bt = add nsw i8 %i.bp, %i.bs
  %i.bu = icmp ult i32 %i.bq, %21
  %.neg.i243 = sext i1 %i.bu to i8
  %i.bv = add nsw i8 %i.bt, %.neg.i243
  %i.bw = sub i32 %i.bq, %21                      ; 2 uses
  %i.bx = icmp ult i32 %i.bw, %24
  %.neg.i244 = sext i1 %i.bx to i8
  %i.by = add nsw i8 %i.bv, %.neg.i244
  %i.bz = sub i32 %i.bw, %24                      ; 2 uses
  %i.ca = icmp ult i32 %i.bz, %i.au
  %.neg.i245 = sext i1 %i.ca to i8
  %i.cb = add nsw i8 %i.by, %.neg.i245            ; 2 uses
end_hunk_2
begin_hunk_3_@ecp_mod_p256:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %.2455 = phi i8 [ %.neg.i246, %bb.i ], [ %i.cn, %bb.j ]
  %.2 = phi i32 [ %i.ck, %bb.i ], [ %i.cl, %bb.j ]
  %i.co = add i32 %.2, %14                        ; 2 uses
  %25 = icmp ult i32 %i.co, %14
  %26 = zext i1 %25 to i8
  %27 = add nsw i8 %.2455, %26
  %i.cp = add i32 %i.co, %14                      ; 2 uses
  %28 = icmp ult i32 %i.cp, %14
  %29 = zext i1 %28 to i8
  %30 = add nsw i8 %27, %29
  %31 = add i32 %i.cp, %i.g                       ; 2 uses
  %i.cq = icmp ult i32 %31, %i.g
  %32 = zext i1 %i.cq to i8
  %33 = add nsw i8 %30, %32
  %34 = add i32 %31, %i.g                         ; 2 uses
  %i.cr = icmp ult i32 %34, %i.g
  %35 = zext i1 %i.cr to i8
  %36 = add nsw i8 %33, %35
  %37 = add i32 %34, %21                          ; 3 uses
  %i.cs = icmp ult i32 %37, %21
  %38 = zext i1 %i.cs to i8
  %39 = add nsw i8 %36, %38
  %40 = icmp ult i32 %37, %i.au
  %.neg.i247 = sext i1 %40 to i8
  %41 = add nsw i8 %39, %.neg.i247
  %42 = sub i32 %37, %i.au                        ; 2 uses
  %43 = icmp ult i32 %42, %1
  %.neg.i248 = sext i1 %43 to i8
  %44 = add nsw i8 %41, %.neg.i248
  %45 = sub i32 %42, %1                           ; 2 uses
  %46 = icmp ult i32 %45, %6
  %.neg.i249 = sext i1 %46 to i8
  %i.ct = add nsw i8 %44, %.neg.i249              ; 2 uses
  %i.cu = sub i32 %45, %6
  %i.cv = zext i32 %i.cu to i64
  %i.cw = shl nuw i64 %i.cv, 32
  %i.cx = or disjoint i64 %i.cw, %i.cd
end_hunk_3
begin_hunk_4_@ecp_mod_p256:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %.3456 = phi i8 [ %.neg.i250, %bb.l ], [ %i.di, %bb.m ]
  %.3 = phi i32 [ %i.df, %bb.l ], [ %i.dg, %bb.m ]
  %i.dj = add i32 %.3, %i.g                       ; 2 uses
  %i.dk = icmp ult i32 %i.dj, %i.g
  %i.dl = zext i1 %i.dk to i8
  %i.dm = add nsw i8 %.3456, %i.dl
  %i.dn = add i32 %i.dj, %i.g                     ; 2 uses
  %i.do = icmp ult i32 %i.dn, %i.g
  %i.dp = zext i1 %i.do to i8
  %i.dq = add nsw i8 %i.dm, %i.dp
  %i.dr = add i32 %i.dn, %21                      ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %21
  %i.dt = zext i1 %i.ds to i8
  %i.du = add nsw i8 %i.dq, %i.dt
  %i.dv = add i32 %i.dr, %21                      ; 2 uses
  %i.dw = icmp ult i32 %i.dv, %21
  %i.dx = zext i1 %i.dw to i8
  %i.dy = add nsw i8 %i.du, %i.dx
  %i.dz = add i32 %i.dv, %24                      ; 3 uses
  %i.ea = icmp ult i32 %i.dz, %24
  %i.eb = zext i1 %i.ea to i8
  %i.ec = add nsw i8 %i.dy, %i.eb
  %i.ed = icmp ult i32 %i.dz, %6
  %.neg.i251 = sext i1 %i.ed to i8
  %i.ee = add nsw i8 %i.ec, %.neg.i251
  %i.ef = sub i32 %i.dz, %6                       ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.af
  %.neg.i252 = sext i1 %i.eg to i8
  %i.eh = add nsw i8 %i.ee, %.neg.i252            ; 2 uses
end_hunk_4
begin_hunk_5_@ecp_mod_p256:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %.4457 = phi i8 [ %.neg.i253, %bb.o ], [ %i.et, %bb.p ]
  %.4 = phi i32 [ %i.eq, %bb.o ], [ %i.er, %bb.p ]
  %i.eu = add i32 %.4, %21                        ; 2 uses
  %i.ev = icmp ult i32 %i.eu, %21
  %i.ew = zext i1 %i.ev to i8
  %i.ex = add nsw i8 %.4457, %i.ew
  %i.ey = add i32 %i.eu, %21                      ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %21
  %i.fa = zext i1 %i.ez to i8
  %i.fb = add nsw i8 %i.ex, %i.fa
  %i.fc = add i32 %i.ey, %24                      ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %24
  %i.fe = zext i1 %i.fd to i8
  %i.ff = add nsw i8 %i.fb, %i.fe
  %i.fg = add i32 %i.fc, %24                      ; 2 uses
  %i.fh = icmp ult i32 %i.fg, %24
  %i.fi = zext i1 %i.fh to i8
  %i.fj = add nsw i8 %i.ff, %i.fi
  %i.fk = add i32 %i.fg, %i.au                    ; 3 uses
end_hunk_5
begin_hunk_6_@ecp_mod_p256:bb.a
  %.neg.i254 = sext i1 %i.fo to i8
  %i.fp = add nsw i8 %i.fn, %.neg.i254
  %i.fq = sub i32 %i.fk, %i.af                    ; 2 uses
  %i.fr = icmp ult i32 %i.fq, %14
  %.neg.i255 = sext i1 %i.fr to i8
  %i.fs = add nsw i8 %i.fp, %.neg.i255            ; 2 uses
  %i.ft = sub i32 %i.fq, %14
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fu, 32
  %i.fw = or disjoint i64 %i.fv, %i.ej
end_hunk_6
begin_hunk_7_@ecp_mod_p256:bb.a
bb.t:                                             ; preds = %bb.s, %bb.r
  %.5458 = phi i8 [ %.neg.i256, %bb.r ], [ %i.gh, %bb.s ]
  %.5 = phi i32 [ %i.ge, %bb.r ], [ %i.gf, %bb.s ]
  %i.gi = add i32 %.5, %24                        ; 2 uses
  %47 = icmp ult i32 %i.gi, %24
  %48 = zext i1 %47 to i8
  %49 = add nsw i8 %.5458, %48
  %i.gj = add i32 %i.gi, %24                      ; 2 uses
  %50 = icmp ult i32 %i.gj, %24
  %51 = zext i1 %50 to i8
  %52 = add nsw i8 %49, %51
  %i.gk = add i32 %i.gj, %i.au                    ; 2 uses
  %53 = icmp ult i32 %i.gk, %i.au
  %54 = zext i1 %53 to i8
  %55 = add nsw i8 %52, %54
  %56 = add i32 %i.gk, %i.au                      ; 2 uses
  %i.gl = icmp ult i32 %56, %i.au
  %57 = zext i1 %i.gl to i8
  %58 = add nsw i8 %55, %57
  %59 = add i32 %56, %24                          ; 2 uses
  %i.gm = icmp ult i32 %59, %24
  %60 = zext i1 %i.gm to i8
  %61 = add nsw i8 %58, %60
  %62 = add i32 %59, %21                          ; 3 uses
  %63 = icmp ult i32 %62, %21
  %64 = zext i1 %63 to i8
  %65 = add nsw i8 %61, %64
  %66 = icmp ult i32 %62, %1
  %.neg.i257 = sext i1 %66 to i8
  %67 = add nsw i8 %65, %.neg.i257
  %68 = sub i32 %62, %1                           ; 2 uses
  %69 = icmp ult i32 %68, %6
  %.neg.i258 = sext i1 %69 to i8
  %i.gn = add nsw i8 %67, %.neg.i258              ; 2 uses
  %i.go = sub i32 %68, %6
  %i.gp = zext i32 %i.go to i64
  %i.gq = lshr i64 %i.fy, 32
  %i.gr = trunc nuw i64 %i.gq to i32              ; 3 uses
end_hunk_7
begin_hunk_8_@ecp_mod_p256:bb.a
  %i.hj = icmp ult i32 %i.hi, %i.au
  %i.hk = zext i1 %i.hj to i8
  %i.hl = add nsw i8 %i.hh, %i.hk
  %i.hm = add i32 %i.hi, %1                       ; 3 uses
  %i.hn = icmp ult i32 %i.hm, %1
  %i.ho = zext i1 %i.hn to i8
  %i.hp = add nsw i8 %i.hl, %i.ho
  %i.hq = icmp ult i32 %i.hm, %i.af
  %.neg.i260 = sext i1 %i.hq to i8
  %i.hr = add nsw i8 %i.hp, %.neg.i260
  %i.hs = sub i32 %i.hm, %i.af                    ; 2 uses
  %i.ht = icmp ult i32 %i.hs, %14
  %.neg.i261 = sext i1 %i.ht to i8
  %i.hu = add nsw i8 %i.hr, %.neg.i261
  %i.hv = sub i32 %i.hs, %14                      ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %i.g
  %.neg.i262 = sext i1 %i.hw to i8
  %i.hx = add nsw i8 %i.hu, %.neg.i262
  %i.hy = sub i32 %i.hv, %i.g                     ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %21
  %.neg.i263 = sext i1 %i.hz to i8
  %i.ia = add nsw i8 %i.hx, %.neg.i263            ; 3 uses
  %i.ib = sub i32 %i.hy, %21
  %i.ic = zext i32 %i.ib to i64
  %i.id = shl nuw i64 %i.ic, 32
  %i.ie = or disjoint i64 %i.id, %i.gp
  store i64 %i.ie, ptr %i.fx, align 8, !tbaa !26
  %i.if = tail call i8 @llvm.smax.i8(i8 %i.ia, i8 0)
  %i.ig = and i64 %i.f, -4294967296
  %i.ih = zext nneg i8 %i.if to i64
  %i.ii = or disjoint i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.e, align 8, !tbaa !26
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !19 ; 3 uses
  %i.il = icmp ugt i16 %i.ik, 4
end_hunk_8
begin_hunk_9_@ecp_mod_p256:bb.a
  %i.jj = load <2 x i64>, ptr %i.cy, align 8, !tbaa !26
  %i.jk = xor <2 x i64> %i.jj, splat (i64 -1)
  store <2 x i64> %i.jk, ptr %i.cy, align 8, !tbaa !26
  %i.jl = load i64, ptr %i.e, align 8, !tbaa !26
  %i.jm = xor i64 %i.jl, -1
  store i64 %i.jm, ptr %i.e, align 8, !tbaa !26
  %i.jn = load i64, ptr %i.b, align 8, !tbaa !26
  %i.jo = add i64 %i.jn, 1                        ; 2 uses
  store i64 %i.jo, ptr %i.b, align 8, !tbaa !26
end_hunk_9
begin_hunk_10_@ecp_mod_p256:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.kb, align 8, !tbaa !18
  %i.kc = sext i8 %i.ia to i64
  %i.kd = load i64, ptr %i.e, align 8, !tbaa !26
  %i.ke = sub i64 %i.kd, %i.kc
  store i64 %i.ke, ptr %i.e, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %mbedtls_ecp_fix_negative.exit, %bb.a
end_hunk_10
begin_hunk_11_@ecp_mod_p384:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %.3589 = phi i8 [ %.neg.i335, %bb.l ], [ %i.eo, %bb.m ]
  %.3 = phi i32 [ %i.el, %bb.l ], [ %i.em, %bb.m ]
  %1 = add i32 %.3, %i.n                          ; 2 uses
  %2 = icmp ult i32 %1, %i.n
  %3 = zext i1 %2 to i8
  %4 = add nsw i8 %.3589, %3
  %i.ep = add i32 %1, %i.n                        ; 2 uses
  %5 = icmp ult i32 %i.ep, %i.n
  %6 = zext i1 %5 to i8
  %7 = add nsw i8 %4, %6
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %9 = load i64, ptr %8, align 8, !tbaa !26       ; 2 uses
  %10 = trunc i64 %9 to i32                       ; 8 uses
  %11 = add i32 %i.ep, %10                        ; 2 uses
  %i.eq = icmp ult i32 %11, %10
  %12 = zext i1 %i.eq to i8
  %13 = add nsw i8 %7, %12
  %14 = add i32 %11, %i.aq                        ; 2 uses
  %i.er = icmp ult i32 %14, %i.aq
  %15 = zext i1 %i.er to i8
  %16 = add nsw i8 %13, %15
  %17 = add i32 %14, %i.g                         ; 2 uses
  %18 = icmp ult i32 %17, %i.g
  %19 = zext i1 %18 to i8
  %20 = add nsw i8 %16, %19
  %21 = add i32 %17, %i.s                         ; 2 uses
  %22 = icmp ult i32 %21, %i.s
  %23 = zext i1 %22 to i8
  %24 = add nsw i8 %20, %23
  %25 = add i32 %21, %i.av                        ; 3 uses
  %26 = icmp ult i32 %25, %i.av
  %27 = zext i1 %26 to i8
  %28 = add nsw i8 %24, %27
  %i.es = icmp ult i32 %25, %i.db
  %.neg.i336 = sext i1 %i.es to i8
  %29 = add nsw i8 %28, %.neg.i336
  %i.et = sub i32 %25, %i.db                      ; 2 uses
  %i.eu = icmp ult i32 %i.et, %i.aa
  %.neg.i337 = sext i1 %i.eu to i8
  %30 = add nsw i8 %29, %.neg.i337
  %31 = sub i32 %i.et, %i.aa                      ; 2 uses
  %32 = icmp ult i32 %31, %i.aa
  %.neg.i338 = sext i1 %32 to i8
  %i.ev = add nsw i8 %30, %.neg.i338              ; 2 uses
  %i.ew = sub i32 %31, %i.aa
  %i.ex = zext i32 %i.ew to i64
  %i.ey = lshr i64 %i.ef, 32
  %i.ez = trunc nuw i64 %i.ey to i32              ; 3 uses
end_hunk_11
begin_hunk_12_@ecp_mod_p384:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %.4590 = phi i8 [ %.neg.i339, %bb.o ], [ %i.fh, %bb.p ]
  %.4 = phi i32 [ %i.fe, %bb.o ], [ %i.ff, %bb.p ]
  %33 = add i32 %.4, %i.av                        ; 2 uses
  %34 = icmp ult i32 %33, %i.av
  %35 = zext i1 %34 to i8
  %36 = add nsw i8 %.4590, %35
  %i.fi = add i32 %33, %i.av                      ; 2 uses
  %37 = icmp ult i32 %i.fi, %i.av
  %38 = zext i1 %37 to i8
  %39 = add nsw i8 %36, %38
  %40 = lshr i64 %9, 32
  %41 = trunc nuw i64 %40 to i32                  ; 8 uses
  %i.fj = add i32 %i.fi, %41                      ; 2 uses
  %i.fk = icmp ult i32 %i.fj, %41
  %42 = zext i1 %i.fk to i8
  %43 = add nsw i8 %39, %42
  %44 = add i32 %i.fj, %i.ca                      ; 2 uses
  %i.fl = icmp ult i32 %44, %i.ca
  %45 = zext i1 %i.fl to i8
  %46 = add nsw i8 %43, %45
  %47 = add i32 %44, %i.aq                        ; 2 uses
  %i.fm = icmp ult i32 %47, %i.aq
  %48 = zext i1 %i.fm to i8
  %49 = add nsw i8 %46, %48
  %50 = add i32 %47, %i.n                         ; 2 uses
  %51 = icmp ult i32 %50, %i.n
  %52 = zext i1 %51 to i8
  %53 = add nsw i8 %49, %52
  %54 = add i32 %50, %i.aa                        ; 3 uses
  %55 = icmp ult i32 %54, %i.aa
  %56 = zext i1 %55 to i8
  %57 = add nsw i8 %53, %56
  %58 = icmp ult i32 %54, %10
  %.neg.i340 = sext i1 %58 to i8
  %i.fn = add nsw i8 %57, %.neg.i340              ; 2 uses
  %i.fo = sub i32 %54, %10
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw i64 %i.fp, 32
  %i.fr = or disjoint i64 %i.fq, %i.ex
end_hunk_12
begin_hunk_13_@ecp_mod_p384:bb.a
  %i.hb = icmp ult i32 %i.ha, %i.av
  %i.hc = zext i1 %i.hb to i8
  %i.hd = add nsw i8 %i.gz, %i.hc
  %i.he = icmp ult i32 %i.ha, %41
  %.neg.i342 = sext i1 %i.he to i8
  %i.hf = add nsw i8 %i.hd, %.neg.i342            ; 2 uses
  %i.hg = sub i32 %i.ha, %41
  %i.hh = zext i32 %i.hg to i64
  %i.hi = lshr i64 %i.ft, 32
  %i.hj = trunc nuw i64 %i.hi to i32              ; 3 uses
end_hunk_13
begin_hunk_14_@ecp_mod_p384:bb.a
  %i.hv = icmp ult i32 %i.hu, %i.ht
  %i.hw = zext i1 %i.hv to i8
  %i.hx = add nsw i8 %.6592, %i.hw
  %i.hy = add i32 %i.hu, %10                      ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %10
  %i.ia = zext i1 %i.hz to i8
  %i.ib = add nsw i8 %i.hx, %i.ia
  %i.ic = add i32 %i.hy, %i.db                    ; 2 uses
end_hunk_14
begin_hunk_15_@ecp_mod_p384:bb.a
  %i.jc = icmp ult i32 %i.jb, %i.s
  %i.jd = zext i1 %i.jc to i8
  %i.je = add nsw i8 %.7593, %i.jd
  %i.jf = add i32 %i.jb, %41                      ; 2 uses
  %i.jg = icmp ult i32 %i.jf, %41
  %i.jh = zext i1 %i.jg to i8
  %i.ji = add nsw i8 %i.je, %i.jh
  %i.jj = add i32 %i.jf, %10                      ; 3 uses
  %i.jk = icmp ult i32 %i.jj, %10
  %i.jl = zext i1 %i.jk to i8
  %i.jm = add nsw i8 %i.ji, %i.jl
  %i.jn = icmp ult i32 %i.jj, %i.ht
end_hunk_15
begin_hunk_16_@ecp_mod_p384:bb.a
  %i.kg = icmp ult i32 %i.kf, %i.gn
  %i.kh = zext i1 %i.kg to i8
  %i.ki = add nsw i8 %i.ke, %i.kh
  %i.kj = add i32 %i.kf, %41                      ; 3 uses
  %i.kk = icmp ult i32 %i.kj, %41
  %i.kl = zext i1 %i.kk to i8
  %i.km = add nsw i8 %i.ki, %i.kl
  %i.kn = icmp ult i32 %i.kj, %i.s
end_hunk_16
begin_hunk_17_@llvm.umin.i16
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_17
