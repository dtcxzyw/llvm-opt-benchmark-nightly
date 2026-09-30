Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xfrm_user?download=true
inline.NumInlined: 579
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@xfrm_compile_policy:bb.a
bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc i32 @verify_newpolicy_info(ptr noundef %2, ptr noundef null) #17, !srcloc !29
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.e, 274877906776
  %i.i = lshr i64 %i.h, 6
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 40         ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %2, i64 160        ; 3 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = zext i8 %i.n to i32
  %i.p = tail call fastcc i32 @validate_tmpl(i32 noundef %i.j, ptr noundef %i.b, i16 noundef zeroext %i.l, i32 noundef %i.o, ptr noundef null) #17, !srcloc !30
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 8
  %i.r = icmp ugt i8 %i.q, 1
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @xfrm_policy_alloc(ptr noundef %.val, i32 noundef 2080) #14 ; 11 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %2, i64 152
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.s, i64 108
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %2, i64 156
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr i8, ptr %i.s, i64 112
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.s, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(56) %i.aa, ptr noundef readonly align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.ab = getelementptr i8, ptr %i.s, i64 184
  %i.ac = getelementptr i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %i.ab, ptr noundef readonly align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  %i.ad = getelementptr i8, ptr %2, i64 161
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr i8, ptr %i.s, i64 378
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = getelementptr i8, ptr %2, i64 162
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = getelementptr i8, ptr %i.s, i64 379
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = load i16, ptr %i.k, align 8
  %i.ak = getelementptr i8, ptr %i.s, i64 382
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr i8, ptr %i.s, i64 377
  store i8 0, ptr %i.al, align 1
  tail call fastcc void @copy_templates(ptr noundef %i.s, ptr noundef %i.b, i32 noundef %i.j) #17, !srcloc !31
  %i.am = load i8, ptr %i.m, align 8
  %i.an = zext i8 %i.am to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.a, %bb.c, %bb.b, %bb.i
  %.sink = phi i32 [ %i.an, %bb.i ], [ -22, %bb.a ], [ -95, %bb.c ], [ -95, %bb.b ], [ -105, %bb.h ]
  %.0.ph = phi ptr [ %i.s, %bb.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.h ]
  store i32 %.sink, ptr %4, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.d, %bb.e
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.d ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @xfrm_send_mapping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) #2 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 50
  br i1 %.not, label %bb.b, label %xfrm_nlmsg_multicast.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 424        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %xfrm_nlmsg_multicast.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__alloc_skb(i32 noundef range(i32 0, -3) 80, i32 noundef range(i32 2080, 3265) 2080, i32 noundef 0, i32 noundef -1) #14 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %xfrm_nlmsg_multicast.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 116
  %.val.i.i.i = load i32, ptr %i.g, align 4
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %skb_tailroom.exit.i.i, label %bb.e

skb_tailroom.exit.i.i:                            ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.e, i64 192
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 188      ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sub i32 %i.i, %i.k
  %i.m = icmp slt i32 %i.l, 80
  br i1 %i.m, label %bb.e, label %nlmsg_put.exit.i, !prof !11

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %i.n = tail call ptr @__nlmsg_put(ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 38, i32 noundef 64, i32 noundef 0) #14 ; 12 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nlmsg_put.exit.i, %skb_tailroom.exit.i.i, %bb.d
  tail call void asm sideeffect "1026: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1026b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1026) #16, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 4591, i32 0, i64 16) #16, !srcloc !33
  unreachable

bb.f:                                             ; preds = %nlmsg_put.exit.i
  %i.p = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr i8, ptr %0, i64 116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.p, ptr noundef readonly align 4 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr i8, ptr %0, i64 132
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %i.n, i64 32
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %0, i64 248
  %i.v = getelementptr i8, ptr %0, i64 258
  %i.w = load i16, ptr %i.v, align 2
  %i.x = getelementptr i8, ptr %i.n, i64 36
  store i16 %i.w, ptr %i.x, align 4
  %i.y = load i8, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.n, i64 38
  store i8 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %i.n, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.aa, ptr noundef readonly align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.ab = getelementptr i8, ptr %i.n, i64 44
  %i.ac = getelementptr i8, ptr %0, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ab, ptr noundef readonly align 4 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr i8, ptr %i.n, i64 78
  store i16 %2, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr i8, ptr %i.n, i64 76
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = load i32, ptr %i.u, align 8
  %i.aj = getelementptr i8, ptr %i.n, i64 40
  store i32 %i.ai, ptr %i.aj, align 4
  %.val.i = load i32, ptr %i.j, align 4
  %i.ak = getelementptr i8, ptr %i.e, i64 200
  %.val25.i = load ptr, ptr %i.ak, align 8
  %i.al = zext i32 %.val.i to i64
  %i.am = getelementptr i8, ptr %.val25.i, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.n, align 4
  %i.ar = getelementptr i8, ptr %.val, i64 3368
  %i.as = load volatile ptr, ptr %i.ar, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 2) #14
  br label %xfrm_nlmsg_multicast.exit

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.e, i64 56
  store i32 8, ptr %i.at, align 8
  %i.au = tail call i32 @netlink_broadcast_filtered(ptr noundef nonnull %i.as, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef range(i32 1, 9) 8, i32 noundef 2080, ptr noundef null, ptr noundef null) #14
  %spec.store.select.i.i.i = tail call range(i32 -2147483648, 1) i32 @llvm.smin.i32(i32 %i.au, i32 0)
  br label %xfrm_nlmsg_multicast.exit

xfrm_nlmsg_multicast.exit:                        ; preds = %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ -12, %bb.c ], [ %spec.store.select.i.i.i, %bb.h ], [ -32, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_send_policy_notify(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca [6 x %struct.xfrm_user_tmpl], align 16 ; 66 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [6 x %struct.xfrm_user_tmpl], align 16 ; 66 uses
  %i.c = getelementptr i8, ptr %2, i64 12         ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  switch i32 %i.d, label %bb.ba [
    i32 19, label %bb.b
    i32 25, label %bb.b
    i32 20, label %bb.b
    i32 29, label %bb.y
    i32 27, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 380        ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 6
  %.val74.i = load ptr, ptr %0, align 8
  %i.i = icmp eq i32 %i.d, 20                     ; 2 uses
  %spec.select.i = select i1 %i.i, i32 64, i32 168 ; 2 uses
  %spec.select103.i = select i1 %i.i, i32 268, i32 200
  %i.j = add nuw nsw i32 %spec.select103.i, %i.h
  %i.k = tail call ptr @__alloc_skb(i32 noundef range(i32 0, -3) %i.j, i32 noundef range(i32 2080, 3265) 2080, i32 noundef 0, i32 noundef -1) #14 ; 15 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %xfrm_notify_policy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.c, align 4
  %i.r = getelementptr i8, ptr %i.k, i64 116
  %.val.i.i.i = load i32, ptr %i.r, align 4
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %skb_tailroom.exit.i.i, label %copy_user_offload.exit.i

skb_tailroom.exit.i.i:                            ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.k, i64 192
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.k, i64 188      ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sub i32 %i.t, %i.v
  %i.x = or disjoint i32 %spec.select.i, 16
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %copy_user_offload.exit.i, label %nlmsg_put.exit.i, !prof !11

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %i.z = tail call ptr @__nlmsg_put(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.q, i32 noundef range(i32 0, 281) %spec.select.i, i32 noundef 0) #14 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %copy_user_offload.exit.i, label %bb.d

bb.d:                                             ; preds = %nlmsg_put.exit.i
  %i.ab = getelementptr i8, ptr %i.z, i64 16      ; 3 uses
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = icmp eq i32 %i.ac, 20
  br i1 %i.ad, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = trunc i32 %1 to i8
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  %i.ae = trunc i32 %1 to i8                      ; 2 uses
  %i.af = getelementptr i8, ptr %i.z, i64 76
  store i8 %i.ae, ptr %i.af, align 4
  %i.ag = load i32, ptr %2, align 8
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 112
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.z, i64 72
  store i32 %i.ai, ptr %i.aj, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(56) %i.ab, ptr noundef align 8 dereferenceable(56) %i.ak, i64 56, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call ptr @nla_reserve(ptr noundef nonnull %i.k, i32 noundef 7, i32 noundef 168) #14 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %copy_user_offload.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.al, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %._crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.ae, %.thread.i ]
  %.160.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %i.an, %.thread.i ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(168) %.160.i, i8 0, i64 168, i1 false)
  %i.ao = getelementptr i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(56) %.160.i, ptr noundef readonly align 8 dereferenceable(56) %i.ao, i64 56, i1 false)
  %i.ap = getelementptr i8, ptr %.160.i, i64 56
  %i.aq = getelementptr i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %i.ap, ptr noundef readonly align 8 dereferenceable(64) %i.aq, i64 64, i1 false)
  %i.ar = getelementptr i8, ptr %.160.i, i64 120
  %i.as = getelementptr i8, ptr %0, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ar, ptr noundef readonly align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  %i.at = getelementptr i8, ptr %0, i64 108
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %.160.i, i64 152
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %0, i64 112
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %.160.i, i64 156
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 382
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = getelementptr i8, ptr %.160.i, i64 40
  store i16 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.160.i, i64 160
  store i8 %.pre-phi.i, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %0, i64 378
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = getelementptr i8, ptr %.160.i, i64 161
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %0, i64 379
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %.160.i, i64 162
  store i8 %i.bh, ptr %i.bi, align 2
  %i.bj = getelementptr i8, ptr %.160.i, i64 163
  store i8 0, ptr %i.bj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bk = load i8, ptr %i.e, align 4              ; 8 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %copy_to_user_tmpl.exit.thread.i, label %bb.j

copy_to_user_tmpl.exit.thread.i:                  ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp ugt i8 %i.bk, 6
  br i1 %i.bm, label %copy_to_user_tmpl.exit.thread85.i, label %.preheader.i.i

copy_to_user_tmpl.exit.thread85.i:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %copy_user_offload.exit.i

.preheader.i.i:                                   ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %4, i8 0, i64 384, i1 false), !annotation !13
  %i.bn = getelementptr i8, ptr %0, i64 392
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef readonly align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bp = getelementptr i8, ptr %0, i64 432
  %i.bq = load i16, ptr %i.bp, align 8
  store i16 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bs = getelementptr i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef readonly align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  %i.bt = getelementptr i8, ptr %0, i64 436
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %0, i64 440
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 %i.bx, ptr %i.by, align 16
  %i.bz = getelementptr i8, ptr %0, i64 441
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %0, i64 442
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 50
  store i8 %i.cd, ptr %i.ce, align 2
  %i.cf = getelementptr i8, ptr %0, i64 444
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %0, i64 448
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %0, i64 452
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %i.cm, ptr %i.cn, align 4
  %exitcond.not.i.i = icmp eq i8 %i.bk, 1
  br i1 %exitcond.not.i.i, label %copy_to_user_tmpl.exit.i, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cp = getelementptr i8, ptr %0, i64 456
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.co, ptr noundef readonly align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  %i.cr = getelementptr i8, ptr %0, i64 496
  %i.cs = load i16, ptr %i.cr, align 8
  store i16 %i.cs, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.cu = getelementptr i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, ptr noundef readonly align 8 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = getelementptr i8, ptr %0, i64 500
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store i32 %i.cw, ptr %i.cx, align 4
  %i.cy = getelementptr i8, ptr %0, i64 504
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i8 %i.cz, ptr %i.da, align 16
  %i.db = getelementptr i8, ptr %0, i64 505
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 113
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %0, i64 506
  %i.df = load i8, ptr %i.de, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 114
  store i8 %i.df, ptr %i.dg, align 2
  %i.dh = getelementptr i8, ptr %0, i64 508
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr i8, ptr %0, i64 512
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %0, i64 516
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 124
  store i32 %i.do, ptr %i.dp, align 4
  %exitcond.not.i.i.1 = icmp eq i8 %i.bk, 2
  br i1 %exitcond.not.i.i.1, label %copy_to_user_tmpl.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dr = getelementptr i8, ptr %0, i64 520
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dq, ptr noundef readonly align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  %i.dt = getelementptr i8, ptr %0, i64 560
  %i.du = load i16, ptr %i.dt, align 8
  store i16 %i.du, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.dw = getelementptr i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dv, ptr noundef readonly align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.dx = getelementptr i8, ptr %0, i64 564
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 172
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %0, i64 568
  %i.eb = load i8, ptr %i.ea, align 8
end_hunk_0
