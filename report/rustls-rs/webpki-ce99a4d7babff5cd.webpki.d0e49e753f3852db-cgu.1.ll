Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.1?download=true
inline.NumInlined: 97
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCshVVPy9isBpn_6webpki12subject_name42check_presented_id_conforms_to_constraints:_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph

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
  %i.w = add i64 %.sroa.021.0, 1                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 63
  %or.cond71 = or i1 %i.v, %i.x
  br i1 %or.cond71, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.m:                                             ; preds = %bb.j
  %.old = add i64 %.sroa.021.0, 1                 ; 2 uses
  %.old67 = icmp ugt i64 %.old, 63
  br i1 %.old67, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.y = add i32 %.sroa.017.1, 1
  %.not = icmp eq i64 %.sroa.021.0, 0
  %i.z = trunc nuw i8 %.sroa.033.0 to i1
  %or.cond73 = select i1 %.not, i1 true, i1 %i.z
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
  %i.ad = add i64 %.sroa.021.0, 1                 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 63
  %or.cond68 = select i1 %or.cond63, i1 true, i1 %i.ae
  br i1 %or.cond68, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

bb.q:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %.sroa.021.0, 0
  %spec.select = select i1 %i.af, i1 true, i1 %.sroa.032.0
  %i.ag = add i64 %.sroa.021.0, 1                 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 63
  br i1 %i.ah, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.o

.loopexit:                                        ; preds = %bb.o
  %i.ai = trunc nuw i8 %.sroa.033.1 to i1
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.i
  %.sroa.033.1.lcssa = phi i1 [ false, %bb.i ], [ %i.ai, %.loopexit ]
  %.sroa.032.1.lcssa = phi i1 [ %.sroa.032.1.peel, %bb.i ], [ %.sroa.032.1, %.loopexit ]
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.1.peel, %bb.i ], [ %.sroa.021.1, %.loopexit ] ; 2 uses
  %.sroa.017.2.lcssa = phi i32 [ %.sroa.017.2.peel, %bb.i ], [ %.sroa.017.2, %.loopexit ]
  %i.aj = icmp eq i64 %.sroa.021.1.lcssa, 0
  %i.ak = icmp ne i8 %narrow, 0
  %or.cond15.not99 = and i1 %i.ak, %i.aj
  %or.cond75 = or i1 %or.cond15.not99, %.sroa.033.1.lcssa
  %or.cond77 = select i1 %or.cond75, i1 true, i1 %.sroa.032.1.lcssa
  br i1 %or.cond77, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.sroa.035.1.shrunk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = icmp ne i64 %.sroa.021.1.lcssa, 0
  %i.am = zext i1 %i.al to i32
  %spec.select64 = add i32 %.sroa.017.2.lcssa, %i.am
  %i.an = icmp slt i32 %spec.select64, 3
  br i1 %i.an, label %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit87.thread, label %bb.u

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

bb.c:                                             ; preds = %bb.a, %bb.w, %bb.k, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, %bb.t, %.critedge, %bb.aa, %bb.ac, %bb.d
  %.sink = phi i64 [ -1, %bb.k ], [ -1, %_RNvXsw_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputENtNtB7_3cmp9PartialEq2eqCshVVPy9isBpn_6webpki.exit.thread ], [ -1, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge ], [ -9223372036854775790, %bb.w ], [ -1, %bb.t ], [ -1, %.critedge ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ %., %bb.d ], [ -9223372036854775790, %bb.a ]
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
  br i1 %i.u, label %6, label %.loopexit

.loopexit:                                        ; preds = %bb.q, %6, %bb.g, %bb.p
  %.sroa.19.2 = phi i64 [ %.sroa.19.0, %6 ], [ %.sroa.19.0, %bb.g ], [ %.sroa.19.0, %bb.p ], [ %i.x, %bb.q ] ; 4 uses
  %.sroa.030.0 = phi i64 [ 0, %6 ], [ 0, %bb.g ], [ 0, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.v = add i64 %.sroa.030.0, %2                 ; 2 uses
  %i.w = sub i64 %i.v, %.sroa.19.2                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.19.2, i64 %2)
  br label %bb.r

6:                                                ; preds = %bb.p
  %7 = icmp eq i8 %narrow, 2
  %8 = and i8 %3, 1
  %.not = icmp eq i8 %8, 0
  %or.cond53 = and i1 %.not, %7
  br i1 %or.cond53, label %.loopexit, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader: ; preds = %6
  %i.x = add nuw i64 %.sroa.19.0, 1
  %.not104 = icmp eq i64 %5, 0
  br i1 %.not104, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, label %.lr.ph

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge: ; preds = %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.y, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65
  %.sroa.030.1103 = phi i64 [ %i.z, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65 ], [ 0, %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65.preheader ]
  %i.z = add nuw i64 %.sroa.030.1103, 1           ; 5 uses
  %i.aa = icmp ult i64 %i.z, %5
  br i1 %i.aa, label %bb.q, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65

bb.q:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !5
  %i.ad = icmp eq i8 %i.ac, 46
  br i1 %i.ad, label %.loopexit, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65

_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65: ; preds = %.lr.ph, %bb.q
  %exitcond.not = icmp eq i64 %i.z, %5
  br i1 %exitcond.not, label %_RNvMs_NtCs2XfPe3Xe4Zx_9untrusted6readerNtB4_6Reader10read_bytes.exit65._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.v, %.loopexit
  %.sroa.19.3 = phi i64 [ %.sroa.19.2, %.loopexit ], [ %i.af, %bb.v ] ; 3 uses
  %.sroa.030.2 = phi i64 [ %.sroa.030.0, %.loopexit ], [ %i.ap, %bb.v ] ; 3 uses
  %exitcond109.not = icmp eq i64 %.sroa.19.3, %umax
  br i1 %exitcond109.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.19.3
  %i.af = add i64 %.sroa.19.3, 1                  ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !noundef !5 ; 4 uses
  %exitcond110.not = icmp eq i64 %.sroa.030.2, %5
  br i1 %exitcond110.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ah, align 8
  br label %bb.c

bb.u:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.030.2
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5 ; 3 uses
  %i.ak = add i8 %i.ag, -65
  %or.cond = icmp ult i8 %i.ak, 26
  %i.al = or disjoint i8 %i.ag, 32
  %.sroa.010.0 = select i1 %or.cond, i8 %i.al, i8 %i.ag
  %i.am = add i8 %i.aj, -65
  %or.cond2 = icmp ult i8 %i.am, 26
  %i.an = or disjoint i8 %i.aj, 32
  %.sroa.011.0 = select i1 %or.cond2, i8 %i.an, i8 %i.aj
  %i.ao = icmp eq i8 %.sroa.010.0, %.sroa.011.0
  br i1 %i.ao, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.ap = add i64 %.sroa.030.2, 1
  %i.aq = icmp eq i64 %i.af, %2
  br i1 %i.aq, label %bb.w, label %bb.r

bb.w:                                             ; preds = %bb.v
  %i.ar = icmp eq i8 %i.ag, 46
  br i1 %i.ar, label %bb.c, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = icmp eq i64 %i.w, %5
  br i1 %i.as, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %9 = icmp eq i8 %narrow, 2
  br i1 %9, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %i.au = load i8, ptr %i.at, align 1, !noundef !5
  %i.av = icmp eq i8 %i.au, 46
  br i1 %i.av, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aw, align 8
  br label %bb.c

bb.ab:                                            ; preds = %bb.z
  %i.ax = sub i64 %i.v, %.sroa.19.2
  %i.ay = add i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, %5
  br i1 %i.az, label %bb.ac, label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ba, align 8
  br label %bb.c

bb.ac:                                            ; preds = %bb.x, %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bb, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshVVPy9isBpn_6webpki10end_entityNtB2_13EndEntityCertINtNtCsj6eKBz9Db1c_4core7convert7TryFromRNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) initializes((0, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !5
  call void @_RNvMNtCshVVPy9isBpn_6webpki4certNtB2_4Cert8from_der(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0, i64 noundef %.sroa.3.0)
  %i.b = load i64, ptr %i.a, align 8, !range !191, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.510.0..sroa_idx, i64 184, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshVVPy9isBpn_6webpki12trust_anchorNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB4_4cert4CertE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.j, null                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.5.sroa.4.0 = select i1 %.not, i64 undef, i64 %i.l
  %.sroa.0.0 = select i1 %.not, i64 -2, i64 -1
  store i64 -1, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.511.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.m, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.h, ptr %.sroa.517.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %i.o = load i64, ptr %1, align 8, !range !6, !alias.scope !200, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki4cert4CertEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECshVVPy9isBpn_6webpki.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECshVVPy9isBpn_6webpki.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %1)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki4cert4CertEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki4cert4CertEBF_.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshVVPy9isBpn_6webpki4timeNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtNtB4_3der7FromDer8from_der(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  %i.k = icmp eq i8 %i.j, 23
  %i.l = zext i1 %i.k to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i8 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 2 uses
  store i8 %storemerge, ptr %i.b, align 1
  %. = sub nuw nsw i8 24, %storemerge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 18, ptr %i.m, align 8
  store i64 -9223372036854775778, ptr %i.a, align 8
  call void @_RINvNtCshVVPy9isBpn_6webpki3der14nested_limitedNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNCNvXNtB4_4timeBJ_NtB2_7FromDer8from_der0EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %., ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, i64 noundef 65535)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs0_NtCshVVPy9isBpn_6webpki12subject_nameNtB5_11GeneralNameNtNtB7_3der7FromDer8from_der(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !206, !noalias !207, !noundef !5 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !206, !noalias !207, !noundef !5 ; 13 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !206, !noalias !207, !nonnull !5, !noundef !5 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  %i.h = add nuw i64 %i.b, 1                      ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !206, !noalias !207
  %i.i = load i8, ptr %i.g, align 1, !noalias !208, !noundef !5 ; 2 uses
  %i.j = and i8 %i.i, 31
  %i.k = icmp ne i8 %i.j, 31
  %i.l = icmp ult i64 %i.h, %i.d
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.n = add nuw i64 %i.b, 2                      ; 10 uses
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !206, !noalias !207
  %i.o = load i8, ptr %i.m, align 1, !noalias !208, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i8 %i.o to i64
  br label %.thread

bb.e:                                             ; preds = %bb.c
  switch i8 %i.o, label %bb.w [
end_hunk_0
