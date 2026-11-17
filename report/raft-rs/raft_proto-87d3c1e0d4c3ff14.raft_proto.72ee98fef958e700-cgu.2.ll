Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.2?download=true
inline.NumInlined: 246
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs2_NtCslpwiOMB70Kp_8protobuf8repeatedINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE12push_defaultB14_:bb.a
bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE8push_mutBL_.exit
  %i.y = phi i64 [ %i.e, %bb.h ], [ %i.u, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE8push_mutBL_.exit ] ; 2 uses
  %i.z = phi ptr [ %i.w, %bb.h ], [ %.pre5, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE8push_mutBL_.exit ]
  %i.aa = phi i64 [ %i.c, %bb.h ], [ %.pre, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE8push_mutBL_.exit ] ; 2 uses
  %i.ab = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.ab, ptr %i.b, align 8
  %.not = icmp ugt i64 %i.ab, %i.y
  br i1 %.not, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not4 = icmp eq i64 %i.ab, 0
  br i1 %.not4, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.aa
  ret ptr %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate13conf_state_eq(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.c, %i.f
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.pre7 = load ptr, ptr %i.d, align 8            ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw i64 %i.c, 3
  %bcmp = tail call i32 @bcmp(ptr nonnull %.pre, ptr nonnull %.pre7, i64 %i.h)
  %i.i = icmp eq i32 %bcmp, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.a, %bb.i, %bb.g, %bb.e, %bb.b
  %i.j = tail call fastcc noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate16eq_without_order(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre7, i64 noundef %i.f)
  br i1 %i.j, label %bb.k, label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = shl nuw i64 %i.l, 3
  %bcmp4 = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.t)
  %i.u = icmp eq i32 %bcmp4, 0
  br i1 %i.u, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = shl nuw i64 %i.w, 3
  %bcmp5 = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull %i.ab, i64 %i.ae)
  %i.af = icmp eq i32 %bcmp5, 0
  br i1 %i.af, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.c

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ap = shl nuw i64 %i.ah, 3
  %bcmp6 = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.am, i64 %i.ap)
  %i.aq = icmp eq i32 %bcmp6, 0
  br i1 %i.aq, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = load i8, ptr %i.ar, align 8, !range !14, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.au = load i8, ptr %i.at, align 8, !range !14, !noundef !4
  %i.av = icmp eq i8 %i.as, %i.au
  br i1 %i.av, label %bb.o, label %bb.c

bb.k:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4
  %i.be = tail call fastcc noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate16eq_without_order(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bb, i64 noundef %i.bd)
  br i1 %i.be, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4
  %i.bn = tail call fastcc noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate16eq_without_order(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bk, i64 noundef %i.bm)
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !4
  %i.bw = tail call fastcc noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate16eq_without_order(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.bv)
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.by = load i8, ptr %i.bx, align 8, !range !14, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ca = load i8, ptr %i.bz, align 8, !range !14, !noundef !4
  %i.cb = icmp eq i8 %i.by, %i.ca
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.k, %bb.l, %bb.m, %bb.j, %bb.n
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ %i.cb, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs9RMo4C3Dvu6_10raft_proto9confstate16eq_without_order(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = and i64 %3, 1152921504606846968          ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %i.e = shl nuw nsw i64 %3, 3
  %.idx60 = and i64 %i.e, 56                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx60
  %.not.i50.a = icmp eq i64 %i.c, 0
  %.not.not.not.i.not.not.i53.a = icmp samesign eq i64 %.idx60, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit27
  %.sroa.01.029 = phi ptr [ %0, %.lr.ph ], [ %i.al, %.loopexit27 ] ; 2 uses
  %.sroa.01.0.val = load i64, ptr %.sroa.01.029, align 8 ; 9 uses
  br i1 %.not.i50.a, label %.preheader36.preheader.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i

bb.c:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 64
  %i.h = add nsw i64 %.sroa.5.0.i51, -8           ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.preheader36.preheader.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i

.preheader36.preheader.a:                         ; preds = %bb.c, %bb.b
  br i1 %.not.not.not.i.not.not.i53.a, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %.lr.ph54

.preheader36.a:                                   ; preds = %.lr.ph54
  %4 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.a = icmp eq ptr %4, %i.f
  br i1 %.not.not.not.i.not.not.i.a, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader36.preheader.a, %.preheader36.a
  %5 = phi ptr [ %4, %.preheader36.a ], [ %i.d, %.preheader36.preheader.a ] ; 2 uses
  %.val2.i.i = load i64, ptr %5, align 8, !alias.scope !237, !noalias !238, !noundef !4
  %i.i = icmp eq i64 %.val2.i.i, %.sroa.01.0.val
  br i1 %i.i, label %.loopexit27, label %.preheader36.a

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.05.i52 = phi ptr [ %i.g, %bb.c ], [ %2, %bb.b ] ; 9 uses
  %.sroa.5.0.i51 = phi i64 [ %i.h, %bb.c ], [ %i.c, %bb.b ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i52, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.j = icmp eq i64 %.val11.i.i, %.sroa.01.0.val
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 8
  %.val11.i.1.i = load i64, ptr %i.k, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.l = icmp eq i64 %.val11.i.1.i, %.sroa.01.0.val
  %i.m = or i1 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 16
  %.val11.i.2.i = load i64, ptr %i.n, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.o = icmp eq i64 %.val11.i.2.i, %.sroa.01.0.val
  %i.p = or i1 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 24
  %.val11.i.3.i = load i64, ptr %i.q, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.r = icmp eq i64 %.val11.i.3.i, %.sroa.01.0.val
  %i.s = or i1 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 32
  %.val11.i.4.i = load i64, ptr %i.t, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.u = icmp eq i64 %.val11.i.4.i, %.sroa.01.0.val
  %i.v = or i1 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 40
  %.val11.i.5.i = load i64, ptr %i.w, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.x = icmp eq i64 %.val11.i.5.i, %.sroa.01.0.val
  %i.y = or i1 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 48
  %.val11.i.6.i = load i64, ptr %i.z, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.aa = icmp eq i64 %.val11.i.6.i, %.sroa.01.0.val
  %i.ab = or i1 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i52, i64 56
  %.val11.i.7.i = load i64, ptr %i.ac, align 8, !alias.scope !237, !noalias !239, !noundef !4
  %i.ad = icmp eq i64 %.val11.i.7.i, %.sroa.01.0.val
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %.loopexit27, label %bb.c

._crit_edge:                                      ; preds = %.loopexit27, %bb.a
  %.idx33 = shl nuw nsw i64 %3, 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33
  %i.ag = icmp eq i64 %3, 0
  br i1 %i.ag, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge
  %i.ah = and i64 %1, 1152921504606846968         ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = shl nuw nsw i64 %1, 3
  %.idx61 = and i64 %i.aj, 56                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx61
  %.not.i855.a = icmp eq i64 %i.ah, 0
  %.not.not.not.i.not.not.i1958.a = icmp samesign eq i64 %.idx61, 0
  br label %bb.d

.loopexit27:                                      ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i, %.lr.ph54
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.029, i64 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %._crit_edge, label %bb.b

_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit: ; preds = %.preheader36.preheader.a, %.preheader36.a, %.loopexit, %.preheader.preheader.a, %.preheader.a, %._crit_edge
  %.sroa.0.0 = phi i1 [ false, %.preheader.a ], [ true, %._crit_edge ], [ false, %.preheader36.a ], [ false, %.preheader.preheader.a ], [ true, %.loopexit ], [ false, %.preheader36.preheader.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %.lr.ph32, %.loopexit
  %.sroa.03.030 = phi ptr [ %2, %.lr.ph32 ], [ %i.bm, %.loopexit ] ; 2 uses
  %.sroa.03.0.val = load i64, ptr %.sroa.03.030, align 8 ; 9 uses
  br i1 %.not.i855.a, label %.preheader.preheader.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i9

bb.e:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i9
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 64
  %i.ao = add nsw i64 %.sroa.5.0.i656, -8         ; 2 uses
  %.not.i8 = icmp eq i64 %i.ao, 0
  br i1 %.not.i8, label %.preheader.preheader.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i9

.preheader.preheader.a:                           ; preds = %bb.e, %bb.d
  br i1 %.not.not.not.i.not.not.i1958.a, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %.lr.ph59

.preheader.a:                                     ; preds = %.lr.ph59
  %6 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i19.a = icmp eq ptr %6, %i.ak
  br i1 %.not.not.not.i.not.not.i19.a, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader.preheader.a, %.preheader.a
  %7 = phi ptr [ %6, %.preheader.a ], [ %i.ai, %.preheader.preheader.a ] ; 2 uses
  %.val2.i.i20 = load i64, ptr %7, align 8, !alias.scope !240, !noalias !241, !noundef !4
  %i.ap = icmp eq i64 %.val2.i.i20, %.sroa.03.0.val
  br i1 %i.ap, label %.loopexit, label %.preheader.a

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i9: ; preds = %bb.d, %bb.e
  %.sroa.0.05.i757 = phi ptr [ %i.an, %bb.e ], [ %0, %bb.d ] ; 9 uses
  %.sroa.5.0.i656 = phi i64 [ %i.ao, %bb.e ], [ %i.ah, %bb.d ]
  %.val11.i.i10 = load i64, ptr %.sroa.0.05.i757, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.aq = icmp eq i64 %.val11.i.i10, %.sroa.03.0.val
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 8
  %.val11.i.1.i11 = load i64, ptr %i.ar, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.as = icmp eq i64 %.val11.i.1.i11, %.sroa.03.0.val
  %i.at = or i1 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 16
  %.val11.i.2.i12 = load i64, ptr %i.au, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.av = icmp eq i64 %.val11.i.2.i12, %.sroa.03.0.val
  %i.aw = or i1 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 24
  %.val11.i.3.i13 = load i64, ptr %i.ax, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.ay = icmp eq i64 %.val11.i.3.i13, %.sroa.03.0.val
  %i.az = or i1 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 32
  %.val11.i.4.i14 = load i64, ptr %i.ba, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.bb = icmp eq i64 %.val11.i.4.i14, %.sroa.03.0.val
  %i.bc = or i1 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 40
  %.val11.i.5.i15 = load i64, ptr %i.bd, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.be = icmp eq i64 %.val11.i.5.i15, %.sroa.03.0.val
  %i.bf = or i1 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 48
  %.val11.i.6.i16 = load i64, ptr %i.bg, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.bh = icmp eq i64 %.val11.i.6.i16, %.sroa.03.0.val
  %i.bi = or i1 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i757, i64 56
  %.val11.i.7.i17 = load i64, ptr %i.bj, align 8, !alias.scope !240, !noalias !242, !noundef !4
  %i.bk = icmp eq i64 %.val11.i.7.i17, %.sroa.03.0.val
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs9RMo4C3Dvu6_10raft_proto.exit.i9, %.lr.ph59
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.030, i64 8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.af
  br i1 %i.bn, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtB2_3Any7type_idBx_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtB2_3Any7type_idBx_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @9, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message10as_any_mut(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message6as_any(ptr noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtNtB9_8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtB5_15ReflectRepeated12reflect_iterB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.g = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #29 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.b
  store ptr %i.f, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @11, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtNtB9_8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtB5_15ReflectRepeated3getB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !245, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !245, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !245, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !245
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %i.b
  br i1 %i.g, label %_RNvXsm_NtCslpwiOMB70Kp_8protobuf8repeatedINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB14_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #26, !noalias !245
  unreachable

_RNvXsm_NtCslpwiOMB70Kp_8protobuf8repeatedINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB14_.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %1
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @15, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtNtB9_8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtB5_15ReflectRepeated12reflect_iterB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.g = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #29 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #31
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %i.b
  store ptr %i.f, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @16, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtCslpwiOMB70Kp_8protobuf7reflect8repeatedINtNtB9_8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtB5_15ReflectRepeated3getB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !248, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !248, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !248, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !248
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %i.b
  br i1 %i.g, label %_RNvXsm_NtCslpwiOMB70Kp_8protobuf8repeatedINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB14_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #26, !noalias !248
  unreachable

_RNvXsm_NtCslpwiOMB70Kp_8protobuf8repeatedINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB14_.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %1
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @17, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
end_hunk_0
