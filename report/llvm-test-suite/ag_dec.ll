Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ag_dec?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@set_ag_params:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.d, ptr %i.e, align 4, !tbaa !9
  %i.f = sub i32 512, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %6, ptr %i.j, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -50, 1) i32 @dyn_decomp(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.h
  %i.i = icmp ne ptr %5, null
  %or.cond3 = and i1 %or.cond, %i.i
  br i1 %or.cond3, label %bb.b, label %bb.cc

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !7
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = shl i32 %i.n, 3
  %.not166 = icmp eq i32 %3, 0
  br i1 %.not166, label %dyn_get.exit._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = sub nsw i32 32, %4
  %.not.i.i = icmp eq i32 %4, 32
  %i.s = zext nneg i32 %4 to i64
  %i.t = shl i64 4294967295, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = xor i32 %i.u, -1
  %i.w = select i1 %.not.i.i, i32 -1, i32 %i.v
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %bb.cb
  %.073155 = phi i32 [ %i.q, %.lr.ph157 ], [ %.174, %bb.cb ] ; 24 uses
  %.075154 = phi i32 [ 0, %.lr.ph157 ], [ %.2, %bb.cb ]
  %.077153 = phi i32 [ 0, %.lr.ph157 ], [ %.279, %bb.cb ]
  %.081152 = phi ptr [ %2, %.lr.ph157 ], [ %.283, %bb.cb ] ; 3 uses
  %.0144151 = phi i32 [ %i.l, %.lr.ph157 ], [ %.1, %bb.cb ] ; 6 uses
  %i.x = icmp ult i32 %.0144151, %i.o
  br i1 %i.x, label %bb.d, label %dyn_get.exit._crit_edge

bb.d:                                             ; preds = %bb.c
  %.not.8.i = icmp ult i32 %.073155, -1536
  br i1 %.not.8.i, label %bb.e, label %lead.exit

bb.e:                                             ; preds = %bb.d
  %.not.9.i = icmp ult i32 %.073155, 2147482112
  br i1 %.not.9.i, label %bb.f, label %lead.exit

bb.f:                                             ; preds = %bb.e
  %.not.10.i = icmp samesign ult i32 %.073155, 1073740288
  br i1 %.not.10.i, label %bb.g, label %lead.exit

bb.g:                                             ; preds = %bb.f
  %.not.11.i = icmp samesign ult i32 %.073155, 536869376
  br i1 %.not.11.i, label %bb.h, label %lead.exit

bb.h:                                             ; preds = %bb.g
  %.not.12.i = icmp samesign ult i32 %.073155, 268433920
  br i1 %.not.12.i, label %bb.i, label %lead.exit

bb.i:                                             ; preds = %bb.h
  %.not.13.i = icmp samesign ult i32 %.073155, 134216192
  br i1 %.not.13.i, label %bb.j, label %lead.exit

bb.j:                                             ; preds = %bb.i
  %.not.14.i = icmp samesign ult i32 %.073155, 67107328
  br i1 %.not.14.i, label %bb.k, label %lead.exit

bb.k:                                             ; preds = %bb.j
  %.not.15.i = icmp samesign ult i32 %.073155, 33552896
  br i1 %.not.15.i, label %bb.l, label %lead.exit

bb.l:                                             ; preds = %bb.k
  %.not.16.i = icmp samesign ult i32 %.073155, 16775680
  br i1 %.not.16.i, label %bb.m, label %lead.exit

bb.m:                                             ; preds = %bb.l
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
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj ; 4 uses
  %7 = load i8, ptr %6, align 1, !tbaa !25
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !25
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !25
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %14, %18
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 3
  %20 = load i8, ptr %i.ak, align 1, !tbaa !25
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %19, %21                  ; 2 uses
  %i.al = and i32 %i.ah, 7                        ; 2 uses
  %i.am = add nsw i32 %i.al, %4                   ; 3 uses
  %i.an = icmp sgt i32 %i.am, 32
  br i1 %i.an, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ao = shl i32 %22, %i.al
  %i.ap = add nsw i32 %i.ai, 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = zext i8 %i.as to i32
  %i.au = sub nsw i32 40, %i.am
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = lshr i32 %i.ao, %i.r
  %i.ax = or i32 %i.av, %i.aw
  br label %getstreambits.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ay = sub i32 32, %i.am
  %i.az = lshr i32 %22, %i.ay
  br label %getstreambits.exit.i

getstreambits.exit.i:                             ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi i32 [ %i.ax, %bb.ai ], [ %i.az, %bb.aj ]
  %.1.i.i = and i32 %.0.i.i, %i.w
  %i.ba = add i32 %i.ah, %4
  br label %dyn_get_32bit.exit

lead.exit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %lead.exit
  %.06.lcssa.i.i = phi i32 [ 0, %lead.exit ], [ 8, %bb.ag ], [ 1, %bb.z ], [ 5, %bb.ad ], [ 2, %bb.aa ], [ 7, %bb.af ], [ 3, %bb.ab ], [ 6, %bb.ae ], [ 4, %bb.ac ] ; 5 uses
  %i.bb = add nuw i32 %.06.lcssa.i.i, %.0144151   ; 2 uses
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %dyn_get_32bit.exit, label %bb.ak

bb.ak:                                            ; preds = %lead.exit.i
  %i.bd = add nuw nsw i32 %.06.lcssa.i.i, 1
  %i.be = shl i32 %i.ag, %i.bd
  %i.bf = sub nuw nsw i32 32, %i.z
  %i.bg = lshr i32 %i.be, %i.bf                   ; 2 uses
  %i.bh = add i32 %i.bb, %i.z
  %mulshl = shl nuw nsw i32 %.06.lcssa.i.i, %i.z
  %i.bi = sub nsw i32 %mulshl, %.06.lcssa.i.i     ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.bg, 1
  br i1 %i.bj, label %bb.al, label %dyn_get_32bit.exit

bb.al:                                            ; preds = %bb.ak
  %i.bk = add i32 %i.bc, %i.z
  %i.bl = add nsw i32 %i.bi, -1
  %i.bm = add nsw i32 %i.bl, %i.bg
  br label %dyn_get_32bit.exit

dyn_get_32bit.exit:                               ; preds = %getstreambits.exit.i, %lead.exit.i, %bb.ak, %bb.al
  %.032.i = phi i32 [ %.1.i.i, %getstreambits.exit.i ], [ %i.bm, %bb.al ], [ %i.bi, %bb.ak ], [ %.06.lcssa.i.i, %lead.exit.i ] ; 2 uses
  %.0.i = phi i32 [ %i.ba, %getstreambits.exit.i ], [ %i.bk, %bb.al ], [ %i.bh, %bb.ak ], [ %i.bc, %lead.exit.i ] ; 5 uses
  %i.bn = add i32 %.032.i, %.075154               ; 3 uses
  %i.bo = and i32 %i.bn, 1
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = or i32 %i.bp, 1
  %i.br = add i32 %i.bn, 1
  %i.bs = lshr i32 %i.br, 1
  %i.bt = mul i32 %i.bs, %i.bq
  %i.bu = getelementptr i8, ptr %.081152, i64 4   ; 3 uses
  store i32 %i.bt, ptr %.081152, align 4, !tbaa !7
  %i.bv = add nuw i32 %.077153, 1                 ; 4 uses
  %i.bw = mul i32 %i.bn, %i.b
  %i.bx = mul i32 %.073155, %i.b
  %i.by = lshr i32 %i.bx, 9
  %i.bz = sub i32 %.073155, %i.by
  %i.ca = add i32 %i.bz, %i.bw
  %i.cb = icmp ugt i32 %.032.i, 65535
  %spec.store.select = select i1 %i.cb, i32 65535, i32 %i.ca ; 35 uses
  %i.cc = and i32 %spec.store.select, 1073741696
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = icmp ult i32 %i.bv, %3
  %or.cond93 = and i1 %i.ce, %i.cd
  br i1 %or.cond93, label %bb.am, label %bb.cb

bb.am:                                            ; preds = %dyn_get_32bit.exit
  %.not.i95 = icmp sgt i32 %spec.store.select, -1
  br i1 %.not.i95, label %bb.an, label %lead.exit126

bb.an:                                            ; preds = %bb.am
  %.not.1.i97 = icmp samesign ult i32 %spec.store.select, 1073741824
  br i1 %.not.1.i97, label %bb.ao, label %lead.exit126

bb.ao:                                            ; preds = %bb.an
  %.not.2.i98 = icmp samesign ult i32 %spec.store.select, 536870912
  br i1 %.not.2.i98, label %bb.ap, label %lead.exit126

bb.ap:                                            ; preds = %bb.ao
  %.not.3.i99 = icmp samesign ult i32 %spec.store.select, 268435456
  br i1 %.not.3.i99, label %bb.aq, label %lead.exit126

bb.aq:                                            ; preds = %bb.ap
  %.not.4.i100 = icmp samesign ult i32 %spec.store.select, 134217728
  br i1 %.not.4.i100, label %bb.ar, label %lead.exit126

bb.ar:                                            ; preds = %bb.aq
  %.not.5.i101 = icmp samesign ult i32 %spec.store.select, 67108864
  br i1 %.not.5.i101, label %bb.as, label %lead.exit126

bb.as:                                            ; preds = %bb.ar
  %.not.6.i102 = icmp samesign ult i32 %spec.store.select, 33554432
  br i1 %.not.6.i102, label %bb.at, label %lead.exit126

bb.at:                                            ; preds = %bb.as
  %.not.7.i103 = icmp samesign ult i32 %spec.store.select, 16777216
  br i1 %.not.7.i103, label %bb.au, label %lead.exit126

bb.au:                                            ; preds = %bb.at
  %.not.8.i104 = icmp samesign ult i32 %spec.store.select, 8388608
  br i1 %.not.8.i104, label %bb.av, label %lead.exit126

bb.av:                                            ; preds = %bb.au
  %.not.9.i105 = icmp samesign ult i32 %spec.store.select, 4194304
  br i1 %.not.9.i105, label %bb.aw, label %lead.exit126

bb.aw:                                            ; preds = %bb.av
  %.not.10.i106 = icmp samesign ult i32 %spec.store.select, 2097152
  br i1 %.not.10.i106, label %bb.ax, label %lead.exit126

bb.ax:                                            ; preds = %bb.aw
  %.not.11.i107 = icmp samesign ult i32 %spec.store.select, 1048576
  br i1 %.not.11.i107, label %bb.ay, label %lead.exit126

bb.ay:                                            ; preds = %bb.ax
  %.not.12.i108 = icmp samesign ult i32 %spec.store.select, 524288
  br i1 %.not.12.i108, label %bb.az, label %lead.exit126

bb.az:                                            ; preds = %bb.ay
  %.not.13.i109 = icmp samesign ult i32 %spec.store.select, 262144
  br i1 %.not.13.i109, label %bb.ba, label %lead.exit126

bb.ba:                                            ; preds = %bb.az
  %.not.14.i110 = icmp samesign ult i32 %spec.store.select, 131072
  br i1 %.not.14.i110, label %bb.bb, label %lead.exit126

bb.bb:                                            ; preds = %bb.ba
  %.not.15.i111 = icmp samesign ult i32 %spec.store.select, 65536
  br i1 %.not.15.i111, label %bb.bc, label %lead.exit126

bb.bc:                                            ; preds = %bb.bb
  %.not.16.i112 = icmp samesign ult i32 %spec.store.select, 32768
  br i1 %.not.16.i112, label %bb.bd, label %lead.exit126

bb.bd:                                            ; preds = %bb.bc
  %.not.17.i113 = icmp samesign ult i32 %spec.store.select, 16384
  br i1 %.not.17.i113, label %bb.be, label %lead.exit126

bb.be:                                            ; preds = %bb.bd
  %.not.18.i114 = icmp samesign ult i32 %spec.store.select, 8192
  br i1 %.not.18.i114, label %bb.bf, label %lead.exit126

bb.bf:                                            ; preds = %bb.be
  %.not.19.i115 = icmp samesign ult i32 %spec.store.select, 4096
  br i1 %.not.19.i115, label %bb.bg, label %lead.exit126

bb.bg:                                            ; preds = %bb.bf
  %.not.20.i116 = icmp samesign ult i32 %spec.store.select, 2048
  br i1 %.not.20.i116, label %bb.bh, label %lead.exit126

bb.bh:                                            ; preds = %bb.bg
  %.not.21.i117 = icmp samesign ult i32 %spec.store.select, 1024
  br i1 %.not.21.i117, label %bb.bi, label %lead.exit126

bb.bi:                                            ; preds = %bb.bh
  %.not.22.i118 = icmp samesign ult i32 %spec.store.select, 512
  br i1 %.not.22.i118, label %bb.bj, label %lead.exit126

bb.bj:                                            ; preds = %bb.bi
  %.not.23.i119 = icmp samesign ult i32 %spec.store.select, 256
  br i1 %.not.23.i119, label %bb.bk, label %lead.exit126

bb.bk:                                            ; preds = %bb.bj
  %.not.24.i120 = icmp samesign ult i32 %spec.store.select, 128
  br i1 %.not.24.i120, label %bb.bl, label %lead.exit126

bb.bl:                                            ; preds = %bb.bk
  %.not.25.i121 = icmp samesign ult i32 %spec.store.select, 64
  br i1 %.not.25.i121, label %bb.bm, label %lead.exit126

bb.bm:                                            ; preds = %bb.bl
  %.not.26.i122 = icmp samesign ult i32 %spec.store.select, 32
  br i1 %.not.26.i122, label %bb.bn, label %lead.exit126

bb.bn:                                            ; preds = %bb.bm
  %.not.27.i123 = icmp samesign ult i32 %spec.store.select, 16
  br i1 %.not.27.i123, label %bb.bo, label %lead.exit126

bb.bo:                                            ; preds = %bb.bn
  %.not.28.i124 = icmp samesign ult i32 %spec.store.select, 8
  br i1 %.not.28.i124, label %bb.bp, label %lead.exit126

bb.bp:                                            ; preds = %bb.bo
  %.not.29.i125 = icmp samesign ult i32 %spec.store.select, 4
  br i1 %.not.29.i125, label %bb.bq, label %lead.exit126

bb.bq:                                            ; preds = %bb.bp
  %.not.30.i = icmp samesign ult i32 %spec.store.select, 2
  br i1 %.not.30.i, label %bb.br, label %lead.exit126

bb.br:                                            ; preds = %bb.bq
  %.not.31.i = icmp eq i32 %spec.store.select, 0
  %i.cf = select i1 %.not.31.i, i32 8, i32 7
  br label %lead.exit126

lead.exit126:                                     ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.06.lcssa.i96 = phi i32 [ -24, %bb.am ], [ -8, %bb.bc ], [ -23, %bb.an ], [ %i.cf, %bb.br ], [ -22, %bb.ao ], [ -4, %bb.bg ], [ -21, %bb.ap ], [ 6, %bb.bq ], [ -20, %bb.aq ], [ -7, %bb.bd ], [ -19, %bb.ar ], [ 5, %bb.bp ], [ -18, %bb.as ], [ -1, %bb.bj ], [ -17, %bb.at ], [ 4, %bb.bo ], [ -16, %bb.au ], [ -6, %bb.be ], [ -15, %bb.av ], [ 3, %bb.bn ], [ -14, %bb.aw ], [ -3, %bb.bh ], [ -13, %bb.ax ], [ 2, %bb.bm ], [ -12, %bb.ay ], [ -5, %bb.bf ], [ -11, %bb.az ], [ 1, %bb.bl ], [ -10, %bb.ba ], [ -2, %bb.bi ], [ -9, %bb.bb ], [ 0, %bb.bk ]
  %i.cg = add nuw nsw i32 %spec.store.select, 16
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add nsw i32 %.06.lcssa.i96, %i.ch       ; 3 uses
  %notmask91 = shl nsw i32 -1, %i.ci
  %i.cj = xor i32 %notmask91, -1
  %i.ck = and i32 %i.f, %i.cj
  %i.cl = lshr i32 %.0.i, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = and i32 %.0.i, 7
  %i.cr = shl i32 %i.cp, %i.cq                    ; 11 uses
  %.not.i.i127 = icmp slt i32 %i.cr, 0
  br i1 %.not.i.i127, label %bb.bs, label %lead.exit.i128

bb.bs:                                            ; preds = %lead.exit126
  %.not.1.i.i133 = icmp samesign ugt i32 %i.cr, -1073741825
  br i1 %.not.1.i.i133, label %bb.bt, label %lead.exit.i128

bb.bt:                                            ; preds = %bb.bs
  %.not.2.i.i134 = icmp samesign ugt i32 %i.cr, -536870913
  br i1 %.not.2.i.i134, label %bb.bu, label %lead.exit.i128

bb.bu:                                            ; preds = %bb.bt
  %.not.3.i.i135 = icmp samesign ugt i32 %i.cr, -268435457
  br i1 %.not.3.i.i135, label %bb.bv, label %lead.exit.i128

bb.bv:                                            ; preds = %bb.bu
  %.not.4.i.i136 = icmp samesign ugt i32 %i.cr, -134217729
  br i1 %.not.4.i.i136, label %bb.bw, label %lead.exit.i128

bb.bw:                                            ; preds = %bb.bv
  %.not.5.i.i137 = icmp samesign ugt i32 %i.cr, -67108865
  br i1 %.not.5.i.i137, label %bb.bx, label %lead.exit.i128

bb.bx:                                            ; preds = %bb.bw
  %.not.6.i.i138 = icmp samesign ugt i32 %i.cr, -33554433
  br i1 %.not.6.i.i138, label %bb.by, label %lead.exit.i128

bb.by:                                            ; preds = %bb.bx
  %.not.7.i.i139 = icmp samesign ugt i32 %i.cr, -16777217
  br i1 %.not.7.i.i139, label %bb.bz, label %lead.exit.i128

bb.bz:                                            ; preds = %bb.by
  %.not.8.i.i140 = icmp samesign ugt i32 %i.cr, -8388609
  br i1 %.not.8.i.i140, label %bb.ca, label %lead.exit.i128

bb.ca:                                            ; preds = %bb.bz
  %i.cs = lshr i32 %i.cr, 7
  %i.ct = and i32 %i.cs, 65535
  %i.cu = add i32 %.0.i, 25
  br label %dyn_get.exit

lead.exit.i128:                                   ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %lead.exit126
  %.06.lcssa.i.i129 = phi i32 [ 0, %lead.exit126 ], [ 8, %bb.bz ], [ 1, %bb.bs ], [ 5, %bb.bw ], [ 2, %bb.bt ], [ 7, %bb.by ], [ 3, %bb.bu ], [ 6, %bb.bx ], [ 4, %bb.bv ] ; 3 uses
  %i.cv = add nuw nsw i32 %.06.lcssa.i.i129, 1
  %i.cw = shl i32 %i.cr, %i.cv
  %i.cx = sub nsw i32 32, %i.ci
  %i.cy = lshr i32 %i.cw, %i.cx                   ; 2 uses
  %i.cz = mul i32 %.06.lcssa.i.i129, %i.ck        ; 2 uses
  %i.da = add i32 %i.cz, -1
  %i.db = add i32 %i.da, %i.cy
  %i.dc = icmp ugt i32 %i.cy, 1                   ; 2 uses
  %spec.select.i130 = select i1 %i.dc, i32 %i.db, i32 %i.cz
  %i.dd = zext i1 %i.dc to i32
  %i.de = add i32 %i.ci, %.0.i
  %spec.select35.v.i = add i32 %i.de, %.06.lcssa.i.i129
  %spec.select35.i = add i32 %spec.select35.v.i, %i.dd
  br label %dyn_get.exit

dyn_get.exit:                                     ; preds = %bb.ca, %lead.exit.i128
  %.032.i131 = phi i32 [ %i.ct, %bb.ca ], [ %spec.select.i130, %lead.exit.i128 ] ; 5 uses
  %.0.i132 = phi i32 [ %i.cu, %bb.ca ], [ %spec.select35.i, %lead.exit.i128 ] ; 2 uses
  %i.df = add i32 %.032.i131, %i.bv               ; 2 uses
  %.not = icmp ugt i32 %i.df, %3
  br i1 %.not, label %dyn_get.exit._crit_edge, label %.preheader

.preheader:                                       ; preds = %dyn_get.exit
  %.not167 = icmp eq i32 %.032.i131, 0
  br i1 %.not167, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dg = zext i32 %.032.i131 to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 0, i64 %i.dh, i1 false), !tbaa !7
  %scevgep = getelementptr i8, ptr %.081152, i64 8
  %i.di = add i32 %.032.i131, -1
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %scevgep169 = getelementptr i8, ptr %scevgep, i64 %i.dk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.182.lcssa = phi ptr [ %i.bu, %.preheader ], [ %scevgep169, %.lr.ph.preheader ]
  %.178.lcssa = phi i32 [ %i.bv, %.preheader ], [ %i.df, %.lr.ph.preheader ]
  %i.dl = icmp ult i32 %.032.i131, 65535
  %spec.select = zext i1 %i.dl to i32
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge, %dyn_get_32bit.exit
  %.1 = phi i32 [ %.0.i132, %._crit_edge ], [ %.0.i, %dyn_get_32bit.exit ] ; 2 uses
  %.283 = phi ptr [ %.182.lcssa, %._crit_edge ], [ %i.bu, %dyn_get_32bit.exit ]
  %.279 = phi i32 [ %.178.lcssa, %._crit_edge ], [ %i.bv, %dyn_get_32bit.exit ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %._crit_edge ], [ 0, %dyn_get_32bit.exit ]
  %.174 = phi i32 [ 0, %._crit_edge ], [ %spec.store.select, %dyn_get_32bit.exit ]
  %i.dm = icmp ult i32 %.279, %3
  br i1 %i.dm, label %bb.c, label %dyn_get.exit._crit_edge, !llvm.loop !18

dyn_get.exit._crit_edge:                          ; preds = %bb.cb, %bb.c, %dyn_get.exit, %bb.b
  %.2145 = phi i32 [ %i.l, %bb.b ], [ %.0.i132, %dyn_get.exit ], [ %.0144151, %bb.c ], [ %.1, %bb.cb ]
  %.072 = phi i32 [ 0, %bb.b ], [ -50, %dyn_get.exit ], [ -50, %bb.c ], [ 0, %bb.cb ]
  %i.dn = sub i32 %.2145, %i.l                    ; 2 uses
  store i32 %i.dn, ptr %5, align 4, !tbaa !7
  tail call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %i.dn) #5
  %i.do = load ptr, ptr %1, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27
  %.not92 = icmp ugt ptr %i.do, %i.dq
  %spec.select94 = select i1 %.not92, i32 -50, i32 %.072
  br label %bb.cc

bb.cc:                                            ; preds = %bb.a, %dyn_get.exit._crit_edge
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
