Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.11?download=true
inline.NumInlined: 6814
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies11for_closureNCNvNvXs0_NvNvMs_B4_NtB8_11InferBodyId8borrowck1__NtB1j_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0NCB1b_s_0EB8_:bb.a
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %common.resume unwind label %bb.f, !noalias !6134

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !6134
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.am, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit: ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !6134, !noalias !6135, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.v, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !6134
  %i.x = add nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !alias.scope !6134, !noalias !6135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !9 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit, %bb.g
  %.sroa.012.038 = phi ptr [ %i.ai, %bb.g ], [ %i.z, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6136
  %i.ae = load i32, ptr %.sroa.012.038, align 4, !range !17, !alias.scope !6137, !noalias !6138, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.038, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !6137, !noalias !6138, !noundef !9
  call fastcc void @_RINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies11for_closureNCNvNvXs0_NvNvMs_B4_NtB8_11InferBodyId8borrowck1__NtB1j_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0NCB1b_s_0EB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %i.ae, i32 noundef %i.ag, ptr noalias nofree noundef align 8 dereferenceable(24) %5, ptr noalias nofree noundef align 8 dereferenceable(40) %6)
  %i.ah = load i32, ptr %i.a, align 8, !range !60, !alias.scope !6139, !noalias !6140, !noundef !9 ; 2 uses
  %.not.i8 = icmp eq i32 %i.ah, -1
  br i1 %.not.i8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.038, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6136
  %i.aj = icmp eq ptr %i.ai, %i.ac
  br i1 %i.aj, label %._crit_edge.loopexit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.sroa.727.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.727.0..sroa_idx28, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6136
  store i32 %i.ah, ptr %0, align 8
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.u, align 8
  %.pre40 = load i64, ptr %i.l, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit
  %i.ak = phi i64 [ %.pre40, %._crit_edge.loopexit ], [ %i.x, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit ]
  %i.al = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.v, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBK_7MirBodyEE8push_mutBM_.exit ]
  call fastcc void @_RINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B4_NtB8_11InferBodyId8borrowck1__NtB1c_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0EB8_(ptr noalias nofree noundef nonnull align 8 %i.al, i64 noundef %i.ak, i64 noundef %i.m)
  store i32 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #49
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B4_NtB8_11InferBodyId8borrowck1__NtB1c_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0EB8_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, i64 noundef range(i64 0, 76861433640456466) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.not.i.not = icmp samesign ult i64 %2, %1
  br i1 %.not.i.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @530, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #47, !noalias !6152
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 120
  %i.b = add nuw nsw i64 %.idx, 120               ; 2 uses
  %i.c = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %2 ; 2 uses
  %.idx4 = mul nuw nsw i64 %1, 120                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx4
  %i.e = icmp samesign eq i64 %i.b, %.idx4
  br i1 %i.e, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBV_7MirBodyEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNvBT_14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_BT_NtBX_11InferBodyId8borrowck1__NtB3v_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EBX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !10, !noundef !9 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = getelementptr i8, ptr %i.h, i64 64
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6153)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6153, !nonnull !9, !align !10, !noundef !9
  %.val.i.i = load ptr, ptr %i.i, align 8, !noalias !6153 ; 2 uses
  %.val1.i.i = load i64, ptr %i.j, align 8, !noalias !6153
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6154
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecTIBO_NtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtNtNtNtB2A_5infer7closure8analysis16expr_use_visitor5PlaceEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2A_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !6155
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecTIBL_NtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtNtNtNtB2x_5infer7closure8analysis16expr_use_visitor5PlaceEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !6155 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not3.i.i.i, label %_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i, label %.lr.ph4.i.i.i

.lr.ph4.i.i.i:                                    ; preds = %bb.d, %.backedge.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.y, %.backedge.i.i.i ], [ %i.o, %bb.d ]
  %i.q = phi ptr [ %i.z, %.backedge.i.i.i ], [ %i.p, %bb.d ]
  %i.r = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load i32, ptr %i.q, align 4, !noundef !9
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %.val1.i.i, %i.t
  br i1 %i.u, label %bb.e, label %.backedge.i.i.i

bb.e:                                             ; preds = %.lr.ph4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.t ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !range !23, !noalias !6156, !noundef !9
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.f, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.loopexit.i.i.i, %bb.f, %bb.e, %.lr.ph4.i.i.i
  %i.y = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecTIBL_NtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtNtNtNtB2x_5infer7closure8analysis16expr_use_visitor5PlaceEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i, label %.lr.ph4.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !6156, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !9 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.af, 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.backedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.loopexit.i.i.i
  %.sroa.04.02.i.i.i = phi ptr [ %i.ai, %.loopexit.i.i.i ], [ %i.ad, %bb.f ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.02.i.i.i, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.02.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.02.i.i.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !noundef !9 ; 2 uses
  %.idx2 = mul nuw nsw i64 %i.am, 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx2
  %.not.not.not.i.not.i.i.i1 = icmp eq i64 %i.am, 0
  br i1 %.not.not.not.i.not.i.i.i1, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNvXs0_NvNvMs_NtNtB10_3mir8borrowckNtB10_11InferBodyId8borrowck1__NtB38_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_00EB10_.exit.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %.not.not.not.i.not.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.not.not.i.not.i.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNvXs0_NvNvMs_NtNtB10_3mir8borrowckNtB10_11InferBodyId8borrowck1__NtB38_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_00EB10_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.g ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.i.i.i = load i32, ptr %i.aq, align 8, !range !51, !noalias !6157, !noundef !9
  %i.ar = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %i.ar, label %.loopexit.i.i.i, label %bb.g

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNvXs0_NvNvMs_NtNtB10_3mir8borrowckNtB10_11InferBodyId8borrowck1__NtB38_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_00EB10_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.as = call noundef nonnull align 8 ptr @_RNvXs0_NtCsbq3eHDLgq0Z_8la_arena3mapINtB5_8ArenaMapINtB7_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtBZ_8borrowck16MutabilityReasonEINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutBN_E9index_mutB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c, i32 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) ; 5 uses
  %i.at = load i32, ptr %.sroa.04.02.i.i.i, align 8, !noundef !9
  %i.au = call noundef nonnull align 8 ptr @_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtBY_8borrowck16MutabilityReasonEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.01.i, i32 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @494)
  %i.av = load i64, ptr %i.as, align 8, !range !43, !noundef !9 ; 2 uses
  %3 = add i64 %i.av, -9223372036854775807        ; 2 uses
  %4 = icmp sgt i64 %i.av, -1
  br i1 %4, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNvXs0_NvNvMs_NtNtB10_3mir8borrowckNtB10_11InferBodyId8borrowck1__NtB38_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_00EB10_.exit.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !range !43, !noundef !9 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp eq i64 %3, 1
  br i1 %i.ay, label %.loopexit.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %i.as, align 8
  %.sroa.510.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.510.0..sroa_idx11.i.i.i, align 8
  %.sroa.6.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx13.i.i.i, align 8
  br label %.loopexit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq i64 %3, 2
  call void @llvm.assume(i1 %i.ba)
  br label %.loopexit.i.i.i

bb.m:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %i.as, align 8
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph, %bb.m, %bb.l, %bb.j, %bb.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNvXs0_NvNvMs_NtNtB10_3mir8borrowckNtB10_11InferBodyId8borrowck1__NtB38_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_00EB10_.exit.i.i.i
  %i.bb = icmp eq ptr %i.ai, %i.ag
  br i1 %i.bb, label %.backedge.i.i.i, label %.lr.ph.i.i.i

_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i: ; preds = %.backedge.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6154
  %i.bc = icmp eq ptr %i.k, %i.d
  br i1 %i.bc, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBV_7MirBodyEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNvBT_14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_BT_NtBX_11InferBodyId8borrowck1__NtB3v_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EBX_.exit, label %bb.d

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14BorrowckResultRNtBV_7MirBodyEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNvBT_14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_BT_NtBX_11InferBodyId8borrowck1__NtB3v_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0EBX_.exit: ; preds = %_RNCINvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck14all_mir_bodies5mergeNCNvNvXs0_NvNvMs_B6_NtBa_11InferBodyId8borrowck1__NtB1e_29borrowck_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s_0E0Ba_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNvCs8K4cjrcxBsw_6hir_ty29replace_errors_with_variablesNtB3_13ErrorReplacerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtNtB5_11next_solver8interner10DbInternerE15try_fold_binderINtNtB1k_7ty_kind8FnSigTysB2i_EEB5_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !9
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp ult i32 %i.c, -255
  br i1 %i.d, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.a, align 8
  %i.e = tail call { ptr, ptr } @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_7ty_kind8FnSigTysB11_EE13try_map_boundNCINvXs3_B6_BO_INtNtB8_4fold17TypeSuperFoldableB11_E19try_super_fold_withNtNvB17_29replace_errors_with_variables13ErrorReplacerE0B20_NtNtCshzWfHUSfYae_4core7convert10InfallibleEB17_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.f = load i32, ptr %i.a, align 8, !noundef !9
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = icmp ult i32 %i.g, -255
  br i1 %i.h, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.a, align 8
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCs8K4cjrcxBsw_6hir_ty29replace_errors_with_variablesNtB3_13ErrorReplacerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtNtB5_11next_solver8interner10DbInternerE15try_fold_binderINtNtB1k_9predicate20ExistentialPredicateB2i_EEB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !9
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i32 %i.d, -255
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate20ExistentialPredicateB11_EE13try_map_boundNCINvXs3_B6_BO_INtNtB8_4fold17TypeSuperFoldableB11_E19try_super_fold_withNtNvB17_29replace_errors_with_variables13ErrorReplacerE0B20_NtNtCshzWfHUSfYae_4core7convert10InfallibleEB17_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.f = load i32, ptr %i.b, align 8, !noundef !9
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = icmp ult i32 %i.g, -255
  br i1 %i.h, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNvCs8K4cjrcxBsw_6hir_ty29replace_errors_with_variablesNtB3_13ErrorReplacerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtNtB5_11next_solver8interner10DbInternerE15try_fold_binderNtNtB2m_2ty2TyEB5_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !9
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp ult i32 %i.c, -255
  br i1 %i.d, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.a, align 8
  %i.e = tail call { ptr, ptr } @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB15_2ty2TyE13try_map_boundNCINvXs3_B6_BO_INtNtB8_4fold17TypeSuperFoldableB11_E19try_super_fold_withNtNvB17_29replace_errors_with_variables13ErrorReplacerE0B20_NtNtCshzWfHUSfYae_4core7convert10InfallibleEB17_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.f = load i32, ptr %i.a, align 8, !noundef !9
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = icmp ult i32 %i.g, -255
  br i1 %i.h, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.a, align 8
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB1K_16GarbageCollector13sweep_storageINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedENCNvXB1K_INtB1K_15InternedStorageB3n_ENtB1K_7Storage5sweep0Es_0EEINtB5_16ProducerCallbackRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTB2N_INtNtB7L_4util11SharedValueuEEEEEE8callbackINtNtB9_5slice12IterProducerB60_EEB3t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 128 %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = tail call noundef i64 @_RNvCsdtH0xi6p5qe_10rayon_core19current_num_threads(), !noalias !6164
  %.cmp.i.i = icmp eq i64 %1, -1
  %i.g = zext i1 %.cmp.i.i to i64
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.f) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6164
  store i64 %1, ptr %i.e, align 8, !noalias !6165
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.h, align 8, !noalias !6165
  %i.i = lshr i64 %1, 1                           ; 3 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  %.not.i.i.i = icmp eq i64 %spec.store.select.i.i, 0
  %or.cond.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtNtCs1Deu0X9zrS8_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %spec.store.select.i.i, 1
  store i64 %i.j, ptr %i.d, align 8, !alias.scope !6166, !noalias !6165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6165
  store i64 %i.i, ptr %i.c, align 8, !noalias !6165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6165
  call void @_RNvXs7_NtCs1Deu0X9zrS8_5rayon5sliceINtB5_12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2C_4util11SharedValueuEEEEEENtNtNtB7_4iter8plumbing8Producer8split_atB4I_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 128 %2, i64 noundef %3, i64 noundef %i.i), !noalias !6165
  %i.k = load ptr, ptr %i.b, align 8, !noalias !6165, !nonnull !9, !align !59, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !6165, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !6165, !nonnull !9, !align !59, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noalias !6165, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6165
  store ptr %i.e, ptr %i.a, align 8, !noalias !6165
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.q, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6165
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.r, align 8, !noalias !6165
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !6165
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !6165
  call void @_RINvNtCsdtH0xi6p5qe_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB4K_4util11SharedValueuEEEEEEINtNtB1p_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB9b_16GarbageCollector13sweep_storageB6a_NCNvXB9b_INtB9b_15InternedStorageB6K_ENtB9b_7Storage5sweep0Es_0EE0NCB1i_s_0uuE0TuuEEB6Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6165
  br label %_RINvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumerINtNtB6_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB3h_4util11SharedValueuEEEEEEINtNtB4_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB7H_16GarbageCollector13sweep_storageB4H_NCNvXB7H_INtB7H_15InternedStorageB5h_ENtB7H_7Storage5sweep0Es_0EEB5n_.exit

_RNvMNtNtCs1Deu0X9zrS8_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit.i.i: ; preds = %bb.a
  %i.s = tail call noundef nonnull align 8 ptr @_RINvYINtNtCs1Deu0X9zrS8_5rayon5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2x_4util11SharedValueuEEEEEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB6k_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB7E_16GarbageCollector13sweep_storageB3X_NCNvXB7E_INtB7E_15InternedStorageB4x_ENtB7E_7Storage5sweep0Es_0EEB4D_(ptr noundef nonnull align 128 %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 0 uses
  br label %_RINvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumerINtNtB6_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB3h_4util11SharedValueuEEEEEEINtNtB4_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB7H_16GarbageCollector13sweep_storageB4H_NCNvXB7H_INtB7H_15InternedStorageB5h_ENtB7H_7Storage5sweep0Es_0EEB5n_.exit

_RINvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumerINtNtB6_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB3h_4util11SharedValueuEEEEEEINtNtB4_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB7H_16GarbageCollector13sweep_storageB4H_NCNvXB7H_INtB7H_15InternedStorageB5h_ENtB7H_7Storage5sweep0Es_0EEB5n_.exit: ; preds = %bb.b, %_RNvMNtNtCs1Deu0X9zrS8_5rayon4iter8plumbingNtB2_8Splitter9try_split.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6164
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB1K_16GarbageCollector13sweep_storageINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedENCNvXB1K_INtB1K_15InternedStorageB3n_ENtB1K_7Storage5sweep0Es_0EEINtB5_16ProducerCallbackRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTB2N_INtNtB7u_4util11SharedValueuEEEEEE8callbackINtNtB9_5slice12IterProducerB5J_EEB3t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 128 %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = tail call noundef i64 @_RNvCsdtH0xi6p5qe_10rayon_core19current_num_threads(), !noalias !6173
  %.cmp.i.i = icmp eq i64 %1, -1
  %i.g = zext i1 %.cmp.i.i to i64
end_hunk_0
