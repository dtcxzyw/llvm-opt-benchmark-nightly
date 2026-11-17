Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_mdns-77ff572cd2c4a803.libp2p_mdns.4b4c806747c21a0e-cgu.5?download=true
inline.NumInlined: 280
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns16duration_to_secs
define noundef i32 @_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns16duration_to_secs(i64 noundef %0, i32 noundef range(i32 0, 1000000000) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i64
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 %i.b)
  %..i = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.c, i64 4294967295)
  %i.d = trunc nuw i64 %..i to i32
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns17append_txt_record(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 21 uses
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !349, !noundef !5 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !349, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !349
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, %2                         ; 7 uses
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !349
  %i.j = load i64, ptr %0, align 8, !range !11, !alias.scope !350, !noundef !5
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !350, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store i8 0, ptr %i.n, align 1
  %i.o = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !350
  %i.p = load i64, ptr %0, align 8, !range !11, !alias.scope !351, !noundef !5
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5

bb.d:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit, %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !alias.scope !351, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 16, ptr %i.s, align 1
  %i.t = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !351
  %i.u = load i64, ptr %0, align 8, !range !11, !alias.scope !352, !noundef !5
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit6

bb.e:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit6

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit6: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5, %bb.e
  %i.w = load ptr, ptr %i.l, align 8, !alias.scope !352, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 -128, ptr %i.x, align 1
  %i.y = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !352
  %i.z = load i64, ptr %0, align 8, !range !11, !alias.scope !353, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7

bb.f:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit6
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit6, %bb.f
  %i.ab = load ptr, ptr %i.l, align 8, !alias.scope !353, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  store i8 1, ptr %i.ac, align 1
  %i.ad = add i64 %i.i, 4
  store i64 %i.ad, ptr %i.b, align 8, !alias.scope !353
  tail call fastcc void @_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns10append_u32(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %3)
  %i.ae = icmp ugt i64 %5, 255
  br i1 %i.ae, label %bb.al, label %bb.g

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.af = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef 1) #25 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #23
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.g
  %i.ah = trunc nuw i64 %5 to i8
  store i8 %i.ah, ptr %i.af, align 1
  store i64 1, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store ptr %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  store i64 1, ptr %i.aj, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ak = icmp samesign ult i64 %5, 64
  br i1 %i.ak, label %bb.l, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.al = and i64 %5, 192                         ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.al ; 2 uses
  %i.an = and i64 %5, 63                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %4, align 1, !alias.scope !356, !noalias !357
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i9.i.i.i = load <2 x i64>, ptr %i.ao, align 1, !alias.scope !356, !noalias !358
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.0.0.copyload.i10.i.i.i = load <2 x i64>, ptr %i.ap, align 1, !alias.scope !356, !noalias !359
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload.i11.i.i.i = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !356, !noalias !360
  %i.ar = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.as = or <2 x i64> %i.ar, %.sroa.0.0.copyload.i10.i.i.i
  %i.at = or <2 x i64> %i.as, %.sroa.0.0.copyload.i11.i.i.i
  %i.au = bitcast <2 x i64> %i.at to <16 x i8>
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %.loopexit25

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = icmp samesign eq i64 %i.al, 64
  br i1 %i.ay, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.0.0.copyload.i.i.i.i.1 = load <2 x i64>, ptr %i.az, align 1, !alias.scope !356, !noalias !357
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.0.0.copyload.i9.i.i.i.1 = load <2 x i64>, ptr %i.ba, align 1, !alias.scope !356, !noalias !358
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.0.0.copyload.i10.i.i.i.1 = load <2 x i64>, ptr %i.bb, align 1, !alias.scope !356, !noalias !359
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.0.0.copyload.i11.i.i.i.1 = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !356, !noalias !360
  %i.bd = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.1, %.sroa.0.0.copyload.i.i.i.i.1
  %i.be = or <2 x i64> %i.bd, %.sroa.0.0.copyload.i10.i.i.i.1
  %i.bf = or <2 x i64> %i.be, %.sroa.0.0.copyload.i11.i.i.i.1
  %i.bg = bitcast <2 x i64> %i.bf to <16 x i8>
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %.loopexit25

bb.j:                                             ; preds = %.lr.ph.i.i.i.1
  %i.bk = icmp samesign eq i64 %i.al, 128
  br i1 %i.bk, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sroa.0.0.copyload.i.i.i.i.2 = load <2 x i64>, ptr %i.bl, align 1, !alias.scope !356, !noalias !357
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 144
  %.sroa.0.0.copyload.i9.i.i.i.2 = load <2 x i64>, ptr %i.bm, align 1, !alias.scope !356, !noalias !358
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.sroa.0.0.copyload.i10.i.i.i.2 = load <2 x i64>, ptr %i.bn, align 1, !alias.scope !356, !noalias !359
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 176
  %.sroa.0.0.copyload.i11.i.i.i.2 = load <2 x i64>, ptr %i.bo, align 1, !alias.scope !356, !noalias !360
  %i.bp = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.2, %.sroa.0.0.copyload.i.i.i.i.2
  %i.bq = or <2 x i64> %i.bp, %.sroa.0.0.copyload.i10.i.i.i.2
  %i.br = or <2 x i64> %i.bq, %.sroa.0.0.copyload.i11.i.i.i.2
  %i.bs = bitcast <2 x i64> %i.br to <16 x i8>
  %i.bt = icmp slt <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %._crit_edge.i.i.i, label %.loopexit25

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.2, %bb.j, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.bx = icmp samesign eq i64 %i.an, 0
  br i1 %i.bx, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bw
  br i1 %i.bz, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i, %bb.k
  %i.ca = phi ptr [ %i.by, %bb.k ], [ %i.am, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.ca, align 1, !alias.scope !356, !noalias !361, !noundef !5
  %i.cb = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.cb, label %bb.k, label %.loopexit25

bb.l:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.cc = and i64 %5, 56                          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %i.cc ; 8 uses
  %i.ce = and i64 %5, 7                           ; 7 uses
  %i.cf = icmp samesign eq i64 %i.cc, 0
  br i1 %i.cf, label %._crit_edge.i.i, label %.lr.ph.i.i.a

bb.m:                                             ; preds = %.lr.ph.i.i.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i.i, i64 8 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.cd
  br i1 %i.ch, label %._crit_edge.i.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.l, %bb.m
  %.sroa.01.09.i.i = phi ptr [ %i.cg, %bb.m ], [ %4, %bb.l ] ; 2 uses
  %.sroa.03.0.copyload.i.i.a = load i64, ptr %.sroa.01.09.i.i, align 1, !alias.scope !362
  %i.ci = and i64 %.sroa.03.0.copyload.i.i.a, -9187201950435737472
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %.loopexit25

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.ck = icmp samesign eq i64 %i.ce, 0
  br i1 %i.ck, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59

bb.n:                                             ; preds = %.lr.ph59
  %i.cl = icmp samesign eq i64 %i.ce, 1
  br i1 %i.cl, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.cm, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.cn = icmp sgt i8 %.val.i.i.i.1, -1
  br i1 %i.cn, label %bb.o, label %.loopexit25

bb.o:                                             ; preds = %.lr.ph59.1
  %i.co = icmp samesign eq i64 %i.ce, 2
  br i1 %i.co, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.2

.lr.ph59.2:                                       ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.cp, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.cq = icmp sgt i8 %.val.i.i.i.2, -1
  br i1 %i.cq, label %bb.p, label %.loopexit25

bb.p:                                             ; preds = %.lr.ph59.2
  %i.cr = icmp samesign eq i64 %i.ce, 3
  br i1 %i.cr, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.3

.lr.ph59.3:                                       ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.cs, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.ct = icmp sgt i8 %.val.i.i.i.3, -1
  br i1 %i.ct, label %bb.q, label %.loopexit25

bb.q:                                             ; preds = %.lr.ph59.3
  %i.cu = icmp samesign eq i64 %i.ce, 4
  br i1 %i.cu, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.4

.lr.ph59.4:                                       ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %.val.i.i.i.4 = load i8, ptr %i.cv, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.cw = icmp sgt i8 %.val.i.i.i.4, -1
  br i1 %i.cw, label %bb.r, label %.loopexit25

bb.r:                                             ; preds = %.lr.ph59.4
  %i.cx = icmp samesign eq i64 %i.ce, 5
  br i1 %i.cx, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.5

.lr.ph59.5:                                       ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 5
  %.val.i.i.i.5 = load i8, ptr %i.cy, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.cz = icmp sgt i8 %.val.i.i.i.5, -1
  br i1 %i.cz, label %bb.s, label %.loopexit25

bb.s:                                             ; preds = %.lr.ph59.5
  %i.da = icmp samesign eq i64 %i.ce, 6
  br i1 %i.da, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph59.6

.lr.ph59.6:                                       ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %.val.i.i.i.6 = load i8, ptr %i.db, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.dc = icmp sgt i8 %.val.i.i.i.6, -1
  br i1 %i.dc, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.loopexit25

.lr.ph59:                                         ; preds = %._crit_edge.i.i
  %.val.i.i.i = load i8, ptr %i.cd, align 1, !alias.scope !362, !noalias !363, !noundef !5
  %i.dd = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.dd, label %bb.n, label %.loopexit25

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i: ; preds = %bb.k, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.lr.ph59.6, %._crit_edge.i.i.i, %._crit_edge.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %.not.not.not.i.not.i60 = icmp samesign eq i64 %5, 0
  br i1 %.not.not.not.i.not.i60, label %._crit_edge, label %.lr.ph61

bb.t:                                             ; preds = %.lr.ph61
  %i.df = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.df, %i.de
  br i1 %.not.not.not.i.not.i, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, %bb.t
  %i.dg = phi ptr [ %i.df, %bb.t ], [ %4, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i ] ; 2 uses
  %.val.i.i = load i8, ptr %i.dg, align 1, !alias.scope !355, !noalias !364, !noundef !5
  %i.dh = icmp eq i8 %.val.i.i, 32
  br i1 %i.dh, label %bb.v, label %bb.t

._crit_edge:                                      ; preds = %bb.t, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef range(i64 0, 256) %5)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  %i.di = load i64, ptr %i.aj, align 8, !alias.scope !365, !noundef !5 ; 3 uses
  %i.dj = icmp sgt i64 %i.di, -1
  call void @llvm.assume(i1 %i.dj)
  %.not.i3.i = icmp eq i64 %5, 0
  br i1 %.not.i3.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit.i, label %bb.u

bb.u:                                             ; preds = %.noexc
  %i.dk = load ptr, ptr %i.ai, align 8, !alias.scope !365, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull readonly align 1 %4, i64 range(i64 0, 256) %5, i1 false)
  %.pre.i.i = load i64, ptr %i.aj, align 8, !alias.scope !365
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.u, %.noexc
  %i.dm = phi i64 [ %.pre.i.i, %bb.u ], [ %i.di, %.noexc ]
  %i.dn = add i64 %i.dm, %5
  br label %_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns23append_character_string.exit

bb.v:                                             ; preds = %.lr.ph61
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.v
  %i.do = load ptr, ptr %i.ai, align 8, !alias.scope !366, !nonnull !5, !noundef !5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 34, ptr %i.dp, align 1, !noalias !355
  store i64 2, ptr %i.aj, align 8, !alias.scope !366
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i
  %i.dq = phi i64 [ %i.eh, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i ] ; 8 uses
  %.sroa.01.016.i = phi ptr [ %i.dr, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i ], [ %4, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.016.i, i64 1 ; 2 uses
  %i.ds = load i8, ptr %.sroa.01.016.i, align 1, !alias.scope !355, !noundef !5 ; 2 uses
  %i.dt = load i64, ptr %i.a, align 8, !range !11, !alias.scope !354, !noundef !5
  %i.du = icmp eq i64 %i.dq, %i.dt                ; 3 uses
  switch i8 %i.ds, label %bb.ab [
    i8 92, label %bb.x
    i8 34, label %bb.z
  ]

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i
  %i.dv = load i64, ptr %i.a, align 8, !range !11, !alias.scope !367, !noundef !5
  %i.dw = icmp eq i64 %i.eh, %i.dv
  br i1 %i.dw, label %bb.w, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit4.i

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit4.i: ; preds = %bb.w, %._crit_edge.i
  %i.dx = load ptr, ptr %i.ai, align 8, !alias.scope !367, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eh
  store i8 34, ptr %i.dy, align 1, !noalias !355
  %i.dz = add i64 %i.eh, 1
  br label %_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns23append_character_string.exit

bb.x:                                             ; preds = %.lr.ph.i
  br i1 %i.du, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i: ; preds = %bb.y, %bb.x
  %i.ea = load ptr, ptr %i.ai, align 8, !alias.scope !368, !nonnull !5, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dq
  store i8 92, ptr %i.eb, align 1, !noalias !355
  %i.ec = add i64 %i.dq, 1                        ; 4 uses
  store i64 %i.ec, ptr %i.aj, align 8, !alias.scope !368
  %i.ed = load i64, ptr %i.a, align 8, !range !11, !alias.scope !369, !noundef !5
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i: ; preds = %bb.ab, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i
  %.sink36.ph.i = phi i64 [ %i.dq, %bb.ab ], [ %i.el, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i ], [ %i.ec, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i ]
  %.sink33.ph.i = phi i64 [ 1, %bb.ab ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i ]
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i, %bb.ab, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i
  %.sink36.i = phi i64 [ %i.dq, %bb.ab ], [ %i.ec, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i ], [ %i.el, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i ], [ %.sink36.ph.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i ]
  %.sink33.i = phi i64 [ 1, %bb.ab ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit5.i ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i ], [ %.sink33.ph.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i ]
  %i.ef = load ptr, ptr %i.ai, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink36.i
  store i8 %i.ds, ptr %i.eg, align 1, !noalias !355
  %i.eh = add i64 %.sink33.i, %i.dq               ; 5 uses
  store i64 %i.eh, ptr %i.aj, align 8, !alias.scope !354
  %i.ei = icmp eq ptr %i.dr, %i.de
  br i1 %i.ei, label %._crit_edge.i, label %.lr.ph.i

bb.z:                                             ; preds = %.lr.ph.i
  br i1 %i.du, label %bb.aa, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7.i: ; preds = %bb.aa, %bb.z
  %i.ej = load ptr, ptr %i.ai, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dq
  store i8 92, ptr %i.ek, align 1, !noalias !355
  %i.el = add i64 %i.dq, 1                        ; 4 uses
  store i64 %i.el, ptr %i.aj, align 8, !alias.scope !370
  %i.em = load i64, ptr %i.a, align 8, !range !11, !alias.scope !371, !noundef !5
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i

bb.ab:                                            ; preds = %.lr.ph.i
  br i1 %i.du, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit8.sink.split.i, %bb.y, %bb.ag, %bb.af, %bb.ae, %bb.w, %bb.v, %._crit_edge
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %common.resume unwind label %bb.am

.loopexit25:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph, %.lr.ph.i.i.a, %.lr.ph59, %.lr.ph59.1, %.lr.ph59.2, %.lr.ph59.3, %.lr.ph59.4, %.lr.ph59.5, %.lr.ph59.6
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split unwind label %bb.ac

bb.ac:                                            ; preds = %.loopexit25
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.fn, %bb.aj ], [ %i.eo, %bb.ac ], [ %lpad.loopexit.split-lp62, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns23append_character_string.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit4.i
  %storemerge = phi i64 [ %i.dz, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit4.i ], [ %i.dn, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs6sOsJPswu84_11libp2p_mdns.exit.i ] ; 4 uses
  store i64 %storemerge, ptr %i.aj, align 8, !alias.scope !354
  %i.eq = icmp sgt i64 %storemerge, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = lshr i64 %storemerge, 8
  %i.es = trunc i64 %i.er to i8
  %i.et = load i64, ptr %i.b, align 8, !alias.scope !372, !noundef !5 ; 4 uses
  %i.eu = load i64, ptr %0, align 8, !range !11, !alias.scope !372, !noundef !5
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ae, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i13

bb.ae:                                            ; preds = %_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns23append_character_string.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i13: ; preds = %bb.ae, %_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns23append_character_string.exit
  %i.ew = load ptr, ptr %i.l, align 8, !alias.scope !372, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  store i8 %i.es, ptr %i.ex, align 1
  %i.ey = add i64 %i.et, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.b, align 8, !alias.scope !372
  %i.ez = load i64, ptr %0, align 8, !range !11, !alias.scope !373, !noundef !5
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i13
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit.i13, %bb.af
  %i.fb = trunc i64 %storemerge to i8
  %i.fc = load ptr, ptr %i.l, align 8, !alias.scope !373, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ey
  store i8 %i.fb, ptr %i.fd, align 1
  %i.fe = add i64 %i.et, 2
  store i64 %i.fe, ptr %i.b, align 8, !alias.scope !373
  %i.ff = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.fg = load i64, ptr %i.aj, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fg)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.ag
  %i.fh = load i64, ptr %i.b, align 8, !alias.scope !374, !noundef !5 ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  %.not.i16 = icmp eq i64 %i.fg, 0
  br i1 %.not.i16, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc18
  %i.fj = load ptr, ptr %i.l, align 8, !alias.scope !374, !nonnull !5, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %i.ff, i64 %i.fg, i1 false)
  %.pre.i17 = load i64, ptr %i.b, align 8, !alias.scope !374
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.noexc18
  %i.fl = phi i64 [ %.pre.i17, %bb.ah ], [ %i.fh, %.noexc18 ]
  %i.fm = add i64 %i.fl, %i.fg
  store i64 %i.fm, ptr %i.b, align 8, !alias.scope !374
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.sink.split:                                      ; preds = %bb.ai, %.loopexit25
  %.sroa.0.0.ph = phi i8 [ 1, %.loopexit25 ], [ 2, %bb.ai ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7
  %.sroa.0.0 = phi i8 [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs6sOsJPswu84_11libp2p_mdns.exit7 ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i8 %.sroa.0.0

bb.am:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface3dns18generate_peer_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCshhqnaxk4GqT_4rand4rngs6thread3rng()
  store ptr %i.f, ptr %i.b, align 8
  %i.g = invoke noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !392, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !392, !noundef !5
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !noalias !392
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !396, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !396, !noundef !5
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !396
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %_RINvCshhqnaxk4GqT_4rand12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
  br label %_RINvCshhqnaxk4GqT_4rand12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns.exit

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.n, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvCshhqnaxk4GqT_4rand12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = add i64 %i.g, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  %i.s = call noundef nonnull ptr @_RNvNtNtCshhqnaxk4GqT_4rand4rngs6thread3rng(), !noalias !397
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !noalias !397
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !397
  call void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB2M_5other12AlphanumericNtNtNtB2O_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw i64 %i.u, 32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ak, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %common.resume unwind label %bb.p

bb.h:                                             ; preds = %bb.j, %_RINvCshhqnaxk4GqT_4rand12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

end_hunk_0
