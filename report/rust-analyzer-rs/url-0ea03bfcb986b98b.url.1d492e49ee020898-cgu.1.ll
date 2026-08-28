Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.1?download=true
inline.NumInlined: 295
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser14parse_relative:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bw

.body.thread:                                     ; preds = %bb.an, %.body.thread155
  %eh.lpad-body154 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread155 ], [ %i.gg, %bb.an ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21
          to label %common.resume unwind label %bb.by

bb.by:                                            ; preds = %.body.thread
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser16parse_path_start(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef range(i8 0, 3) %1, ptr noalias nofree noundef captures(none) dereferenceable(1) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 8 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %.not.i11.i.i = icmp eq ptr %3, %4
  br i1 %.not.i11.i.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i
  %i.e = phi ptr [ %.sroa.0.0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i ], [ %3, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.e, align 1, !noalias !561, !noundef !13 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !561, !noundef !13
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i
  %i.t = icmp ne ptr %i.l, %4
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !561, !noundef !13
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %4
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !561, !noundef !13
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i ] ; 2 uses
  switch i32 %spec.select.i.ph.i.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit [
    i32 9, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i
    i32 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i
    i32 13, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i: ; preds = %bb.c, %bb.c, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, %4
  br i1 %.not.i.i.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph.i.i

_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i, %bb.a
  %.sroa.0.1 = phi ptr [ %3, %bb.a ], [ %.sroa.0.0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i ], [ %.sroa.0.0, %bb.c ]
  %.sroa.0.0.i.i = phi i32 [ -1, %bb.a ], [ %spec.select.i.ph.i.i, %bb.c ], [ -1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i ] ; 3 uses
  %.not = icmp eq i8 %1, 2
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit
  %i.an = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 30)
  switch i32 %i.ao, label %bb.h [
    i32 0, label %bb.f
    i32 16, label %bb.g
    i32 9, label %bb.g
    i32 12, label %bb.f
  ]

bb.e:                                             ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit
  %i.ap = icmp eq i32 %.sroa.0.0.i.i, 92
  br i1 %i.ap, label %bb.j, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.h
  %i.aq = tail call { ptr, ptr } @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser10parse_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i8 noundef 2, ptr noalias nofree noundef nonnull dereferenceable(1) %2, i64 noundef %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ar = insertvalue { ptr, ptr } poison, ptr %3, 0
  %i.as = insertvalue { ptr, ptr } %i.ar, ptr %4, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !570, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.c
  store i8 47, ptr %i.av, align 1
  %i.aw = add nuw i64 %i.c, 1
  store i64 %i.aw, ptr %i.b, align 8, !alias.scope !570
  br label %bb.f

bb.i:                                             ; preds = %bb.g, %bb.m, %bb.n, %bb.f
  %.merged = phi { ptr, ptr } [ %i.bl, %bb.n ], [ %i.bk, %bb.m ], [ %i.as, %bb.g ], [ %i.aq, %bb.f ]
  ret { ptr, ptr } %.merged

_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit: ; preds = %bb.k, %bb.j, %bb.e
  %i.ax = phi i64 [ %.pre, %bb.k ], [ %i.c, %bb.j ], [ %i.c, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 47, ptr %i.a, align 4
  %i.ba = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ba, label %bb.n, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.bb, align 8, !noundef !13 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val17 = load ptr, ptr %i.bc, align 8, !nonnull !13, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val17, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !13, !nonnull !13
  tail call void %i.be(ptr noundef nonnull %.val, i8 noundef 0) #19, !inline_history !249
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit

bb.l:                                             ; preds = %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit
  %i.bf = load i64, ptr %i.b, align 8, !alias.scope !573, !noundef !13 ; 3 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.bh = load ptr, ptr %i.ay, align 8, !alias.scope !573, !nonnull !13, !noundef !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 47, ptr %i.bi, align 1
  %i.bj = add nuw i64 %i.bf, 1
  store i64 %i.bj, ptr %i.b, align 8, !alias.scope !573
  switch i32 %.sroa.0.0.i.i, label %bb.n [
    i32 47, label %bb.m
    i32 92, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bk = call { ptr, ptr } @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser10parse_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i8 noundef %1, ptr noalias nofree noundef nonnull dereferenceable(1) %2, i64 noundef %i.c, ptr noundef nonnull %.sroa.0.1, ptr noundef nonnull %4)
  br label %bb.i

bb.n:                                             ; preds = %bb.l, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit
  %i.bl = call { ptr, ptr } @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser10parse_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i8 noundef %1, ptr noalias nofree noundef nonnull dereferenceable(1) %2, i64 noundef %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser18after_double_slash(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noundef nonnull %2, ptr noundef %3, i8 noundef range(i8 0, 3) %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [5 x i8], align 4                 ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [17 x i8], align 8                ; 3 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.1375 = alloca i64, align 8               ; 14 uses
  %.sroa.22 = alloca i64, align 8                 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !576, !noundef !13 ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.b unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.thread80.loopexit:                          ; preds = %.lr.ph.i102.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtB1p_13SpecExtendStr16spec_extend_into0E0Cs2vT3jxLudSK_3url.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread80.loopexit.split-lp.loopexit:        ; preds = %bb.ae, %bb.ag, %.noexc44
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url.exit.i.i.i, %bb.ak, %.loopexit.i, %bb.aa, %bb.y, %bb.a, %bb.b, %_RNvXs4_NtCs2vT3jxLudSK_3url6parsercNtB5_7Pattern12split_prefix.exit.thread.i, %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !576, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i8 47, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.n, 1                  ; 2 uses
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !576
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.c unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !579, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 47, ptr %i.u, align 1
  %i.v = add nuw nsw i64 %i.n, 2                  ; 3 uses
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !579
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1375)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %.not.i11.i.i156.i = icmp eq ptr %2, %3
  br i1 %.not.i11.i.i156.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i, label %.lr.ph.i.i.preheader.lr.ph.i

.lr.ph.i.i.preheader.lr.ph.i:                     ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not74.i = icmp eq i8 %4, 2
  br label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i, %.lr.ph.i.i.preheader.lr.ph.i
  %.sroa.0.0161.i = phi i32 [ 0, %.lr.ph.i.i.preheader.lr.ph.i ], [ %i.bj, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 3 uses
  %.sroa.06.0160.i = phi i32 [ undef, %.lr.ph.i.i.preheader.lr.ph.i ], [ %.sroa.06.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 7 uses
  %.sroa.38.0159.i = phi ptr [ null, %.lr.ph.i.i.preheader.lr.ph.i ], [ %.sroa.38.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 8 uses
  %.sroa.8.0158.i = phi ptr [ undef, %.lr.ph.i.i.preheader.lr.ph.i ], [ %.sroa.8.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 7 uses
  %.sroa.0106.0157.i = phi ptr [ %2, %.lr.ph.i.i.preheader.lr.ph.i ], [ %.sroa.0106.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %i.y = phi ptr [ %.sroa.0106.1.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i ], [ %.sroa.0106.0157.i, %.lr.ph.i.i.preheader.i ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.y, align 1, !noalias !587, !noundef !13 ; 5 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = and i8 %i.aa, 31
  %i.ad = zext nneg i8 %i.ac to i32               ; 3 uses
  %i.ae = icmp ne ptr %i.z, %3
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 3 uses
  %i.ag = load i8, ptr %i.z, align 1, !noalias !587, !noundef !13
  %i.ah = shl nuw nsw i32 %i.ad, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.aa, -33
  br i1 %i.al, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = zext nneg i8 %i.aa to i32
  br label %bb.e

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i
  %i.an = icmp ne ptr %i.af, %3
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 3 ; 3 uses
  %i.ap = load i8, ptr %i.af, align 1, !noalias !587, !noundef !13
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.aa, -17
  br i1 %i.aw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i
  %i.ax = icmp ne ptr %i.ao, %3
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.az = load i8, ptr %i.ao, align 1, !noalias !587, !noundef !13
  %i.ba = shl nuw nsw i32 %i.ad, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i
  %.sroa.0106.1.i = phi ptr [ %i.z, %bb.d ], [ %i.ay, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i ] ; 6 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.am, %bb.d ], [ %i.bg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i ]
  switch i32 %spec.select.i.ph.i.i.i, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i [
    i32 9, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i
    i32 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i
    i32 13, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i
    i32 92, label %bb.g
    i32 64, label %bb.f
    i32 47, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i
    i32 63, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i
    i32 35, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i: ; preds = %bb.e, %bb.e, %bb.e
  %.not.i.i.i.i = icmp eq ptr %.sroa.0106.1.i, %3
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i.i.i

_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.g, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i, %bb.e, %bb.e, %bb.e
  %.sroa.8.0154.i = phi ptr [ %.sroa.8.0158.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i ], [ %.sroa.8.0158.i, %bb.e ], [ %.sroa.8.0158.i, %bb.e ], [ %.sroa.8.0158.i, %bb.e ], [ %.sroa.8.0158.i, %bb.g ], [ %.sroa.8.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 12 uses
  %.sroa.38.0152.i = phi ptr [ %.sroa.38.0159.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i ], [ %.sroa.38.0159.i, %bb.e ], [ %.sroa.38.0159.i, %bb.e ], [ %.sroa.38.0159.i, %bb.e ], [ %.sroa.38.0159.i, %bb.g ], [ %.sroa.38.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 9 uses
  %.sroa.06.0150.i = phi i32 [ %.sroa.06.0160.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i ], [ %.sroa.06.0160.i, %bb.e ], [ %.sroa.06.0160.i, %bb.e ], [ %.sroa.06.0160.i, %bb.e ], [ %.sroa.06.0160.i, %bb.g ], [ %.sroa.06.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i ] ; 3 uses
  %.not75.i = icmp eq ptr %.sroa.38.0152.i, null
  br i1 %.not75.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i._RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i_crit_edge, label %bb.h

_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i._RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i_crit_edge: ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %.pre223 = load i64, ptr %i.m, align 8, !alias.scope !585, !noalias !582
  br label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i

_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i: ; preds = %bb.f
  %.not81.i = icmp eq ptr %.sroa.38.0159.i, null
  %..i = select i1 %.not81.i, i8 2, i8 10
  %.val85.i = load ptr, ptr %i.x, align 8, !alias.scope !585, !noalias !582, !nonnull !13, !noundef !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val85.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !13, !noalias !582, !nonnull !13
  invoke void %i.bi(ptr noundef nonnull %.val84.i, i8 noundef %..i) #19
          to label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !596

_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i: ; preds = %bb.e, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i, %bb.g, %bb.f
  %.sroa.8.1.i = phi ptr [ %3, %bb.f ], [ %.sroa.8.0158.i, %bb.g ], [ %3, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i ], [ %.sroa.8.0158.i, %bb.e ] ; 2 uses
  %.sroa.38.1.i = phi ptr [ %.sroa.0106.1.i, %bb.f ], [ %.sroa.38.0159.i, %bb.g ], [ %.sroa.0106.1.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i ], [ %.sroa.38.0159.i, %bb.e ] ; 2 uses
  %.sroa.06.1.i = phi i32 [ %.sroa.0.0161.i, %bb.f ], [ %.sroa.06.0160.i, %bb.g ], [ %.sroa.0.0161.i, %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i ], [ %.sroa.06.0160.i, %bb.e ] ; 2 uses
  %i.bj = add i32 %.sroa.0.0161.i, 1
  %.not.i11.i.i.i = icmp eq ptr %.sroa.0106.1.i, %3
  br i1 %.not.i11.i.i.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %.lr.ph.i.i.preheader.i

bb.f:                                             ; preds = %bb.e
  %.val84.i = load ptr, ptr %i.w, align 8, !alias.scope !585, !noalias !582, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq ptr %.val84.i, null
  br i1 %.not.i.i, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.sink.split.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not74.i, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser13log_violation.exit.i, label %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i

bb.h:                                             ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %i.bk = icmp eq i32 %.sroa.06.0150.i, 0
  br i1 %i.bk, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bl = icmp sgt i32 %.sroa.06.0150.i, 0
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.thread.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bm = ptrtoint ptr %3 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.p

_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i: ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i._RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i_crit_edge, %bb.c
  %i.bp = phi i64 [ %.pre223, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.i._RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i_crit_edge ], [ %i.v, %bb.c ] ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp samesign ult i64 %i.bp, 4294967296
  br i1 %i.br, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i
  %i.bs = trunc nuw i64 %i.bp to i32
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0154.i) ]
  %.not.i11.i.i92.i = icmp eq ptr %.sroa.38.0152.i, %.sroa.8.0154.i
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser18after_double_slash:bb.a
bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r
  %i.fc = icmp eq ptr %.sroa.0.1.i, %3
  br i1 %i.fc, label %.loopexit.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.s
  %i.fd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 2048
  br i1 %i.fd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 65536
  %..i.i = select i1 %i.fe, i64 3, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.03.0.i.i = phi i64 [ 2, %bb.u ], [ %..i.i, %bb.v ], [ 1, %bb.s ] ; 5 uses
  %.not.i.i.i = icmp ult i64 %.sroa.03.0.i.i, %i.fa
  br i1 %.not.i.i.i, label %bb.x, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.w
  %i.ff = icmp eq i64 %.sroa.03.0.i.i, %i.fa
  br i1 %i.ff, label %_RNvMs3_NtCs2vT3jxLudSK_3url6parserNtB5_5Input9next_utf8.exit.i, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.03.0.i.i
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !612, !noalias !615, !noundef !13
  %i.fi = icmp sgt i8 %i.fh, -65
  br i1 %i.fi, label %_RNvMs3_NtCs2vT3jxLudSK_3url6parserNtB5_5Input9next_utf8.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %i.fa, i64 noundef 0, i64 noundef %.sroa.03.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
          to label %.noexc40 unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.y
  unreachable

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.fj = load i64, ptr %i.m, align 8, !alias.scope !585, !noalias !582, !noundef !13 ; 4 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp samesign ult i64 %i.fj, 4294967296
  br i1 %i.fl, label %.split.i, label %.loopexit

._crit_edge.thread.thread.i:                      ; preds = %.preheader.i
  %i.fm = load i64, ptr %i.m, align 8, !alias.scope !585, !noalias !582, !noundef !13 ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp samesign ult i64 %i.fm, 4294967296
  br i1 %i.fo, label %.split.thread.i, label %.loopexit

.split.thread.i:                                  ; preds = %._crit_edge.thread.thread.i
  %i.fp = trunc nuw i64 %i.fm to i32
  br label %.loopexit.sink.split

.split.i:                                         ; preds = %._crit_edge.thread.i
  %i.fq = trunc nuw i64 %i.fj to i32              ; 2 uses
  br i1 %i.dn, label %bb.aa, label %.loopexit.sink.split

bb.z:                                             ; preds = %._crit_edge.i
  br i1 %i.dn, label %._crit_edge, label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.z
  %.pre = load i64, ptr %i.m, align 8, !alias.scope !616, !noalias !582
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %._crit_edge.thread236.i, %.split.i
  %i.fr = phi i64 [ %i.fj, %.split.i ], [ %.pre, %._crit_edge ], [ %i.ga, %._crit_edge.thread236.i ] ; 3 uses
  %.sroa.061.0227.i = phi i32 [ %i.fq, %.split.i ], [ %.sroa.442.1.i, %._crit_edge ], [ %i.gd, %._crit_edge.thread236.i ]
  %i.fs = icmp sgt i64 %i.fr, -1
  call void @llvm.assume(i1 %i.fs)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %.noexc41 unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.aa
  %i.ft = load ptr, ptr %i.p, align 8, !alias.scope !616, !noalias !582, !nonnull !13, !noundef !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr
  store i8 64, ptr %i.fu, align 1, !noalias !582
  %i.fv = add nuw i64 %i.fr, 1
  store i64 %i.fv, ptr %i.m, align 8, !alias.scope !616, !noalias !582
  br label %.loopexit.sink.split

_RNvMs3_NtCs2vT3jxLudSK_3url6parserNtB5_5Input9next_utf8.exit.i: ; preds = %bb.x, %.split.i.i.i
  %i.fw = add nsw i32 %.sroa.068.0173.i, -1
  %i.fx = icmp ne i32 %.sroa.4.0.i.ph.i.i, 58
  %.not77.i = icmp ne i32 %.sroa.040.0170.i, 0
  %or.cond82.i = select i1 %i.fx, i1 true, i1 %.not77.i
  br i1 %or.cond82.i, label %bb.ab, label %bb.ac

.loopexit.i:                                      ; preds = %bb.p, %bb.t
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20
          to label %.noexc42 unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.loopexit.i
  unreachable

bb.ab:                                            ; preds = %_RNvMs3_NtCs2vT3jxLudSK_3url6parserNtB5_5Input9next_utf8.exit.i
  %i.fy = trunc nuw i8 %.sroa.037.0172.i to i1
  %not..i = xor i1 %i.fy, true
  %spec.select.i = select i1 %not..i, i1 true, i1 %.sroa.039.0171.i
  %i.fz = load ptr, ptr %i.w, align 8, !alias.scope !585, !noalias !582, !noundef !13 ; 2 uses
  %.not78.i = icmp eq ptr %i.fz, null
  br i1 %.not78.i, label %.noexc44, label %bb.ag

bb.ac:                                            ; preds = %_RNvMs3_NtCs2vT3jxLudSK_3url6parserNtB5_5Input9next_utf8.exit.i
  %i.ga = load i64, ptr %i.m, align 8, !alias.scope !585, !noalias !582, !noundef !13 ; 6 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp samesign ult i64 %i.ga, 4294967296
  br i1 %i.gc, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.gd = trunc nuw i64 %i.ga to i32              ; 3 uses
  %.not79.i = icmp eq i32 %.sroa.068.0173.i, 1
  br i1 %.not79.i, label %._crit_edge.thread236.i, label %bb.ae

._crit_edge.thread236.i:                          ; preds = %bb.ad
  %i.ge = trunc nuw i8 %.sroa.037.0172.i to i1
  %i.gf = select i1 %.sroa.039.0171.i, i1 true, i1 %i.ge
  br i1 %i.gf, label %bb.aa, label %.loopexit.sink.split

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %.noexc43 unwind label %.body.thread80.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %bb.ae
  %i.gg = load ptr, ptr %i.p, align 8, !alias.scope !619, !noalias !582, !nonnull !13, !noundef !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ga
  store i8 58, ptr %i.gh, align 1, !noalias !582
  %i.gi = add nuw nsw i64 %i.ga, 1
  store i64 %i.gi, ptr %i.m, align 8, !alias.scope !619, !noalias !582
  br label %bb.af

bb.af:                                            ; preds = %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i, %.noexc43
  %.sroa.442.1.i = phi i32 [ %i.gd, %.noexc43 ], [ %.sroa.442.0169.i, %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i ] ; 3 uses
  %.sroa.040.1.i = phi i32 [ 1, %.noexc43 ], [ %.sroa.040.0170.i, %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i ] ; 2 uses
  %.sroa.039.1.i = phi i1 [ %.sroa.039.0171.i, %.noexc43 ], [ %spec.select.i, %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i ] ; 2 uses
  %.sroa.037.1.i = phi i8 [ 1, %.noexc43 ], [ %.sroa.037.0172.i, %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i ] ; 2 uses
  %i.gj = icmp sgt i32 %.sroa.068.0173.i, 1
  br i1 %i.gj, label %bb.p, label %._crit_edge.i

bb.ag:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %i.x, align 8, !alias.scope !585, !noalias !582, !nonnull !13, !align !43, !noundef !13
  %i.gl = getelementptr i8, ptr %i.gk, i64 40
  %.val86.i = load ptr, ptr %i.gl, align 8, !noalias !582
  invoke fastcc void @_RNvNtCs2vT3jxLudSK_3url6parser20check_url_code_point(ptr noundef nonnull %i.fz, ptr %.val86.i, i32 noundef %.sroa.4.0.i.ph.i.i, ptr nonnull %.sroa.0.1.i, ptr nonnull %3)
          to label %.noexc44 unwind label %.body.thread80.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %bb.ag, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !622
  store ptr %i.dp, ptr %i.h, align 8, !noalias !622
  store i64 %.sroa.03.0.i.i, ptr %i.bn, align 8, !noalias !622
  store ptr @32, ptr %i.bo, align 8, !noalias !622
  %i.gm = invoke { ptr, i64 } @_RNvXCslj2VLHWbzoG_16percent_encodingNtB2_13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc45 unwind label %.body.thread80.loopexit.split-lp.loopexit ; 2 uses

.noexc45:                                         ; preds = %.noexc44
  %i.gn = extractvalue { ptr, i64 } %i.gm, 0      ; 2 uses
  %.not4.i.i = icmp eq ptr %i.gn, null
  br i1 %.not4.i.i, label %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %.noexc45, %.noexc47
  %i.go = phi ptr [ %i.gy, %.noexc47 ], [ %i.gn, %.noexc45 ]
  %i.gp = phi { ptr, i64 } [ %i.gx, %.noexc47 ], [ %i.gm, %.noexc45 ]
  %i.gq = extractvalue { ptr, i64 } %i.gp, 1      ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.gq)
          to label %.noexc46 unwind label %.body.thread80.loopexit

.noexc46:                                         ; preds = %.lr.ph.i102.i
  %i.gr = load i64, ptr %i.m, align 8, !alias.scope !623, !noalias !628, !noundef !13 ; 3 uses
  %i.gs = icmp sgt i64 %i.gr, -1
  call void @llvm.assume(i1 %i.gs)
  %.not.i.i.i.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtB1p_13SpecExtendStr16spec_extend_into0E0Cs2vT3jxLudSK_3url.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc46
  %i.gt = load ptr, ptr %i.p, align 8, !alias.scope !623, !noalias !628, !nonnull !13, !noundef !13
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gu, ptr nonnull readonly align 1 %i.go, i64 %i.gq, i1 false), !noalias !582
  %.pre.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !623, !noalias !628
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtB1p_13SpecExtendStr16spec_extend_into0E0Cs2vT3jxLudSK_3url.exit.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtB1p_13SpecExtendStr16spec_extend_into0E0Cs2vT3jxLudSK_3url.exit.i.i: ; preds = %bb.ah, %.noexc46
  %i.gv = phi i64 [ %.pre.i.i.i.i.i, %bb.ah ], [ %i.gr, %.noexc46 ]
  %i.gw = add i64 %i.gv, %i.gq
  store i64 %i.gw, ptr %i.m, align 8, !alias.scope !623, !noalias !628
  %i.gx = invoke { ptr, i64 } @_RNvXCslj2VLHWbzoG_16percent_encodingNtB2_13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc47 unwind label %.body.thread80.loopexit ; 2 uses

.noexc47:                                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtB1p_13SpecExtendStr16spec_extend_into0E0Cs2vT3jxLudSK_3url.exit.i.i
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0      ; 2 uses
  %.not.i103.i = icmp eq ptr %i.gy, null
  br i1 %.not.i103.i, label %_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i, label %.lr.ph.i102.i

_RINvYNtCslj2VLHWbzoG_16percent_encoding13PercentEncodeNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvBQ_8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringB3_NtB2p_13SpecExtendStr16spec_extend_into0E0ECs2vT3jxLudSK_3url.exit.i: ; preds = %.noexc47, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !622
  br label %bb.af

.loopexit.sink.split:                             ; preds = %.split.thread.i, %.split.i, %bb.z, %.noexc41, %._crit_edge.thread236.i, %bb.i, %bb.o
  %.sroa.38.0152.i.sink = phi ptr [ %2, %bb.i ], [ %.sroa.38.0152.i, %bb.o ], [ %.sroa.38.0152.i, %._crit_edge.thread236.i ], [ %.sroa.38.0152.i, %.noexc41 ], [ %.sroa.38.0152.i, %bb.z ], [ %.sroa.38.0152.i, %.split.i ], [ %.sroa.38.0152.i, %.split.thread.i ]
  %.sroa.0.0.ph = phi i32 [ %i.bs, %bb.i ], [ %i.dk, %bb.o ], [ %i.gd, %._crit_edge.thread236.i ], [ %.sroa.061.0227.i, %.noexc41 ], [ %.sroa.442.1.i, %bb.z ], [ %i.fq, %.split.i ], [ %i.fp, %.split.thread.i ]
  %.sink.i.ph = phi ptr [ %3, %bb.i ], [ %.sroa.8.0154.i, %bb.o ], [ %.sroa.8.0154.i, %._crit_edge.thread236.i ], [ %.sroa.8.0154.i, %.noexc41 ], [ %.sroa.8.0154.i, %bb.z ], [ %.sroa.8.0154.i, %.split.i ], [ %.sroa.8.0154.i, %.split.thread.i ]
  %6 = ptrtoint ptr %.sroa.38.0152.i.sink to i64
  store i64 %6, ptr %.sroa.1375, align 8, !alias.scope !582, !noalias !585
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %.loopexit.sink.split, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i, %bb.n, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i, %bb.m, %._crit_edge.thread.thread.i, %._crit_edge.thread.i
  %.sroa.0.0 = phi i32 [ 0, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ 9, %._crit_edge.thread.i ], [ 9, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i ], [ 9, %._crit_edge.thread.thread.i ], [ 0, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ 9, %bb.m ], [ 0, %bb.n ], [ 0, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ 9, %bb.ac ] ; 2 uses
  %.sink278.i.sroa.phi = phi ptr [ %.sroa.1375, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ %.sroa.1375, %._crit_edge.thread.i ], [ %.sroa.1375, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i ], [ %.sroa.1375, %._crit_edge.thread.thread.i ], [ %.sroa.1375, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ %.sroa.22, %.loopexit.sink.split ], [ %.sroa.1375, %bb.m ], [ %.sroa.1375, %bb.n ], [ %.sroa.1375, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ %.sroa.1375, %bb.ac ]
  %.sink.i = phi ptr [ null, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ null, %._crit_edge.thread.i ], [ null, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.thread.thread.i ], [ null, %._crit_edge.thread.thread.i ], [ null, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ %.sink.i.ph, %.loopexit.sink.split ], [ null, %bb.m ], [ null, %bb.n ], [ null, %_RNvXs7_NtCs2vT3jxLudSK_3url6parserNtB5_5InputNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit101.i ], [ null, %bb.ac ]
  store ptr %.sink.i, ptr %.sink278.i.sroa.phi, align 8, !alias.scope !582, !noalias !585
  %.sroa.1375.0..sroa.1375.0..sroa.1375.0..sroa.1375.8. = load i64, ptr %.sroa.1375, align 8, !noundef !13 ; 2 uses
  %7 = inttoptr i64 %.sroa.1375.0..sroa.1375.0..sroa.1375.0..sroa.1375.8. to ptr
  %i.gz = icmp eq i64 %.sroa.1375.0..sroa.1375.0..sroa.1375.0..sroa.1375.8., 0
  br i1 %i.gz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.loopexit
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1375)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %bb.ca

bb.aj:                                            ; preds = %.loopexit
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.16..sroa.6.0.copyload27 = load i64, ptr %.sroa.22, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1375)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  %i.ha = load i64, ptr %i.m, align 8, !noundef !13 ; 4 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %.not38 = icmp eq i64 %i.v, %i.ha
  %i.hc = icmp samesign ult i64 %i.ha, 4294967296
  br i1 %i.hc, label %bb.ak, label %bb.ca

bb.ak:                                            ; preds = %bb.aj
  %8 = inttoptr i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.16..sroa.6.0.copyload27 to ptr
  %i.hd = trunc nuw i64 %i.ha to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !639
  invoke void @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser10parse_host(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull %7, ptr noundef %8, i8 noundef range(i8 0, 3) %4)
          to label %.noexc52 unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.ak
  %i.he = load i64, ptr %i.f, align 8, !range !116, !noalias !639, !noundef !13 ; 2 uses
  %i.hf = icmp eq i64 %i.he, -2
  %.lcssa14.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.lcssa14.i.sroa.gep90.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  %.lcssa14.i.sroa.gep91.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %.lcssa14.i.sroa.gep92.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hh = load i8, ptr %i.hg, align 8, !noalias !639 ; 2 uses
  br i1 %i.hf, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread, label %bb.al

_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread: ; preds = %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !639
  br label %bb.bu

bb.al:                                            ; preds = %.noexc52
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.355.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.530.0..sroa_idx.i, i64 15, i1 false), !noalias !639
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.631.0.copyload.i = load ptr, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !639, !nonnull !13, !noundef !13 ; 6 uses
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.732.0.copyload.i = load ptr, ptr %.sroa.732.0..sroa_idx.i, align 8, !noalias !639 ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !639
  store i64 %i.he, ptr %i.g, align 8, !noalias !639
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.hh, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !639
  store ptr %i.g, ptr %i.e, align 8, !noalias !639
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs2_NtCs2vT3jxLudSK_3url4hostINtB5_4HostINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEENtNtCshzWfHUSfYae_4core3fmt7Display3fmtB7_, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !639
  %i.hi = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34, ptr noundef nonnull @33, ptr noundef nonnull %i.e)
          to label %bb.am unwind label %bb.bs, !noalias !634

bb.am:                                            ; preds = %bb.al
  br i1 %i.hi, label %bb.an, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2vT3jxLudSK_3url.exit.i, !prof !119

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20
          to label %.noexc.i unwind label %bb.bs, !noalias !634

.noexc.i:                                         ; preds = %bb.an
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2vT3jxLudSK_3url.exit.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !639
  %i.hj = load i64, ptr %i.m, align 8, !alias.scope !637, !noalias !634, !noundef !13 ; 8 uses
  %i.hk = icmp sgt i64 %i.hj, -1
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ult i64 %i.hj, 4294967296
  br i1 %i.hl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2vT3jxLudSK_3url.exit.i
  %.pre.i = load i64, ptr %i.g, align 8, !range !41, !alias.scope !640, !noalias !639
  br label %.loopexit.i49

bb.ap:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2vT3jxLudSK_3url.exit.i
  %i.hm = trunc nuw i64 %i.hj to i32
  %i.hn = load i64, ptr %i.g, align 8, !range !41, !noalias !639, !noundef !13 ; 5 uses
  %i.ho = icmp sgt i64 %i.hn, -9223372036854775807
  %i.hp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !639
  %i.hr = icmp eq i64 %i.hq, 0
  %or.cond.i48 = select i1 %i.ho, i1 %i.hr, i1 false
  br i1 %or.cond.i48, label %bb.aw, label %bb.at

.loopexit.i49:                                    ; preds = %bb.bb, %bb.bf, %bb.bd, %bb.aw, %bb.ao
  %i.hs = phi i8 [ 9, %bb.ao ], [ 0, %bb.aw ], [ 2, %bb.bf ], [ 2, %bb.bd ], [ 2, %bb.bb ]
  %i.ht = phi i64 [ %.pre.i, %bb.ao ], [ %i.hn, %bb.aw ], [ %i.hn, %bb.bf ], [ %i.hn, %bb.bd ], [ %i.hn, %bb.bb ]
  switch i64 %i.ht, label %bb.aq [
    i64 -1, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread262
    i64 -9223372036854775807, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread262
    i64 -9223372036854775808, label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread262
  ]

bb.aq:                                            ; preds = %.loopexit.i49
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url.exit.i.i.i unwind label %bb.ar, !noalias !634

bb.ar:                                            ; preds = %bb.aq
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.thread unwind label %bb.as, !noalias !634

bb.as:                                            ; preds = %bb.ar
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !634
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url.exit.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread262 unwind label %.body.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser19parse_host_and_port.exit.thread262: ; preds = %.loopexit.i49, %.loopexit.i49, %.loopexit.i49, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2vT3jxLudSK_3url.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !639
  br label %bb.bu

bb.at:                                            ; preds = %bb.aw, %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.732.0.copyload.i) ]
  %.not.i11.i.i.i.i = icmp eq ptr %.sroa.631.0.copyload.i, %.sroa.732.0.copyload.i
  br i1 %.not.i11.i.i.i.i, label %_RNvXs4_NtCs2vT3jxLudSK_3url6parsercNtB5_7Pattern12split_prefix.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i
  %i.hw = phi ptr [ %.sroa.094.0.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i ], [ %.sroa.631.0.copyload.i, %bb.at ] ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 3 uses
  %i.hy = load i8, ptr %i.hw, align 1, !noalias !643, !noundef !13 ; 5 uses
  %i.hz = icmp sgt i8 %i.hy, -1
  br i1 %i.hz, label %bb.au, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ia = and i8 %i.hy, 31
  %i.ib = zext nneg i8 %i.ia to i32               ; 3 uses
  %i.ic = icmp ne ptr %i.hx, %.sroa.732.0.copyload.i
  call void @llvm.assume(i1 %i.ic)
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 2 ; 3 uses
  %i.ie = load i8, ptr %i.hx, align 1, !noalias !643, !noundef !13
  %i.if = shl nuw nsw i32 %i.ib, 6
  %i.ig = and i8 %i.ie, 63
  %i.ih = zext nneg i8 %i.ig to i32               ; 2 uses
  %i.ii = or disjoint i32 %i.if, %i.ih
  %i.ij = icmp samesign ugt i8 %i.hy, -33
  br i1 %i.ij, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ik = zext nneg i8 %i.hy to i32
  br label %bb.av

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i
  %i.il = icmp ne ptr %i.id, %.sroa.732.0.copyload.i
  call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 3 ; 3 uses
  %i.in = load i8, ptr %i.id, align 1, !noalias !643, !noundef !13
  %i.io = shl nuw nsw i32 %i.ih, 6
  %i.ip = and i8 %i.in, 63
  %i.iq = zext nneg i8 %i.ip to i32
  %i.ir = or disjoint i32 %i.io, %i.iq            ; 2 uses
  %i.is = shl nuw nsw i32 %i.ib, 12
  %i.it = or disjoint i32 %i.ir, %i.is
  %i.iu = icmp samesign ugt i8 %i.hy, -17
  br i1 %i.iu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i.i, label %bb.av

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i
  %i.iv = icmp ne ptr %i.im, %.sroa.732.0.copyload.i
  call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ix = load i8, ptr %i.im, align 1, !noalias !643, !noundef !13
  %i.iy = shl nuw nsw i32 %i.ib, 18
  %i.iz = and i32 %i.iy, 1835008
  %i.ja = shl nuw nsw i32 %i.ir, 6
  %i.jb = and i8 %i.ix, 63
  %i.jc = zext nneg i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.ja, %i.jc
  %i.je = or disjoint i32 %i.jd, %i.iz
  br label %bb.av

bb.av:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i, %bb.au, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i
  %.sroa.094.0.i = phi ptr [ %i.hx, %bb.au ], [ %i.iw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i.i ], [ %i.im, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i ], [ %i.id, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i ] ; 3 uses
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.ik, %bb.au ], [ %i.je, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit16.i.i.i.i.i.i ], [ %i.it, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit14.i.i.i.i.i.i ], [ %i.ii, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2vT3jxLudSK_3url.exit12.i.i.i.i.i.i ]
  switch i32 %spec.select.i.ph.i.i.i.i, label %_RNvXs4_NtCs2vT3jxLudSK_3url6parsercNtB5_7Pattern12split_prefix.exit.thread.i [
    i32 9, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i
    i32 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i
    i32 13, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i
    i32 58, label %bb.ax
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i.i: ; preds = %bb.av, %bb.av, %bb.av
  %.not.i.i.i.i.i51 = icmp eq ptr %.sroa.094.0.i, %.sroa.732.0.copyload.i
  br i1 %.not.i.i.i.i.i51, label %_RNvXs4_NtCs2vT3jxLudSK_3url6parsercNtB5_7Pattern12split_prefix.exit.thread.i, label %.lr.ph.i.i.i.i

bb.aw:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !639
  store ptr %.sroa.631.0.copyload.i, ptr %i.b, align 8, !noalias !639
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.732.0.copyload.i, ptr %i.jf, align 8, !noalias !639
  %i.jg = call noundef zeroext i1 @_RNvXs5_NtCs2vT3jxLudSK_3url6parserReNtB5_7Pattern12split_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !639
  %.not70.i = icmp ne i8 %4, 2
  %or.cond.not = or i1 %.not70.i, %i.jg
  br i1 %or.cond.not, label %.loopexit.i49, label %bb.at

bb.ax:                                            ; preds = %bb.av
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ji = load i8, ptr %i.jh, align 8, !range !248, !alias.scope !637, !noalias !634, !noundef !13 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.ax
  %.sroa.09.0.i.i = phi i1 [ false, %bb.ax ], [ true, %bb.bb ] ; 2 uses
  %.sroa.06.0.i.i = phi i32 [ 0, %bb.ax ], [ %i.kw, %bb.bb ] ; 7 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.094.0.i, %bb.ax ], [ %.sroa.039.0.i.i, %bb.bb ] ; 7 uses
  %.not.i11.i.i.i71.i = icmp eq ptr %.sroa.0.0.i.i, %.sroa.732.0.copyload.i
  br i1 %.not.i11.i.i.i71.i, label %.thread.i.i, label %.lr.ph.i.i.i72.i

.lr.ph.i.i.i72.i:                                 ; preds = %bb.ay, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i75.i
  %i.jj = phi ptr [ %.sroa.039.0.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvXs7_NtCs2vT3jxLudSK_3url6parserNtB1l_5InputB6_4next0E0B1n_.exit.i.i.i75.i ], [ %.sroa.0.0.i.i, %bb.ay ] ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1 ; 3 uses
end_hunk_1
