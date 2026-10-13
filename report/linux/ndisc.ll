Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ndisc?download=true
inline.NumInlined: 289
inline.NumDeleted: 122
begin_hunk_0_@ndisc_constructor:bb.a

bb.d:                                             ; preds = %bb.c, %.sink.split.i.i.i.i
  tail call void @__rcu_read_unlock() #12
  %i.l = getelementptr i8, ptr %i.g, i64 664
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 60       ; 3 uses
  %i.q = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 -1, ptr elementtype(i32) %i.p) #13, !srcloc !17
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %bb.e, label %__neigh_parms_put.exit, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef 4) #12
  br label %__neigh_parms_put.exit

__neigh_parms_put.exit:                           ; preds = %bb.d, %bb.e
  %i.s = getelementptr i8, ptr %i.m, i64 60       ; 3 uses
  %i.t = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 1, ptr elementtype(i32) %i.s) #13, !srcloc !17 ; 3 uses
  %.not.i.i.i.i48 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i48, label %.sink.split.i.i.i.i50, label %bb.f, !prof !18

bb.f:                                             ; preds = %__neigh_parms_put.exit
  %i.u = add i32 %i.t, 1
  %i.v = or i32 %i.u, %i.t
  %.not10.i.i.i.i49 = icmp sgt i32 %i.v, -1
  br i1 %.not10.i.i.i.i49, label %neigh_parms_clone.exit, label %.sink.split.i.i.i.i50, !prof !19

.sink.split.i.i.i.i50:                            ; preds = %bb.f, %__neigh_parms_put.exit
  %.sink.i.i.i.i51 = phi i32 [ 2, %__neigh_parms_put.exit ], [ 1, %bb.f ]
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef %.sink.i.i.i.i51) #12
  br label %neigh_parms_clone.exit

neigh_parms_clone.exit:                           ; preds = %bb.f, %.sink.split.i.i.i.i50
  store ptr %i.m, ptr %i.n, align 8
  %i.w = select i1 %i.e, i8 5, i8 1
  %i.x = getelementptr i8, ptr %0, i64 157        ; 2 uses
  store i8 %i.w, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16
  %.not42 = icmp eq ptr %i.z, null
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %neigh_parms_clone.exit
  %i.aa = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %0, i64 328
  store ptr @ndisc_direct_ops, ptr %i.ab, align 8
  br label %bb.w

bb.h:                                             ; preds = %neigh_parms_clone.exit
  br i1 %i.e, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %0, i64 176       ; 5 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 544
  %i.af = load i16, ptr %i.ae, align 32
  switch i16 %i.af, label %bb.q [
    i16 1, label %bb.j
    i16 6, label %bb.j
    i16 774, label %bb.j
    i16 7, label %bb.k
    i16 32, label %bb.l
    i16 778, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  store i8 51, ptr %i.ad, align 8
  %i.ag = getelementptr i8, ptr %0, i64 177
  store i8 51, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %0, i64 178
  %i.ai = getelementptr i8, ptr %0, i64 404
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ah, align 2
  br label %ndisc_mc_map.exit

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %i.ad, align 8
  br label %ndisc_mc_map.exit

bb.l:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.c, i64 1125
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 15
  store i8 0, ptr %i.ad, align 8
  %i.an = getelementptr i8, ptr %0, i64 177
  %i.ao = or disjoint i8 %i.am, 16
  %i.ap = getelementptr i8, ptr %0, i64 181
  store i32 -1, ptr %i.an, align 1
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %0, i64 182
  store i8 96, ptr %i.aq, align 2
  %i.ar = getelementptr i8, ptr %0, i64 183
  store i8 27, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %i.c, i64 1128
  %i.at = load i8, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %0, i64 184
  store i8 %i.at, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.c, i64 1129
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %0, i64 185
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %0, i64 186
  %i.az = getelementptr i8, ptr %0, i64 398
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(10) %i.ay, ptr noundef readonly align 2 dereferenceable(10) %i.az, i64 10, i1 false)
  br label %ndisc_mc_map.exit

bb.m:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.c, i64 1120    ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 32
  %i.bc = getelementptr i8, ptr %i.c, i64 1121
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = or i8 %i.bd, %i.bb
  %i.bf = getelementptr i8, ptr %i.c, i64 1122
  %i.bg = load i8, ptr %i.bf, align 2
  %i.bh = or i8 %i.be, %i.bg
  %i.bi = getelementptr i8, ptr %i.c, i64 1123
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = or i8 %i.bh, %i.bj
  %.not.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %i.a, align 8
  %i.bm = getelementptr i8, ptr %0, i64 396
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = or i32 %i.bn, %i.bl
  %i.bp = getelementptr i8, ptr %0, i64 400
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = xor i32 %i.bq, -65536
  %i.bs = or i32 %i.bo, %i.br
  %.not11.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i.i, label %bb.o, label %ndisc_mc_map.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr i8, ptr %0, i64 404
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %storemerge.in.i.i = phi ptr [ %i.bt, %bb.o ], [ %i.ba, %bb.m ]
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 1
  store i32 %storemerge.i.i, ptr %i.ad, align 8
  br label %ndisc_mc_map.exit

bb.q:                                             ; preds = %bb.i
  %i.bu = getelementptr i8, ptr %i.c, i64 1120
  %i.bv = getelementptr i8, ptr %i.c, i64 808
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = zext i8 %i.bw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ad, ptr readonly align 32 %i.bu, i64 %i.bx, i1 false)
  br label %ndisc_mc_map.exit

bb.r:                                             ; preds = %bb.h
  %i.by = getelementptr i8, ptr %i.c, i64 176     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 16           ; 2 uses
  %i.ca = and i32 %i.bz, 136
  %.not43 = icmp eq i32 %i.ca, 0
  br i1 %.not43, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.cb, align 4
  %i.cc = getelementptr i8, ptr %0, i64 176
  %i.cd = getelementptr i8, ptr %i.c, i64 1088
  %i.ce = load ptr, ptr %i.cd, align 64
  %i.cf = getelementptr i8, ptr %i.c, i64 808
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = zext i8 %i.cg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cc, ptr align 1 %i.ce, i64 %i.ch, i1 false)
  %i.ci = load i32, ptr %i.by, align 16
  %i.cj = and i32 %i.ci, 8
  %.not45 = icmp eq i32 %i.cj, 0
  br i1 %.not45, label %ndisc_mc_map.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 2, ptr %i.x, align 1
  br label %ndisc_mc_map.exit

bb.u:                                             ; preds = %bb.r
  %i.ck = and i32 %i.bz, 16
  %.not44 = icmp eq i32 %i.ck, 0
  br i1 %.not44, label %ndisc_mc_map.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr i8, ptr %0, i64 156
  store i8 64, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %0, i64 176
  %i.cn = getelementptr i8, ptr %i.c, i64 1120
  %i.co = getelementptr i8, ptr %i.c, i64 808
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = zext i8 %i.cp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cm, ptr align 32 %i.cn, i64 %i.cq, i1 false)
  br label %ndisc_mc_map.exit

ndisc_mc_map.exit:                                ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.j, %bb.t, %bb.s, %bb.v, %bb.u
  %i.cr = load ptr, ptr %i.y, align 16
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not46 = icmp eq ptr %i.ct, null
  %spec.select = select i1 %.not46, ptr @ndisc_generic_ops, ptr @ndisc_hh_ops ; 3 uses
  %i.cu = getelementptr i8, ptr %0, i64 328
  store ptr %spec.select, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %0, i64 156
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = and i8 %i.cw, -34
  %.not47 = icmp eq i8 %i.cx, 0
  br i1 %.not47, label %4, label %1

1:                                                ; preds = %ndisc_mc_map.exit
  %2 = getelementptr i8, ptr %spec.select, i64 32
  %3 = load ptr, ptr %2, align 8
  br label %bb.w

4:                                                ; preds = %ndisc_mc_map.exit
  %5 = getelementptr i8, ptr %spec.select, i64 24
  %6 = load ptr, ptr %5, align 8
  br label %bb.w

bb.w:                                             ; preds = %1, %4, %bb.g
  %.sink = phi ptr [ %3, %1 ], [ %6, %4 ], [ @neigh_direct_output, %bb.g ]
  %i.cy = getelementptr i8, ptr %0, i64 320
  store ptr %.sink, ptr %i.cy, align 8
  %i.cz = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 -1, ptr elementtype(i32) %i.h) #13, !srcloc !17 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = icmp slt i32 %i.cz, 1
  br i1 %i.db, label %bb.y, label %in6_dev_put.exit, !prof !18

bb.y:                                             ; preds = %bb.x
  tail call void @refcount_warn_saturate(ptr noundef %i.h, i32 noundef 3) #12
  br label %in6_dev_put.exit

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !20
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %i.g) #12
  br label %in6_dev_put.exit

in6_dev_put.exit:                                 ; preds = %bb.z, %bb.y, %bb.x, %in6_dev_get.exit
  %.0 = phi i32 [ -22, %in6_dev_get.exit ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pndisc_constructor(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.in6_addr, align 4           ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %addrconf_addr_solict_mult.exit

addrconf_addr_solict_mult.exit:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 4, !annotation !21
  %i.d = getelementptr i8, ptr %0, i64 60
  %.val = load i32, ptr %i.d, align 4
  store i64 767, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = or i32 %.val, 255
  store i32 16777216, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.f, ptr %i.g, align 4
  %i.h = call i32 @ipv6_dev_mc_inc(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #12
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %addrconf_addr_solict_mult.exit
  %.0 = phi i32 [ %i.h, %addrconf_addr_solict_mult.exit ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pndisc_destructor(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.in6_addr, align 4           ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %addrconf_addr_solict_mult.exit

addrconf_addr_solict_mult.exit:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 4, !annotation !21
  %i.d = getelementptr i8, ptr %0, i64 60
  %.val = load i32, ptr %i.d, align 4
  store i64 767, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = or i32 %.val, 255
  store i32 16777216, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.f, ptr %i.g, align 4
  %i.h = call i32 @ipv6_dev_mc_dec(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %addrconf_addr_solict_mult.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pndisc_redo(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @ndisc_recv_ns(ptr noundef %0) #14, !srcloc !24
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 2) i32 @ndisc_is_multicast(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i32, ptr %0, align 4
  %i.a = and i32 %.val, 255
  %i.b = icmp eq i32 %i.a, 255
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @ndisc_allow_add(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load volatile ptr, ptr %i.a, align 64    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 672
  %i.d = load i32, ptr %i.c, align 8
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ndisc_allow_add.__msg) #12
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @ndisc_allow_add.__msg, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__ndisc_fill_addr_option(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %3, 255
  %i.b = add nuw nsw i32 %i.a, 9
  %i.c = add i32 %i.b, %4                         ; 2 uses
  %i.d = and i32 %i.c, -8                         ; 2 uses
  %i.e = tail call ptr @skb_put(ptr noundef %0, i32 noundef %i.d) #12 ; 4 uses
  %i.f = trunc i32 %1 to i8
  store i8 %i.f, ptr %i.e, align 1
  %i.g = lshr i32 %i.c, 3
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr i8, ptr %i.e, i64 1
  store i8 %i.h, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.e, i64 2
  %i.k = sext i32 %4 to i64                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.k, i1 false)
  %i.l = getelementptr i8, ptr %i.e, i64 %i.k     ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 2
  %i.n = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %2, i64 %i.n, i1 false)
  %i.o = add i32 %3, %4
  %reass.sub = sub i32 %i.d, %i.o
  %i.p = add i32 %reass.sub, -2                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = add i32 %3, 2
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  %i.u = zext nneg i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.u, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @ndisc_parse_options(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i32 %2, -1
  %or.cond.not55 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond.not55, %i.c
  br i1 %or.cond3, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 760
  %i.e = getelementptr i8, ptr %3, i64 128
  %i.f = getelementptr i8, ptr %3, i64 120        ; 2 uses
  br label %bb.c

end_hunk_0
