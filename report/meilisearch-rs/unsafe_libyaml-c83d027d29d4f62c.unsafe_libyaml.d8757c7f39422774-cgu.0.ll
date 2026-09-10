Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7scanner28yaml_parser_fetch_stream_end17heefa89130141963dE:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.au, align 8, !noundef !6
  %i.bd = getelementptr i8, ptr %i.bc, i64 80
  store ptr %i.bd, ptr %i.au, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.sroa.0.0 = xor i1 %i.as, true
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_block_entry17h858ad9de85cea935E(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [52 x i8], align 4            ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.e = load i32, ptr %i.d, align 4, !noundef !6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.h = load i8, ptr %i.g, align 4, !range !10, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @174, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.q = call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner23yaml_parser_roll_indent17h7a706acc87dde8efE(ptr noundef nonnull %0, i64 noundef %i.p, i64 noundef -1, i32 noundef 7, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.q, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !noundef !6 ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -40      ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !10, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  store i8 0, ptr %i.t, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.s, i64 -39
  %i.x = load i8, ptr %i.w, align 1, !range !10, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr i8, ptr %i.s, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @145, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @146, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.03.0 = phi ptr [ @14, %bb.h ], [ @15, %bb.f ]
  %i.af = load i8, ptr %.sroa.03.0, align 1, !range !10, !noundef !6
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i8 1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !noundef !6 ; 4 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i8 %i.al, -32
  %i.ao = icmp eq i8 %i.an, -64
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.p, %bb.o, %bb.k, %bb.j
  %.sroa.0.0.i = phi i64 [ 3, %bb.o ], [ 1, %bb.j ], [ 2, %bb.k ], [ %..i, %bb.p ] ; 2 uses
  %i.ap = load i64, ptr %i.ai, align 8, !noundef !6 ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.0.0.i             ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.m, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !4

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.l
  store i64 %i.aq, ptr %i.ai, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.n, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, !prof !4

bb.n:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.av = and i8 %i.al, -16
  %i.aw = icmp eq i8 %i.av, -32
  br i1 %i.aw, label %bb.l, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = and i8 %i.al, -8
  %i.ay = icmp eq i8 %i.ax, -16
  %..i = select i1 %i.ay, i64 4, i64 0
  br label %bb.l

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  %i.az = add nuw i64 %i.at, 1
  store i64 %i.az, ptr %i.as, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !6
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr i8, ptr %i.ak, i64 %.sroa.0.0.i
  store ptr %i.bd, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i8 0, i64 28, i1 false)
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !6
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bg)
  %.pre = load ptr, ptr %i.be, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit, %bb.q
  %i.bl = phi ptr [ %i.bf, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit ], [ %.pre, %bb.q ] ; 3 uses
  store i32 14, ptr %i.bl, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6, i64 52, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %i.bm = load ptr, ptr %i.be, align 8, !noundef !6
  %i.bn = getelementptr i8, ptr %i.bm, i64 80
  store ptr %i.bn, ptr %i.be, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.d, %bb.i, %bb.r
  %.sroa.0.1 = phi i1 [ true, %bb.r ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 21 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [24 x i8], align 4     ; 4 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.h = load i32, ptr %i.g, align 4, !noundef !6
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load i32, ptr %i.j, align 8, !noundef !6
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  %i.o = icmp eq i64 %i.n, %i.l
  %i.p = zext i1 %i.o to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !10, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load ptr, ptr %i.x, align 8, !noundef !6
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv i64 %i.ab, 80
  %i.ad = add i64 %i.ac, %i.u                     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %bb.e, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i", !prof !4

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i": ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !6 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -40    ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !10, !noundef !6
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  store i8 0, ptr %i.aj, align 8
  br label %bb.i

bb.g:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i"
  %i.am = getelementptr i8, ptr %i.ai, i64 -39
  %i.an = load i8, ptr %i.am, align 1, !range !10, !noundef !6
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ap = getelementptr i8, ptr %i.ai, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @145, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @146, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.04.0.i = phi ptr [ @14, %bb.h ], [ @15, %bb.f ]
  %i.au = load i8, ptr %.sroa.04.0.i, align 1, !range !10, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.ah, align 8, !noundef !6 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -40
  store i8 1, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.aw, i64 -39
  store i8 %.sroa.01.0.i, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.33.0..sroa_idx.i = getelementptr i8, ptr %i.aw, i64 -32
  store i64 %i.ad, ptr %.sroa.33.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.aw, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false)
  %i.ay = load ptr, ptr %i.ag, align 8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !noundef !6 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load ptr, ptr %i.ah, align 8, !noundef !6
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = add i32 %i.ba, -1
  store i32 %i.bf, ptr %i.az, align 8
  br label %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit

_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit: ; preds = %bb.j, %bb.k, %bb.c, %bb.i
  %i.bg = phi ptr [ @14, %bb.i ], [ @15, %bb.c ], [ @15, %bb.k ], [ @15, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.bh = load i8, ptr %i.bg, align 1, !range !10, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.if, label %bb.l

bb.l:                                             ; preds = %_ZN14unsafe_libyaml7scanner27yaml_parser_save_simple_key17h2cb6eb2aec75a3ffE.exit
  store i8 0, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.bj = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.bj, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.bk = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.o, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i, !prof !4

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i: ; preds = %bb.n
  store i64 24, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  store ptr %i.bm, ptr %i.e, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 38 uses
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bk, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 15 uses
  store ptr %i.bo, ptr %i.bp, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bq = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !5

bb.p:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.q:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.br = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.r, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit162.i, !prof !4

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit162.i: ; preds = %bb.q
  store i64 24, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  store ptr %i.bt, ptr %i.d, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.br, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bx = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.bx, label %bb.t, label %bb.s, !prof !5

bb.s:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit162.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.t:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit162.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.by = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.u, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit163.i, !prof !4

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit163.i: ; preds = %bb.t
  store i64 24, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  store ptr %i.ca, ptr %i.c, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %i.by, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.ce = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef 24, i64 noundef 8)
  br i1 %i.ce, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit163.i
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.w:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit163.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.cf = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #21 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.x, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit164.i, !prof !4

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit164.i: ; preds = %bb.w
  store i64 24, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  store ptr %i.ch, ptr %i.b, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.cf, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 29 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 29 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !noundef !6 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !noundef !6 ; 4 uses
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit164.i
  %i.cq = and i8 %i.co, -32
  %i.cr = icmp eq i8 %i.cq, -64
  br i1 %i.cr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.y, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit164.i
  %.sroa.0.0.i.i = phi i64 [ 3, %bb.ac ], [ 1, %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit164.i ], [ 2, %bb.y ], [ %..i.i, %bb.ad ] ; 2 uses
  %i.cs = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.ct = add i64 %i.cs, %.sroa.0.0.i.i           ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.aa, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i", !prof !4

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i": ; preds = %bb.z
  store i64 %i.ct, ptr %i.cl, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 34 uses
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.ab, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit.i, !prof !4

bb.ab:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.cy = and i8 %i.co, -16
  %i.cz = icmp eq i8 %i.cy, -32
  br i1 %i.cz, label %bb.z, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = and i8 %i.co, -8
  %i.db = icmp eq i8 %i.da, -16
  %..i.i = select i1 %i.db, i64 4, i64 0
  br label %bb.z

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i.i"
  %i.dc = add nuw i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cv, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 33 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !6
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.dd, align 8
  %i.dg = getelementptr i8, ptr %i.cn, i64 %.sroa.0.0.i.i
  store ptr %i.dg, ptr %i.cm, align 8
  %i.dh = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 4)
  br i1 %i.dh, label %.lr.ph.i, label %.loopexit296.i

.lr.ph.i:                                         ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit.i
  %.148.i = select i1 %1, i8 39, i8 34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.hg, %.lr.ph.i
  %i.di = load i64, ptr %i.cv, align 8, !noundef !6
  %i.dj = icmp eq i64 %i.di, 0
  %.pre.i = load ptr, ptr %i.cm, align 8          ; 9 uses
  %.pre357.i = load i8, ptr %.pre.i, align 1      ; 2 uses
  br i1 %i.dj, label %bb.af, label %.thread.i

bb.af:                                            ; preds = %bb.ae
  switch i8 %.pre357.i, label %.thread.thread.i [
    i8 45, label %bb.ag
    i8 46, label %bb.aj
    i8 0, label %.loopexit296.i.sink.split
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !noundef !6
  %i.dm = icmp eq i8 %i.dl, 45
  br i1 %i.dm, label %bb.ah, label %.thread.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !noundef !6
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.ai, label %.thread.thread.i

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !noundef !6
  switch i8 %i.dr, label %.thread.thread.i [
    i8 32, label %.loopexit296.i.sink.split
    i8 9, label %.loopexit296.i.sink.split
    i8 13, label %.loopexit296.i.sink.split
    i8 10, label %.loopexit296.i.sink.split
    i8 -62, label %bb.al
    i8 -30, label %bb.am
    i8 0, label %.loopexit296.i.sink.split
  ]

bb.aj:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !noundef !6
  %i.du = icmp eq i8 %i.dt, 46
  br i1 %i.du, label %bb.ak, label %.thread.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !noundef !6
  %i.dx = icmp eq i8 %i.dw, 46
  br i1 %i.dx, label %bb.ai, label %.thread.thread.i

bb.al:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %i.dz = load i8, ptr %i.dy, align 1, !noundef !6
  %i.ea = icmp eq i8 %i.dz, -123
end_hunk_0
begin_hunk_1_@_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E:bb.a
  %.val161.i = load ptr, ptr %i.ci, align 8, !noundef !6 ; 2 uses
  %i.xa = icmp eq ptr %.val160.i, %.val161.i
  br i1 %i.xa, label %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i, label %.preheader.i.i

._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i: ; preds = %bb.hc
  %.pre365.i = ptrtoint ptr %.val160.i to i64
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i

.preheader.i.i:                                   ; preds = %bb.hc
  %i.xb = ptrtoint ptr %.val161.i to i64
  %i.xc = ptrtoint ptr %.val160.i to i64          ; 2 uses
  %i.xd = sub i64 %i.xb, %i.xc                    ; 4 uses
  %i.xe = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.xf = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.xg = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %.not8.i.i = icmp sgt i64 %i.xi, %i.xd
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit:                         ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i
  store ptr %i.ye, ptr %i.bp, align 8
  store ptr %i.xu, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %i.xj = phi ptr [ %i.xf, %.preheader.i.i ], [ %i.yc, %._crit_edge.i.i.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xj, ptr align 1 %.val160.i, i64 %i.xd, i1 false)
  %i.xk = getelementptr i8, ptr %i.xj, i64 %i.xd
  store ptr %i.xk, ptr %i.bn, align 8
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i, %.lr.ph.preheader.i.i
  %i.xl = phi ptr [ %i.ye, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.xe, %.lr.ph.preheader.i.i ]
  %i.xm = phi ptr [ %i.yc, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.xf, %.lr.ph.preheader.i.i ]
  %i.xn = phi ptr [ %i.xu, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.xo = phi i64 [ %i.yf, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i ], [ %i.xg, %.lr.ph.preheader.i.i ]
  %i.xp = ptrtoint ptr %i.xn to i64               ; 3 uses
  %i.xq = sub i64 %i.xo, %i.xp                    ; 2 uses
  %i.xr = add i64 %i.xq, 4611686018427387904
  %i.xs = icmp slt i64 %i.xr, 0
  br i1 %i.xs, label %bb.hd, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i", !prof !4

bb.hd:                                            ; preds = %.lr.ph.i.i
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i": ; preds = %.lr.ph.i.i
  %i.xt = shl nsw i64 %i.xq, 1
  %i.xu = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.xn, i64 noundef %i.xt) ; 5 uses
  %i.xv = ptrtoint ptr %i.xl to i64
  %i.xw = sub i64 %i.xv, %i.xp                    ; 4 uses
  %i.xx = getelementptr i8, ptr %i.xu, i64 %i.xw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.xx, i8 0, i64 %i.xw, i1 false)
  %i.xy = add i64 %i.xw, 4611686018427387904
  %i.xz = icmp slt i64 %i.xy, 0
  br i1 %i.xz, label %bb.he, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i, !prof !4

bb.he:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i.i"
  %i.ya = ptrtoint ptr %i.xm to i64
  %i.yb = sub i64 %i.ya, %i.xp                    ; 2 uses
  %i.yc = getelementptr i8, ptr %i.xu, i64 %i.yb  ; 2 uses
  %i.yd = shl nsw i64 %i.xw, 1                    ; 2 uses
  %i.ye = getelementptr i8, ptr %i.xu, i64 %i.yd  ; 3 uses
  %i.yf = ptrtoint ptr %i.ye to i64
  %gepdiff.i = sub i64 %i.yd, %i.yb
  %.not.i.i = icmp sgt i64 %gepdiff.i, %i.xd
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i: ; preds = %._crit_edge.i.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i
  %.pre-phi366.i = phi i64 [ %.pre365.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit_crit_edge.i ], [ %i.xc, %._crit_edge.i.i ]
  store ptr %.val160.i, ptr %i.ci, align 8
  %i.yg = load ptr, ptr %i.ck, align 8, !noundef !6
  %i.yh = ptrtoint ptr %i.yg to i64
  %i.yi = sub i64 %i.yh, %.pre-phi366.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.val160.i, i8 0, i64 %i.yi, i1 false)
  br label %bb.hg

bb.hf:                                            ; preds = %.thread281.i
  %i.yj = load ptr, ptr %i.d, align 8, !noundef !6 ; 10 uses
  %i.yk = load i8, ptr %i.yj, align 1, !noundef !6
  %i.yl = icmp eq i8 %i.yk, 10
  br i1 %i.yl, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.ht, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234.i, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit.i
  %i.ym = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 4)
  br i1 %i.ym, label %bb.ae, label %.loopexit296.i

bb.hh:                                            ; preds = %bb.hf
  %i.yn = load ptr, ptr %i.c, align 8, !noundef !6 ; 7 uses
  %i.yo = load i8, ptr %i.yn, align 1, !noundef !6
  %i.yp = icmp eq i8 %i.yo, 0
  br i1 %i.yp, label %bb.hn, label %bb.ho

bb.hi:                                            ; preds = %bb.hf
  %.val159.i = load ptr, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  %i.yq = icmp eq ptr %i.yj, %.val159.i
  br i1 %i.yq, label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223.i, label %.preheader.i213.i

.preheader.i213.i:                                ; preds = %bb.hi
  %i.yr = ptrtoint ptr %.val159.i to i64
  %i.ys = ptrtoint ptr %i.yj to i64
  %i.yt = sub i64 %i.yr, %i.ys                    ; 4 uses
  %i.yu = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.yv = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.yw = ptrtoint ptr %i.yu to i64               ; 2 uses
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %.not8.i214.i = icmp sgt i64 %i.yy, %i.yt
  br i1 %.not8.i214.i, label %._crit_edge.i221.i, label %.lr.ph.preheader.i215.i

.lr.ph.preheader.i215.i:                          ; preds = %.preheader.i213.i
  %.pre.i216.i = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i217.i

._crit_edge.i221.i.loopexit:                      ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i
  store ptr %i.zu, ptr %i.bp, align 8
  store ptr %i.zk, ptr %i.e, align 8
  br label %._crit_edge.i221.i

._crit_edge.i221.i:                               ; preds = %._crit_edge.i221.i.loopexit, %.preheader.i213.i
  %i.yz = phi ptr [ %i.yv, %.preheader.i213.i ], [ %i.zs, %._crit_edge.i221.i.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yz, ptr nonnull align 1 %i.yj, i64 %i.yt, i1 false)
  %i.za = getelementptr i8, ptr %i.yz, i64 %i.yt
  store ptr %i.za, ptr %i.bn, align 8
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223.i

.lr.ph.i217.i:                                    ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i, %.lr.ph.preheader.i215.i
  %i.zb = phi ptr [ %i.zu, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i ], [ %i.yu, %.lr.ph.preheader.i215.i ]
  %i.zc = phi ptr [ %i.zs, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i ], [ %i.yv, %.lr.ph.preheader.i215.i ]
  %i.zd = phi ptr [ %i.zk, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i ], [ %.pre.i216.i, %.lr.ph.preheader.i215.i ] ; 2 uses
  %i.ze = phi i64 [ %i.zv, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i ], [ %i.yw, %.lr.ph.preheader.i215.i ]
  %i.zf = ptrtoint ptr %i.zd to i64               ; 3 uses
  %i.zg = sub i64 %i.ze, %i.zf                    ; 2 uses
  %i.zh = add i64 %i.zg, 4611686018427387904
  %i.zi = icmp slt i64 %i.zh, 0
  br i1 %i.zi, label %bb.hj, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i218.i", !prof !4

bb.hj:                                            ; preds = %.lr.ph.i217.i
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i218.i": ; preds = %.lr.ph.i217.i
  %i.zj = shl nsw i64 %i.zg, 1
  %i.zk = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.zd, i64 noundef %i.zj) ; 5 uses
  %i.zl = ptrtoint ptr %i.zb to i64
  %i.zm = sub i64 %i.zl, %i.zf                    ; 4 uses
  %i.zn = getelementptr i8, ptr %i.zk, i64 %i.zm
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.zn, i8 0, i64 %i.zm, i1 false)
  %i.zo = add i64 %i.zm, 4611686018427387904
  %i.zp = icmp slt i64 %i.zo, 0
  br i1 %i.zp, label %bb.hk, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i, !prof !4

bb.hk:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i218.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i219.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i218.i"
  %i.zq = ptrtoint ptr %i.zc to i64
  %i.zr = sub i64 %i.zq, %i.zf                    ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zk, i64 %i.zr  ; 2 uses
  %i.zt = shl nsw i64 %i.zm, 1                    ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zk, i64 %i.zt  ; 3 uses
  %i.zv = ptrtoint ptr %i.zu to i64
  %gepdiff292.i = sub i64 %i.zt, %i.zr
  %.not.i220.i = icmp sgt i64 %gepdiff292.i, %i.yt
  br i1 %.not.i220.i, label %._crit_edge.i221.i.loopexit, label %.lr.ph.i217.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223.i: ; preds = %._crit_edge.i221.i, %bb.hi
  %.val156.i = load ptr, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %.val157.i = load ptr, ptr %i.cb, align 8, !noundef !6 ; 2 uses
  %i.zw = icmp eq ptr %.val156.i, %.val157.i
  br i1 %i.zw, label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234_crit_edge.i, label %.preheader.i224.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234_crit_edge.i: ; preds = %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223.i
  %.pre363.i = ptrtoint ptr %.val156.i to i64
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234.i

.preheader.i224.i:                                ; preds = %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223.i
  %i.zx = ptrtoint ptr %.val157.i to i64
  %i.zy = ptrtoint ptr %.val156.i to i64          ; 2 uses
  %i.zz = sub i64 %i.zx, %i.zy                    ; 4 uses
  %i.aaa = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.aab = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.aac = ptrtoint ptr %i.aaa to i64             ; 2 uses
  %i.aad = ptrtoint ptr %i.aab to i64
  %i.aae = sub i64 %i.aac, %i.aad
  %.not8.i225.i = icmp sgt i64 %i.aae, %i.zz
  br i1 %.not8.i225.i, label %._crit_edge.i232.i, label %.lr.ph.preheader.i226.i

.lr.ph.preheader.i226.i:                          ; preds = %.preheader.i224.i
  %.pre.i227.i = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i228.i

._crit_edge.i232.i.loopexit:                      ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i
  store ptr %i.aba, ptr %i.bp, align 8
  store ptr %i.aaq, ptr %i.e, align 8
  br label %._crit_edge.i232.i

._crit_edge.i232.i:                               ; preds = %._crit_edge.i232.i.loopexit, %.preheader.i224.i
  %i.aaf = phi ptr [ %i.aab, %.preheader.i224.i ], [ %i.aay, %._crit_edge.i232.i.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aaf, ptr align 1 %.val156.i, i64 %i.zz, i1 false)
  %i.aag = getelementptr i8, ptr %i.aaf, i64 %i.zz
  store ptr %i.aag, ptr %i.bn, align 8
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234.i

.lr.ph.i228.i:                                    ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i, %.lr.ph.preheader.i226.i
  %i.aah = phi ptr [ %i.aba, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i ], [ %i.aaa, %.lr.ph.preheader.i226.i ]
  %i.aai = phi ptr [ %i.aay, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i ], [ %i.aab, %.lr.ph.preheader.i226.i ]
  %i.aaj = phi ptr [ %i.aaq, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i ], [ %.pre.i227.i, %.lr.ph.preheader.i226.i ] ; 2 uses
  %i.aak = phi i64 [ %i.abb, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i ], [ %i.aac, %.lr.ph.preheader.i226.i ]
  %i.aal = ptrtoint ptr %i.aaj to i64             ; 3 uses
  %i.aam = sub i64 %i.aak, %i.aal                 ; 2 uses
  %i.aan = add i64 %i.aam, 4611686018427387904
  %i.aao = icmp slt i64 %i.aan, 0
  br i1 %i.aao, label %bb.hl, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i229.i", !prof !4

bb.hl:                                            ; preds = %.lr.ph.i228.i
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i229.i": ; preds = %.lr.ph.i228.i
  %i.aap = shl nsw i64 %i.aam, 1
  %i.aaq = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.aaj, i64 noundef %i.aap) ; 5 uses
  %i.aar = ptrtoint ptr %i.aah to i64
  %i.aas = sub i64 %i.aar, %i.aal                 ; 4 uses
  %i.aat = getelementptr i8, ptr %i.aaq, i64 %i.aas
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aat, i8 0, i64 %i.aas, i1 false)
  %i.aau = add i64 %i.aas, 4611686018427387904
  %i.aav = icmp slt i64 %i.aau, 0
  br i1 %i.aav, label %bb.hm, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i, !prof !4

bb.hm:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i229.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i230.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i229.i"
  %i.aaw = ptrtoint ptr %i.aai to i64
  %i.aax = sub i64 %i.aaw, %i.aal                 ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaq, i64 %i.aax ; 2 uses
  %i.aaz = shl nsw i64 %i.aas, 1                  ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aaq, i64 %i.aaz ; 3 uses
  %i.abb = ptrtoint ptr %i.aba to i64
  %gepdiff293.i = sub i64 %i.aaz, %i.aax
  %.not.i231.i = icmp sgt i64 %gepdiff293.i, %i.zz
  br i1 %.not.i231.i, label %._crit_edge.i232.i.loopexit, label %.lr.ph.i228.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234.i: ; preds = %._crit_edge.i232.i, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234_crit_edge.i
  %.pre-phi364.i = phi i64 [ %.pre363.i, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit223._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit234_crit_edge.i ], [ %i.zy, %._crit_edge.i232.i ]
  store ptr %i.yj, ptr %i.bu, align 8
  %i.abc = load ptr, ptr %i.bw, align 8, !noundef !6
  %i.abd = ptrtoint ptr %i.abc to i64
  %i.abe = ptrtoint ptr %i.yj to i64
  %i.abf = sub i64 %i.abd, %i.abe
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yj, i8 0, i64 %i.abf, i1 false)
  store ptr %.val156.i, ptr %i.cb, align 8
  %i.abg = load ptr, ptr %i.cd, align 8, !noundef !6
  %i.abh = ptrtoint ptr %i.abg to i64
  %i.abi = sub i64 %i.abh, %.pre-phi364.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.val156.i, i8 0, i64 %i.abi, i1 false)
  br label %bb.hg

bb.hn:                                            ; preds = %bb.hh
  %i.abj = load ptr, ptr %i.bn, align 8, !noundef !6 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.abj, i64 5
  %i.abl = load ptr, ptr %i.bp, align 8, !noundef !6
  %.not135.i = icmp ult ptr %i.abk, %i.abl
  br i1 %.not135.i, label %bb.hs, label %bb.hr

bb.ho:                                            ; preds = %bb.hh
  %.val155.i = load ptr, ptr %i.cb, align 8, !noundef !6 ; 2 uses
  %i.abm = icmp eq ptr %i.yn, %.val155.i
  br i1 %i.abm, label %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i, label %.preheader.i235.i

._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i: ; preds = %bb.ho
  %.pre362.i = ptrtoint ptr %i.yn to i64
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i

.preheader.i235.i:                                ; preds = %bb.ho
  %i.abn = ptrtoint ptr %.val155.i to i64
  %i.abo = ptrtoint ptr %i.yn to i64              ; 2 uses
  %i.abp = sub i64 %i.abn, %i.abo                 ; 4 uses
  %i.abq = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.abr = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.abs = ptrtoint ptr %i.abq to i64             ; 2 uses
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %.not8.i236.i = icmp sgt i64 %i.abu, %i.abp
  br i1 %.not8.i236.i, label %._crit_edge.i243.i, label %.lr.ph.preheader.i237.i

.lr.ph.preheader.i237.i:                          ; preds = %.preheader.i235.i
  %.pre.i238.i = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i239.i

._crit_edge.i243.i.loopexit:                      ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i
  store ptr %i.acq, ptr %i.bp, align 8
  store ptr %i.acg, ptr %i.e, align 8
  br label %._crit_edge.i243.i

._crit_edge.i243.i:                               ; preds = %._crit_edge.i243.i.loopexit, %.preheader.i235.i
  %i.abv = phi ptr [ %i.abr, %.preheader.i235.i ], [ %i.aco, %._crit_edge.i243.i.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abv, ptr nonnull align 1 %i.yn, i64 %i.abp, i1 false)
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.abp
  store ptr %i.abw, ptr %i.bn, align 8
  br label %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i

.lr.ph.i239.i:                                    ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i, %.lr.ph.preheader.i237.i
  %i.abx = phi ptr [ %i.acq, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i ], [ %i.abq, %.lr.ph.preheader.i237.i ]
  %i.aby = phi ptr [ %i.aco, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i ], [ %i.abr, %.lr.ph.preheader.i237.i ]
  %i.abz = phi ptr [ %i.acg, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i ], [ %.pre.i238.i, %.lr.ph.preheader.i237.i ] ; 2 uses
  %i.aca = phi i64 [ %i.acr, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i ], [ %i.abs, %.lr.ph.preheader.i237.i ]
  %i.acb = ptrtoint ptr %i.abz to i64             ; 3 uses
  %i.acc = sub i64 %i.aca, %i.acb                 ; 2 uses
  %i.acd = add i64 %i.acc, 4611686018427387904
  %i.ace = icmp slt i64 %i.acd, 0
  br i1 %i.ace, label %bb.hp, label %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i240.i", !prof !4

bb.hp:                                            ; preds = %.lr.ph.i239.i
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i240.i": ; preds = %.lr.ph.i239.i
  %i.acf = shl nsw i64 %i.acc, 1
  %i.acg = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.abz, i64 noundef %i.acf) ; 5 uses
  %i.ach = ptrtoint ptr %i.abx to i64
  %i.aci = sub i64 %i.ach, %i.acb                 ; 4 uses
  %i.acj = getelementptr i8, ptr %i.acg, i64 %i.aci
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.acj, i8 0, i64 %i.aci, i1 false)
  %i.ack = add i64 %i.aci, 4611686018427387904
  %i.acl = icmp slt i64 %i.ack, 0
  br i1 %i.acl, label %bb.hq, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i, !prof !4

bb.hq:                                            ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i240.i"
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit.i241.i: ; preds = %"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E.exit.i.i240.i"
  %i.acm = ptrtoint ptr %i.aby to i64
  %i.acn = sub i64 %i.acm, %i.acb                 ; 2 uses
  %i.aco = getelementptr i8, ptr %i.acg, i64 %i.acn ; 2 uses
  %i.acp = shl nsw i64 %i.aci, 1                  ; 2 uses
  %i.acq = getelementptr i8, ptr %i.acg, i64 %i.acp ; 3 uses
  %i.acr = ptrtoint ptr %i.acq to i64
  %gepdiff294.i = sub i64 %i.acp, %i.acn
  %.not.i242.i = icmp sgt i64 %gepdiff294.i, %i.abp
  br i1 %.not.i242.i, label %._crit_edge.i243.i.loopexit, label %.lr.ph.i239.i

_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i: ; preds = %._crit_edge.i243.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre362.i, %._ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245_crit_edge.i ], [ %i.abo, %._crit_edge.i243.i ]
  store ptr %i.yn, ptr %i.cb, align 8
  %i.acs = load ptr, ptr %i.cd, align 8, !noundef !6
  %i.act = ptrtoint ptr %i.acs to i64
  %i.acu = sub i64 %i.act, %.pre-phi.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yn, i8 0, i64 %i.acu, i1 false)
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hn
  call fastcc void @_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E(ptr noundef %i.e, ptr noundef %i.bn, ptr noundef %i.bp)
  %.pre360.i = load ptr, ptr %i.bn, align 8
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hn
  %i.acv = phi ptr [ %i.abj, %bb.hn ], [ %.pre360.i, %bb.hr ] ; 2 uses
  %i.acw = getelementptr i8, ptr %i.acv, i64 1
  store ptr %i.acw, ptr %i.bn, align 8
  store i8 32, ptr %i.acv, align 1
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZN14unsafe_libyaml3api16yaml_string_join17he14af3184f36b16bE.exit245.i
  store ptr %i.yj, ptr %i.bu, align 8
  %i.acx = load ptr, ptr %i.bw, align 8, !noundef !6
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = ptrtoint ptr %i.yj to i64
  %i.ada = sub i64 %i.acy, %i.acz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yj, i8 0, i64 %i.ada, i1 false)
  br label %bb.hg

.loopexit296.i.sink.split:                        ; preds = %bb.af, %.thread.i, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.al, %bb.an, %bb.dq, %bb.cj, %bb.fh, %bb.fl, %bb.fq, %bb.fu, %bb.fz, %bb.gd, %bb.gh, %bb.gl
  %.sink206 = phi ptr [ @167, %bb.dq ], [ @167, %bb.fh ], [ @167, %bb.gl ], [ @167, %bb.gh ], [ @167, %bb.gd ], [ @167, %bb.fz ], [ @167, %bb.fu ], [ @167, %bb.fq ], [ @167, %bb.fl ], [ @167, %bb.cj ], [ @164, %bb.an ], [ @164, %bb.al ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %bb.ai ], [ @164, %.thread.i ], [ @164, %bb.af ]
  %.sink = phi ptr [ @168, %bb.dq ], [ @169, %bb.fh ], [ @169, %bb.gl ], [ @169, %bb.gh ], [ @169, %bb.gd ], [ @169, %bb.fz ], [ @169, %bb.fu ], [ @169, %bb.fq ], [ @169, %bb.fl ], [ @170, %bb.cj ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.ai ], [ @165, %bb.al ], [ @165, %bb.an ], [ @166, %.thread.i ], [ @166, %bb.af ]
  store i32 3, ptr %0, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink206, ptr %i.adb, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adc, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.add, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ade, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  br label %.loopexit296.i

.loopexit296.i:                                   ; preds = %bb.hg, %bb.gp, %bb.bw, %.loopexit298.i, %.thread.thread.i, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit194.i, %.loopexit.i, %bb.gy, %.thread277.i, %.loopexit296.i.sink.split, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit.i
  %i.adf = load ptr, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.adg = icmp eq ptr %i.adf, null
  br i1 %i.adg, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i, label %bb.hu

bb.hu:                                            ; preds = %.loopexit296.i
  %i.adh = getelementptr inbounds i8, ptr %i.adf, i64 -8 ; 2 uses
  %i.adi = load i64, ptr %i.adh, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adh, i64 noundef %i.adi, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i: ; preds = %bb.hu, %.loopexit296.i
  %i.adj = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.adk = icmp eq ptr %i.adj, null
  br i1 %i.adk, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i, label %bb.hv

bb.hv:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.adl = getelementptr inbounds i8, ptr %i.adj, i64 -8 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adl, i64 noundef %i.adm, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i: ; preds = %bb.hv, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit.i
  %i.adn = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.ado = icmp eq ptr %i.adn, null
  br i1 %i.ado, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i, label %bb.hw

bb.hw:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i
  %i.adp = getelementptr inbounds i8, ptr %i.adn, i64 -8 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adp, i64 noundef %i.adq, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i: ; preds = %bb.hw, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit246.i
  %i.adr = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split

bb.hx:                                            ; preds = %bb.go
  %i.adt = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.adu = icmp eq i64 %i.adt, -1
  br i1 %i.adu, label %bb.hy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i", !prof !4

bb.hy:                                            ; preds = %bb.hx
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i": ; preds = %bb.hx
  %i.adv = add nuw i64 %i.adt, 1
  store i64 %i.adv, ptr %i.cl, align 8
  %i.adw = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.adx = icmp eq i64 %i.adw, -1
  br i1 %i.adx, label %bb.hz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i, !prof !4

bb.hz:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i251.i"
  %i.ady = add nuw i64 %i.adw, 1
  store i64 %i.ady, ptr %i.cv, align 8
  %i.adz = load i64, ptr %i.dd, align 8, !noundef !6
  %i.aea = add i64 %i.adz, -1
  store i64 %i.aea, ptr %i.dd, align 8
  %i.aeb = getelementptr i8, ptr %i.vs, i64 1
  store ptr %i.aeb, ptr %i.cm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aec = load ptr, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.aed = load ptr, ptr %i.bn, align 8, !noundef !6
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = ptrtoint ptr %i.aec to i64
  %i.aeg = sub i64 %i.aee, %i.aef                 ; 2 uses
  %.152.i = select i1 %1, i32 2, i32 3            ; 2 uses
  %i.aeh = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, null
  br i1 %i.aei, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i, label %bb.ia

bb.ia:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i
  %i.aej = getelementptr inbounds i8, ptr %i.aeh, i64 -8 ; 2 uses
  %i.aek = load i64, ptr %i.aej, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aej, i64 noundef %i.aek, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i: ; preds = %bb.ia, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit252.i
  %i.ael = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.aem = icmp eq ptr %i.ael, null
  br i1 %i.aem, label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i, label %bb.ib

bb.ib:                                            ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i
  %i.aen = getelementptr inbounds i8, ptr %i.ael, i64 -8 ; 2 uses
  %i.aeo = load i64, ptr %i.aen, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aen, i64 noundef %i.aeo, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i

_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i: ; preds = %bb.ib, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit253.i
  %i.aep = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18, label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split

_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split: ; preds = %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i
  %.sink211 = phi ptr [ %i.aep, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %i.adr, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.8.116.ph = phi i32 [ %.152.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.7.114.ph = phi i64 [ %i.aeg, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.sroa.6.112.ph = phi ptr [ %i.aec, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %.ph = phi ptr [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ]
  %i.aer = getelementptr inbounds i8, ptr %.sink211, i64 -8 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aer, i64 noundef %i.aes, i64 noundef 8) #21
  br label %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18

_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18: ; preds = %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i
  %.sroa.8.116 = phi i32 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %.152.i, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.8.116.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %.sroa.7.114 = phi i64 [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %i.aeg, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.7.114.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %.sroa.6.112 = phi ptr [ undef, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ %i.aec, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.sroa.6.112.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  %i.aet = phi ptr [ @14, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit247.i ], [ @15, %_ZN14unsafe_libyaml3api9yaml_free17hb7774c5cae98b8aeE.exit254.i ], [ %.ph, %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aeu = load i8, ptr %i.aet, align 1, !range !10, !noundef !6
  %i.aev = trunc nuw i8 %i.aeu to i1
  br i1 %i.aev, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %_ZN14unsafe_libyaml7scanner28yaml_parser_scan_flow_scalar17hb6aa98cbdf3e4c5eE.exit.thread18
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.aex = load ptr, ptr %i.aew, align 8, !noundef !6 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aez = load ptr, ptr %i.aey, align 8, !noundef !6
  %i.afa = icmp eq ptr %i.aex, %i.aez
  br i1 %i.afa, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_ZN14unsafe_libyaml3api17yaml_queue_extend17h15453e27414f8477E(ptr noundef nonnull %i.afb, ptr noundef nonnull %i.afc, ptr noundef nonnull %i.aew, ptr noundef nonnull %i.aey)
  %.pre = load ptr, ptr %i.aew, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ic, %bb.id
  %i.afd = phi ptr [ %i.aex, %bb.ic ], [ %.pre, %bb.id ] ; 8 uses
  store i32 21, ptr %i.afd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afd, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  store ptr %.sroa.6.112, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  store i64 %.sroa.7.114, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  store i32 %.sroa.8.116, ptr %.sroa.8.0..sroa_idx, align 8
end_hunk_1
