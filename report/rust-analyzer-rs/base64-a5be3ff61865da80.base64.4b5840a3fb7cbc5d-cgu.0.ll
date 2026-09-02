Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base64-a5be3ff61865da80.base64.4b5840a3fb7cbc5d-cgu.0?download=true
inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !133, !noalias !134, !noundef !5 ; 3 uses
  %i.r = icmp eq i8 %i.q, 61
  br i1 %i.r, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19, !noalias !135
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !136, !noalias !137, !noundef !5
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.10111.0.ph.i = phi i64 [ %i.h, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.q, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.w, align 8, !alias.scope !127, !noalias !138
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.417.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10111.0.ph.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  %i.x = and i64 %i.l, 9223372036854775776        ; 11 uses
  %.not32.i = icmp samesign ugt i64 %i.x, %3
  br i1 %.not32.i, label %bb.h, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1116.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i1116.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.y = udiv i64 %5, 24                          ; 2 uses
  br label %.lr.ph.i

bb.h:                                             ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19, !noalias !139
  unreachable

.lr.ph.i:                                         ; preds = %bb.ck, %.lr.ph.preheader.i
  %.sroa.0116.01119.i = phi ptr [ %i.z, %bb.ck ], [ %2, %.lr.ph.preheader.i ] ; 33 uses
  %.sroa.6117.01118.i = phi i64 [ %i.aa, %bb.ck ], [ %i.x, %.lr.ph.preheader.i ]
  %.sroa.13.01117.i = phi i64 [ %i.ab, %bb.ck ], [ 0, %.lr.ph.preheader.i ] ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 32
  %i.aa = add i64 %.sroa.6117.01118.i, -32        ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.13.01117.i, 1
  %i.ac = mul nuw nsw i64 %.sroa.13.01117.i, 24   ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.13.01117.i, %i.y
  br i1 %exitcond.i, label %bb.av, label %bb.aw, !prof !11

._crit_edge.i:                                    ; preds = %bb.ck, %.preheader.i
  %i.ad = lshr exact i64 %i.x, 2                  ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 3                ; 3 uses
  %i.af = icmp samesign ult i64 %i.m, %i.ad
  br i1 %i.af, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !139
  unreachable

bb.j:                                             ; preds = %._crit_edge.i
  %i.ag = sub nuw nsw i64 %i.n, %i.ae             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ae
  %.not35.i = icmp samesign ugt i64 %i.l, %3
  br i1 %.not35.i, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef %i.l, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !139
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = and i64 %i.l, 28                        ; 2 uses
  %.not.i.i1031127.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i1031127.i, label %._crit_edge1133.i, label %.lr.ph1132.preheader.i

.lr.ph1132.preheader.i:                           ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  br label %.lr.ph1132.i

.lr.ph1132.i:                                     ; preds = %bb.au, %.lr.ph1132.preheader.i
  %.sroa.0141.01130.i = phi ptr [ %i.ak, %bb.au ], [ %i.aj, %.lr.ph1132.preheader.i ] ; 5 uses
  %.sroa.6142.01129.i = phi i64 [ %i.al, %bb.au ], [ %i.ai, %.lr.ph1132.preheader.i ]
  %.sroa.13146.01128.i = phi i64 [ %i.am, %bb.au ], [ 0, %.lr.ph1132.preheader.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 4
  %i.al = add i64 %.sroa.6142.01129.i, -4         ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.13146.01128.i, 1
  %i.an = mul nuw i64 %.sroa.13146.01128.i, 3     ; 3 uses
  %i.ao = add nuw i64 %i.an, 3                    ; 2 uses
  %.not37.i = icmp ugt i64 %i.ao, %i.ag
  br i1 %.not37.i, label %bb.al, label %bb.am, !prof !11

._crit_edge1133.i:                                ; preds = %bb.au, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.aq = icmp samesign eq i64 %i.l, %3
  br i1 %i.aq, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i: ; preds = %._crit_edge1133.i
  %i.ar = ptrtoaddr ptr %2 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 6 uses
  %i.at = add i64 %3, %i.ar                       ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.av = load i8, ptr %i.as, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 3 uses
  %i.aw = icmp eq i8 %i.av, 61
  br i1 %i.aw, label %.loopexit211.i.i, label %bb.z

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i: ; preds = %._crit_edge1133.i
  %.not368.i.i = icmp eq i64 %3, 0
  br i1 %.not368.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i: ; preds = %bb.aj, %bb.ag, %bb.ad, %bb.ah, %.outer.3.i.i, %bb.ae, %.outer.2.i.i, %bb.ab, %.outer.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i
  %.sroa.011.0.lcssa294.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ %i.dy, %bb.ae ], [ %i.ep, %bb.ah ], [ %i.dy, %bb.ag ], [ %i.dh, %bb.ad ], [ %i.dh, %bb.ab ], [ %i.ep, %bb.aj ] ; 3 uses
  %.sroa.017.0.lcssa293.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.aj ]
  %.sroa.04.0.ph.lcssa143292.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 2, %.outer.1.i.i ], [ 3, %.outer.2.i.i ], [ 4, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.aj ] ; 3 uses
  %.sroa.019.0.ph.lcssa147291.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.cz, %.outer.1.i.i ], [ %i.dj, %.outer.2.i.i ], [ %i.ea, %.outer.3.i.i ], [ %i.dj, %bb.ae ], [ %i.ea, %bb.ah ], [ %i.dj, %bb.ag ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ab ], [ %i.ea, %bb.aj ]
  %.sroa.0.0290.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.cs, %.outer.1.i.i ], [ %i.cs, %.outer.2.i.i ], [ %i.cs, %.outer.3.i.i ], [ %i.cs, %bb.ae ], [ %i.cs, %bb.ah ], [ %i.cs, %bb.ag ], [ %i.cs, %bb.ad ], [ %i.cs, %bb.ab ], [ %i.cs, %bb.aj ]
  %.sroa.6.0289.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.dd, %.outer.1.i.i ], [ %i.dd, %.outer.2.i.i ], [ %i.dd, %.outer.3.i.i ], [ %i.dd, %bb.ae ], [ %i.dd, %bb.ah ], [ %i.dd, %bb.ag ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.aj ]
  %.sroa.8.0288.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ %i.dt, %.outer.2.i.i ], [ %i.dt, %.outer.3.i.i ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.ah ], [ %i.dt, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.dt, %bb.aj ]
  %.sroa.10.0287.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ %i.ej, %.outer.3.i.i ], [ 0, %bb.ae ], [ %i.ej, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.ej, %bb.aj ]
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, %.outer.i.i
  %.sroa.04.0.ph.lcssa143.i301.i = phi i64 [ 1, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ]
  %i.ax = add nuw i64 %.sroa.04.0.ph.lcssa143.i301.i, %i.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ay, align 8, !alias.scope !146, !noalias !147
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

default.unreachable:                              ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.az = mul nuw nsw i64 %.sroa.04.0.ph.lcssa143292.i.i, 6 ; 2 uses
  %i.ba = lshr i64 %i.az, 3                       ; 3 uses
  %i.bb = zext i8 %.sroa.0.0290.i.i to i32
  %i.bc = shl i32 %i.bb, 26
  %i.bd = zext i8 %.sroa.6.0289.i.i to i32
  %i.be = shl nuw nsw i32 %i.bd, 20
  %i.bf = or i32 %i.be, %i.bc                     ; 2 uses
  %i.bg = zext i8 %.sroa.8.0288.i.i to i32
  %i.bh = shl nuw nsw i32 %i.bg, 14
  %i.bi = zext i8 %.sroa.10.0287.i.i to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = or i32 %i.bh, %i.bj                     ; 2 uses
  %i.bl = or i32 %i.bk, %i.bf                     ; 2 uses
  br i1 %i.d, label %bb.s, label %bb.r

bb.n:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.bm = add i64 %.sroa.04.0.ph.lcssa143292.i.i, %.sroa.011.0.lcssa294.i.i
  %i.bn = and i64 %i.bm, 3
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %.not113.i.i = icmp eq i64 %.sroa.011.0.lcssa294.i.i, 0
  br i1 %.not113.i.i, label %bb.m, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bp, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bq, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.r:                                             ; preds = %bb.m
  %i.br = trunc nuw nsw i64 %i.az to i32
  %i.bs = and i32 %i.br, 24
  %i.bt = lshr i32 -1, %i.bs
  %i.bu = and i32 %i.bl, %i.bt
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.m
  %.not.i107.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i107.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %8 = sub nuw nsw i64 %5, %i.n                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %5, %i.n
  br i1 %exitcond.not.i.i, label %bb.v, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bw = add nsw i64 %i.l, -1
  %i.bx = add i64 %i.bw, %.sroa.04.0.ph.lcssa143292.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.by, align 8, !alias.scope !146, !noalias !147
  %.sroa.467.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.019.0.ph.lcssa147291.i.i, ptr %.sroa.467.0..sroa_idx.i.i, align 1, !alias.scope !146, !noalias !147
  %.sroa.669.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %.sroa.669.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

._crit_edge.i.i:                                  ; preds = %bb.w, %bb.x, %bb.y, %bb.s
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.n, %bb.s ], [ %i.ce, %bb.w ], [ %i.ci, %bb.x ], [ %i.cm, %bb.y ]
  %.not114.i.i = icmp ne i64 %.sroa.011.0.lcssa294.i.i, 0 ; 2 uses
  %i.bz = add nuw i64 %.sroa.017.0.lcssa293.i.i, %i.l
  %.sroa.093.0.i.i = zext i1 %.not114.i.i to i64
  %.sroa.594.0.i.i = select i1 %.not114.i.i, i64 %i.bz, i64 undef
  store i64 %.sroa.093.0.i.i, ptr %0, align 8, !alias.scope !146, !noalias !147
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.594.0.i.i, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i.i, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.v:                                             ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.preheader.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.ca, align 8, !alias.scope !146, !noalias !147
  br label %bb.u

bb.w:                                             ; preds = %.lr.ph.preheader.i.i
  %i.cb = lshr i32 %i.bf, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  store i8 %i.cc, ptr %i.cd, align 1, !alias.scope !148, !noalias !149
  %i.ce = add nuw nsw i64 %i.n, 1                 ; 2 uses
  %exitcond247.not.i.i = icmp eq i64 %i.ba, 1
  br i1 %exitcond247.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.w
  %exitcond.not.i.i.1 = icmp eq i64 %8, 1
  br i1 %exitcond.not.i.i.1, label %bb.v, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.1
  %i.cf = lshr i32 %i.bl, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !alias.scope !148, !noalias !149
  %i.ci = add nuw nsw i64 %i.n, 2                 ; 2 uses
  %exitcond247.not.i.i.1 = icmp eq i64 %i.ba, 2
  br i1 %exitcond247.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.x
  %exitcond.not.i.i.2 = icmp eq i64 %8, 2
  br i1 %exitcond.not.i.i.2, label %bb.v, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.2
  %i.cj = lshr exact i32 %i.bk, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !alias.scope !148, !noalias !149
  %i.cm = add nuw nsw i64 %i.n, 3
  br label %._crit_edge.i.i

.loopexit211.i.i:                                 ; preds = %bb.ai, %bb.af, %bb.ac, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %.sroa.8.0148.lcssa185.i.i = phi i64 [ 1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ai ]
  %i.cn = add nuw i64 %.sroa.8.0148.lcssa185.i.i, %i.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.co, align 8, !alias.scope !146, !noalias !147
  %.sroa.427.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.427.0..sroa_idx.i108.i, align 1, !alias.scope !146, !noalias !147
  %.sroa.6.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %.sroa.6.0..sroa_idx.i109.i, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.loopexit1134.i:                                  ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %.pre-phi.i = phi i64 [ %i.dv, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i ], [ %i.df, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i ], [ %i.el, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cp, align 8, !alias.scope !146, !noalias !147
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.434.0..sroa_idx.i.i, align 1, !alias.scope !146, !noalias !147
  %.sroa.636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi.i, ptr %.sroa.636.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.z:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %i.cq = zext i8 %i.av to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 10 uses
  %i.ct = icmp eq i8 %i.cs, -1
  br i1 %i.ct, label %._crit_edge, label %.outer.i.i

._crit_edge:                                      ; preds = %bb.z, %.thread318.i.i, %.thread306.i.i, %.thread.i.i, %bb.aa
  %.sroa.8.0148.lcssa.lcssa187.i.i = phi i64 [ 4, %.thread318.i.i ], [ 1, %bb.aa ], [ 2, %.thread.i.i ], [ 3, %.thread306.i.i ], [ 0, %bb.z ]
  %.lcssa173.lcssa176.i.i = phi i8 [ %i.eq, %.thread318.i.i ], [ %i.cz, %bb.aa ], [ %i.dj, %.thread.i.i ], [ %i.ea, %.thread306.i.i ], [ %i.av, %bb.z ]
  %i.cu = add nuw i64 %.sroa.8.0148.lcssa.lcssa187.i.i, %i.l
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cv, align 8, !alias.scope !146, !noalias !147
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.lcssa173.lcssa176.i.i, ptr %.sroa.442.0..sroa_idx.i.i, align 1, !alias.scope !146, !noalias !147
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cu, ptr %.sroa.644.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.outer.i.i:                                       ; preds = %bb.z
  %i.cw = add nuw nsw i64 %i.l, 1
  %i.cx = icmp samesign eq i64 %i.cw, %3
  br i1 %i.cx, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i: ; preds = %.outer.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.cz = load i8, ptr %i.au, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 6 uses
  %i.da = icmp eq i8 %i.cz, 61
  br i1 %i.da, label %.loopexit211.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i
  %i.db = zext i8 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 10 uses
  %i.de = icmp eq i8 %i.dd, -1
  br i1 %i.de, label %._crit_edge, label %.outer.1.i.i

.outer.1.i.i:                                     ; preds = %bb.aa
  %i.df = add nuw i64 %i.l, 2                     ; 2 uses
  %i.dg = icmp samesign eq i64 %i.df, %3
  br i1 %i.dg, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i: ; preds = %.outer.1.i.i
  %.sroa.0.0116.ph160209.2.i.i = ptrtoaddr ptr %i.cy to i64
  %i.dh = sub i64 %i.at, %.sroa.0.0116.ph160209.2.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 3 uses
  %i.dj = load i8, ptr %i.cy, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 6 uses
  %i.dk = icmp eq i8 %i.dj, 61
  br i1 %i.dk, label %bb.ab, label %.thread.i.i

bb.ab:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.dl = add nuw nsw i64 %i.l, 3
  %i.dm = icmp samesign eq i64 %i.dl, %3
  br i1 %i.dm, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i: ; preds = %bb.ab, %bb.ad
  %.sroa.0.0116149.2.i.i = phi ptr [ %i.dn, %bb.ad ], [ %i.di, %bb.ab ] ; 2 uses
  %.sroa.8.0148.2.i.i = phi i64 [ %i.do, %bb.ad ], [ 3, %bb.ab ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.2.i.i, i64 1 ; 2 uses
  %i.do = add i64 %.sroa.8.0148.2.i.i, 1
  %i.dp = load i8, ptr %.sroa.0.0116149.2.i.i, align 1, !alias.scope !144, !noalias !145, !noundef !5
  %i.dq = icmp eq i8 %i.dp, 61
  br i1 %i.dq, label %bb.ac, label %.loopexit1134.i

.thread.i.i:                                      ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.dr = zext i8 %i.dj to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 7 uses
  %i.du = icmp eq i8 %i.dt, -1
  br i1 %i.du, label %._crit_edge, label %.outer.2.i.i

.outer.2.i.i:                                     ; preds = %.thread.i.i
  %i.dv = add nuw i64 %i.l, 3                     ; 2 uses
  %i.dw = icmp samesign eq i64 %i.dv, %3
  br i1 %i.dw, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %exitcond1856.i = icmp eq i64 %.sroa.8.0148.2.i.i, 0
  br i1 %exitcond1856.i, label %.loopexit211.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = icmp eq ptr %i.dn, %i.ap
  br i1 %i.dx, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i, !llvm.loop !80

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i: ; preds = %.outer.2.i.i
  %.sroa.0.0116.ph160209.3.i.i = ptrtoaddr ptr %i.di to i64
  %i.dy = sub i64 %i.at, %.sroa.0.0116.ph160209.3.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 3 uses
  %i.ea = load i8, ptr %i.di, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 6 uses
  %i.eb = icmp eq i8 %i.ea, 61
  br i1 %i.eb, label %bb.ae, label %.thread306.i.i

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.ec = add nuw nsw i64 %i.l, 4
  %i.ed = icmp samesign eq i64 %i.ec, %3
  br i1 %i.ed, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i: ; preds = %bb.ae, %bb.ag
  %.sroa.011.0151.3.i.i = phi i64 [ %i.en, %bb.ag ], [ 1, %bb.ae ] ; 2 uses
  %.sroa.0.0116149.3.i.i = phi ptr [ %i.ee, %bb.ag ], [ %i.dz, %bb.ae ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.3.i.i, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.sroa.0.0116149.3.i.i, align 1, !alias.scope !144, !noalias !145, !noundef !5
  %i.eg = icmp eq i8 %i.ef, 61
  br i1 %i.eg, label %bb.af, label %.loopexit1134.i

.thread306.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.eh = zext i8 %i.ea to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
end_hunk_0
