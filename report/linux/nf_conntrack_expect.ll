Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_expect?download=true
inline.NumInlined: 127
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nf_ct_expectation_gc:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_unlink_expect_report(ptr noundef %0, i32 %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %nfct_help.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i8, ptr %.val, align 1         ; 2 uses
  %.not1.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not1.i.i, label %nfct_help.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i8 %.val.i.i to i64
  %i.e = getelementptr i8, ptr %.val, i64 %i.d
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.f, align 8           ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  store volatile ptr %i.h, ptr %i.j, align 8
  %.not.i.i14 = icmp eq ptr %i.h, null
  br i1 %.not.i.i14, label %hlist_del_rcu.exit, label %bb.d

bb.d:                                             ; preds = %nfct_help.exit
  %i.k = getelementptr i8, ptr %i.h, i64 8
  store volatile ptr %i.j, ptr %i.k, align 8
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %nfct_help.exit, %bb.d
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.i, align 8
  %i.l = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.m = getelementptr i8, ptr %.val13, i64 2984
  %i.n = load volatile ptr, ptr %i.m, align 8
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @__rcu_read_unlock() #9
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = load ptr, ptr %0, align 8                ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  store volatile ptr %i.u, ptr %i.w, align 8
  %.not.i.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i.i15, label %hlist_del_rcu.exit16, label %bb.e

bb.e:                                             ; preds = %hlist_del_rcu.exit
  %i.x = getelementptr i8, ptr %i.u, i64 8
  store volatile ptr %i.w, ptr %i.x, align 8
  br label %hlist_del_rcu.exit16

hlist_del_rcu.exit16:                             ; preds = %hlist_del_rcu.exit, %bb.e
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.v, align 8
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %hlist_del_rcu.exit16
  %i.y = getelementptr i8, ptr %.0.i.i, i64 16
  %i.z = getelementptr i8, ptr %0, i64 148
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab   ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = add i8 %i.ad, -1
  store i8 %i.ae, ptr %i.ac, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %hlist_del_rcu.exit16
  %i.af = getelementptr i8, ptr %0, i64 140       ; 3 uses
  %i.ag = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.af, i32 -1, ptr elementtype(i32) %i.af) #11, !srcloc !12 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i32 %i.ag, 1
  br i1 %i.ai, label %bb.i, label %nf_ct_expect_put.exit, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @refcount_warn_saturate(ptr noundef %i.af, i32 noundef 3) #9
  br label %nf_ct_expect_put.exit

bb.j:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !14
  %i.aj = getelementptr i8, ptr %0, i64 216
  tail call void @call_rcu(ptr noundef %i.aj, ptr noundef nonnull @nf_ct_expect_free_rcu) #9
  br label %nf_ct_expect_put.exit

nf_ct_expect_put.exit:                            ; preds = %bb.h, %bb.i, %bb.j
  %i.ak = getelementptr i8, ptr %.val13, i64 2888
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 40     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am, ptr elementtype(i32) %i.am) #11, !srcloc !15
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_expect_put(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 140        ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #11, !srcloc !12 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #9
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !14
  %i.e = getelementptr i8, ptr %0, i64 216
  tail call void @call_rcu(ptr noundef %i.e, ptr noundef nonnull @nf_ct_expect_free_rcu) #9
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__nf_ct_expect_find(ptr nofree noundef captures(address) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.anon.29, align 8            ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.c = getelementptr i8, ptr %0, i64 2984
  %i.d = load volatile ptr, ptr %i.c, align 8
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @__rcu_read_unlock() #9
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !16
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @nf_ct_expect_dst_hash.___once_key, i1 false) #11
          to label %nf_ct_expect_dst_hash.exit [label %bb.c], !srcloc !17

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.j = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull %i.a) #9
  br i1 %i.j, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @get_random_bytes(ptr noundef nonnull @nf_ct_expect_hashrnd, i64 noundef 16) #9
  call void @__do_once_done(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull @nf_ct_expect_dst_hash.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %nf_ct_expect_dst_hash.exit

nf_ct_expect_dst_hash.exit:                       ; preds = %bb.b, %bb.e
  %i.k = getelementptr i8, ptr %2, i64 20         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 648
  %.val.i = load i32, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.val.i, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %2, i64 36         ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %2, i64 18         ; 2 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = trunc i16 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 %i.s, ptr %i.t, align 2
  %i.u = getelementptr i8, ptr %2, i64 38         ; 2 uses
  %i.v = load i8, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 %i.v, ptr %i.w, align 1
  %i.x = call i64 @__siphash_unaligned(ptr noundef nonnull %3, i64 noundef 24, ptr noundef nonnull @nf_ct_expect_hashrnd) #9
  %4 = load i32, ptr @nf_ct_expect_hsize, align 4
  %5 = and i64 %i.x, 4294967295
  %6 = zext i32 %4 to i64
  %7 = mul nuw i64 %5, %6
  %8 = lshr i64 %7, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.y = load ptr, ptr @nf_ct_expect_hash, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %8
  %i.aa = load volatile ptr, ptr %i.z, align 8    ; 2 uses
  %.not32 = icmp eq ptr %i.aa, null
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16    ; 2 uses
  %.not334144 = icmp eq ptr %i.ab, null
  %.not3341 = or i1 %.not32, %.not334144
  br i1 %.not3341, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %nf_ct_expect_dst_hash.exit
  %i.ac = getelementptr i8, ptr %2, i64 4
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = getelementptr i8, ptr %2, i64 12
  %i.af = getelementptr i8, ptr %2, i64 16
  %i.ag = getelementptr i8, ptr %2, i64 28
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %nf_ct_exp_is_expired.exit.thread
  %.02942 = phi ptr [ %i.ab, %.lr.ph ], [ %i.cq, %nf_ct_exp_is_expired.exit.thread ] ; 20 uses
  %i.ah = getelementptr i8, ptr %.02942, i64 144
  %i.ai = load volatile i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 8
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %nf_ct_exp_is_expired.exit, label %nf_ct_exp_is_expired.exit.thread

nf_ct_exp_is_expired.exit:                        ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %.02942, i64 184
  %i.al = load volatile i32, ptr %i.ak, align 8
  %i.am = load volatile i64, ptr @jiffies, align 64
  %i.an = trunc i64 %i.am to i32
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %nf_ct_exp_is_expired.exit.thread, label %bb.g

bb.g:                                             ; preds = %nf_ct_exp_is_expired.exit
  %i.aq = getelementptr i8, ptr %.02942, i64 80
  %i.ar = getelementptr i8, ptr %.02942, i64 120
  %i.as = load i32, ptr %2, align 4
  %i.at = load i32, ptr %i.aq, align 8
  %i.au = xor i32 %i.at, %i.as
  %i.av = load i32, ptr %i.ar, align 8
  %i.aw = and i32 %i.au, %i.av
  %.not19.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not19.i.i.i, label %bb.h, label %nf_ct_exp_is_expired.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.ac, align 4
  %i.ay = getelementptr i8, ptr %.02942, i64 84
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = xor i32 %i.az, %i.ax
  %i.bb = getelementptr i8, ptr %.02942, i64 124
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.ba, %i.bc
  %.not19.1.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not19.1.i.i.i, label %bb.i, label %nf_ct_exp_is_expired.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.ad, align 4
  %i.bf = getelementptr i8, ptr %.02942, i64 88
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = xor i32 %i.bg, %i.be
  %i.bi = getelementptr i8, ptr %.02942, i64 128
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bh, %i.bj
  %.not19.2.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not19.2.i.i.i, label %bb.j, label %nf_ct_exp_is_expired.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %i.ae, align 4
  %i.bm = getelementptr i8, ptr %.02942, i64 92
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = xor i32 %i.bn, %i.bl
  %i.bp = getelementptr i8, ptr %.02942, i64 132
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bo, %i.bq
  %.not19.3.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not19.3.i.i.i, label %bb.k, label %nf_ct_exp_is_expired.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = load i16, ptr %i.af, align 4
  %i.bt = getelementptr i8, ptr %.02942, i64 96
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = xor i16 %i.bu, %i.bs
  %i.bw = getelementptr i8, ptr %.02942, i64 136
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = and i16 %i.bv, %i.bx
  %.not.i.i.i = icmp eq i16 %i.by, 0
  br i1 %.not.i.i.i, label %bb.l, label %nf_ct_exp_is_expired.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bz = load i16, ptr %i.q, align 2
  %i.ca = getelementptr i8, ptr %.02942, i64 98
  %i.cb = load i16, ptr %i.ca, align 2
  %.not17.i.i.i = icmp eq i16 %i.bz, %i.cb
  br i1 %.not17.i.i.i, label %nf_ct_tuple_src_mask_cmp.exit.i.i, label %nf_ct_exp_is_expired.exit.thread

nf_ct_tuple_src_mask_cmp.exit.i.i:                ; preds = %bb.l
  %i.cc = load i8, ptr %i.u, align 2
  %i.cd = getelementptr i8, ptr %.02942, i64 118
  %i.ce = load i8, ptr %i.cd, align 2
  %.not18.i.i.i = icmp eq i8 %i.cc, %i.ce
  br i1 %.not18.i.i.i, label %bb.m, label %nf_ct_exp_is_expired.exit.thread

bb.m:                                             ; preds = %nf_ct_tuple_src_mask_cmp.exit.i.i
  %i.cf = getelementptr i8, ptr %.02942, i64 100
  %.val.i.i.i = load i64, ptr %i.k, align 8
  %.val6.i.i.i = load i64, ptr %i.ag, align 8
  %.val7.i.i.i = load i64, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %.02942, i64 108
  %.val8.i.i.i = load i64, ptr %i.cg, align 8
  %i.ch = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.ci = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.ch, %i.ci
  br i1 %.not11.i.i.i, label %nf_ct_exp_is_expired.exit.thread, label %nf_ct_tuple_mask_cmp.exit.i

nf_ct_tuple_mask_cmp.exit.i:                      ; preds = %bb.m
  %i.cj = load i16, ptr %i.n, align 4
  %i.ck = getelementptr i8, ptr %.02942, i64 116
  %i.cl = load i16, ptr %i.ck, align 4
  %i.cm = icmp eq i16 %i.cj, %i.cl
  br i1 %i.cm, label %nf_ct_exp_equal.exit, label %nf_ct_exp_is_expired.exit.thread

nf_ct_exp_equal.exit:                             ; preds = %nf_ct_tuple_mask_cmp.exit.i
  %i.cn = getelementptr i8, ptr %.02942, i64 32
  %.val.i36 = load ptr, ptr %i.cn, align 8
  %.not.i37 = icmp eq ptr %0, %.val.i36
  br i1 %.not.i37, label %.loopexit, label %nf_ct_exp_is_expired.exit.thread

nf_ct_exp_is_expired.exit.thread:                 ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.g, %nf_ct_tuple_src_mask_cmp.exit.i.i, %bb.h, %nf_ct_tuple_mask_cmp.exit.i, %bb.f, %nf_ct_exp_equal.exit, %nf_ct_exp_is_expired.exit
  %i.co = getelementptr i8, ptr %.02942, i64 16
  %i.cp = load volatile ptr, ptr %i.co, align 8   ; 2 uses
  %.not34 = icmp eq ptr %i.cp, null
  %i.cq = getelementptr i8, ptr %i.cp, i64 -16    ; 2 uses
  %.not3346 = icmp eq ptr %i.cq, null
  %.not33 = or i1 %.not34, %.not3346
  br i1 %.not33, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %nf_ct_exp_equal.exit, %nf_ct_exp_is_expired.exit.thread, %nf_ct_expect_dst_hash.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %nf_ct_expect_dst_hash.exit ], [ %.02942, %nf_ct_exp_equal.exit ], [ null, %nf_ct_exp_is_expired.exit.thread ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_ct_expect_find_get(ptr nofree noundef captures(address) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #9
  %i.a = tail call ptr @__nf_ct_expect_find(ptr noundef %0, ptr poison, ptr noundef %2) #10 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 140      ; 4 uses
  %i.c = load volatile i32, ptr %i.b, align 4     ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = add i32 %.0.i.i.i, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 %i.d, ptr elementtype(i32) %i.b, i32 %.0.i.i.i) #11, !srcloc !18 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !19

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.i = extractvalue { i8, i32 } %i.e, 1         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.b
  %.2.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.k = add i32 %.2.i.i.i, 1
  %i.l = or i32 %i.k, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.b, i32 noundef 0) #9
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.c
  %.not7 = icmp eq i32 %.2.i.i.i, 0
  %spec.select = select i1 %.not7, ptr null, ptr %i.a
  br label %bb.d

bb.d:                                             ; preds = %refcount_inc_not_zero.exit, %bb.a
  %.0 = phi ptr [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %bb.a ]
  tail call void @__rcu_read_unlock() #9
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_ct_find_expectation(ptr nofree noundef captures(address) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.anon.29, align 8            ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.c = getelementptr i8, ptr %0, i64 2984
  %i.d = load volatile ptr, ptr %i.c, align 8
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @__rcu_read_unlock() #9
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %nf_ct_expect_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !16
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @nf_ct_expect_dst_hash.___once_key, i1 false) #11
          to label %nf_ct_expect_dst_hash.exit [label %bb.c], !srcloc !17

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.j = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull %i.a) #9
  br i1 %i.j, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @get_random_bytes(ptr noundef nonnull @nf_ct_expect_hashrnd, i64 noundef 16) #9
  call void @__do_once_done(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull @nf_ct_expect_dst_hash.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %nf_ct_expect_dst_hash.exit

nf_ct_expect_dst_hash.exit:                       ; preds = %bb.b, %bb.e
  %i.k = getelementptr i8, ptr %2, i64 20         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 648
  %.val.i = load i32, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.val.i, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %2, i64 36         ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %2, i64 18         ; 2 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = trunc i16 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 %i.s, ptr %i.t, align 2
  %i.u = getelementptr i8, ptr %2, i64 38         ; 2 uses
  %i.v = load i8, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 %i.v, ptr %i.w, align 1
  %i.x = call i64 @__siphash_unaligned(ptr noundef nonnull %4, i64 noundef 24, ptr noundef nonnull @nf_ct_expect_hashrnd) #9
  %5 = load i32, ptr @nf_ct_expect_hsize, align 4
  %6 = and i64 %i.x, 4294967295
  %7 = zext i32 %5 to i64
  %8 = mul nuw i64 %6, %7
  %9 = lshr i64 %8, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.y = load ptr, ptr @nf_ct_expect_hash, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %9
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not43 = icmp eq ptr %i.aa, null
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16    ; 2 uses
  %.not447476 = icmp eq ptr %i.ab, null
  %.not4474 = or i1 %.not43, %.not447476
  br i1 %.not4474, label %nf_ct_expect_put.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nf_ct_expect_dst_hash.exit
  %i.ac = getelementptr i8, ptr %2, i64 4
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = getelementptr i8, ptr %2, i64 12
  %i.af = getelementptr i8, ptr %2, i64 16
  %i.ag = getelementptr i8, ptr %2, i64 28
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %nf_ct_exp_equal.exit.thread
  %.03975 = phi ptr [ %i.ab, %.lr.ph ], [ %i.cr, %nf_ct_exp_equal.exit.thread ] ; 27 uses
  %i.ah = getelementptr i8, ptr %.03975, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %.03975, i64 144
  %i.ak = load volatile i32, ptr %i.aj, align 8   ; 2 uses
  %i.al = and i32 %i.ak, 8
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %nf_ct_exp_is_expired.exit, label %nf_ct_exp_is_expired.exit.thread

nf_ct_exp_is_expired.exit:                        ; preds = %bb.f
  %i.am = getelementptr i8, ptr %.03975, i64 184
  %i.an = load volatile i32, ptr %i.am, align 8
  %i.ao = load volatile i64, ptr @jiffies, align 64
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %nf_ct_exp_is_expired.exit.thread, label %bb.g

nf_ct_exp_is_expired.exit.thread:                 ; preds = %bb.f, %nf_ct_exp_is_expired.exit
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.03975, i32 poison, i32 poison) #10
  br label %nf_ct_exp_equal.exit.thread

bb.g:                                             ; preds = %nf_ct_exp_is_expired.exit
  %i.as = and i32 %i.ak, 2
  %.not45 = icmp eq i32 %i.as, 0
  br i1 %.not45, label %bb.h, label %nf_ct_exp_equal.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr i8, ptr %.03975, i64 80
  %i.au = getelementptr i8, ptr %.03975, i64 120
  %i.av = load i32, ptr %2, align 4
  %i.aw = load i32, ptr %i.at, align 8
  %i.ax = xor i32 %i.aw, %i.av
  %i.ay = load i32, ptr %i.au, align 8
  %i.az = and i32 %i.ax, %i.ay
  %.not19.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not19.i.i.i, label %bb.i, label %nf_ct_exp_equal.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.ac, align 4
  %i.bb = getelementptr i8, ptr %.03975, i64 84
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = xor i32 %i.bc, %i.ba
  %i.be = getelementptr i8, ptr %.03975, i64 124
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bd, %i.bf
  %.not19.1.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not19.1.i.i.i, label %bb.j, label %nf_ct_exp_equal.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bh = load i32, ptr %i.ad, align 4
  %i.bi = getelementptr i8, ptr %.03975, i64 88
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = xor i32 %i.bj, %i.bh
  %i.bl = getelementptr i8, ptr %.03975, i64 128
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bk, %i.bm
  %.not19.2.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not19.2.i.i.i, label %bb.k, label %nf_ct_exp_equal.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = load i32, ptr %i.ae, align 4
  %i.bp = getelementptr i8, ptr %.03975, i64 92
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = xor i32 %i.bq, %i.bo
  %i.bs = getelementptr i8, ptr %.03975, i64 132
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.br, %i.bt
  %.not19.3.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not19.3.i.i.i, label %bb.l, label %nf_ct_exp_equal.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bv = load i16, ptr %i.af, align 4
  %i.bw = getelementptr i8, ptr %.03975, i64 96
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = xor i16 %i.bx, %i.bv
  %i.bz = getelementptr i8, ptr %.03975, i64 136
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = and i16 %i.by, %i.ca
  %.not.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.m, label %nf_ct_exp_equal.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cc = load i16, ptr %i.q, align 2
  %i.cd = getelementptr i8, ptr %.03975, i64 98
  %i.ce = load i16, ptr %i.cd, align 2
  %.not17.i.i.i = icmp eq i16 %i.cc, %i.ce
  br i1 %.not17.i.i.i, label %nf_ct_tuple_src_mask_cmp.exit.i.i, label %nf_ct_exp_equal.exit.thread

nf_ct_tuple_src_mask_cmp.exit.i.i:                ; preds = %bb.m
  %i.cf = load i8, ptr %i.u, align 2
  %i.cg = getelementptr i8, ptr %.03975, i64 118
  %i.ch = load i8, ptr %i.cg, align 2
  %.not18.i.i.i = icmp eq i8 %i.cf, %i.ch
  br i1 %.not18.i.i.i, label %bb.n, label %nf_ct_exp_equal.exit.thread

bb.n:                                             ; preds = %nf_ct_tuple_src_mask_cmp.exit.i.i
  %i.ci = getelementptr i8, ptr %.03975, i64 100
  %.val.i.i.i = load i64, ptr %i.k, align 8
  %.val6.i.i.i = load i64, ptr %i.ag, align 8
  %.val7.i.i.i = load i64, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %.03975, i64 108
  %.val8.i.i.i = load i64, ptr %i.cj, align 8
  %i.ck = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.cl = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.ck, %i.cl
  br i1 %.not11.i.i.i, label %nf_ct_exp_equal.exit.thread, label %nf_ct_tuple_mask_cmp.exit.i

nf_ct_tuple_mask_cmp.exit.i:                      ; preds = %bb.n
  %i.cm = load i16, ptr %i.n, align 4
  %i.cn = getelementptr i8, ptr %.03975, i64 116
  %i.co = load i16, ptr %i.cn, align 4
  %i.cp = icmp eq i16 %i.cm, %i.co
  br i1 %i.cp, label %nf_ct_exp_equal.exit, label %nf_ct_exp_equal.exit.thread

nf_ct_exp_equal.exit:                             ; preds = %nf_ct_tuple_mask_cmp.exit.i
  %i.cq = getelementptr i8, ptr %.03975, i64 32
  %.val.i53 = load ptr, ptr %i.cq, align 8
  %.not.i54 = icmp eq ptr %0, %.val.i53
  br i1 %.not.i54, label %.critedge, label %nf_ct_exp_equal.exit.thread

nf_ct_exp_equal.exit.thread:                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h, %nf_ct_tuple_src_mask_cmp.exit.i.i, %bb.i, %nf_ct_tuple_mask_cmp.exit.i, %bb.g, %nf_ct_exp_equal.exit, %nf_ct_exp_is_expired.exit.thread
  %.not49 = icmp eq ptr %i.ai, null
  %i.cr = getelementptr i8, ptr %i.ai, i64 -16    ; 2 uses
  %.not4488 = icmp eq ptr %i.cr, null
  %.not44 = or i1 %.not49, %.not4488
  br i1 %.not44, label %nf_ct_expect_put.exit, label %bb.f

.critedge:                                        ; preds = %nf_ct_exp_equal.exit
  %i.cs = getelementptr i8, ptr %.03975, i64 144
  %i.ct = getelementptr i8, ptr %.03975, i64 140  ; 7 uses
  %i.cu = load volatile i32, ptr %i.ct, align 4   ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.da, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.cu, %.critedge ] ; 3 uses
  %i.cv = add i32 %.0.i.i.i, 1
  %i.cw = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ct, i32 %i.cv, ptr elementtype(i32) %i.ct, i32 %.0.i.i.i) #11, !srcloc !18 ; 2 uses
  %i.cx = extractvalue { i8, i32 } %i.cw, 0       ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 2
  call void @llvm.assume(i1 %i.cy)
  %i.cz = trunc nuw i8 %i.cx to i1
  br i1 %i.cz, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !19

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.da = extractvalue { i8, i32 } %i.cw, 1       ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %.critedge
  %.2.i.i.i = phi i32 [ 0, %.critedge ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.dc = add i32 %.2.i.i.i, 1
  %i.dd = or i32 %i.dc, %.2.i.i.i
  %.not.i.i.i55 = icmp sgt i32 %i.dd, -1
  br i1 %.not.i.i.i55, label %refcount_inc_not_zero.exit, label %bb.o, !prof !19

bb.o:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.ct, i32 noundef 0) #9
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.o
  %.not71 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not71, label %nf_ct_expect_put.exit, label %nf_ct_is_confirmed.exit

nf_ct_is_confirmed.exit:                          ; preds = %refcount_inc_not_zero.exit
  %i.de = getelementptr i8, ptr %.03975, i64 176
  %i.df = load ptr, ptr %i.de, align 8            ; 5 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 128    ; 2 uses
  %i.dh = load volatile i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, 8
  %.not47 = icmp eq i64 %i.di, 0
  br i1 %.not47, label %.critedge52, label %nf_ct_is_dying.exit

nf_ct_is_dying.exit:                              ; preds = %nf_ct_is_confirmed.exit
  %i.dj = load volatile i64, ptr %i.dg, align 8
  %i.dk = and i64 %i.dj, 512
  %.not48 = icmp eq i64 %i.dk, 0
  br i1 %.not48, label %bb.p, label %.critedge52, !prof !19

bb.p:                                             ; preds = %nf_ct_is_dying.exit
  %i.dl = load volatile i32, ptr %i.df, align 8   ; 2 uses
  %.old1.not.i.i.i58 = icmp eq i32 %i.dl, 0
  br i1 %.old1.not.i.i.i58, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i62, label %.preheader.i.i.i59
end_hunk_0
begin_hunk_1_@nf_ct_expect_init:bb.a
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %nfct_help.exit.thread, label %bb.c

bb.c:                                             ; preds = %nfct_help.exit
  %i.k = load volatile ptr, ptr %i.j, align 8
  br label %nfct_help.exit.thread

nfct_help.exit.thread:                            ; preds = %bb.a, %bb.b, %bb.c, %nfct_help.exit
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %nfct_help.exit ], [ null, %bb.b ], [ null, %bb.a ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !22
  %i.l = getelementptr i8, ptr %0, i64 160
  store volatile ptr %.0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 168
  store volatile ptr null, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !23
  store volatile ptr %.val70, ptr %i.n, align 8
  %i.o = zext i8 %2 to i16
  %i.p = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 98
  store i16 %i.o, ptr %i.q, align 2
  %i.r = getelementptr i8, ptr %0, i64 100
  %i.s = getelementptr i8, ptr %0, i64 118
  store i8 %5, ptr %i.s, align 2
  %i.t = getelementptr i8, ptr %0, i64 40
  %i.u = getelementptr i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.t, ptr noundef align 8 dereferenceable(40) %i.u, i64 40, i1 false)
  %.not68 = icmp eq ptr %3, null
  br i1 %.not68, label %bb.f, label %bb.d

bb.d:                                             ; preds = %nfct_help.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %., i1 false)
  br i1 %i.d, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %i.v, i8 0, i64 12, i1 false)
  %i.w = getelementptr i8, ptr %0, i64 120
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %nfct_help.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.g

.critedge:                                        ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.z, i8 -1, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.e, %bb.f
  %.not69 = icmp eq ptr %6, null
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i16, ptr %6, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink73 = phi i16 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %.sink = phi i16 [ -1, %bb.h ], [ 0, %bb.g ]
  %i.ab = getelementptr i8, ptr %0, i64 96
  store i16 %.sink73, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 136
  store i16 %.sink, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(4) %i.r, ptr noundef align 4 dereferenceable(4) %4, i64 %., i1 false)
  br i1 %i.d, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %i.ad, i8 0, i64 12, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load i16, ptr %7, align 2
  %i.af = getelementptr i8, ptr %0, i64 116
  store i16 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %0, i64 188
  %i.ah = getelementptr i8, ptr %0, i64 208
  store i32 0, ptr %i.ah, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(18) %i.ag, i8 0, i64 18, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nf_ct_expect_free_rcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -216
  %i.b = load ptr, ptr @nf_ct_expect_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.b, ptr noundef %i.a) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -114, 1) i32 @nf_ct_expect_related_report(ptr noundef %0, i32 %1, i32 %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %nfct_help.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i8, ptr %.val, align 1         ; 2 uses
  %.not1.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not1.i.i, label %nfct_help.exit.thread, label %nfct_help.exit

nfct_help.exit:                                   ; preds = %bb.b
  %i.d = zext i8 %.val.i.i to i64
  %i.e = getelementptr i8, ptr %.val, i64 %i.d    ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %nfct_help.exit.thread, label %bb.c

bb.c:                                             ; preds = %nfct_help.exit
  %i.f = tail call fastcc i32 @__nf_ct_expect_check(ptr noundef %0, ptr noundef %i.e, i32 noundef %3) #10, !srcloc !24 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %nfct_help.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = getelementptr i8, ptr %0, i64 148
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k     ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = add i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 1
  tail call fastcc void @nf_ct_expect_insert(ptr noundef %0, ptr noundef %i.e) #10, !srcloc !25
  br label %nfct_help.exit.thread

nfct_help.exit.thread:                            ; preds = %bb.c, %nfct_help.exit, %bb.b, %bb.a, %bb.d
  %.014 = phi i32 [ 0, %bb.d ], [ %i.f, %bb.c ], [ -108, %nfct_help.exit ], [ -108, %bb.b ], [ -108, %bb.a ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  ret i32 %.014
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -114, 1) i32 @__nf_ct_expect_check(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.anon.29, align 8            ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 80         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !16
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @nf_ct_expect_dst_hash.___once_key, i1 false) #11
          to label %nf_ct_expect_dst_hash.exit [label %bb.b], !srcloc !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.d = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull %i.a) #9
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @get_random_bytes(ptr noundef nonnull @nf_ct_expect_hashrnd, i64 noundef 16) #9
  call void @__do_once_done(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull @nf_ct_expect_dst_hash.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %nf_ct_expect_dst_hash.exit

nf_ct_expect_dst_hash.exit:                       ; preds = %bb.a, %bb.d
  %i.e = getelementptr i8, ptr %0, i64 100        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr i8, ptr %.val, i64 648
  %.val.i = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.val.i, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 116        ; 3 uses
  %i.i = load i16, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.i, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %0, i64 98         ; 3 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = trunc i16 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 %i.m, ptr %i.n, align 2
  %i.o = getelementptr i8, ptr %0, i64 118        ; 3 uses
  %i.p = load i8, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 %i.p, ptr %i.q, align 1
  %i.r = call i64 @__siphash_unaligned(ptr noundef nonnull %3, i64 noundef 24, ptr noundef nonnull @nf_ct_expect_hashrnd) #9
  %4 = load i32, ptr @nf_ct_expect_hsize, align 4
  %5 = and i64 %i.r, 4294967295
  %6 = zext i32 %4 to i64
  %7 = mul nuw i64 %5, %6
  %8 = lshr i64 %7, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.s = load ptr, ptr @nf_ct_expect_hash, align 8
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  %i.v = getelementptr i8, ptr %i.u, i64 -16      ; 2 uses
  %.not55100102 = icmp eq ptr %i.v, null
  %.not55100 = or i1 %.not, %.not55100102
  br i1 %.not55100, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %nf_ct_expect_dst_hash.exit
  %i.w = and i32 %2, 1
  %.not.i66 = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %0, i64 176        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 108       ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 132
  %i.af = getelementptr i8, ptr %0, i64 124
  %i.ag = getelementptr i8, ptr %0, i64 84
  %i.ah = getelementptr i8, ptr %0, i64 92
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %expect_clash.exit.thread
  %.050101 = phi ptr [ %i.v, %.lr.ph ], [ %i.ez, %expect_clash.exit.thread ] ; 35 uses
  %i.ai = getelementptr i8, ptr %.050101, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %.050101, i64 144
  %i.al = load volatile i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 8
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %nf_ct_exp_is_expired.exit, label %nf_ct_exp_is_expired.exit.thread

nf_ct_exp_is_expired.exit:                        ; preds = %bb.e
  %i.an = getelementptr i8, ptr %.050101, i64 184
  %i.ao = load volatile i32, ptr %i.an, align 8
  %i.ap = load volatile i64, ptr @jiffies, align 64
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = sub i32 %i.ao, %i.aq
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %nf_ct_exp_is_expired.exit.thread, label %bb.f

nf_ct_exp_is_expired.exit.thread:                 ; preds = %bb.e, %nf_ct_exp_is_expired.exit
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.050101, i32 poison, i32 poison) #10
  br label %expect_clash.exit.thread

bb.f:                                             ; preds = %nf_ct_exp_is_expired.exit
  br i1 %.not.i66, label %master_matches.exit, label %master_matches.exit.thread

master_matches.exit:                              ; preds = %bb.f
  %i.at = getelementptr i8, ptr %.050101, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.x, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %master_matches.exit.thread, label %master_matches.exit.expect_matches.exit.thread_crit_edge

master_matches.exit.expect_matches.exit.thread_crit_edge: ; preds = %master_matches.exit
  %.phi.trans.insert = getelementptr i8, ptr %.050101, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %.pre105 = load i32, ptr %i.c, align 8
  br label %expect_matches.exit.thread

master_matches.exit.thread:                       ; preds = %bb.f, %master_matches.exit
  %i.ax = getelementptr i8, ptr %.050101, i64 80
  %.val.i.i.i = load i64, ptr %i.ax, align 8      ; 2 uses
  %i.ay = getelementptr i8, ptr %.050101, i64 88
  %.val6.i.i.i = load i64, ptr %i.ay, align 8
  %.val7.i.i.i = load i64, ptr %i.c, align 8      ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.y, align 8
  %i.az = icmp ne i64 %.val.i.i.i, %.val7.i.i.i
  %i.ba = icmp ne i64 %.val6.i.i.i, %.val8.i.i.i
  %.not11.i.i.i = or i1 %i.az, %i.ba
  %i.bb = trunc i64 %.val.i.i.i to i32            ; 9 uses
  %i.bc = trunc i64 %.val7.i.i.i to i32           ; 9 uses
  br i1 %.not11.i.i.i, label %expect_matches.exit.thread, label %bb.g

bb.g:                                             ; preds = %master_matches.exit.thread
  %i.bd = getelementptr i8, ptr %.050101, i64 96
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = load i16, ptr %i.z, align 8
  %i.bg = icmp eq i16 %i.be, %i.bf
  br i1 %i.bg, label %__nf_ct_tuple_src_equal.exit.i.i, label %expect_matches.exit.thread

__nf_ct_tuple_src_equal.exit.i.i:                 ; preds = %bb.g
  %i.bh = getelementptr i8, ptr %.050101, i64 98
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = load i16, ptr %i.k, align 2
  %i.bk = icmp eq i16 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %expect_matches.exit.thread

bb.h:                                             ; preds = %__nf_ct_tuple_src_equal.exit.i.i
  %i.bl = getelementptr i8, ptr %.050101, i64 100
  %.val.i4.i.i = load i64, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.050101, i64 108
  %.val6.i5.i.i = load i64, ptr %i.bm, align 8
  %.val7.i6.i.i = load i64, ptr %i.e, align 8
  %.val8.i7.i.i = load i64, ptr %i.aa, align 8
  %i.bn = icmp ne i64 %.val.i4.i.i, %.val7.i6.i.i
  %i.bo = icmp ne i64 %.val6.i5.i.i, %.val8.i7.i.i
  %.not11.i8.i.i = or i1 %i.bn, %i.bo
  br i1 %.not11.i8.i.i, label %expect_matches.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr i8, ptr %.050101, i64 116
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = load i16, ptr %i.h, align 4
  %i.bs = icmp eq i16 %i.bq, %i.br
  br i1 %i.bs, label %nf_ct_tuple_equal.exit.i, label %expect_matches.exit.thread

nf_ct_tuple_equal.exit.i:                         ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %.050101, i64 118
  %i.bu = load i8, ptr %i.bt, align 2
  %i.bv = load i8, ptr %i.o, align 2
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.j, label %expect_matches.exit.thread

bb.j:                                             ; preds = %nf_ct_tuple_equal.exit.i
  %i.bx = getelementptr i8, ptr %.050101, i64 120
  %.val.i.i = load i64, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %.050101, i64 128
  %.val4.i.i = load i64, ptr %i.by, align 8
  %.val5.i.i = load i64, ptr %i.ab, align 8
  %.val6.i.i = load i64, ptr %i.ac, align 8
  %i.bz = icmp ne i64 %.val.i.i, %.val5.i.i
  %i.ca = icmp ne i64 %.val4.i.i, %.val6.i.i
  %.not9.i.i = or i1 %i.bz, %i.ca
  br i1 %.not9.i.i, label %expect_matches.exit.thread, label %nf_ct_tuple_mask_equal.exit.i

nf_ct_tuple_mask_equal.exit.i:                    ; preds = %bb.j
  %i.cb = getelementptr i8, ptr %.050101, i64 136
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = load i16, ptr %i.ad, align 8
  %i.ce = icmp eq i16 %i.cc, %i.cd
  br i1 %i.ce, label %expect_matches.exit, label %expect_matches.exit.thread

expect_matches.exit:                              ; preds = %nf_ct_tuple_mask_equal.exit.i
  %i.cf = getelementptr i8, ptr %.050101, i64 176
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 136
  %.val8.i = load ptr, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 136
  %.val.i68 = load ptr, ptr %i.cj, align 8
  %.not.i69.not = icmp eq ptr %.val8.i, %.val.i68
  br i1 %.not.i69.not, label %bb.k, label %expect_matches.exit.thread

bb.k:                                             ; preds = %expect_matches.exit
  %i.ck = getelementptr i8, ptr %.050101, i64 148
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %0, i64 148
  %i.cn = load i32, ptr %i.cm, align 4
  %.not58 = icmp eq i32 %i.cl, %i.cn
  %.not59 = icmp eq ptr %i.cg, %i.ci
  %or.cond = and i1 %.not58, %.not59
  br i1 %or.cond, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.050101, i32 poison, i32 poison) #10
  br label %.critedge

expect_matches.exit.thread:                       ; preds = %master_matches.exit.expect_matches.exit.thread_crit_edge, %bb.g, %bb.h, %bb.i, %__nf_ct_tuple_src_equal.exit.i.i, %master_matches.exit.thread, %bb.j, %nf_ct_tuple_equal.exit.i, %nf_ct_tuple_mask_equal.exit.i, %expect_matches.exit
  %i.co = phi i32 [ %.pre105, %master_matches.exit.expect_matches.exit.thread_crit_edge ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %i.bc, %__nf_ct_tuple_src_equal.exit.i.i ], [ %i.bc, %master_matches.exit.thread ], [ %i.bc, %bb.j ], [ %i.bc, %nf_ct_tuple_equal.exit.i ], [ %i.bc, %nf_ct_tuple_mask_equal.exit.i ], [ %i.bc, %expect_matches.exit ]
  %i.cp = phi i32 [ %.pre, %master_matches.exit.expect_matches.exit.thread_crit_edge ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ], [ %i.bb, %bb.i ], [ %i.bb, %__nf_ct_tuple_src_equal.exit.i.i ], [ %i.bb, %master_matches.exit.thread ], [ %i.bb, %bb.j ], [ %i.bb, %nf_ct_tuple_equal.exit.i ], [ %i.bb, %nf_ct_tuple_mask_equal.exit.i ], [ %i.bb, %expect_matches.exit ]
  %i.cq = getelementptr i8, ptr %.050101, i64 120
  %i.cr = getelementptr i8, ptr %.050101, i64 136
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = load i16, ptr %i.ad, align 8
  %i.cu = and i16 %i.ct, %i.cs
  %i.cv = load i32, ptr %i.cq, align 8
  %i.cw = load i32, ptr %i.ab, align 8
  %i.cx = and i32 %i.cw, %i.cv
  %i.cy = getelementptr i8, ptr %.050101, i64 128
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = load i32, ptr %i.ac, align 8
  %i.db = and i32 %i.da, %i.cz
  %i.dc = getelementptr i8, ptr %.050101, i64 132
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = load i32, ptr %i.ae, align 4
  %i.df = and i32 %i.de, %i.dd
  %i.dg = xor i32 %i.co, %i.cp
  %i.dh = and i32 %i.cx, %i.dg
  %.not19.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not19.i.i.i, label %bb.m, label %expect_clash.exit.thread

bb.m:                                             ; preds = %expect_matches.exit.thread
  %i.di = load i32, ptr %i.af, align 4
  %i.dj = getelementptr i8, ptr %.050101, i64 124
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, %i.di
  %i.dm = getelementptr i8, ptr %.050101, i64 84
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = load i32, ptr %i.ag, align 4
  %i.dp = xor i32 %i.do, %i.dn
  %i.dq = and i32 %i.dl, %i.dp
  %.not19.1.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not19.1.i.i.i, label %bb.n, label %expect_clash.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dr = getelementptr i8, ptr %.050101, i64 88
  %i.ds = load i32, ptr %i.dr, align 8
end_hunk_1
begin_hunk_2_@__nf_ct_expect_check:bb.a
  %i.fl = getelementptr i8, ptr %1, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not2734.i = icmp eq ptr %i.fm, null
  br i1 %.not2734.i, label %evict_oldest_expect.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.036.i = phi ptr [ %i.fn, %bb.v ], [ %i.fm, %bb.t ] ; 6 uses
  %.02435.i = phi ptr [ %.1.i, %bb.v ], [ null, %bb.t ] ; 2 uses
  %i.fn = load ptr, ptr %.036.i, align 8          ; 2 uses
  %i.fo = getelementptr i8, ptr %.036.i, i64 144
  %i.fp = load volatile i32, ptr %i.fo, align 8
  %i.fq = and i32 %i.fp, 8
  %.not.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i, label %nf_ct_exp_is_expired.exit.i, label %nf_ct_exp_is_expired.exit.thread.i

nf_ct_exp_is_expired.exit.i:                      ; preds = %.lr.ph.i
  %i.fr = getelementptr i8, ptr %.036.i, i64 184
  %i.fs = load volatile i32, ptr %i.fr, align 8
  %i.ft = load volatile i64, ptr @jiffies, align 64
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sub i32 %i.fs, %i.fu
  %i.fw = icmp slt i32 %i.fv, 1
  br i1 %i.fw, label %nf_ct_exp_is_expired.exit.thread.i, label %bb.u

nf_ct_exp_is_expired.exit.thread.i:               ; preds = %nf_ct_exp_is_expired.exit.i, %.lr.ph.i
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.036.i, i32 poison, i32 poison) #10
  br label %bb.v

bb.u:                                             ; preds = %nf_ct_exp_is_expired.exit.i
  %i.fx = getelementptr i8, ptr %.036.i, i64 148
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = load i32, ptr %i.fb, align 4
  %i.ga = icmp eq i32 %i.fy, %i.fz
  %spec.select31.i = select i1 %i.ga, ptr %.036.i, ptr %.02435.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %nf_ct_exp_is_expired.exit.thread.i
  %.1.i = phi ptr [ %.02435.i, %nf_ct_exp_is_expired.exit.thread.i ], [ %spec.select31.i, %bb.u ] ; 4 uses
  %.not27.i = icmp eq ptr %i.fn, null
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !26

.critedge.i:                                      ; preds = %bb.v
  %.not28.i = icmp eq ptr %.1.i, null
  br i1 %.not28.i, label %evict_oldest_expect.exit, label %bb.w

bb.w:                                             ; preds = %.critedge.i
  %i.gb = getelementptr i8, ptr %.1.i, i64 148
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr i8, ptr %i.fg, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = load i32, ptr %i.ff, align 4
  %.not29.i = icmp ugt i32 %i.gh, %i.gg
  br i1 %.not29.i, label %evict_oldest_expect.exit, label %evict_oldest_expect.exit.sink.split

bb.x:                                             ; preds = %.critedge
  %i.gi = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.fd
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = icmp eq i8 %i.gk, -1
  br i1 %i.gl, label %bb.y, label %evict_oldest_expect.exit

bb.y:                                             ; preds = %bb.x
  %i.gm = getelementptr i8, ptr %1, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not2734.i78 = icmp eq ptr %i.gn, null
  br i1 %.not2734.i78, label %evict_oldest_expect.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.y, %bb.aa
  %.036.i80 = phi ptr [ %i.go, %bb.aa ], [ %i.gn, %bb.y ] ; 6 uses
  %.02435.i81 = phi ptr [ %.1.i84, %bb.aa ], [ null, %bb.y ] ; 2 uses
  %i.go = load ptr, ptr %.036.i80, align 8        ; 2 uses
  %i.gp = getelementptr i8, ptr %.036.i80, i64 144
  %i.gq = load volatile i32, ptr %i.gp, align 8
  %i.gr = and i32 %i.gq, 8
  %.not.i.i82 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i82, label %nf_ct_exp_is_expired.exit.i89, label %nf_ct_exp_is_expired.exit.thread.i83

nf_ct_exp_is_expired.exit.i89:                    ; preds = %.lr.ph.i79
  %i.gs = getelementptr i8, ptr %.036.i80, i64 184
  %i.gt = load volatile i32, ptr %i.gs, align 8
  %i.gu = load volatile i64, ptr @jiffies, align 64
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = sub i32 %i.gt, %i.gv
  %i.gx = icmp slt i32 %i.gw, 1
  br i1 %i.gx, label %nf_ct_exp_is_expired.exit.thread.i83, label %bb.z

nf_ct_exp_is_expired.exit.thread.i83:             ; preds = %nf_ct_exp_is_expired.exit.i89, %.lr.ph.i79
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.036.i80, i32 poison, i32 poison) #10
  br label %bb.aa

bb.z:                                             ; preds = %nf_ct_exp_is_expired.exit.i89
  %i.gy = getelementptr i8, ptr %.036.i80, i64 148
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = load i32, ptr %i.fb, align 4
  %i.hb = icmp eq i32 %i.gz, %i.ha
  %spec.select31.i90 = select i1 %i.hb, ptr %.036.i80, ptr %.02435.i81
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %nf_ct_exp_is_expired.exit.thread.i83
  %.1.i84 = phi ptr [ %.02435.i81, %nf_ct_exp_is_expired.exit.thread.i83 ], [ %spec.select31.i90, %bb.z ] ; 4 uses
  %.not27.i85 = icmp eq ptr %i.go, null
  br i1 %.not27.i85, label %.critedge.i86, label %.lr.ph.i79, !llvm.loop !26

.critedge.i86:                                    ; preds = %bb.aa
  %.not28.i87 = icmp eq ptr %.1.i84, null
  br i1 %.not28.i87, label %evict_oldest_expect.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i86
  %i.hc = getelementptr i8, ptr %.1.i84, i64 148
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr i8, ptr %i.gi, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1
  %.not29.i88.not = icmp eq i8 %i.hg, -1
  br i1 %.not29.i88.not, label %evict_oldest_expect.exit.sink.split, label %evict_oldest_expect.exit

evict_oldest_expect.exit.sink.split:              ; preds = %bb.ab, %bb.w
  %.1.i84.lcssa.sink = phi ptr [ %.1.i, %bb.w ], [ %.1.i84, %bb.ab ]
  call void @nf_ct_unlink_expect_report(ptr noundef nonnull %.1.i84.lcssa.sink, i32 poison, i32 poison) #10
  br label %evict_oldest_expect.exit

evict_oldest_expect.exit:                         ; preds = %evict_oldest_expect.exit.sink.split, %bb.x, %bb.y, %.critedge.i86, %bb.ab, %bb.w, %.critedge.i, %bb.t, %bb.s
  %i.hh = load i32, ptr @nf_conntrack_net_id, align 4
  call void @__rcu_read_lock() #9
  %i.hi = getelementptr i8, ptr %.val, i64 2984
  %i.hj = load volatile ptr, ptr %i.hi, align 8
  %i.hk = zext i32 %i.hh to i64
  %i.hl = getelementptr [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8
  call void @__rcu_read_unlock() #9
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = load i32, ptr @nf_ct_expect_max, align 4
  %.not62 = icmp ult i32 %i.ho, %i.hp
  br i1 %.not62, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %evict_oldest_expect.exit
  %i.hq = call i32 @net_ratelimit() #9
  %.not63 = icmp eq i32 %i.hq, 0
  br i1 %.not63, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %expect_clash.exit, %evict_oldest_expect.exit, %bb.ad, %bb.ac, %bb.k
  %.0 = phi i32 [ -114, %bb.k ], [ -24, %bb.ad ], [ -24, %bb.ac ], [ 0, %evict_oldest_expect.exit ], [ -16, %expect_clash.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_ct_expect_insert(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.anon.29, align 8            ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !16
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @nf_ct_expect_dst_hash.___once_key, i1 false) #11
          to label %nf_ct_expect_dst_hash.exit [label %bb.b], !srcloc !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !16
  %i.c = call zeroext i1 @__do_once_start(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull %i.a) #9
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @get_random_bytes(ptr noundef nonnull @nf_ct_expect_hashrnd, i64 noundef 16) #9
  call void @__do_once_done(ptr noundef nonnull @nf_ct_expect_dst_hash.___done, ptr noundef nonnull @nf_ct_expect_dst_hash.___once_key, ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %nf_ct_expect_dst_hash.exit

nf_ct_expect_dst_hash.exit:                       ; preds = %bb.a, %bb.d
  %i.d = getelementptr i8, ptr %0, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef readonly align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr i8, ptr %.val, i64 648
  %.val.i = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.val.i, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 116
  %i.h = load i16, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.h, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 98
  %i.k = load i16, ptr %i.j, align 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 %i.l, ptr %i.m, align 2
  %i.n = getelementptr i8, ptr %0, i64 118
  %i.o = load i8, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 %i.o, ptr %i.p, align 1
  %i.q = call i64 @__siphash_unaligned(ptr noundef nonnull %2, i64 noundef 24, ptr noundef nonnull @nf_ct_expect_hashrnd) #9
  %3 = load i32, ptr @nf_ct_expect_hsize, align 4
  %4 = and i64 %i.q, 4294967295
  %5 = zext i32 %3 to i64
  %6 = mul nuw i64 %4, %5
  %7 = lshr i64 %6, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.r = getelementptr i8, ptr %0, i64 140        ; 3 uses
  %i.s = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r, i32 1, ptr elementtype(i32) %i.r) #11, !srcloc !12 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.e, !prof !13

bb.e:                                             ; preds = %nf_ct_expect_dst_hash.exit
  %i.t = add i32 %i.s, 1
  %i.u = or i32 %i.t, %i.s
  %.not10.i.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not10.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !19

.sink.split.i.i.i:                                ; preds = %bb.e, %nf_ct_expect_dst_hash.exit
  %.sink.i.i.i = phi i32 [ 2, %nf_ct_expect_dst_hash.exit ], [ 1, %bb.e ]
  call void @refcount_warn_saturate(ptr noundef %i.r, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %bb.e, %.sink.split.i.i.i
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %refcount_inc.exit
  %i.w = getelementptr i8, ptr %0, i64 148
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr [24 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = mul i32 %i.ab, 1000
  %i.ad = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = add i32 %i.ae, %i.ac
  store i32 %i.af, ptr %i.ad, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %refcount_inc.exit
  %i.ag = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  store ptr %i.ah, ptr %0, align 8
  %i.ai = getelementptr i8, ptr %0, i64 8
  store volatile ptr %i.ag, ptr %i.ai, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  store volatile ptr %0, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %hlist_add_head_rcu.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  store volatile ptr %0, ptr %i.aj, align 8
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %bb.g, %bb.h
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.al = load ptr, ptr @nf_ct_expect_hash, align 8
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %7 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  store ptr %i.an, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %0, i64 24
  store volatile ptr %i.am, ptr %i.ao, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  store volatile ptr %i.ak, ptr %i.am, align 8
  %.not.i16 = icmp eq ptr %i.an, null
  br i1 %.not.i16, label %hlist_add_head_rcu.exit17, label %bb.i

bb.i:                                             ; preds = %hlist_add_head_rcu.exit
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store volatile ptr %i.ak, ptr %i.ap, align 8
  br label %hlist_add_head_rcu.exit17

hlist_add_head_rcu.exit17:                        ; preds = %hlist_add_head_rcu.exit, %bb.i
  %i.aq = load i32, ptr @nf_conntrack_net_id, align 4
  call void @__rcu_read_lock() #9
  %i.ar = getelementptr i8, ptr %.val, i64 2984
  %i.as = load volatile ptr, ptr %i.ar, align 8
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  call void @__rcu_read_unlock() #9
  %i.aw = getelementptr i8, ptr %i.av, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr i8, ptr %.val, i64 2888
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 36     ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bb, ptr elementtype(i32) %i.bb) #11, !srcloc !28
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -114, 1) i32 @nf_ct_expect_related_pair(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 176
  %.val30 = load ptr, ptr %i.d, align 8           ; 3 uses
  %.not.i.i = icmp eq ptr %.val30, null
  br i1 %.not.i.i, label %nfct_help.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i8, ptr %.val30, align 1       ; 2 uses
  %.not1.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not1.i.i, label %nfct_help.exit.thread, label %nfct_help.exit

nfct_help.exit:                                   ; preds = %bb.b
  %i.e = zext i8 %.val.i.i to i64
  %i.f = getelementptr i8, ptr %.val30, i64 %i.e  ; 7 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %nfct_help.exit.thread, label %bb.c

bb.c:                                             ; preds = %nfct_help.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 176
  %.val = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not.i.i31 = icmp eq ptr %.val, null
  br i1 %.not.i.i31, label %nfct_help.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i32 = load i8, ptr %.val, align 1       ; 2 uses
  %.not1.i.i33 = icmp ne i8 %.val.i.i32, 0
  %i.l = zext i8 %.val.i.i32 to i64
  %i.m = getelementptr i8, ptr %.val, i64 %i.l
  %.not29 = icmp eq ptr %i.f, %i.m
  %or.cond = and i1 %.not1.i.i33, %.not29
  br i1 %or.cond, label %.preheader41, label %nfct_help.exit.thread

.preheader41:                                     ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.f, i64 16       ; 3 uses
  %i.o = tail call fastcc i32 @__nf_ct_expect_check(ptr noundef %i.a, ptr noundef %i.f, i32 noundef %1) #10, !srcloc !29 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %nfct_help.exit.thread

bb.e:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 148
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t     ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, -1
  store i8 %i.w, ptr %i.u, align 1
  br label %nfct_help.exit.thread

bb.f:                                             ; preds = %.preheader41
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 148
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.aa   ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = add i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = tail call fastcc i32 @__nf_ct_expect_check(ptr noundef %i.ae, ptr noundef %i.f, i32 noundef %1) #10, !srcloc !29 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.g, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 148
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.n, i64 %i.ak   ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add i8 %i.am, 1
  store i8 %i.an, ptr %i.al, align 1
  %i.ao = load ptr, ptr %0, align 8
  tail call fastcc void @nf_ct_expect_insert(ptr noundef %i.ao, ptr noundef %i.f) #10, !srcloc !30
  %i.ap = load ptr, ptr %i.g, align 8
  tail call fastcc void @nf_ct_expect_insert(ptr noundef %i.ap, ptr noundef %i.f) #10, !srcloc !30
  br label %nfct_help.exit.thread

nfct_help.exit.thread:                            ; preds = %.preheader41, %.preheader.preheader, %bb.c, %bb.d, %bb.a, %bb.b, %nfct_help.exit, %bb.e
  %.1 = phi i32 [ -22, %bb.d ], [ %i.af, %bb.e ], [ 0, %.preheader.preheader ], [ -22, %bb.c ], [ -22, %nfct_help.exit ], [ -22, %bb.a ], [ -22, %bb.b ], [ %i.o, %.preheader41 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_ct_expect_iterate_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  %i.a = load i32, ptr @nf_ct_expect_hsize, align 4 ; 2 uses
  %.not32 = icmp eq i32 %i.a, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a, %.critedge
  %i.b = phi i32 [ %i.aw, %.critedge ], [ %i.a, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr @nf_ct_expect_hash, align 8
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %.not232837 = icmp eq ptr %i.f, null
  %.not2328 = or i1 %.not, %.not232837
  br i1 %.not2328, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31, %select.unfold
  %.029 = phi ptr [ %i.av, %select.unfold ], [ %i.f, %.lr.ph31 ] ; 10 uses
  %i.g = getelementptr i8, ptr %.029, i64 16      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = tail call zeroext i1 %0(ptr noundef nonnull %.029, ptr noundef %1) #9
  br i1 %i.i, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.029, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 176
  %.val.i = load ptr, ptr %i.l, align 8           ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %nfct_help.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i8, ptr %.val.i, align 1     ; 2 uses
  %.not1.i.i.i = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not1.i.i.i, label %nfct_help.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext i8 %.val.i.i.i to i64
  %i.n = getelementptr i8, ptr %.val.i, i64 %i.m
  br label %nfct_help.exit.i

nfct_help.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.o = getelementptr i8, ptr %.029, i64 32
  %.val13.i = load ptr, ptr %i.o, align 8         ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %.029, i64 24      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store volatile ptr %i.p, ptr %i.r, align 8
  %.not.i.i14.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i14.i, label %hlist_del_rcu.exit.i, label %bb.e

bb.e:                                             ; preds = %nfct_help.exit.i
  %i.s = getelementptr i8, ptr %i.p, i64 8
  store volatile ptr %i.r, ptr %i.s, align 8
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %bb.e, %nfct_help.exit.i
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.q, align 8
  %i.t = load i32, ptr @nf_conntrack_net_id, align 4
  tail call void @__rcu_read_lock() #9
  %i.u = getelementptr i8, ptr %.val13.i, i64 2984
  %i.v = load volatile ptr, ptr %i.u, align 8
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @__rcu_read_unlock() #9
  %i.z = getelementptr i8, ptr %i.y, i64 4        ; 2 uses
end_hunk_2
begin_hunk_3_@nf_ct_expect_iterate_net:bb.a
  %i.ac = load ptr, ptr %.035, align 8            ; 3 uses
  %i.ad = getelementptr i8, ptr %.035, i64 8      ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  store volatile ptr %i.ac, ptr %i.ae, align 8
  %.not.i.i15.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i15.i, label %hlist_del_rcu.exit16.i, label %bb.g

bb.g:                                             ; preds = %hlist_del_rcu.exit.i
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  store volatile ptr %i.ae, ptr %i.af, align 8
  br label %hlist_del_rcu.exit16.i

hlist_del_rcu.exit16.i:                           ; preds = %bb.g, %hlist_del_rcu.exit.i
  store volatile ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ad, align 8
  %.not.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %hlist_del_rcu.exit16.i
  %i.ag = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.ah = getelementptr i8, ptr %.035, i64 148
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.aj  ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = add i8 %i.al, -1
  store i8 %i.am, ptr %i.ak, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %hlist_del_rcu.exit16.i
  %i.an = getelementptr i8, ptr %.035, i64 140    ; 3 uses
  %i.ao = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, i32 -1, ptr elementtype(i32) %i.an) #11, !srcloc !12 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp slt i32 %i.ao, 1
  br i1 %i.aq, label %bb.k, label %nf_ct_unlink_expect_report.exit, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @refcount_warn_saturate(ptr noundef %i.an, i32 noundef 3) #9
  br label %nf_ct_unlink_expect_report.exit

bb.l:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !14
  %i.ar = getelementptr i8, ptr %.035, i64 216
  tail call void @call_rcu(ptr noundef %i.ar, ptr noundef nonnull @nf_ct_expect_free_rcu) #9
  br label %nf_ct_unlink_expect_report.exit

nf_ct_unlink_expect_report.exit:                  ; preds = %bb.j, %bb.k, %bb.l
  %i.as = getelementptr i8, ptr %.val13.i, i64 2888
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 40     ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au, ptr elementtype(i32) %i.au) #11, !srcloc !15
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %nf_ct_unlink_expect_report.exit, %.lr.ph
  %.not29 = icmp eq ptr %i.h, null
  %i.av = getelementptr i8, ptr %i.h, i64 -16     ; 2 uses
  %.not2744 = icmp eq ptr %i.av, null
  %.not27 = or i1 %.not29, %.not2744
  br i1 %.not27, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %select.unfold
  %.pre = load i32, ptr @nf_ct_expect_hsize, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph37
  %i.aw = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.b, %.lr.ph37 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph37, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.critedge, %bb.a
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @nf_conntrack_expect_pernet_init(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local void @nf_conntrack_expect_pernet_fini(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @nf_conntrack_expect_init() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  %i.a = load i32, ptr @nf_ct_expect_hsize, align 4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @nf_conntrack_htable_size, align 4
  %i.c = lshr i32 %i.b, 8
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1) ; 2 uses
  store i32 %spec.store.select, ptr @nf_ct_expect_hsize, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %spec.store.select, %bb.b ], [ %i.a, %bb.a ]
  %i.e = shl i32 %i.d, 2
  store i32 %i.e, ptr @nf_ct_expect_max, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 8, ptr %0, align 8
  %i.f = call ptr @__kmem_cache_create_args(ptr noundef nonnull @.str.1, i32 noundef 232, ptr noundef nonnull %0, i32 noundef 0) #9 ; 2 uses
  store ptr %i.f, ptr @nf_ct_expect_cachep, align 8
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @nf_ct_alloc_hashtable(ptr noundef nonnull @nf_ct_expect_hsize, i32 noundef 0) #9 ; 2 uses
  store ptr %i.g, ptr @nf_ct_expect_hash, align 8
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @nf_ct_expect_cachep, align 8
  call void @kmem_cache_destroy(ptr noundef %i.h) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ -12, %bb.c ], [ -12, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nf_ct_alloc_hashtable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_conntrack_expect_fini() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @rcu_barrier() #9
  %i.a = load ptr, ptr @nf_ct_expect_cachep, align 8
  tail call void @kmem_cache_destroy(ptr noundef %i.a) #9
  %i.b = load ptr, ptr @nf_ct_expect_hash, align 8
  tail call void @kvfree(ptr noundef %i.b) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 2149031433, i64 2149031472, i64 2149031493, i64 2149031530, i64 2149031553, i64 2149031562}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{i64 2151009441}
!15 = !{i64 2159848540}
!16 = !{!"auto-init"}
!17 = !{i64 1358443, i64 1358466, i64 2148843881, i64 2148843902, i64 2148843945, i64 2148843960, i64 2148843993, i64 2148844027, i64 2148844051}
!18 = !{i64 2149037182, i64 2149037221, i64 2149037242, i64 2149037279, i64 2149037302, i64 2149037311}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{i64 2159911319}
!23 = !{i64 2157567751}
!24 = !{i64 15035}
!25 = !{i64 15155}
!26 = distinct !{!26, !11}
!27 = !{i64 2153141772}
!28 = !{i64 2159936815}
!29 = !{i64 15801}
!30 = !{i64 16030}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
end_hunk_3
