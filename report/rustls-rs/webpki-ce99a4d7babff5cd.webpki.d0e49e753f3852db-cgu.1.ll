Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.1?download=true
inline.NumInlined: 97
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCshVVPy9isBpn_6webpki12subject_name42check_presented_id_conforms_to_constraints:_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph
  store i64 -9223372036854775795, ptr %i.i, align 8, !alias.scope !183, !noalias !186
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address31presented_id_matches_constraint.exit

bb.x:                                             ; preds = %bb.y, %bb.u
  %.sroa.018.1.i = phi i1 [ true, %bb.y ], [ false, %bb.u ]
  %i.bf = xor i8 %i.ax, %i.av
  %i.bg = and i8 %i.az, %i.bf
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.bi = icmp eq i64 %i.au, %i.ab
  br i1 %i.bi, label %bb.ab, label %bb.r

bb.aa:                                            ; preds = %bb.x
  store i8 0, ptr %i.x, align 8, !alias.scope !183, !noalias !186
  store i64 -1, ptr %i.i, align 8, !alias.scope !183, !noalias !186
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address31presented_id_matches_constraint.exit

bb.ab:                                            ; preds = %bb.z
  store i8 1, ptr %i.x, align 8, !alias.scope !183, !noalias !186
  store i64 -1, ptr %i.i, align 8, !alias.scope !183, !noalias !186
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address31presented_id_matches_constraint.exit

_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address31presented_id_matches_constraint.exit: ; preds = %bb.k, %bb.n, %bb.o, %bb.p, %bb.t, %bb.w, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  %i.bj = icmp eq i8 %i.w, %.sroa.2.0.copyload
  br i1 %i.bj, label %bb.aj, label %bb.h

bb.ad:                                            ; preds = %bb.i, %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address31presented_id_matches_constraint.exit
  %i.bk = load i64, ptr %i.i, align 8, !range !4, !noundef !5
  %.not84 = icmp eq i64 %i.bk, -1                 ; 2 uses
  br i1 %i.af, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.g, %bb.g
  store i8 %.sroa.0.0.copyload, ptr %i.x, align 8
  store i64 -1, ptr %i.i, align 8
  br i1 %i.af, label %.thread270, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  br i1 %.not84, label %bb.ai, label %.loopexit103

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not84, label %._crit_edge, label %.loopexit103

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load i8, ptr %i.x, align 8, !range !7
  %i.bl = trunc nuw i8 %.pre to i1
  br label %bb.ah

.loopexit103:                                     ; preds = %bb.ag, %bb.af, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  br label %bb.ak

bb.ah:                                            ; preds = %._crit_edge, %bb.ae
  %i.bm = phi i1 [ %i.bl, %._crit_edge ], [ false, %bb.ae ] ; 2 uses
  %not. = xor i1 %i.bm, true
  %.sroa.014.0. = select i1 %not., i1 true, i1 %.sroa.014.0.ph144
  %..sroa.013.0 = select i1 %i.bm, i1 true, i1 %.sroa.013.0.ph145
  br label %.outer

bb.ai:                                            ; preds = %bb.af
  %.pre254 = load i8, ptr %i.x, align 8, !range !7
  %i.bn = trunc nuw i8 %.pre254 to i1
  br i1 %i.bn, label %.thread270, label %.outer

.outer:                                           ; preds = %bb.ah, %bb.ai
  %.sroa.014.1 = phi i1 [ %.sroa.014.0.ph144, %bb.ai ], [ %.sroa.014.0., %bb.ah ] ; 2 uses
  %.sroa.013.1 = phi i1 [ %.sroa.013.0.ph145, %bb.ai ], [ %..sroa.013.0, %bb.ah ] ; 2 uses
  %i.bo = load i64, ptr %i.n, align 8, !noundef !5
  %i.bp = load i64, ptr %i.m, align 8, !noundef !5
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %.outer._crit_edge, label %.lr.ph

.thread270:                                       ; preds = %bb.ae, %bb.ai
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ac
  store i64 -9223372036854775783, ptr %i.i, align 8
  br label %.loopexit103

bb.ak:                                            ; preds = %.loopexit103, %.thread270, %.lr.ph._crit_edge, %.loopexit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.b

bb.al:                                            ; preds = %.outer._crit_edge
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.ak
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name15is_valid_dns_id(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, i8 noundef range(i8 0, 4) %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 253
  br i1 %i.a, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i8 %2, -2
  %.inv = icmp samesign ult i8 %2, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.b        ; 2 uses
  %i.c = icmp eq i8 %narrow, 2                    ; 3 uses
  %i.d = icmp eq i64 %1, 0                        ; 2 uses
  %or.cond = and i1 %i.d, %i.c                    ; 2 uses
  br i1 %or.cond, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not65 = xor i1 %3, true
  %or.cond66 = or i1 %i.d, %.not65
  br i1 %or.cond66, label %.peel.begin, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 1, !noundef !5
  %i.f = icmp eq i8 %i.e, 42
  br i1 %i.f, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit, label %.peel.begin

.peel.begin:                                      ; preds = %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87, %bb.c, %bb.d
  %.sroa.039.0.shrunk = phi i1 [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ false, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87 ]
  %.sroa.035.1.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87 ]
  %.sroa.017.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87 ] ; 4 uses
  %.sroa.049.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 2, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87 ] ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.049.0, i64 %1)
  %exitcond.peel.not.not = icmp samesign ult i64 %.sroa.049.0, %1
  br i1 %exitcond.peel.not.not, label %bb.e, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread

bb.e:                                             ; preds = %.peel.begin
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.049.0
  %i.h = or disjoint i64 %.sroa.049.0, 1          ; 2 uses
  %i.i = load i8, ptr %i.g, align 1, !noundef !5  ; 3 uses
  switch i8 %i.i, label %bb.g [
    i8 45, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread
    i8 95, label %bb.i
    i8 46, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw nsw i32 %.sroa.017.0, 1
  br i1 %.sroa.039.0.shrunk, label %bb.i, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread

bb.g:                                             ; preds = %bb.e
  %i.k = add i8 %i.i, -48
  %or.cond6.peel = icmp ult i8 %i.k, 10
  br i1 %or.cond6.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i8 %i.i, -33
  %i.m = add i8 %i.l, -91
  %or.cond63.peel = icmp ult i8 %i.m, -26
  br i1 %or.cond63.peel, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h, %bb.f
  %.sroa.032.1.peel = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %.sroa.021.1.peel = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %.sroa.017.2.peel = phi i32 [ %.sroa.017.0, %bb.e ], [ %i.j, %bb.f ], [ %.sroa.017.0, %bb.h ], [ %.sroa.017.0, %bb.g ] ; 2 uses
  %i.n = icmp eq i64 %i.h, %1
  br i1 %i.n, label %bb.r, label %.peel.next

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit: ; preds = %bb.d
  %.not62 = icmp eq i64 %1, 1
  br i1 %.not62, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87: ; preds = %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %.peel.begin, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread

.peel.next:                                       ; preds = %bb.i, %bb.o
  %.sroa.033.0 = phi i8 [ %.sroa.033.1, %bb.o ], [ 0, %bb.i ]
  %.sroa.032.0 = phi i1 [ %.sroa.032.1, %bb.o ], [ %.sroa.032.1.peel, %bb.i ] ; 2 uses
  %.sroa.021.0 = phi i64 [ %.sroa.021.1, %bb.o ], [ %.sroa.021.1.peel, %bb.i ] ; 7 uses
  %.sroa.017.1 = phi i32 [ %.sroa.017.2, %bb.o ], [ %.sroa.017.2.peel, %bb.i ] ; 5 uses
  %.sroa.049.3 = phi i64 [ %i.s, %bb.o ], [ %i.h, %bb.i ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.049.3, %umax
  br i1 %exitcond.not, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.j

bb.j:                                             ; preds = %.peel.next
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.049.3
  %i.s = add nuw i64 %.sroa.049.3, 1              ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !noundef !5  ; 3 uses
  switch i8 %i.t, label %bb.k [
    i8 45, label %bb.l
    i8 95, label %bb.m
    i8 46, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = add i8 %i.t, -48
  %or.cond6 = icmp ult i8 %i.u, 10
  br i1 %or.cond6, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.v = icmp eq i64 %.sroa.021.0, 0
  %i.w = add nsw i64 %.sroa.021.0, 1              ; 2 uses
  %i.x = icmp ugt i64 %i.w, 63
  %or.cond71 = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond71, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.m:                                             ; preds = %bb.j
  %.old = add nsw i64 %.sroa.021.0, 1             ; 2 uses
  %.old67 = icmp ugt i64 %.old, 63
  br i1 %.old67, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.y = add i32 %.sroa.017.1, 1
  %.not107 = icmp eq i64 %.sroa.021.0, 0
  %i.z = trunc nuw i8 %.sroa.033.0 to i1
  %or.cond73 = select i1 %.not107, i1 true, i1 %i.z
  br i1 %or.cond73, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.p, %bb.q, %bb.m
  %.sroa.033.1 = phi i8 [ 0, %bb.q ], [ 0, %bb.m ], [ 1, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ] ; 2 uses
  %.sroa.032.1 = phi i1 [ %spec.select, %bb.q ], [ false, %bb.m ], [ false, %bb.l ], [ %.sroa.032.0, %bb.n ], [ false, %bb.p ] ; 2 uses
  %.sroa.021.1 = phi i64 [ %i.ag, %bb.q ], [ %.old, %bb.m ], [ %i.w, %bb.l ], [ 0, %bb.n ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.017.2 = phi i32 [ %.sroa.017.1, %bb.q ], [ %.sroa.017.1, %bb.m ], [ %.sroa.017.1, %bb.l ], [ %i.y, %bb.n ], [ %.sroa.017.1, %bb.p ] ; 2 uses
  %i.aa = icmp eq i64 %i.s, %1
  br i1 %i.aa, label %.loopexit, label %.peel.next, !llvm.loop !189

bb.p:                                             ; preds = %bb.k
  %i.ab = and i8 %i.t, -33
  %i.ac = add i8 %i.ab, -91
  %or.cond63 = icmp ult i8 %i.ac, -26
  %i.ad = add nsw i64 %.sroa.021.0, 1             ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 63
  %or.cond68 = select i1 %or.cond63, i1 true, i1 %i.ae
  br i1 %or.cond68, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.q:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %.sroa.021.0, 0
  %spec.select = select i1 %i.af, i1 true, i1 %.sroa.032.0
  %i.ag = add nsw i64 %.sroa.021.0, 1             ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 63
  br i1 %i.ah, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

.loopexit:                                        ; preds = %bb.o
  %i.ai = trunc nuw i8 %.sroa.033.1 to i1
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.i
  %.sroa.033.1.lcssa = phi i1 [ false, %bb.i ], [ %i.ai, %.loopexit ]
  %.sroa.032.1.lcssa = phi i1 [ %.sroa.032.1.peel, %bb.i ], [ %.sroa.032.1, %.loopexit ]
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.1.peel, %bb.i ], [ %.sroa.021.1, %.loopexit ]
  %.sroa.017.2.lcssa = phi i32 [ %.sroa.017.2.peel, %bb.i ], [ %.sroa.017.2, %.loopexit ]
  %i.aj = icmp eq i64 %.sroa.021.1.lcssa, 0       ; 2 uses
  %i.ak = icmp ne i8 %narrow, 0
  %or.cond15.not99 = and i1 %i.ak, %i.aj
  %or.cond75 = or i1 %or.cond15.not99, %.sroa.033.1.lcssa
  %or.cond77 = select i1 %or.cond75, i1 true, i1 %.sroa.032.1.lcssa
  br i1 %or.cond77, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.sroa.035.1.shrunk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not = xor i1 %i.aj, true
  %i.al = zext i1 %.not to i32
  %spec.select64 = add i32 %.sroa.017.2.lcssa, %i.al
  %i.am = icmp slt i32 %spec.select64, 3
  br i1 %i.am, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread
  %.sroa.016.1 = phi i1 [ false, %bb.a ], [ %or.cond, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread ], [ true, %bb.t ], [ true, %bb.s ]
  ret i1 %.sroa.016.1

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread: ; preds = %bb.q, %bb.m, %bb.p, %bb.n, %.peel.next, %bb.l, %.peel.begin, %bb.f, %bb.h, %bb.e, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87, %bb.t, %bb.r, %bb.b
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name33presented_id_matches_reference_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i8 noundef range(i8 0, 3) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name15is_valid_dns_id(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef 3, i1 noundef zeroext true)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i1 @_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name15is_valid_dns_id(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %3, i1 noundef zeroext false)
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.x, %bb.k, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, %bb.u, %.critedge, %bb.ab, %bb.ad, %bb.d
  %.sink = phi i64 [ -1, %bb.k ], [ -1, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread ], [ -1, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge ], [ -9223372036854775790, %bb.x ], [ -1, %bb.u ], [ -1, %.critedge ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ %., %bb.d ], [ -9223372036854775790, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %.inv = icmp samesign ult i8 %3, 2
  %. = select i1 %.inv, i64 -9223372036854775788, i64 -9223372036854775790
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.c = add nsw i8 %3, -2
  %.inv52 = icmp samesign ult i8 %3, 2
  %narrow = select i1 %.inv52, i8 2, i8 %i.c      ; 3 uses
  switch i8 %narrow, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ], !prof !190

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit60, %bb.i, %bb.e
  %.sroa.19.0 = phi i64 [ 0, %bb.e ], [ %i.l, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit60 ], [ 0, %bb.i ], [ %i.o, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit ] ; 6 uses
  %i.d = icmp ult i64 %.sroa.19.0, %2
  br i1 %i.d, label %bb.p, label %.loopexit

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.e = icmp ugt i64 %2, %5
  br i1 %i.e, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.f = icmp eq i64 %5, 0
  br i1 %i.f, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.h = load i8, ptr %4, align 1, !noundef !5
  %i.i = icmp eq i8 %i.h, 46
  br i1 %i.i, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.j = xor i64 %5, -1
  %i.k = add i64 %2, %i.j                         ; 3 uses
  %.not.i = icmp ugt i64 %i.k, %2
  br i1 %.not.i, label %bb.n, label %bb.o, !prof !12

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit60: ; preds = %bb.l
  %i.l = sub nuw i64 %2, %5
  br label %bb.g

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.m = icmp ult i64 %i.k, %2
  br i1 %i.m, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit: ; preds = %bb.o
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.o = sub nuw i64 %2, %5
  %i.p = load i8, ptr %i.n, align 1, !noundef !5
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.g, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread

_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread: ; preds = %bb.o, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.r, align 8
  br label %bb.c

bb.p:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.19.0
  %i.t = load i8, ptr %i.s, align 1, !noundef !5
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %bb.q, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.q, %bb.g, %bb.p
  %.sroa.19.2 = phi i64 [ %.sroa.19.0, %bb.q ], [ %.sroa.19.0, %bb.g ], [ %.sroa.19.0, %bb.p ], [ %i.z, %bb.r ] ; 4 uses
  %.sroa.030.0 = phi i64 [ 0, %bb.q ], [ 0, %bb.g ], [ 0, %bb.p ], [ %i.ab, %bb.r ] ; 2 uses
  %i.v = add i64 %.sroa.030.0, %2                 ; 2 uses
  %i.w = sub i64 %i.v, %.sroa.19.2                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.19.2, i64 %2)
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.x = icmp eq i8 %narrow, 2
  %i.y = and i8 %3, 1
  %.not = icmp eq i8 %i.y, 0
  %or.cond53 = and i1 %.not, %i.x
  br i1 %or.cond53, label %.loopexit, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader: ; preds = %bb.q
  %i.z = add nuw i64 %.sroa.19.0, 1
  %.not104 = icmp eq i64 %5, 0
  br i1 %.not104, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, label %.lr.ph

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge: ; preds = %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aa, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65
  %.sroa.030.1103 = phi i64 [ %i.ab, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65 ], [ 0, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader ]
  %i.ab = add nuw i64 %.sroa.030.1103, 1          ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.r, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65

bb.r:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %.loopexit, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65: ; preds = %.lr.ph, %bb.r
  %exitcond.not = icmp eq i64 %i.ab, %5
  br i1 %exitcond.not, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.w, %.loopexit
  %.sroa.19.3 = phi i64 [ %.sroa.19.2, %.loopexit ], [ %i.ah, %bb.w ] ; 3 uses
  %.sroa.030.2 = phi i64 [ %.sroa.030.0, %.loopexit ], [ %i.ar, %bb.w ] ; 3 uses
  %exitcond109.not = icmp eq i64 %.sroa.19.3, %umax
  br i1 %exitcond109.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.19.3
  %i.ah = add i64 %.sroa.19.3, 1                  ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !noundef !5 ; 4 uses
  %exitcond110.not = icmp eq i64 %.sroa.030.2, %5
  br i1 %exitcond110.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t, %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aj, align 8
  br label %bb.c

bb.v:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.030.2
  %i.al = load i8, ptr %i.ak, align 1, !noundef !5 ; 3 uses
  %i.am = add i8 %i.ai, -65
  %or.cond = icmp ult i8 %i.am, 26
  %i.an = or disjoint i8 %i.ai, 32
  %.sroa.010.0 = select i1 %or.cond, i8 %i.an, i8 %i.ai
  %i.ao = add i8 %i.al, -65
end_hunk_0
