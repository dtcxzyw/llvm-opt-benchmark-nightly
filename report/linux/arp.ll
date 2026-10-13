Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/arp?download=true
inline.NumInlined: 176
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@arp_constructor:bb.a
  %i.t = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 60       ; 3 uses
  %i.w = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 -1, ptr elementtype(i32) %i.v) #14, !srcloc !11
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %bb.f, label %__neigh_parms_put.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.v, i32 noundef 4) #13
  br label %__neigh_parms_put.exit

__neigh_parms_put.exit:                           ; preds = %bb.e, %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 60       ; 3 uses
  %i.z = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 1, ptr elementtype(i32) %i.y) #14, !srcloc !11 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %__neigh_parms_put.exit
  %i.aa = add i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z
  %.not10.i.i.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not10.i.i.i.i, label %neigh_parms_clone.exit, label %.sink.split.i.i.i.i, !prof !17

.sink.split.i.i.i.i:                              ; preds = %bb.g, %__neigh_parms_put.exit
  %.sink.i.i.i.i = phi i32 [ 2, %__neigh_parms_put.exit ], [ 1, %bb.g ]
  tail call void @refcount_warn_saturate(ptr noundef %i.y, i32 noundef %.sink.i.i.i.i) #13
  br label %neigh_parms_clone.exit

neigh_parms_clone.exit:                           ; preds = %bb.g, %.sink.split.i.i.i.i
  store ptr %i.s, ptr %i.t, align 8
  tail call void @__rcu_read_unlock() #13
  %i.ac = getelementptr i8, ptr %i.c, i64 16      ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 16
  %.not45 = icmp eq ptr %i.ad, null
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %neigh_parms_clone.exit
  %i.ae = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %0, i64 328
  store ptr @arp_direct_ops, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %0, i64 320
  store ptr @neigh_direct_output, ptr %i.ag, align 8
  br label %bb.v

bb.i:                                             ; preds = %neigh_parms_clone.exit
  %i.ah = load i8, ptr %i.q, align 1              ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 5
  br i1 %i.ai, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %0, i64 176       ; 4 uses
  %i.al = getelementptr i8, ptr %i.c, i64 544
  %i.am = load i16, ptr %i.al, align 32
  switch i16 %i.am, label %bb.o [
    i16 1, label %bb.k
    i16 774, label %bb.k
    i16 6, label %bb.k
    i16 32, label %bb.l
    i16 778, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.k) ; 3 uses
  store i8 1, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %0, i64 177
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %0, i64 178
  store i8 94, ptr %i.ap, align 2
  %i.aq = trunc i32 %i.an to i8
  %i.ar = getelementptr i8, ptr %0, i64 181
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = lshr i32 %i.an, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr i8, ptr %0, i64 180
  store i8 %i.at, ptr %i.au, align 4
  %i.av = lshr i32 %i.an, 16
  %i.aw = trunc i32 %i.av to i8
  %i.ax = and i8 %i.aw, 127
  %i.ay = getelementptr i8, ptr %0, i64 179
  store i8 %i.ax, ptr %i.ay, align 1
  br label %arp_mc_map.exit

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %i.c, i64 1125
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = and i8 %i.ba, 15
  store i8 0, ptr %i.ak, align 8
  %i.bc = getelementptr i8, ptr %0, i64 177
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.k) ; 4 uses
  %i.be = or disjoint i8 %i.bb, 16
  %i.bf = getelementptr i8, ptr %0, i64 181
  store i32 -1, ptr %i.bc, align 1
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %0, i64 182
  store i8 64, ptr %i.bg, align 2
  %i.bh = getelementptr i8, ptr %0, i64 183
  store i8 27, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.c, i64 1128
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %0, i64 184
  store i8 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.c, i64 1129
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr i8, ptr %0, i64 185
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %0, i64 186
  %i.bp = trunc i32 %i.bd to i8
  %i.bq = getelementptr i8, ptr %0, i64 195
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(6) %i.bo, i8 0, i64 6, i1 false)
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = lshr i32 %i.bd, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr i8, ptr %0, i64 194
  store i8 %i.bs, ptr %i.bt, align 2
  %i.bu = lshr i32 %i.bd, 16
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %0, i64 193
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = lshr i32 %i.bd, 24
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = and i8 %i.by, 15
  %i.ca = getelementptr i8, ptr %0, i64 192
  store i8 %i.bz, ptr %i.ca, align 8
  br label %arp_mc_map.exit

bb.m:                                             ; preds = %bb.j
  %i.cb = getelementptr i8, ptr %i.c, i64 1120    ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 32
  %i.cd = getelementptr i8, ptr %i.c, i64 1121
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = or i8 %i.ce, %i.cc
  %i.cg = getelementptr i8, ptr %i.c, i64 1122
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = or i8 %i.cf, %i.ch
  %i.cj = getelementptr i8, ptr %i.c, i64 1123
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = or i8 %i.ci, %i.ck
  %.not.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i, label %ip_ipgre_mc_map.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %i.cb, align 32
  br label %ip_ipgre_mc_map.exit.i

ip_ipgre_mc_map.exit.i:                           ; preds = %bb.n, %bb.m
  %storemerge.i.i = phi i32 [ %i.cm, %bb.n ], [ %i.k, %bb.m ]
  store i32 %storemerge.i.i, ptr %i.ak, align 8
  br label %arp_mc_map.exit

bb.o:                                             ; preds = %bb.j
  %i.cn = getelementptr i8, ptr %i.c, i64 1120
  %i.co = getelementptr i8, ptr %i.c, i64 808
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = zext i8 %i.cp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ak, ptr readonly align 32 %i.cn, i64 %i.cq, i1 false)
  br label %arp_mc_map.exit

bb.p:                                             ; preds = %bb.i
  %i.cr = load i32, ptr %i.d, align 16            ; 2 uses
  %i.cs = and i32 %i.cr, 136
  %.not46 = icmp eq i32 %i.cs, 0
  br i1 %.not46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.ct, align 4
  %i.cu = getelementptr i8, ptr %0, i64 176
  %i.cv = getelementptr i8, ptr %i.c, i64 1088
  %i.cw = load ptr, ptr %i.cv, align 64
  %i.cx = getelementptr i8, ptr %i.c, i64 808
  %i.cy = load i8, ptr %i.cx, align 8
  %i.cz = zext i8 %i.cy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cu, ptr align 1 %i.cw, i64 %i.cz, i1 false)
  br label %arp_mc_map.exit

bb.r:                                             ; preds = %bb.p
  %i.da = icmp ne i8 %i.ah, 3
  %i.db = and i32 %i.cr, 16
  %.not47 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %i.da, %.not47
  br i1 %or.cond, label %arp_mc_map.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.dc, align 4
  %i.dd = getelementptr i8, ptr %0, i64 176
  %i.de = getelementptr i8, ptr %i.c, i64 1120
  %i.df = getelementptr i8, ptr %i.c, i64 808
  %i.dg = load i8, ptr %i.df, align 8
  %i.dh = zext i8 %i.dg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dd, ptr align 32 %i.de, i64 %i.dh, i1 false)
  br label %arp_mc_map.exit

arp_mc_map.exit:                                  ; preds = %bb.o, %ip_ipgre_mc_map.exit.i, %bb.l, %bb.k, %bb.r, %bb.q, %bb.s
  %i.di = load ptr, ptr %i.ac, align 16
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not48 = icmp eq ptr %i.dk, null
  %spec.select = select i1 %.not48, ptr @arp_generic_ops, ptr @arp_hh_ops ; 3 uses
  %i.dl = getelementptr i8, ptr %0, i64 328
  store ptr %spec.select, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %0, i64 156
  %i.dn = load i8, ptr %i.dm, align 4
  %i.do = and i8 %i.dn, -34
  %.not49 = icmp eq i8 %i.do, 0
  %i.dp = getelementptr i8, ptr %0, i64 320       ; 2 uses
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %arp_mc_map.exit
  %1 = getelementptr i8, ptr %spec.select, i64 32
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %i.dp, align 8
  br label %bb.v

bb.u:                                             ; preds = %arp_mc_map.exit
  %3 = getelementptr i8, ptr %spec.select, i64 24
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %i.dp, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.u, %bb.t, %bb.d
  %.0 = phi i32 [ -22, %bb.d ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @parp_redo(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 264
  %.val = load ptr, ptr %i.c, align 8
  %i.d = tail call fastcc i32 @arp_process(ptr noundef %.val, ptr noundef %0) #15 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 2) i32 @arp_is_multicast(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 224
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local range(i32 -22, 1) i32 @arp_mc_map(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 544
  %i.b = load i16, ptr %i.a, align 32
  switch i16 %i.b, label %bb.f [
    i16 1, label %bb.b
    i16 774, label %bb.b
    i16 6, label %bb.b
    i16 32, label %bb.c
    i16 778, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = tail call i32 @llvm.bswap.i32(i32 %0)    ; 3 uses
  store i8 1, ptr %1, align 1
  %i.d = getelementptr i8, ptr %1, i64 1
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %1, i64 2
  store i8 94, ptr %i.e, align 1
  %i.f = trunc i32 %i.c to i8
  %i.g = getelementptr i8, ptr %1, i64 5
  store i8 %i.f, ptr %i.g, align 1
  %i.h = lshr i32 %i.c, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.j, align 1
  %i.k = lshr i32 %i.c, 16
  %i.l = trunc i32 %i.k to i8
  %i.m = and i8 %i.l, 127
  %i.n = getelementptr i8, ptr %1, i64 3
  store i8 %i.m, ptr %i.n, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %2, i64 1125
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 15
  store i8 0, ptr %1, align 1
  %i.r = getelementptr i8, ptr %1, i64 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %0)    ; 4 uses
  %i.t = or disjoint i8 %i.q, 16
  %i.u = getelementptr i8, ptr %1, i64 5
  store i32 -1, ptr %i.r, align 1
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %1, i64 6
  store i8 64, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %1, i64 7
  store i8 27, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %2, i64 1128
  %i.y = load i8, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %1, i64 8
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %2, i64 1129
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr i8, ptr %1, i64 9
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %1, i64 10
  %i.ae = trunc i32 %i.s to i8
  %i.af = getelementptr i8, ptr %1, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %i.ad, i8 0, i64 6, i1 false)
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = lshr i32 %i.s, 8
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr i8, ptr %1, i64 18
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i32 %i.s, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr i8, ptr %1, i64 17
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.s, 24
  %i.an = trunc nuw i32 %i.am to i8
  %i.ao = and i8 %i.an, 15
  %i.ap = getelementptr i8, ptr %1, i64 16
  store i8 %i.ao, ptr %i.ap, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %2, i64 1120      ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 32
  %i.as = getelementptr i8, ptr %2, i64 1121
  %i.at = load i8, ptr %i.as, align 1
  %i.au = or i8 %i.at, %i.ar
  %i.av = getelementptr i8, ptr %2, i64 1122
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = or i8 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %2, i64 1123
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = or i8 %i.ax, %i.az
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %ip_ipgre_mc_map.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.aq, align 32
  br label %ip_ipgre_mc_map.exit

ip_ipgre_mc_map.exit:                             ; preds = %bb.d, %bb.e
  %storemerge.i = phi i32 [ %i.bb, %bb.e ], [ %0, %bb.d ]
  store i32 %storemerge.i, ptr %1, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr i8, ptr %2, i64 1120
  %i.bd = getelementptr i8, ptr %2, i64 808
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = zext i8 %i.be to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 32 %i.bc, i64 %i.bf, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %ip_ipgre_mc_map.exit, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %ip_ipgre_mc_map.exit ], [ 0, %bb.b ], [ 0, %bb.c ], [ -22, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @arp_send(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 176
  %i.b = load i32, ptr %i.a, align 16
  %i.c = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %arp_send_dst.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @arp_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7) #15 ; 4 uses
  %.not12.i = icmp eq ptr %i.d, null
  br i1 %.not12.i, label %arp_send_dst.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 88
  store i64 0, ptr %i.e, align 8
  tail call void @__rcu_read_lock() #13
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 264
  %i.i = load volatile ptr, ptr %i.h, align 8     ; 0 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @nf_hooks_needed, i64 256), i1 false) #14
          to label %arp_xmit.exit.i [label %arch_static_branch.exit.thread.i.i.i.i], !srcloc !13

arch_static_branch.exit.thread.i.i.i.i:           ; preds = %bb.c
  tail call void @__rcu_read_lock() #13
  tail call void @__rcu_read_unlock() #13
  br label %arp_xmit.exit.i

arp_xmit.exit.i:                                  ; preds = %arch_static_branch.exit.thread.i.i.i.i, %bb.c
  %i.j = tail call i32 @__dev_queue_xmit(ptr noundef nonnull %i.d, ptr noundef null) #13 ; 0 uses
  tail call void @__rcu_read_unlock() #13
  br label %arp_send_dst.exit

arp_send_dst.exit:                                ; preds = %bb.a, %bb.b, %arp_xmit.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @arp_send_dst(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 176
  %i.b = load i32, ptr %i.a, align 16
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @arp_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #15 ; 5 uses
end_hunk_0
