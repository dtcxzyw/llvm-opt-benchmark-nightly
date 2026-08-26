Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.6?download=true
inline.NumInlined: 135
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCskaDheoimX9_18simple_0rtt_client:bb.a
_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE3newCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @48, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !7, !noundef !5
  switch i8 %i.m, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 12, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.k, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 12, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 23)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 19)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 12)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 12)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 16, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 25, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.c, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 22)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 22)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 20)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 23)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 21)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 18)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.ai, %bb.m ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ], [ %i.as, %bb.u ], [ %i.au, %bb.v ], [ %i.aw, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %1 = alloca [24 x i8], align 8                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.h = load i64, ptr %0, align 8, !range !86, !alias.scope !204, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !204, !noundef !5
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCskaDheoimX9_18simple_0rtt_client.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !204, !noundef !5 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !204, !nonnull !5, !noundef !5 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 896
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !204, !nonnull !5, !noundef !5 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !207

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store i64 1, ptr %0, align 8, !alias.scope !204
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !204
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCskaDheoimX9_18simple_0rtt_client.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 896
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 896
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 896
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 896
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 896
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 896
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 896
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !204, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 896
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !204, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  invoke void @_RNvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskaDheoimX9_18simple_0rtt_client.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskaDheoimX9_18simple_0rtt_client.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskaDheoimX9_18simple_0rtt_client.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCskaDheoimX9_18simple_0rtt_client.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !211, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !87

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %.noexc1.i unwind label %bb.h, !noalias !208

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  store ptr %i.ae, ptr %i.a, align 8, !noalias !211
  invoke void @_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !208

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.h, !noalias !208 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCskaDheoimX9_18simple_0rtt_client.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 60680079189834052) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListINtNtNtBa_5slice4iter4IterB14_EECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @112, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @113, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_buf_exactNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamE0ECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write18write_all_vectoredCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.idx.i = shl nuw nsw i64 %2, 4                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = add nsw i64 %.idx.i, -16
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.017.i = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.016.i = phi ptr [ %i.i, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !215, !noundef !5
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.05.017.i, 1
  %i.k = icmp eq ptr %i.i, %i.b
  br i1 %i.k, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.017.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 5 uses
  %i.l = icmp ugt i64 %.sroa.05.0.lcssa.i, %2
  br i1 %i.l, label %bb.d, label %bb.c, !prof !218

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i64 %2, %.sroa.05.0.lcssa.i
  br i1 %i.m, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !215
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i
  %i.o = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19.outer

_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19.outer: ; preds = %bb.k, %.lr.ph
  %.sroa.0.02859.ph = phi ptr [ %i.ba, %bb.k ], [ %i.n, %.lr.ph ] ; 4 uses
  %.sroa.8.058.ph = phi i64 [ %i.az, %bb.k ], [ %i.o, %.lr.ph ] ; 7 uses
  br label %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19

_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19: ; preds = %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19.outer, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit
  %i.q = call { i64, ptr } @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write14write_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.02859.ph, i64 noundef %.sroa.8.058.ph) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 13 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 5 uses
  %i.u = trunc nuw i64 %i.r to i1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.v = and i64 %i.t, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %.split43
    i64 0, label %.split44
    i64 1, label %.split
  ], !prof !68

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.f
  %i.x = lshr i64 %i.t, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = invoke noundef zeroext i1 %i.aa(i32 noundef %i.y)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.thread, !inline_history !219

.split43:                                         ; preds = %bb.e
  %i.ac = lshr i64 %i.t, 32
  %i.ad = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.af, label %bb.l, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split44:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !220, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.s, i64 31
  %i.ak = load i8, ptr %i.aj, align 8, !range !220, !noundef !5
  %i.al = icmp eq i8 %i.ak, 35
  br i1 %i.al, label %bb.m, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.g:                                             ; preds = %_RNvMs7_NtNtCsj6eKBz9Db1c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit19
  %i.am = icmp eq ptr %i.s, null
  br i1 %i.am, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i6

.lr.ph.preheader.i6:                              ; preds = %bb.g
  %.idx.i5 = shl nuw nsw i64 %.sroa.8.058.ph, 4   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.02859.ph, i64 %.idx.i5
  %i.ao = add nsw i64 %.idx.i5, -16
  %i.ap = lshr exact i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.h, %.lr.ph.preheader.i6
end_hunk_0
