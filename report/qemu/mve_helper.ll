Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mve_helper?download=true
inline.NumInlined: 1943
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 752
loop-unroll.NumUnrolled: 752
begin_hunk_0_@helper_mve_vqrdmlsdhxh:bb.a
  store i32 %i.ff, ptr %i.ez, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.c
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.c ] ; 3 uses
  %i.fg = and i32 %i.ey, 16711680
  %.not.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.f

bb.f:                                             ; preds = %mve_eci_mask.exit.i
  %i.fh = and i32 %i.ey, 983040
  %i.fi = icmp samesign ult i32 %i.fh, 589824
  %i.fj = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.fi, i16 %i.fj, i16 %.0.i34.i ; 2 uses
  %i.fk = and i32 %i.ey, 15728640
  %i.fl = icmp samesign ult i32 %i.fk, 9437184
  %i.fm = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.fl, i16 %i.fm, i16 %spec.select.i
  %i.fn = zext i16 %.1.i to i32
  %i.fo = xor i32 %i.ey, %i.fn                    ; 2 uses
  %i.fp = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.fp, 0
  %i.fq = and i32 %i.fo, -16711681
  %i.fr = shl i32 %i.ey, 1                        ; 2 uses
  %i.fs = and i32 %i.fr, 917504
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = and i32 %i.fo, -15728641
  %i.fv = select i1 %.not32.i, i32 %i.fu, i32 %i.ft
  %i.fw = and i32 %i.fr, 14680064
  %i.fx = or disjoint i32 %i.fv, %i.fw
  store i32 %i.fx, ptr %i.ex, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlsdhxw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 2 uses
  %i.b = lshr i16 %i.a, 4                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %3, i64 4
  %i.f = load i32, ptr %3, align 4
  %i.g = load i32, ptr %2, align 4
  %i.h = load i32, ptr %i.e, align 4
  %i.i = sext i32 %i.d to i64
  %i.j = sext i32 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i32 %i.g to i64
  %i.m = sext i32 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = sub nsw i64 %i.k, %i.n
  %i.p = add nsw i64 %i.o, 1073741824             ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.p, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1         ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %i.u = select i1 %i.t, i32 2147483647, i32 -2147483648
  %i.v = lshr i64 %i.s, 32
  %i.w = trunc nuw i64 %i.v to i32
  %.0.i.1 = select i1 %i.r, i32 %i.u, i32 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = and i16 %i.b, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = load i32, ptr %i.x, align 4
  %i.ae = xor i32 %i.ac, -1
  %i.af = and i32 %i.ad, %i.ae
  %i.ag = and i32 %.0.i.1, %i.ac
  %i.ah = or i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.x, align 4
  %i.ai = trunc i16 %i.b to i1
  %i.aj = and i1 %i.r, %i.ai
  %i.ak = lshr i16 %i.a, 12                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr i8, ptr %3, i64 12
  %i.ao = getelementptr i8, ptr %3, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = load i32, ptr %i.an, align 4
  %i.at = sext i32 %i.am to i64
  %i.au = sext i32 %i.ap to i64
  %i.av = mul nsw i64 %i.au, %i.at
  %i.aw = sext i32 %i.ar to i64
  %i.ax = sext i32 %i.as to i64
  %i.ay = mul nsw i64 %i.ax, %i.aw
  %i.az = sub nsw i64 %i.av, %i.ay
  %i.ba = add nsw i64 %i.az, 1073741824           ; 2 uses
  %i.bb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ba, i64 %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  %i.bf = select i1 %i.be, i32 2147483647, i32 -2147483648
  %i.bg = lshr i64 %i.bd, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %.0.i.3 = select i1 %i.bc, i32 %i.bf, i32 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bj = zext nneg i16 %i.ak to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = load i32, ptr %i.bi, align 4
  %i.bo = xor i32 %i.bm, -1
  %i.bp = and i32 %i.bn, %i.bo
  %i.bq = and i32 %.0.i.3, %i.bm
  %i.br = or i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.bi, align 4
  %i.bs = trunc i16 %i.ak to i1
  %i.bt = and i1 %i.bc, %i.bs
  %i.bu = or i1 %i.aj, %i.bt
  br i1 %i.bu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bv, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 5 uses
  %i.by = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.by, align 16         ; 4 uses
  %i.bz = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %bb.d, label %mve_eci_mask.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ca = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cb = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ca to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cb, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.cc = zext nneg i32 %i.ca to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cc
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cd = icmp eq i32 %.val.i, 80
  %i.ce = select i1 %i.cd, i32 16, i32 0
  store i32 %i.ce, ptr %i.by, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.c
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.c ] ; 3 uses
  %i.cf = and i32 %i.bx, 16711680
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.f

bb.f:                                             ; preds = %mve_eci_mask.exit.i
  %i.cg = and i32 %i.bx, 983040
  %i.ch = icmp samesign ult i32 %i.cg, 589824
  %i.ci = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ch, i16 %i.ci, i16 %.0.i34.i ; 2 uses
  %i.cj = and i32 %i.bx, 15728640
  %i.ck = icmp samesign ult i32 %i.cj, 9437184
  %i.cl = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ck, i16 %i.cl, i16 %spec.select.i
  %i.cm = zext i16 %.1.i to i32
  %i.cn = xor i32 %i.bx, %i.cm                    ; 2 uses
  %i.co = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.co, 0
  %i.cp = and i32 %i.cn, -16711681
  %i.cq = shl i32 %i.bx, 1                        ; 2 uses
  %i.cr = and i32 %i.cq, 917504
  %i.cs = or disjoint i32 %i.cp, %i.cr
  %i.ct = and i32 %i.cn, -15728641
  %i.cu = select i1 %.not32.i, i32 %i.ct, i32 %i.cs
  %i.cv = and i32 %i.cq, 14680064
  %i.cw = or disjoint i32 %i.cu, %i.cv
  store i32 %i.cw, ptr %i.bw, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullbh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_qdmullh.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = load i16, ptr %3, align 2
  %i.d = sext i16 %i.b to i64
  %i.e = sext i16 %i.c to i64
  %i.f = mul nsw i64 %i.e, %i.d                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1073741823            ; 2 uses
  %.tr = trunc nsw i64 %i.f to i32
  %i.h = shl i32 %.tr, 1
  %.0.i.i = select i1 %i.g, i32 2147483647, i32 %i.h
  %i.i = and i16 %i.a, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = xor i32 %i.m, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = and i32 %.0.i.i, %i.m
  %i.r = or i32 %i.q, %i.p
  store i32 %i.r, ptr %1, align 4
  %i.s = trunc i16 %i.a to i1
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.a, 4                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i16, ptr %i.v, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.y = load i16, ptr %i.x, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aa = sext i16 %i.w to i64
  %i.ab = sext i16 %i.y to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1073741823          ; 2 uses
  %.tr.1 = trunc nsw i64 %i.ac to i32
  %i.ae = shl i32 %.tr.1, 1
  %.0.i.i.1 = select i1 %i.ad, i32 2147483647, i32 %i.ae
  %i.af = and i16 %i.u, 255
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = load i32, ptr %i.z, align 4
  %i.al = xor i32 %i.aj, -1
  %i.am = and i32 %i.ak, %i.al
  %i.an = and i32 %.0.i.i.1, %i.aj
  %i.ao = or i32 %i.an, %i.am
  store i32 %i.ao, ptr %i.z, align 4
  %i.ap = and i16 %i.u, 1
  %i.aq = zext nneg i16 %i.ap to i32
  %i.ar = select i1 %i.ad, i32 %i.aq, i32 0
  %i.as = zext i1 %i.t to i32
  %i.at = or i32 %i.ar, %i.as
  %i.au = lshr i16 %i.a, 8                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = sext i16 %i.aw to i64
  %i.bb = sext i16 %i.ay to i64
  %i.bc = mul nsw i64 %i.bb, %i.ba                ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 1073741823          ; 2 uses
  %.tr.2 = trunc nsw i64 %i.bc to i32
  %i.be = shl i32 %.tr.2, 1
  %.0.i.i.2 = select i1 %i.bd, i32 2147483647, i32 %i.be
  %i.bf = zext nneg i16 %i.au to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = load i32, ptr %i.az, align 4
  %i.bk = xor i32 %i.bi, -1
  %i.bl = and i32 %i.bj, %i.bk
  %i.bm = and i32 %.0.i.i.2, %i.bi
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.az, align 4
  %i.bo = and i16 %i.au, 1
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = select i1 %i.bd, i32 %i.bp, i32 0
  %i.br = or i32 %i.bq, %i.at
  %i.bs = lshr i16 %i.a, 12                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.by = sext i16 %i.bu to i64
  %i.bz = sext i16 %i.bw to i64
  %i.ca = mul nsw i64 %i.bz, %i.by                ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 1073741823          ; 2 uses
  %.tr.3 = trunc nsw i64 %i.ca to i32
  %i.cc = shl i32 %.tr.3, 1
  %.0.i.i.3 = select i1 %i.cb, i32 2147483647, i32 %i.cc
  %i.cd = zext nneg i16 %i.bs to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ch = load i32, ptr %i.bx, align 4
  %i.ci = xor i32 %i.cg, -1
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = and i32 %.0.i.i.3, %i.cg
  %i.cl = or i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.bx, align 4
  %i.cm = and i16 %i.bs, 1
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = select i1 %i.cb, i32 %i.cn, i32 0
  %i.cp = or i32 %i.co, %i.br
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_qdmullh.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cq, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullh.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 5 uses
  %i.ct = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ct, align 16         ; 4 uses
  %i.cu = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cv = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cw = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cv to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cw, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.cx = zext nneg i32 %i.cv to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cx
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cy = icmp eq i32 %.val.i, 80
  %i.cz = select i1 %i.cy, i32 16, i32 0
  store i32 %i.cz, ptr %i.ct, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.da = and i32 %i.cs, 16711680
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.db = and i32 %i.cs, 983040
  %i.dc = icmp samesign ult i32 %i.db, 589824
  %i.dd = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dc, i16 %i.dd, i16 %.0.i34.i ; 2 uses
  %i.de = and i32 %i.cs, 15728640
  %i.df = icmp samesign ult i32 %i.de, 9437184
  %i.dg = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.df, i16 %i.dg, i16 %spec.select.i
  %i.dh = zext i16 %.1.i to i32
  %i.di = xor i32 %i.cs, %i.dh                    ; 2 uses
  %i.dj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dj, 0
  %i.dk = and i32 %i.di, -16711681
  %i.dl = shl i32 %i.cs, 1                        ; 2 uses
  %i.dm = and i32 %i.dl, 917504
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = and i32 %i.di, -15728641
  %i.dp = select i1 %.not32.i, i32 %i.do, i32 %i.dn
  %i.dq = and i32 %i.dl, 14680064
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.cr, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullbw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_qdmullw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = load i32, ptr %3, align 4
  %i.d = sext i32 %i.b to i64
  %i.e = sext i32 %i.c to i64
  %i.f = mul nsw i64 %i.e, %i.d                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 4611686018427387903   ; 2 uses
  %i.h = shl nsw i64 %i.f, 1
  %spec.select24 = select i1 %i.g, i64 9223372036854775807, i64 %i.h
  %i.i = and i16 %i.a, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = load i64, ptr %1, align 8
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.m, %i.n
  %i.p = and i64 %spec.select24, %i.l
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %1, align 8
  %i.r = and i16 %i.a, 17
  %i.s = icmp ne i16 %i.r, 0
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.a, 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = sext i32 %i.y to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 4611686018427387903 ; 2 uses
  %i.ae = shl nsw i64 %i.ac, 1
  %spec.select24.1 = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae
  %i.af = zext nneg i16 %i.u to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load i64, ptr %i.z, align 8
  %i.aj = xor i64 %i.ah, -1
  %i.ak = and i64 %i.ai, %i.aj
  %i.al = and i64 %spec.select24.1, %i.ah
  %i.am = or i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.z, align 8
  %i.an = and i16 %i.a, 4352
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = and i1 %i.ad, %i.ao
  %i.aq = or i1 %i.t, %i.ap
  br i1 %i.aq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %do_qdmullw.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ar, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullw.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 5 uses
  %i.au = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.au, align 16         ; 4 uses
  %i.av = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aw = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ax = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.aw to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ax, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ay = zext nneg i32 %i.aw to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ay
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.az = icmp eq i32 %.val.i, 80
  %i.ba = select i1 %i.az, i32 16, i32 0
  store i32 %i.ba, ptr %i.au, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.bb = and i32 %i.at, 16711680
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.bc = and i32 %i.at, 983040
  %i.bd = icmp samesign ult i32 %i.bc, 589824
  %i.be = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bd, i16 %i.be, i16 %.0.i34.i ; 2 uses
  %i.bf = and i32 %i.at, 15728640
  %i.bg = icmp samesign ult i32 %i.bf, 9437184
  %i.bh = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bg, i16 %i.bh, i16 %spec.select.i
  %i.bi = zext i16 %.1.i to i32
  %i.bj = xor i32 %i.at, %i.bi                    ; 2 uses
  %i.bk = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bk, 0
  %i.bl = and i32 %i.bj, -16711681
  %i.bm = shl i32 %i.at, 1                        ; 2 uses
  %i.bn = and i32 %i.bm, 917504
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = and i32 %i.bj, -15728641
  %i.bq = select i1 %.not32.i, i32 %i.bp, i32 %i.bo
  %i.br = and i32 %i.bm, 14680064
  %i.bs = or disjoint i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.as, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullth(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_qdmullh.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.c to i64
  %i.g = sext i16 %i.e to i64
  %i.h = mul nsw i64 %i.g, %i.f                   ; 2 uses
  %.tr = trunc nsw i64 %i.h to i32
  %i.i = shl i32 %.tr, 1
  %i.j = and i16 %i.a, 255
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = load i32, ptr %1, align 4
  %i.p = xor i32 %i.n, -1
  %i.q = and i32 %i.o, %i.p
  %i.r = lshr i16 %i.a, 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = and i16 %i.r, 255
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.w
  %i.y = load i32, ptr %i.u, align 4
  %i.z = lshr i16 %i.a, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = zext nneg i16 %i.z to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ad
  %i.af = load i32, ptr %i.ac, align 4
  %i.ag = lshr i16 %i.a, 12
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ak = zext nneg i16 %i.ag to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ak
  %i.am = load i32, ptr %i.aj, align 4
  %i.an = icmp sgt i64 %i.h, 1073741823           ; 2 uses
  %.0.i.i = select i1 %i.an, i32 2147483647, i32 %i.i
  %i.ao = and i32 %.0.i.i, %i.n
  %i.ap = or i32 %i.ao, %i.q
  store i32 %i.ap, ptr %1, align 4
  %i.aq = load i16, ptr %i.s, align 2
  %i.ar = load i16, ptr %i.t, align 2
  %i.as = sext i16 %i.aq to i64
  %i.at = sext i16 %i.ar to i64
  %i.au = mul nsw i64 %i.at, %i.as                ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1073741823          ; 2 uses
  %.tr.1 = trunc nsw i64 %i.au to i32
  %i.aw = shl i32 %.tr.1, 1
  %.0.i.i.1 = select i1 %i.av, i32 2147483647, i32 %i.aw
  %i.ax = load i64, ptr %i.x, align 8
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.y, %i.az
  %i.bb = and i32 %.0.i.i.1, %i.ay
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.u, align 4
  %i.bd = load i16, ptr %i.aa, align 2
  %i.be = load i16, ptr %i.ab, align 2
  %i.bf = sext i16 %i.bd to i64
  %i.bg = sext i16 %i.be to i64
  %i.bh = mul nsw i64 %i.bg, %i.bf                ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 1073741823          ; 2 uses
  %.tr.2 = trunc nsw i64 %i.bh to i32
  %i.bj = shl i32 %.tr.2, 1
  %.0.i.i.2 = select i1 %i.bi, i32 2147483647, i32 %i.bj
  %i.bk = load i64, ptr %i.ae, align 8
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = xor i32 %i.bl, -1
  %i.bn = and i32 %i.af, %i.bm
  %i.bo = and i32 %.0.i.i.2, %i.bl
  %i.bp = or i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.ac, align 4
  %i.bq = load i16, ptr %i.ah, align 2
  %i.br = load i16, ptr %i.ai, align 2
  %i.bs = sext i16 %i.bq to i64
  %i.bt = sext i16 %i.br to i64
  %i.bu = mul nsw i64 %i.bt, %i.bs                ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 1073741823          ; 2 uses
  %i.bw = insertelement <4 x i16> poison, i16 %i.a, i64 0
  %i.bx = shufflevector <4 x i16> %i.bw, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.by = and <4 x i16> %i.bx, <i16 4, i16 64, i16 1024, i16 16384>
  %i.bz = icmp ne <4 x i16> %i.by, zeroinitializer
  %i.ca = insertelement <4 x i1> poison, i1 %i.an, i64 0
  %i.cb = insertelement <4 x i1> %i.ca, i1 %i.av, i64 1
  %i.cc = insertelement <4 x i1> %i.cb, i1 %i.bi, i64 2
  %i.cd = insertelement <4 x i1> %i.cc, i1 %i.bv, i64 3
  %i.ce = and <4 x i1> %i.cd, %i.bz
  %.tr.3 = trunc nsw i64 %i.bu to i32
  %i.cf = shl i32 %.tr.3, 1
  %.0.i.i.3 = select i1 %i.bv, i32 2147483647, i32 %i.cf
  %i.cg = load i64, ptr %i.al, align 8
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = xor i32 %i.ch, -1
  %i.cj = and i32 %i.am, %i.ci
  %i.ck = and i32 %.0.i.i.3, %i.ch
  %i.cl = or i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.aj, align 4
  %i.cm = bitcast <4 x i1> %i.ce to i4
  %.not = icmp eq i4 %i.cm, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_qdmullh.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cn, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullh.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 5 uses
  %i.cq = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cq, align 16         ; 4 uses
  %i.cr = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cs = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ct = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cs to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ct, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.cu = zext nneg i32 %i.cs to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cu
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cv = icmp eq i32 %.val.i, 80
  %i.cw = select i1 %i.cv, i32 16, i32 0
  store i32 %i.cw, ptr %i.cq, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cx = and i32 %i.cp, 16711680
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.cy = and i32 %i.cp, 983040
  %i.cz = icmp samesign ult i32 %i.cy, 589824
  %i.da = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cz, i16 %i.da, i16 %.0.i34.i ; 2 uses
  %i.db = and i32 %i.cp, 15728640
  %i.dc = icmp samesign ult i32 %i.db, 9437184
  %i.dd = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dc, i16 %i.dd, i16 %spec.select.i
  %i.de = zext i16 %.1.i to i32
  %i.df = xor i32 %i.cp, %i.de                    ; 2 uses
  %i.dg = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dg, 0
  %i.dh = and i32 %i.df, -16711681
  %i.di = shl i32 %i.cp, 1                        ; 2 uses
  %i.dj = and i32 %i.di, 917504
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = and i32 %i.df, -15728641
  %i.dm = select i1 %.not32.i, i32 %i.dl, i32 %i.dk
  %i.dn = and i32 %i.di, 14680064
  %i.do = or disjoint i32 %i.dm, %i.dn
  store i32 %i.do, ptr %i.co, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmulltw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_qdmullw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.c to i64
  %i.g = sext i32 %i.e to i64
  %i.h = mul nsw i64 %i.g, %i.f                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 4611686018427387903   ; 2 uses
  %i.j = shl nsw i64 %i.h, 1
  %spec.select24 = select i1 %i.i, i64 9223372036854775807, i64 %i.j
  %i.k = and i16 %i.a, 255
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = load i64, ptr %1, align 8
  %i.p = xor i64 %i.n, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = and i64 %spec.select24, %i.n
  %i.s = or i64 %i.r, %i.q
  store i64 %i.s, ptr %1, align 8
  %i.t = and i16 %i.a, 17
  %i.u = icmp ne i16 %i.t, 0
  %i.v = and i1 %i.i, %i.u
  %i.w = lshr i16 %i.a, 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = sext i32 %i.y to i64
  %i.ad = sext i32 %i.aa to i64
  %i.ae = mul nsw i64 %i.ad, %i.ac                ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 4611686018427387903 ; 2 uses
  %i.ag = shl nsw i64 %i.ae, 1
  %spec.select24.1 = select i1 %i.af, i64 9223372036854775807, i64 %i.ag
  %i.ah = zext nneg i16 %i.w to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i64, ptr %i.ab, align 8
  %i.al = xor i64 %i.aj, -1
  %i.am = and i64 %i.ak, %i.al
  %i.an = and i64 %spec.select24.1, %i.aj
  %i.ao = or i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ab, align 8
  %i.ap = and i16 %i.a, 4352
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = and i1 %i.af, %i.aq
  %i.as = or i1 %i.v, %i.ar
  br i1 %i.as, label %bb.a, label %bb.b

bb.a:                                             ; preds = %do_qdmullw.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.at, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullw.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4            ; 5 uses
  %i.aw = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.aw, align 16         ; 4 uses
  %i.ax = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ay = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.az = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ay to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.az, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ba = zext nneg i32 %i.ay to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ba
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bb = icmp eq i32 %.val.i, 80
  %i.bc = select i1 %i.bb, i32 16, i32 0
  store i32 %i.bc, ptr %i.aw, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.bd = and i32 %i.av, 16711680
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.be = and i32 %i.av, 983040
  %i.bf = icmp samesign ult i32 %i.be, 589824
  %i.bg = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bf, i16 %i.bg, i16 %.0.i34.i ; 2 uses
  %i.bh = and i32 %i.av, 15728640
  %i.bi = icmp samesign ult i32 %i.bh, 9437184
  %i.bj = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bi, i16 %i.bj, i16 %spec.select.i
  %i.bk = zext i16 %.1.i to i32
  %i.bl = xor i32 %i.av, %i.bk                    ; 2 uses
  %i.bm = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bm, 0
  %i.bn = and i32 %i.bl, -16711681
  %i.bo = shl i32 %i.av, 1                        ; 2 uses
  %i.bp = and i32 %i.bo, 917504
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = and i32 %i.bl, -15728641
  %i.bs = select i1 %.not32.i, i32 %i.br, i32 %i.bq
  %i.bt = and i32 %i.bo, 14680064
  %i.bu = or disjoint i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.au, align 4
end_hunk_0
begin_hunk_1_@helper_mve_vbrsrh:bb.a

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vbrsrw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = and i32 %3, 255                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %do_vbrsrw.exit.us.preheader, label %do_vbrsrw.exit.preheader

do_vbrsrw.exit.preheader:                         ; preds = %bb.a
  %i.d = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %i.b) ; 4 uses
  %i.e = load i32, ptr %2, align 4
  %i.f = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.e)
  %.0.i = lshr i32 %i.f, %i.d
  %i.g = and i16 %i.a, 255
  %i.h = zext nneg i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = load i32, ptr %1, align 4
  %i.m = xor i32 %i.k, -1
  %i.n = and i32 %i.l, %i.m
  %i.o = and i32 %.0.i, %i.k
  %i.p = or i32 %i.n, %i.o
  store i32 %i.p, ptr %1, align 4
  %i.q = lshr i16 %i.a, 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.t)
  %.0.i.1 = lshr i32 %i.u, %i.d
  %i.v = and i16 %i.q, 255
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %i.r, align 4
  %i.ab = xor i32 %i.z, -1
  %i.ac = and i32 %i.aa, %i.ab
  %i.ad = and i32 %.0.i.1, %i.z
  %i.ae = or i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %i.r, align 4
  %i.af = lshr i16 %i.a, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ai)
  %.0.i.2 = lshr i32 %i.aj, %i.d
  %i.ak = zext nneg i16 %i.af to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 4
  %i.ap = xor i32 %i.an, -1
  %i.aq = and i32 %i.ao, %i.ap
  %i.ar = and i32 %.0.i.2, %i.an
  %i.as = or i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.ag, align 4
  %i.at = lshr i16 %i.a, 12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.aw)
  %.0.i.3 = lshr i32 %i.ax, %i.d
  %i.ay = zext nneg i16 %i.at to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = load i32, ptr %i.au, align 4
  %i.bd = xor i32 %i.bb, -1
  %i.be = and i32 %i.bc, %i.bd
  %i.bf = and i32 %.0.i.3, %i.bb
  %i.bg = or i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.au, align 4
  br label %.split17.us

do_vbrsrw.exit.us.preheader:                      ; preds = %bb.a
  %i.bh = and i16 %i.a, 255
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = load i32, ptr %1, align 4
  %i.bn = xor i32 %i.bl, -1
  %i.bo = and i32 %i.bm, %i.bn
  store i32 %i.bo, ptr %1, align 4
  %i.bp = lshr i16 %i.a, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.br = and i16 %i.bp, 255
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load i32, ptr %i.bq, align 4
  %i.bx = xor i32 %i.bv, -1
  %i.by = and i32 %i.bw, %i.bx
  store i32 %i.by, ptr %i.bq, align 4
  %i.bz = lshr i16 %i.a, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = zext nneg i16 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load i32, ptr %i.ca, align 4
  %i.cg = xor i32 %i.ce, -1
  %i.ch = and i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.ca, align 4
  %i.ci = lshr i16 %i.a, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ck = zext nneg i16 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = trunc i64 %i.cm to i32
  %i.co = load i32, ptr %i.cj, align 4
  %i.cp = xor i32 %i.cn, -1
  %i.cq = and i32 %i.co, %i.cp
  store i32 %i.cq, ptr %i.cj, align 4
  br label %.split17.us

.split17.us:                                      ; preds = %do_vbrsrw.exit.preheader, %do_vbrsrw.exit.us.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 5 uses
  %i.ct = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ct, align 16         ; 4 uses
  %i.cu = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %.split17.us
  %i.cv = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cw = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cv to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cw, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.cx = zext nneg i32 %i.cv to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cx
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cy = icmp eq i32 %.val.i, 80
  %i.cz = select i1 %i.cy, i32 16, i32 0
  store i32 %i.cz, ptr %i.ct, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.split17.us
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.split17.us ] ; 3 uses
  %i.da = and i32 %i.cs, 16711680
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.db = and i32 %i.cs, 983040
  %i.dc = icmp samesign ult i32 %i.db, 589824
  %i.dd = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dc, i16 %i.dd, i16 %.0.i34.i ; 2 uses
  %i.de = and i32 %i.cs, 15728640
  %i.df = icmp samesign ult i32 %i.de, 9437184
  %i.dg = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.df, i16 %i.dg, i16 %spec.select.i
  %i.dh = zext i16 %.1.i to i32
  %i.di = xor i32 %i.cs, %i.dh                    ; 2 uses
  %i.dj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dj, 0
  %i.dk = and i32 %i.di, -16711681
  %i.dl = shl i32 %i.cs, 1                        ; 2 uses
  %i.dm = and i32 %i.dl, 917504
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = and i32 %i.di, -15728641
  %i.dp = select i1 %.not32.i, i32 %i.do, i32 %i.dn
  %i.dq = and i32 %i.dl, 14680064
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.cr, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullb_scalarh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_qdmullh.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 48                 ; 4 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = mul nsw i64 %i.c, %i.e                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1073741823            ; 2 uses
  %.tr = trunc nsw i64 %i.f to i32
  %i.h = shl i32 %.tr, 1
  %.0.i.i = select i1 %i.g, i32 2147483647, i32 %i.h
  %i.i = and i16 %i.b, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = xor i32 %i.m, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = and i32 %.0.i.i, %i.m
  %i.r = or i32 %i.q, %i.p
  store i32 %i.r, ptr %1, align 4
  %i.s = trunc i16 %i.b to i1
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.b, 4                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i64
  %i.y = mul nsw i64 %i.c, %i.x                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1073741823            ; 2 uses
  %.tr.1 = trunc nsw i64 %i.y to i32
  %i.aa = shl i32 %.tr.1, 1
  %.0.i.i.1 = select i1 %i.z, i32 2147483647, i32 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ac = and i16 %i.u, 255
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4
  %i.ai = xor i32 %i.ag, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.0.i.i.1, %i.ag
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ab, align 4
  %i.am = and i16 %i.u, 1
  %i.an = zext nneg i16 %i.am to i32
  %i.ao = select i1 %i.z, i32 %i.an, i32 0
  %i.ap = zext i1 %i.t to i32
  %i.aq = or i32 %i.ao, %i.ap
  %i.ar = lshr i16 %i.b, 8                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i16, ptr %i.as, align 2
  %i.au = sext i16 %i.at to i64
  %i.av = mul nsw i64 %i.c, %i.au                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 1073741823          ; 2 uses
  %.tr.2 = trunc nsw i64 %i.av to i32
  %i.ax = shl i32 %.tr.2, 1
  %.0.i.i.2 = select i1 %i.aw, i32 2147483647, i32 %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = zext nneg i16 %i.ar to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr %i.ay, align 4
  %i.be = xor i32 %i.bc, -1
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = and i32 %.0.i.i.2, %i.bc
  %i.bh = or i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.ay, align 4
  %i.bi = and i16 %i.ar, 1
  %i.bj = zext nneg i16 %i.bi to i32
  %i.bk = select i1 %i.aw, i32 %i.bj, i32 0
  %i.bl = or i32 %i.bk, %i.aq
  %i.bm = lshr i16 %i.b, 12                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = sext i16 %i.bo to i64
  %i.bq = mul nsw i64 %i.c, %i.bp                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 1073741823          ; 2 uses
  %.tr.3 = trunc nsw i64 %i.bq to i32
  %i.bs = shl i32 %.tr.3, 1
  %.0.i.i.3 = select i1 %i.br, i32 2147483647, i32 %i.bs
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bu = zext nneg i16 %i.bm to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = load i32, ptr %i.bt, align 4
  %i.bz = xor i32 %i.bx, -1
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = and i32 %.0.i.i.3, %i.bx
  %i.cc = or i32 %i.cb, %i.ca
  store i32 %i.cc, ptr %i.bt, align 4
  %i.cd = and i16 %i.bm, 1
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = select i1 %i.br, i32 %i.ce, i32 0
  %i.cg = or i32 %i.cf, %i.bl
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_qdmullh.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ch, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullh.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 5 uses
  %i.ck = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ck, align 16         ; 4 uses
  %i.cl = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cm = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cn = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cm to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cn, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.co = zext nneg i32 %i.cm to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.co
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cp = icmp eq i32 %.val.i, 80
  %i.cq = select i1 %i.cp, i32 16, i32 0
  store i32 %i.cq, ptr %i.ck, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cr = and i32 %i.cj, 16711680
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.cs = and i32 %i.cj, 983040
  %i.ct = icmp samesign ult i32 %i.cs, 589824
  %i.cu = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ct, i16 %i.cu, i16 %.0.i34.i ; 2 uses
  %i.cv = and i32 %i.cj, 15728640
  %i.cw = icmp samesign ult i32 %i.cv, 9437184
  %i.cx = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cw, i16 %i.cx, i16 %spec.select.i
  %i.cy = zext i16 %.1.i to i32
  %i.cz = xor i32 %i.cj, %i.cy                    ; 2 uses
  %i.da = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.da, 0
  %i.db = and i32 %i.cz, -16711681
  %i.dc = shl i32 %i.cj, 1                        ; 2 uses
  %i.dd = and i32 %i.dc, 917504
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = and i32 %i.cz, -15728641
  %i.dg = select i1 %.not32.i, i32 %i.df, i32 %i.de
  %i.dh = and i32 %i.dc, 14680064
  %i.di = or disjoint i32 %i.dg, %i.dh
  store i32 %i.di, ptr %i.ci, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullb_scalarw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_qdmullw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 4611686018427387903   ; 2 uses
  %i.g = shl nsw i64 %i.e, 1
  %spec.select22 = select i1 %i.f, i64 9223372036854775807, i64 %i.g
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = load i64, ptr %1, align 8
  %i.m = xor i64 %i.k, -1
  %i.n = and i64 %i.l, %i.m
  %i.o = and i64 %spec.select22, %i.k
  %i.p = or i64 %i.o, %i.n
  store i64 %i.p, ptr %1, align 8
  %i.q = and i16 %i.a, 17
  %i.r = icmp ne i16 %i.q, 0
  %i.s = and i1 %i.f, %i.r
  %i.t = lshr i16 %i.a, 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, %i.b                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 4611686018427387903   ; 2 uses
  %i.z = shl nsw i64 %i.x, 1
  %spec.select22.1 = select i1 %i.y, i64 9223372036854775807, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = zext nneg i16 %i.t to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = xor i64 %i.ad, -1
  %i.ag = and i64 %i.ae, %i.af
  %i.ah = and i64 %spec.select22.1, %i.ad
  %i.ai = or i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.aa, align 8
  %i.aj = and i16 %i.a, 4352
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = and i1 %i.y, %i.ak
  %i.am = or i1 %i.s, %i.al
  br i1 %i.am, label %bb.a, label %bb.b

bb.a:                                             ; preds = %do_qdmullw.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.an, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullw.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 5 uses
  %i.aq = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.aq, align 16         ; 4 uses
  %i.ar = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.as = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.at = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.as to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.at, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.au = zext nneg i32 %i.as to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.au
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.av = icmp eq i32 %.val.i, 80
  %i.aw = select i1 %i.av, i32 16, i32 0
  store i32 %i.aw, ptr %i.aq, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.ax = and i32 %i.ap, 16711680
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.ay = and i32 %i.ap, 983040
  %i.az = icmp samesign ult i32 %i.ay, 589824
  %i.ba = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.az, i16 %i.ba, i16 %.0.i34.i ; 2 uses
  %i.bb = and i32 %i.ap, 15728640
  %i.bc = icmp samesign ult i32 %i.bb, 9437184
  %i.bd = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bc, i16 %i.bd, i16 %spec.select.i
  %i.be = zext i16 %.1.i to i32
  %i.bf = xor i32 %i.ap, %i.be                    ; 2 uses
  %i.bg = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bg, 0
  %i.bh = and i32 %i.bf, -16711681
  %i.bi = shl i32 %i.ap, 1                        ; 2 uses
  %i.bj = and i32 %i.bi, 917504
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = and i32 %i.bf, -15728641
  %i.bm = select i1 %.not32.i, i32 %i.bl, i32 %i.bk
  %i.bn = and i32 %i.bi, 14680064
  %i.bo = or disjoint i32 %i.bm, %i.bn
  store i32 %i.bo, ptr %i.ao, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullt_scalarh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_qdmullh.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 48                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.e to i64
  %i.g = mul nsw i64 %i.c, %i.f                   ; 2 uses
  %.tr = trunc nsw i64 %i.g to i32
  %i.h = shl i32 %.tr, 1
  %i.i = and i16 %i.b, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = xor i32 %i.m, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = lshr i16 %i.b, 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = and i16 %i.q, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i32, ptr %i.s, align 4
  %i.x = lshr i16 %i.b, 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = zext nneg i16 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4
  %i.ad = lshr i16 %i.b, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ag = zext nneg i16 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i32, ptr %i.af, align 4
  %i.aj = icmp sgt i64 %i.g, 1073741823           ; 2 uses
  %.0.i.i = select i1 %i.aj, i32 2147483647, i32 %i.h
  %i.ak = and i32 %.0.i.i, %i.m
  %i.al = or i32 %i.ak, %i.p
  store i32 %i.al, ptr %1, align 4
  %i.am = load i16, ptr %i.r, align 2
  %i.an = sext i16 %i.am to i64
  %i.ao = mul nsw i64 %i.c, %i.an                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1073741823          ; 2 uses
  %.tr.1 = trunc nsw i64 %i.ao to i32
  %i.aq = shl i32 %.tr.1, 1
  %.0.i.i.1 = select i1 %i.ap, i32 2147483647, i32 %i.aq
  %i.ar = load i64, ptr %i.v, align 8
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = xor i32 %i.as, -1
  %i.au = and i32 %i.w, %i.at
  %i.av = and i32 %.0.i.i.1, %i.as
  %i.aw = or i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.s, align 4
  %i.ax = load i16, ptr %i.y, align 2
  %i.ay = sext i16 %i.ax to i64
  %i.az = mul nsw i64 %i.c, %i.ay                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1073741823          ; 2 uses
  %.tr.2 = trunc nsw i64 %i.az to i32
  %i.bb = shl i32 %.tr.2, 1
  %.0.i.i.2 = select i1 %i.ba, i32 2147483647, i32 %i.bb
  %i.bc = load i64, ptr %i.ab, align 8
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = and i32 %i.ac, %i.be
  %i.bg = and i32 %.0.i.i.2, %i.bd
  %i.bh = or i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.z, align 4
  %i.bi = load i16, ptr %i.ae, align 2
  %i.bj = sext i16 %i.bi to i64
  %i.bk = mul nsw i64 %i.c, %i.bj                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1073741823          ; 2 uses
  %i.bm = insertelement <4 x i16> poison, i16 %i.b, i64 0
  %i.bn = shufflevector <4 x i16> %i.bm, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bo = and <4 x i16> %i.bn, <i16 4, i16 64, i16 1024, i16 16384>
  %i.bp = icmp ne <4 x i16> %i.bo, zeroinitializer
  %i.bq = insertelement <4 x i1> poison, i1 %i.aj, i64 0
  %i.br = insertelement <4 x i1> %i.bq, i1 %i.ap, i64 1
  %i.bs = insertelement <4 x i1> %i.br, i1 %i.ba, i64 2
  %i.bt = insertelement <4 x i1> %i.bs, i1 %i.bl, i64 3
  %i.bu = and <4 x i1> %i.bt, %i.bp
  %.tr.3 = trunc nsw i64 %i.bk to i32
  %i.bv = shl i32 %.tr.3, 1
  %.0.i.i.3 = select i1 %i.bl, i32 2147483647, i32 %i.bv
  %i.bw = load i64, ptr %i.ah, align 8
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i32 %i.ai, %i.by
  %i.ca = and i32 %.0.i.i.3, %i.bx
  %i.cb = or i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.af, align 4
  %i.cc = bitcast <4 x i1> %i.bu to i4
  %.not = icmp eq i4 %i.cc, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_qdmullh.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cd, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullh.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 5 uses
  %i.cg = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cg, align 16         ; 4 uses
  %i.ch = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ci = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cj = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ci to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ck = zext nneg i32 %i.ci to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ck
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cl = icmp eq i32 %.val.i, 80
  %i.cm = select i1 %i.cl, i32 16, i32 0
  store i32 %i.cm, ptr %i.cg, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cn = and i32 %i.cf, 16711680
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.co = and i32 %i.cf, 983040
  %i.cp = icmp samesign ult i32 %i.co, 589824
  %i.cq = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cp, i16 %i.cq, i16 %.0.i34.i ; 2 uses
  %i.cr = and i32 %i.cf, 15728640
  %i.cs = icmp samesign ult i32 %i.cr, 9437184
  %i.ct = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cs, i16 %i.ct, i16 %spec.select.i
  %i.cu = zext i16 %.1.i to i32
  %i.cv = xor i32 %i.cf, %i.cu                    ; 2 uses
  %i.cw = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cw, 0
  %i.cx = and i32 %i.cv, -16711681
  %i.cy = shl i32 %i.cf, 1                        ; 2 uses
  %i.cz = and i32 %i.cy, 917504
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = and i32 %i.cv, -15728641
  %i.dc = select i1 %.not32.i, i32 %i.db, i32 %i.da
  %i.dd = and i32 %i.cy, 14680064
  %i.de = or disjoint i32 %i.dc, %i.dd
  store i32 %i.de, ptr %i.ce, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmullt_scalarw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_qdmullw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, %i.b                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 4611686018427387903   ; 2 uses
  %i.h = shl nsw i64 %i.f, 1
  %spec.select22 = select i1 %i.g, i64 9223372036854775807, i64 %i.h
  %i.i = and i16 %i.a, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = load i64, ptr %1, align 8
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.m, %i.n
  %i.p = and i64 %spec.select22, %i.l
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %1, align 8
  %i.r = and i16 %i.a, 17
  %i.s = icmp ne i16 %i.r, 0
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.a, 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.b                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 4611686018427387903   ; 2 uses
  %i.aa = shl nsw i64 %i.y, 1
  %spec.select22.1 = select i1 %i.z, i64 9223372036854775807, i64 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = zext nneg i16 %i.u to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i64, ptr %i.ab, align 8
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.af, %i.ag
  %i.ai = and i64 %spec.select22.1, %i.ae
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ab, align 8
  %i.ak = and i16 %i.a, 4352
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = and i1 %i.z, %i.al
  %i.an = or i1 %i.t, %i.am
  br i1 %i.an, label %bb.a, label %bb.b

bb.a:                                             ; preds = %do_qdmullw.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ao, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_qdmullw.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4            ; 5 uses
  %i.ar = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ar, align 16         ; 4 uses
  %i.as = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.at = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.au = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.at to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.au, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.av = zext nneg i32 %i.at to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.av
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aw = icmp eq i32 %.val.i, 80
  %i.ax = select i1 %i.aw, i32 16, i32 0
  store i32 %i.ax, ptr %i.ar, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.ay = and i32 %i.aq, 16711680
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.az = and i32 %i.aq, 983040
  %i.ba = icmp samesign ult i32 %i.az, 589824
  %i.bb = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ba, i16 %i.bb, i16 %.0.i34.i ; 2 uses
  %i.bc = and i32 %i.aq, 15728640
  %i.bd = icmp samesign ult i32 %i.bc, 9437184
  %i.be = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bd, i16 %i.be, i16 %spec.select.i
  %i.bf = zext i16 %.1.i to i32
  %i.bg = xor i32 %i.aq, %i.bf                    ; 2 uses
  %i.bh = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bh, 0
  %i.bi = and i32 %i.bg, -16711681
  %i.bj = shl i32 %i.aq, 1                        ; 2 uses
  %i.bk = and i32 %i.bj, 917504
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = and i32 %i.bg, -15728641
  %i.bn = select i1 %.not32.i, i32 %i.bm, i32 %i.bl
  %i.bo = and i32 %i.bj, 14680064
  %i.bp = or disjoint i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.ap, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}
end_hunk_1
