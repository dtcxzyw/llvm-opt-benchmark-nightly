Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherent:bb.a
  %i.r = extractvalue { i32, i32 } %i.p, 1
  %i.s = call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB12_(i32 noundef %i.q, i32 noundef %i.r, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1) ; 2 uses
  %i.t = extractvalue { i32, i32 } %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.v = load i32, ptr %i.u, align 4, !noundef !245
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %.split, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.c:                                             ; preds = %.thread67
  unreachable

bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread67

.split:                                           ; preds = %switch.lookup
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !range !253, !noundef !245
  %i.ab = extractvalue { i32, i32 } %i.s, 0       ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i32 %i.ab, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ad, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit, label %.thread67

bb.e:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !range !253, !noalias !11629, !noundef !245
  %i.ag = extractvalue { i32, i32 } %i.as, 0      ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i32 %i.ag, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit, label %.thread65

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 40
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.aj = icmp ne i32 %.sroa.7.0.copyload, 3
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i32 %.sroa.7.0.copyload, 2
  br i1 %i.ak, label %bb.h, label %.thread65

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = load <2 x i32>, ptr %i.al, align 8
  store <2 x i32> %i.am, ptr %i.a, align 8, !noalias !11629
  %i.an = call noundef nonnull align 4 ptr @_RNvXs2x_CsileJQcQObtj_7hir_defNtB6_7TraitIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1), !noalias !11629 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !range !253, !noalias !11629, !noundef !245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !11629, !noundef !245
  %i.as = call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB12_(i32 noundef %i.ap, i32 noundef %i.ar, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1), !noalias !11629 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.av = load i32, ptr %i.au, align 4, !noalias !11629, !noundef !245
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread65

bb.i:                                             ; preds = %.split63
  switch i32 %narrow, label %bb.t [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 4, label %bb.j
    i32 5, label %.thread67
    i32 7, label %bb.j
    i32 8, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 13, label %bb.j
    i32 16, label %.thread65
    i32 21, label %bb.j
    i32 22, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ax = tail call noundef nonnull align 8 ptr @_RNvMsa_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_9ImplItems2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %3, i32 noundef %4)
  br label %bb.s

.thread67:                                        ; preds = %bb.d, %.split, %bb.i
  switch i8 %.sroa.6.sroa.0.0.copyload, label %bb.c [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

.thread65:                                        ; preds = %bb.e, %bb.f, %.thread, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  %.not57 = icmp eq i64 %i.az, 0
  br i1 %.not57, label %bb.q, label %bb.p

bb.k:                                             ; preds = %.thread67
  %i.ba = call noundef nonnull align 8 ptr @_RNvMsf_NtCsileJQcQObtj_7hir_def10signaturesNtB5_15StructSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 129
  br label %bb.n

bb.l:                                             ; preds = %.thread67
  %i.bc = call noundef nonnull align 8 ptr @_RNvMsk_NtCsileJQcQObtj_7hir_def10signaturesNtB5_14UnionSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  br label %bb.n

bb.m:                                             ; preds = %.thread67
  %i.be = call noundef nonnull align 8 ptr @_RNvMsw_NtCsileJQcQObtj_7hir_def10signaturesNtB5_13EnumSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.06.0.in.in.in = phi ptr [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bf, %bb.m ]
  %.sroa.06.0.in.in = load i8, ptr %.sroa.06.0.in.in.in, align 1, !noundef !245
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.sroa.06.1.in.in = phi i8 [ %.sroa.06.0.in.in, %bb.n ], [ %i.bo, %bb.r ]
  %i.bg = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_9ImplItems2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %3, i32 noundef %4)
  %i.bh = and i8 %.sroa.06.1.in.in, 2
  %.not61 = icmp eq i8 %i.bh, 0
  br i1 %.not61, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit, label %bb.s

bb.p:                                             ; preds = %.thread65
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 40
  %.sroa.733.0.copyload = load i32, ptr %.sroa.733.0..sroa_idx, align 8 ; 2 uses
  %i.bi = icmp ne i32 %.sroa.733.0.copyload, 3
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i32 %.sroa.733.0.copyload, 2
  br i1 %i.bj, label %bb.r, label %bb.t

bb.q:                                             ; preds = %.thread65
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 24
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 28
  %.sroa.531.0.copyload = load i32, ptr %.sroa.531.0..sroa_idx, align 4
  %.sroa.030.0.copyload = load i32, ptr %i.bk, align 8
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs1m_NtCsileJQcQObtj_7hir_def10signaturesNtB6_14TraitSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.030.0.copyload, i32 noundef %.sroa.531.0.copyload)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load i16, ptr %i.bm, align 8, !noundef !245
  %i.bo = trunc i16 %i.bn to i8
  br label %bb.o

bb.s:                                             ; preds = %bb.o, %bb.j
  %.sroa.035.0 = phi ptr [ %i.bg, %bb.o ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !245 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit, label %.lr.ph

bb.t:                                             ; preds = %bb.p, %bb.i
  %i.bs = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_9ImplItems2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %3, i32 noundef %4) ; 0 uses
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit

.lr.ph:                                           ; preds = %bb.s
  %i.bt = load ptr, ptr %.sroa.035.0, align 8, !nonnull !245, !noundef !245 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bq, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  br label %bb.u

bb.u:                                             ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i, %.lr.ph
  %i.bv = phi ptr [ %i.bt, %.lr.ph ], [ %i.bw, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11630)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.bx, align 8, !alias.scope !11630, !noalias !11631
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !11630, !noalias !11631 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !11630, !noalias !11631 ; 3 uses
  switch i32 %.sroa.01.0.copyload.i.i, label %bb.v [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.by = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %.sroa.4.0.copyload.i.i, i32 noundef %.sroa.7.0.copyload.i.i), !noalias !11632
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 154
  %5 = load i16, ptr %i.bz, align 2, !noalias !11632, !noundef !245
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i

bb.x:                                             ; preds = %bb.u
  %i.ca = call noundef nonnull align 8 ptr @_RNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtB5_14ConstSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %.sroa.4.0.copyload.i.i, i32 noundef %.sroa.7.0.copyload.i.i), !noalias !11632
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 68
  %i.cc = load i8, ptr %i.cb, align 4, !noalias !11632, !noundef !245
  %.lobit6.i.i = lshr i8 %i.cc, 7
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i

bb.y:                                             ; preds = %bb.u
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs1M_NtCsileJQcQObtj_7hir_def10signaturesNtB6_18TypeAliasSignature2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %.sroa.4.0.copyload.i.i, i32 noundef %.sroa.7.0.copyload.i.i), !noalias !11632
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 152
  %i.cf = load i8, ptr %i.ce, align 8, !noalias !11632, !noundef !245
  %.lobit.i.i = lshr i8 %i.cf, 7
  br label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i

_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i.i = phi i8 [ %7, %bb.w ], [ %.lobit6.i.i, %bb.x ], [ %.lobit.i.i, %bb.y ]
  %i.cg = trunc i8 %.sroa.0.0.i.i to i1           ; 2 uses
  %.not70 = xor i1 %i.cg, true
  %i.ch = icmp eq ptr %i.bw, %i.bu
  %or.cond = select i1 %.not70, i1 true, i1 %i.ch
  br i1 %or.cond, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit, label %bb.u

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0EB2X_.exit: ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i, %.split63, %.split, %bb.o, %bb.s, %bb.t, %bb.e, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.split63 ], [ true, %bb.e ], [ true, %bb.a ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.o ], [ true, %.split ], [ %i.cg, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty6traits25is_inherent_impl_coherents0_0B5_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty6traits25structurally_normalize_ty(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11633 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 8 ; 2 uses
  %i.e = icmp ne i32 %.sroa.0.0.copyload, 27
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i32 %.sroa.0.0.copyload, 25
  br i1 %i.f, label %bb.c, label %bb.n

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB11_7fulfill15NextSolverErrorEEEB13_.exit, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.k, %bb.f ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d) #35
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB2_14ObligationCtxt3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 4, ptr %i.b, align 4
  invoke void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt25structurally_normalize_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !range !258, !noundef !245
  %.not = icmp eq i64 %i.h, -1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !245
  %.sroa.0.0 = select i1 %.not, ptr %i.j, ptr %1
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB11_7fulfill15NextSolverErrorEEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB11_7fulfill15NextSolverErrorEEEB13_.exit unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB11_7fulfill15NextSolverErrorEEEB13_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.n = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty24replace_infer_with_error(ptr noundef nonnull %.sroa.0.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB11_7fulfill15NextSolverErrorEEEB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill17ObligationStorageEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1g_9predicate9PredicateEINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB1g_8interner10DbInternerEEEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #35
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBN_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBN_8interner10DbInternerEEEENtNtNtB2j_3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.r, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit
  %.sroa.04.0 = phi ptr [ %i.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit ], [ %1, %bb.a ]
  ret ptr %.sroa.04.0

bb.o:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvNtCs8K4cjrcxBsw_6hir_ty6traits25where_predicate_must_hold(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %7) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11698 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [88 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [272 x i8], align 8               ; 5 uses
  %i.t = alloca [272 x i8], align 8               ; 10 uses
  %i.u = alloca [80 x i8], align 8                ; 10 uses
  %i.v = alloca [544 x i8], align 8               ; 50 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load i32, ptr %i.x, align 8, !range !253, !noundef !245
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !noundef !245
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner8new_with(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i32 noundef %i.y, i32 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.427.0.copyload = load i32, ptr %.sroa.427.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11700)
  %.not.i = icmp eq i32 %.sroa.427.0.copyload, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_16InferCtxtBuilder5build.exit, !prof !252

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #37, !noalias !11701
  unreachable

_RNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_16InferCtxtBuilder5build.exit: ; preds = %bb.a
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.29.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.29.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.31.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.31.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.33.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.33.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !11699
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.35.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.35.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !11699
  %.sroa.4.sroa.18.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 224
end_hunk_0
