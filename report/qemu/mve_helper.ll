Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mve_helper?download=true
inline.NumInlined: 1943
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 752
loop-unroll.NumUnrolled: 752
begin_hunk_0_@helper_mve_vcadd90b:.preheader.preheader
  br label %mergemask_sb.exit.2

mergemask_sb.exit.2:                              ; preds = %bb.c, %mergemask_sb.exit.1
  %i.cg = and i16 %i.a, 8
  %.not.i.i.3 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i.3, label %mergemask_sb.exit.3, label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit.2
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.o, ptr %i.ch, align 1
  br label %mergemask_sb.exit.3

mergemask_sb.exit.3:                              ; preds = %bb.d, %mergemask_sb.exit.2
  %i.ci = and i16 %i.a, 16
  %.not.i.i.4 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.4, label %mergemask_sb.exit.4, label %bb.e

bb.e:                                             ; preds = %mergemask_sb.exit.3
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.t, ptr %i.cj, align 1
  br label %mergemask_sb.exit.4

mergemask_sb.exit.4:                              ; preds = %bb.e, %mergemask_sb.exit.3
  %i.ck = and i16 %i.a, 32
  %.not.i.i.5 = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i.5, label %mergemask_sb.exit.5, label %bb.f

bb.f:                                             ; preds = %mergemask_sb.exit.4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.y, ptr %i.cl, align 1
  br label %mergemask_sb.exit.5

mergemask_sb.exit.5:                              ; preds = %bb.f, %mergemask_sb.exit.4
  %i.cm = and i16 %i.a, 64
  %.not.i.i.6 = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i.6, label %mergemask_sb.exit.6, label %bb.g

bb.g:                                             ; preds = %mergemask_sb.exit.5
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ad, ptr %i.cn, align 1
  br label %mergemask_sb.exit.6

mergemask_sb.exit.6:                              ; preds = %bb.g, %mergemask_sb.exit.5
  %i.co = and i16 %i.a, 128
  %.not.i.i.7 = icmp eq i16 %i.co, 0
  br i1 %.not.i.i.7, label %mergemask_sb.exit.7, label %bb.h

bb.h:                                             ; preds = %mergemask_sb.exit.6
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ai, ptr %i.cp, align 1
  br label %mergemask_sb.exit.7

mergemask_sb.exit.7:                              ; preds = %bb.h, %mergemask_sb.exit.6
  %i.cq = and i16 %i.a, 256
  %.not.i.i.8 = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i.8, label %mergemask_sb.exit.8, label %bb.i

bb.i:                                             ; preds = %mergemask_sb.exit.7
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.an, ptr %i.cr, align 1
  br label %mergemask_sb.exit.8

mergemask_sb.exit.8:                              ; preds = %bb.i, %mergemask_sb.exit.7
  %i.cs = and i16 %i.a, 512
  %.not.i.i.9 = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.9, label %mergemask_sb.exit.9, label %bb.j

bb.j:                                             ; preds = %mergemask_sb.exit.8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.as, ptr %i.ct, align 1
  br label %mergemask_sb.exit.9

mergemask_sb.exit.9:                              ; preds = %bb.j, %mergemask_sb.exit.8
  %i.cu = and i16 %i.a, 1024
  %.not.i.i.10 = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i.10, label %mergemask_sb.exit.10, label %bb.k

bb.k:                                             ; preds = %mergemask_sb.exit.9
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ax, ptr %i.cv, align 1
  br label %mergemask_sb.exit.10

mergemask_sb.exit.10:                             ; preds = %bb.k, %mergemask_sb.exit.9
  %i.cw = and i16 %i.a, 2048
  %.not.i.i.11 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i.11, label %mergemask_sb.exit.11, label %bb.l

bb.l:                                             ; preds = %mergemask_sb.exit.10
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bc, ptr %i.cx, align 1
  br label %mergemask_sb.exit.11

mergemask_sb.exit.11:                             ; preds = %bb.l, %mergemask_sb.exit.10
  %i.cy = and i16 %i.a, 4096
  %.not.i.i.12 = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.12, label %mergemask_sb.exit.12, label %bb.m

bb.m:                                             ; preds = %mergemask_sb.exit.11
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bh, ptr %i.cz, align 1
  br label %mergemask_sb.exit.12

mergemask_sb.exit.12:                             ; preds = %bb.m, %mergemask_sb.exit.11
  %i.da = and i16 %i.a, 8192
  %.not.i.i.13 = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.13, label %mergemask_sb.exit.13, label %bb.n

bb.n:                                             ; preds = %mergemask_sb.exit.12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bm, ptr %i.db, align 1
  br label %mergemask_sb.exit.13

mergemask_sb.exit.13:                             ; preds = %bb.n, %mergemask_sb.exit.12
  %i.dc = and i16 %i.a, 16384
  %.not.i.i.14 = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i.14, label %mergemask_sb.exit.14, label %bb.o

bb.o:                                             ; preds = %mergemask_sb.exit.13
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.br, ptr %i.dd, align 1
  br label %mergemask_sb.exit.14

mergemask_sb.exit.14:                             ; preds = %bb.o, %mergemask_sb.exit.13
  %.not.i.i.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.i.15, label %mergemask_sb.exit.15, label %bb.p

bb.p:                                             ; preds = %mergemask_sb.exit.14
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.bw, ptr %i.de, align 1
  br label %mergemask_sb.exit.15

mergemask_sb.exit.15:                             ; preds = %bb.p, %mergemask_sb.exit.14
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4            ; 5 uses
  %i.dh = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dh, align 16         ; 4 uses
  %i.di = and i32 %.val.i, 15
  %.not.i.i25 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i25, label %bb.q, label %mve_eci_mask.exit.i

bb.q:                                             ; preds = %mergemask_sb.exit.15
  %i.dj = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dk = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.dj to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dk, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.q
  %i.dl = zext nneg i32 %i.dj to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dl
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dm = icmp eq i32 %.val.i, 80
  %i.dn = select i1 %i.dm, i32 16, i32 0
  store i32 %i.dn, ptr %i.dh, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %mergemask_sb.exit.15
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %mergemask_sb.exit.15 ] ; 3 uses
  %i.do = and i32 %i.dg, 16711680
  %.not.i = icmp eq i32 %i.do, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.s

bb.s:                                             ; preds = %mve_eci_mask.exit.i
  %i.dp = and i32 %i.dg, 983040
  %i.dq = icmp samesign ult i32 %i.dp, 589824
  %i.dr = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dq, i16 %i.dr, i16 %.0.i34.i ; 2 uses
  %i.ds = and i32 %i.dg, 15728640
  %i.dt = icmp samesign ult i32 %i.ds, 9437184
  %i.du = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dt, i16 %i.du, i16 %spec.select.i
  %i.dv = zext i16 %.1.i to i32
  %i.dw = xor i32 %i.dg, %i.dv                    ; 2 uses
  %i.dx = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dx, 0
  %i.dy = and i32 %i.dw, -16711681
  %i.dz = shl i32 %i.dg, 1                        ; 2 uses
  %i.ea = and i32 %i.dz, 917504
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = and i32 %i.dw, -15728641
  %i.ed = select i1 %.not32.i, i32 %i.ec, i32 %i.eb
  %i.ee = and i32 %i.dz, 14680064
  %i.ef = or disjoint i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.df, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.s
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vcadd90h(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
.preheader.preheader:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %4 = load i16, ptr %2, align 2
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %6 = load i16, ptr %5, align 2
  %7 = sub i16 %4, %6
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %9 = load i16, ptr %8, align 2
  %10 = load i16, ptr %3, align 2
  %11 = add i16 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %15 = load i16, ptr %14, align 2
  %16 = sub i16 %13, %15
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr i8, ptr %3, i64 4
  %20 = load i16, ptr %19, align 2
  %21 = add i16 %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %25 = load i16, ptr %24, align 2
  %26 = sub i16 %23, %25
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr i8, ptr %3, i64 8
  %30 = load i16, ptr %29, align 2
  %31 = add i16 %30, %28
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %35 = load i16, ptr %34, align 2
  %36 = sub i16 %33, %35
  %37 = getelementptr i8, ptr %3, i64 12
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %40 = load i16, ptr %39, align 2
  %41 = add i16 %38, %40
  %i.b = and i16 %i.a, 255
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = load i16, ptr %1, align 2
  %i.h = xor i16 %i.f, -1
  %i.i = and i16 %i.g, %i.h
  %i.j = and i16 %7, %i.f
  %i.k = or i16 %i.i, %i.j
  store i16 %i.k, ptr %1, align 2
  %i.l = lshr i16 %i.a, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = and i16 %i.l, 255
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = load i16, ptr %i.m, align 2
  %i.t = xor i16 %i.r, -1
  %i.u = and i16 %i.s, %i.t
  %i.v = and i16 %11, %i.r
  %i.w = or i16 %i.u, %i.v
  store i16 %i.w, ptr %i.m, align 2
  %i.x = lshr i16 %i.a, 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.z = and i16 %i.x, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = load i16, ptr %i.y, align 2
  %i.af = xor i16 %i.ad, -1
  %i.ag = and i16 %i.ae, %i.af
  %i.ah = and i16 %16, %i.ad
  %i.ai = or i16 %i.ag, %i.ah
  store i16 %i.ai, ptr %i.y, align 2
  %i.aj = lshr i16 %i.a, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.al = and i16 %i.aj, 255
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i16                  ; 2 uses
  %i.aq = load i16, ptr %i.ak, align 2
  %i.ar = xor i16 %i.ap, -1
  %i.as = and i16 %i.aq, %i.ar
  %i.at = and i16 %21, %i.ap
  %i.au = or i16 %i.as, %i.at
  store i16 %i.au, ptr %i.ak, align 2
  %i.av = lshr i16 %i.a, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = zext nneg i16 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i16                  ; 2 uses
  %i.bb = load i16, ptr %i.aw, align 2
  %i.bc = xor i16 %i.ba, -1
  %i.bd = and i16 %i.bb, %i.bc
  %i.be = and i16 %26, %i.ba
  %i.bf = or i16 %i.bd, %i.be
  store i16 %i.bf, ptr %i.aw, align 2
  %i.bg = lshr i16 %i.a, 10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bi = zext nneg i16 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i16                  ; 2 uses
  %i.bm = load i16, ptr %i.bh, align 2
  %i.bn = xor i16 %i.bl, -1
  %i.bo = and i16 %i.bm, %i.bn
  %i.bp = and i16 %31, %i.bl
  %i.bq = or i16 %i.bo, %i.bp
  store i16 %i.bq, ptr %i.bh, align 2
  %i.br = lshr i16 %i.a, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bt = zext nneg i16 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = trunc i64 %i.bv to i16                  ; 2 uses
  %i.bx = load i16, ptr %i.bs, align 2
  %i.by = xor i16 %i.bw, -1
  %i.bz = and i16 %i.bx, %i.by
  %i.ca = and i16 %36, %i.bw
  %i.cb = or i16 %i.bz, %i.ca
  store i16 %i.cb, ptr %i.bs, align 2
  %i.cc = lshr i16 %i.a, 14
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.ce = zext nneg i16 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = trunc i64 %i.cg to i16                  ; 2 uses
  %i.ci = load i16, ptr %i.cd, align 2
  %i.cj = xor i16 %i.ch, -1
  %i.ck = and i16 %i.ci, %i.cj
  %i.cl = and i16 %41, %i.ch
  %i.cm = or i16 %i.ck, %i.cl
  store i16 %i.cm, ptr %i.cd, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 5 uses
  %i.cp = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cp, align 16         ; 4 uses
  %i.cq = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %bb.a, label %mve_eci_mask.exit.i

bb.a:                                             ; preds = %.preheader.preheader
  %i.cr = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cs = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cr to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cs, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.ct = zext nneg i32 %i.cr to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ct
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cu = icmp eq i32 %.val.i, 80
  %i.cv = select i1 %i.cu, i32 16, i32 0
  store i32 %i.cv, ptr %i.cp, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.preheader.preheader
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.preheader.preheader ] ; 3 uses
  %i.cw = and i32 %i.co, 16711680
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.c

bb.c:                                             ; preds = %mve_eci_mask.exit.i
  %i.cx = and i32 %i.co, 983040
  %i.cy = icmp samesign ult i32 %i.cx, 589824
  %i.cz = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cy, i16 %i.cz, i16 %.0.i34.i ; 2 uses
  %i.da = and i32 %i.co, 15728640
  %i.db = icmp samesign ult i32 %i.da, 9437184
  %i.dc = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.db, i16 %i.dc, i16 %spec.select.i
  %i.dd = zext i16 %.1.i to i32
  %i.de = xor i32 %i.co, %i.dd                    ; 2 uses
  %i.df = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.df, 0
  %i.dg = and i32 %i.de, -16711681
  %i.dh = shl i32 %i.co, 1                        ; 2 uses
  %i.di = and i32 %i.dh, 917504
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = and i32 %i.de, -15728641
  %i.dl = select i1 %.not32.i, i32 %i.dk, i32 %i.dj
  %i.dm = and i32 %i.dh, 14680064
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.cn, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vcadd90w(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
.preheader.preheader:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr %3, align 4
  %i.i = add i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub i32 %i.k, %i.m
  %i.o = getelementptr i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.p, %i.r
  %i.t = and i16 %i.a, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = load i32, ptr %1, align 4
  %i.z = xor i32 %i.x, -1
  %i.aa = and i32 %i.y, %i.z
  %i.ab = and i32 %i.e, %i.x
  %i.ac = or i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %1, align 4
  %i.ad = lshr i16 %i.a, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = and i16 %i.ad, 255
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = load i32, ptr %i.ae, align 4
  %i.al = xor i32 %i.aj, -1
  %i.am = and i32 %i.ak, %i.al
  %i.an = and i32 %i.i, %i.aj
  %i.ao = or i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ae, align 4
  %i.ap = lshr i16 %i.a, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = zext nneg i16 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = load i32, ptr %i.aq, align 4
  %i.aw = xor i32 %i.au, -1
  %i.ax = and i32 %i.av, %i.aw
  %i.ay = and i32 %i.n, %i.au
  %i.az = or i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.aq, align 4
  %i.ba = lshr i16 %i.a, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bc = zext nneg i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = load i32, ptr %i.bb, align 4
  %i.bh = xor i32 %i.bf, -1
  %i.bi = and i32 %i.bg, %i.bh
  %i.bj = and i32 %i.s, %i.bf
  %i.bk = or i32 %i.bi, %i.bj
  store i32 %i.bk, ptr %i.bb, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 5 uses
  %i.bn = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bn, align 16         ; 4 uses
  %i.bo = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.a, label %mve_eci_mask.exit.i

bb.a:                                             ; preds = %.preheader.preheader
  %i.bp = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bq = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bp to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bq, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.br = zext nneg i32 %i.bp to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.br
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bs = icmp eq i32 %.val.i, 80
  %i.bt = select i1 %i.bs, i32 16, i32 0
  store i32 %i.bt, ptr %i.bn, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.preheader.preheader
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.preheader.preheader ] ; 3 uses
  %i.bu = and i32 %i.bm, 16711680
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.c

bb.c:                                             ; preds = %mve_eci_mask.exit.i
  %i.bv = and i32 %i.bm, 983040
  %i.bw = icmp samesign ult i32 %i.bv, 589824
  %i.bx = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bw, i16 %i.bx, i16 %.0.i34.i ; 2 uses
  %i.by = and i32 %i.bm, 15728640
  %i.bz = icmp samesign ult i32 %i.by, 9437184
  %i.ca = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bz, i16 %i.ca, i16 %spec.select.i
  %i.cb = zext i16 %.1.i to i32
  %i.cc = xor i32 %i.bm, %i.cb                    ; 2 uses
  %i.cd = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cd, 0
  %i.ce = and i32 %i.cc, -16711681
  %i.cf = shl i32 %i.bm, 1                        ; 2 uses
  %i.cg = and i32 %i.cf, 917504
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = and i32 %i.cc, -15728641
  %i.cj = select i1 %.not32.i, i32 %i.ci, i32 %i.ch
  %i.ck = and i32 %i.cf, 14680064
  %i.cl = or disjoint i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.bl, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.c
  ret void
}

end_hunk_0
begin_hunk_1_@helper_mve_vcadd270b:.preheader.preheader
  br label %mergemask_sb.exit.2

mergemask_sb.exit.2:                              ; preds = %bb.c, %mergemask_sb.exit.1
  %i.cg = and i16 %i.a, 8
  %.not.i.i.3 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i.3, label %mergemask_sb.exit.3, label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit.2
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.o, ptr %i.ch, align 1
  br label %mergemask_sb.exit.3

mergemask_sb.exit.3:                              ; preds = %bb.d, %mergemask_sb.exit.2
  %i.ci = and i16 %i.a, 16
  %.not.i.i.4 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.4, label %mergemask_sb.exit.4, label %bb.e

bb.e:                                             ; preds = %mergemask_sb.exit.3
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.t, ptr %i.cj, align 1
  br label %mergemask_sb.exit.4

mergemask_sb.exit.4:                              ; preds = %bb.e, %mergemask_sb.exit.3
  %i.ck = and i16 %i.a, 32
  %.not.i.i.5 = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i.5, label %mergemask_sb.exit.5, label %bb.f

bb.f:                                             ; preds = %mergemask_sb.exit.4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.y, ptr %i.cl, align 1
  br label %mergemask_sb.exit.5

mergemask_sb.exit.5:                              ; preds = %bb.f, %mergemask_sb.exit.4
  %i.cm = and i16 %i.a, 64
  %.not.i.i.6 = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i.6, label %mergemask_sb.exit.6, label %bb.g

bb.g:                                             ; preds = %mergemask_sb.exit.5
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ad, ptr %i.cn, align 1
  br label %mergemask_sb.exit.6

mergemask_sb.exit.6:                              ; preds = %bb.g, %mergemask_sb.exit.5
  %i.co = and i16 %i.a, 128
  %.not.i.i.7 = icmp eq i16 %i.co, 0
  br i1 %.not.i.i.7, label %mergemask_sb.exit.7, label %bb.h

bb.h:                                             ; preds = %mergemask_sb.exit.6
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ai, ptr %i.cp, align 1
  br label %mergemask_sb.exit.7

mergemask_sb.exit.7:                              ; preds = %bb.h, %mergemask_sb.exit.6
  %i.cq = and i16 %i.a, 256
  %.not.i.i.8 = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i.8, label %mergemask_sb.exit.8, label %bb.i

bb.i:                                             ; preds = %mergemask_sb.exit.7
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.an, ptr %i.cr, align 1
  br label %mergemask_sb.exit.8

mergemask_sb.exit.8:                              ; preds = %bb.i, %mergemask_sb.exit.7
  %i.cs = and i16 %i.a, 512
  %.not.i.i.9 = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.9, label %mergemask_sb.exit.9, label %bb.j

bb.j:                                             ; preds = %mergemask_sb.exit.8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.as, ptr %i.ct, align 1
  br label %mergemask_sb.exit.9

mergemask_sb.exit.9:                              ; preds = %bb.j, %mergemask_sb.exit.8
  %i.cu = and i16 %i.a, 1024
  %.not.i.i.10 = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i.10, label %mergemask_sb.exit.10, label %bb.k

bb.k:                                             ; preds = %mergemask_sb.exit.9
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ax, ptr %i.cv, align 1
  br label %mergemask_sb.exit.10

mergemask_sb.exit.10:                             ; preds = %bb.k, %mergemask_sb.exit.9
  %i.cw = and i16 %i.a, 2048
  %.not.i.i.11 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i.11, label %mergemask_sb.exit.11, label %bb.l

bb.l:                                             ; preds = %mergemask_sb.exit.10
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bc, ptr %i.cx, align 1
  br label %mergemask_sb.exit.11

mergemask_sb.exit.11:                             ; preds = %bb.l, %mergemask_sb.exit.10
  %i.cy = and i16 %i.a, 4096
  %.not.i.i.12 = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.12, label %mergemask_sb.exit.12, label %bb.m

bb.m:                                             ; preds = %mergemask_sb.exit.11
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bh, ptr %i.cz, align 1
  br label %mergemask_sb.exit.12

mergemask_sb.exit.12:                             ; preds = %bb.m, %mergemask_sb.exit.11
  %i.da = and i16 %i.a, 8192
  %.not.i.i.13 = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.13, label %mergemask_sb.exit.13, label %bb.n

bb.n:                                             ; preds = %mergemask_sb.exit.12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bm, ptr %i.db, align 1
  br label %mergemask_sb.exit.13

mergemask_sb.exit.13:                             ; preds = %bb.n, %mergemask_sb.exit.12
  %i.dc = and i16 %i.a, 16384
  %.not.i.i.14 = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i.14, label %mergemask_sb.exit.14, label %bb.o

bb.o:                                             ; preds = %mergemask_sb.exit.13
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.br, ptr %i.dd, align 1
  br label %mergemask_sb.exit.14

mergemask_sb.exit.14:                             ; preds = %bb.o, %mergemask_sb.exit.13
  %.not.i.i.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.i.15, label %mergemask_sb.exit.15, label %bb.p

bb.p:                                             ; preds = %mergemask_sb.exit.14
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.bw, ptr %i.de, align 1
  br label %mergemask_sb.exit.15

mergemask_sb.exit.15:                             ; preds = %bb.p, %mergemask_sb.exit.14
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4            ; 5 uses
  %i.dh = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dh, align 16         ; 4 uses
  %i.di = and i32 %.val.i, 15
  %.not.i.i25 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i25, label %bb.q, label %mve_eci_mask.exit.i

bb.q:                                             ; preds = %mergemask_sb.exit.15
  %i.dj = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dk = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.dj to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dk, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.q
  %i.dl = zext nneg i32 %i.dj to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dl
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dm = icmp eq i32 %.val.i, 80
  %i.dn = select i1 %i.dm, i32 16, i32 0
  store i32 %i.dn, ptr %i.dh, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %mergemask_sb.exit.15
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %mergemask_sb.exit.15 ] ; 3 uses
  %i.do = and i32 %i.dg, 16711680
  %.not.i = icmp eq i32 %i.do, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.s

bb.s:                                             ; preds = %mve_eci_mask.exit.i
  %i.dp = and i32 %i.dg, 983040
  %i.dq = icmp samesign ult i32 %i.dp, 589824
  %i.dr = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dq, i16 %i.dr, i16 %.0.i34.i ; 2 uses
  %i.ds = and i32 %i.dg, 15728640
  %i.dt = icmp samesign ult i32 %i.ds, 9437184
  %i.du = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dt, i16 %i.du, i16 %spec.select.i
  %i.dv = zext i16 %.1.i to i32
  %i.dw = xor i32 %i.dg, %i.dv                    ; 2 uses
  %i.dx = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dx, 0
  %i.dy = and i32 %i.dw, -16711681
  %i.dz = shl i32 %i.dg, 1                        ; 2 uses
  %i.ea = and i32 %i.dz, 917504
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = and i32 %i.dw, -15728641
  %i.ed = select i1 %.not32.i, i32 %i.ec, i32 %i.eb
  %i.ee = and i32 %i.dz, 14680064
  %i.ef = or disjoint i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.df, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.s
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vcadd270h(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
.preheader.preheader:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %4 = load i16, ptr %2, align 2
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, %4
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %9 = load i16, ptr %8, align 2
  %10 = load i16, ptr %3, align 2
  %11 = sub i16 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %15 = load i16, ptr %14, align 2
  %16 = add i16 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr i8, ptr %3, i64 4
  %20 = load i16, ptr %19, align 2
  %21 = sub i16 %18, %20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %25 = load i16, ptr %24, align 2
  %26 = add i16 %25, %23
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr i8, ptr %3, i64 8
  %30 = load i16, ptr %29, align 2
  %31 = sub i16 %28, %30
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %35 = load i16, ptr %34, align 2
  %36 = add i16 %35, %33
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr i8, ptr %3, i64 12
  %40 = load i16, ptr %39, align 2
  %41 = sub i16 %38, %40
  %i.b = and i16 %i.a, 255
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = load i16, ptr %1, align 2
  %i.h = xor i16 %i.f, -1
  %i.i = and i16 %i.g, %i.h
  %i.j = and i16 %7, %i.f
  %i.k = or i16 %i.i, %i.j
  store i16 %i.k, ptr %1, align 2
  %i.l = lshr i16 %i.a, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = and i16 %i.l, 255
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = load i16, ptr %i.m, align 2
  %i.t = xor i16 %i.r, -1
  %i.u = and i16 %i.s, %i.t
  %i.v = and i16 %11, %i.r
  %i.w = or i16 %i.u, %i.v
  store i16 %i.w, ptr %i.m, align 2
  %i.x = lshr i16 %i.a, 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.z = and i16 %i.x, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = load i16, ptr %i.y, align 2
  %i.af = xor i16 %i.ad, -1
  %i.ag = and i16 %i.ae, %i.af
  %i.ah = and i16 %16, %i.ad
  %i.ai = or i16 %i.ag, %i.ah
  store i16 %i.ai, ptr %i.y, align 2
  %i.aj = lshr i16 %i.a, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.al = and i16 %i.aj, 255
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i16                  ; 2 uses
  %i.aq = load i16, ptr %i.ak, align 2
  %i.ar = xor i16 %i.ap, -1
  %i.as = and i16 %i.aq, %i.ar
  %i.at = and i16 %21, %i.ap
  %i.au = or i16 %i.as, %i.at
  store i16 %i.au, ptr %i.ak, align 2
  %i.av = lshr i16 %i.a, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = zext nneg i16 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i16                  ; 2 uses
  %i.bb = load i16, ptr %i.aw, align 2
  %i.bc = xor i16 %i.ba, -1
  %i.bd = and i16 %i.bb, %i.bc
  %i.be = and i16 %26, %i.ba
  %i.bf = or i16 %i.bd, %i.be
  store i16 %i.bf, ptr %i.aw, align 2
  %i.bg = lshr i16 %i.a, 10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bi = zext nneg i16 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i16                  ; 2 uses
  %i.bm = load i16, ptr %i.bh, align 2
  %i.bn = xor i16 %i.bl, -1
  %i.bo = and i16 %i.bm, %i.bn
  %i.bp = and i16 %31, %i.bl
  %i.bq = or i16 %i.bo, %i.bp
  store i16 %i.bq, ptr %i.bh, align 2
  %i.br = lshr i16 %i.a, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bt = zext nneg i16 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = trunc i64 %i.bv to i16                  ; 2 uses
  %i.bx = load i16, ptr %i.bs, align 2
  %i.by = xor i16 %i.bw, -1
  %i.bz = and i16 %i.bx, %i.by
  %i.ca = and i16 %36, %i.bw
  %i.cb = or i16 %i.bz, %i.ca
  store i16 %i.cb, ptr %i.bs, align 2
  %i.cc = lshr i16 %i.a, 14
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.ce = zext nneg i16 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = trunc i64 %i.cg to i16                  ; 2 uses
  %i.ci = load i16, ptr %i.cd, align 2
  %i.cj = xor i16 %i.ch, -1
  %i.ck = and i16 %i.ci, %i.cj
  %i.cl = and i16 %41, %i.ch
  %i.cm = or i16 %i.ck, %i.cl
  store i16 %i.cm, ptr %i.cd, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 5 uses
  %i.cp = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cp, align 16         ; 4 uses
  %i.cq = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %bb.a, label %mve_eci_mask.exit.i

bb.a:                                             ; preds = %.preheader.preheader
  %i.cr = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cs = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cr to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cs, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.ct = zext nneg i32 %i.cr to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ct
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cu = icmp eq i32 %.val.i, 80
  %i.cv = select i1 %i.cu, i32 16, i32 0
  store i32 %i.cv, ptr %i.cp, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.preheader.preheader
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.preheader.preheader ] ; 3 uses
  %i.cw = and i32 %i.co, 16711680
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.c

bb.c:                                             ; preds = %mve_eci_mask.exit.i
  %i.cx = and i32 %i.co, 983040
  %i.cy = icmp samesign ult i32 %i.cx, 589824
  %i.cz = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cy, i16 %i.cz, i16 %.0.i34.i ; 2 uses
  %i.da = and i32 %i.co, 15728640
  %i.db = icmp samesign ult i32 %i.da, 9437184
  %i.dc = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.db, i16 %i.dc, i16 %spec.select.i
  %i.dd = zext i16 %.1.i to i32
  %i.de = xor i32 %i.co, %i.dd                    ; 2 uses
  %i.df = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.df, 0
  %i.dg = and i32 %i.de, -16711681
  %i.dh = shl i32 %i.co, 1                        ; 2 uses
  %i.di = and i32 %i.dh, 917504
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = and i32 %i.de, -15728641
  %i.dl = select i1 %.not32.i, i32 %i.dk, i32 %i.dj
  %i.dm = and i32 %i.dh, 14680064
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.cn, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vcadd270w(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
.preheader.preheader:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr %3, align 4
  %i.i = sub i32 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sub i32 %i.p, %i.r
  %i.t = and i16 %i.a, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = load i32, ptr %1, align 4
  %i.z = xor i32 %i.x, -1
  %i.aa = and i32 %i.y, %i.z
  %i.ab = and i32 %i.e, %i.x
  %i.ac = or i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %1, align 4
  %i.ad = lshr i16 %i.a, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = and i16 %i.ad, 255
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = load i32, ptr %i.ae, align 4
  %i.al = xor i32 %i.aj, -1
  %i.am = and i32 %i.ak, %i.al
  %i.an = and i32 %i.i, %i.aj
  %i.ao = or i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ae, align 4
  %i.ap = lshr i16 %i.a, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = zext nneg i16 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = load i32, ptr %i.aq, align 4
  %i.aw = xor i32 %i.au, -1
  %i.ax = and i32 %i.av, %i.aw
  %i.ay = and i32 %i.n, %i.au
  %i.az = or i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.aq, align 4
  %i.ba = lshr i16 %i.a, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bc = zext nneg i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = load i32, ptr %i.bb, align 4
  %i.bh = xor i32 %i.bf, -1
  %i.bi = and i32 %i.bg, %i.bh
  %i.bj = and i32 %i.s, %i.bf
  %i.bk = or i32 %i.bi, %i.bj
  store i32 %i.bk, ptr %i.bb, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 5 uses
  %i.bn = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bn, align 16         ; 4 uses
  %i.bo = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.a, label %mve_eci_mask.exit.i

bb.a:                                             ; preds = %.preheader.preheader
  %i.bp = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bq = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bp to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bq, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.br = zext nneg i32 %i.bp to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.br
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bs = icmp eq i32 %.val.i, 80
  %i.bt = select i1 %i.bs, i32 16, i32 0
  store i32 %i.bt, ptr %i.bn, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.preheader.preheader
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.preheader.preheader ] ; 3 uses
  %i.bu = and i32 %i.bm, 16711680
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.c

bb.c:                                             ; preds = %mve_eci_mask.exit.i
  %i.bv = and i32 %i.bm, 983040
  %i.bw = icmp samesign ult i32 %i.bv, 589824
  %i.bx = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bw, i16 %i.bx, i16 %.0.i34.i ; 2 uses
  %i.by = and i32 %i.bm, 15728640
  %i.bz = icmp samesign ult i32 %i.by, 9437184
  %i.ca = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bz, i16 %i.ca, i16 %spec.select.i
  %i.cb = zext i16 %.1.i to i32
  %i.cc = xor i32 %i.bm, %i.cb                    ; 2 uses
  %i.cd = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cd, 0
  %i.ce = and i32 %i.cc, -16711681
  %i.cf = shl i32 %i.bm, 1                        ; 2 uses
  %i.cg = and i32 %i.cf, 917504
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = and i32 %i.cc, -15728641
  %i.cj = select i1 %.not32.i, i32 %i.ci, i32 %i.ch
  %i.ck = and i32 %i.cf, 14680064
  %i.cl = or disjoint i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.bl, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.c
  ret void
}

end_hunk_1
