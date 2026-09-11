Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ag_dec?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dyn_decomp:bb.a
  %.not.17.i = icmp samesign ult i32 %.073155, 8387072
  br i1 %.not.17.i, label %bb.n, label %lead.exit

bb.n:                                             ; preds = %bb.m
  %.not.18.i = icmp samesign ult i32 %.073155, 4192768
  br i1 %.not.18.i, label %bb.o, label %lead.exit

bb.o:                                             ; preds = %bb.n
  %.not.19.i = icmp samesign ult i32 %.073155, 2095616
  br i1 %.not.19.i, label %bb.p, label %lead.exit

bb.p:                                             ; preds = %bb.o
  %.not.20.i = icmp samesign ult i32 %.073155, 1047040
  br i1 %.not.20.i, label %bb.q, label %lead.exit

bb.q:                                             ; preds = %bb.p
  %.not.21.i = icmp samesign ult i32 %.073155, 522752
  br i1 %.not.21.i, label %bb.r, label %lead.exit

bb.r:                                             ; preds = %bb.q
  %.not.22.i = icmp samesign ult i32 %.073155, 260608
  br i1 %.not.22.i, label %bb.s, label %lead.exit

bb.s:                                             ; preds = %bb.r
  %.not.23.i = icmp samesign ult i32 %.073155, 129536
  br i1 %.not.23.i, label %bb.t, label %lead.exit

bb.t:                                             ; preds = %bb.s
  %.not.24.i = icmp samesign ult i32 %.073155, 64000
  br i1 %.not.24.i, label %bb.u, label %lead.exit

bb.u:                                             ; preds = %bb.t
  %.not.25.i = icmp samesign ult i32 %.073155, 31232
  br i1 %.not.25.i, label %bb.v, label %lead.exit

bb.v:                                             ; preds = %bb.u
  %.not.26.i = icmp samesign ult i32 %.073155, 14848
  br i1 %.not.26.i, label %bb.w, label %lead.exit

bb.w:                                             ; preds = %bb.v
  %.not.27.i = icmp samesign ult i32 %.073155, 6656
  br i1 %.not.27.i, label %bb.x, label %lead.exit

bb.x:                                             ; preds = %bb.w
  %.not.28.i = icmp samesign ult i32 %.073155, 2560
  br i1 %.not.28.i, label %bb.y, label %lead.exit

bb.y:                                             ; preds = %bb.x
  %.not.29.i = icmp samesign ult i32 %.073155, 512
  %i.y = select i1 %.not.29.i, i32 1, i32 2
  br label %lead.exit

lead.exit:                                        ; preds = %bb.y, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.06.lcssa.i.neg = phi i32 [ 7, %bb.t ], [ 15, %bb.l ], [ 5, %bb.v ], [ 16, %bb.k ], [ 9, %bb.r ], [ 11, %bb.p ], [ 17, %bb.j ], [ 20, %bb.g ], [ 6, %bb.u ], [ 14, %bb.m ], [ 18, %bb.i ], [ %i.y, %bb.y ], [ 12, %bb.o ], [ 8, %bb.s ], [ 19, %bb.h ], [ 3, %bb.x ], [ 23, %bb.d ], [ 13, %bb.n ], [ 22, %bb.e ], [ 4, %bb.w ], [ 21, %bb.f ], [ 10, %bb.q ]
  %i.z = tail call i32 @llvm.umin.i32(i32 %.06.lcssa.i.neg, i32 %i.d) ; 5 uses
  %i.aa = lshr i32 %.0144151, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = and i32 %.0144151, 7
  %i.ag = shl i32 %i.ae, %i.af                    ; 10 uses
  %.not.i36.i = icmp slt i32 %i.ag, 0
  br i1 %.not.i36.i, label %bb.z, label %lead.exit.i

bb.z:                                             ; preds = %lead.exit
  %.not.1.i.i = icmp samesign ugt i32 %i.ag, -1073741825
  br i1 %.not.1.i.i, label %bb.aa, label %lead.exit.i

bb.aa:                                            ; preds = %bb.z
  %.not.2.i.i = icmp samesign ugt i32 %i.ag, -536870913
  br i1 %.not.2.i.i, label %bb.ab, label %lead.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.not.3.i.i = icmp samesign ugt i32 %i.ag, -268435457
  br i1 %.not.3.i.i, label %bb.ac, label %lead.exit.i

bb.ac:                                            ; preds = %bb.ab
  %.not.4.i.i = icmp samesign ugt i32 %i.ag, -134217729
  br i1 %.not.4.i.i, label %bb.ad, label %lead.exit.i

bb.ad:                                            ; preds = %bb.ac
  %.not.5.i.i = icmp samesign ugt i32 %i.ag, -67108865
  br i1 %.not.5.i.i, label %bb.ae, label %lead.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not.6.i.i = icmp samesign ugt i32 %i.ag, -33554433
  br i1 %.not.6.i.i, label %bb.af, label %lead.exit.i

bb.af:                                            ; preds = %bb.ae
  %.not.7.i.i = icmp samesign ugt i32 %i.ag, -16777217
  br i1 %.not.7.i.i, label %bb.ag, label %lead.exit.i

bb.ag:                                            ; preds = %bb.af
  %.not.8.i.i = icmp samesign ugt i32 %i.ag, -8388609
  br i1 %.not.8.i.i, label %bb.ah, label %lead.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ah = add i32 %.0144151, 9                    ; 3 uses
  %i.ai = sdiv i32 %i.ah, 8                       ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw i32 %i.am, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !25
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 16
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba            ; 2 uses
  %i.bc = and i32 %i.ah, 7                        ; 2 uses
  %i.bd = add nsw i32 %i.bc, %4                   ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 32
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bf = shl i32 %i.bb, %i.bc
  %i.bg = add nsw i32 %i.ai, 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 40, %i.bd
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = lshr i32 %i.bf, %i.r
  %i.bo = or i32 %i.bm, %i.bn
  br label %getstreambits.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.bp = sub i32 32, %i.bd
  %i.bq = lshr i32 %i.bb, %i.bp
  br label %getstreambits.exit.i

getstreambits.exit.i:                             ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi i32 [ %i.bo, %bb.ai ], [ %i.bq, %bb.aj ]
  %.1.i.i = and i32 %.0.i.i, %i.w
  %i.br = add i32 %i.ah, %4
  br label %dyn_get_32bit.exit

lead.exit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %lead.exit
  %.06.lcssa.i.i = phi i32 [ 0, %lead.exit ], [ 8, %bb.ag ], [ 1, %bb.z ], [ 5, %bb.ad ], [ 2, %bb.aa ], [ 7, %bb.af ], [ 3, %bb.ab ], [ 6, %bb.ae ], [ 4, %bb.ac ] ; 5 uses
  %i.bs = add nuw i32 %.06.lcssa.i.i, %.0144151   ; 2 uses
  %i.bt = add i32 %i.bs, 1                        ; 2 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %dyn_get_32bit.exit, label %bb.ak

bb.ak:                                            ; preds = %lead.exit.i
  %i.bu = add nuw nsw i32 %.06.lcssa.i.i, 1
  %i.bv = shl i32 %i.ag, %i.bu
  %i.bw = sub nuw nsw i32 32, %i.z
  %i.bx = lshr i32 %i.bv, %i.bw                   ; 2 uses
  %i.by = add i32 %i.bs, %i.z
  %mulshl = shl nuw nsw i32 %.06.lcssa.i.i, %i.z
  %i.bz = sub nsw i32 %mulshl, %.06.lcssa.i.i     ; 2 uses
  %i.ca = icmp samesign ugt i32 %i.bx, 1
  br i1 %i.ca, label %bb.al, label %dyn_get_32bit.exit

bb.al:                                            ; preds = %bb.ak
  %i.cb = add i32 %i.bt, %i.z
  %i.cc = add nsw i32 %i.bz, -1
  %i.cd = add nsw i32 %i.cc, %i.bx
  br label %dyn_get_32bit.exit

dyn_get_32bit.exit:                               ; preds = %getstreambits.exit.i, %lead.exit.i, %bb.ak, %bb.al
  %.032.i = phi i32 [ %.1.i.i, %getstreambits.exit.i ], [ %i.cd, %bb.al ], [ %i.bz, %bb.ak ], [ %.06.lcssa.i.i, %lead.exit.i ] ; 2 uses
  %.0.i = phi i32 [ %i.br, %getstreambits.exit.i ], [ %i.cb, %bb.al ], [ %i.by, %bb.ak ], [ %i.bt, %lead.exit.i ] ; 5 uses
  %i.ce = add i32 %.032.i, %.075154               ; 3 uses
  %i.cf = and i32 %i.ce, 1
  %i.cg = sub nsw i32 0, %i.cf
  %i.ch = or i32 %i.cg, 1
  %i.ci = add i32 %i.ce, 1
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = mul i32 %i.cj, %i.ch
  %i.cl = getelementptr i8, ptr %.081152, i64 4   ; 3 uses
  store i32 %i.ck, ptr %.081152, align 4, !tbaa !7
  %i.cm = add nuw i32 %.077153, 1                 ; 4 uses
  %i.cn = mul i32 %i.ce, %i.b
  %i.co = mul i32 %.073155, %i.b
  %i.cp = lshr i32 %i.co, 9
  %i.cq = sub i32 %.073155, %i.cp
  %i.cr = add i32 %i.cq, %i.cn
  %i.cs = icmp ugt i32 %.032.i, 65535
  %spec.store.select = select i1 %i.cs, i32 65535, i32 %i.cr ; 35 uses
  %i.ct = and i32 %spec.store.select, 1073741696
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = icmp ult i32 %i.cm, %3
  %or.cond93 = and i1 %i.cv, %i.cu
  br i1 %or.cond93, label %bb.am, label %bb.ca

bb.am:                                            ; preds = %dyn_get_32bit.exit
  %.not.i95 = icmp sgt i32 %spec.store.select, -1
  br i1 %.not.i95, label %bb.an, label %lead.exit126

bb.an:                                            ; preds = %bb.am
  %.not.2.i98.a = icmp samesign ult i32 %spec.store.select, 1073741824
  br i1 %.not.2.i98.a, label %bb.ao, label %lead.exit126

bb.ao:                                            ; preds = %bb.an
  %.not.3.i99.a = icmp samesign ult i32 %spec.store.select, 536870912
  br i1 %.not.3.i99.a, label %bb.ap, label %lead.exit126

bb.ap:                                            ; preds = %bb.ao
  %.not.4.i100.a = icmp samesign ult i32 %spec.store.select, 268435456
  br i1 %.not.4.i100.a, label %bb.aq, label %lead.exit126

bb.aq:                                            ; preds = %bb.ap
  %.not.5.i101.a = icmp samesign ult i32 %spec.store.select, 134217728
  br i1 %.not.5.i101.a, label %bb.ar, label %lead.exit126

bb.ar:                                            ; preds = %bb.aq
  %.not.6.i102.a = icmp samesign ult i32 %spec.store.select, 67108864
  br i1 %.not.6.i102.a, label %bb.as, label %lead.exit126

bb.as:                                            ; preds = %bb.ar
  %.not.7.i103.a = icmp samesign ult i32 %spec.store.select, 33554432
  br i1 %.not.7.i103.a, label %bb.at, label %lead.exit126

bb.at:                                            ; preds = %bb.as
  %.not.8.i104.a = icmp samesign ult i32 %spec.store.select, 16777216
  br i1 %.not.8.i104.a, label %bb.au, label %lead.exit126

bb.au:                                            ; preds = %bb.at
  %.not.9.i105.a = icmp samesign ult i32 %spec.store.select, 8388608
  br i1 %.not.9.i105.a, label %bb.av, label %lead.exit126

bb.av:                                            ; preds = %bb.au
  %.not.10.i106.a = icmp samesign ult i32 %spec.store.select, 4194304
  br i1 %.not.10.i106.a, label %bb.aw, label %lead.exit126

bb.aw:                                            ; preds = %bb.av
  %.not.11.i107.a = icmp samesign ult i32 %spec.store.select, 2097152
  br i1 %.not.11.i107.a, label %bb.ax, label %lead.exit126

bb.ax:                                            ; preds = %bb.aw
  %.not.12.i108.a = icmp samesign ult i32 %spec.store.select, 1048576
  br i1 %.not.12.i108.a, label %bb.ay, label %lead.exit126

bb.ay:                                            ; preds = %bb.ax
  %.not.13.i109.a = icmp samesign ult i32 %spec.store.select, 524288
  br i1 %.not.13.i109.a, label %bb.az, label %lead.exit126

bb.az:                                            ; preds = %bb.ay
  %.not.14.i110.a = icmp samesign ult i32 %spec.store.select, 262144
  br i1 %.not.14.i110.a, label %bb.ba, label %lead.exit126

bb.ba:                                            ; preds = %bb.az
  %.not.15.i111.a = icmp samesign ult i32 %spec.store.select, 131072
  br i1 %.not.15.i111.a, label %bb.bb, label %lead.exit126

bb.bb:                                            ; preds = %bb.ba
  %.not.16.i112.a = icmp samesign ult i32 %spec.store.select, 65536
  br i1 %.not.16.i112.a, label %bb.bc, label %lead.exit126

bb.bc:                                            ; preds = %bb.bb
  %.not.17.i113.a = icmp samesign ult i32 %spec.store.select, 32768
  br i1 %.not.17.i113.a, label %bb.bd, label %lead.exit126

bb.bd:                                            ; preds = %bb.bc
  %.not.18.i114.a = icmp samesign ult i32 %spec.store.select, 16384
  br i1 %.not.18.i114.a, label %bb.be, label %lead.exit126

bb.be:                                            ; preds = %bb.bd
  %.not.19.i115.a = icmp samesign ult i32 %spec.store.select, 8192
  br i1 %.not.19.i115.a, label %bb.bf, label %lead.exit126

bb.bf:                                            ; preds = %bb.be
  %.not.20.i116.a = icmp samesign ult i32 %spec.store.select, 4096
  br i1 %.not.20.i116.a, label %bb.bg, label %lead.exit126

bb.bg:                                            ; preds = %bb.bf
  %.not.21.i117.a = icmp samesign ult i32 %spec.store.select, 2048
  br i1 %.not.21.i117.a, label %bb.bh, label %lead.exit126

bb.bh:                                            ; preds = %bb.bg
  %.not.22.i118.a = icmp samesign ult i32 %spec.store.select, 1024
  br i1 %.not.22.i118.a, label %bb.bi, label %lead.exit126

bb.bi:                                            ; preds = %bb.bh
  %.not.23.i119.a = icmp samesign ult i32 %spec.store.select, 512
  br i1 %.not.23.i119.a, label %bb.bj, label %lead.exit126

bb.bj:                                            ; preds = %bb.bi
  %.not.24.i120.a = icmp samesign ult i32 %spec.store.select, 256
  br i1 %.not.24.i120.a, label %bb.bk, label %lead.exit126

bb.bk:                                            ; preds = %bb.bj
  %.not.25.i121.a = icmp samesign ult i32 %spec.store.select, 128
  br i1 %.not.25.i121.a, label %bb.bl, label %lead.exit126

bb.bl:                                            ; preds = %bb.bk
  %.not.26.i122.a = icmp samesign ult i32 %spec.store.select, 64
  br i1 %.not.26.i122.a, label %bb.bm, label %lead.exit126

bb.bm:                                            ; preds = %bb.bl
  %.not.27.i123.a = icmp samesign ult i32 %spec.store.select, 32
  br i1 %.not.27.i123.a, label %bb.bn, label %lead.exit126

bb.bn:                                            ; preds = %bb.bm
  %.not.28.i124.a = icmp samesign ult i32 %spec.store.select, 16
  br i1 %.not.28.i124.a, label %bb.bo, label %lead.exit126

bb.bo:                                            ; preds = %bb.bn
  %.not.29.i125.a = icmp samesign ult i32 %spec.store.select, 8
  br i1 %.not.29.i125.a, label %bb.bp, label %lead.exit126

bb.bp:                                            ; preds = %bb.bo
  %.not.30.i.a = icmp samesign ult i32 %spec.store.select, 4
  br i1 %.not.30.i.a, label %bb.bq, label %lead.exit126

bb.bq:                                            ; preds = %bb.bp
  %.not.30.i = icmp samesign ult i32 %spec.store.select, 2
  %6 = sub nuw nsw i32 8, %spec.store.select
  %i.cw = select i1 %.not.30.i, i32 %6, i32 6
  br label %lead.exit126

lead.exit126:                                     ; preds = %bb.bq, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.06.lcssa.i96 = phi i32 [ -24, %bb.am ], [ -8, %bb.bc ], [ -23, %bb.an ], [ 0, %bb.bk ], [ -22, %bb.ao ], [ -4, %bb.bg ], [ -21, %bb.ap ], [ %i.cw, %bb.bq ], [ -20, %bb.aq ], [ -7, %bb.bd ], [ -19, %bb.ar ], [ 5, %bb.bp ], [ -18, %bb.as ], [ -1, %bb.bj ], [ -17, %bb.at ], [ 4, %bb.bo ], [ -16, %bb.au ], [ -6, %bb.be ], [ -15, %bb.av ], [ 3, %bb.bn ], [ -14, %bb.aw ], [ -3, %bb.bh ], [ -13, %bb.ax ], [ 2, %bb.bm ], [ -12, %bb.ay ], [ -5, %bb.bf ], [ -11, %bb.az ], [ 1, %bb.bl ], [ -10, %bb.ba ], [ -2, %bb.bi ], [ -9, %bb.bb ]
  %i.cx = add nuw nsw i32 %spec.store.select, 16
  %i.cy = lshr i32 %i.cx, 6
  %i.cz = add nsw i32 %.06.lcssa.i96, %i.cy       ; 3 uses
  %notmask91 = shl nsw i32 -1, %i.cz
  %i.da = xor i32 %notmask91, -1
  %i.db = and i32 %i.f, %i.da
  %i.dc = lshr i32 %.0.i, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = tail call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dh = and i32 %.0.i, 7
  %i.di = shl i32 %i.dg, %i.dh                    ; 11 uses
  %.not.i.i127 = icmp slt i32 %i.di, 0
  br i1 %.not.i.i127, label %bb.br, label %lead.exit.i128

bb.br:                                            ; preds = %lead.exit126
  %.not.1.i.i133 = icmp samesign ugt i32 %i.di, -1073741825
  br i1 %.not.1.i.i133, label %bb.bs, label %lead.exit.i128

bb.bs:                                            ; preds = %bb.br
  %.not.2.i.i134 = icmp samesign ugt i32 %i.di, -536870913
  br i1 %.not.2.i.i134, label %bb.bt, label %lead.exit.i128

bb.bt:                                            ; preds = %bb.bs
  %.not.3.i.i135 = icmp samesign ugt i32 %i.di, -268435457
  br i1 %.not.3.i.i135, label %bb.bu, label %lead.exit.i128

bb.bu:                                            ; preds = %bb.bt
  %.not.4.i.i136 = icmp samesign ugt i32 %i.di, -134217729
  br i1 %.not.4.i.i136, label %bb.bv, label %lead.exit.i128

bb.bv:                                            ; preds = %bb.bu
  %.not.5.i.i137 = icmp samesign ugt i32 %i.di, -67108865
  br i1 %.not.5.i.i137, label %bb.bw, label %lead.exit.i128

bb.bw:                                            ; preds = %bb.bv
  %.not.6.i.i138 = icmp samesign ugt i32 %i.di, -33554433
  br i1 %.not.6.i.i138, label %bb.bx, label %lead.exit.i128

bb.bx:                                            ; preds = %bb.bw
  %.not.7.i.i139 = icmp samesign ugt i32 %i.di, -16777217
  br i1 %.not.7.i.i139, label %bb.by, label %lead.exit.i128

bb.by:                                            ; preds = %bb.bx
  %.not.8.i.i140 = icmp samesign ugt i32 %i.di, -8388609
  br i1 %.not.8.i.i140, label %bb.bz, label %lead.exit.i128

bb.bz:                                            ; preds = %bb.by
  %i.dj = lshr i32 %i.di, 7
  %i.dk = and i32 %i.dj, 65535
  %i.dl = add i32 %.0.i, 25
  br label %dyn_get.exit

lead.exit.i128:                                   ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %lead.exit126
  %.06.lcssa.i.i129 = phi i32 [ 0, %lead.exit126 ], [ 8, %bb.by ], [ 1, %bb.br ], [ 5, %bb.bv ], [ 2, %bb.bs ], [ 7, %bb.bx ], [ 3, %bb.bt ], [ 6, %bb.bw ], [ 4, %bb.bu ] ; 3 uses
  %i.dm = add nuw nsw i32 %.06.lcssa.i.i129, 1
  %i.dn = shl i32 %i.di, %i.dm
  %i.do = sub nsw i32 32, %i.cz
  %i.dp = lshr i32 %i.dn, %i.do                   ; 2 uses
  %i.dq = mul i32 %.06.lcssa.i.i129, %i.db        ; 2 uses
  %i.dr = add i32 %i.dq, -1
  %i.ds = add i32 %i.dr, %i.dp
  %i.dt = icmp ugt i32 %i.dp, 1                   ; 2 uses
  %spec.select.i130 = select i1 %i.dt, i32 %i.ds, i32 %i.dq
  %i.du = zext i1 %i.dt to i32
  %i.dv = add i32 %i.cz, %.0.i
  %spec.select35.v.i = add i32 %i.dv, %.06.lcssa.i.i129
  %spec.select35.i = add i32 %spec.select35.v.i, %i.du
  br label %dyn_get.exit

dyn_get.exit:                                     ; preds = %bb.bz, %lead.exit.i128
  %.032.i131 = phi i32 [ %i.dk, %bb.bz ], [ %spec.select.i130, %lead.exit.i128 ] ; 5 uses
  %.0.i132 = phi i32 [ %i.dl, %bb.bz ], [ %spec.select35.i, %lead.exit.i128 ] ; 2 uses
  %i.dw = add i32 %.032.i131, %i.cm               ; 2 uses
  %.not = icmp ugt i32 %i.dw, %3
  br i1 %.not, label %dyn_get.exit._crit_edge, label %.preheader

.preheader:                                       ; preds = %dyn_get.exit
  %.not167 = icmp eq i32 %.032.i131, 0
  br i1 %.not167, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dx = zext i32 %.032.i131 to i64
  %i.dy = shl nuw nsw i64 %i.dx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.dy, i1 false), !tbaa !7
  %scevgep = getelementptr i8, ptr %.081152, i64 8
  %i.dz = add i32 %.032.i131, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %scevgep169 = getelementptr i8, ptr %scevgep, i64 %i.eb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.182.lcssa = phi ptr [ %i.cl, %.preheader ], [ %scevgep169, %.lr.ph.preheader ]
  %.178.lcssa = phi i32 [ %i.cm, %.preheader ], [ %i.dw, %.lr.ph.preheader ]
  %i.ec = icmp ult i32 %.032.i131, 65535
  %spec.select = zext i1 %i.ec to i32
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge, %dyn_get_32bit.exit
  %.1 = phi i32 [ %.0.i132, %._crit_edge ], [ %.0.i, %dyn_get_32bit.exit ] ; 2 uses
  %.283 = phi ptr [ %.182.lcssa, %._crit_edge ], [ %i.cl, %dyn_get_32bit.exit ]
  %.279 = phi i32 [ %.178.lcssa, %._crit_edge ], [ %i.cm, %dyn_get_32bit.exit ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %._crit_edge ], [ 0, %dyn_get_32bit.exit ]
  %.174 = phi i32 [ 0, %._crit_edge ], [ %spec.store.select, %dyn_get_32bit.exit ]
  %i.ed = icmp ult i32 %.279, %3
  br i1 %i.ed, label %bb.c, label %dyn_get.exit._crit_edge, !llvm.loop !18

dyn_get.exit._crit_edge:                          ; preds = %bb.ca, %bb.c, %dyn_get.exit, %bb.b
  %.2145 = phi i32 [ %i.l, %bb.b ], [ %.0.i132, %dyn_get.exit ], [ %.0144151, %bb.c ], [ %.1, %bb.ca ]
  %.072 = phi i32 [ 0, %bb.b ], [ -50, %dyn_get.exit ], [ -50, %bb.c ], [ 0, %bb.ca ]
  %i.ee = sub i32 %.2145, %i.l                    ; 2 uses
  store i32 %i.ee, ptr %5, align 4, !tbaa !7
  tail call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.ee) #5
  %i.ef = load ptr, ptr %1, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !27
  %.not92 = icmp ugt ptr %i.ef, %i.eh
  %spec.select94 = select i1 %.not92, i32 -50, i32 %.072
  br label %bb.cb

bb.cb:                                            ; preds = %bb.a, %dyn_get.exit._crit_edge
  %.0 = phi i32 [ %spec.select94, %dyn_get.exit._crit_edge ], [ -50, %bb.a ]
  ret i32 %.0
}

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!8 = !{!"AGParamRec", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!9 = !{!8, !6, i64 16}
!10 = !{!8, !6, i64 20}
!11 = !{!8, !6, i64 24}
!12 = !{!8, !6, i64 28}
!13 = !{!8, !6, i64 32}
!14 = !{!8, !6, i64 4}
!15 = !{!8, !6, i64 8}
!16 = !{!8, !6, i64 12}
!17 = !{!8, !6, i64 0}
!18 = distinct !{!18, !26}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"BitBuffer", !20, i64 0, !20, i64 8, !6, i64 16, !6, i64 20}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !6, i64 16}
!24 = !{!21, !6, i64 20}
!25 = !{!5, !5, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!21, !20, i64 8}
end_hunk_0
