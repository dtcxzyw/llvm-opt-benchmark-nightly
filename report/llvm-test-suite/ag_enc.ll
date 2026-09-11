Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ag_enc?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dyn_comp:bb.a
bb.v:                                             ; preds = %bb.u
  %.not.28.i = icmp samesign ult i32 %.092196, 2560
  br i1 %.not.28.i, label %bb.w, label %lead.exit

bb.w:                                             ; preds = %bb.v
  %.not.29.i = icmp samesign ult i32 %.092196, 512
  %i.u = select i1 %.not.29.i, i32 1, i32 2
  br label %lead.exit

lead.exit:                                        ; preds = %bb.w, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.06.lcssa.i.neg = phi i32 [ 7, %bb.r ], [ 15, %bb.j ], [ 5, %bb.t ], [ 16, %bb.i ], [ 9, %bb.p ], [ 11, %bb.n ], [ 17, %bb.h ], [ 20, %bb.e ], [ 6, %bb.s ], [ 14, %bb.k ], [ 18, %bb.g ], [ %i.u, %bb.w ], [ 12, %bb.m ], [ 8, %bb.q ], [ 19, %bb.f ], [ 3, %bb.v ], [ 23, %bb.b ], [ 13, %bb.l ], [ 22, %bb.c ], [ 4, %bb.u ], [ 21, %bb.d ], [ 10, %bb.o ]
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.06.lcssa.i.neg, i32 %i.o) ; 2 uses
  %notmask = shl nsw i32 -1, %spec.select
  %i.v = xor i32 %notmask, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0198, i64 4
  %i.x = load i32, ptr %.0198, align 4, !tbaa !7  ; 2 uses
  %i.y = add nsw i32 %.086197, 1                  ; 2 uses
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.aa = shl nuw i32 %i.z, 1
  %.neg = ashr i32 %i.x, 31
  %i.ab = add i32 %i.aa, %.neg                    ; 2 uses
  %i.ac = sub nsw i32 %i.ab, %.095195             ; 7 uses
  %i.ad = udiv i32 %i.ac, %i.v                    ; 5 uses
  %reass.sub.recomposed = urem i32 %i.ac, %i.v
  %i.ae = icmp ult i32 %i.ad, 9
  br i1 %i.ae, label %bb.x, label %dyn_code_32bit.exit

bb.x:                                             ; preds = %lead.exit
  %i.af = mul nuw nsw i32 %i.ad, %i.v
  %i.ag = icmp eq i32 %i.ac, %i.af
  %.neg29.i = sext i1 %i.ag to i32                ; 2 uses
  %i.ah = add nuw nsw i32 %spec.select, 1
  %i.ai = add nuw nsw i32 %i.ah, %i.ad
  %i.aj = add nsw i32 %i.ai, %.neg29.i            ; 5 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 25
  br i1 %i.ak, label %dyn_code_32bit.exit, label %bb.aa

dyn_code_32bit.exit:                              ; preds = %bb.x, %lead.exit
  %i.al = lshr i32 %.0105193, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = tail call i32 @Swap32NtoB(i32 noundef %i.ao) #4
  %i.aq = and i32 %.0105193, 7
  %i.ar = lshr exact i32 -8388608, %i.aq
  %i.as = or i32 %i.ap, %i.ar
  %i.at = tail call i32 @Swap32BtoN(i32 noundef %i.as) #4
  store i32 %i.at, ptr %i.an, align 4, !tbaa !7
  %i.au = add i32 %.0105193, 9                    ; 3 uses
  %i.av = lshr i32 %i.au, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aw ; 3 uses
  %i.ay = and i32 %i.au, 7
  %i.az = add nuw nsw i32 %i.ay, %4               ; 4 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bb = tail call i32 @Swap32NtoB(i32 noundef %i.ba) #4 ; 2 uses
  %i.bc = icmp sgt i32 %i.az, 32
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %dyn_code_32bit.exit
  %.neg.i = add nsw i32 %i.az, -32                ; 2 uses
  %i.bd = lshr i32 %i.ac, %.neg.i
  %i.be = lshr i32 -1, %.neg.i
  %i.bf = xor i32 %i.be, -1
  %i.bg = and i32 %i.bb, %i.bf
  %i.bh = or i32 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bj = sub nsw i32 40, %i.az
  %i.bk = shl i32 %i.ac, %i.bj
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.bi, align 4, !tbaa !22
  br label %dyn_jam_noDeref_large.exit

bb.z:                                             ; preds = %dyn_code_32bit.exit
  %i.bm = sub nsw i32 32, %i.az                   ; 2 uses
  %i.bn = shl i32 %i.s, %i.bm
  %i.bo = and i32 %i.ac, %i.s
  %i.bp = shl i32 %i.bo, %i.bm
  %i.bq = xor i32 %i.bn, -1
  %i.br = and i32 %i.bb, %i.bq
  %i.bs = or i32 %i.br, %i.bp
  br label %dyn_jam_noDeref_large.exit

dyn_jam_noDeref_large.exit:                       ; preds = %bb.y, %bb.z
  %.0.i = phi i32 [ %i.bh, %bb.y ], [ %i.bs, %bb.z ]
  %i.bt = tail call i32 @Swap32BtoN(i32 noundef %.0.i) #4
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !7
  %i.bu = add i32 %i.au, %4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %notmask.i = shl nsw i32 -1, %i.ad
  %i.bv = xor i32 %notmask.i, -1
  %i.bw = sub nsw i32 %i.aj, %i.ad
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = add i32 %reass.sub.recomposed, 1
  %i.bz = add i32 %i.by, %.neg29.i
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = lshr i32 %.0105193, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = tail call i32 @Swap32NtoB(i32 noundef %i.ce) #4
  %i.cg = and i32 %.0105193, 7
  %i.ch = add nuw nsw i32 %i.cg, %i.aj
  %i.ci = sub nuw nsw i32 32, %i.ch               ; 2 uses
  %i.cj = sub nuw nsw i32 32, %i.aj
  %i.ck = lshr i32 -1, %i.cj                      ; 2 uses
  %i.cl = shl i32 %i.ck, %i.ci
  %i.cm = and i32 %i.ca, %i.ck
  %i.cn = shl i32 %i.cm, %i.ci
  %i.co = xor i32 %i.cl, -1
  %i.cp = and i32 %i.cf, %i.co
  %i.cq = or i32 %i.cp, %i.cn
  %i.cr = tail call i32 @Swap32BtoN(i32 noundef %i.cq) #4
  store i32 %i.cr, ptr %i.cd, align 4, !tbaa !7
  %i.cs = add i32 %i.aj, %.0105193
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %dyn_jam_noDeref_large.exit
  %.1106 = phi i32 [ %i.bu, %dyn_jam_noDeref_large.exit ], [ %i.cs, %bb.aa ] ; 4 uses
  %i.ct = mul i32 %i.ab, %i.m
  %i.cu = mul i32 %.092196, %i.m
  %i.cv = lshr i32 %i.cu, 9
  %i.cw = sub i32 %.092196, %i.cv
  %i.cx = add i32 %i.cw, %i.ct
  %i.cy = icmp ugt i32 %i.ac, 65535
  %spec.store.select = select i1 %i.cy, i32 65535, i32 %i.cx ; 35 uses
  %i.cz = add nuw i32 %.0100194, 1                ; 3 uses
  %.not118 = icmp slt i32 %i.y, %i.b              ; 2 uses
  %.1.idx = select i1 %.not118, i64 0, i64 %i.t
  %.1 = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.1.idx ; 2 uses
  %.187 = select i1 %.not118, i32 %i.y, i32 0     ; 2 uses
  %i.da = and i32 %spec.store.select, 1073741696
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = icmp ult i32 %i.cz, %3
  %or.cond122 = and i1 %i.dc, %i.db
  br i1 %or.cond122, label %.preheader.preheader, label %bb.bm

.preheader.preheader:                             ; preds = %bb.ab
  %i.dd = add i32 %.0100194, 65536
  %i.de = xor i32 %.0100194, -1
  %i.df = add i32 %3, %i.de                       ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.af, %.preheader.preheader
  %.1101 = phi i32 [ %i.cz, %.preheader.preheader ], [ %i.dp, %bb.af ] ; 3 uses
  %.098 = phi i32 [ 0, %.preheader.preheader ], [ %i.do, %bb.af ] ; 5 uses
  %.288 = phi i32 [ %.187, %.preheader.preheader ], [ %.389.1, %bb.af ] ; 3 uses
  %.2 = phi ptr [ %.1, %.preheader.preheader ], [ %.3.1, %bb.af ] ; 4 uses
  %exitcond.not = icmp eq i32 %.098, %i.df
  br i1 %exitcond.not, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %.preheader
  %i.dg = load i32, ptr %.2, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.dj = or disjoint i32 %.098, 1                ; 2 uses
  %i.dk = add nsw i32 %.288, 1                    ; 2 uses
  %.not120 = icmp slt i32 %i.dk, %i.b             ; 2 uses
  %.389 = select i1 %.not120, i32 %i.dk, i32 0    ; 4 uses
  %.3.idx = select i1 %.not120, i64 0, i64 %i.t
  %.3 = getelementptr inbounds [4 x i8], ptr %i.di, i64 %.3.idx ; 5 uses
  %exitcond199 = icmp eq i32 %.098, 65534
  br i1 %exitcond199, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ad
  %exitcond.not.1 = icmp eq i32 %i.dj, %i.df
  br i1 %exitcond.not.1, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.preheader.1
  %i.dl = load i32, ptr %.3, align 4, !tbaa !7
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.af, label %.critedge.split.loop.exit

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.do = add nuw nsw i32 %.098, 2
  %i.dp = add nuw i32 %.1101, 2
  %i.dq = add nsw i32 %.389, 1                    ; 2 uses
  %.not120.1 = icmp slt i32 %i.dq, %i.b           ; 2 uses
  %.389.1 = select i1 %.not120.1, i32 %i.dq, i32 0
  %.3.idx.1 = select i1 %.not120.1, i64 0, i64 %i.t
  %.3.1 = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.3.idx.1
  br label %.preheader

.critedge.split.loop.exit:                        ; preds = %bb.ae
  %i.dr = add nuw i32 %.1101, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %.preheader, %bb.ad, %.preheader.1, %.critedge.split.loop.exit
  %.2102 = phi i32 [ %3, %.preheader.1 ], [ %i.dd, %bb.ad ], [ %3, %.preheader ], [ %i.dr, %.critedge.split.loop.exit ], [ %.1101, %bb.ac ]
  %.199 = phi i32 [ %i.df, %.preheader.1 ], [ 65535, %bb.ad ], [ %i.df, %.preheader ], [ %i.dj, %.critedge.split.loop.exit ], [ %.098, %bb.ac ] ; 4 uses
  %.196 = phi i32 [ 1, %.preheader.1 ], [ 0, %bb.ad ], [ 1, %.preheader ], [ 1, %.critedge.split.loop.exit ], [ 1, %bb.ac ]
  %.490 = phi i32 [ %.389, %.preheader.1 ], [ %.389, %bb.ad ], [ %.288, %.preheader ], [ %.389, %.critedge.split.loop.exit ], [ %.288, %bb.ac ]
  %.4 = phi ptr [ %.3, %.preheader.1 ], [ %.3, %bb.ad ], [ %.2, %.preheader ], [ %.3, %.critedge.split.loop.exit ], [ %.2, %bb.ac ]
  %.not.i = icmp sgt i32 %spec.store.select, -1
  br i1 %.not.i, label %6, label %lead.exit154

6:                                                ; preds = %.critedge
  %.not.1.i125 = icmp samesign ult i32 %spec.store.select, 1073741824
  br i1 %.not.1.i125, label %bb.ag, label %lead.exit154

bb.ag:                                            ; preds = %6
  %.not.2.i126.a = icmp samesign ult i32 %spec.store.select, 536870912
  br i1 %.not.2.i126.a, label %bb.ah, label %lead.exit154

bb.ah:                                            ; preds = %bb.ag
  %.not.3.i127.a = icmp samesign ult i32 %spec.store.select, 268435456
  br i1 %.not.3.i127.a, label %bb.ai, label %lead.exit154

bb.ai:                                            ; preds = %bb.ah
  %.not.4.i128.a = icmp samesign ult i32 %spec.store.select, 134217728
  br i1 %.not.4.i128.a, label %bb.aj, label %lead.exit154

bb.aj:                                            ; preds = %bb.ai
  %.not.5.i129.a = icmp samesign ult i32 %spec.store.select, 67108864
  br i1 %.not.5.i129.a, label %bb.ak, label %lead.exit154

bb.ak:                                            ; preds = %bb.aj
  %.not.6.i130.a = icmp samesign ult i32 %spec.store.select, 33554432
  br i1 %.not.6.i130.a, label %bb.al, label %lead.exit154

bb.al:                                            ; preds = %bb.ak
  %.not.7.i131.a = icmp samesign ult i32 %spec.store.select, 16777216
  br i1 %.not.7.i131.a, label %bb.am, label %lead.exit154

bb.am:                                            ; preds = %bb.al
  %.not.8.i132.a = icmp samesign ult i32 %spec.store.select, 8388608
  br i1 %.not.8.i132.a, label %bb.an, label %lead.exit154

bb.an:                                            ; preds = %bb.am
  %.not.9.i133.a = icmp samesign ult i32 %spec.store.select, 4194304
  br i1 %.not.9.i133.a, label %bb.ao, label %lead.exit154

bb.ao:                                            ; preds = %bb.an
  %.not.10.i134.a = icmp samesign ult i32 %spec.store.select, 2097152
  br i1 %.not.10.i134.a, label %bb.ap, label %lead.exit154

bb.ap:                                            ; preds = %bb.ao
  %.not.11.i135.a = icmp samesign ult i32 %spec.store.select, 1048576
  br i1 %.not.11.i135.a, label %bb.aq, label %lead.exit154

bb.aq:                                            ; preds = %bb.ap
  %.not.12.i136.a = icmp samesign ult i32 %spec.store.select, 524288
  br i1 %.not.12.i136.a, label %bb.ar, label %lead.exit154

bb.ar:                                            ; preds = %bb.aq
  %.not.13.i137.a = icmp samesign ult i32 %spec.store.select, 262144
  br i1 %.not.13.i137.a, label %bb.as, label %lead.exit154

bb.as:                                            ; preds = %bb.ar
  %.not.14.i138.a = icmp samesign ult i32 %spec.store.select, 131072
  br i1 %.not.14.i138.a, label %bb.at, label %lead.exit154

bb.at:                                            ; preds = %bb.as
  %.not.15.i139.a = icmp samesign ult i32 %spec.store.select, 65536
  br i1 %.not.15.i139.a, label %bb.au, label %lead.exit154

bb.au:                                            ; preds = %bb.at
  %.not.16.i140.a = icmp samesign ult i32 %spec.store.select, 32768
  br i1 %.not.16.i140.a, label %bb.av, label %lead.exit154

bb.av:                                            ; preds = %bb.au
  %.not.17.i141.a = icmp samesign ult i32 %spec.store.select, 16384
  br i1 %.not.17.i141.a, label %bb.aw, label %lead.exit154

bb.aw:                                            ; preds = %bb.av
  %.not.18.i142.a = icmp samesign ult i32 %spec.store.select, 8192
  br i1 %.not.18.i142.a, label %bb.ax, label %lead.exit154

bb.ax:                                            ; preds = %bb.aw
  %.not.19.i143.a = icmp samesign ult i32 %spec.store.select, 4096
  br i1 %.not.19.i143.a, label %bb.ay, label %lead.exit154

bb.ay:                                            ; preds = %bb.ax
  %.not.20.i144.a = icmp samesign ult i32 %spec.store.select, 2048
  br i1 %.not.20.i144.a, label %bb.az, label %lead.exit154

bb.az:                                            ; preds = %bb.ay
  %.not.21.i145.a = icmp samesign ult i32 %spec.store.select, 1024
  br i1 %.not.21.i145.a, label %bb.ba, label %lead.exit154

bb.ba:                                            ; preds = %bb.az
  %.not.22.i146.a = icmp samesign ult i32 %spec.store.select, 512
  br i1 %.not.22.i146.a, label %bb.bb, label %lead.exit154

bb.bb:                                            ; preds = %bb.ba
  %.not.23.i147.a = icmp samesign ult i32 %spec.store.select, 256
  br i1 %.not.23.i147.a, label %bb.bc, label %lead.exit154

bb.bc:                                            ; preds = %bb.bb
  %.not.24.i148.a = icmp samesign ult i32 %spec.store.select, 128
  br i1 %.not.24.i148.a, label %bb.bd, label %lead.exit154

bb.bd:                                            ; preds = %bb.bc
  %.not.25.i149.a = icmp samesign ult i32 %spec.store.select, 64
  br i1 %.not.25.i149.a, label %bb.be, label %lead.exit154

bb.be:                                            ; preds = %bb.bd
  %.not.26.i150.a = icmp samesign ult i32 %spec.store.select, 32
  br i1 %.not.26.i150.a, label %bb.bf, label %lead.exit154

bb.bf:                                            ; preds = %bb.be
  %.not.27.i151.a = icmp samesign ult i32 %spec.store.select, 16
  br i1 %.not.27.i151.a, label %bb.bg, label %lead.exit154

bb.bg:                                            ; preds = %bb.bf
  %.not.28.i152.a = icmp samesign ult i32 %spec.store.select, 8
  br i1 %.not.28.i152.a, label %bb.bh, label %lead.exit154

bb.bh:                                            ; preds = %bb.bg
  %.not.29.i153.a = icmp samesign ult i32 %spec.store.select, 4
  br i1 %.not.29.i153.a, label %bb.bi, label %lead.exit154

bb.bi:                                            ; preds = %bb.bh
  %.not.30.i.a = icmp samesign ult i32 %spec.store.select, 2
  br i1 %.not.30.i.a, label %bb.bj, label %lead.exit154

bb.bj:                                            ; preds = %bb.bi
  %.not.31.i = icmp eq i32 %spec.store.select, 0
  %i.ds = select i1 %.not.31.i, i32 8, i32 7
  br label %lead.exit154

lead.exit154:                                     ; preds = %.critedge, %6, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.06.lcssa.i124 = phi i32 [ -24, %.critedge ], [ -8, %bb.au ], [ -23, %6 ], [ %i.ds, %bb.bj ], [ -22, %bb.ag ], [ -4, %bb.ay ], [ -21, %bb.ah ], [ 6, %bb.bi ], [ -20, %bb.ai ], [ -7, %bb.av ], [ -19, %bb.aj ], [ 5, %bb.bh ], [ -18, %bb.ak ], [ -1, %bb.bb ], [ -17, %bb.al ], [ 4, %bb.bg ], [ -16, %bb.am ], [ -6, %bb.aw ], [ -15, %bb.an ], [ 3, %bb.bf ], [ -14, %bb.ao ], [ -3, %bb.az ], [ -13, %bb.ap ], [ 2, %bb.be ], [ -12, %bb.aq ], [ -5, %bb.ax ], [ -11, %bb.ar ], [ 1, %bb.bd ], [ -10, %bb.as ], [ -2, %bb.ba ], [ -9, %bb.at ], [ 0, %bb.bc ]
  %i.dt = add nuw nsw i32 %spec.store.select, 16
  %i.du = lshr i32 %i.dt, 6
  %i.dv = add nsw i32 %.06.lcssa.i124, %i.du      ; 2 uses
  %notmask121 = shl nsw i32 -1, %i.dv
  %i.dw = xor i32 %notmask121, -1
  %i.dx = and i32 %i.q, %i.dw                     ; 2 uses
  %i.dy = sdiv i32 %.199, %i.dx                   ; 4 uses
  %i.dz = srem i32 %.199, %i.dx                   ; 2 uses
  %i.ea = icmp ugt i32 %i.dy, 8
  br i1 %i.ea, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %lead.exit154
  %i.eb = add nsw i32 %.199, 33488896
  br label %dyn_code.exit

bb.bl:                                            ; preds = %lead.exit154
  %i.ec = icmp eq i32 %i.dz, 0                    ; 2 uses
  %.neg23.i = sext i1 %i.ec to i32
  %i.ed = add nsw i32 %i.dv, 1
  %i.ee = add nsw i32 %i.ed, %i.dy
  %i.ef = add nsw i32 %i.ee, %.neg23.i            ; 3 uses
  %notmask.i155 = shl nsw i32 -1, %i.dy
  %i.eg = xor i32 %notmask.i155, -1
  %i.eh = sub nsw i32 %i.ef, %i.dy
  %i.ei = shl i32 %i.eg, %i.eh
  %not. = xor i1 %i.ec, true
  %i.ej = zext i1 %not. to i32
  %i.ek = add nsw i32 %i.dz, %i.ej
  %i.el = add i32 %i.ek, %i.ei
  %i.em = icmp ugt i32 %i.ef, 25
  %i.en = add nsw i32 %.199, 33488896
  %spec.select.i156 = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 25)
  %spec.select22.i = select i1 %i.em, i32 %i.en, i32 %i.el
  br label %dyn_code.exit

dyn_code.exit:                                    ; preds = %bb.bk, %bb.bl
  %.019.i = phi i32 [ 25, %bb.bk ], [ %spec.select.i156, %bb.bl ] ; 3 uses
  %.0.i157 = phi i32 [ %i.eb, %bb.bk ], [ %spec.select22.i, %bb.bl ]
  %i.eo = lshr i32 %.1106, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = tail call i32 @Swap32NtoB(i32 noundef %i.er) #4
  %i.et = and i32 %.1106, 7
  %i.eu = add nuw nsw i32 %i.et, %.019.i
  %i.ev = sub nuw nsw i32 32, %i.eu               ; 2 uses
  %i.ew = sub nuw nsw i32 32, %.019.i
  %i.ex = lshr i32 -1, %i.ew                      ; 2 uses
  %i.ey = shl i32 %i.ex, %i.ev
  %i.ez = and i32 %i.ex, %.0.i157
  %i.fa = shl i32 %i.ez, %i.ev
  %i.fb = xor i32 %i.ey, -1
  %i.fc = and i32 %i.es, %i.fb
  %i.fd = or i32 %i.fa, %i.fc
  %i.fe = tail call i32 @Swap32BtoN(i32 noundef %i.fd) #4
  store i32 %i.fe, ptr %i.eq, align 4, !tbaa !7
  %i.ff = add i32 %.019.i, %.1106
  br label %bb.bm

bb.bm:                                            ; preds = %dyn_code.exit, %bb.ab
  %.2107 = phi i32 [ %i.ff, %dyn_code.exit ], [ %.1106, %bb.ab ] ; 2 uses
  %.3103 = phi i32 [ %.2102, %dyn_code.exit ], [ %i.cz, %bb.ab ] ; 2 uses
  %.297 = phi i32 [ %.196, %dyn_code.exit ], [ 0, %bb.ab ]
  %.193 = phi i32 [ 0, %dyn_code.exit ], [ %spec.store.select, %bb.ab ]
  %.591 = phi i32 [ %.490, %dyn_code.exit ], [ %.187, %bb.ab ]
  %.5 = phi ptr [ %.4, %dyn_code.exit ], [ %.1, %bb.ab ]
  %i.fg = icmp ult i32 %.3103, %3
  br i1 %i.fg, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.bm, %.split
  %.0105.lcssa = phi i32 [ %i.i, %.split ], [ %.2107, %bb.bm ]
  %i.fh = sub i32 %.0105.lcssa, %i.i              ; 2 uses
  store i32 %i.fh, ptr %5, align 4, !tbaa !7
  tail call void @BitBufferAdvance(ptr noundef nonnull %2, i32 noundef %i.fh) #4
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge, %bb.a
  %.0108 = phi i32 [ -50, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.0108
}

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #1

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !23}
!9 = !{!"AGParamRec", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!10 = !{!9, !6, i64 28}
!11 = !{!9, !6, i64 24}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"BitBuffer", !13, i64 0, !13, i64 8, !6, i64 16, !6, i64 20}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !6, i64 16}
!17 = !{!9, !6, i64 4}
!18 = !{!9, !6, i64 0}
!19 = !{!9, !6, i64 8}
!20 = !{!9, !6, i64 12}
!21 = !{!9, !6, i64 16}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
