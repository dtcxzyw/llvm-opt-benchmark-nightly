Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_module_resolver-782a8c0cbed68b5b.ty_module_resolver.2f01860fd78e7af-cgu.13?download=true
inline.NumInlined: 442
inline.NumDeleted: 233
begin_hunk_0_@_RNvXs1G_NtCs2AWtUsOyxgP_3std4pathNtB6_6PrefixNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %default.unreachable42 [
    i8 0, label %bb.c
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
  %.val22 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = icmp eq i64 %.val22, %.val24
  br i1 %i.f, label %bb.d, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val21 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val21, ptr nonnull readonly %.val23, i64 %.val22), !alias.scope !979
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val20 = load i64, ptr %i.k, align 8, !noundef !4
  %i.l = icmp eq i64 %.val18, %.val20
  br i1 %i.l, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i26 = tail call i32 @bcmp(ptr nonnull readonly %.val17, ptr nonnull readonly %.val19, i64 %.val18), !alias.scope !980
  %i.o = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.o, label %bb.k, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !4
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16 = load i64, ptr %i.v, align 8, !noundef !4
  %i.w = icmp eq i64 %.val14, %.val16
  br i1 %i.w, label %bb.h, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i29 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %.val14), !alias.scope !981
  %i.z = icmp eq i32 %bcmp.i.i29, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ac = icmp eq i64 %.val10, %.val12
  br i1 %i.ac, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33: ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i32 = tail call i32 @bcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %.val11, i64 %.val10), !alias.scope !982
  %i.af = icmp eq i32 %bcmp.i.i32, 0
  br i1 %i.af, label %bb.m, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.j:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp eq i8 %i.ah, %i.aj
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.k:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6 = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8 = load i64, ptr %i.am, align 8, !noundef !4
  %i.an = icmp eq i64 %.val6, %.val8
  br i1 %i.an, label %bb.l, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7 = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5 = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i35 = tail call i32 @bcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val7, i64 %.val6), !alias.scope !983
  %i.aq = icmp eq i32 %bcmp.i.i35, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.m:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load i64, ptr %i.as, align 8, !noundef !4
  %i.at = icmp eq i64 %.val2, %.val4
  br i1 %i.at, label %bb.n, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i38 = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %.val2), !alias.scope !984
  %i.aw = icmp eq i32 %bcmp.i.i38, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsfDzkztWVnn_18ty_module_resolver.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs1_NtCsfDzkztWVnn_18ty_module_resolver11module_nameeINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_10ModuleNameE2eq(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !9, !alias.scope !987, !noundef !4 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24)
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !alias.scope !987, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !987, !noundef !4
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
define void @_RNvXs1_NtCsfDzkztWVnn_18ty_module_resolver8typeshedNtB5_16TypeshedVersionsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248: ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bq, %bb.br, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.hj, %bb.bq ], [ %i.he, %bb.bk ], [ %i.hj, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit313, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit316, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit318, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit321, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit323, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit326, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit328, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_(ptr noalias noundef align 8 dereferenceable(56) %i.g) #24
          to label %common.resume unwind label %bb.bs

.loopexit:                                        ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit:                      ; preds = %bb.al
  %lpad.loopexit313 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %select.unfold.i.i
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.y
  %lpad.loopexit318 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.s
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l
  %lpad.loopexit323 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.aq, %bb.g, %select.unfold.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, %.thread788, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.bd, %bb.bg, %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

bb.a:                                             ; preds = %.lr.ph, %.backedge
  %.lcssa428503 = phi i64 [ 0, %.lr.ph ], [ %.lcssa428501, %.backedge ] ; 3 uses
  %.pre.i2.i.i.i.i.i459494 = phi i64 [ 0, %.lr.ph ], [ %.pre.i2.i.i.i.i.i458, %.backedge ] ; 4 uses
  %i.i = phi i64 [ 0, %.lr.ph ], [ %i.aq, %.backedge ] ; 2 uses
  %i.j = icmp ult i64 %2, %.lcssa428503
  br i1 %i.j, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.a, %bb.e
  %i.k = phi i64 [ %i.z, %bb.e ], [ %.lcssa428503, %bb.a ] ; 5 uses
  %i.l = sub nuw i64 %2, %i.k                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.n = icmp samesign ult i64 %i.l, 16
  br i1 %i.n, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.o = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.l)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.l, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1060, !noalias !1061, !noundef !4
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
  %.lcssa428502 = phi i64 [ %.lcssa428503, %bb.a ], [ %2, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.not.i3.i.i.i.i.i.not = icmp eq i64 %2, %.pre.i2.i.i.i.i.i459494
  br i1 %.not.i3.i.i.i.i.i.not, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.f, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i
  %.lcssa428501 = phi i64 [ %.lcssa428502, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.pre.i2.i.i.i.i.i458 = phi i64 [ %.pre.i2.i.i.i.i.i459494, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %i.ae = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ false, %bb.f ]
  %.pn521 = phi i64 [ %2, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn521, %.pre.i2.i.i.i.i.i459494 ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i.i.i.i.i459494 ; 4 uses
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1062
  store i32 10, ptr %i.b, align 4, !noalias !1062
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 5) 1)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc133:                                        ; preds = %select.unfold.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1062
  br i1 %i.ah, label %bb.g, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.g:                                             ; preds = %.noexc133
  %i.ai = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1062
  store i32 13, ptr %i.a, align 4, !noalias !1062
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 5) 1)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc134:                                        ; preds = %bb.g
  %i.ak = insertvalue { ptr, i64 } %i.ag, i64 %i.ai, 1
  %i.al = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i = select i1 %i.aj, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  %i.am = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %i.al, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1062
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
  %i.ar = call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1) ; 4 uses
  %i.as = icmp ugt i64 %i.ar, 65535
  br i1 %i.as, label %bb.k, label %.lr.ph.split.i.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge: ; preds = %.backedge, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsfDzkztWVnn_18ty_module_resolver.exit.i.i.i.i.i, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.bg
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.at, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ar, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit

.lr.ph.split.i.i:                                 ; preds = %bb.h, %.lr.ph.split.i.i.backedge
  %i.au = phi i64 [ %i.bj, %.lr.ph.split.i.i.backedge ], [ 0, %bb.h ] ; 5 uses
  %i.av = sub nuw i64 %i.ap, %i.au                ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au ; 2 uses
  %i.ax = icmp samesign ult i64 %i.av, 16
  br i1 %i.ax, label %.preheader.i.i.i, label %bb.l

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %i.ay = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 35, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef range(i64 0, -9223372036854775808) %i.av)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.av, %bb.m ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.m ], [ 1, %.lr.ph.i.i.i ]
  %i.az = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ba = insertvalue { i64, i64 } %i.az, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.01.05.i.i.i = phi i64 [ %i.be, %bb.m ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.05.i.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !1063, !noalias !1064, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 35
  br i1 %i.bd, label %._crit_edge.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.be = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.av
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.l, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ba, %._crit_edge.i.i.i ], [ %i.ay, %bb.l ] ; 2 uses
  %i.bf = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.n, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.n:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.bh = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.bi = add i64 %i.au, 1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.bj, %i.ap         ; 2 uses
  %i.bk = add i64 %i.au, %i.bh
  %or.cond.i.i.not = icmp ult i64 %i.bk, %i.ap
  br i1 %or.cond.i.i.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not13.i.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.o, %bb.p
  br label %.lr.ph.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = add i64 %i.au, %i.bh                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bl
  %lhsc778 = load i8, ptr %i.bm, align 1
  %i.bn = icmp eq i8 %lhsc778, 35                 ; 2 uses
  %brmerge = select i1 %i.bn, i1 true, i1 %.not13.i.i
  br i1 %brmerge, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit, label %.lr.ph.split.i.i.backedge

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit: ; preds = %bb.p
  %.mux.le = select i1 %i.bn, i64 %i.bl, i64 %i.ap
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.o, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit
  %.sroa.4.1.i = phi i64 [ %.mux.le, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.split.loop.exit ], [ %i.ap, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %i.ap, %bb.o ]
  %i.bo = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %.sroa.4.1.i)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.q:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1      ; 23 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.backedge, label %.lr.ph.split.i.i141

.lr.ph.split.i.i141:                              ; preds = %bb.q
  %i.br = extractvalue { ptr, i64 } %i.bo, 0      ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.split.i.i141
  %i.bs = phi i64 [ 0, %.lr.ph.split.i.i141 ], [ %i.ch, %bb.v ] ; 5 uses
  %i.bt = sub nuw i64 %i.bp, %i.bs                ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bt, 16
  br i1 %i.bv, label %.preheader.i.i.i160, label %bb.s

.preheader.i.i.i160:                              ; preds = %bb.r
  %.not.i.i.i161 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i161, label %._crit_edge.i.i.i165, label %.lr.ph.i.i.i162

bb.s:                                             ; preds = %bb.r
  %i.bw = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef range(i64 0, -9223372036854775808) %i.bt)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i165:                             ; preds = %bb.t, %.lr.ph.i.i.i162, %.preheader.i.i.i160
  %.sroa.01.0.lcssa.i.i.i166 = phi i64 [ 0, %.preheader.i.i.i160 ], [ %i.bt, %bb.t ], [ %.sroa.01.05.i.i.i163, %.lr.ph.i.i.i162 ]
  %.sroa.0.1.i.i.i167 = phi i64 [ 0, %.preheader.i.i.i160 ], [ 0, %bb.t ], [ 1, %.lr.ph.i.i.i162 ]
  %i.bx = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i167, 0
  %i.by = insertvalue { i64, i64 } %i.bx, i64 %.sroa.01.0.lcssa.i.i.i166, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143

.lr.ph.i.i.i162:                                  ; preds = %.preheader.i.i.i160, %bb.t
  %.sroa.01.05.i.i.i163 = phi i64 [ %i.cc, %bb.t ], [ 0, %.preheader.i.i.i160 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.05.i.i.i163
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1065, !noalias !1066, !noundef !4
  %i.cb = icmp eq i8 %i.ca, 58
  br i1 %i.cb, label %._crit_edge.i.i.i165, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i162
  %i.cc = add nuw nsw i64 %.sroa.01.05.i.i.i163, 1 ; 2 uses
  %exitcond.not.i.i.i164 = icmp eq i64 %i.cc, %i.bt
  br i1 %exitcond.not.i.i.i164, label %._crit_edge.i.i.i165, label %.lr.ph.i.i.i162

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143: ; preds = %bb.s, %._crit_edge.i.i.i165
  %.merged.i.i.i144 = phi { i64, i64 } [ %i.by, %._crit_edge.i.i.i165 ], [ %i.bw, %bb.s ] ; 2 uses
  %i.cd = extractvalue { i64, i64 } %.merged.i.i.i144, 0
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.u, label %.thread788

bb.u:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143
  %i.cf = extractvalue { i64, i64 } %.merged.i.i.i144, 1 ; 3 uses
  %i.cg = add i64 %i.bs, 1
  %i.ch = add i64 %i.cg, %i.cf                    ; 5 uses
  %.not13.i.i156 = icmp ugt i64 %i.ch, %i.bp
  %i.ci = add i64 %i.bs, %i.cf
  %or.cond.i.i157.not = icmp ult i64 %i.ci, %i.bp
  br i1 %or.cond.i.i157.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  br i1 %.not13.i.i156, label %.thread788, label %bb.r

bb.w:                                             ; preds = %bb.u
  %i.cj = add i64 %i.bs, %i.cf                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cj
  %lhsc780 = load i8, ptr %i.ck, align 1
  %i.cl = icmp eq i8 %lhsc780, 58
  br i1 %i.cl, label %.thread788, label %bb.v

.thread788:                                       ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143, %bb.v, %bb.w
  %.pre.i2.i180 = phi i64 [ %i.ch, %bb.w ], [ 0, %bb.v ], [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ] ; 5 uses
  %.promoted459 = phi i64 [ %i.ch, %bb.w ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ], [ %i.ch, %bb.v ] ; 3 uses
  %3 = phi i1 [ false, %bb.w ], [ true, %bb.v ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ]
  %.sroa.4.1.i153 = phi i64 [ %i.cj, %bb.w ], [ %i.bp, %bb.v ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i143 ]
  %i.cm = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %.sroa.4.1.i153)
          to label %4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.x:                                             ; preds = %4
  %i.cn = icmp ult i64 %i.bp, %.promoted459
  br i1 %i.cn, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, label %.lr.ph.split.i.i175

.lr.ph.split.i.i175:                              ; preds = %bb.x, %bb.ab
  %i.co = phi i64 [ %i.dd, %bb.ab ], [ %.promoted459, %bb.x ] ; 5 uses
  %i.cp = sub nuw i64 %i.bp, %i.co                ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.co ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cp, 16
  br i1 %i.cr, label %.preheader.i.i.i194, label %bb.y

.preheader.i.i.i194:                              ; preds = %.lr.ph.split.i.i175
  %.not.i.i.i195 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i195, label %._crit_edge.i.i.i199, label %.lr.ph.i.i.i196

bb.y:                                             ; preds = %.lr.ph.split.i.i175
  %i.cs = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef range(i64 0, -9223372036854775808) %i.cp)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge.i.i.i199:                             ; preds = %bb.z, %.lr.ph.i.i.i196, %.preheader.i.i.i194
  %.sroa.01.0.lcssa.i.i.i200 = phi i64 [ 0, %.preheader.i.i.i194 ], [ %i.cp, %bb.z ], [ %.sroa.01.05.i.i.i197, %.lr.ph.i.i.i196 ]
  %.sroa.0.1.i.i.i201 = phi i64 [ 0, %.preheader.i.i.i194 ], [ 0, %bb.z ], [ 1, %.lr.ph.i.i.i196 ]
  %i.ct = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i201, 0
  %i.cu = insertvalue { i64, i64 } %i.ct, i64 %.sroa.01.0.lcssa.i.i.i200, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177

.lr.ph.i.i.i196:                                  ; preds = %.preheader.i.i.i194, %bb.z
  %.sroa.01.05.i.i.i197 = phi i64 [ %i.cy, %bb.z ], [ 0, %.preheader.i.i.i194 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.01.05.i.i.i197
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !1067, !noalias !1068, !noundef !4
  %i.cx = icmp eq i8 %i.cw, 58
  br i1 %i.cx, label %._crit_edge.i.i.i199, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i196
  %i.cy = add nuw nsw i64 %.sroa.01.05.i.i.i197, 1 ; 2 uses
  %exitcond.not.i.i.i198 = icmp eq i64 %i.cy, %i.cp
  br i1 %exitcond.not.i.i.i198, label %._crit_edge.i.i.i199, label %.lr.ph.i.i.i196

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177: ; preds = %bb.y, %._crit_edge.i.i.i199
  %.merged.i.i.i178 = phi { i64, i64 } [ %i.cu, %._crit_edge.i.i.i199 ], [ %i.cs, %bb.y ] ; 2 uses
  %i.cz = extractvalue { i64, i64 } %.merged.i.i.i178, 0
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.aa, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193

bb.aa:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177
  %i.db = extractvalue { i64, i64 } %.merged.i.i.i178, 1 ; 3 uses
  %i.dc = add i64 %i.co, 1
  %i.dd = add i64 %i.dc, %i.db                    ; 5 uses
  %.not13.i.i190 = icmp ugt i64 %i.dd, %i.bp
  %i.de = add i64 %i.co, %i.db
  %or.cond.i.i191.not = icmp ult i64 %i.de, %i.bp
  br i1 %or.cond.i.i191.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  br i1 %.not13.i.i190, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, label %.lr.ph.split.i.i175

bb.ac:                                            ; preds = %bb.aa
  %i.df = add i64 %i.co, %i.db                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.df
  %lhsc782 = load i8, ptr %i.dg, align 1
  %i.dh = icmp eq i8 %lhsc782, 58
  br i1 %i.dh, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193, label %bb.ab

4:                                                ; preds = %.thread788
  %5 = extractvalue { ptr, i64 } %i.cm, 0         ; 16 uses
  %6 = extractvalue { ptr, i64 } %i.cm, 1         ; 30 uses
  br i1 %3, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split, label %bb.x

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177, %bb.ab, %bb.ac, %bb.x
  %i.di = phi i64 [ %.pre.i2.i180, %bb.x ], [ %i.dd, %bb.ac ], [ %.pre.i2.i180, %bb.ab ], [ %.pre.i2.i180, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 ] ; 2 uses
  %.promoted.i.i206730 = phi i64 [ %.promoted459, %bb.x ], [ %i.dd, %bb.ac ], [ %i.dd, %bb.ab ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 ] ; 2 uses
  %i.dj = phi i1 [ true, %bb.x ], [ false, %bb.ac ], [ true, %bb.ab ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 ]
  %.pn784 = phi i64 [ %i.bp, %bb.x ], [ %i.df, %bb.ac ], [ %i.bp, %bb.ab ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i177 ]
  %.sroa.4.1.i187 = sub nuw i64 %.pn784, %.pre.i2.i180
  %.sroa.0.1.i188 = getelementptr inbounds nuw i8, ptr %i.br, i64 %.pre.i2.i180
  %i.dk = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i188, i64 noundef %.sroa.4.1.i187)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.thread:                                          ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i193
  %7 = extractvalue { ptr, i64 } %i.dk, 0         ; 2 uses
  %8 = extractvalue { ptr, i64 } %i.dk, 1
  br i1 %i.dj, label %.thread303, label %bb.ad

bb.ad:                                            ; preds = %.thread
  %i.dl = icmp ult i64 %i.bp, %.promoted.i.i206730
  br i1 %i.dl, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227, label %.lr.ph.split.i.i209

.lr.ph.split.i.i209:                              ; preds = %bb.ad, %.backedge945.backedge
  %9 = phi i64 [ %i.ea, %.backedge945.backedge ], [ %.promoted.i.i206730, %bb.ad ] ; 5 uses
  %i.dm = sub nuw i64 %i.bp, %9                   ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 %9 ; 2 uses
  %i.do = icmp samesign ult i64 %i.dm, 16
  br i1 %i.do, label %.preheader.i.i.i228, label %bb.ae

.preheader.i.i.i228:                              ; preds = %.lr.ph.split.i.i209
  %.not.i.i.i229 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i229, label %._crit_edge.i.i.i233, label %.lr.ph.i.i.i230

bb.ae:                                            ; preds = %.lr.ph.split.i.i209
  %i.dp = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.dm)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211 unwind label %.loopexit

._crit_edge.i.i.i233:                             ; preds = %bb.af, %.lr.ph.i.i.i230, %.preheader.i.i.i228
  %.sroa.01.0.lcssa.i.i.i234 = phi i64 [ 0, %.preheader.i.i.i228 ], [ %i.dm, %bb.af ], [ %.sroa.01.05.i.i.i231, %.lr.ph.i.i.i230 ]
  %.sroa.0.1.i.i.i235 = phi i64 [ 0, %.preheader.i.i.i228 ], [ 0, %bb.af ], [ 1, %.lr.ph.i.i.i230 ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i235, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.01.0.lcssa.i.i.i234, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211

.lr.ph.i.i.i230:                                  ; preds = %.preheader.i.i.i228, %bb.af
  %.sroa.01.05.i.i.i231 = phi i64 [ %i.dv, %bb.af ], [ 0, %.preheader.i.i.i228 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.01.05.i.i.i231
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !1069, !noalias !1070, !noundef !4
  %i.du = icmp eq i8 %i.dt, 58
  br i1 %i.du, label %._crit_edge.i.i.i233, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i230
  %i.dv = add nuw nsw i64 %.sroa.01.05.i.i.i231, 1 ; 2 uses
  %exitcond.not.i.i.i232 = icmp eq i64 %i.dv, %i.dm
  br i1 %exitcond.not.i.i.i232, label %._crit_edge.i.i.i233, label %.lr.ph.i.i.i230

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211: ; preds = %bb.ae, %._crit_edge.i.i.i233
  %.merged.i.i.i212 = phi { i64, i64 } [ %i.dr, %._crit_edge.i.i.i233 ], [ %i.dp, %bb.ae ] ; 2 uses
  %i.dw = extractvalue { i64, i64 } %.merged.i.i.i212, 0
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %bb.ag, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227

bb.ag:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211
  %i.dy = extractvalue { i64, i64 } %.merged.i.i.i212, 1 ; 3 uses
  %i.dz = add i64 %9, 1
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  %.not13.i.i224 = icmp ugt i64 %i.ea, %i.bp      ; 2 uses
  %i.eb = add i64 %9, %i.dy
  %or.cond.i.i225.not = icmp ult i64 %i.eb, %i.bp
  br i1 %or.cond.i.i225.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not13.i.i224, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227, label %.backedge945.backedge

.backedge945.backedge:                            ; preds = %bb.ah, %bb.ai
  br label %.lr.ph.split.i.i209

bb.ai:                                            ; preds = %bb.ag
  %i.ec = add i64 %9, %i.dy                       ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ec
  %lhsc785 = load i8, ptr %i.ed, align 1
  %i.ee = icmp eq i8 %lhsc785, 58                 ; 2 uses
  %brmerge1245 = or i1 %i.ee, %.not13.i.i224
  br i1 %brmerge1245, label %.split, label %.backedge945.backedge

.split:                                           ; preds = %bb.ai
  %.mux944.le = select i1 %i.ee, i64 %i.ec, i64 %i.bp
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227: ; preds = %.split, %bb.ah, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211, %bb.ad
  %.pn787.lcssa = phi i64 [ %i.bp, %bb.ad ], [ %i.bp, %bb.ah ], [ %.mux944.le, %.split ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i211 ]
  %.sroa.4.1.i221 = sub nuw i64 %.pn787.lcssa, %i.di
  %.sroa.0.1.i222 = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.di
  %i.ef = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i222, i64 noundef %.sroa.4.1.i221)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread303:                                       ; preds = %.thread
  %.not127 = icmp eq ptr %5, null
  %.not128 = icmp eq ptr %7, null
  %or.cond = select i1 %.not127, i1 true, i1 %.not128
  br i1 %or.cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %.thread303
  %i.eg = icmp eq i64 %6, 0                       ; 2 uses
  br i1 %i.eg, label %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308, label %.split.i.i

.split.i.i:                                       ; preds = %bb.aj, %.noexc241
  %i.eh = phi i64 [ %i.fd, %.noexc241 ], [ 0, %bb.aj ] ; 3 uses
  %.lcssa1418.i.i = phi i64 [ %.lcssa1417.i.i, %.noexc241 ], [ 0, %bb.aj ] ; 5 uses
  %i.ei = phi i1 [ %i.fe, %.noexc241 ], [ false, %bb.aj ]
  br i1 %i.ei, label %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.split.i.i
  %i.ej = icmp ult i64 %6, %i.eh
  br i1 %i.ej, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.ao
  %i.ek = phi i64 [ %i.ez, %bb.ao ], [ %i.eh, %bb.ak ] ; 4 uses
  %i.el = sub nuw i64 %6, %i.ek                   ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 %i.ek ; 2 uses
  %i.en = icmp samesign ult i64 %i.el, 16
  br i1 %i.en, label %.preheader.i.i.i.i.i.i, label %bb.al

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i238 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i.i.i238, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i239

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.eo = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.el)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i239, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i239 ], [ %i.el, %bb.am ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i239 ], [ 0, %bb.am ]
  %i.ep = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.eq = insertvalue { i64, i64 } %i.ep, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i239:                            ; preds = %.preheader.i.i.i.i.i.i, %bb.am
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.eu, %bb.am ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1071, !noalias !1072, !noundef !4
  %i.et = icmp eq i8 %i.es, 46
  br i1 %i.et, label %._crit_edge.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i239
  %i.eu = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.eu, %i.el
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i239

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.eq, %._crit_edge.i.i.i.i.i.i ], [ %i.eo, %bb.al ] ; 2 uses
  %i.ev = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.an, label %select.unfold.i.i

bb.an:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ex = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.ey = add i64 %i.ek, 1
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.ez, %6
  %i.fa = add i64 %i.ex, %i.ek                    ; 3 uses
  %or.cond.i.i.i.i.not.i = icmp ult i64 %i.fa, %6
  br i1 %or.cond.i.i.i.i.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  br i1 %.not13.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 %i.fa
  %lhsc.i = load i8, ptr %i.fb, align 1, !alias.scope !1073
  %i.fc = icmp eq i8 %lhsc.i, 46
  br i1 %i.fc, label %select.unfold.i.i, label %bb.ao

select.unfold.i.i:                                ; preds = %bb.ap, %bb.ao, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i, %bb.ak
  %i.fd = phi i64 [ %i.eh, %bb.ak ], [ %i.ez, %bb.ap ], [ %6, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.ez, %bb.ao ]
  %.lcssa1417.i.i = phi i64 [ %.lcssa1418.i.i, %bb.ak ], [ %i.ez, %bb.ap ], [ %.lcssa1418.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %.lcssa1418.i.i, %bb.ao ]
  %i.fe = phi i1 [ true, %bb.ak ], [ false, %bb.ap ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ true, %bb.ao ]
  %.pn.i.i = phi i64 [ %6, %bb.ak ], [ %i.fa, %bb.ap ], [ %6, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %6, %bb.ao ]
  %.sroa.4.1.i.i.ph.i.i = sub nuw i64 %.pn.i.i, %.lcssa1418.i.i
  %.sroa.0.1.i.i.ph.i.i = getelementptr inbounds nuw i8, ptr %5, i64 %.lcssa1418.i.i
  %i.ff = invoke noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.ph.i.i, i64 noundef %.sroa.4.1.i.i.ph.i.i)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc241:                                        ; preds = %select.unfold.i.i
  br i1 %i.ff, label %.split.i.i, label %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308

_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308: ; preds = %bb.aj, %.noexc241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread: ; preds = %.split.i.i
  %i.fg = icmp ult i64 %6, 25
  br i1 %i.fg, label %bb.ar, label %bb.aq, !prof !8

bb.aq:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread
  %i.fh = invoke { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc244:                                        ; preds = %bb.aq
  %i.fi = extractvalue { ptr, i64 } %i.fh, 0      ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.bd, label %bb.be, !prof !6

bb.ar:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread
  %i.fk = shl nuw nsw i64 %6, 56
  %i.fl = or disjoint i64 %i.fk, -4611686018427387904 ; 6 uses
  %i.fm = icmp samesign ugt i64 %6, 15
  br i1 %i.fm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = icmp samesign ugt i64 %6, 7
  br i1 %i.fn, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %5, align 1, !alias.scope !1074, !noalias !1075
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.fo, align 1, !alias.scope !1074, !noalias !1075
  %i.fp = icmp eq i64 %6, 16
  br i1 %i.fp, label %bb.bc, label %bb.bb

bb.au:                                            ; preds = %bb.as
  %i.fq = icmp samesign ugt i64 %6, 3
  br i1 %i.fq, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.as
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %5, align 1, !alias.scope !1074, !noalias !1075 ; 2 uses
  %i.fr = icmp eq i64 %6, 8
  br i1 %i.fr, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %.not = icmp eq i64 %6, 1
  br i1 %.not, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %5, align 1, !alias.scope !1074, !noalias !1075
  %i.fs = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.ft = add nsw i64 %6, -4                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 %i.ft
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.fu, align 1, !alias.scope !1074, !noalias !1075
  %i.fv = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.fw = shl nuw nsw i64 %i.ft, 3
  %i.fx = shl nuw nsw i64 %i.fv, %i.fw
  %i.fy = or i64 %i.fx, %i.fs
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %5, align 1, !alias.scope !1074, !noalias !1075
  %i.fz = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.ga = add nsw i64 %6, -2                      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ga
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.gb, align 1, !alias.scope !1074, !noalias !1075
  %i.gc = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.gd = shl nuw nsw i64 %i.ga, 3
  %i.ge = shl nuw nsw i64 %i.gc, %i.gd
  %i.gf = or i64 %i.ge, %i.fz
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.az:                                            ; preds = %bb.aw
  %i.gg = load i8, ptr %5, align 1, !alias.scope !1074, !noalias !1075, !noundef !4
  %i.gh = zext i8 %i.gg to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.ba:                                            ; preds = %bb.av
  %i.gi = getelementptr i8, ptr %5, i64 %6
  %i.gj = getelementptr i8, ptr %i.gi, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.gj, align 1, !alias.scope !1074, !noalias !1075
  %i.gk = shl nuw nsw i64 %6, 3
  %i.gl = sub nuw nsw i64 128, %i.gk
  %i.gm = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.gl
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.bb:                                            ; preds = %bb.at
  %i.gn = getelementptr i8, ptr %5, i64 %6
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.go, align 1, !alias.scope !1074, !noalias !1075
  %.neg.i.i.i = mul nuw nsw i64 %6, 56
  %i.gp = and i64 %.neg.i.i.i, 56
  %i.gq = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.gp
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.at
  %.sroa.0.1.i.i.i243 = phi i64 [ %i.gq, %bb.bb ], [ 0, %bb.at ]
  %i.gr = icmp eq i64 %6, 24
  %i.gs = select i1 %i.gr, i64 0, i64 %i.fl
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i243, %i.gs
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.bc ], [ 0, %bb.av ], [ %i.gm, %bb.ba ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.bc ], [ %.sroa.011.0.copyload.i.i.i, %bb.av ], [ %.sroa.011.0.copyload.i.i.i, %bb.ba ], [ %i.fy, %bb.ax ], [ %i.gf, %bb.ay ], [ %i.gh, %bb.az ]
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bc ], [ %i.fl, %bb.av ], [ %i.fl, %bb.ba ], [ %i.fl, %bb.ax ], [ %i.fl, %bb.ay ], [ %i.fl, %bb.az ]
  %i.gt = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit

bb.bd:                                            ; preds = %.noexc244
  invoke void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %.noexc244
  %i.gu = extractvalue { ptr, i64 } %i.fh, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit

bb.bf:                                            ; preds = %_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name.exit.thread308
  %i.gv = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !5, !noundef !4 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gw, label %bb.bg, label %bb.bh, !prof !6

bb.bg:                                            ; preds = %bb.bf
  %i.ha = load i64, ptr %i.gz, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gy, i64 %i.ha) #23
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  %i.hb = load ptr, ptr %i.gz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hc = icmp ule i64 %6, %i.gy
  call void @llvm.assume(i1 %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.eg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.hd, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gy, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hb, ptr %.sroa.032.sroa.4.sroa.4.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr nonnull align 1 %5, i64 %6, i1 false)
  br label %bb.bi

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.be, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.gu, %bb.be ] ; 5 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %6, %bb.be ]
  %.sroa.0.0.i242 = phi ptr [ %i.gt, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fi, %bb.be ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs4_NtCsfDzkztWVnn_18ty_module_resolver8typeshedNtB5_14PyVersionRangeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8)
          to label %bb.bl unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bo
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248

bb.bl:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit
  %i.hf = load i64, ptr %i.f, align 8, !range !1076, !noundef !4
  %.not130 = icmp eq i64 %i.hf, -1
  br i1 %.not130, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = trunc nuw i64 %i.ar to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %i.hg, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.7255.23.extract.shift.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.hi = icmp eq i64 %.sroa.7255.23.extract.shift.mask, -2882303761517117440
  br i1 %i.hi, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit, !prof !6

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i242) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i242, i64 noundef %.sroa.4.0.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bl
  %.sroa.0121.0.copyload = load i40, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.0.i242, ptr %i.e, align 8
  store i64 %.sroa.3.0.i, ptr %.sroa.7252.0..sroa_idx253, align 8
  store i64 %.sroa.4.0.i, ptr %.sroa.7255.0..sroa_idx256, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtBR_8typeshed14PyVersionRangeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i40 %.sroa.0121.0.copyload)
          to label %bb.bp unwind label %bb.bk

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

.backedge:                                        ; preds = %bb.bp, %bb.q
  br i1 %i.ae, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge, label %bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split: ; preds = %4, %.thread303, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227, %bb.bi
  %.sink942 = phi i64 [ 32, %bb.bi ], [ 8, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227 ], [ 8, %.thread303 ], [ 8, %4 ]
  %.sink941 = phi i64 [ %6, %bb.bi ], [ 1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i227 ], [ 1, %.thread303 ], [ 1, %4 ]
  %.sink = trunc nuw i64 %i.ar to i16
  %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink942
  store i64 %.sink941, ptr %.sroa.032.sroa.4.sroa.5.0..sroa.032.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sink, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit

bb.bq:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsfDzkztWVnn_18ty_module_resolver.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.7255.23.extract.shift260.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.hk = icmp eq i64 %.sroa.7255.23.extract.shift260.mask, -2882303761517117440
  br i1 %i.hk, label %bb.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248, !prof !6

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i242) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i242, i64 noundef %.sroa.4.0.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit: ; preds = %bb.bm, %bb.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit.sink.split, %bb.k
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6266.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hm, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1I_8typeshed14PyVersionRangeEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #24
          to label %common.resume unwind label %bb.bw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1f_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1m_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248, %bb.bt, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.bt ], [ %i.ho, %bb.bu ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEBF_.exit248 ]
  resume { ptr, i32 } %common.resume.op

bb.bw:                                            ; preds = %bb.bt
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1k_8typeshed14PyVersionRangeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsfDzkztWVnn_18ty_module_resolver.exit.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1m_8typeshed14PyVersionRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBU_18VendoredFileSystem14read_directoryRNtNtBU_4path12VendoredPathE0INtB7_5FnMutTReEE8call_mutCsfDzkztWVnn_18ty_module_resolver(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.d = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1), !noalias !1091
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1091, !noalias !1092
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %3, %.val1
  br i1 %i.e, label %bb.d, label %.lr.ph.i.i.i.lr.ph.split.i.i

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !1091, !noalias !1092
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

.lr.ph.i.i.i.lr.ph.split.i.i:                     ; preds = %bb.c
  %i.f = sub nuw i64 %3, %.val1                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.val1 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvMs2_NtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_8FileType18from_zip_file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !1091 ; 2 uses
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
  %i.n = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.k), !noalias !1093
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
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1094, !noalias !1093, !noundef !4
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
  %lhsc.i = load i8, ptr %i.aa, align 1, !alias.scope !1092, !noalias !1091
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
  store i64 -1, ptr %0, align 8, !alias.scope !1091, !noalias !1092
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  tail call void @_RNvXsh_NtNtCs56aZGHL6Dc6_7ruff_db8vendored4pathNtB5_15VendoredPathBufINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ae = zext i1 %i.h to i8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1091, !noalias !1092
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

bb.p:                                             ; preds = %bb.l
  store i64 -1, ptr %0, align 8, !alias.scope !1091, !noalias !1092
  br label %_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit

_RNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB5_18VendoredFileSystem14read_directoryRNtNtB5_4path12VendoredPathE0CsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.b, %bb.d, %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCshFWUtO0bu8g_6camino11Utf8PathBufNtB6_5Debug3fmtCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs1_CshFWUtO0bu8g_6caminoNtB5_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}
end_hunk_0
