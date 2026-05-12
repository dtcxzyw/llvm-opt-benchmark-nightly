inline.NumInlined: 779
inline.NumDeleted: 370
begin_hunk_0_@_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv:bb.a
  %i.bz = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.dg, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.dh, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.ca = load i8, ptr %.sroa.07.011.i, align 1
  %i.cb = add i64 %i.bz, 1                        ; 4 uses
  %i.cc = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.cd = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv:bb.a
  br i1 %i.ch, label %bb.l, label %.noexc127

bb.l:                                             ; preds = %bb.k
  %i.ci = sub nuw i64 %i.cb, %i.cg                ; 6 uses
  %i.cj = load ptr, ptr %i.k, align 8
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ce                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.cm)
  %7 = xor i64 %i.cg, 9223372036854775807         ; 2 uses
  %i.cn = icmp ule i64 %i.cl, %7
  call void @llvm.assume(i1 %i.cn)
  %.not28.i.i = icmp ult i64 %i.cl, %i.ci
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv:bb.a
  br label %.noexc127

bb.o:                                             ; preds = %bb.l
  %8 = icmp ult i64 %7, %i.ci
  br i1 %8, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.bn = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.cu, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.cv, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.bo = load i8, ptr %.sroa.07.011.i, align 1
  %i.bp = add i64 %i.bn, 1                        ; 4 uses
  %i.bq = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.br = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.bv, label %bb.j, label %.noexc123

bb.j:                                             ; preds = %bb.i
  %i.bw = sub nuw i64 %i.bp, %i.bu                ; 6 uses
  %i.bx = load ptr, ptr %i.l, align 8
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = sub i64 %i.by, %i.bs                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.ca)
  %4 = xor i64 %i.bu, 9223372036854775807         ; 2 uses
  %i.cb = icmp ule i64 %i.bz, %4
  call void @llvm.assume(i1 %i.cb)
  %.not28.i.i = icmp ult i64 %i.bz, %i.bw
end_hunk_4
begin_hunk_5_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc123

bb.m:                                             ; preds = %bb.j
  %5 = icmp ult i64 %4, %i.bw
  br i1 %5, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
end_hunk_5
begin_hunk_6_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.gk = load ptr, ptr %i.fl, align 8
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.gk, i64 %indvars.iv ; 3 uses
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = add i64 %i.gj, 4                        ; 4 uses
  %i.go = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.gp = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.gq = ptrtoint ptr %i.go to i64               ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.gt, label %bb.ah, label %.noexc152

bb.ah:                                            ; preds = %bb.ag
  %i.gu = sub nuw i64 %i.gn, %i.gs                ; 6 uses
  %i.gv = load ptr, ptr %i.l, align 8
  %i.gw = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.gx = sub i64 %i.gw, %i.gq                    ; 2 uses
  %i.gy = icmp sgt i64 %i.gs, -1
  call void @llvm.assume(i1 %i.gy)
  %6 = xor i64 %i.gs, 9223372036854775807         ; 2 uses
  %i.gz = icmp ule i64 %i.gx, %6
  call void @llvm.assume(i1 %i.gz)
  %.not28.i.i282 = icmp ult i64 %i.gx, %i.gu
end_hunk_7
begin_hunk_8_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc152

bb.ak:                                            ; preds = %bb.ah
  %7 = icmp ult i64 %6, %i.gu
  br i1 %7, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i285

.invoke:                                          ; preds = %bb.bc, %bb.at, %bb.ak
end_hunk_8
begin_hunk_9_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  store i64 %i.hs, ptr %i.h, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = add i64 %i.hr, 8                        ; 4 uses
  %i.hw = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.hx = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.hy = ptrtoint ptr %i.hw to i64               ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.ib, label %bb.aq, label %.noexc156

bb.aq:                                            ; preds = %bb.ap
  %i.ic = sub nuw i64 %i.hv, %i.ia                ; 6 uses
  %i.id = load ptr, ptr %i.l, align 8
  %i.ie = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.if = sub i64 %i.ie, %i.hy                    ; 2 uses
  %i.ig = icmp sgt i64 %i.ia, -1
  call void @llvm.assume(i1 %i.ig)
  %8 = xor i64 %i.ia, 9223372036854775807         ; 2 uses
  %i.ih = icmp ule i64 %i.if, %8
  call void @llvm.assume(i1 %i.ih)
  %.not28.i.i297 = icmp ult i64 %i.if, %i.ic
end_hunk_10
begin_hunk_11_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc156

bb.at:                                            ; preds = %bb.aq
  %9 = icmp ult i64 %8, %i.ic
  br i1 %9, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i300

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i300: ; preds = %bb.at
end_hunk_11
begin_hunk_12_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  store i64 %i.ja, ptr %i.h, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.jc = load float, ptr %i.jb, align 4
  %i.jd = add i64 %i.iz, 8                        ; 4 uses
  %i.je = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.jf = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.jg = ptrtoint ptr %i.je to i64               ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.jj, label %bb.az, label %.noexc161

bb.az:                                            ; preds = %bb.ay
  %i.jk = sub nuw i64 %i.jd, %i.ji                ; 6 uses
  %i.jl = load ptr, ptr %i.l, align 8
  %i.jm = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.jn = sub i64 %i.jm, %i.jg                    ; 2 uses
  %i.jo = icmp sgt i64 %i.ji, -1
  call void @llvm.assume(i1 %i.jo)
  %10 = xor i64 %i.ji, 9223372036854775807        ; 2 uses
  %i.jp = icmp ule i64 %i.jn, %10
  call void @llvm.assume(i1 %i.jp)
  %.not28.i.i312 = icmp ult i64 %i.jn, %i.jk
end_hunk_13
begin_hunk_14_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc161

bb.bc:                                            ; preds = %bb.az
  %11 = icmp ult i64 %10, %i.jk
  br i1 %11, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i315

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i315: ; preds = %bb.bc
end_hunk_14
begin_hunk_15_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.mo = load ptr, ptr %i.ga, align 8
  %i.mp = getelementptr inbounds nuw [12 x i8], ptr %i.mo, i64 %indvars.iv1193 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4
  %i.mr = add i64 %i.mn, 4                        ; 4 uses
  %i.ms = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.mt = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.mu = ptrtoint ptr %i.ms to i64               ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.mx, label %bb.bs, label %.noexc186

bb.bs:                                            ; preds = %bb.br
  %i.my = sub nuw i64 %i.mr, %i.mw                ; 6 uses
  %i.mz = load ptr, ptr %i.l, align 8
  %i.na = ptrtoint ptr %i.mz to i64               ; 2 uses
  %i.nb = sub i64 %i.na, %i.mu                    ; 2 uses
  %i.nc = icmp sgt i64 %i.mw, -1
  call void @llvm.assume(i1 %i.nc)
  %12 = xor i64 %i.mw, 9223372036854775807        ; 2 uses
  %i.nd = icmp ule i64 %i.nb, %12
  call void @llvm.assume(i1 %i.nd)
  %.not28.i.i327 = icmp ult i64 %i.nb, %i.my
end_hunk_16
begin_hunk_17_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc186

bb.bv:                                            ; preds = %bb.bs
  %13 = icmp ult i64 %12, %i.my
  br i1 %13, label %.invoke1925, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i330

.invoke1925:                                      ; preds = %bb.ce, %bb.bv
end_hunk_17
begin_hunk_18_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  store i64 %i.nw, ptr %i.h, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.ny = load float, ptr %i.nx, align 4
  %i.nz = add i64 %i.nv, 8                        ; 4 uses
  %i.oa = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.ob = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.oc = ptrtoint ptr %i.oa to i64               ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.of, label %bb.cb, label %.noexc191

bb.cb:                                            ; preds = %bb.ca
  %i.og = sub nuw i64 %i.nz, %i.oe                ; 6 uses
  %i.oh = load ptr, ptr %i.l, align 8
  %i.oi = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.oj = sub i64 %i.oi, %i.oc                    ; 2 uses
  %i.ok = icmp sgt i64 %i.oe, -1
  call void @llvm.assume(i1 %i.ok)
  %14 = xor i64 %i.oe, 9223372036854775807        ; 2 uses
  %i.ol = icmp ule i64 %i.oj, %14
  call void @llvm.assume(i1 %i.ol)
  %.not28.i.i342 = icmp ult i64 %i.oj, %i.og
end_hunk_19
begin_hunk_20_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc191

bb.ce:                                            ; preds = %bb.cb
  %15 = icmp ult i64 %14, %i.og
  br i1 %15, label %.invoke1925, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i345

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i345: ; preds = %bb.ce
end_hunk_20
begin_hunk_21_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = load i32, ptr %i.sz, align 4
  %i.tb = trunc i32 %i.ta to i16
  %i.tc = add i64 %i.st, 2                        ; 4 uses
  %i.td = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.te = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.tf = ptrtoint ptr %i.td to i64               ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.ti, label %bb.cs, label %.noexc211

bb.cs:                                            ; preds = %bb.cr
  %i.tj = sub nuw i64 %i.yc, %i.yh                ; 6 uses
  %i.tk = load ptr, ptr %i.l, align 8
  %i.tl = ptrtoint ptr %i.tk to i64               ; 2 uses
  %i.tm = sub i64 %i.tl, %i.yf                    ; 2 uses
  %i.tn = icmp sgt i64 %i.yh, -1
  call void @llvm.assume(i1 %i.tn)
  %16 = xor i64 %i.yh, 9223372036854775807        ; 2 uses
  %i.to = icmp ule i64 %i.tm, %16
  call void @llvm.assume(i1 %i.to)
  %.not28.i.i357 = icmp ult i64 %i.tm, %i.tj
end_hunk_22
begin_hunk_23_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc211

bb.cv:                                            ; preds = %bb.cs
  %17 = icmp ult i64 %16, %i.tj
  br i1 %17, label %bb.cw, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i360

bb.cw:                                            ; preds = %bb.cv
end_hunk_23
begin_hunk_24_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.ui, label %bb.db, label %.noexc215

bb.db:                                            ; preds = %bb.da
  %i.uj = sub nuw i64 %i.tc, %i.th                ; 6 uses
  %i.uk = load ptr, ptr %i.l, align 8
  %i.ul = ptrtoint ptr %i.uk to i64               ; 2 uses
  %i.um = sub i64 %i.ul, %i.tf                    ; 2 uses
  %i.un = icmp sgt i64 %i.th, -1
  call void @llvm.assume(i1 %i.un)
  %18 = xor i64 %i.th, 9223372036854775807        ; 2 uses
  %i.uo = icmp ule i64 %i.um, %18
  call void @llvm.assume(i1 %i.uo)
  %.not28.i.i372 = icmp ult i64 %i.um, %i.uj
end_hunk_24
begin_hunk_25_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc215

bb.de:                                            ; preds = %bb.db
  %19 = icmp ult i64 %18, %i.uj
  br i1 %19, label %bb.df, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i375

bb.df:                                            ; preds = %bb.dx, %bb.do, %bb.de
end_hunk_25
begin_hunk_26_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 4
  %i.vk = load i32, ptr %i.vj, align 4
  %i.vl = trunc i32 %i.vk to i16
  %i.vm = add i64 %i.vg, 4                        ; 4 uses
  %i.vn = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.vo = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.vp = ptrtoint ptr %i.vn to i64               ; 2 uses
end_hunk_26
begin_hunk_27_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.vs, label %bb.dl, label %.noexc215.1

bb.dl:                                            ; preds = %bb.dk
  %i.vt = sub nuw i64 %i.vm, %i.vr                ; 6 uses
  %i.vu = load ptr, ptr %i.l, align 8
  %i.vv = ptrtoint ptr %i.vu to i64               ; 2 uses
  %i.vw = sub i64 %i.vv, %i.vp                    ; 2 uses
  %i.vx = icmp sgt i64 %i.vr, -1
  call void @llvm.assume(i1 %i.vx)
  %20 = xor i64 %i.vr, 9223372036854775807        ; 2 uses
  %i.vy = icmp ule i64 %i.vw, %20
  call void @llvm.assume(i1 %i.vy)
  %.not28.i.i372.1 = icmp ult i64 %i.vw, %i.vt
end_hunk_27
begin_hunk_28_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc215.1

bb.do:                                            ; preds = %bb.dl
  %21 = icmp ult i64 %20, %i.vt
  br i1 %21, label %bb.df, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i375.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i375.1: ; preds = %bb.do
end_hunk_28
begin_hunk_29_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load i32, ptr %i.wt, align 4
  %i.wv = trunc i32 %i.wu to i16
  %i.ww = add i64 %i.wq, 4                        ; 4 uses
  %i.wx = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.wy = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.wz = ptrtoint ptr %i.wx to i64               ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.xc, label %bb.du, label %.noexc215.2

bb.du:                                            ; preds = %bb.dt
  %i.xd = sub nuw i64 %i.ww, %i.xb                ; 6 uses
  %i.xe = load ptr, ptr %i.l, align 8
  %i.xf = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xg = sub i64 %i.xf, %i.wz                    ; 2 uses
  %i.xh = icmp sgt i64 %i.xb, -1
  call void @llvm.assume(i1 %i.xh)
  %22 = xor i64 %i.xb, 9223372036854775807        ; 2 uses
  %i.xi = icmp ule i64 %i.xg, %22
  call void @llvm.assume(i1 %i.xi)
  %.not28.i.i372.2 = icmp ult i64 %i.xg, %i.xd
end_hunk_30
begin_hunk_31_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc215.2

bb.dx:                                            ; preds = %bb.du
  %23 = icmp ult i64 %22, %i.xd
  br i1 %23, label %bb.df, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i375.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i375.2: ; preds = %bb.dx
end_hunk_31
begin_hunk_32_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %i.ya = load i64, ptr %i.h, align 8             ; 2 uses
  %i.yb = add i64 %i.ya, 2                        ; 2 uses
  store i64 %i.yb, ptr %i.h, align 8
  %i.yc = add i64 %i.ya, 4                        ; 4 uses
  %i.yd = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.ye = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.yf = ptrtoint ptr %i.yd to i64               ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
_ZNK12aiMatrix4x4tIfEixEj.exit:                   ; preds = %.preheader, %bb.ek, %bb.el
  %.0.i = phi ptr [ %i.zw, %bb.el ], [ %i.zx, %bb.ek ], [ %i.ag, %.preheader ]
  %i.aab = load float, ptr %.0.i, align 4
  %i.aac = add i64 %i.zy, 4                       ; 4 uses
  %i.aad = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.aae = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.aaf = ptrtoint ptr %i.aad to i64             ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.aai, label %bb.en, label %.noexc235

bb.en:                                            ; preds = %bb.em
  %i.aaj = sub nuw i64 %i.aac, %i.aah             ; 6 uses
  %i.aak = load ptr, ptr %i.l, align 8
  %i.aal = ptrtoint ptr %i.aak to i64             ; 2 uses
  %i.aam = sub i64 %i.aal, %i.aaf                 ; 2 uses
  %i.aan = icmp sgt i64 %i.aah, -1
  call void @llvm.assume(i1 %i.aan)
  %24 = xor i64 %i.aah, 9223372036854775807       ; 2 uses
  %i.aao = icmp ule i64 %i.aam, %24
  call void @llvm.assume(i1 %i.aao)
  %.not28.i.i387 = icmp ult i64 %i.aam, %i.aaj
end_hunk_34
begin_hunk_35_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc235

bb.eq:                                            ; preds = %bb.en
  %25 = icmp ult i64 %24, %i.aaj
  br i1 %25, label %bb.er, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i390

bb.er:                                            ; preds = %bb.fn, %bb.fc, %bb.eq
end_hunk_35
begin_hunk_36_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %.0.i.1 = phi ptr [ %i.zw, %bb.ew ], [ %i.zx, %bb.ex ], [ %i.ag, %bb.ev ]
  %i.abi = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 4
  %i.abj = load float, ptr %i.abi, align 4
  %i.abk = add i64 %i.abg, 8                      ; 4 uses
  %i.abl = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.abm = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.abn = ptrtoint ptr %i.abl to i64             ; 2 uses
end_hunk_36
begin_hunk_37_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.abq, label %bb.ez, label %.noexc235.1

bb.ez:                                            ; preds = %bb.ey
  %i.abr = sub nuw i64 %i.abk, %i.abp             ; 6 uses
  %i.abs = load ptr, ptr %i.l, align 8
  %i.abt = ptrtoint ptr %i.abs to i64             ; 2 uses
  %i.abu = sub i64 %i.abt, %i.abn                 ; 2 uses
  %i.abv = icmp sgt i64 %i.abp, -1
  call void @llvm.assume(i1 %i.abv)
  %26 = xor i64 %i.abp, 9223372036854775807       ; 2 uses
  %i.abw = icmp ule i64 %i.abu, %26
  call void @llvm.assume(i1 %i.abw)
  %.not28.i.i387.1 = icmp ult i64 %i.abu, %i.abr
end_hunk_37
begin_hunk_38_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc235.1

bb.fc:                                            ; preds = %bb.ez
  %27 = icmp ult i64 %26, %i.abr
  br i1 %27, label %bb.er, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i390.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i390.1: ; preds = %bb.fc
end_hunk_38
begin_hunk_39_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  %.0.i.2 = phi ptr [ %i.zw, %bb.fh ], [ %i.zx, %bb.fi ], [ %i.ag, %bb.fg ]
  %i.acq = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 8
  %i.acr = load float, ptr %i.acq, align 4
  %i.acs = add i64 %i.aco, 8                      ; 4 uses
  %i.act = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.acu = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.acv = ptrtoint ptr %i.act to i64             ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.acy, label %bb.fk, label %.noexc235.2

bb.fk:                                            ; preds = %bb.fj
  %i.acz = sub nuw i64 %i.acs, %i.acx             ; 6 uses
  %i.ada = load ptr, ptr %i.l, align 8
  %i.adb = ptrtoint ptr %i.ada to i64             ; 2 uses
  %i.adc = sub i64 %i.adb, %i.acv                 ; 2 uses
  %i.add = icmp sgt i64 %i.acx, -1
  call void @llvm.assume(i1 %i.add)
  %28 = xor i64 %i.acx, 9223372036854775807       ; 2 uses
  %i.ade = icmp ule i64 %i.adc, %28
  call void @llvm.assume(i1 %i.ade)
  %.not28.i.i387.2 = icmp ult i64 %i.adc, %i.acz
end_hunk_40
begin_hunk_41_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc235.2

bb.fn:                                            ; preds = %bb.fk
  %29 = icmp ult i64 %28, %i.acz
  br i1 %29, label %bb.er, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i390.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i390.2: ; preds = %bb.fn
end_hunk_41
begin_hunk_42_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
_ZNK12aiMatrix4x4tIfEixEj.exit254:                ; preds = %bb.fr
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 52
  %i.afn = load float, ptr %i.afm, align 4
  %i.afo = add i64 %i.adw, 8                      ; 4 uses
  %i.afp = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.afq = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.afr = ptrtoint ptr %i.afp to i64             ; 2 uses
end_hunk_42
begin_hunk_43_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.afu, label %bb.fz, label %.noexc258

bb.fz:                                            ; preds = %bb.fy
  %i.afv = sub nuw i64 %i.afo, %i.aft             ; 6 uses
  %i.afw = load ptr, ptr %i.l, align 8
  %i.afx = ptrtoint ptr %i.afw to i64             ; 2 uses
  %i.afy = sub i64 %i.afx, %i.afr                 ; 2 uses
  %i.afz = icmp sgt i64 %i.aft, -1
  call void @llvm.assume(i1 %i.afz)
  %30 = xor i64 %i.aft, 9223372036854775807       ; 2 uses
  %i.aga = icmp ule i64 %i.afy, %30
  call void @llvm.assume(i1 %i.aga)
  %.not28.i.i402 = icmp ult i64 %i.afy, %i.afv
end_hunk_43
begin_hunk_44_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc258

bb.gc:                                            ; preds = %bb.fz
  %31 = icmp ult i64 %30, %i.afv
  br i1 %31, label %bb.gd, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i405

bb.gd:                                            ; preds = %bb.gt, %bb.gl, %bb.gc
end_hunk_44
begin_hunk_45_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  store i64 %i.agt, ptr %i.h, align 8
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 68
  %i.agv = load float, ptr %i.agu, align 4
  %i.agw = add i64 %i.ags, 8                      ; 4 uses
  %i.agx = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.agy = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.agz = ptrtoint ptr %i.agx to i64             ; 2 uses
end_hunk_45
begin_hunk_46_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.ahc, label %bb.gi, label %.noexc258.1

bb.gi:                                            ; preds = %bb.gh
  %i.ahd = sub nuw i64 %i.agw, %i.ahb             ; 6 uses
  %i.ahe = load ptr, ptr %i.l, align 8
  %i.ahf = ptrtoint ptr %i.ahe to i64             ; 2 uses
  %i.ahg = sub i64 %i.ahf, %i.agz                 ; 2 uses
  %i.ahh = icmp sgt i64 %i.ahb, -1
  call void @llvm.assume(i1 %i.ahh)
  %32 = xor i64 %i.ahb, 9223372036854775807       ; 2 uses
  %i.ahi = icmp ule i64 %i.ahg, %32
  call void @llvm.assume(i1 %i.ahi)
  %.not28.i.i402.1 = icmp ult i64 %i.ahg, %i.ahd
end_hunk_46
begin_hunk_47_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc258.1

bb.gl:                                            ; preds = %bb.gi
  %33 = icmp ult i64 %32, %i.ahd
  br i1 %33, label %bb.gd, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i405.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i405.1: ; preds = %bb.gl
end_hunk_47
begin_hunk_48_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  store i64 %i.aib, ptr %i.h, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 84
  %i.aid = load float, ptr %i.aic, align 4
  %i.aie = add i64 %i.aia, 8                      ; 4 uses
  %i.aif = load ptr, ptr %i.j, align 8            ; 5 uses
  %i.aig = load ptr, ptr %i.i, align 8            ; 7 uses
  %i.aih = ptrtoint ptr %i.aif to i64             ; 2 uses
end_hunk_48
begin_hunk_49_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br i1 %i.aik, label %bb.gq, label %.noexc258.2

bb.gq:                                            ; preds = %bb.gp
  %i.ail = sub nuw i64 %i.aie, %i.aij             ; 6 uses
  %i.aim = load ptr, ptr %i.l, align 8
  %i.ain = ptrtoint ptr %i.aim to i64             ; 2 uses
  %i.aio = sub i64 %i.ain, %i.aih                 ; 2 uses
  %i.aip = icmp sgt i64 %i.aij, -1
  call void @llvm.assume(i1 %i.aip)
  %34 = xor i64 %i.aij, 9223372036854775807       ; 2 uses
  %i.aiq = icmp ule i64 %i.aio, %34
  call void @llvm.assume(i1 %i.aiq)
  %.not28.i.i402.2 = icmp ult i64 %i.aio, %i.ail
end_hunk_49
begin_hunk_50_@_ZN6Assimp19Discreet3DSExporter11WriteMeshesEv:bb.a
  br label %.noexc258.2

bb.gt:                                            ; preds = %bb.gq
  %35 = icmp ult i64 %34, %i.ail
  br i1 %35, label %bb.gd, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i405.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i405.2: ; preds = %bb.gt
end_hunk_50
begin_hunk_51_@_ZN6Assimp19Discreet3DSExporter14WriteHierarchyERK6aiNodeii:bb.a
  %i.hm = phi i64 [ %.pre.i117, %.lr.ph.i116 ], [ %i.it, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.he, %.lr.ph.i116 ], [ %i.iu, %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI1Ea.exit6.i ] ; 2 uses
  %i.hn = load i8, ptr %.sroa.07.011.i, align 1
  %i.ho = add i64 %i.hm, 1                        ; 4 uses
  %i.hp = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.hq = load ptr, ptr %i.e, align 8             ; 7 uses
  %i.hr = ptrtoint ptr %i.hp to i64               ; 2 uses
end_hunk_51
begin_hunk_52_@_ZN6Assimp19Discreet3DSExporter14WriteHierarchyERK6aiNodeii:bb.a
  br i1 %i.hu, label %bb.ag, label %.noexc126

bb.ag:                                            ; preds = %bb.af
  %i.hv = sub nuw i64 %i.ho, %i.ht                ; 6 uses
  %i.hw = load ptr, ptr %i.en, align 8
  %i.hx = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hy = sub i64 %i.hx, %i.hr                    ; 2 uses
  %i.hz = icmp sgt i64 %i.ht, -1
  call void @llvm.assume(i1 %i.hz)
  %5 = xor i64 %i.ht, 9223372036854775807         ; 2 uses
  %i.ia = icmp ule i64 %i.hy, %5
  call void @llvm.assume(i1 %i.ia)
  %.not28.i.i = icmp ult i64 %i.hy, %i.hv
end_hunk_52
begin_hunk_53_@_ZN6Assimp19Discreet3DSExporter14WriteHierarchyERK6aiNodeii:bb.a
  br label %.noexc126

bb.aj:                                            ; preds = %bb.ag
  %6 = icmp ult i64 %5, %i.hv
  br i1 %6, label %bb.ak, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
end_hunk_53
begin_hunk_54_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_54
begin_hunk_55_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_55
