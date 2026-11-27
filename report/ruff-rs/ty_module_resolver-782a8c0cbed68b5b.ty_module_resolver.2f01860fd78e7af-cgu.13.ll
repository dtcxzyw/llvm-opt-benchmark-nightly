Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_module_resolver-782a8c0cbed68b5b.ty_module_resolver.2f01860fd78e7af-cgu.13?download=true
inline.NumInlined: 442
inline.NumDeleted: 233
begin_hunk_0_@_RNvXs1G_NtCs2AWtUsOyxgP_3std4pathNtB6_6PrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.i, %bb.e, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.d, %bb.c, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27, %bb.a, %bb.j, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ false, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33 ], [ false, %bb.e ], [ false, %bb.a ], [ %i.t, %bb.f ], [ false, %bb.m ], [ false, %bb.k ], [ false, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27 ], [ %i.ak, %bb.j ], [ %i.i, %bb.d ], [ false, %bb.c ], [ %i.z, %bb.h ], [ false, %bb.g ], [ %i.aq, %bb.l ], [ %i.aw, %bb.n ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable42:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load i64, ptr %i.e, align 8, !noundef !5
  %i.f = icmp eq i64 %.val22, %.val24
  br i1 %i.f, label %bb.d, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val21 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val21, ptr nonnull readonly %.val23, i64 %.val22), !alias.scope !1116
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val20 = load i64, ptr %i.k, align 8, !noundef !5
  %i.l = icmp eq i64 %.val18, %.val20
  br i1 %i.l, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i26 = tail call i32 @bcmp(ptr nonnull readonly %.val17, ptr nonnull readonly %.val19, i64 %.val18), !alias.scope !1117
  %i.o = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.o, label %bb.k, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14 = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16 = load i64, ptr %i.v, align 8, !noundef !5
  %i.w = icmp eq i64 %.val14, %.val16
  br i1 %i.w, label %bb.h, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i29 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %.val14), !alias.scope !1118
  %i.z = icmp eq i32 %bcmp.i.i29, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ac = icmp eq i64 %.val10, %.val12
  br i1 %i.ac, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33: ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i32 = tail call i32 @bcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %.val11, i64 %.val10), !alias.scope !1119
  %i.af = icmp eq i32 %bcmp.i.i32, 0
  br i1 %i.af, label %bb.m, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.j:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp eq i8 %i.ah, %i.aj
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.k:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6 = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8 = load i64, ptr %i.am, align 8, !noundef !5
  %i.an = icmp eq i64 %.val6, %.val8
  br i1 %i.an, label %bb.l, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7 = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i35 = tail call i32 @bcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val7, i64 %.val6), !alias.scope !1120
  %i.aq = icmp eq i32 %bcmp.i.i35, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.m:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load i64, ptr %i.as, align 8, !noundef !5
  %i.at = icmp eq i64 %.val2, %.val4
  br i1 %i.at, label %bb.n, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i38 = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %.val2), !alias.scope !1121
  %i.aw = icmp eq i32 %bcmp.i.i38, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs1_NtCsfDzkztWVnn_18ty_module_resolver11module_nameeINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_10ModuleNameE2eq(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality !guid !1124 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !10, !alias.scope !1125, !noundef !5 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24)
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !alias.scope !1125, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1125, !noundef !5
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %2, %bb.b ]
  %i.i = icmp eq i64 %1, %.sroa.01.0.i
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %.sroa.0.0.i, i64 %1)
  %i.j = icmp eq i32 %bcmp, 0
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit, %bb.d
  %.sroa.0.0 = phi i1 [ %i.j, %bb.d ], [ false, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsfDzkztWVnn_18ty_module_resolver8typeshedNtB5_16TypeshedVersionsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1213 {
.lr.ph:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx264, align 8
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5265.0..sroa_idx, align 8
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6266.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7255.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %bb.br
  %.pn = phi { ptr, i32 } [ %i.hm, %bb.bq ], [ %i.hm, %bb.br ], [ %lpad.loopexit.split-lp1034, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_(ptr noalias noundef align 8 dereferenceable(56) %i.g) #24
          to label %common.resume unwind label %bb.bs

bb.a:                                             ; preds = %.lr.ph, %.backedge
  %.lcssa436501 = phi i64 [ 0, %.lr.ph ], [ %.lcssa436499, %.backedge ] ; 3 uses
  %.pre.i2.i.i.i.i.i461492 = phi i64 [ 0, %.lr.ph ], [ %.pre.i2.i.i.i.i.i460, %.backedge ] ; 4 uses
  %i.i = phi i64 [ 0, %.lr.ph ], [ %i.aq, %.backedge ] ; 2 uses
  %i.j = icmp ult i64 %2, %.lcssa436501
  br i1 %i.j, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.a, %bb.e
  %i.k = phi i64 [ %i.z, %bb.e ], [ %.lcssa436501, %bb.a ] ; 5 uses
  %i.l = sub nuw i64 %2, %i.k                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.n = icmp samesign ult i64 %i.l, 16
  br i1 %i.n, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.o = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.l)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1214

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.l, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1215, !noalias !1214, !noundef !5
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %._crit_edge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.u = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %bb.b, %._crit_edge.i.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.q, %._crit_edge.i.i.i.i.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.v = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.x = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.y = add i64 %i.k, 1
  %i.z = add i64 %i.y, %i.x                       ; 6 uses
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.z, %2
  %i.aa = add i64 %i.k, %i.x
  %or.cond.i.i.i.i.i.i.not = icmp ult i64 %i.aa, %2
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  br i1 %.not13.i.i.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %1, i64 %i.k
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.x
  %lhsc = load i8, ptr %i.ac, align 1
  %i.ad = icmp eq i8 %lhsc, 10
  br i1 %i.ad, label %select.unfold.i.i.i, label %bb.e

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i: ; preds = %bb.e, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %bb.a
  %.lcssa436500 = phi i64 [ %.lcssa436501, %bb.a ], [ %2, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.not.i3.i.i.i.i.i.not = icmp eq i64 %2, %.pre.i2.i.i.i.i.i461492
  br i1 %.not.i3.i.i.i.i.i.not, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.f, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i
  %.lcssa436499 = phi i64 [ %.lcssa436500, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.pre.i2.i.i.i.i.i460 = phi i64 [ %.pre.i2.i.i.i.i.i461492, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %i.ae = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ false, %bb.f ]
  %.pn521 = phi i64 [ %2, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn521, %.pre.i2.i.i.i.i.i461492 ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i.i.i.i.i461492 ; 4 uses
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1216
  store i32 10, ptr %i.b, align 4, !noalias !1216
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1217

.noexc133:                                        ; preds = %select.unfold.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1216
  br i1 %i.ah, label %bb.g, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.g:                                             ; preds = %.noexc133
  %i.ai = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  store i32 13, ptr %i.a, align 4, !noalias !1216
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1217 ; 2 uses

.noexc134:                                        ; preds = %bb.g
  %i.ak = insertvalue { ptr, i64 } %i.ag, i64 %i.ai, 1
  %i.al = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i = select i1 %i.aj, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  %i.am = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %i.al, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  %..i.i.i.i.i = select i1 %i.aj, { ptr, i64 } %i.an, { ptr, i64 } %i.ak
  br label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %.noexc134, %.noexc133
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %.noexc134 ], [ %i.ag, %.noexc133 ] ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 4 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge, label %bb.h

bb.h:                                             ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.ap = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 6 uses
  %i.aq = add i64 %i.i, 1
  %3 = call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1) ; 4 uses
  %4 = icmp ugt i64 %3, 65535
  br i1 %4, label %bb.k, label %.lr.ph.split.i.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge: ; preds = %.backedge, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.bh
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit

.lr.ph.split.i.i:                                 ; preds = %bb.h, %.lr.ph.split.i.i.backedge
  %i.as = phi i64 [ %i.bh, %.lr.ph.split.i.i.backedge ], [ 0, %bb.h ] ; 5 uses
  %i.at = sub nuw i64 %i.ap, %i.as                ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as ; 2 uses
  %i.av = icmp samesign ult i64 %i.at, 16
  br i1 %i.av, label %.preheader.i.i.i, label %bb.l

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.aw = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 35, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.at)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

._crit_edge.i.i.i:                                ; preds = %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.at, %bb.m ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.m ], [ 1, %.lr.ph.i.i.i ]
  %i.ax = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ay = insertvalue { i64, i64 } %i.ax, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.01.05.i.i.i = phi i64 [ %i.bc, %bb.m ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.01.05.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !1219, !noalias !1218, !noundef !5
  %i.bb = icmp eq i8 %i.ba, 35
  br i1 %i.bb, label %._crit_edge.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.at
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.l, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ay, %._crit_edge.i.i.i ], [ %i.aw, %bb.l ] ; 2 uses
  %i.bd = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.n, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.n:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.bf = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.bg = add i64 %i.as, 1
  %i.bh = add i64 %i.bg, %i.bf                    ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.bh, %i.ap         ; 2 uses
  %i.bi = add i64 %i.as, %i.bf
  %or.cond.i.i.not = icmp ult i64 %i.bi, %i.ap
  br i1 %or.cond.i.i.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not13.i.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.o, %bb.p
  br label %.lr.ph.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.bj = add i64 %i.as, %i.bf                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bj
  %lhsc766 = load i8, ptr %i.bk, align 1
  %i.bl = icmp eq i8 %lhsc766, 35                 ; 2 uses
  %brmerge = select i1 %i.bl, i1 true, i1 %.not13.i.i
  br i1 %brmerge, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit, label %.lr.ph.split.i.i.backedge

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit: ; preds = %bb.p
  %.mux.le = select i1 %i.bl, i64 %i.bj, i64 %i.ap
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.o, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit
  %.sroa.4.1.i = phi i64 [ %.mux.le, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit ], [ %i.ap, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %i.ap, %bb.o ]
  %i.bm = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %.sroa.4.1.i)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1      ; 23 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.backedge, label %.lr.ph.split.i.i141

.lr.ph.split.i.i141:                              ; preds = %bb.q
  %i.bp = extractvalue { ptr, i64 } %i.bm, 0      ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.split.i.i141
  %i.bq = phi i64 [ 0, %.lr.ph.split.i.i141 ], [ %i.cf, %bb.v ] ; 5 uses
  %i.br = sub nuw i64 %i.bn, %i.bq                ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bt = icmp samesign ult i64 %i.br, 16
  br i1 %i.bt, label %.preheader.i.i.i160, label %bb.s

.preheader.i.i.i160:                              ; preds = %bb.r
  %.not.i.i.i161 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i161, label %._crit_edge.i.i.i165, label %.lr.ph.i.i.i162

bb.s:                                             ; preds = %bb.r
  %i.bu = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.br)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1220

._crit_edge.i.i.i165:                             ; preds = %bb.t, %.lr.ph.i.i.i162, %.preheader.i.i.i160
  %.sroa.01.0.lcssa.i.i.i166 = phi i64 [ 0, %.preheader.i.i.i160 ], [ %i.br, %bb.t ], [ %.sroa.01.05.i.i.i163, %.lr.ph.i.i.i162 ]
  %.sroa.0.1.i.i.i167 = phi i64 [ 0, %.preheader.i.i.i160 ], [ 0, %bb.t ], [ 1, %.lr.ph.i.i.i162 ]
  %i.bv = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i167, 0
  %i.bw = insertvalue { i64, i64 } %i.bv, i64 %.sroa.01.0.lcssa.i.i.i166, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143

.lr.ph.i.i.i162:                                  ; preds = %.preheader.i.i.i160, %bb.t
  %.sroa.01.05.i.i.i163 = phi i64 [ %i.ca, %bb.t ], [ 0, %.preheader.i.i.i160 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.05.i.i.i163
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !1221, !noalias !1220, !noundef !5
  %i.bz = icmp eq i8 %i.by, 58
  br i1 %i.bz, label %._crit_edge.i.i.i165, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i162
  %i.ca = add nuw nsw i64 %.sroa.01.05.i.i.i163, 1 ; 2 uses
  %exitcond.not.i.i.i164 = icmp eq i64 %i.ca, %i.br
  br i1 %exitcond.not.i.i.i164, label %._crit_edge.i.i.i165, label %.lr.ph.i.i.i162

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143: ; preds = %bb.s, %._crit_edge.i.i.i165
  %.merged.i.i.i144 = phi { i64, i64 } [ %i.bw, %._crit_edge.i.i.i165 ], [ %i.bu, %bb.s ] ; 2 uses
  %i.cb = extractvalue { i64, i64 } %.merged.i.i.i144, 0
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i159

bb.u:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143
  %i.cd = extractvalue { i64, i64 } %.merged.i.i.i144, 1 ; 3 uses
  %i.ce = add i64 %i.bq, 1
  %i.cf = add i64 %i.ce, %i.cd                    ; 5 uses
  %.not13.i.i156 = icmp ugt i64 %i.cf, %i.bn
  %i.cg = add i64 %i.bq, %i.cd
  %or.cond.i.i157.not = icmp ult i64 %i.cg, %i.bn
  br i1 %or.cond.i.i157.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  br i1 %.not13.i.i156, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i159, label %bb.r

bb.w:                                             ; preds = %bb.u
  %i.ch = add i64 %i.bq, %i.cd                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ch
  %lhsc768 = load i8, ptr %i.ci, align 1
  %i.cj = icmp eq i8 %lhsc768, 58
  br i1 %i.cj, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i159, label %bb.v

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i159: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143, %bb.v, %bb.w
  %.pre.i2.i180 = phi i64 [ %i.cf, %bb.w ], [ 0, %bb.v ], [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ] ; 5 uses
  %.promoted449 = phi i64 [ %i.cf, %bb.w ], [ %i.bn, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ], [ %i.cf, %bb.v ] ; 3 uses
  %i.ck = phi i1 [ false, %bb.w ], [ true, %bb.v ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ]
  %.sroa.4.1.i153 = phi i64 [ %i.ch, %bb.w ], [ %i.bn, %bb.v ], [ %i.bn, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ]
  %i.cl = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %.sroa.4.1.i153)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.bn, %.promoted449
  br i1 %i.cm, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, label %.lr.ph.split.i.i175

.lr.ph.split.i.i175:                              ; preds = %bb.x, %bb.ab
  %i.cn = phi i64 [ %i.dc, %bb.ab ], [ %.promoted449, %bb.x ] ; 5 uses
  %i.co = sub nuw i64 %i.bn, %i.cn                ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cn ; 2 uses
  %i.cq = icmp samesign ult i64 %i.co, 16
  br i1 %i.cq, label %.preheader.i.i.i194, label %bb.y

.preheader.i.i.i194:                              ; preds = %.lr.ph.split.i.i175
  %.not.i.i.i195 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i195, label %._crit_edge.i.i.i199, label %.lr.ph.i.i.i196

bb.y:                                             ; preds = %.lr.ph.split.i.i175
  %i.cr = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.co)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1222

._crit_edge.i.i.i199:                             ; preds = %bb.z, %.lr.ph.i.i.i196, %.preheader.i.i.i194
  %.sroa.01.0.lcssa.i.i.i200 = phi i64 [ 0, %.preheader.i.i.i194 ], [ %i.co, %bb.z ], [ %.sroa.01.05.i.i.i197, %.lr.ph.i.i.i196 ]
  %.sroa.0.1.i.i.i201 = phi i64 [ 0, %.preheader.i.i.i194 ], [ 0, %bb.z ], [ 1, %.lr.ph.i.i.i196 ]
  %i.cs = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i201, 0
  %i.ct = insertvalue { i64, i64 } %i.cs, i64 %.sroa.01.0.lcssa.i.i.i200, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177

.lr.ph.i.i.i196:                                  ; preds = %.preheader.i.i.i194, %bb.z
  %.sroa.01.05.i.i.i197 = phi i64 [ %i.cx, %bb.z ], [ 0, %.preheader.i.i.i194 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.05.i.i.i197
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !1223, !noalias !1222, !noundef !5
  %i.cw = icmp eq i8 %i.cv, 58
  br i1 %i.cw, label %._crit_edge.i.i.i199, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i196
  %i.cx = add nuw nsw i64 %.sroa.01.05.i.i.i197, 1 ; 2 uses
  %exitcond.not.i.i.i198 = icmp eq i64 %i.cx, %i.co
  br i1 %exitcond.not.i.i.i198, label %._crit_edge.i.i.i199, label %.lr.ph.i.i.i196

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177: ; preds = %bb.y, %._crit_edge.i.i.i199
  %.merged.i.i.i178 = phi { i64, i64 } [ %i.ct, %._crit_edge.i.i.i199 ], [ %i.cr, %bb.y ] ; 2 uses
  %i.cy = extractvalue { i64, i64 } %.merged.i.i.i178, 0
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.aa, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193

bb.aa:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177
  %i.da = extractvalue { i64, i64 } %.merged.i.i.i178, 1 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsfDzkztWVnn_18ty_module_resolver8typeshedNtB5_16TypeshedVersionsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str:.lr.ph
  %i.fd = add i64 %i.fc, %i.fb                    ; 5 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.fd, %i.di
  %i.fe = add i64 %i.fb, %i.eo                    ; 3 uses
  %or.cond.i.i.i.i.not.i = icmp ult i64 %i.fe, %i.di
  br i1 %or.cond.i.i.i.i.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  br i1 %.not13.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fe
  %lhsc.i = load i8, ptr %i.ff, align 1, !alias.scope !1228
  %i.fg = icmp eq i8 %lhsc.i, 46
  br i1 %i.fg, label %select.unfold.i.i, label %bb.ap

select.unfold.i.i:                                ; preds = %bb.aq, %bb.ap, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i, %bb.al
  %i.fh = phi i64 [ %i.el, %bb.al ], [ %i.fd, %bb.aq ], [ %i.di, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.fd, %bb.ap ]
  %.lcssa1417.i.i = phi i64 [ %.lcssa1418.i.i, %bb.al ], [ %i.fd, %bb.aq ], [ %.lcssa1418.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %.lcssa1418.i.i, %bb.ap ]
  %i.fi = phi i1 [ true, %bb.al ], [ false, %bb.aq ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ true, %bb.ap ]
  %.pn.i.i = phi i64 [ %i.di, %bb.al ], [ %i.fe, %bb.aq ], [ %i.di, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.di, %bb.ap ]
  %.sroa.4.1.i.i.ph.i.i = sub nuw i64 %.pn.i.i, %.lcssa1418.i.i
  %.sroa.0.1.i.i.ph.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.lcssa1418.i.i
  %i.fj = invoke noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.ph.i.i, i64 noundef %.sroa.4.1.i.i.ph.i.i)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1229

.noexc241:                                        ; preds = %select.unfold.i.i
  br i1 %i.fj, label %.split.i.i, label %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308

_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308: ; preds = %bb.ak, %.noexc241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.di, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread: ; preds = %.split.i.i
  %i.fk = icmp ult i64 %i.di, 25
  br i1 %i.fk, label %bb.as, label %bb.ar, !prof !9

bb.ar:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread
  %i.fl = invoke { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.di)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1230 ; 2 uses

.noexc244:                                        ; preds = %bb.ar
  %i.fm = extractvalue { ptr, i64 } %i.fl, 0      ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.be, label %bb.bf, !prof !7

bb.as:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread
  %i.fo = shl nuw nsw i64 %i.di, 56
  %i.fp = or disjoint i64 %i.fo, -4611686018427387904 ; 6 uses
  %i.fq = icmp samesign ugt i64 %i.di, 15
  br i1 %i.fq, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = icmp samesign ugt i64 %i.di, 7
  br i1 %i.fr, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.as
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dh, align 1, !alias.scope !1231
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.fs, align 1, !alias.scope !1231
  %i.ft = icmp eq i64 %i.di, 16
  br i1 %i.ft, label %bb.bd, label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.fu = icmp samesign ugt i64 %i.di, 3
  br i1 %i.fu, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.dh, align 1, !alias.scope !1231 ; 2 uses
  %i.fv = icmp eq i64 %i.di, 8
  br i1 %i.fv, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %.not = icmp eq i64 %i.di, 1
  br i1 %.not, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.av
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.dh, align 1, !alias.scope !1231
  %i.fw = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.fx = add nsw i64 %i.di, -4                   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.fx
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.fy, align 1, !alias.scope !1231
  %i.fz = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.ga = shl nuw nsw i64 %i.fx, 3
  %i.gb = shl nuw nsw i64 %i.fz, %i.ga
  %i.gc = or i64 %i.gb, %i.fw
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.dh, align 1, !alias.scope !1231
  %i.gd = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.ge = add nsw i64 %i.di, -2                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ge
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.gf, align 1, !alias.scope !1231
  %i.gg = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.gh = shl nuw nsw i64 %i.ge, 3
  %i.gi = shl nuw nsw i64 %i.gg, %i.gh
  %i.gj = or i64 %i.gi, %i.gd
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.gk = load i8, ptr %i.dh, align 1, !alias.scope !1231, !noundef !5
  %i.gl = zext i8 %i.gk to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.bb:                                            ; preds = %bb.aw
  %i.gm = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.gn, align 1, !alias.scope !1231
  %i.go = shl nuw nsw i64 %i.di, 3
  %i.gp = sub nuw nsw i64 128, %i.go
  %i.gq = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.gp
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.bc:                                            ; preds = %bb.au
  %i.gr = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.gs = getelementptr i8, ptr %i.gr, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.gs, align 1, !alias.scope !1231
  %.neg.i.i.i = mul nuw nsw i64 %i.di, 56
  %i.gt = and i64 %.neg.i.i.i, 56
  %i.gu = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.gt
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.au
  %.sroa.0.1.i.i.i243 = phi i64 [ %i.gu, %bb.bc ], [ 0, %bb.au ]
  %i.gv = icmp eq i64 %i.di, 24
  %i.gw = select i1 %i.gv, i64 0, i64 %i.fp
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i243, %i.gw
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.bd ], [ 0, %bb.aw ], [ %i.gq, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.bd ], [ %.sroa.011.0.copyload.i.i.i, %bb.aw ], [ %.sroa.011.0.copyload.i.i.i, %bb.bb ], [ %i.gc, %bb.ay ], [ %i.gj, %bb.az ], [ %i.gl, %bb.ba ]
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bd ], [ %i.fp, %bb.aw ], [ %i.fp, %bb.bb ], [ %i.fp, %bb.ay ], [ %i.fp, %bb.az ], [ %i.fp, %bb.ba ]
  %i.gx = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit

bb.be:                                            ; preds = %.noexc244
  invoke void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1232

.noexc245:                                        ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %.noexc244
  %i.gy = extractvalue { ptr, i64 } %i.fl, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit

bb.bg:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308
  %i.gz = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !6, !noundef !5 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ha, label %bb.bh, label %bb.bi, !prof !7

bb.bh:                                            ; preds = %bb.bg
  %i.he = load i64, ptr %i.hd, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hc, i64 %i.he) #23
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.hf = load ptr, ptr %i.hd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hg = icmp ule i64 %i.di, %i.hc
  call void @llvm.assume(i1 %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ek, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.hh, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hc, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hf, ptr %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr nonnull align 1 %i.dh, i64 %i.di, i1 false)
  br label %bb.bj

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.bf, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.gy, %bb.bf ] ; 5 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.di, %bb.bf ]
  %.sroa.0.0.i242 = phi ptr [ %i.gx, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fm, %bb.bf ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs4_NtCsfDzkztWVnn_18ty_module_resolver8typeshedNtB5_14PyVersionRangeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dn)
          to label %bb.bl unwind label %bb.bq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.ar, %bb.g, %select.unfold.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i159, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, %bb.l, %bb.s, %bb.am, %select.unfold.i.i, %bb.y, %bb.b, %bb.af, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227, %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308, %bb.bh, %bb.be, %bb.bn
  %lpad.loopexit.split-lp1034 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

bb.bl:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit
  %i.hi = load i64, ptr %i.f, align 8, !range !1233, !noundef !5
  %.not130 = icmp eq i64 %i.hi, -1
  br i1 %.not130, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hj = trunc nuw i64 %3 to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %i.hj, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.7255.23.extract.shift.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.hl = icmp eq i64 %.sroa.7255.23.extract.shift.mask, -2882303761517117440
  br i1 %i.hl, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit, !prof !7

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i242) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i242, i64 noundef %.sroa.4.0.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1234

bb.bo:                                            ; preds = %bb.bl
  %.sroa.0121.0.copyload = load i40, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.0.i242, ptr %i.e, align 8
  store i64 %.sroa.3.0.i, ptr %.sroa.7252.0..sroa_idx253, align 8
  store i64 %.sroa.4.0.i, ptr %.sroa.7255.0..sroa_idx256, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtBR_8typeshed14PyVersionRangeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i40 %.sroa.0121.0.copyload)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

.backedge:                                        ; preds = %bb.bp, %bb.q
  br i1 %i.ae, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge, label %bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split: ; preds = %bb.ad, %.thread303, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227, %bb.bj
  %.sink904 = phi i64 [ 32, %bb.bj ], [ 8, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227 ], [ 8, %.thread303 ], [ 8, %bb.ad ]
  %.sink903 = phi i64 [ %i.di, %bb.bj ], [ 1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227 ], [ 1, %.thread303 ], [ 1, %bb.ad ]
  %.sink.a = trunc nuw i64 %3 to i16
  %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink904
  store i64 %.sink903, ptr %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sink.a, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit

bb.bq:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.7255.23.extract.shift260.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.hn = icmp eq i64 %.sroa.7255.23.extract.shift260.mask, -2882303761517117440
  br i1 %i.hn, label %bb.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248, !prof !7

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i242) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i242, i64 noundef %.sroa.4.0.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248 unwind label %bb.bs, !noalias !1235

bb.bs:                                            ; preds = %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit: ; preds = %bb.bm, %bb.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split, %bb.k
  %i.hp = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6266.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hp, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1I_8typeshed14PyVersionRangeEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #24
          to label %common.resume unwind label %bb.bw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1f_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1m_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248, %bb.bt, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.hq, %bb.bt ], [ %i.hr, %bb.bu ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248 ]
  resume { ptr, i32 } %common.resume.op

bb.bw:                                            ; preds = %bb.bt
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1m_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBU_18VendoredFileSystem14read_directoryRNtNtBU_4path12VendoredPathE0INtB7_5FnMutTReEE8call_mutCsfDzkztWVnn_18ty_module_resolver(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1250 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.d = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1), !noalias !1251
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1251
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %3, %.val1
  br i1 %i.e, label %bb.d, label %.lr.ph.i.i.i.lr.ph.split.i.i

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !1251
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

.lr.ph.i.i.i.lr.ph.split.i.i:                     ; preds = %bb.c
  %i.f = sub nuw i64 %3, %.val1                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.val1 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvMs2_NtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_8FileType18from_zip_file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !1251 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.lr.ph.split.i.i
  %.sroa.0.024.i.i = phi i64 [ 0, %.lr.ph.i.i.i.lr.ph.split.i.i ], [ %i.ac, %bb.k ] ; 3 uses
  %i.i = phi i64 [ 0, %.lr.ph.i.i.i.lr.ph.split.i.i ], [ %i.y, %bb.k ]
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %i.j = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.i ] ; 4 uses
  %i.k = sub nuw i64 %i.f, %i.j                   ; 5 uses
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j     ; 3 uses
  %i.m = icmp samesign ult i64 %i.k, 16
  br i1 %i.m, label %.preheader.i.i.i.i.i.i, label %bb.f

.preheader.i.i.i.i.i.i:                           ; preds = %bb.e
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.k), !noalias !1253
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.g ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.g ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.g
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.t, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1254, !noalias !1255, !noundef !5
  %i.s = icmp eq i8 %i.r, 47
  br i1 %i.s, label %._crit_edge.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.t, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.p, %._crit_edge.i.i.i.i.i.i ], [ %i.n, %bb.f ] ; 2 uses
  %i.u = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsfDzkztWVnn_18ty_module_resolver.exit.i

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.w = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 3 uses
  %i.x = add i64 %i.j, 1
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.y, %i.f
  %i.z = add i64 %i.w, %i.j
  %or.cond.i.i.i.i.not.i = icmp ult i64 %i.z, %i.f
  br i1 %or.cond.i.i.i.i.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  br i1 %.not13.i.i.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsfDzkztWVnn_18ty_module_resolver.exit.i, label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.w
  %lhsc.i = load i8, ptr %i.aa, align 1, !alias.scope !1252
  %i.ab = icmp eq i8 %lhsc.i, 47
  br i1 %i.ab, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ac = add i64 %.sroa.0.024.i.i, 1
  br label %.lr.ph.i.i.i.i.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  br i1 %i.h, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsfDzkztWVnn_18ty_module_resolver.exit.i
  %i.ad = icmp ugt i64 %.sroa.0.024.i.i, 1
  br i1 %i.ad, label %bb.p, label %bb.o

bb.m:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsfDzkztWVnn_18ty_module_resolver.exit.i
  %.not.i = icmp eq i64 %.sroa.0.024.i.i, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 -1, ptr %0, align 8, !alias.scope !1251
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  tail call void @_RNvXsh_NtNtCs56aZGHL6Dc6_7ruff_db8vendored4pathNtB5_15VendoredPathBufINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ae = zext i1 %i.h to i8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1251
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.p:                                             ; preds = %bb.l
  store i64 -1, ptr %0, align 8, !alias.scope !1251
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.b, %bb.d, %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCshFWUtO0bu8g_6camino11Utf8PathBufNtB6_5Debug3fmtCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1256 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_CshFWUtO0bu8g_6caminoNtB5_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
