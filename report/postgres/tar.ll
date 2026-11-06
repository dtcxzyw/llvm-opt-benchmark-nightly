Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tar?download=true
inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@isValidTarHeader:bb.a
  %narrow.i.3 = add nsw i8 %i.ax, -48
  %i.ba = zext nneg i8 %narrow.i.3 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = and i8 %i.bd, -8
  %or.cond.i11.4 = icmp eq i8 %i.be, 48
  br i1 %or.cond.i11.4, label %.lr.ph.i.5, label %read_tar_number.exit

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.bf = shl nuw nsw i32 %i.bb, 3
  %narrow.i.4 = add nsw i8 %i.bd, -48
  %i.bg = zext nneg i8 %narrow.i.4 to i32
  %i.bh = or disjoint i32 %i.bf, %i.bg            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = and i8 %i.bj, -8
  %or.cond.i11.5 = icmp eq i8 %i.bk, 48
  br i1 %or.cond.i11.5, label %.lr.ph.i.6, label %read_tar_number.exit

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.bl = shl nuw nsw i32 %i.bh, 3
  %narrow.i.5 = add nsw i8 %i.bj, -48
  %i.bm = zext nneg i8 %narrow.i.5 to i32
  %i.bn = or disjoint i32 %i.bl, %i.bm            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = and i8 %i.bp, -8
  %or.cond.i11.6 = icmp eq i8 %i.bq, 48
  br i1 %or.cond.i11.6, label %.lr.ph.i.7, label %read_tar_number.exit

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.br = shl nuw nsw i32 %i.bn, 3
  %narrow.i.6 = add nsw i8 %i.bp, -48
  %i.bs = zext nneg i8 %narrow.i.6 to i32
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = and i8 %i.bv, -8
  %or.cond.i11.7 = icmp eq i8 %i.bw, 48
  br i1 %or.cond.i11.7, label %bb.g, label %read_tar_number.exit

bb.g:                                             ; preds = %.lr.ph.i.7
  %i.bx = shl nuw nsw i32 %i.bt, 3
  %narrow.i.7 = add nsw i8 %i.bv, -48
  %i.by = zext nneg i8 %narrow.i.7 to i32
  %i.bz = or disjoint i32 %i.bx, %i.by
  br label %read_tar_number.exit

read_tar_number.exit:                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.g, %.lr.ph29.i.preheader
  %.2.i = phi i32 [ %i.ai, %.lr.ph29.i.preheader ], [ 0, %.lr.ph.i.preheader ], [ %i.bz, %bb.g ], [ %i.aj, %.lr.ph.i.1 ], [ %i.bt, %.lr.ph.i.7 ], [ %i.ap, %.lr.ph.i.2 ], [ %i.bh, %.lr.ph.i.5 ], [ %i.av, %.lr.ph.i.3 ], [ %i.bn, %.lr.ph.i.6 ], [ %i.bb, %.lr.ph.i.4 ]
  %.not = icmp eq i32 %.1.i.1, %.2.i
  br i1 %.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %read_tar_number.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 257 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1635021685
  %i.cd = getelementptr i8, ptr %i.ca, i64 4
  %i.ce = load i16, ptr %i.cd, align 1
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 %i.cf, 114
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 263
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = icmp ne i16 %i.cm, 12336
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cq = load i64, ptr %i.ca, align 1
  %i.cr = icmp ne i64 %i.cq, 9042874888123253
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = load i64, ptr %i.ca, align 1
  %i.cv = icmp ne i64 %i.cu, 13564066701538165
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %read_tar_number.exit
  %.0 = phi i1 [ true, %bb.j ], [ false, %read_tar_number.exit ], [ true, %bb.i ], [ %i.cx, %bb.k ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 3) i32 @tarCreateHeader(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.b = icmp ugt i64 %i.a, 99
  br i1 %i.b, label %print_tar_number.exit115, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9
  %i.d = icmp ugt i64 %i.c, 99
  br i1 %i.d, label %print_tar_number.exit115, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %0, i8 0, i64 512, i1 false)
  %i.e = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 100) #10 ; 0 uses
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %0, i8 0, i64 512, i1 false)
  %i.f = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 100) #10 ; 0 uses
  %.old = and i32 %4, 61440
  %.old44 = icmp eq i32 %.old, 16384
  br i1 %.old44, label %bb.e, label %.lr.ph24.i

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 99)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 2 uses
  store i8 47, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 0, ptr %i.l, align 1
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.e, %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.n = trunc i32 %4 to i16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 32, ptr %i.o, align 1
  %i.p = trunc i32 %4 to i8
  %i.q = trunc i32 %4 to i8
  %i.r = lshr i8 %i.q, 3
  %i.s = lshr i32 %4, 6
  %i.t = trunc i32 %i.s to i8
  %i.u = lshr i16 %i.n, 9
  %i.v = trunc nuw nsw i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.x = insertelement <4 x i8> poison, i8 %i.v, i64 0
  %i.y = insertelement <4 x i8> %i.x, i8 %i.t, i64 1
  %i.z = insertelement <4 x i8> %i.y, i8 %i.r, i64 2
  %i.aa = insertelement <4 x i8> %i.z, i8 %i.p, i64 3
  %i.ab = and <4 x i8> %i.aa, splat (i8 7)
  %i.ac = or disjoint <4 x i8> %i.ab, splat (i8 48)
  store <4 x i8> %i.ac, ptr %i.w, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 48, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 48, ptr %i.ae, align 1
  store i8 48, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ag = icmp ult i32 %5, 2097152
  br i1 %i.ag, label %.lr.ph24.i54, label %.lr.ph.i50

.lr.ph24.i54:                                     ; preds = %.lr.ph24.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 32, ptr %i.ah, align 1
  %i.ai = trunc i32 %5 to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = trunc i32 %5 to i8
  %i.an = lshr i8 %i.am, 3
  %i.ao = and i8 %i.an, 7
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = lshr i32 %5, 6
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 7
  %i.au = or disjoint i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = lshr i32 %5, 9
  %i.ax = lshr i32 %5, 12
  %i.ay = lshr i32 %5, 15
  %i.az = lshr i32 %5, 18
  %i.ba = trunc i32 %i.aw to i8
  %i.bb = trunc i32 %i.ax to i8
  %i.bc = trunc nuw nsw i32 %i.ay to i8
  %i.bd = trunc nuw nsw i32 %i.az to i8
  %i.be = insertelement <4 x i8> poison, i8 %i.bd, i64 0
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bc, i64 1
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bb, i64 2
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.ba, i64 3
  %i.bi = and <4 x i8> %i.bh, <i8 -1, i8 7, i8 7, i8 7>
  %i.bj = or disjoint <4 x i8> %i.bi, splat (i8 48)
  br label %print_tar_number.exit58

.lr.ph.i50:                                       ; preds = %.lr.ph24.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %8, ptr %i.bk, align 1
  br label %print_tar_number.exit58

print_tar_number.exit58:                          ; preds = %.lr.ph.i50, %.lr.ph24.i54
  %storemerge = phi <4 x i8> [ <i8 -128, i8 0, i8 0, i8 0>, %.lr.ph.i50 ], [ %i.bj, %.lr.ph24.i54 ]
  store <4 x i8> %storemerge, ptr %i.af, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bm = icmp ult i32 %6, 2097152
  br i1 %i.bm, label %.lr.ph24.i64, label %.lr.ph.i60

.lr.ph24.i64:                                     ; preds = %print_tar_number.exit58
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 32, ptr %i.bn, align 1
  %i.bo = trunc i32 %6 to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = or disjoint i8 %i.bp, 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = trunc i32 %6 to i8
  %i.bt = lshr i8 %i.bs, 3
  %i.bu = and i8 %i.bt, 7
  %i.bv = or disjoint i8 %i.bu, 48
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = lshr i32 %6, 6
  %i.by = trunc i32 %i.bx to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = lshr i32 %6, 9
  %i.cd = lshr i32 %6, 12
  %i.ce = lshr i32 %6, 15
  %i.cf = lshr i32 %6, 18
  %i.cg = trunc i32 %i.cc to i8
  %i.ch = trunc i32 %i.cd to i8
  %i.ci = trunc nuw nsw i32 %i.ce to i8
  %i.cj = trunc nuw nsw i32 %i.cf to i8
  %i.ck = insertelement <4 x i8> poison, i8 %i.cj, i64 0
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ci, i64 1
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ch, i64 2
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cg, i64 3
  %i.co = and <4 x i8> %i.cn, <i8 -1, i8 7, i8 7, i8 7>
  %i.cp = or disjoint <4 x i8> %i.co, splat (i8 48)
  br label %print_tar_number.exit68

.lr.ph.i60:                                       ; preds = %print_tar_number.exit58
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %9, ptr %i.cq, align 1
  br label %print_tar_number.exit68

print_tar_number.exit68:                          ; preds = %.lr.ph.i60, %.lr.ph24.i64
  %storemerge145 = phi <4 x i8> [ <i8 -128, i8 0, i8 0, i8 0>, %.lr.ph.i60 ], [ %i.cp, %.lr.ph24.i64 ]
  store <4 x i8> %storemerge145, ptr %i.bl, align 1
  %i.cr = and i32 %4, 61440
  %i.cs = icmp eq i32 %i.cr, 16384                ; 2 uses
  %or.cond48 = or i1 %.not, %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  br i1 %or.cond48, label %print_tar_number.exit73.loopexit, label %bb.f

print_tar_number.exit73.loopexit:                 ; preds = %print_tar_number.exit68
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 32, ptr %i.cu, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ct, i8 48, i64 11, i1 false)
  br label %print_tar_number.exit73

bb.f:                                             ; preds = %print_tar_number.exit68
  %i.cv = icmp ult i64 %3, 8589934592
  br i1 %i.cv, label %.lr.ph24.i79, label %.lr.ph.i75

.lr.ph24.i79:                                     ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 32, ptr %i.cw, align 1
  %i.cx = trunc i64 %3 to i8
  %i.cy = and i8 %i.cx, 7
  %i.cz = or disjoint i8 %i.cy, 48
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = trunc i64 %3 to i8
  %i.dc = lshr i8 %i.db, 3
  %i.dd = and i8 %i.dc, 7
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = lshr i64 %3, 6
  %i.dh = trunc i64 %i.dg to i8
  %i.di = and i8 %i.dh, 7
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = insertelement <4 x i64> poison, i64 %3, i64 0
  %i.dm = shufflevector <4 x i64> %i.dl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dn = lshr <4 x i64> %i.dm, <i64 18, i64 15, i64 12, i64 9>
  %i.do = lshr i64 %3, 21
  %i.dp = lshr i64 %3, 24
  %i.dq = lshr i64 %3, 27
  %i.dr = lshr i64 %3, 30
  %i.ds = trunc <4 x i64> %i.dn to <4 x i8>
  %i.dt = trunc i64 %i.do to i8
  %i.du = trunc i64 %i.dp to i8
  %i.dv = trunc nuw nsw i64 %i.dq to i8
  %i.dw = trunc nuw nsw i64 %i.dr to i8
  %i.dx = insertelement <8 x i8> poison, i8 %i.dw, i64 0
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dv, i64 1
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.du, i64 2
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.dt, i64 3
  %i.eb = shufflevector <4 x i8> %i.ds, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <8 x i8> %i.ea, <8 x i8> %i.eb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ed = and <8 x i8> %i.ec, <i8 -1, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %i.ee = or disjoint <8 x i8> %i.ed, splat (i8 48)
  store <8 x i8> %i.ee, ptr %i.ct, align 1
  br label %print_tar_number.exit73

.lr.ph.i75:                                       ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 128
  %10 = tail call i64 @llvm.bswap.i64(i64 %3)
  store i64 %10, ptr %i.ef, align 1
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.ct, align 1
  br label %print_tar_number.exit73

print_tar_number.exit73:                          ; preds = %.lr.ph.i75, %.lr.ph24.i79, %print_tar_number.exit73.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.eh = icmp ult i64 %7, 8589934592
  br i1 %i.eh, label %.lr.ph24.i89, label %.lr.ph.i85

.lr.ph24.i89:                                     ; preds = %print_tar_number.exit73
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 32, ptr %i.ei, align 1
  %i.ej = trunc i64 %7 to i8
  %i.ek = and i8 %i.ej, 7
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.el, ptr %i.em, align 1
  %i.en = trunc i64 %7 to i8
  %i.eo = lshr i8 %i.en, 3
  %i.ep = and i8 %i.eo, 7
  %i.eq = or disjoint i8 %i.ep, 48
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = lshr i64 %7, 6
  %i.et = trunc i64 %i.es to i8
  %i.eu = and i8 %i.et, 7
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = insertelement <4 x i64> poison, i64 %7, i64 0
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ez = lshr <4 x i64> %i.ey, <i64 18, i64 15, i64 12, i64 9>
  %i.fa = lshr i64 %7, 21
  %i.fb = lshr i64 %7, 24
  %i.fc = lshr i64 %7, 27
  %i.fd = lshr i64 %7, 30
  %i.fe = trunc <4 x i64> %i.ez to <4 x i8>
  %i.ff = trunc i64 %i.fa to i8
  %i.fg = trunc i64 %i.fb to i8
  %i.fh = trunc nuw nsw i64 %i.fc to i8
  %i.fi = trunc nuw nsw i64 %i.fd to i8
  %i.fj = insertelement <8 x i8> poison, i8 %i.fi, i64 0
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fh, i64 1
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fg, i64 2
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.ff, i64 3
  %i.fn = shufflevector <4 x i8> %i.fe, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fo = shufflevector <8 x i8> %i.fm, <8 x i8> %i.fn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fp = and <8 x i8> %i.fo, <i8 -1, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %i.fq = or disjoint <8 x i8> %i.fp, splat (i8 48)
  store <8 x i8> %i.fq, ptr %i.eg, align 1
  br label %print_tar_number.exit93

.lr.ph.i85:                                       ; preds = %print_tar_number.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 140
  %11 = tail call i64 @llvm.bswap.i64(i64 %7)
  store i64 %11, ptr %i.fr, align 1
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.eg, align 1
  br label %print_tar_number.exit93

print_tar_number.exit93:                          ; preds = %.lr.ph.i85, %.lr.ph24.i89
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %print_tar_number.exit93
  store i8 50, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.fu = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.ft, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100) #10 ; 0 uses
  br label %print_tar_number.exit98

bb.h:                                             ; preds = %print_tar_number.exit93
  br i1 %i.cs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 53, ptr %i.fs, align 1
  br label %print_tar_number.exit98

bb.j:                                             ; preds = %bb.h
  store i8 48, ptr %i.fs, align 1
  br label %print_tar_number.exit98

print_tar_number.exit98:                          ; preds = %bb.i, %bb.j, %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fv, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false) #10
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 263
  store i16 12336, ptr %i.fw, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fx, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fy, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 32, ptr %i.ga, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fz, i8 48, i64 7, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 32, ptr %i.gc, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gb, i8 48, i64 7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %print_tar_number.exit98
  %indvars.iv.i104 = phi i64 [ 0, %print_tar_number.exit98 ], [ %indvars.iv.next.i105.1, %bb.o ] ; 5 uses
  %.010.i = phi i32 [ 256, %print_tar_number.exit98 ], [ %.1.i.1, %bb.o ] ; 2 uses
  %i.gd = trunc i64 %indvars.iv.i104 to i32
  %i.ge = add nsw i32 %i.gd, -156
  %or.cond.i = icmp ult i32 %i.ge, -8
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add i32 %.010.i, %i.gh
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.gi, %bb.l ], [ %.010.i, %bb.k ] ; 2 uses
  %i.gj = trunc i64 %indvars.iv.i104 to i32
  %i.gk = add nsw i32 %i.gj, -156
  %or.cond.i.1 = icmp ult i32 %i.gk, -8
  br i1 %or.cond.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i32
  %i.gp = add i32 %.1.i, %i.go
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi i32 [ %i.gp, %bb.n ], [ %.1.i, %bb.m ] ; 14 uses
  %indvars.iv.next.i105.1 = add nuw nsw i64 %indvars.iv.i104, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i105.1, 512
  br i1 %exitcond.not.i.1, label %tarChecksum.exit, label %bb.k, !llvm.loop !0

tarChecksum.exit:                                 ; preds = %bb.o
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.gr = icmp ult i32 %.1.i.1, 2097152
  %i.gs = trunc i32 %.1.i.1 to i8                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  br i1 %i.gr, label %.lr.ph24.i111, label %.lr.ph.i107

.lr.ph24.i111:                                    ; preds = %tarChecksum.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 32, ptr %i.gu, align 1
  %i.gv = and i8 %i.gs, 7
  %i.gw = or disjoint i8 %i.gv, 48
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.gw, ptr %i.gx, align 1
  %i.gy = trunc i32 %.1.i.1 to i8
  %i.gz = lshr i8 %i.gy, 3
  %i.ha = and i8 %i.gz, 7
  %i.hb = or disjoint i8 %i.ha, 48
  store i8 %i.hb, ptr %i.gt, align 1
  %i.hc = lshr i32 %.1.i.1, 6
  %i.hd = trunc i32 %i.hc to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = or disjoint i8 %i.he, 48
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = lshr i32 %.1.i.1, 9
  %i.hi = lshr i32 %.1.i.1, 12
  %i.hj = lshr i32 %.1.i.1, 15
  %i.hk = lshr i32 %.1.i.1, 18
  %i.hl = trunc i32 %i.hh to i8
  %i.hm = trunc i32 %i.hi to i8
  %i.hn = trunc nuw nsw i32 %i.hj to i8
  %i.ho = trunc nuw nsw i32 %i.hk to i8
  %i.hp = insertelement <4 x i8> poison, i8 %i.ho, i64 0
  %i.hq = insertelement <4 x i8> %i.hp, i8 %i.hn, i64 1
  %i.hr = insertelement <4 x i8> %i.hq, i8 %i.hm, i64 2
  %i.hs = insertelement <4 x i8> %i.hr, i8 %i.hl, i64 3
  %i.ht = and <4 x i8> %i.hs, <i8 -1, i8 7, i8 7, i8 7>
  %i.hu = or disjoint <4 x i8> %i.ht, splat (i8 48)
  store <4 x i8> %i.hu, ptr %i.gq, align 1
  br label %print_tar_number.exit115

.lr.ph.i107:                                      ; preds = %tarChecksum.exit
  %i.hv = sext i32 %.1.i.1 to i64                 ; 2 uses
  store i8 -128, ptr %i.gq, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.gs, ptr %i.hw, align 1
  %i.hx = lshr i32 %.1.i.1, 8
  %i.hy = trunc i32 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.hy, ptr %i.hz, align 1
  %i.ia = lshr i32 %.1.i.1, 16
  %i.ib = trunc i32 %i.ia to i8
  store i8 %i.ib, ptr %i.gt, align 1
  %i.ic = lshr i32 %.1.i.1, 24
  %i.id = trunc nuw i32 %i.ic to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.id, ptr %i.ie, align 1
  %i.if = ashr i32 %.1.i.1, 31
  %i.ig = trunc nsw i32 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = lshr i64 %i.hv, 40
  %i.ij = trunc i64 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = lshr i64 %i.hv, 48
  %i.im = trunc i64 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.im, ptr %i.in, align 1
  br label %print_tar_number.exit115

print_tar_number.exit115:                         ; preds = %.lr.ph.i107, %.lr.ph24.i111, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.a ], [ 0, %.lr.ph24.i111 ], [ 0, %.lr.ph.i107 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !6}
end_hunk_0
