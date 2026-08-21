Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base64-a5be3ff61865da80.base64.4b5840a3fb7cbc5d-cgu.0?download=true
inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
  %.not35.i = icmp samesign ugt i64 %i.l, %3
  br i1 %.not35.i, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef %i.l, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !88
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = and i64 %i.l, 28                        ; 2 uses
  %.not.i.i1031127.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i1031127.i, label %._crit_edge1133.i, label %.lr.ph1132.preheader.i

.lr.ph1132.preheader.i:                           ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  br label %.lr.ph1132.i

.lr.ph1132.i:                                     ; preds = %bb.at, %.lr.ph1132.preheader.i
  %.sroa.0141.01130.i = phi ptr [ %i.ak, %bb.at ], [ %i.aj, %.lr.ph1132.preheader.i ] ; 5 uses
  %.sroa.6142.01129.i = phi i64 [ %i.al, %bb.at ], [ %i.ai, %.lr.ph1132.preheader.i ]
  %.sroa.13146.01128.i = phi i64 [ %i.am, %bb.at ], [ 0, %.lr.ph1132.preheader.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 4
  %i.al = add i64 %.sroa.6142.01129.i, -4         ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.13146.01128.i, 1
  %i.an = mul nuw i64 %.sroa.13146.01128.i, 3     ; 3 uses
  %i.ao = add nuw i64 %i.an, 3                    ; 2 uses
  %.not37.i = icmp ugt i64 %i.ao, %i.ag
  br i1 %.not37.i, label %bb.ak, label %bb.al, !prof !87

._crit_edge1133.i:                                ; preds = %bb.at, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.aq = icmp samesign eq i64 %i.l, %3
  br i1 %i.aq, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i: ; preds = %._crit_edge1133.i
  %i.ar = ptrtoaddr ptr %2 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 6 uses
  %i.at = add i64 %3, %i.ar                       ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.av = load i8, ptr %i.as, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 3 uses
  %i.aw = icmp eq i8 %i.av, 61
  br i1 %i.aw, label %.loopexit211.i.i, label %bb.z

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i: ; preds = %._crit_edge1133.i
  %.not368.i.i = icmp eq i64 %3, 0
  br i1 %.not368.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i: ; preds = %bb.ai, %bb.af, %bb.ad, %bb.ag, %.outer.3.i.i, %bb.ae, %.outer.2.i.i, %bb.ab, %.outer.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i
  %.sroa.011.0.lcssa294.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ %i.dz, %bb.ae ], [ %i.eo, %bb.ag ], [ %i.dz, %bb.af ], [ %i.di, %bb.ad ], [ %i.di, %bb.ab ], [ %i.eo, %bb.ai ] ; 3 uses
  %.sroa.017.0.lcssa293.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ag ], [ 3, %bb.af ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.ai ]
  %.sroa.04.0.ph.lcssa143292.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 2, %.outer.1.i.i ], [ 3, %.outer.2.i.i ], [ 4, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ag ], [ 3, %bb.af ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.ai ] ; 3 uses
  %.sroa.019.0.ph.lcssa147291.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.da, %.outer.1.i.i ], [ %i.dk, %.outer.2.i.i ], [ %i.eb, %.outer.3.i.i ], [ %i.dk, %bb.ae ], [ %i.eb, %bb.ag ], [ %i.dk, %bb.af ], [ %i.da, %bb.ad ], [ %i.da, %bb.ab ], [ %i.eb, %bb.ai ]
  %.sroa.0.0290.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.ct, %.outer.1.i.i ], [ %i.ct, %.outer.2.i.i ], [ %i.ct, %.outer.3.i.i ], [ %i.ct, %bb.ae ], [ %i.ct, %bb.ag ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ad ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.ai ]
  %.sroa.6.0289.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.de, %.outer.1.i.i ], [ %i.de, %.outer.2.i.i ], [ %i.de, %.outer.3.i.i ], [ %i.de, %bb.ae ], [ %i.de, %bb.ag ], [ %i.de, %bb.af ], [ %i.de, %bb.ad ], [ %i.de, %bb.ab ], [ %i.de, %bb.ai ]
  %.sroa.8.0288.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ %i.du, %.outer.2.i.i ], [ %i.du, %.outer.3.i.i ], [ %i.du, %bb.ae ], [ %i.du, %bb.ag ], [ %i.du, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.du, %bb.ai ]
  %.sroa.10.0287.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ %i.ej, %.outer.3.i.i ], [ 0, %bb.ae ], [ %i.ej, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.ej, %bb.ai ]
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, %.outer.i.i
  %.sroa.04.0.ph.lcssa143.i301.i = phi i64 [ 1, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ]
  %i.ax = add nuw i64 %.sroa.04.0.ph.lcssa143.i301.i, %i.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ay, align 8, !alias.scope !100, !noalias !101
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
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
  store i8 3, ptr %i.bp, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bq, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
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
  %i.bw = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %5, i64 range(i64 0, -9223372036854775808) %i.n) ; 2 uses
  %exitcond.not.i.i.not = icmp samesign ugt i64 %5, %i.n
  br i1 %exitcond.not.i.i.not, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = add nsw i64 %i.l, -1
  %i.by = add i64 %i.bx, %.sroa.04.0.ph.lcssa143292.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.bz, align 8, !alias.scope !100, !noalias !101
  %.sroa.467.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.019.0.ph.lcssa147291.i.i, ptr %.sroa.467.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.669.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.by, ptr %.sroa.669.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

._crit_edge.i.i:                                  ; preds = %bb.w, %bb.x, %bb.y, %bb.s
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.n, %bb.s ], [ %i.cf, %bb.w ], [ %i.cj, %bb.x ], [ %i.cn, %bb.y ]
  %.not114.i.i = icmp ne i64 %.sroa.011.0.lcssa294.i.i, 0 ; 2 uses
  %i.ca = add nuw i64 %.sroa.017.0.lcssa293.i.i, %i.l
  %.sroa.093.0.i.i = zext i1 %.not114.i.i to i64
  %.sroa.594.0.i.i = select i1 %.not114.i.i, i64 %i.ca, i64 undef
  store i64 %.sroa.093.0.i.i, ptr %0, align 8, !alias.scope !100, !noalias !101
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.594.0.i.i, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i.i, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.v:                                             ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.preheader.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.cb, align 8, !alias.scope !100, !noalias !101
  br label %bb.u

bb.w:                                             ; preds = %.lr.ph.preheader.i.i
  %i.cc = lshr i32 %i.bf, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  store i8 %i.cd, ptr %i.ce, align 1, !alias.scope !102, !noalias !103
  %i.cf = add nuw nsw i64 %i.n, 1                 ; 2 uses
  %exitcond247.not.i.i = icmp eq i64 %i.ba, 1
  br i1 %exitcond247.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.w
  %exitcond.not.i.i.1 = icmp eq i64 %i.bw, 1
  br i1 %exitcond.not.i.i.1, label %bb.v, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.1
  %i.cg = lshr i32 %i.bl, 16
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !alias.scope !102, !noalias !103
  %i.cj = add nuw nsw i64 %i.n, 2                 ; 2 uses
  %exitcond247.not.i.i.1 = icmp eq i64 %i.ba, 2
  br i1 %exitcond247.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.x
  %exitcond.not.i.i.2 = icmp eq i64 %i.bw, 2
  br i1 %exitcond.not.i.i.2, label %bb.v, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.2
  %i.ck = lshr exact i32 %i.bk, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1, !alias.scope !102, !noalias !103
  %i.cn = add nuw nsw i64 %i.n, 3
  br label %._crit_edge.i.i

.loopexit211.i.i:                                 ; preds = %bb.ah, %9, %bb.ac, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %.sroa.8.0148.lcssa185.i.i = phi i64 [ 1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i ], [ 0, %9 ], [ 0, %bb.ac ], [ 0, %bb.ah ]
  %i.co = add nuw i64 %.sroa.8.0148.lcssa185.i.i, %i.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cp, align 8, !alias.scope !100, !noalias !101
  %.sroa.427.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.427.0..sroa_idx.i108.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.6.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx.i109.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.loopexit1134.i:                                  ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %.pre-phi.i = phi i64 [ %i.dw, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i ], [ %i.dg, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i ], [ %i.el, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cq, align 8, !alias.scope !100, !noalias !101
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.434.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi.i, ptr %.sroa.636.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.z:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %i.cr = zext i8 %i.av to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 10 uses
  %i.cu = icmp eq i8 %i.ct, -1
  br i1 %i.cu, label %._crit_edge, label %.outer.i.i

._crit_edge:                                      ; preds = %bb.z, %.thread318.i.i, %.thread306.i.i, %.thread.i.i, %bb.aa
  %.sroa.8.0148.lcssa.lcssa187.i.i = phi i64 [ 4, %.thread318.i.i ], [ 1, %bb.aa ], [ 2, %.thread.i.i ], [ 3, %.thread306.i.i ], [ 0, %bb.z ]
  %.lcssa173.lcssa176.i.i = phi i8 [ %i.ep, %.thread318.i.i ], [ %i.da, %bb.aa ], [ %i.dk, %.thread.i.i ], [ %i.eb, %.thread306.i.i ], [ %i.av, %bb.z ]
  %i.cv = add nuw i64 %.sroa.8.0148.lcssa.lcssa187.i.i, %i.l
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cw, align 8, !alias.scope !100, !noalias !101
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.lcssa173.lcssa176.i.i, ptr %.sroa.442.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %.sroa.644.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.outer.i.i:                                       ; preds = %bb.z
  %i.cx = add nuw nsw i64 %i.l, 1
  %i.cy = icmp samesign eq i64 %i.cx, %3
  br i1 %i.cy, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i: ; preds = %.outer.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.au, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.db = icmp eq i8 %i.da, 61
  br i1 %i.db, label %.loopexit211.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i
  %i.dc = zext i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 10 uses
  %i.df = icmp eq i8 %i.de, -1
  br i1 %i.df, label %._crit_edge, label %.outer.1.i.i

.outer.1.i.i:                                     ; preds = %bb.aa
  %i.dg = add nuw i64 %i.l, 2                     ; 2 uses
  %i.dh = icmp samesign eq i64 %i.dg, %3
  br i1 %i.dh, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i: ; preds = %.outer.1.i.i
  %.sroa.0.0116.ph160209.2.i.i = ptrtoaddr ptr %i.cz to i64
  %i.di = sub i64 %i.at, %.sroa.0.0116.ph160209.2.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 3 uses
  %i.dk = load i8, ptr %i.cz, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.dl = icmp eq i8 %i.dk, 61
  br i1 %i.dl, label %bb.ab, label %.thread.i.i

bb.ab:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.dm = add nuw nsw i64 %i.l, 3
  %i.dn = icmp samesign eq i64 %i.dm, %3
  br i1 %i.dn, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i: ; preds = %bb.ab, %bb.ad
  %.sroa.0.0116149.2.i.i = phi ptr [ %i.do, %bb.ad ], [ %i.dj, %bb.ab ] ; 2 uses
  %.sroa.8.0148.2.i.i = phi i64 [ %i.dp, %bb.ad ], [ 3, %bb.ab ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.2.i.i, i64 1 ; 2 uses
  %i.dp = add i64 %.sroa.8.0148.2.i.i, 1
  %i.dq = load i8, ptr %.sroa.0.0116149.2.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.dr = icmp eq i8 %i.dq, 61
  br i1 %i.dr, label %bb.ac, label %.loopexit1134.i

.thread.i.i:                                      ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.ds = zext i8 %i.dk to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 7 uses
  %i.dv = icmp eq i8 %i.du, -1
  br i1 %i.dv, label %._crit_edge, label %.outer.2.i.i

.outer.2.i.i:                                     ; preds = %.thread.i.i
  %i.dw = add nuw i64 %i.l, 3                     ; 2 uses
  %i.dx = icmp samesign eq i64 %i.dw, %3
  br i1 %i.dx, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %exitcond1856.i = icmp eq i64 %.sroa.8.0148.2.i.i, 0
  br i1 %exitcond1856.i, label %.loopexit211.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = icmp eq ptr %i.do, %i.ap
  br i1 %i.dy, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i, !llvm.loop !106

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i: ; preds = %.outer.2.i.i
  %.sroa.0.0116.ph160209.3.i.i = ptrtoaddr ptr %i.dj to i64
  %i.dz = sub i64 %i.at, %.sroa.0.0116.ph160209.3.i.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 3 uses
  %i.eb = load i8, ptr %i.dj, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.ec = icmp eq i8 %i.eb, 61
  br i1 %i.ec, label %bb.ae, label %.thread306.i.i

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.ed = add nuw nsw i64 %i.l, 4
  %i.ee = icmp samesign eq i64 %i.ed, %3
  br i1 %i.ee, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i: ; preds = %bb.ae, %bb.af
  %.sroa.011.0151.3.i.i = phi i64 [ %10, %bb.af ], [ 1, %bb.ae ] ; 2 uses
  %.sroa.0.0116149.3.i.i = phi ptr [ %8, %bb.af ], [ %i.ea, %bb.ae ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.3.i.i, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.sroa.0.0116149.3.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.eg = icmp eq i8 %i.ef, 61
  br i1 %i.eg, label %9, label %.loopexit1134.i

.thread306.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.eh = zext i8 %i.eb to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 4 uses
  %i.ek = icmp eq i8 %i.ej, -1
  br i1 %i.ek, label %._crit_edge, label %.outer.3.i.i

.outer.3.i.i:                                     ; preds = %.thread306.i.i
  %i.el = add nuw i64 %i.l, 4                     ; 2 uses
  %i.em = icmp samesign eq i64 %i.el, %3
  br i1 %i.em, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i

9:                                                ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i
  %exitcond1855.i = icmp eq i64 %.sroa.011.0151.3.i.i, -3
  br i1 %exitcond1855.i, label %.loopexit211.i.i, label %bb.af

bb.af:                                            ; preds = %9
  %10 = add nuw i64 %.sroa.011.0151.3.i.i, 1
  %i.en = icmp eq ptr %8, %i.ap
  br i1 %i.en, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, !llvm.loop !106

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i: ; preds = %.outer.3.i.i
  %.sroa.0.0116.ph160209.4.i.i = ptrtoaddr ptr %i.ea to i64
  %i.eo = sub i64 %i.at, %.sroa.0.0116.ph160209.4.i.i ; 2 uses
  %i.ep = load i8, ptr %i.ea, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 3 uses
  %i.eq = icmp eq i8 %i.ep, 61
  br i1 %i.eq, label %bb.ag, label %.thread318.i.i

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.er = add nuw nsw i64 %i.l, 5
  %i.es = icmp samesign eq i64 %i.er, %3
  br i1 %i.es, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader: ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader, %bb.ai
  %.sroa.0.0116149.4.i.i = phi ptr [ %i.eu, %bb.ai ], [ %i.et, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.in.i.i = phi i64 [ %.sroa.8.0148.4.i.i, %bb.ai ], [ 4, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.i.i = add i64 %.sroa.8.0148.4.in.i.i, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.4.i.i, i64 1 ; 2 uses
  %i.ev = load i8, ptr %.sroa.0.0116149.4.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.ew = icmp eq i8 %i.ev, 61
  br i1 %i.ew, label %bb.ah, label %.loopexit1134.i

.thread318.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.ex = zext i8 %i.ep to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !104, !noalias !105, !noundef !8
  %i.fa = icmp eq i8 %i.ez, -1
  br i1 %i.fa, label %._crit_edge, label %bb.aj

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i
  %exitcond = icmp eq i64 %.sroa.8.0148.4.in.i.i, -1
  br i1 %exitcond, label %.loopexit211.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fb = icmp eq ptr %i.eu, %i.ap
  br i1 %i.fb, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, !llvm.loop !106

bb.aj:                                            ; preds = %.thread318.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 4, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !108
  unreachable

bb.ak:                                            ; preds = %.lr.ph1132.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !88
  unreachable

bb.al:                                            ; preds = %.lr.ph1132.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.fd = load i8, ptr %.sroa.0141.01130.i, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fh = icmp eq i8 %i.fg, -1
  br i1 %i.fh, label %.loopexit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fo = shl i64 %.sroa.13146.01128.i, 2
  %i.fp = add i64 %i.fo, %i.x
  %i.fq = or disjoint i64 %i.fp, 1
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fx = shl i64 %.sroa.13146.01128.i, 2
  %i.fy = add i64 %i.fx, %i.x
  %i.fz = or disjoint i64 %i.fy, 2
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -1
  br i1 %i.gf, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gg = shl i64 %.sroa.13146.01128.i, 2
  %i.gh = add i64 %i.gg, %i.x
  %i.gi = or disjoint i64 %i.gh, 3
  br label %bb.as

.loopexit.i:                                      ; preds = %bb.al
  %i.gj = shl i64 %.sroa.13146.01128.i, 2
  %i.gk = add i64 %i.gj, %i.x
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i, %bb.ar, %bb.ap, %bb.an
  %.sroa.14153.0.ph.i = phi i64 [ %i.fq, %bb.an ], [ %i.gi, %bb.ar ], [ %i.fz, %bb.ap ], [ %i.gk, %.loopexit.i ]
  %.sroa.10151.0.ph.i = phi i8 [ %i.fj, %bb.an ], [ %i.gb, %bb.ar ], [ %i.fs, %bb.ap ], [ %i.fd, %.loopexit.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gl, align 8, !alias.scope !66, !noalias !86
  %.sroa.4269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.10151.0.ph.i, ptr %.sroa.4269.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !86
  %.sroa.6271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14153.0.ph.i, ptr %.sroa.6271.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !86
  store i64 2, ptr %0, align 8, !alias.scope !66, !noalias !86
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.at:                                            ; preds = %bb.aq
  %i.gm = zext i8 %i.fg to i32
  %i.gn = shl i32 %i.gm, 26
  %i.go = zext i8 %i.fm to i32
  %i.gp = shl nuw nsw i32 %i.go, 20
  %i.gq = or i32 %i.gp, %i.gn
  %i.gr = zext i8 %i.fv to i32
  %i.gs = shl nuw nsw i32 %i.gr, 14
  %i.gt = or i32 %i.gq, %i.gs
  %i.gu = zext i8 %i.ge to i32
  %i.gv = shl nuw nsw i32 %i.gu, 8
  %i.gw = or i32 %i.gt, %i.gv
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %.sroa.0272.0.extract.trunc.i = trunc nuw i32 %i.gx to i24
  store i24 %.sroa.0272.0.extract.trunc.i, ptr %i.fc, align 1, !alias.scope !120, !noalias !124
  %.not.i.i103.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i103.i, label %._crit_edge1133.i, label %.lr.ph1132.i

bb.au:                                            ; preds = %.lr.ph.i
  %i.gy = mul nuw nsw i64 %i.y, 24
  %i.gz = add nuw i64 %i.gy, 24
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.gz, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !88
  unreachable

bb.av:                                            ; preds = %.lr.ph.i
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.hb = load i8, ptr %.sroa.0116.01119.i, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hf = icmp eq i8 %i.he, -1
  br i1 %i.hf, label %.loopexit342.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, -1
  br i1 %i.hl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hr = icmp eq i8 %i.hq, -1
  br i1 %i.hr, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.hs = shl i64 %.sroa.13.01117.i, 5
  %i.ht = or disjoint i64 %i.hs, 1
  br label %bb.bk

bb.az:                                            ; preds = %bb.ax
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 3
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.ia = shl i64 %.sroa.13.01117.i, 5
  %i.ib = or disjoint i64 %i.ia, 2
  br label %bb.bk

bb.bb:                                            ; preds = %bb.az
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 4
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.ie = zext i8 %i.id to i64
end_hunk_0
