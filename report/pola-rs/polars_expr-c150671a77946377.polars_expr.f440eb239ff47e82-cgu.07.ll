Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ca, !dbg !155291
  store i128 %i.ai, ptr %i.cb, align 16, !dbg !155292, !noalias !155230
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ca, !dbg !155293
  store i8 1, ptr %i.cc, align 1, !dbg !155294, !noalias !155230
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 16, !dbg !155285 ; 2 uses
  %i.ce = load i32, ptr %i.by, align 4, !dbg !155286, !noalias !155230, !noundef !3509
  %i.cf = zext i32 %i.ce to i64, !dbg !155286     ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cf, !dbg !155291
  store i128 %i.ai, ptr %i.cg, align 16, !dbg !155292, !noalias !155230
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cf, !dbg !155293
  store i8 1, ptr %i.ch, align 1, !dbg !155294, !noalias !155230
  %i.ci = icmp eq ptr %i.cd, %i.au, !dbg !155283
  br i1 %i.ci, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionnERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !155284

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !155285
  %i.ck = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !155286, !noalias !155230, !noundef !3509
  %i.cl = zext i32 %i.ck to i64, !dbg !155286     ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cl, !dbg !155287
  store i128 0, ptr %i.cm, align 16, !dbg !155288, !noalias !155230
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cl, !dbg !155289
  store i8 0, ptr %i.cn, align 1, !dbg !155290, !noalias !155230
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !155285
  %i.cp = load i32, ptr %i.cj, align 4, !dbg !155286, !noalias !155230, !noundef !3509
  %i.cq = zext i32 %i.cp to i64, !dbg !155286     ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cq, !dbg !155287
  store i128 0, ptr %i.cr, align 16, !dbg !155288, !noalias !155230
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq, !dbg !155289
  store i8 0, ptr %i.cs, align 1, !dbg !155290, !noalias !155230
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !155285
  %i.cu = load i32, ptr %i.co, align 4, !dbg !155286, !noalias !155230, !noundef !3509
  %i.cv = zext i32 %i.cu to i64, !dbg !155286     ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cv, !dbg !155287
  store i128 0, ptr %i.cw, align 16, !dbg !155288, !noalias !155230
  %i.cx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cv, !dbg !155289
  store i8 0, ptr %i.cx, align 1, !dbg !155290, !noalias !155230
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !155285 ; 2 uses
  %i.cz = load i32, ptr %i.ct, align 4, !dbg !155286, !noalias !155230, !noundef !3509
  %i.da = zext i32 %i.cz to i64, !dbg !155286     ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.da, !dbg !155287
  store i128 0, ptr %i.db, align 16, !dbg !155288, !noalias !155230
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.da, !dbg !155289
  store i8 0, ptr %i.dc, align 1, !dbg !155290, !noalias !155230
  %i.dd = icmp eq ptr %i.cy, %i.au, !dbg !155283
  br i1 %i.dd, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionnERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !155284

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionnERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155261, !noalias !155232
  invoke fastcc void @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10Int128TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditynINtNtB7_6copied6CopiedIB1x_nEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !155262, !noalias !155209

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionnERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_00E0B2G_.exit.i.i.i
  %i.de = load i128, ptr %i.a, align 16, !dbg !155263, !range !4529, !noalias !155232, !noundef !3509 ; 2 uses
  %.not.i.i.i.i = icmp eq i128 %i.de, 2, !dbg !155263
  %extract.t11.i.i.i = trunc nuw i128 %i.de to i1, !dbg !155264
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.e, !dbg !155264

bb.i:                                             ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !155295, !noalias !155209
  unreachable, !dbg !155295

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !155295

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs0_0B8_.exit: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155296, !noalias !155209
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !155243, !noalias !155209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155243, !noalias !155209
  ret void, !dbg !155297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155298 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [184 x i8], align 8               ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !155431, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !155432, !noundef !3509 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !155432
  %.val1 = load i64, ptr %i.e, align 8, !dbg !155432, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155416), !dbg !155432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !155433, !noalias !155416
  %i.f = load ptr, ptr %i.d, align 8, !dbg !155434, !alias.scope !155416, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10Int128TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.f, i64 noundef %.val, i64 noundef %.val1), !dbg !155435, !noalias !155416
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !155436
  %i.h = load ptr, ptr %i.g, align 8, !dbg !155436, !alias.scope !155416, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.i = add i64 %.val1, %.val, !dbg !155437      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !155438
  %i.k = load i64, ptr %i.j, align 8, !dbg !155438, !noalias !155416, !noundef !3509 ; 2 uses
  %i.l = icmp ult i64 %i.i, %.val, !dbg !155439
  %.not.i = icmp ugt i64 %i.i, %i.k
  %or.cond.i = or i1 %i.l, %.not.i, !dbg !155439
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !155439, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !155440, !noalias !155416

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54
          to label %bb.j unwind label %bb.i, !dbg !155441, !noalias !155416

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !155442
  %i.n = load ptr, ptr %i.m, align 8, !dbg !155442, !noalias !155416, !nonnull !3509, !noundef !3509
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val, !dbg !155443 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !155444
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155444, !alias.scope !155416, !nonnull !3509, !align !3639, !noundef !3509
  %i.r = load ptr, ptr %i.q, align 8, !dbg !155445, !noalias !155416, !noundef !3509 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !155446
  %i.t = load ptr, ptr %i.s, align 8, !dbg !155446, !alias.scope !155416, !nonnull !3509, !align !3639, !noundef !3509
  %i.u = load ptr, ptr %i.t, align 8, !dbg !155447, !noalias !155416, !noundef !3509 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !155448
  %i.w = load ptr, ptr %i.v, align 8, !dbg !155448, !noalias !155416, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !155449
  %i.y = load i64, ptr %i.x, align 8, !dbg !155449, !noalias !155416, !noundef !3509
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y, !dbg !155450
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !155451
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !155451, !noalias !155416, !noundef !3509
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val1, !dbg !155452
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !155453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155453, !noalias !155416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !155454, !noalias !155416
  store i64 0, ptr %i.b, align 8, !dbg !155453, !noalias !155416
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !155453
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !155453
  store ptr %i.w, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !155453
  store ptr %i.z, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !155453
  store i64 %i.ab, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !155453 ; 3 uses
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !155453 ; 2 uses
  store ptr %i.ac, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155453, !noalias !155416
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit.i, !dbg !155455

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !155424), !dbg !155456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155457, !noalias !155426
  invoke fastcc void @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10Int128TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditynINtNtB7_6copied6CopiedIB1x_nEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !155458, !noalias !155416

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ae = load i128, ptr %i.a, align 16, !dbg !155459, !range !4529, !noalias !155426, !noundef !3509 ; 2 uses
  %.not.i.i = icmp eq i128 %i.ae, 2, !dbg !155459
  br i1 %.not.i.i, label %bb.f, label %bb.e, !dbg !155460

bb.e:                                             ; preds = %.noexc.i
  %i.af = load i128, ptr %i.ad, align 16, !dbg !155461, !noalias !155426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155462, !noalias !155426
  %i.ag = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155463, !alias.scope !155427, !noalias !155428, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ah = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155464, !alias.scope !155427, !noalias !155428, !nonnull !3509, !noundef !3509
  %i.ai = icmp eq ptr %i.ag, %i.ah, !dbg !155465
  br i1 %i.ai, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs1_0B8_.exit, label %bb.g, !dbg !155466

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155462, !noalias !155426
  br label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs1_0B8_.exit, !dbg !155467

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !155468
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155469, !alias.scope !155427, !noalias !155428
  %i.ak = load i32, ptr %i.ag, align 4, !dbg !155470, !noalias !155416, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !155470     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !155471
  %i.an = load i32, ptr %i.am, align 4, !dbg !155471, !noalias !155416, !noundef !3509 ; 2 uses
  %i.ao = zext i32 %i.an to i64, !dbg !155471     ; 3 uses
  %i.ap = add nuw nsw i64 %i.ao, %i.al, !dbg !155472
  %.not13.i = icmp eq i32 %i.an, 0, !dbg !155473
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !155474

.lr.ph.i:                                         ; preds = %bb.g
  %i.aq = trunc nuw i128 %i.ae to i1
  br i1 %i.aq, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.ar = shl nuw nsw i64 %i.al, 4, !dbg !155474
  %scevgep.i = getelementptr i8, ptr %i.r, i64 %i.ar, !dbg !155474
  %i.as = shl nuw nsw i64 %i.ao, 4, !dbg !155474
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.as, i1 false), !dbg !155475, !noalias !155416
  %scevgep15.i = getelementptr i8, ptr %i.u, i64 %i.al, !dbg !155474
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.ao, i1 false), !dbg !155476, !noalias !155416
  br label %.loopexit.i.backedge, !dbg !155458

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %.lr.ph.split.preheader.i, %bb.g
  br label %.loopexit.i, !dbg !155456

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.at, %.lr.ph.split.us.i ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %i.at = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !155477 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.sroa.011.012.us.i, !dbg !155478
  store i128 %i.af, ptr %i.au, align 16, !dbg !155479, !noalias !155416
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.011.012.us.i, !dbg !155480
  store i8 1, ptr %i.av, align 1, !dbg !155481, !noalias !155416
  %i.aw = icmp samesign ult i64 %i.at, %i.ap, !dbg !155473
  br i1 %i.aw, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !155474

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !155482, !noalias !155416
  unreachable, !dbg !155482

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !155482

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs1_0B8_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155483, !noalias !155416
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !155441, !noalias !155416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !155441, !noalias !155416
  ret void, !dbg !155484
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155485 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !155665, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !155666, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !155666
  %.val1 = load i64, ptr %i.d, align 8, !dbg !155666, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155648), !dbg !155666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155667, !noalias !155648
  %i.e = load ptr, ptr %i.c, align 8, !dbg !155668, !alias.scope !155648, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !155669, !noalias !155648
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !155670
  %i.g = load ptr, ptr %i.f, align 8, !dbg !155670, !alias.scope !155648, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !155671
  %i.i = load i64, ptr %i.h, align 8, !dbg !155671, !noalias !155648, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !155672      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !155673
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !155673
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !155673, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !155674, !noalias !155648

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !155675, !noalias !155648

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !155676
  %i.m = load ptr, ptr %i.l, align 8, !dbg !155676, !noalias !155648, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !155677 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !155678
  %i.p = load ptr, ptr %i.o, align 8, !dbg !155678, !alias.scope !155648, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155679, !noalias !155648, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !155680
  %i.s = load ptr, ptr %i.r, align 8, !dbg !155680, !alias.scope !155648, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !155681, !noalias !155648, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155682, !noalias !155648
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !155683
  %i.v = load ptr, ptr %i.u, align 8, !dbg !155683, !noalias !155648, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !155684
  %i.x = load i64, ptr %i.w, align 8, !dbg !155684, !noalias !155648, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !155685
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !155686
  %i.aa = load i64, ptr %i.z, align 8, !dbg !155686, !noalias !155648, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !155687
  call void @llvm.experimental.noalias.scope.decl(metadata !155656), !dbg !155688
  call void @llvm.experimental.noalias.scope.decl(metadata !155657), !dbg !155689
  store i64 0, ptr %i.a, align 8, !dbg !155690, !alias.scope !155658, !noalias !155648
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !155690
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !155690, !alias.scope !155658, !noalias !155648
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !155690
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !155690, !alias.scope !155658, !noalias !155648
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !155690
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !155690, !alias.scope !155658, !noalias !155648
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !155690
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !155690, !alias.scope !155658, !noalias !155648
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !155690 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !155690, !alias.scope !155659, !noalias !155660
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !155690 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !155690, !alias.scope !155659, !noalias !155660
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !155690
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !155690, !alias.scope !155659, !noalias !155660
  %i.af = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !155691, !noalias !155648 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i16, i16 } %i.af, 0, !dbg !155692 ; 2 uses
  %.not.i10.i.i.i = icmp eq i16 %i.ag, 2, !dbg !155693
  br i1 %.not.i10.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !155694

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i16, i16 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i16 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i16, i16 } %.pn.i.i.i, 1, !dbg !155692 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !155695, !alias.scope !155661, !noalias !155662, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !155696, !alias.scope !155661, !noalias !155662, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !155697
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit, label %bb.e, !dbg !155698

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !155699
  store ptr %i.am, ptr %i.ac, align 8, !dbg !155700, !alias.scope !155661, !noalias !155662
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !155701
  %i.ao = load i32, ptr %i.an, align 4, !dbg !155701, !range !3606, !noalias !155663, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !155702
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !155702

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !155703, !noalias !155663, !noundef !3509
  br label %bb.g, !dbg !155704

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !155705 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !155706
  %i.as = load i32, ptr %i.ar, align 8, !dbg !155706, !noalias !155663, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !155706
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !155707
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !155708 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !155708 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !155709
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !155710

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i16 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !155710 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !155710
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !155710
  %xtraiter = and i64 %i.az, 3, !dbg !155710      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !155710
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !155710

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !155711 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !155712, !noalias !155663, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !155712     ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bc, !dbg !155713
  store i16 0, ptr %i.bd, align 2, !dbg !155714, !noalias !155663
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !155715
  store i8 0, ptr %i.be, align 1, !dbg !155716, !noalias !155663
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !155710 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !155710
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !155710, !llvm.loop !155643

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !155710
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !155710

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !155710 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !155710
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !155710
  %xtraiter9 = and i64 %i.bi, 3, !dbg !155710     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !155710
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !155710

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !155711 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !155712, !noalias !155663, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !155712     ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bl, !dbg !155717
  store i16 %i.ai, ptr %i.bm, align 2, !dbg !155718, !noalias !155663
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !155719
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !155675, !noalias !155648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155675, !noalias !155648
  ret void, !dbg !155723
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155724 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !155863, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !155864, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !155864
  %.val1 = load i64, ptr %i.d, align 8, !dbg !155864, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155848), !dbg !155864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155865, !noalias !155848
  %i.e = load ptr, ptr %i.c, align 8, !dbg !155866, !alias.scope !155848, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !155867, !noalias !155848
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !155868
  %i.g = load ptr, ptr %i.f, align 8, !dbg !155868, !alias.scope !155848, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !155869      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !155870
  %i.j = load i64, ptr %i.i, align 8, !dbg !155870, !noalias !155848, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !155871
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !155871
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !155871, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !155872, !noalias !155848

.loopexit11.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !155873, !noalias !155848

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !155874
  %i.m = load ptr, ptr %i.l, align 8, !dbg !155874, !noalias !155848, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !155875 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !155876
  %i.p = load ptr, ptr %i.o, align 8, !dbg !155876, !alias.scope !155848, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155877, !noalias !155848, !noundef !3509 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !155878
  %i.s = load ptr, ptr %i.r, align 8, !dbg !155878, !alias.scope !155848, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !155879, !noalias !155848, !noundef !3509 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !155880
  %i.v = load ptr, ptr %i.u, align 8, !dbg !155880, !noalias !155848, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !155881
  %i.x = load i64, ptr %i.w, align 8, !dbg !155881, !noalias !155848, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !155882
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !155883
  %i.aa = load i64, ptr %i.z, align 8, !dbg !155883, !noalias !155848, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !155884
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !155885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155885, !noalias !155848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !155886, !noalias !155848
  store i64 0, ptr %i.a, align 8, !dbg !155885, !noalias !155848
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !155885
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !155885
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !155885
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !155885
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !155885 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !155885 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155885, !noalias !155848
  br label %.loopexit.i, !dbg !155887

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit11.i, !dbg !155888, !noalias !155848 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !155889 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !155889 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !155890
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit, label %bb.e, !dbg !155891

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155892, !alias.scope !155857, !noalias !155858, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155893, !alias.scope !155857, !noalias !155858, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !155894
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit, label %bb.f, !dbg !155895

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !155896
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155897, !alias.scope !155857, !noalias !155858
  %i.aj = load i32, ptr %i.af, align 4, !dbg !155898, !noalias !155848, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !155898     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !155899
  %i.am = load i32, ptr %i.al, align 4, !dbg !155899, !noalias !155848, !noundef !3509 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !155899     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !155900 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !155901
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !155902

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !155902
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !155902

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !155902
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !155902
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !155902
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !155902
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !155902
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !155902
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !155902
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !155902
  %found.conflict = and i1 %bound0, %bound1, !dbg !155902
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i32 %i.am, 16, !dbg !155902
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !155902

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !155902

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !155903 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !155904
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !155904, !alias.scope !155860, !noalias !155861
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !155904, !alias.scope !155860, !noalias !155861
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !155905 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !155906
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  store <8 x i8> splat (i8 1), ptr %i.ay, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec, !dbg !155902
  br i1 %i.az, label %middle.block, label %vector.body, !dbg !155902, !llvm.loop !155840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !155902
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !155902

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !155888

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.an, 4294967292             ; 3 uses
  %i.ba = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bb, !dbg !155903
  store <4 x i16> %broadcast.splat10, ptr %i.bc, align 2, !dbg !155904, !alias.scope !155860, !noalias !155861
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bb, !dbg !155905
  store <4 x i8> splat (i8 1), ptr %i.bd, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next12, %n.vec8, !dbg !155902
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !155902, !llvm.loop !155841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !155902
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !155902

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !155902

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bf = shl nuw nsw i64 %i.ak, 1, !dbg !155902
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.bf, !dbg !155902
  %i.bg = shl nuw nsw i64 %i.an, 1, !dbg !155902
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bg, i1 false), !dbg !155907, !noalias !155848
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !155902
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !155908, !noalias !155848
  br label %.loopexit.i.backedge, !dbg !155888

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bh, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !155909 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !155903
  store i16 %i.ae, ptr %i.bi, align 2, !dbg !155904, !noalias !155848
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !155905
  store i8 1, ptr %i.bj, align 1, !dbg !155906, !noalias !155848
  %i.bk = icmp samesign ult i64 %i.bh, %i.ao, !dbg !155901
  br i1 %i.bk, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !155902, !llvm.loop !155847

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !155910, !noalias !155848
  unreachable, !dbg !155910

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !155910

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155911, !noalias !155848
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !155873, !noalias !155848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155873, !noalias !155848
  ret void, !dbg !155912
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155913 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156092, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156093, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156093
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156093, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156075), !dbg !156093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156094, !noalias !156075
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156095, !alias.scope !156075, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156096, !noalias !156075
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156097
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156097, !alias.scope !156075, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !156098
  %i.i = load i64, ptr %i.h, align 8, !dbg !156098, !noalias !156075, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !156099      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !156100
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156100
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !156100, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !156101, !noalias !156075

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !156102, !noalias !156075

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !156103
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156103, !noalias !156075, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !156104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156105
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156105, !alias.scope !156075, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156106, !noalias !156075, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156107
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156107, !alias.scope !156075, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156108, !noalias !156075, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156109, !noalias !156075
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156110
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156110, !noalias !156075, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156111
  %i.x = load i64, ptr %i.w, align 8, !dbg !156111, !noalias !156075, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156112
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156113
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156113, !noalias !156075, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !156114
  call void @llvm.experimental.noalias.scope.decl(metadata !156083), !dbg !156115
  call void @llvm.experimental.noalias.scope.decl(metadata !156084), !dbg !156116
  store i64 0, ptr %i.a, align 8, !dbg !156117, !alias.scope !156085, !noalias !156075
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156117
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !156117, !alias.scope !156085, !noalias !156075
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156117
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !156117, !alias.scope !156085, !noalias !156075
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156117
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !156117, !alias.scope !156085, !noalias !156075
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156117
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !156117, !alias.scope !156085, !noalias !156075
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156117 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !156117, !alias.scope !156086, !noalias !156087
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156117 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !156117, !alias.scope !156086, !noalias !156087
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !156117, !alias.scope !156086, !noalias !156087
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !156118, !noalias !156075 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i32, i32 } %i.af, 0, !dbg !156119 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !156120
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156121

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, i32 } %.pn.i.i.i, 1, !dbg !156119 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !156122, !alias.scope !156088, !noalias !156089, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !156123, !alias.scope !156088, !noalias !156089, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !156124
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit, label %bb.e, !dbg !156125

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !156126
  store ptr %i.am, ptr %i.ac, align 8, !dbg !156127, !alias.scope !156088, !noalias !156089
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !156128
  %i.ao = load i32, ptr %i.an, align 4, !dbg !156128, !range !3606, !noalias !156090, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !156129
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !156129

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !156130, !noalias !156090, !noundef !3509
  br label %bb.g, !dbg !156131

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !156132 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !156133
  %i.as = load i32, ptr %i.ar, align 8, !dbg !156133, !noalias !156090, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !156133
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !156134
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !156135 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !156135 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !156136
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !156137

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156137 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !156137
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !156137
  %xtraiter = and i64 %i.az, 3, !dbg !156137      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !156137
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156137

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !156138 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !156139, !noalias !156090, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !156139     ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bc, !dbg !156140
  store i32 0, ptr %i.bd, align 4, !dbg !156141, !noalias !156090
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !156142
  store i8 0, ptr %i.be, align 1, !dbg !156143, !noalias !156090
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !156137 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !156137
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156137, !llvm.loop !156070

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !156137
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156137

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156137 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !156137
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !156137
  %xtraiter9 = and i64 %i.bi, 3, !dbg !156137     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !156137
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !156137

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !156138 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !156139, !noalias !156090, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !156139     ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl, !dbg !156144
  store i32 %i.ai, ptr %i.bm, align 4, !dbg !156145, !noalias !156090
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !156146
  store i8 1, ptr %i.bn, align 1, !dbg !156147, !noalias !156090
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !156137 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !156137
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.da = load i32, ptr %i.cu, align 4, !dbg !156139, !noalias !156090, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !156139     ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.db, !dbg !156140
  store i32 0, ptr %i.dc, align 4, !dbg !156141, !noalias !156090
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !156142
  store i8 0, ptr %i.dd, align 1, !dbg !156143, !noalias !156090
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !156136
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156137

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !156118, !noalias !156075 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !156119 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dg, 2, !dbg !156120
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156121

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !156148, !noalias !156075
  unreachable, !dbg !156148

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !156148

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156149, !noalias !156075
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156102, !noalias !156075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156102, !noalias !156075
  ret void, !dbg !156150
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156151 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156289, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156290, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156290
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156290, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156274), !dbg !156290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156291, !noalias !156274
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156292, !alias.scope !156274, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156293, !noalias !156274
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156294
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156294, !alias.scope !156274, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !156295      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !156296
  %i.j = load i64, ptr %i.i, align 8, !dbg !156296, !noalias !156274, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !156297
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156297
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !156297, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !156298, !noalias !156274

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !156299, !noalias !156274

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !156300
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156300, !noalias !156274, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !156301 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156302
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156302, !alias.scope !156274, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156303, !noalias !156274, !noundef !3509 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156304
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156304, !alias.scope !156274, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156305, !noalias !156274, !noundef !3509 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156306
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156306, !noalias !156274, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156307
  %i.x = load i64, ptr %i.w, align 8, !dbg !156307, !noalias !156274, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156308
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156309
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156309, !noalias !156274, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !156310
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156311, !noalias !156274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !156312, !noalias !156274
  store i64 0, ptr %i.a, align 8, !dbg !156311, !noalias !156274
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156311
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156311
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156311
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156311
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156311 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156311 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156311, !noalias !156274
  br label %.loopexit.i, !dbg !156313

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !156314, !noalias !156274 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i32, i32 } %i.ac, 0, !dbg !156315 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ac, 1, !dbg !156315 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 2, !dbg !156316
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs1_0B8_.exit, label %bb.e, !dbg !156317

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156318, !alias.scope !156283, !noalias !156284, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156319, !alias.scope !156283, !noalias !156284, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !156320
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs1_0B8_.exit, label %bb.f, !dbg !156321

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !156322
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156323, !alias.scope !156283, !noalias !156284
  %i.aj = load i32, ptr %i.af, align 4, !dbg !156324, !noalias !156274, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !156324     ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !156325
  %i.am = load i32, ptr %i.al, align 4, !dbg !156325, !noalias !156274, !noundef !3509 ; 3 uses
  %i.an = zext i32 %i.am to i64, !dbg !156325     ; 5 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !156326 ; 3 uses
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !156327
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !156328

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i32 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 8, !dbg !156328
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader6, label %vector.memcheck, !dbg !156328

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %i.aq = shl nuw nsw i64 %i.ak, 2, !dbg !156328
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !156328
  %i.ar = shl nuw nsw i64 %i.ao, 2, !dbg !156328
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !156328
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !156328
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !156328
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !156328
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !156328
  %found.conflict = and i1 %bound0, %bound1, !dbg !156328
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4294967288              ; 3 uses
  %i.as = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %index, %i.ak               ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.at, !dbg !156329 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !156330
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4, !dbg !156330, !alias.scope !156286, !noalias !156287
  store <4 x i32> %broadcast.splat, ptr %i.av, align 4, !dbg !156330, !alias.scope !156286, !noalias !156287
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.at, !dbg !156331 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4, !dbg !156332
  store <4 x i8> splat (i8 1), ptr %i.aw, align 1, !dbg !156332, !alias.scope !156288, !noalias !156274
  store <4 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !156332, !alias.scope !156288, !noalias !156274
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !156328
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !156328, !llvm.loop !156267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !156328
  br i1 %cmp.n, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader6, !dbg !156328

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !156314

.lr.ph.split.us.i.preheader6:                     ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %.sroa.011.011.us.i.ph = phi i64 [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.split.us.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.split.us.i, !dbg !156328

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.az = shl nuw nsw i64 %i.ak, 2, !dbg !156328
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.az, !dbg !156328
  %i.ba = shl nuw nsw i64 %i.an, 2, !dbg !156328
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ba, i1 false), !dbg !156333, !noalias !156274
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !156328
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !156334, !noalias !156274
  br label %.loopexit.i.backedge, !dbg !156314

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader6, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.bb, %.lr.ph.split.us.i ], [ %.sroa.011.011.us.i.ph, %.lr.ph.split.us.i.preheader6 ] ; 3 uses
  %i.bb = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !156335 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !156329
  store i32 %i.ae, ptr %i.bc, align 4, !dbg !156330, !noalias !156274
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !156331
  store i8 1, ptr %i.bd, align 1, !dbg !156332, !noalias !156274
  %i.be = icmp samesign ult i64 %i.bb, %i.ao, !dbg !156327
  br i1 %i.be, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !156328, !llvm.loop !156273

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !156336, !noalias !156274
  unreachable, !dbg !156336

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !156336

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156337, !noalias !156274
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156299, !noalias !156274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156299, !noalias !156274
  ret void, !dbg !156338
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156339 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156519, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156520, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156520
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156520, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156502), !dbg !156520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156521, !noalias !156502
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156522, !alias.scope !156502, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156523, !noalias !156502
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156524
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156524, !alias.scope !156502, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !156525
  %i.i = load i64, ptr %i.h, align 8, !dbg !156525, !noalias !156502, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !156526      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !156527
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156527
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !156527, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !156528, !noalias !156502

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !156529, !noalias !156502

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !156530
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156530, !noalias !156502, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !156531 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156532
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156532, !alias.scope !156502, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156533, !noalias !156502, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156534
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156534, !alias.scope !156502, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156535, !noalias !156502, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156536, !noalias !156502
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156537
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156537, !noalias !156502, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156538
  %i.x = load i64, ptr %i.w, align 8, !dbg !156538, !noalias !156502, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156539
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156540
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156540, !noalias !156502, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !156541
  call void @llvm.experimental.noalias.scope.decl(metadata !156510), !dbg !156542
  call void @llvm.experimental.noalias.scope.decl(metadata !156511), !dbg !156543
  store i64 0, ptr %i.a, align 8, !dbg !156544, !alias.scope !156512, !noalias !156502
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156544
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !156544, !alias.scope !156512, !noalias !156502
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156544
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !156544, !alias.scope !156512, !noalias !156502
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156544
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !156544, !alias.scope !156512, !noalias !156502
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156544
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !156544, !alias.scope !156512, !noalias !156502
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156544 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !156544, !alias.scope !156513, !noalias !156514
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156544 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !156544, !alias.scope !156513, !noalias !156514
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !156544, !alias.scope !156513, !noalias !156514
  %i.af = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityyINtNtB7_6copied6CopiedIB1x_yEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !156545, !noalias !156502 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i64, i64 } %i.af, 0, !dbg !156546 ; 2 uses
  %.not.i8.i.i.i = icmp eq i64 %i.ag, 2, !dbg !156547
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156548

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i64, i64 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i64 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i64, i64 } %.pn.i.i.i, 1, !dbg !156546 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !156549, !alias.scope !156515, !noalias !156516, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !156550, !alias.scope !156515, !noalias !156516, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !156551
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0B8_.exit, label %bb.e, !dbg !156552

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !156553
  store ptr %i.am, ptr %i.ac, align 8, !dbg !156554, !alias.scope !156515, !noalias !156516
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !156555
  %i.ao = load i32, ptr %i.an, align 4, !dbg !156555, !range !3606, !noalias !156517, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !156556
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !156556

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !156557, !noalias !156517, !noundef !3509
  br label %bb.g, !dbg !156558

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !156559 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !156560
  %i.as = load i32, ptr %i.ar, align 8, !dbg !156560, !noalias !156517, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !156560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !156561
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !156562 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !156562 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !156563
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !156564

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i64 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156564 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !156564
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !156564
  %xtraiter = and i64 %i.az, 3, !dbg !156564      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !156564
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156564

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !156565 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !156566     ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bc, !dbg !156567
  store i64 0, ptr %i.bd, align 8, !dbg !156568, !noalias !156517
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !156569
  store i8 0, ptr %i.be, align 1, !dbg !156570, !noalias !156517
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !156564 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !156564
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156564, !llvm.loop !156497

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !156564
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156564

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156564 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !156564
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !156564
  %xtraiter9 = and i64 %i.bi, 3, !dbg !156564     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !156564
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !156564

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !156565 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !156566     ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl, !dbg !156571
  store i64 %i.ai, ptr %i.bm, align 8, !dbg !156572, !noalias !156517
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !156573
  store i8 1, ptr %i.bn, align 1, !dbg !156574, !noalias !156517
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !156564 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !156564
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i8 1, ptr %i.bt, align 1, !dbg !156574, !noalias !156517
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 8, !dbg !156565
  %i.bv = load i32, ptr %i.bp, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.bw = zext i32 %i.bv to i64, !dbg !156566     ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bw, !dbg !156571
  store i64 %i.ai, ptr %i.bx, align 8, !dbg !156572, !noalias !156517
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bw, !dbg !156573
  store i8 1, ptr %i.by, align 1, !dbg !156574, !noalias !156517
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 12, !dbg !156565
  %i.ca = load i32, ptr %i.bu, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.cb = zext i32 %i.ca to i64, !dbg !156566     ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cb, !dbg !156571
  store i64 %i.ai, ptr %i.cc, align 8, !dbg !156572, !noalias !156517
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cb, !dbg !156573
  store i8 1, ptr %i.cd, align 1, !dbg !156574, !noalias !156517
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 16, !dbg !156565 ; 2 uses
  %i.cf = load i32, ptr %i.bz, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.cg = zext i32 %i.cf to i64, !dbg !156566     ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cg, !dbg !156571
  store i64 %i.ai, ptr %i.ch, align 8, !dbg !156572, !noalias !156517
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cg, !dbg !156573
  store i8 1, ptr %i.ci, align 1, !dbg !156574, !noalias !156517
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !156563
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !156564

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !156565
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.cm = zext i32 %i.cl to i64, !dbg !156566     ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cm, !dbg !156567
  store i64 0, ptr %i.cn, align 8, !dbg !156568, !noalias !156517
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !156569
  store i8 0, ptr %i.co, align 1, !dbg !156570, !noalias !156517
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !156565
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !156566     ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cr, !dbg !156567
  store i64 0, ptr %i.cs, align 8, !dbg !156568, !noalias !156517
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !156569
  store i8 0, ptr %i.ct, align 1, !dbg !156570, !noalias !156517
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !156565
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !156566     ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cw, !dbg !156567
  store i64 0, ptr %i.cx, align 8, !dbg !156568, !noalias !156517
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !156569
  store i8 0, ptr %i.cy, align 1, !dbg !156570, !noalias !156517
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !156565 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !156566, !noalias !156517, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !156566     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.db, !dbg !156567
  store i64 0, ptr %i.dc, align 8, !dbg !156568, !noalias !156517
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !156569
  store i8 0, ptr %i.dd, align 1, !dbg !156570, !noalias !156517
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !156563
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156564

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityyINtNtB7_6copied6CopiedIB1x_yEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !156545, !noalias !156502 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionyERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !156546 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dg, 2, !dbg !156547
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156548

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !156575, !noalias !156502
  unreachable, !dbg !156575

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !156575

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156576, !noalias !156502
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156529, !noalias !156502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156529, !noalias !156502
  ret void, !dbg !156577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156578 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156708, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156709, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156709
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156709, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156696), !dbg !156709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156710, !noalias !156696
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156711, !alias.scope !156696, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156712, !noalias !156696
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156713
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156713, !alias.scope !156696, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !156714      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !156715
  %i.j = load i64, ptr %i.i, align 8, !dbg !156715, !noalias !156696, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !156716
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156716
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !156716, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !156717, !noalias !156696

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !156718, !noalias !156696

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !156719
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156719, !noalias !156696, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !156720 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156721
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156721, !alias.scope !156696, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156722, !noalias !156696, !noundef !3509 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156723
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156723, !alias.scope !156696, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156724, !noalias !156696, !noundef !3509 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156725
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156725, !noalias !156696, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156726
  %i.x = load i64, ptr %i.w, align 8, !dbg !156726, !noalias !156696, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156727
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156728
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156728, !noalias !156696, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !156729
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156730, !noalias !156696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !156731, !noalias !156696
  store i64 0, ptr %i.a, align 8, !dbg !156730, !noalias !156696
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156730
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156730
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156730
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156730
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156730 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156730 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156730, !noalias !156696
  br label %.loopexit.i, !dbg !156732

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityyINtNtB7_6copied6CopiedIB1x_yEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !156733, !noalias !156696 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i64, i64 } %i.ac, 0, !dbg !156734 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1, !dbg !156734
  %.not.i.i = icmp eq i64 %i.ad, 2, !dbg !156735
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs1_0B8_.exit, label %bb.e, !dbg !156736

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156737, !alias.scope !156705, !noalias !156706, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156738, !alias.scope !156705, !noalias !156706, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !156739
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs1_0B8_.exit, label %bb.f, !dbg !156740

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !156741
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156742, !alias.scope !156705, !noalias !156706
  %i.aj = load i32, ptr %i.af, align 4, !dbg !156743, !noalias !156696, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !156743     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !156744
  %i.am = load i32, ptr %i.al, align 4, !dbg !156744, !noalias !156696, !noundef !3509 ; 2 uses
  %i.an = zext i32 %i.am to i64, !dbg !156744     ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !156745
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !156746
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !156747

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc nuw i64 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.aq = shl nuw nsw i64 %i.ak, 3, !dbg !156747
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !156747
  %i.ar = shl nuw nsw i64 %i.an, 3, !dbg !156747
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ar, i1 false), !dbg !156748, !noalias !156696
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !156747
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !156749, !noalias !156696
  br label %.loopexit.i.backedge, !dbg !156733

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !156733

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.as, %.lr.ph.split.us.i ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !156750 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !156751
  store i64 %i.ae, ptr %i.at, align 8, !dbg !156752, !noalias !156696
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !156753
  store i8 1, ptr %i.au, align 1, !dbg !156754, !noalias !156696
  %i.av = icmp samesign ult i64 %i.as, %i.ao, !dbg !156746
  br i1 %i.av, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !156747

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !156755, !noalias !156696
  unreachable, !dbg !156755

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !156755

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156756, !noalias !156696
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156718, !noalias !156696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156718, !noalias !156696
  ret void, !dbg !156757
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156758 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156938, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156939, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156939
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156939, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156921), !dbg !156939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156940, !noalias !156921
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156941, !alias.scope !156921, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156942, !noalias !156921
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156943
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156943, !alias.scope !156921, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !156944
  %i.i = load i64, ptr %i.h, align 8, !dbg !156944, !noalias !156921, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !156945      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !156946
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156946
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !156946, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !156947, !noalias !156921

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !156948, !noalias !156921

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !156949
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156949, !noalias !156921, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !156950 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156951
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156951, !alias.scope !156921, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156952, !noalias !156921, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156953
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156953, !alias.scope !156921, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156954, !noalias !156921, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156955, !noalias !156921
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156956
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156956, !noalias !156921, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156957
  %i.x = load i64, ptr %i.w, align 8, !dbg !156957, !noalias !156921, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156958
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156959
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156959, !noalias !156921, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !156960
  call void @llvm.experimental.noalias.scope.decl(metadata !156929), !dbg !156961
  call void @llvm.experimental.noalias.scope.decl(metadata !156930), !dbg !156962
  store i64 0, ptr %i.a, align 8, !dbg !156963, !alias.scope !156931, !noalias !156921
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156963
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !156963, !alias.scope !156931, !noalias !156921
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156963
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !156963, !alias.scope !156931, !noalias !156921
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156963
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !156963, !alias.scope !156931, !noalias !156921
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156963
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !156963, !alias.scope !156931, !noalias !156921
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156963 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !156963, !alias.scope !156932, !noalias !156933
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156963 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !156963, !alias.scope !156932, !noalias !156933
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !156963, !alias.scope !156932, !noalias !156933
  %i.af = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !156964, !noalias !156921 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i16, i16 } %i.af, 0, !dbg !156965 ; 2 uses
  %.not.i10.i.i.i = icmp eq i16 %i.ag, 2, !dbg !156966
  br i1 %.not.i10.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156967

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i16, i16 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i16 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i16, i16 } %.pn.i.i.i, 1, !dbg !156965 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !156968, !alias.scope !156934, !noalias !156935, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !156969, !alias.scope !156934, !noalias !156935, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !156970
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit, label %bb.e, !dbg !156971

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !156972
  store ptr %i.am, ptr %i.ac, align 8, !dbg !156973, !alias.scope !156934, !noalias !156935
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !156974
  %i.ao = load i32, ptr %i.an, align 4, !dbg !156974, !range !3606, !noalias !156936, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !156975
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !156975

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !156976, !noalias !156936, !noundef !3509
  br label %bb.g, !dbg !156977

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !156978 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !156979
  %i.as = load i32, ptr %i.ar, align 8, !dbg !156979, !noalias !156936, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !156979
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !156980
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !156981 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !156981 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !156982
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !156983

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i16 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156983 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !156983
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !156983
  %xtraiter = and i64 %i.az, 3, !dbg !156983      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !156983
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156983

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !156984 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !156985, !noalias !156936, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !156985     ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bc, !dbg !156986
  store i16 0, ptr %i.bd, align 2, !dbg !156987, !noalias !156936
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !156988
  store i8 0, ptr %i.be, align 1, !dbg !156989, !noalias !156936
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !156983 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !156983
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !156983, !llvm.loop !156916

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !156983
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156983

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !156983 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !156983
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !156983
  %xtraiter9 = and i64 %i.bi, 3, !dbg !156983     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !156983
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !156983

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !156984 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !156985, !noalias !156936, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !156985     ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bl, !dbg !156990
  store i16 %i.ai, ptr %i.bm, align 2, !dbg !156991, !noalias !156936
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !156992
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156948, !noalias !156921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156948, !noalias !156921
  ret void, !dbg !156996
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156997 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157136, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157137, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157137
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157137, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157121), !dbg !157137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157138, !noalias !157121
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157139, !alias.scope !157121, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157140, !noalias !157121
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157141
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157141, !alias.scope !157121, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !157142      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !157143
  %i.j = load i64, ptr %i.i, align 8, !dbg !157143, !noalias !157121, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !157144
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157144
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !157144, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !157145, !noalias !157121

.loopexit11.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !157146, !noalias !157121

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !157147
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157147, !noalias !157121, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !157148 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157149
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157149, !alias.scope !157121, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157150, !noalias !157121, !noundef !3509 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157151
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157151, !alias.scope !157121, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157152, !noalias !157121, !noundef !3509 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157153
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157153, !noalias !157121, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157154
  %i.x = load i64, ptr %i.w, align 8, !dbg !157154, !noalias !157121, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !157155
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !157156
  %i.aa = load i64, ptr %i.z, align 8, !dbg !157156, !noalias !157121, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !157157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !157158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157158, !noalias !157121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !157159, !noalias !157121
  store i64 0, ptr %i.a, align 8, !dbg !157158, !noalias !157121
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !157158
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !157158
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !157158
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !157158
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !157158 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !157158 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !157158, !noalias !157121
  br label %.loopexit.i, !dbg !157160

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit11.i, !dbg !157161, !noalias !157121 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !157162 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !157162 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !157163
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit, label %bb.e, !dbg !157164

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157165, !alias.scope !157130, !noalias !157131, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !157166, !alias.scope !157130, !noalias !157131, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !157167
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit, label %bb.f, !dbg !157168

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !157169
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157170, !alias.scope !157130, !noalias !157131
  %i.aj = load i32, ptr %i.af, align 4, !dbg !157171, !noalias !157121, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !157171     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !157172
  %i.am = load i32, ptr %i.al, align 4, !dbg !157172, !noalias !157121, !noundef !3509 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !157172     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !157173 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !157174
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !157175

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !157175
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !157175

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !157175
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !157175
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !157175
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !157175
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !157175
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !157175
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !157175
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !157175
  %found.conflict = and i1 %bound0, %bound1, !dbg !157175
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i32 %i.am, 16, !dbg !157175
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !157175

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !157175

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !157176 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !157177
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !157177, !alias.scope !157133, !noalias !157134
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !157177, !alias.scope !157133, !noalias !157134
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !157178 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !157179
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  store <8 x i8> splat (i8 1), ptr %i.ay, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec, !dbg !157175
  br i1 %i.az, label %middle.block, label %vector.body, !dbg !157175, !llvm.loop !157113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !157175
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !157175

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !157161

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.an, 4294967292             ; 3 uses
  %i.ba = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bb, !dbg !157176
  store <4 x i16> %broadcast.splat10, ptr %i.bc, align 2, !dbg !157177, !alias.scope !157133, !noalias !157134
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bb, !dbg !157178
  store <4 x i8> splat (i8 1), ptr %i.bd, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next12, %n.vec8, !dbg !157175
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !157175, !llvm.loop !157114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !157175
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !157175

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !157175

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bf = shl nuw nsw i64 %i.ak, 1, !dbg !157175
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.bf, !dbg !157175
  %i.bg = shl nuw nsw i64 %i.an, 1, !dbg !157175
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bg, i1 false), !dbg !157180, !noalias !157121
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !157175
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !157181, !noalias !157121
  br label %.loopexit.i.backedge, !dbg !157161

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bh, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !157182 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !157176
  store i16 %i.ae, ptr %i.bi, align 2, !dbg !157177, !noalias !157121
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !157178
  store i8 1, ptr %i.bj, align 1, !dbg !157179, !noalias !157121
  %i.bk = icmp samesign ult i64 %i.bh, %i.ao, !dbg !157174
  br i1 %i.bk, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !157175, !llvm.loop !157120

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !157183, !noalias !157121
  unreachable, !dbg !157183

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !157183

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157184, !noalias !157121
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !157146, !noalias !157121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157146, !noalias !157121
  ret void, !dbg !157185
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157186 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157366, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157367, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157367
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157367, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157349), !dbg !157367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157368, !noalias !157349
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157369, !alias.scope !157349, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157370, !noalias !157349
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157371
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157371, !alias.scope !157349, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !157372
  %i.i = load i64, ptr %i.h, align 8, !dbg !157372, !noalias !157349, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !157373      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !157374
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157374
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !157374, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !157375, !noalias !157349

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !157376, !noalias !157349

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !157377
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157377, !noalias !157349, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !157378 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157379
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157379, !alias.scope !157349, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157380, !noalias !157349, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157381
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157381, !alias.scope !157349, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157382, !noalias !157349, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157383, !noalias !157349
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157384
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157384, !noalias !157349, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157385
  %i.x = load i64, ptr %i.w, align 8, !dbg !157385, !noalias !157349, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !157386
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !157387
  %i.aa = load i64, ptr %i.z, align 8, !dbg !157387, !noalias !157349, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !157388
  call void @llvm.experimental.noalias.scope.decl(metadata !157357), !dbg !157389
  call void @llvm.experimental.noalias.scope.decl(metadata !157358), !dbg !157390
  store i64 0, ptr %i.a, align 8, !dbg !157391, !alias.scope !157359, !noalias !157349
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !157391
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !157391, !alias.scope !157359, !noalias !157349
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !157391
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !157391, !alias.scope !157359, !noalias !157349
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !157391
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !157391, !alias.scope !157359, !noalias !157349
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !157391
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !157391, !alias.scope !157359, !noalias !157349
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !157391 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !157391, !alias.scope !157360, !noalias !157361
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !157391 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !157391, !alias.scope !157360, !noalias !157361
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !157391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !157391, !alias.scope !157360, !noalias !157361
  %i.af = invoke fastcc { i32, float } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityfINtNtB7_6copied6CopiedIB1x_fEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !157392, !noalias !157349 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i32, float } %i.af, 0, !dbg !157393 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !157394
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !157395

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, float } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, float } %.pn.i.i.i, 1, !dbg !157393 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !157396, !alias.scope !157362, !noalias !157363, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !157397, !alias.scope !157362, !noalias !157363, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !157398
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit, label %bb.e, !dbg !157399

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !157400
  store ptr %i.am, ptr %i.ac, align 8, !dbg !157401, !alias.scope !157362, !noalias !157363
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !157402
  %i.ao = load i32, ptr %i.an, align 4, !dbg !157402, !range !3606, !noalias !157364, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !157403
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !157403

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !157404, !noalias !157364, !noundef !3509
  br label %bb.g, !dbg !157405

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !157406 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !157407
  %i.as = load i32, ptr %i.ar, align 8, !dbg !157407, !noalias !157364, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !157407
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !157408
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !157409 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !157409 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !157410
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !157411

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !157411 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !157411
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !157411
  %xtraiter = and i64 %i.az, 3, !dbg !157411      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !157411
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !157411

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !157412 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !157413, !noalias !157364, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !157413     ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bc, !dbg !157414
  store float 0.000000e+00, ptr %i.bd, align 4, !dbg !157415, !noalias !157364
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !157416
  store i8 0, ptr %i.be, align 1, !dbg !157417, !noalias !157364
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !157411 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !157411
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !157411, !llvm.loop !157344

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !157411
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !157411

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !157411 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !157411
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !157411
  %xtraiter9 = and i64 %i.bi, 3, !dbg !157411     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !157411
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !157411

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !157412 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !157413, !noalias !157364, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !157413     ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl, !dbg !157418
  store float %i.ai, ptr %i.bm, align 4, !dbg !157419, !noalias !157364
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !157420
  store i8 1, ptr %i.bn, align 1, !dbg !157421, !noalias !157364
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !157411 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !157411
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.da = load i32, ptr %i.cu, align 4, !dbg !157413, !noalias !157364, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !157413     ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.db, !dbg !157414
  store float 0.000000e+00, ptr %i.dc, align 4, !dbg !157415, !noalias !157364
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !157416
  store i8 0, ptr %i.dd, align 1, !dbg !157417, !noalias !157364
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !157410
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !157411

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i32, float } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityfINtNtB7_6copied6CopiedIB1x_fEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !157392, !noalias !157349 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i32, float } %i.df, 0, !dbg !157393 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dg, 2, !dbg !157394
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !157395

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !157422, !noalias !157349
  unreachable, !dbg !157422

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !157422

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157423, !noalias !157349
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !157376, !noalias !157349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157376, !noalias !157349
  ret void, !dbg !157424
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157425 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157563, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157564, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157564
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157564, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157548), !dbg !157564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157565, !noalias !157548
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157566, !alias.scope !157548, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157567, !noalias !157548
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157568
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157568, !alias.scope !157548, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !157569      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !157570
  %i.j = load i64, ptr %i.i, align 8, !dbg !157570, !noalias !157548, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !157571
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157571
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !157571, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !157572, !noalias !157548

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !157573, !noalias !157548

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !157574
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157574, !noalias !157548, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !157575 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157576
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157576, !alias.scope !157548, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157577, !noalias !157548, !noundef !3509 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157578
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157578, !alias.scope !157548, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157579, !noalias !157548, !noundef !3509 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157580
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157580, !noalias !157548, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157581
  %i.x = load i64, ptr %i.w, align 8, !dbg !157581, !noalias !157548, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !157582
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !157583
  %i.aa = load i64, ptr %i.z, align 8, !dbg !157583, !noalias !157548, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !157584
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !157585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157585, !noalias !157548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !157586, !noalias !157548
  store i64 0, ptr %i.a, align 8, !dbg !157585, !noalias !157548
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !157585
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !157585
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !157585
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !157585
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !157585 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !157585 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !157585, !noalias !157548
  br label %.loopexit.i, !dbg !157587

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i32, float } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityfINtNtB7_6copied6CopiedIB1x_fEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !157588, !noalias !157548 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i32, float } %i.ac, 0, !dbg !157589 ; 2 uses
  %i.ae = extractvalue { i32, float } %i.ac, 1, !dbg !157589 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 2, !dbg !157590
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs1_0B8_.exit, label %bb.e, !dbg !157591

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157592, !alias.scope !157557, !noalias !157558, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !157593, !alias.scope !157557, !noalias !157558, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !157594
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs1_0B8_.exit, label %bb.f, !dbg !157595

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !157596
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !157597, !alias.scope !157557, !noalias !157558
  %i.aj = load i32, ptr %i.af, align 4, !dbg !157598, !noalias !157548, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !157598     ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !157599
  %i.am = load i32, ptr %i.al, align 4, !dbg !157599, !noalias !157548, !noundef !3509 ; 3 uses
  %i.an = zext i32 %i.am to i64, !dbg !157599     ; 5 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !157600 ; 3 uses
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !157601
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !157602

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i32 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 8, !dbg !157602
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader6, label %vector.memcheck, !dbg !157602

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %i.aq = shl nuw nsw i64 %i.ak, 2, !dbg !157602
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !157602
  %i.ar = shl nuw nsw i64 %i.ao, 2, !dbg !157602
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !157602
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !157602
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !157602
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !157602
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !157602
  %found.conflict = and i1 %bound0, %bound1, !dbg !157602
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4294967288              ; 3 uses
  %i.as = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %index, %i.ak               ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.at, !dbg !157603 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !157604
  store <4 x float> %broadcast.splat, ptr %i.au, align 4, !dbg !157604, !alias.scope !157560, !noalias !157561
  store <4 x float> %broadcast.splat, ptr %i.av, align 4, !dbg !157604, !alias.scope !157560, !noalias !157561
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.at, !dbg !157605 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4, !dbg !157606
  store <4 x i8> splat (i8 1), ptr %i.aw, align 1, !dbg !157606, !alias.scope !157562, !noalias !157548
  store <4 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !157606, !alias.scope !157562, !noalias !157548
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !157602
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !157602, !llvm.loop !157541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !157602
  br i1 %cmp.n, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader6, !dbg !157602

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !157588

.lr.ph.split.us.i.preheader6:                     ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %.sroa.011.011.us.i.ph = phi i64 [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.split.us.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.split.us.i, !dbg !157602

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.az = shl nuw nsw i64 %i.ak, 2, !dbg !157602
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.az, !dbg !157602
  %i.ba = shl nuw nsw i64 %i.an, 2, !dbg !157602
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ba, i1 false), !dbg !157607, !noalias !157548
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !157602
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !157608, !noalias !157548
  br label %.loopexit.i.backedge, !dbg !157588

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader6, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.bb, %.lr.ph.split.us.i ], [ %.sroa.011.011.us.i.ph, %.lr.ph.split.us.i.preheader6 ] ; 3 uses
  %i.bb = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !157609 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !157603
  store float %i.ae, ptr %i.bc, align 4, !dbg !157604, !noalias !157548
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !157605
  store i8 1, ptr %i.bd, align 1, !dbg !157606, !noalias !157548
  %i.be = icmp samesign ult i64 %i.bb, %i.ao, !dbg !157601
  br i1 %i.be, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !157602, !llvm.loop !157547

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !157610, !noalias !157548
  unreachable, !dbg !157610

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !157610

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157611, !noalias !157548
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !157573, !noalias !157548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157573, !noalias !157548
  ret void, !dbg !157612
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157613 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157793, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157794, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157794
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157794, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157776), !dbg !157794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157795, !noalias !157776
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157796, !alias.scope !157776, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157797, !noalias !157776
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157798
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157798, !alias.scope !157776, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !157799
  %i.i = load i64, ptr %i.h, align 8, !dbg !157799, !noalias !157776, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !157800      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !157801
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157801
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !157801, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !157802, !noalias !157776

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !157803, !noalias !157776

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !157804
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157804, !noalias !157776, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !157805 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157806
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157806, !alias.scope !157776, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157807, !noalias !157776, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157808
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157808, !alias.scope !157776, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157809, !noalias !157776, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157810, !noalias !157776
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157811
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157811, !noalias !157776, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157812
  %i.x = load i64, ptr %i.w, align 8, !dbg !157812, !noalias !157776, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !157813
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !157814
  %i.aa = load i64, ptr %i.z, align 8, !dbg !157814, !noalias !157776, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !157815
  call void @llvm.experimental.noalias.scope.decl(metadata !157784), !dbg !157816
  call void @llvm.experimental.noalias.scope.decl(metadata !157785), !dbg !157817
  store i64 0, ptr %i.a, align 8, !dbg !157818, !alias.scope !157786, !noalias !157776
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !157818
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !157818, !alias.scope !157786, !noalias !157776
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !157818
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !157818, !alias.scope !157786, !noalias !157776
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !157818
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !157818, !alias.scope !157786, !noalias !157776
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !157818
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !157818, !alias.scope !157786, !noalias !157776
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !157818 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !157818, !alias.scope !157787, !noalias !157788
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !157818 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !157818, !alias.scope !157787, !noalias !157788
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !157818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !157818, !alias.scope !157787, !noalias !157788
  %i.af = invoke fastcc { i64, double } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditydINtNtB7_6copied6CopiedIB1x_dEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !157819, !noalias !157776 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i64, double } %i.af, 0, !dbg !157820 ; 2 uses
  %.not.i8.i.i.i = icmp eq i64 %i.ag, 2, !dbg !157821
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !157822

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i64, double } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i64 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i64, double } %.pn.i.i.i, 1, !dbg !157820 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !157823, !alias.scope !157789, !noalias !157790, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !157824, !alias.scope !157789, !noalias !157790, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !157825
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0B8_.exit, label %bb.e, !dbg !157826

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !157827
  store ptr %i.am, ptr %i.ac, align 8, !dbg !157828, !alias.scope !157789, !noalias !157790
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !157829
  %i.ao = load i32, ptr %i.an, align 4, !dbg !157829, !range !3606, !noalias !157791, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !157830
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !157830

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !157831, !noalias !157791, !noundef !3509
  br label %bb.g, !dbg !157832

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !157833 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !157834
  %i.as = load i32, ptr %i.ar, align 8, !dbg !157834, !noalias !157791, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !157834
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !157835
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !157836 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !157836 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !157837
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !157838

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i64 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !157838 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !157838
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !157838
  %xtraiter = and i64 %i.az, 3, !dbg !157838      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !157838
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !157838

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !157839 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !157840     ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bc, !dbg !157841
  store double 0.000000e+00, ptr %i.bd, align 8, !dbg !157842, !noalias !157791
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !157843
  store i8 0, ptr %i.be, align 1, !dbg !157844, !noalias !157791
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !157838 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !157838
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !157838, !llvm.loop !157771

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !157838
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !157838

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !157838 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !157838
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !157838
  %xtraiter9 = and i64 %i.bi, 3, !dbg !157838     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !157838
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !157838

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !157839 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !157840     ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl, !dbg !157845
  store double %i.ai, ptr %i.bm, align 8, !dbg !157846, !noalias !157791
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !157847
  store i8 1, ptr %i.bn, align 1, !dbg !157848, !noalias !157791
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !157838 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !157838
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i8 1, ptr %i.bt, align 1, !dbg !157848, !noalias !157791
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 8, !dbg !157839
  %i.bv = load i32, ptr %i.bp, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.bw = zext i32 %i.bv to i64, !dbg !157840     ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bw, !dbg !157845
  store double %i.ai, ptr %i.bx, align 8, !dbg !157846, !noalias !157791
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bw, !dbg !157847
  store i8 1, ptr %i.by, align 1, !dbg !157848, !noalias !157791
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 12, !dbg !157839
  %i.ca = load i32, ptr %i.bu, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.cb = zext i32 %i.ca to i64, !dbg !157840     ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cb, !dbg !157845
  store double %i.ai, ptr %i.cc, align 8, !dbg !157846, !noalias !157791
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cb, !dbg !157847
  store i8 1, ptr %i.cd, align 1, !dbg !157848, !noalias !157791
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 16, !dbg !157839 ; 2 uses
  %i.cf = load i32, ptr %i.bz, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.cg = zext i32 %i.cf to i64, !dbg !157840     ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cg, !dbg !157845
  store double %i.ai, ptr %i.ch, align 8, !dbg !157846, !noalias !157791
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cg, !dbg !157847
  store i8 1, ptr %i.ci, align 1, !dbg !157848, !noalias !157791
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !157837
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !157838

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !157839
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.cm = zext i32 %i.cl to i64, !dbg !157840     ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cm, !dbg !157841
  store double 0.000000e+00, ptr %i.cn, align 8, !dbg !157842, !noalias !157791
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !157843
  store i8 0, ptr %i.co, align 1, !dbg !157844, !noalias !157791
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !157839
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !157840     ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cr, !dbg !157841
  store double 0.000000e+00, ptr %i.cs, align 8, !dbg !157842, !noalias !157791
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !157843
  store i8 0, ptr %i.ct, align 1, !dbg !157844, !noalias !157791
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !157839
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !157840     ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cw, !dbg !157841
  store double 0.000000e+00, ptr %i.cx, align 8, !dbg !157842, !noalias !157791
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !157843
  store i8 0, ptr %i.cy, align 1, !dbg !157844, !noalias !157791
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !157839 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !157840, !noalias !157791, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !157840     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.db, !dbg !157841
  store double 0.000000e+00, ptr %i.dc, align 8, !dbg !157842, !noalias !157791
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !157843
  store i8 0, ptr %i.dd, align 1, !dbg !157844, !noalias !157791
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !157837
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !157838

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i64, double } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditydINtNtB7_6copied6CopiedIB1x_dEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !157819, !noalias !157776 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiondERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i64, double } %i.df, 0, !dbg !157820 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dg, 2, !dbg !157821
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !157822

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !157849, !noalias !157776
  unreachable, !dbg !157849

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !157849

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157850, !noalias !157776
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !157803, !noalias !157776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157803, !noalias !157776
  ret void, !dbg !157851
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157852 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157982, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157983, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157983
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157983, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157970), !dbg !157983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157984, !noalias !157970
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157985, !alias.scope !157970, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157986, !noalias !157970
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157987
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157987, !alias.scope !157970, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !157988      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !157989
  %i.j = load i64, ptr %i.i, align 8, !dbg !157989, !noalias !157970, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !157990
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157990
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !157990, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !157991, !noalias !157970

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !157992, !noalias !157970

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !157993
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157993, !noalias !157970, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !157994 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157995
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157995, !alias.scope !157970, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157996, !noalias !157970, !noundef !3509 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157997
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157997, !alias.scope !157970, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157998, !noalias !157970, !noundef !3509 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157999
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157999, !noalias !157970, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !158000
  %i.x = load i64, ptr %i.w, align 8, !dbg !158000, !noalias !157970, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !158001
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !158002
  %i.aa = load i64, ptr %i.z, align 8, !dbg !158002, !noalias !157970, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !158003
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !158004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158004, !noalias !157970
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !158005, !noalias !157970
  store i64 0, ptr %i.a, align 8, !dbg !158004, !noalias !157970
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !158004
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !158004
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !158004
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !158004
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !158004 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !158004 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158004, !noalias !157970
  br label %.loopexit.i, !dbg !158006

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i64, double } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditydINtNtB7_6copied6CopiedIB1x_dEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !158007, !noalias !157970 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i64, double } %i.ac, 0, !dbg !158008 ; 2 uses
  %i.ae = extractvalue { i64, double } %i.ac, 1, !dbg !158008
  %.not.i.i = icmp eq i64 %i.ad, 2, !dbg !158009
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs1_0B8_.exit, label %bb.e, !dbg !158010

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158011, !alias.scope !157979, !noalias !157980, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158012, !alias.scope !157979, !noalias !157980, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !158013
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs1_0B8_.exit, label %bb.f, !dbg !158014

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !158015
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158016, !alias.scope !157979, !noalias !157980
  %i.aj = load i32, ptr %i.af, align 4, !dbg !158017, !noalias !157970, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !158017     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !158018
  %i.am = load i32, ptr %i.al, align 4, !dbg !158018, !noalias !157970, !noundef !3509 ; 2 uses
  %i.an = zext i32 %i.am to i64, !dbg !158018     ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !158019
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !158020
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !158021

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc nuw i64 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.aq = shl nuw nsw i64 %i.ak, 3, !dbg !158021
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !158021
  %i.ar = shl nuw nsw i64 %i.an, 3, !dbg !158021
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ar, i1 false), !dbg !158022, !noalias !157970
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !158021
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !158023, !noalias !157970
  br label %.loopexit.i.backedge, !dbg !158007

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !158007

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.as, %.lr.ph.split.us.i ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !158024 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !158025
  store double %i.ae, ptr %i.at, align 8, !dbg !158026, !noalias !157970
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !158027
  store i8 1, ptr %i.au, align 1, !dbg !158028, !noalias !157970
  %i.av = icmp samesign ult i64 %i.as, %i.ao, !dbg !158020
  br i1 %i.av, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !158021

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !158029, !noalias !157970
  unreachable, !dbg !158029

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !158029

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158030, !noalias !157970
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !157992, !noalias !157970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157992, !noalias !157970
  ret void, !dbg !158031
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158032 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca [184 x i8], align 8               ; 12 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !158221, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !158222, !noundef !3509 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !158222
  %.val1 = load i64, ptr %i.e, align 8, !dbg !158222, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158197), !dbg !158222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158223, !noalias !158197
  %i.f = load ptr, ptr %i.d, align 8, !dbg !158224, !alias.scope !158197, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11UInt128TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.f, i64 noundef %.val, i64 noundef %.val1), !dbg !158225, !noalias !158197
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !158226
  %i.h = load ptr, ptr %i.g, align 8, !dbg !158226, !alias.scope !158197, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !158227
  %i.j = load i64, ptr %i.i, align 8, !dbg !158227, !noalias !158197, !noundef !3509 ; 2 uses
  %i.k = add i64 %.val1, %.val, !dbg !158228      ; 3 uses
  %i.l = icmp ult i64 %i.k, %.val, !dbg !158229
  %.not.i = icmp ugt i64 %i.k, %i.j
  %or.cond.i = or i1 %i.l, %.not.i, !dbg !158229
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !158229, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.k, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.i unwind label %.loopexit.split-lp.i, !dbg !158230, !noalias !158197

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54
          to label %bb.k unwind label %bb.j, !dbg !158231, !noalias !158197

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !158232
  %i.n = load ptr, ptr %i.m, align 8, !dbg !158232, !noalias !158197, !nonnull !3509, !noundef !3509
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val, !dbg !158233 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !158234
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158234, !alias.scope !158197, !nonnull !3509, !align !3639, !noundef !3509
  %i.r = load ptr, ptr %i.q, align 8, !dbg !158235, !noalias !158197, !noundef !3509 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !158236
  %i.t = load ptr, ptr %i.s, align 8, !dbg !158236, !alias.scope !158197, !nonnull !3509, !align !3639, !noundef !3509
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158237, !noalias !158197, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158238, !noalias !158197
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !158239
  %i.w = load ptr, ptr %i.v, align 8, !dbg !158239, !noalias !158197, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !158240
  %i.y = load i64, ptr %i.x, align 8, !dbg !158240, !noalias !158197, !noundef !3509
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y, !dbg !158241
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !158242
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !158242, !noalias !158197, !noundef !3509
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.val1, !dbg !158243
  call void @llvm.experimental.noalias.scope.decl(metadata !158205), !dbg !158244
  call void @llvm.experimental.noalias.scope.decl(metadata !158206), !dbg !158245
  store i64 0, ptr %i.b, align 8, !dbg !158246, !alias.scope !158207, !noalias !158197
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !158246
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !158246, !alias.scope !158207, !noalias !158197
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !158246
  store ptr %i.w, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !158246, !alias.scope !158207, !noalias !158197
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !158246
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !158246, !alias.scope !158207, !noalias !158197
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !158246
  store i64 %i.ab, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !158246, !alias.scope !158207, !noalias !158197
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !158246 ; 3 uses
  store ptr %i.o, ptr %i.ad, align 8, !dbg !158246, !alias.scope !158208, !noalias !158209
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !158246 ; 2 uses
  store ptr %i.ac, ptr %i.ae, align 8, !dbg !158246, !alias.scope !158208, !noalias !158209
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !158246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !dbg !158246, !alias.scope !158208, !noalias !158209
  call void @llvm.experimental.noalias.scope.decl(metadata !158210), !dbg !158247
  call void @llvm.experimental.noalias.scope.decl(metadata !158211), !dbg !158248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158249, !noalias !158212
  invoke fastcc void @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11UInt128TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityoINtNtB7_6copied6CopiedIB1x_oEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !158250, !noalias !158197

.noexc.i:                                         ; preds = %bb.d
  %i.ag = load i128, ptr %i.a, align 16, !dbg !158251, !range !4529, !noalias !158212, !noundef !3509 ; 2 uses
  %.not.i10.i.i.i = icmp eq i128 %i.ag, 2, !dbg !158251
  br i1 %.not.i10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !158252

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %extract.t.i.i.i = trunc nuw i128 %i.ag to i1, !dbg !158252
  br label %bb.e, !dbg !158252

bb.e:                                             ; preds = %.noexc14.i, %.lr.ph.i.i.i
  %.off0.i.i.i = phi i1 [ %extract.t.i.i.i, %.lr.ph.i.i.i ], [ %extract.t11.i.i.i, %.noexc14.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !158213), !dbg !158253
  %i.ai = load i128, ptr %i.ah, align 16, !dbg !158254, !noalias !158214 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158255, !noalias !158214
  %i.aj = load ptr, ptr %i.ad, align 8, !dbg !158256, !alias.scope !158215, !noalias !158216, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !dbg !158257, !alias.scope !158215, !noalias !158216, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !158258
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_0B8_.exit, label %bb.f, !dbg !158259

._crit_edge.i.i.i:                                ; preds = %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158255, !noalias !158214
  br label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_0B8_.exit, !dbg !158260

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !158261
  store ptr %i.am, ptr %i.ad, align 8, !dbg !158262, !alias.scope !158215, !noalias !158216
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !158263
  %i.ao = load i32, ptr %i.an, align 4, !dbg !158263, !range !3606, !noalias !158218, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !158264
  br i1 %i.ap, label %bb.h, label %bb.g, !dbg !158264

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !158265, !noalias !158218, !noundef !3509
  br label %bb.h, !dbg !158266

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.aj, %bb.f ], !dbg !158267 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !158268
  %i.as = load i32, ptr %i.ar, align 8, !dbg !158268, !noalias !158218, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !158268
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !158269
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !158270 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !158270 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !158271
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !158272

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  br i1 %.off0.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !158272 ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2, !dbg !158272
  %i.ay = add nuw nsw i64 %i.ax, 1, !dbg !158272
  %xtraiter = and i64 %i.ay, 3, !dbg !158272      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !158272
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !158272

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !158273 ; 2 uses
  %i.ba = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.bb = zext i32 %i.ba to i64, !dbg !158274     ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bb, !dbg !158275
  store i128 0, ptr %i.bc, align 16, !dbg !158276, !noalias !158218
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bb, !dbg !158277
  store i8 0, ptr %i.bd, align 1, !dbg !158278, !noalias !158218
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !158272 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !158272
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !158272, !llvm.loop !158191

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.be = icmp ult i64 %i.aw, 12, !dbg !158272
  br i1 %i.be, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !158272

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !158272 ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 2, !dbg !158272
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !158272
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ca, !dbg !158279
  store i128 %i.ai, ptr %i.cb, align 16, !dbg !158280, !noalias !158218
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ca, !dbg !158281
  store i8 1, ptr %i.cc, align 1, !dbg !158282, !noalias !158218
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 16, !dbg !158273 ; 2 uses
  %i.ce = load i32, ptr %i.by, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.cf = zext i32 %i.ce to i64, !dbg !158274     ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cf, !dbg !158279
  store i128 %i.ai, ptr %i.cg, align 16, !dbg !158280, !noalias !158218
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cf, !dbg !158281
  store i8 1, ptr %i.ch, align 1, !dbg !158282, !noalias !158218
  %i.ci = icmp eq ptr %i.cd, %i.au, !dbg !158271
  br i1 %i.ci, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !158272

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !158273
  %i.ck = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.cl = zext i32 %i.ck to i64, !dbg !158274     ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cl, !dbg !158275
  store i128 0, ptr %i.cm, align 16, !dbg !158276, !noalias !158218
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cl, !dbg !158277
  store i8 0, ptr %i.cn, align 1, !dbg !158278, !noalias !158218
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !158273
  %i.cp = load i32, ptr %i.cj, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.cq = zext i32 %i.cp to i64, !dbg !158274     ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cq, !dbg !158275
  store i128 0, ptr %i.cr, align 16, !dbg !158276, !noalias !158218
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq, !dbg !158277
  store i8 0, ptr %i.cs, align 1, !dbg !158278, !noalias !158218
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !158273
  %i.cu = load i32, ptr %i.co, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.cv = zext i32 %i.cu to i64, !dbg !158274     ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cv, !dbg !158275
  store i128 0, ptr %i.cw, align 16, !dbg !158276, !noalias !158218
  %i.cx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cv, !dbg !158277
  store i8 0, ptr %i.cx, align 1, !dbg !158278, !noalias !158218
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !158273 ; 2 uses
  %i.cz = load i32, ptr %i.ct, align 4, !dbg !158274, !noalias !158218, !noundef !3509
  %i.da = zext i32 %i.cz to i64, !dbg !158274     ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.da, !dbg !158275
  store i128 0, ptr %i.db, align 16, !dbg !158276, !noalias !158218
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.da, !dbg !158277
  store i8 0, ptr %i.dc, align 1, !dbg !158278, !noalias !158218
  %i.dd = icmp eq ptr %i.cy, %i.au, !dbg !158271
  br i1 %i.dd, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !158272

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158249, !noalias !158220
  invoke fastcc void @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11UInt128TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityoINtNtB7_6copied6CopiedIB1x_oEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !158250, !noalias !158197

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionoERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_00E0B2G_.exit.i.i.i
  %i.de = load i128, ptr %i.a, align 16, !dbg !158251, !range !4529, !noalias !158220, !noundef !3509 ; 2 uses
  %.not.i.i.i.i = icmp eq i128 %i.de, 2, !dbg !158251
  %extract.t11.i.i.i = trunc nuw i128 %i.de to i1, !dbg !158252
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.e, !dbg !158252

bb.i:                                             ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !158283, !noalias !158197
  unreachable, !dbg !158283

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !158283

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs0_0B8_.exit: ; preds = %bb.e, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158284, !noalias !158197
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !158231, !noalias !158197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158231, !noalias !158197
  ret void, !dbg !158285
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158286 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [184 x i8], align 8               ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !158419, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !158420, !noundef !3509 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !158420
  %.val1 = load i64, ptr %i.e, align 8, !dbg !158420, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158404), !dbg !158420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !158421, !noalias !158404
  %i.f = load ptr, ptr %i.d, align 8, !dbg !158422, !alias.scope !158404, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11UInt128TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.f, i64 noundef %.val, i64 noundef %.val1), !dbg !158423, !noalias !158404
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !158424
  %i.h = load ptr, ptr %i.g, align 8, !dbg !158424, !alias.scope !158404, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.i = add i64 %.val1, %.val, !dbg !158425      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !158426
  %i.k = load i64, ptr %i.j, align 8, !dbg !158426, !noalias !158404, !noundef !3509 ; 2 uses
  %i.l = icmp ult i64 %i.i, %.val, !dbg !158427
  %.not.i = icmp ugt i64 %i.i, %i.k
  %or.cond.i = or i1 %i.l, %.not.i, !dbg !158427
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !158427, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !158428, !noalias !158404

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54
          to label %bb.j unwind label %bb.i, !dbg !158429, !noalias !158404

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !158430
  %i.n = load ptr, ptr %i.m, align 8, !dbg !158430, !noalias !158404, !nonnull !3509, !noundef !3509
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val, !dbg !158431 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !158432
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158432, !alias.scope !158404, !nonnull !3509, !align !3639, !noundef !3509
  %i.r = load ptr, ptr %i.q, align 8, !dbg !158433, !noalias !158404, !noundef !3509 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !158434
  %i.t = load ptr, ptr %i.s, align 8, !dbg !158434, !alias.scope !158404, !nonnull !3509, !align !3639, !noundef !3509
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158435, !noalias !158404, !noundef !3509 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !158436
  %i.w = load ptr, ptr %i.v, align 8, !dbg !158436, !noalias !158404, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !158437
  %i.y = load i64, ptr %i.x, align 8, !dbg !158437, !noalias !158404, !noundef !3509
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y, !dbg !158438
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !158439
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !158439, !noalias !158404, !noundef !3509
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val1, !dbg !158440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !158441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158441, !noalias !158404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !158442, !noalias !158404
  store i64 0, ptr %i.b, align 8, !dbg !158441, !noalias !158404
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !158441
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !158441
  store ptr %i.w, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !158441
  store ptr %i.z, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !158441
  store i64 %i.ab, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !158441 ; 3 uses
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !158441 ; 2 uses
  store ptr %i.ac, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158441, !noalias !158404
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit.i, !dbg !158443

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !158412), !dbg !158444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158445, !noalias !158414
  invoke fastcc void @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11UInt128TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityoINtNtB7_6copied6CopiedIB1x_oEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !158446, !noalias !158404

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ae = load i128, ptr %i.a, align 16, !dbg !158447, !range !4529, !noalias !158414, !noundef !3509 ; 2 uses
  %.not.i.i = icmp eq i128 %i.ae, 2, !dbg !158447
  br i1 %.not.i.i, label %bb.f, label %bb.e, !dbg !158448

bb.e:                                             ; preds = %.noexc.i
  %i.af = load i128, ptr %i.ad, align 16, !dbg !158449, !noalias !158414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158450, !noalias !158414
  %i.ag = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158451, !alias.scope !158415, !noalias !158416, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ah = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158452, !alias.scope !158415, !noalias !158416, !nonnull !3509, !noundef !3509
  %i.ai = icmp eq ptr %i.ag, %i.ah, !dbg !158453
  br i1 %i.ai, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs1_0B8_.exit, label %bb.g, !dbg !158454

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158450, !noalias !158414
  br label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs1_0B8_.exit, !dbg !158455

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !158456
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158457, !alias.scope !158415, !noalias !158416
  %i.ak = load i32, ptr %i.ag, align 4, !dbg !158458, !noalias !158404, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !158458     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !158459
  %i.an = load i32, ptr %i.am, align 4, !dbg !158459, !noalias !158404, !noundef !3509 ; 2 uses
  %i.ao = zext i32 %i.an to i64, !dbg !158459     ; 3 uses
  %i.ap = add nuw nsw i64 %i.ao, %i.al, !dbg !158460
  %.not13.i = icmp eq i32 %i.an, 0, !dbg !158461
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !158462

.lr.ph.i:                                         ; preds = %bb.g
  %i.aq = trunc nuw i128 %i.ae to i1
  br i1 %i.aq, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.ar = shl nuw nsw i64 %i.al, 4, !dbg !158462
  %scevgep.i = getelementptr i8, ptr %i.r, i64 %i.ar, !dbg !158462
  %i.as = shl nuw nsw i64 %i.ao, 4, !dbg !158462
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.as, i1 false), !dbg !158463, !noalias !158404
  %scevgep15.i = getelementptr i8, ptr %i.u, i64 %i.al, !dbg !158462
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.ao, i1 false), !dbg !158464, !noalias !158404
  br label %.loopexit.i.backedge, !dbg !158446

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %.lr.ph.split.preheader.i, %bb.g
  br label %.loopexit.i, !dbg !158444

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.at, %.lr.ph.split.us.i ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %i.at = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !158465 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.sroa.011.012.us.i, !dbg !158466
  store i128 %i.af, ptr %i.au, align 16, !dbg !158467, !noalias !158404
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.011.012.us.i, !dbg !158468
  store i8 1, ptr %i.av, align 1, !dbg !158469, !noalias !158404
  %i.aw = icmp samesign ult i64 %i.at, %i.ap, !dbg !158461
  br i1 %i.aw, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !158462

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !158470, !noalias !158404
  unreachable, !dbg !158470

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !158470

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs1_0B8_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158471, !noalias !158404
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !158429, !noalias !158404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !158429, !noalias !158404
  ret void, !dbg !158472
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158473 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !158653, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !158654, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !158654
  %.val1 = load i64, ptr %i.d, align 8, !dbg !158654, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158636), !dbg !158654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158655, !noalias !158636
  %i.e = load ptr, ptr %i.c, align 8, !dbg !158656, !alias.scope !158636, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !158657, !noalias !158636
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !158658
  %i.g = load ptr, ptr %i.f, align 8, !dbg !158658, !alias.scope !158636, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !158659
  %i.i = load i64, ptr %i.h, align 8, !dbg !158659, !noalias !158636, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !158660      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !158661
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !158661
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !158661, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !158662, !noalias !158636

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionaERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !158663, !noalias !158636

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !158664
  %i.m = load ptr, ptr %i.l, align 8, !dbg !158664, !noalias !158636, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !158665 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !158666
  %i.p = load ptr, ptr %i.o, align 8, !dbg !158666, !alias.scope !158636, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158667, !noalias !158636, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !158668
  %i.s = load ptr, ptr %i.r, align 8, !dbg !158668, !alias.scope !158636, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !158669, !noalias !158636, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158670, !noalias !158636
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !158671
  %i.v = load ptr, ptr %i.u, align 8, !dbg !158671, !noalias !158636, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !158672
  %i.x = load i64, ptr %i.w, align 8, !dbg !158672, !noalias !158636, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !158673
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !158674
  %i.aa = load i64, ptr %i.z, align 8, !dbg !158674, !noalias !158636, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !158675
  call void @llvm.experimental.noalias.scope.decl(metadata !158644), !dbg !158676
  call void @llvm.experimental.noalias.scope.decl(metadata !158645), !dbg !158677
  store i64 0, ptr %i.a, align 8, !dbg !158678, !alias.scope !158646, !noalias !158636
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !158678
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !158678, !alias.scope !158646, !noalias !158636
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !158678
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !158678, !alias.scope !158646, !noalias !158636
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !158678
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !158678, !alias.scope !158646, !noalias !158636
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !158678
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !158678, !alias.scope !158646, !noalias !158636
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !158678 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !158678, !alias.scope !158647, !noalias !158648
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !158678 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !158678, !alias.scope !158647, !noalias !158648
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !158678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !158678, !alias.scope !158647, !noalias !158648
  %i.af = invoke fastcc { i8, i8 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes8Int8TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityaINtNtB7_6copied6CopiedIB1x_aEENtNtB63_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !158679, !noalias !158636 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i8, i8 } %i.af, 0, !dbg !158680 ; 2 uses
  %.not.i10.i.i.i = icmp eq i8 %i.ag, 2, !dbg !158681
  br i1 %.not.i10.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !158682

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i8, i8 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i8 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i8, i8 } %.pn.i.i.i, 1, !dbg !158680 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !158683, !alias.scope !158649, !noalias !158650, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !158684, !alias.scope !158649, !noalias !158650, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !158685
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_0B8_.exit, label %bb.e, !dbg !158686

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !158687
  store ptr %i.am, ptr %i.ac, align 8, !dbg !158688, !alias.scope !158649, !noalias !158650
  %i.an = trunc nuw i8 %i.ah to i1, !dbg !158689
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !158690
  %i.ap = load i32, ptr %i.ao, align 4, !dbg !158690, !range !3606, !noalias !158651, !noundef !3509
  %i.aq = icmp eq i32 %i.ap, 1, !dbg !158691
  br i1 %i.aq, label %bb.g, label %bb.f, !dbg !158691

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aj, align 8, !dbg !158692, !noalias !158651, !noundef !3509
  br label %bb.g, !dbg !158693

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %bb.e ], !dbg !158694 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !158695
  %i.at = load i32, ptr %i.as, align 8, !dbg !158695, !noalias !158651, !noundef !3509 ; 2 uses
  %i.au = zext i32 %i.at to i64, !dbg !158695
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !158696
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 2, !dbg !158697 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !158697 ; 2 uses
  %i.aw = icmp eq i32 %i.at, 0, !dbg !158698
  br i1 %i.aw, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionaERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !158699

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  br i1 %i.an, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !158699 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !158699
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !158699
  %xtraiter = and i64 %i.az, 3, !dbg !158699      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !158699
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !158699

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !158700 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !158701, !noalias !158651, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !158701     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bc, !dbg !158702
  store i8 0, ptr %i.bd, align 1, !dbg !158703, !noalias !158651
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !158704
  store i8 0, ptr %i.be, align 1, !dbg !158705, !noalias !158651
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !158699 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !158699
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !158699, !llvm.loop !158631

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !158699
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionaERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !158699

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !158699 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !158699
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !158699
  %xtraiter9 = and i64 %i.bi, 3, !dbg !158699     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !158699
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !158699

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !158700 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !158701, !noalias !158651, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !158701     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bl, !dbg !158706
  store i8 %i.ai, ptr %i.bm, align 1, !dbg !158707, !noalias !158651
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !158708
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !158710, !noalias !158636
  unreachable, !dbg !158710

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !158710

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158711, !noalias !158636
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !158663, !noalias !158636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158663, !noalias !158636
  ret void, !dbg !158712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158713 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !158846, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !158847, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !158847
  %.val1 = load i64, ptr %i.d, align 8, !dbg !158847, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158834), !dbg !158847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !158848, !noalias !158834
  %i.e = load ptr, ptr %i.c, align 8, !dbg !158849, !alias.scope !158834, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !158850, !noalias !158834
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !158851
  %i.g = load ptr, ptr %i.f, align 8, !dbg !158851, !alias.scope !158834, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !158852      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !158853
  %i.j = load i64, ptr %i.i, align 8, !dbg !158853, !noalias !158834, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !158854
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !158854
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !158854, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !158855, !noalias !158834

.loopexit11.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !158856, !noalias !158834

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !158857
  %i.m = load ptr, ptr %i.l, align 8, !dbg !158857, !noalias !158834, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !158858 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !158859
  %i.p = load ptr, ptr %i.o, align 8, !dbg !158859, !alias.scope !158834, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !158860, !noalias !158834, !noundef !3509 ; 5 uses
  %i.r = ptrtoaddr ptr %i.q to i64, !dbg !158861
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !158861
  %i.t = load ptr, ptr %i.s, align 8, !dbg !158861, !alias.scope !158834, !nonnull !3509, !align !3639, !noundef !3509
  %i.u = load ptr, ptr %i.t, align 8, !dbg !158862, !noalias !158834, !noundef !3509 ; 5 uses
  %i.v = ptrtoaddr ptr %i.u to i64, !dbg !158863
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !158863
  %i.x = load ptr, ptr %i.w, align 8, !dbg !158863, !noalias !158834, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !158864
  %i.z = load i64, ptr %i.y, align 8, !dbg !158864, !noalias !158834, !noundef !3509
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.z, !dbg !158865
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !158866
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !158866, !noalias !158834, !noundef !3509
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !158867
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !158868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !158868, !noalias !158834
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !158869, !noalias !158834
  store i64 0, ptr %i.a, align 8, !dbg !158868, !noalias !158834
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !158868
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !158868
  store ptr %i.x, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !158868
  store ptr %i.aa, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !158868
  store i64 %i.ac, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !158868 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !158868 ; 2 uses
  store ptr %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158868, !noalias !158834
  %i.ae = sub i64 %i.r, %i.v
  %diff.check = icmp ugt i64 %i.ae, -32
  br label %.loopexit.i, !dbg !158870

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.af = invoke fastcc { i8, i8 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes8Int8TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityaINtNtB7_6copied6CopiedIB1x_aEENtNtB63_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit11.i, !dbg !158871, !noalias !158834 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ag = extractvalue { i8, i8 } %i.af, 0, !dbg !158872 ; 2 uses
  %i.ah = extractvalue { i8, i8 } %i.af, 1, !dbg !158872 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ag, 2, !dbg !158873
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs1_0B8_.exit, label %bb.e, !dbg !158874

bb.e:                                             ; preds = %.noexc.i
  %i.ai = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158875, !alias.scope !158843, !noalias !158844, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.aj = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !158876, !alias.scope !158843, !noalias !158844, !nonnull !3509, !noundef !3509
  %i.ak = icmp eq ptr %i.ai, %i.aj, !dbg !158877
  br i1 %i.ak, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs1_0B8_.exit, label %bb.f, !dbg !158878

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !158879
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !158880, !alias.scope !158843, !noalias !158844
  %i.am = load i32, ptr %i.ai, align 4, !dbg !158881, !noalias !158834, !noundef !3509
  %i.an = zext i32 %i.am to i64, !dbg !158881     ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !158882
  %i.ap = load i32, ptr %i.ao, align 4, !dbg !158882, !noalias !158834, !noundef !3509 ; 4 uses
  %i.aq = zext i32 %i.ap to i64, !dbg !158882     ; 8 uses
  %i.ar = add nuw nsw i64 %i.aq, %i.an, !dbg !158883
  %.not13.i = icmp eq i32 %i.ap, 0, !dbg !158884
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !158885

.lr.ph.i:                                         ; preds = %bb.f
  %i.as = trunc nuw i8 %i.ag to i1, !dbg !158886
  br i1 %i.as, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.ap, 8, !dbg !158885
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !158885
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check, !dbg !158885

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i32 %i.ap, 32, !dbg !158885
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !158885

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, 4294967264              ; 4 uses
  %i.au = add nuw nsw i64 %n.vec, %i.an
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !158885

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add nuw i64 %index, %i.an               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av, !dbg !158887 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !158888
  store <16 x i8> %broadcast.splat, ptr %i.aw, align 1, !dbg !158888, !noalias !158834
  store <16 x i8> %broadcast.splat, ptr %i.ax, align 1, !dbg !158888, !noalias !158834
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av, !dbg !158889 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !158890
  store <16 x i8> splat (i8 1), ptr %i.ay, align 1, !dbg !158890, !noalias !158834
  store <16 x i8> splat (i8 1), ptr %i.az, align 1, !dbg !158890, !noalias !158834
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec, !dbg !158885
  br i1 %i.ba, label %middle.block, label %vector.body, !dbg !158885, !llvm.loop !158826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq, !dbg !158885
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !158885

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !158871

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4679

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.aq, 4294967288             ; 3 uses
  %i.bb = add nuw nsw i64 %n.vec4, %i.an
  %broadcast.splatinsert5 = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %broadcast.splat6 = shufflevector <8 x i8> %broadcast.splatinsert5, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = add nuw i64 %index7, %i.an              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bc, !dbg !158887
  store <8 x i8> %broadcast.splat6, ptr %i.bd, align 1, !dbg !158888, !noalias !158834
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bc, !dbg !158889
  store <8 x i8> splat (i8 1), ptr %i.be, align 1, !dbg !158890, !noalias !158834
  %index.next8 = add nuw i64 %index7, 8           ; 2 uses
  %i.bf = icmp eq i64 %index.next8, %n.vec4, !dbg !158885
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !158885, !llvm.loop !158827

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %n.vec4, %i.aq, !dbg !158885
  br i1 %cmp.n9, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !158885

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !158885

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.an, !dbg !158885
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.aq, i1 false), !dbg !158891, !noalias !158834
  %scevgep15.i = getelementptr i8, ptr %i.u, i64 %i.an, !dbg !158885
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.aq, i1 false), !dbg !158892, !noalias !158834
  br label %.loopexit.i.backedge, !dbg !158871

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !158893 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !158887
  store i8 %i.ah, ptr %i.bh, align 1, !dbg !158888, !noalias !158834
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.011.012.us.i, !dbg !158889
  store i8 1, ptr %i.bi, align 1, !dbg !158890, !noalias !158834
  %i.bj = icmp samesign ult i64 %i.bg, %i.ar, !dbg !158884
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !158885, !llvm.loop !158833

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !158894, !noalias !158834
  unreachable, !dbg !158894

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !158894

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158895, !noalias !158834
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !158856, !noalias !158834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158856, !noalias !158834
  ret void, !dbg !158896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158897 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159077, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159078, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159078
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159078, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159060), !dbg !159078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159079, !noalias !159060
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159080, !alias.scope !159060, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159081, !noalias !159060
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159082
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159082, !alias.scope !159060, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !159083
  %i.i = load i64, ptr %i.h, align 8, !dbg !159083, !noalias !159060, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !159084      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !159085
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159085
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !159085, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !159086, !noalias !159060

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !159087, !noalias !159060

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !159088
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159088, !noalias !159060, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !159089 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159090
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159090, !alias.scope !159060, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159091, !noalias !159060, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159092
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159092, !alias.scope !159060, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159093, !noalias !159060, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159094, !noalias !159060
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159095
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159095, !noalias !159060, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159096
  %i.x = load i64, ptr %i.w, align 8, !dbg !159096, !noalias !159060, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159097
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159098
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159098, !noalias !159060, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !159099
  call void @llvm.experimental.noalias.scope.decl(metadata !159068), !dbg !159100
  call void @llvm.experimental.noalias.scope.decl(metadata !159069), !dbg !159101
  store i64 0, ptr %i.a, align 8, !dbg !159102, !alias.scope !159070, !noalias !159060
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159102
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !159102, !alias.scope !159070, !noalias !159060
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159102
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !159102, !alias.scope !159070, !noalias !159060
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159102
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !159102, !alias.scope !159070, !noalias !159060
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159102
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !159102, !alias.scope !159070, !noalias !159060
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159102 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !159102, !alias.scope !159071, !noalias !159072
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159102 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !159102, !alias.scope !159071, !noalias !159072
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !159102, !alias.scope !159071, !noalias !159072
  %i.af = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !159103, !noalias !159060 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i16, i16 } %i.af, 0, !dbg !159104 ; 2 uses
  %.not.i10.i.i.i = icmp eq i16 %i.ag, 2, !dbg !159105
  br i1 %.not.i10.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159106

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i16, i16 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i16 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i16, i16 } %.pn.i.i.i, 1, !dbg !159104 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !159107, !alias.scope !159073, !noalias !159074, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !159108, !alias.scope !159073, !noalias !159074, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !159109
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit, label %bb.e, !dbg !159110

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !159111
  store ptr %i.am, ptr %i.ac, align 8, !dbg !159112, !alias.scope !159073, !noalias !159074
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !159113
  %i.ao = load i32, ptr %i.an, align 4, !dbg !159113, !range !3606, !noalias !159075, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !159114
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !159114

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !159115, !noalias !159075, !noundef !3509
  br label %bb.g, !dbg !159116

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !159117 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !159118
  %i.as = load i32, ptr %i.ar, align 8, !dbg !159118, !noalias !159075, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !159118
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !159119
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !159120 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !159120 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !159121
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !159122

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i16 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159122 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !159122
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !159122
  %xtraiter = and i64 %i.az, 3, !dbg !159122      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !159122
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159122

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !159123 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !159124, !noalias !159075, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !159124     ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bc, !dbg !159125
  store i16 0, ptr %i.bd, align 2, !dbg !159126, !noalias !159075
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !159127
  store i8 0, ptr %i.be, align 1, !dbg !159128, !noalias !159075
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !159122 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !159122
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159122, !llvm.loop !159055

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !159122
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159122

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159122 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !159122
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !159122
  %xtraiter9 = and i64 %i.bi, 3, !dbg !159122     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !159122
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !159122

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !159123 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !159124, !noalias !159075, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !159124     ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bl, !dbg !159129
  store i16 %i.ai, ptr %i.bm, align 2, !dbg !159130, !noalias !159075
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !159131
  store i8 1, ptr %i.bn, align 1, !dbg !159132, !noalias !159075
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !159122 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !159122
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159087, !noalias !159060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159087, !noalias !159060
  ret void, !dbg !159135
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159136 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159275, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159276, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159276
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159276, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159260), !dbg !159276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159277, !noalias !159260
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159278, !alias.scope !159260, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159279, !noalias !159260
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159280
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159280, !alias.scope !159260, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !159281      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !159282
  %i.j = load i64, ptr %i.i, align 8, !dbg !159282, !noalias !159260, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !159283
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159283
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !159283, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !159284, !noalias !159260

.loopexit11.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !159285, !noalias !159260

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !159286
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159286, !noalias !159260, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !159287 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159288
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159288, !alias.scope !159260, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159289, !noalias !159260, !noundef !3509 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159290
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159290, !alias.scope !159260, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159291, !noalias !159260, !noundef !3509 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159292
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159292, !noalias !159260, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159293
  %i.x = load i64, ptr %i.w, align 8, !dbg !159293, !noalias !159260, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159294
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159295
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159295, !noalias !159260, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !159296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159297, !noalias !159260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !159298, !noalias !159260
  store i64 0, ptr %i.a, align 8, !dbg !159297, !noalias !159260
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159297
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159297
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159297
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159297
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159297 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159297 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159297, !noalias !159260
  br label %.loopexit.i, !dbg !159299

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit11.i, !dbg !159300, !noalias !159260 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !159301 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !159301 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !159302
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit, label %bb.e, !dbg !159303

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159304, !alias.scope !159269, !noalias !159270, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159305, !alias.scope !159269, !noalias !159270, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !159306
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit, label %bb.f, !dbg !159307

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !159308
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159309, !alias.scope !159269, !noalias !159270
  %i.aj = load i32, ptr %i.af, align 4, !dbg !159310, !noalias !159260, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !159310     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !159311
  %i.am = load i32, ptr %i.al, align 4, !dbg !159311, !noalias !159260, !noundef !3509 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !159311     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !159312 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !159313
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !159314

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !159314
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !159314

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !159314
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !159314
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !159314
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !159314
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159314
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !159314
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !159314
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !159314
  %found.conflict = and i1 %bound0, %bound1, !dbg !159314
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i32 %i.am, 16, !dbg !159314
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !159314

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !159314

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !159315 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !159316
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !159316, !alias.scope !159272, !noalias !159273
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !159316, !alias.scope !159272, !noalias !159273
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !159317 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !159318
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  store <8 x i8> splat (i8 1), ptr %i.ay, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec, !dbg !159314
  br i1 %i.az, label %middle.block, label %vector.body, !dbg !159314, !llvm.loop !159252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !159314
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !159314

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !159300

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.an, 4294967292             ; 3 uses
  %i.ba = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bb, !dbg !159315
  store <4 x i16> %broadcast.splat10, ptr %i.bc, align 2, !dbg !159316, !alias.scope !159272, !noalias !159273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bb, !dbg !159317
  store <4 x i8> splat (i8 1), ptr %i.bd, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next12, %n.vec8, !dbg !159314
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !159314, !llvm.loop !159253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !159314
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !159314

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !159314

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bf = shl nuw nsw i64 %i.ak, 1, !dbg !159314
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.bf, !dbg !159314
  %i.bg = shl nuw nsw i64 %i.an, 1, !dbg !159314
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bg, i1 false), !dbg !159319, !noalias !159260
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159314
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !159320, !noalias !159260
  br label %.loopexit.i.backedge, !dbg !159300

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bh, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !159321 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !159315
  store i16 %i.ae, ptr %i.bi, align 2, !dbg !159316, !noalias !159260
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !159317
  store i8 1, ptr %i.bj, align 1, !dbg !159318, !noalias !159260
  %i.bk = icmp samesign ult i64 %i.bh, %i.ao, !dbg !159313
  br i1 %i.bk, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !159314, !llvm.loop !159259

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !159322, !noalias !159260
  unreachable, !dbg !159322

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !159322

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159323, !noalias !159260
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159285, !noalias !159260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159285, !noalias !159260
  ret void, !dbg !159324
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159325 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159505, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159506, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159506
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159506, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159488), !dbg !159506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159507, !noalias !159488
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159508, !alias.scope !159488, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159509, !noalias !159488
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159510
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159510, !alias.scope !159488, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !159511
  %i.i = load i64, ptr %i.h, align 8, !dbg !159511, !noalias !159488, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !159512      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !159513
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159513
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !159513, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !159514, !noalias !159488

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !159515, !noalias !159488

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !159516
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159516, !noalias !159488, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !159517 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159518
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159518, !alias.scope !159488, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159519, !noalias !159488, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159520
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159520, !alias.scope !159488, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159521, !noalias !159488, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159522, !noalias !159488
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159523
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159523, !noalias !159488, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159524
  %i.x = load i64, ptr %i.w, align 8, !dbg !159524, !noalias !159488, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159525
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159526
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159526, !noalias !159488, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !159527
  call void @llvm.experimental.noalias.scope.decl(metadata !159496), !dbg !159528
  call void @llvm.experimental.noalias.scope.decl(metadata !159497), !dbg !159529
  store i64 0, ptr %i.a, align 8, !dbg !159530, !alias.scope !159498, !noalias !159488
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159530
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !159530, !alias.scope !159498, !noalias !159488
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159530
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !159530, !alias.scope !159498, !noalias !159488
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159530
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !159530, !alias.scope !159498, !noalias !159488
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159530
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !159530, !alias.scope !159498, !noalias !159488
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159530 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !159530, !alias.scope !159499, !noalias !159500
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159530 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !159530, !alias.scope !159499, !noalias !159500
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159530
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !159530, !alias.scope !159499, !noalias !159500
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditylINtNtB7_6copied6CopiedIB1x_lEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !159531, !noalias !159488 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i32, i32 } %i.af, 0, !dbg !159532 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !159533
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159534

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, i32 } %.pn.i.i.i, 1, !dbg !159532 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !159535, !alias.scope !159501, !noalias !159502, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !159536, !alias.scope !159501, !noalias !159502, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !159537
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit, label %bb.e, !dbg !159538

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !159539
  store ptr %i.am, ptr %i.ac, align 8, !dbg !159540, !alias.scope !159501, !noalias !159502
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !159541
  %i.ao = load i32, ptr %i.an, align 4, !dbg !159541, !range !3606, !noalias !159503, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !159542
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !159542

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !159543, !noalias !159503, !noundef !3509
  br label %bb.g, !dbg !159544

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !159545 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !159546
  %i.as = load i32, ptr %i.ar, align 8, !dbg !159546, !noalias !159503, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !159546
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !159547
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !159548 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !159548 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !159549
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !159550

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159550 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !159550
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !159550
  %xtraiter = and i64 %i.az, 3, !dbg !159550      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !159550
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159550

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !159551 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !159552, !noalias !159503, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !159552     ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bc, !dbg !159553
  store i32 0, ptr %i.bd, align 4, !dbg !159554, !noalias !159503
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !159555
  store i8 0, ptr %i.be, align 1, !dbg !159556, !noalias !159503
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !159550 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !159550
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159550, !llvm.loop !159483

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !159550
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159550

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159550 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !159550
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !159550
  %xtraiter9 = and i64 %i.bi, 3, !dbg !159550     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !159550
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !159550

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !159551 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !159552, !noalias !159503, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !159552     ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl, !dbg !159557
  store i32 %i.ai, ptr %i.bm, align 4, !dbg !159558, !noalias !159503
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !159559
  store i8 1, ptr %i.bn, align 1, !dbg !159560, !noalias !159503
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !159550 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !159550
end_hunk_9
begin_hunk_10_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.da = load i32, ptr %i.cu, align 4, !dbg !159552, !noalias !159503, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !159552     ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.db, !dbg !159553
  store i32 0, ptr %i.dc, align 4, !dbg !159554, !noalias !159503
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !159555
  store i8 0, ptr %i.dd, align 1, !dbg !159556, !noalias !159503
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !159549
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159550

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditylINtNtB7_6copied6CopiedIB1x_lEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !159531, !noalias !159488 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !159532 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dg, 2, !dbg !159533
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159534

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !159561, !noalias !159488
  unreachable, !dbg !159561

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !159561

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159562, !noalias !159488
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159515, !noalias !159488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159515, !noalias !159488
  ret void, !dbg !159563
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159564 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159702, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159703, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159703
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159703, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159687), !dbg !159703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159704, !noalias !159687
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159705, !alias.scope !159687, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159706, !noalias !159687
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159707
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159707, !alias.scope !159687, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !159708      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !159709
  %i.j = load i64, ptr %i.i, align 8, !dbg !159709, !noalias !159687, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !159710
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159710
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !159710, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !159711, !noalias !159687

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !159712, !noalias !159687

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !159713
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159713, !noalias !159687, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !159714 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159715
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159715, !alias.scope !159687, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159716, !noalias !159687, !noundef !3509 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159717
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159717, !alias.scope !159687, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159718, !noalias !159687, !noundef !3509 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159719
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159719, !noalias !159687, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159720
  %i.x = load i64, ptr %i.w, align 8, !dbg !159720, !noalias !159687, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159721
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159722
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159722, !noalias !159687, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !159723
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159724, !noalias !159687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !159725, !noalias !159687
  store i64 0, ptr %i.a, align 8, !dbg !159724, !noalias !159687
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159724
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159724
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159724
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159724
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159724 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159724 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159724, !noalias !159687
  br label %.loopexit.i, !dbg !159726

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditylINtNtB7_6copied6CopiedIB1x_lEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !159727, !noalias !159687 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i32, i32 } %i.ac, 0, !dbg !159728 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ac, 1, !dbg !159728 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 2, !dbg !159729
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs1_0B8_.exit, label %bb.e, !dbg !159730

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159731, !alias.scope !159696, !noalias !159697, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159732, !alias.scope !159696, !noalias !159697, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !159733
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs1_0B8_.exit, label %bb.f, !dbg !159734

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !159735
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159736, !alias.scope !159696, !noalias !159697
  %i.aj = load i32, ptr %i.af, align 4, !dbg !159737, !noalias !159687, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !159737     ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !159738
  %i.am = load i32, ptr %i.al, align 4, !dbg !159738, !noalias !159687, !noundef !3509 ; 3 uses
  %i.an = zext i32 %i.am to i64, !dbg !159738     ; 5 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !159739 ; 3 uses
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !159740
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !159741

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc i32 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 8, !dbg !159741
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader6, label %vector.memcheck, !dbg !159741

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %i.aq = shl nuw nsw i64 %i.ak, 2, !dbg !159741
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !159741
  %i.ar = shl nuw nsw i64 %i.ao, 2, !dbg !159741
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !159741
  %scevgep4 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159741
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !159741
  %bound0 = icmp ult ptr %scevgep, %scevgep5, !dbg !159741
  %bound1 = icmp ult ptr %scevgep4, %scevgep3, !dbg !159741
  %found.conflict = and i1 %bound0, %bound1, !dbg !159741
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4294967288              ; 3 uses
  %i.as = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %index, %i.ak               ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.at, !dbg !159742 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !159743
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4, !dbg !159743, !alias.scope !159699, !noalias !159700
  store <4 x i32> %broadcast.splat, ptr %i.av, align 4, !dbg !159743, !alias.scope !159699, !noalias !159700
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.at, !dbg !159744 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4, !dbg !159745
  store <4 x i8> splat (i8 1), ptr %i.aw, align 1, !dbg !159745, !alias.scope !159701, !noalias !159687
  store <4 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !159745, !alias.scope !159701, !noalias !159687
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !159741
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !159741, !llvm.loop !159680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !159741
  br i1 %cmp.n, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader6, !dbg !159741

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !159727

.lr.ph.split.us.i.preheader6:                     ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %.sroa.011.011.us.i.ph = phi i64 [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.split.us.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.split.us.i, !dbg !159741

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.az = shl nuw nsw i64 %i.ak, 2, !dbg !159741
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.az, !dbg !159741
  %i.ba = shl nuw nsw i64 %i.an, 2, !dbg !159741
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ba, i1 false), !dbg !159746, !noalias !159687
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159741
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !159747, !noalias !159687
  br label %.loopexit.i.backedge, !dbg !159727

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader6, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.bb, %.lr.ph.split.us.i ], [ %.sroa.011.011.us.i.ph, %.lr.ph.split.us.i.preheader6 ] ; 3 uses
  %i.bb = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !159748 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !159742
  store i32 %i.ae, ptr %i.bc, align 4, !dbg !159743, !noalias !159687
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !159744
  store i8 1, ptr %i.bd, align 1, !dbg !159745, !noalias !159687
  %i.be = icmp samesign ult i64 %i.bb, %i.ao, !dbg !159740
  br i1 %i.be, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !159741, !llvm.loop !159686

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !159749, !noalias !159687
  unreachable, !dbg !159749

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !159749

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159750, !noalias !159687
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159712, !noalias !159687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159712, !noalias !159687
  ret void, !dbg !159751
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159752 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159932, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159933, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159933
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159933, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159915), !dbg !159933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159934, !noalias !159915
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159935, !alias.scope !159915, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159936, !noalias !159915
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159937
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159937, !alias.scope !159915, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !159938
  %i.i = load i64, ptr %i.h, align 8, !dbg !159938, !noalias !159915, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !159939      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !159940
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159940
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !159940, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !159941, !noalias !159915

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !159942, !noalias !159915

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !159943
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159943, !noalias !159915, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !159944 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159945
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159945, !alias.scope !159915, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159946, !noalias !159915, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159947
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159947, !alias.scope !159915, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159948, !noalias !159915, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159949, !noalias !159915
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159950
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159950, !noalias !159915, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159951
  %i.x = load i64, ptr %i.w, align 8, !dbg !159951, !noalias !159915, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159952
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159953
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159953, !noalias !159915, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !159954
  call void @llvm.experimental.noalias.scope.decl(metadata !159923), !dbg !159955
  call void @llvm.experimental.noalias.scope.decl(metadata !159924), !dbg !159956
  store i64 0, ptr %i.a, align 8, !dbg !159957, !alias.scope !159925, !noalias !159915
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159957
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !159957, !alias.scope !159925, !noalias !159915
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159957
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !159957, !alias.scope !159925, !noalias !159915
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159957
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !159957, !alias.scope !159925, !noalias !159915
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159957
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !159957, !alias.scope !159925, !noalias !159915
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159957 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !159957, !alias.scope !159926, !noalias !159927
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159957 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !159957, !alias.scope !159926, !noalias !159927
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159957
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !159957, !alias.scope !159926, !noalias !159927
  %i.af = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityxINtNtB7_6copied6CopiedIB1x_xEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !159958, !noalias !159915 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i64, i64 } %i.af, 0, !dbg !159959 ; 2 uses
  %.not.i8.i.i.i = icmp eq i64 %i.ag, 2, !dbg !159960
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159961

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i64, i64 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i64 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i64, i64 } %.pn.i.i.i, 1, !dbg !159959 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !159962, !alias.scope !159928, !noalias !159929, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !159963, !alias.scope !159928, !noalias !159929, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !159964
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0B8_.exit, label %bb.e, !dbg !159965

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !159966
  store ptr %i.am, ptr %i.ac, align 8, !dbg !159967, !alias.scope !159928, !noalias !159929
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !159968
  %i.ao = load i32, ptr %i.an, align 4, !dbg !159968, !range !3606, !noalias !159930, !noundef !3509
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !159969
  br i1 %i.ap, label %bb.g, label %bb.f, !dbg !159969

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !159970, !noalias !159930, !noundef !3509
  br label %bb.g, !dbg !159971

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %bb.e ], !dbg !159972 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !159973
  %i.as = load i32, ptr %i.ar, align 8, !dbg !159973, !noalias !159930, !noundef !3509 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !159973
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !159974
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !159975 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !159975 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !159976
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !159977

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.aw = trunc nuw i64 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159977 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !159977
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !159977
  %xtraiter = and i64 %i.az, 3, !dbg !159977      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !159977
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159977

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !159978 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !159979     ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bc, !dbg !159980
  store i64 0, ptr %i.bd, align 8, !dbg !159981, !noalias !159930
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !159982
  store i8 0, ptr %i.be, align 1, !dbg !159983, !noalias !159930
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !159977 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !159977
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159977, !llvm.loop !159910

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !159977
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159977

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159977 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !159977
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !159977
  %xtraiter9 = and i64 %i.bi, 3, !dbg !159977     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !159977
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !159977

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !159978 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !159979     ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl, !dbg !159984
  store i64 %i.ai, ptr %i.bm, align 8, !dbg !159985, !noalias !159930
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !159986
  store i8 1, ptr %i.bn, align 1, !dbg !159987, !noalias !159930
  %prol.iter11.next = add i64 %prol.iter11, 1, !dbg !159977 ; 2 uses
  %prol.iter11.cmp.not = icmp eq i64 %prol.iter11.next, %xtraiter9, !dbg !159977
end_hunk_10
begin_hunk_11_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i8 1, ptr %i.bt, align 1, !dbg !159987, !noalias !159930
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 8, !dbg !159978
  %i.bv = load i32, ptr %i.bp, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.bw = zext i32 %i.bv to i64, !dbg !159979     ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bw, !dbg !159984
  store i64 %i.ai, ptr %i.bx, align 8, !dbg !159985, !noalias !159930
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bw, !dbg !159986
  store i8 1, ptr %i.by, align 1, !dbg !159987, !noalias !159930
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 12, !dbg !159978
  %i.ca = load i32, ptr %i.bu, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.cb = zext i32 %i.ca to i64, !dbg !159979     ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cb, !dbg !159984
  store i64 %i.ai, ptr %i.cc, align 8, !dbg !159985, !noalias !159930
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cb, !dbg !159986
  store i8 1, ptr %i.cd, align 1, !dbg !159987, !noalias !159930
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i, i64 16, !dbg !159978 ; 2 uses
  %i.cf = load i32, ptr %i.bz, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.cg = zext i32 %i.cf to i64, !dbg !159979     ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cg, !dbg !159984
  store i64 %i.ai, ptr %i.ch, align 8, !dbg !159985, !noalias !159930
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cg, !dbg !159986
  store i8 1, ptr %i.ci, align 1, !dbg !159987, !noalias !159930
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !159976
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !159977

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !159978
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.cm = zext i32 %i.cl to i64, !dbg !159979     ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cm, !dbg !159980
  store i64 0, ptr %i.cn, align 8, !dbg !159981, !noalias !159930
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !159982
  store i8 0, ptr %i.co, align 1, !dbg !159983, !noalias !159930
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !159978
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !159979     ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cr, !dbg !159980
  store i64 0, ptr %i.cs, align 8, !dbg !159981, !noalias !159930
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !159982
  store i8 0, ptr %i.ct, align 1, !dbg !159983, !noalias !159930
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !159978
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !159979     ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cw, !dbg !159980
  store i64 0, ptr %i.cx, align 8, !dbg !159981, !noalias !159930
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !159982
  store i8 0, ptr %i.cy, align 1, !dbg !159983, !noalias !159930
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !159978 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !159979, !noalias !159930, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !159979     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.db, !dbg !159980
  store i64 0, ptr %i.dc, align 8, !dbg !159981, !noalias !159930
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !159982
  store i8 0, ptr %i.dd, align 1, !dbg !159983, !noalias !159930
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !159976
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159977

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityxINtNtB7_6copied6CopiedIB1x_xEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !159958, !noalias !159915 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionxERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !159959 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dg, 2, !dbg !159960
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159961

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !159988, !noalias !159915
  unreachable, !dbg !159988

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !159988

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159989, !noalias !159915
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159942, !noalias !159915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159942, !noalias !159915
  ret void, !dbg !159990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159991 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !160121, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !160122, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160122
  %.val1 = load i64, ptr %i.d, align 8, !dbg !160122, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160109), !dbg !160122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160123, !noalias !160109
  %i.e = load ptr, ptr %i.c, align 8, !dbg !160124, !alias.scope !160109, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int64TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !160125, !noalias !160109
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !160126
  %i.g = load ptr, ptr %i.f, align 8, !dbg !160126, !alias.scope !160109, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !160127      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !160128
  %i.j = load i64, ptr %i.i, align 8, !dbg !160128, !noalias !160109, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !160129
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !160129
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !160129, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !160130, !noalias !160109

.loopexit10.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit10.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !160131, !noalias !160109

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !160132
  %i.m = load ptr, ptr %i.l, align 8, !dbg !160132, !noalias !160109, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !160133 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !160134
  %i.p = load ptr, ptr %i.o, align 8, !dbg !160134, !alias.scope !160109, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !160135, !noalias !160109, !noundef !3509 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !160136
  %i.s = load ptr, ptr %i.r, align 8, !dbg !160136, !alias.scope !160109, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !160137, !noalias !160109, !noundef !3509 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !160138
  %i.v = load ptr, ptr %i.u, align 8, !dbg !160138, !noalias !160109, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !160139
  %i.x = load i64, ptr %i.w, align 8, !dbg !160139, !noalias !160109, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !160140
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !160141
  %i.aa = load i64, ptr %i.z, align 8, !dbg !160141, !noalias !160109, !noundef !3509
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !160142
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !160143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160143, !noalias !160109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !160144, !noalias !160109
  store i64 0, ptr %i.a, align 8, !dbg !160143, !noalias !160109
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !160143
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !160143
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !160143
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !160143
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !160143 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !160143 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !160143, !noalias !160109
  br label %.loopexit.i, !dbg !160145

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.ac = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int64TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityxINtNtB7_6copied6CopiedIB1x_xEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit10.i, !dbg !160146, !noalias !160109 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i64, i64 } %i.ac, 0, !dbg !160147 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1, !dbg !160147
  %.not.i.i = icmp eq i64 %i.ad, 2, !dbg !160148
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs1_0B8_.exit, label %bb.e, !dbg !160149

bb.e:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160150, !alias.scope !160118, !noalias !160119, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !160151, !alias.scope !160118, !noalias !160119, !nonnull !3509, !noundef !3509
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !160152
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs1_0B8_.exit, label %bb.f, !dbg !160153

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !160154
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160155, !alias.scope !160118, !noalias !160119
  %i.aj = load i32, ptr %i.af, align 4, !dbg !160156, !noalias !160109, !noundef !3509
  %i.ak = zext i32 %i.aj to i64, !dbg !160156     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !160157
  %i.am = load i32, ptr %i.al, align 4, !dbg !160157, !noalias !160109, !noundef !3509 ; 2 uses
  %i.an = zext i32 %i.am to i64, !dbg !160157     ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !160158
  %.not12.i = icmp eq i32 %i.am, 0, !dbg !160159
  br i1 %.not12.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !160160

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = trunc nuw i64 %i.ad to i1
  br i1 %i.ap, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.aq = shl nuw nsw i64 %i.ak, 3, !dbg !160160
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !160160
  %i.ar = shl nuw nsw i64 %i.an, 3, !dbg !160160
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ar, i1 false), !dbg !160161, !noalias !160109
  %scevgep14.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !160160
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep14.i, i8 0, i64 %i.an, i1 false), !dbg !160162, !noalias !160109
  br label %.loopexit.i.backedge, !dbg !160146

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !160146

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.sroa.011.011.us.i = phi i64 [ %i.as, %.lr.ph.split.us.i ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.011.011.us.i, 1, !dbg !160163 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.011.011.us.i, !dbg !160164
  store i64 %i.ae, ptr %i.at, align 8, !dbg !160165, !noalias !160109
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.011.us.i, !dbg !160166
  store i8 1, ptr %i.au, align 1, !dbg !160167, !noalias !160109
  %i.av = icmp samesign ult i64 %i.as, %i.ao, !dbg !160159
  br i1 %i.av, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !160160

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !160168, !noalias !160109
  unreachable, !dbg !160168

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !160168

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160169, !noalias !160109
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !160131, !noalias !160109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160131, !noalias !160109
  ret void, !dbg !160170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160171 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !160351, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !160352, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160352
  %.val1 = load i64, ptr %i.d, align 8, !dbg !160352, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160334), !dbg !160352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160353, !noalias !160334
  %i.e = load ptr, ptr %i.c, align 8, !dbg !160354, !alias.scope !160334, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !160355, !noalias !160334
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !160356
  %i.g = load ptr, ptr %i.f, align 8, !dbg !160356, !alias.scope !160334, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !160357
  %i.i = load i64, ptr %i.h, align 8, !dbg !160357, !noalias !160334, !noundef !3509 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !160358      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !160359
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !160359
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !160359, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #57
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !160360, !noalias !160334

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionhERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_00E0B2G_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.j unwind label %bb.i, !dbg !160361, !noalias !160334

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !160362
  %i.m = load ptr, ptr %i.l, align 8, !dbg !160362, !noalias !160334, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !160363 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !160364
  %i.p = load ptr, ptr %i.o, align 8, !dbg !160364, !alias.scope !160334, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !160365, !noalias !160334, !noundef !3509 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !160366
  %i.s = load ptr, ptr %i.r, align 8, !dbg !160366, !alias.scope !160334, !nonnull !3509, !align !3639, !noundef !3509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !160367, !noalias !160334, !noundef !3509 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160368, !noalias !160334
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !160369
  %i.v = load ptr, ptr %i.u, align 8, !dbg !160369, !noalias !160334, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !160370
  %i.x = load i64, ptr %i.w, align 8, !dbg !160370, !noalias !160334, !noundef !3509
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !160371
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !160372
  %i.aa = load i64, ptr %i.z, align 8, !dbg !160372, !noalias !160334, !noundef !3509
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !160373
  call void @llvm.experimental.noalias.scope.decl(metadata !160342), !dbg !160374
  call void @llvm.experimental.noalias.scope.decl(metadata !160343), !dbg !160375
  store i64 0, ptr %i.a, align 8, !dbg !160376, !alias.scope !160344, !noalias !160334
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !160376
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !160376, !alias.scope !160344, !noalias !160334
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !160376
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !160376, !alias.scope !160344, !noalias !160334
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !160376
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !160376, !alias.scope !160344, !noalias !160334
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !160376
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !160376, !alias.scope !160344, !noalias !160334
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !160376 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !160376, !alias.scope !160345, !noalias !160346
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !160376 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !160376, !alias.scope !160345, !noalias !160346
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !160376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !160376, !alias.scope !160345, !noalias !160346
  %i.af = invoke fastcc { i8, i8 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9UInt8TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityhINtNtB7_6copied6CopiedIB1x_hEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !160377, !noalias !160334 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ag = extractvalue { i8, i8 } %i.af, 0, !dbg !160378 ; 2 uses
  %.not.i10.i.i.i = icmp eq i8 %i.ag, 2, !dbg !160379
  br i1 %.not.i10.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !160380

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i8, i8 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i8 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i8, i8 } %.pn.i.i.i, 1, !dbg !160378 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !160381, !alias.scope !160347, !noalias !160348, !nonnull !3509, !noundef !3509 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !160382, !alias.scope !160347, !noalias !160348, !nonnull !3509, !noundef !3509
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !160383
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_0B8_.exit, label %bb.e, !dbg !160384

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !160385
  store ptr %i.am, ptr %i.ac, align 8, !dbg !160386, !alias.scope !160347, !noalias !160348
  %i.an = trunc nuw i8 %i.ah to i1, !dbg !160387
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !160388
  %i.ap = load i32, ptr %i.ao, align 4, !dbg !160388, !range !3606, !noalias !160349, !noundef !3509
  %i.aq = icmp eq i32 %i.ap, 1, !dbg !160389
  br i1 %i.aq, label %bb.g, label %bb.f, !dbg !160389

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aj, align 8, !dbg !160390, !noalias !160349, !noundef !3509
  br label %bb.g, !dbg !160391

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %bb.e ], !dbg !160392 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !160393
  %i.at = load i32, ptr %i.as, align 8, !dbg !160393, !noalias !160349, !noundef !3509 ; 2 uses
  %i.au = zext i32 %i.at to i64, !dbg !160393
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !160394
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 2, !dbg !160395 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !160395 ; 2 uses
  %i.aw = icmp eq i32 %i.at, 0, !dbg !160396
  br i1 %i.aw, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionhERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !160397

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  br i1 %i.an, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !160397 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !160397
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !160397
  %xtraiter = and i64 %i.az, 3, !dbg !160397      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !160397
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !160397

.lr.ph.split.i.i.i.i.i.prol:                      ; preds = %.lr.ph.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i.prol
  %.sroa.02.01.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.prol, i64 4, !dbg !160398 ; 2 uses
  %i.bb = load i32, ptr %.sroa.02.01.i.i.i.i.i.prol, align 4, !dbg !160399, !noalias !160349, !noundef !3509
  %i.bc = zext i32 %i.bb to i64, !dbg !160399     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bc, !dbg !160400
  store i8 0, ptr %i.bd, align 1, !dbg !160401, !noalias !160349
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bc, !dbg !160402
  store i8 0, ptr %i.be, align 1, !dbg !160403, !noalias !160349
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !160397 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !160397
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !160397, !llvm.loop !160329

.lr.ph.split.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.split.i.i.i.i.i.prol, %.lr.ph.split.i.i.i.i.i.preheader
  %.sroa.02.01.i.i.i.i.i.unr = phi ptr [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.split.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.ax, 12, !dbg !160397
  br i1 %i.bf, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionhERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !160397

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !160397 ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2, !dbg !160397
  %i.bi = add nuw nsw i64 %i.bh, 1, !dbg !160397
  %xtraiter9 = and i64 %i.bi, 3, !dbg !160397     ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0, !dbg !160397
  br i1 %lcmp.mod10.not, label %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.i.i.prol, !dbg !160397

.lr.ph.split.us.i.i.i.i.i.prol:                   ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i.prol
  %.sroa.02.01.us.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i.prol ], [ %.sroa.04.0.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter11 = phi i64 [ %prol.iter11.next, %.lr.ph.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.us.i.i.i.i.i.prol, i64 4, !dbg !160398 ; 2 uses
  %i.bk = load i32, ptr %.sroa.02.01.us.i.i.i.i.i.prol, align 4, !dbg !160399, !noalias !160349, !noundef !3509
  %i.bl = zext i32 %i.bk to i64, !dbg !160399     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bl, !dbg !160404
  store i8 %i.ai, ptr %i.bm, align 1, !dbg !160405, !noalias !160349
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bl, !dbg !160406
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !160408, !noalias !160334
  unreachable, !dbg !160408

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !160408

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160409, !noalias !160334
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !160361, !noalias !160334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160361, !noalias !160334
  ret void, !dbg !160410
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160411 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !160544, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !160545, !noundef !3509 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160545
  %.val1 = load i64, ptr %i.d, align 8, !dbg !160545, !noundef !3509 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160532), !dbg !160545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160546, !noalias !160532
  %i.e = load ptr, ptr %i.c, align 8, !dbg !160547, !alias.scope !160532, !nonnull !3509, !align !3639, !noundef !3509
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !160548, !noalias !160532
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !160549
  %i.g = load ptr, ptr %i.f, align 8, !dbg !160549, !alias.scope !160532, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !160550      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !160551
  %i.j = load i64, ptr %i.i, align 8, !dbg !160551, !noalias !160532, !noundef !3509 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !160552
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !160552
  br i1 %or.cond.i, label %bb.b, label %bb.d, !dbg !160552, !prof !3971

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #57
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !160553, !noalias !160532

.loopexit11.i:                                    ; preds = %.loopexit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54
          to label %bb.i unwind label %bb.h, !dbg !160554, !noalias !160532

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !160555
  %i.m = load ptr, ptr %i.l, align 8, !dbg !160555, !noalias !160532, !nonnull !3509, !noundef !3509
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !160556 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !160557
  %i.p = load ptr, ptr %i.o, align 8, !dbg !160557, !alias.scope !160532, !nonnull !3509, !align !3639, !noundef !3509
  %i.q = load ptr, ptr %i.p, align 8, !dbg !160558, !noalias !160532, !noundef !3509 ; 5 uses
  %i.r = ptrtoaddr ptr %i.q to i64, !dbg !160559
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !160559
  %i.t = load ptr, ptr %i.s, align 8, !dbg !160559, !alias.scope !160532, !nonnull !3509, !align !3639, !noundef !3509
  %i.u = load ptr, ptr %i.t, align 8, !dbg !160560, !noalias !160532, !noundef !3509 ; 5 uses
  %i.v = ptrtoaddr ptr %i.u to i64, !dbg !160561
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !160561
  %i.x = load ptr, ptr %i.w, align 8, !dbg !160561, !noalias !160532, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !160562
  %i.z = load i64, ptr %i.y, align 8, !dbg !160562, !noalias !160532, !noundef !3509
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.z, !dbg !160563
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !160564
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !160564, !noalias !160532, !noundef !3509
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !160565
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !160566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160566, !noalias !160532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !160567, !noalias !160532
  store i64 0, ptr %i.a, align 8, !dbg !160566, !noalias !160532
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !160566
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !160566
  store ptr %i.x, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !160566
  store ptr %i.aa, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !160566
  store i64 %i.ac, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !160566 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !160566 ; 2 uses
  store ptr %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !160566, !noalias !160532
  %i.ae = sub i64 %i.r, %i.v
  %diff.check = icmp ugt i64 %i.ae, -32
  br label %.loopexit.i, !dbg !160568

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.d
  %i.af = invoke fastcc { i8, i8 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9UInt8TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityhINtNtB7_6copied6CopiedIB1x_hEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #58
          to label %.noexc.i unwind label %.loopexit11.i, !dbg !160569, !noalias !160532 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ag = extractvalue { i8, i8 } %i.af, 0, !dbg !160570 ; 2 uses
  %i.ah = extractvalue { i8, i8 } %i.af, 1, !dbg !160570 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ag, 2, !dbg !160571
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs1_0B8_.exit, label %bb.e, !dbg !160572

bb.e:                                             ; preds = %.noexc.i
  %i.ai = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160573, !alias.scope !160541, !noalias !160542, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.aj = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !160574, !alias.scope !160541, !noalias !160542, !nonnull !3509, !noundef !3509
  %i.ak = icmp eq ptr %i.ai, %i.aj, !dbg !160575
  br i1 %i.ak, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs1_0B8_.exit, label %bb.f, !dbg !160576

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !160577
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !160578, !alias.scope !160541, !noalias !160542
  %i.am = load i32, ptr %i.ai, align 4, !dbg !160579, !noalias !160532, !noundef !3509
  %i.an = zext i32 %i.am to i64, !dbg !160579     ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !160580
  %i.ap = load i32, ptr %i.ao, align 4, !dbg !160580, !noalias !160532, !noundef !3509 ; 4 uses
  %i.aq = zext i32 %i.ap to i64, !dbg !160580     ; 8 uses
  %i.ar = add nuw nsw i64 %i.aq, %i.an, !dbg !160581
  %.not13.i = icmp eq i32 %i.ap, 0, !dbg !160582
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !160583

.lr.ph.i:                                         ; preds = %bb.f
  %i.as = trunc nuw i8 %i.ag to i1, !dbg !160584
  br i1 %i.as, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.ap, 8, !dbg !160583
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !160583
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check, !dbg !160583

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i32 %i.ap, 32, !dbg !160583
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !160583

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, 4294967264              ; 4 uses
  %i.au = add nuw nsw i64 %n.vec, %i.an
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !160583

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add nuw i64 %index, %i.an               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av, !dbg !160585 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !160586
  store <16 x i8> %broadcast.splat, ptr %i.aw, align 1, !dbg !160586, !noalias !160532
  store <16 x i8> %broadcast.splat, ptr %i.ax, align 1, !dbg !160586, !noalias !160532
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av, !dbg !160587 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !160588
  store <16 x i8> splat (i8 1), ptr %i.ay, align 1, !dbg !160588, !noalias !160532
  store <16 x i8> splat (i8 1), ptr %i.az, align 1, !dbg !160588, !noalias !160532
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec, !dbg !160583
  br i1 %i.ba, label %middle.block, label %vector.body, !dbg !160583, !llvm.loop !160524

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq, !dbg !160583
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !160583

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.f
  br label %.loopexit.i, !dbg !160569

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4679

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.aq, 4294967288             ; 3 uses
  %i.bb = add nuw nsw i64 %n.vec4, %i.an
  %broadcast.splatinsert5 = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %broadcast.splat6 = shufflevector <8 x i8> %broadcast.splatinsert5, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = add nuw i64 %index7, %i.an              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bc, !dbg !160585
  store <8 x i8> %broadcast.splat6, ptr %i.bd, align 1, !dbg !160586, !noalias !160532
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bc, !dbg !160587
  store <8 x i8> splat (i8 1), ptr %i.be, align 1, !dbg !160588, !noalias !160532
  %index.next8 = add nuw i64 %index7, 8           ; 2 uses
  %i.bf = icmp eq i64 %index.next8, %n.vec4, !dbg !160583
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !160583, !llvm.loop !160525

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %n.vec4, %i.aq, !dbg !160583
  br i1 %cmp.n9, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !160583

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !160583

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.an, !dbg !160583
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.aq, i1 false), !dbg !160589, !noalias !160532
  %scevgep15.i = getelementptr i8, ptr %i.u, i64 %i.an, !dbg !160583
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.aq, i1 false), !dbg !160590, !noalias !160532
  br label %.loopexit.i.backedge, !dbg !160569

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !160591 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !160585
  store i8 %i.ah, ptr %i.bh, align 1, !dbg !160586, !noalias !160532
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.011.012.us.i, !dbg !160587
  store i8 1, ptr %i.bi, align 1, !dbg !160588, !noalias !160532
  %i.bj = icmp samesign ult i64 %i.bg, %i.ar, !dbg !160582
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !160583, !llvm.loop !160531

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !160592, !noalias !160532
  unreachable, !dbg !160592

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !160592

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160593, !noalias !160532
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !160554, !noalias !160532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160554, !noalias !160532
  ret void, !dbg !160594
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE00INtB6_5FnMutTTRnRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !160595 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !160639, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !160640, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i128, ptr %1, align 16, !dbg !160640 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160637), !dbg !160640
  %i.b = load ptr, ptr %.val, align 8, !dbg !160641, !noalias !160637, !noundef !3509 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !160642
  %i.d = load i32, ptr %i.c, align 4, !dbg !160642, !range !3606, !alias.scope !160637, !noundef !3509
  %i.e = icmp eq i32 %i.d, 1, !dbg !160643
  %i.f = load ptr, ptr %2, align 8, !dbg !160643, !alias.scope !160637
  %.sroa.02.0.i = select i1 %i.e, ptr %2, ptr %i.f, !dbg !160643 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160644
  %i.h = load i32, ptr %i.g, align 8, !dbg !160644, !alias.scope !160637, !noundef !3509 ; 2 uses
  %i.i = zext i32 %i.h to i64, !dbg !160644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !160645
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !160646 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !160646
  %i.k = icmp eq i32 %i.h, 0, !dbg !160647
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !160648

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !160648    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !160648
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !160648
  %xtraiter = and i64 %i.n, 3, !dbg !160648       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !160648
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !160648

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !160649 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !160650, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !160650
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q, !dbg !160651
  store i128 %.val1, ptr %i.r, align 16, !dbg !160652, !noalias !160637
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !160648 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !160648
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !160648, !llvm.loop !160636

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 12, !dbg !160648
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE00Ba_.exit, label %.lr.ph.i, !dbg !160648

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !160649
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !160650, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !160650
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v, !dbg !160651
  store i128 %.val1, ptr %i.w, align 16, !dbg !160652, !noalias !160637
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !160649
  %i.y = load i32, ptr %i.t, align 4, !dbg !160650, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !160650
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z, !dbg !160651
  store i128 %.val1, ptr %i.aa, align 16, !dbg !160652, !noalias !160637
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !160649
  %i.ac = load i32, ptr %i.x, align 4, !dbg !160650, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !160650
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ad, !dbg !160651
  store i128 %.val1, ptr %i.ae, align 16, !dbg !160652, !noalias !160637
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !160649 ; 2 uses
  %i.ag = load i32, ptr %i.ab, align 4, !dbg !160650, !noundef !3509
  %i.ah = zext i32 %i.ag to i64, !dbg !160650
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ah, !dbg !160651
  store i128 %.val1, ptr %i.ai, align 16, !dbg !160652, !noalias !160637
  %i.aj = icmp eq ptr %i.af, %i.j, !dbg !160647
  br i1 %i.aj, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE00Ba_.exit, label %.lr.ph.i, !dbg !160648

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !160653
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs_00INtB6_5FnMutTTRnRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #28 !dbg !160654 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !160679, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !160680, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i128, ptr %1, align 16, !dbg !160680
  %.val2 = load i32, ptr %2, align 4, !dbg !160680, !noundef !3509
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !160680
  %.val3 = load i32, ptr %i.b, align 4, !dbg !160680, !noundef !3509 ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !dbg !160681, !noundef !3509
  %i.d = zext i32 %.val2 to i64, !dbg !160682     ; 2 uses
  %i.e = zext i32 %.val3 to i64, !dbg !160683
  %i.f = add nuw nsw i64 %i.e, %i.d, !dbg !160684
  %.not.i = icmp eq i32 %.val3, 0, !dbg !160685
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs_00Ba_.exit, label %.lr.ph.i, !dbg !160686

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.01.05.i, 1, !dbg !160687 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.01.05.i, !dbg !160688
  store i128 %.val1, ptr %i.h, align 16, !dbg !160689
  %i.i = icmp samesign ult i64 %i.g, %i.f, !dbg !160685
  br i1 %i.i, label %.lr.ph.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs_00Ba_.exit, !dbg !160686

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeEs_00Ba_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void, !dbg !160690
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE00INtB6_5FnMutTTRtRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !160691 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !160735, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !160736, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i16, ptr %1, align 2, !dbg !160736 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160733), !dbg !160736
  %i.b = load ptr, ptr %.val, align 8, !dbg !160737, !noalias !160733, !noundef !3509 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !160738
  %i.d = load i32, ptr %i.c, align 4, !dbg !160738, !range !3606, !alias.scope !160733, !noundef !3509
  %i.e = icmp eq i32 %i.d, 1, !dbg !160739
  %i.f = load ptr, ptr %2, align 8, !dbg !160739, !alias.scope !160733
  %.sroa.02.0.i = select i1 %i.e, ptr %2, ptr %i.f, !dbg !160739 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160740
  %i.h = load i32, ptr %i.g, align 8, !dbg !160740, !alias.scope !160733, !noundef !3509 ; 2 uses
  %i.i = zext i32 %i.h to i64, !dbg !160740
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !160741
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !160742 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !160742
  %i.k = icmp eq i32 %i.h, 0, !dbg !160743
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !160744

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !160744    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !160744
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !160744
  %xtraiter = and i64 %i.n, 7, !dbg !160744       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !160744
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !160744

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !160745 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !160746, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !160746
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.q, !dbg !160747
  store i16 %.val1, ptr %i.r, align 2, !dbg !160748, !noalias !160733
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !160744 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !160744
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !160744, !llvm.loop !160732

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 28, !dbg !160744
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE00Ba_.exit, label %.lr.ph.i, !dbg !160744

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !160745
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !160746, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !160746
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v, !dbg !160747
  store i16 %.val1, ptr %i.w, align 2, !dbg !160748, !noalias !160733
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !160745
  %i.y = load i32, ptr %i.t, align 4, !dbg !160746, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !160746
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.z, !dbg !160747
  store i16 %.val1, ptr %i.aa, align 2, !dbg !160748, !noalias !160733
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !160745
  %i.ac = load i32, ptr %i.x, align 4, !dbg !160746, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !160746
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ad, !dbg !160747
  store i16 %.val1, ptr %i.ae, align 2, !dbg !160748, !noalias !160733
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !160745
end_hunk_12
begin_hunk_13_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE00INtB6_5FnMutTTRoRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_:bb.a
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !161331 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !161331
  %i.k = icmp eq i32 %i.h, 0, !dbg !161332
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161333

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !161333    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !161333
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !161333
  %xtraiter = and i64 %i.n, 3, !dbg !161333       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !161333
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161333

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !161334 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !161335, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !161335
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q, !dbg !161336
  store i128 %.val1, ptr %i.r, align 16, !dbg !161337, !noalias !161322
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !161333 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !161333
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161333, !llvm.loop !161321

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 12, !dbg !161333
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161333

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !161334
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !161335, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !161335
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v, !dbg !161336
  store i128 %.val1, ptr %i.w, align 16, !dbg !161337, !noalias !161322
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !161334
  %i.y = load i32, ptr %i.t, align 4, !dbg !161335, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !161335
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z, !dbg !161336
  store i128 %.val1, ptr %i.aa, align 16, !dbg !161337, !noalias !161322
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !161334
  %i.ac = load i32, ptr %i.x, align 4, !dbg !161335, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !161335
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ad, !dbg !161336
  store i128 %.val1, ptr %i.ae, align 16, !dbg !161337, !noalias !161322
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !161334 ; 2 uses
  %i.ag = load i32, ptr %i.ab, align 4, !dbg !161335, !noundef !3509
  %i.ah = zext i32 %i.ag to i64, !dbg !161335
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ah, !dbg !161336
  store i128 %.val1, ptr %i.ai, align 16, !dbg !161337, !noalias !161322
  %i.aj = icmp eq ptr %i.af, %i.j, !dbg !161332
  br i1 %i.aj, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161333

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !161338
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs_00INtB6_5FnMutTTRoRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #28 !dbg !161339 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161364, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161365, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i128, ptr %1, align 16, !dbg !161365
  %.val2 = load i32, ptr %2, align 4, !dbg !161365, !noundef !3509
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !161365
  %.val3 = load i32, ptr %i.b, align 4, !dbg !161365, !noundef !3509 ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !dbg !161366, !noundef !3509
  %i.d = zext i32 %.val2 to i64, !dbg !161367     ; 2 uses
  %i.e = zext i32 %.val3 to i64, !dbg !161368
  %i.f = add nuw nsw i64 %i.e, %i.d, !dbg !161369
  %.not.i = icmp eq i32 %.val3, 0, !dbg !161370
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs_00Ba_.exit, label %.lr.ph.i, !dbg !161371

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.01.05.i, 1, !dbg !161372 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.01.05.i, !dbg !161373
  store i128 %.val1, ptr %i.h, align 16, !dbg !161374
  %i.i = icmp samesign ult i64 %i.g, %i.f, !dbg !161370
  br i1 %i.i, label %.lr.ph.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs_00Ba_.exit, !dbg !161371

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11UInt128TypeEs_00Ba_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void, !dbg !161375
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE00INtB6_5FnMutTTRaRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !161376 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161420, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161421, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i8, ptr %1, align 1, !dbg !161421 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161418), !dbg !161421
  %i.b = load ptr, ptr %.val, align 8, !dbg !161422, !noalias !161418, !noundef !3509 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !161423
  %i.d = load i32, ptr %i.c, align 4, !dbg !161423, !range !3606, !alias.scope !161418, !noundef !3509
  %i.e = icmp eq i32 %i.d, 1, !dbg !161424
  %i.f = load ptr, ptr %2, align 8, !dbg !161424, !alias.scope !161418
  %.sroa.02.0.i = select i1 %i.e, ptr %2, ptr %i.f, !dbg !161424 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !161425
  %i.h = load i32, ptr %i.g, align 8, !dbg !161425, !alias.scope !161418, !noundef !3509 ; 2 uses
  %i.i = zext i32 %i.h to i64, !dbg !161425
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !161426
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !161427 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !161427
  %i.k = icmp eq i32 %i.h, 0, !dbg !161428
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161429

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !161429    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !161429
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !161429
  %xtraiter = and i64 %i.n, 7, !dbg !161429       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !161429
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161429

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !161430 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !161431, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !161431
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q, !dbg !161432
  store i8 %.val1, ptr %i.r, align 1, !dbg !161433, !noalias !161418
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !161429 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !161429
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161429, !llvm.loop !161417

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 28, !dbg !161429
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161429

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !161430
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !161431, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !161431
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v, !dbg !161432
  store i8 %.val1, ptr %i.w, align 1, !dbg !161433, !noalias !161418
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !161430
  %i.y = load i32, ptr %i.t, align 4, !dbg !161431, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !161431
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z, !dbg !161432
  store i8 %.val1, ptr %i.aa, align 1, !dbg !161433, !noalias !161418
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !161430
  %i.ac = load i32, ptr %i.x, align 4, !dbg !161431, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !161431
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad, !dbg !161432
  store i8 %.val1, ptr %i.ae, align 1, !dbg !161433, !noalias !161418
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !161430
  %i.ag = load i32, ptr %i.ab, align 4, !dbg !161431, !noundef !3509
  %i.ah = zext i32 %i.ag to i64, !dbg !161431
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah, !dbg !161432
  store i8 %.val1, ptr %i.ai, align 1, !dbg !161433, !noalias !161418
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 20, !dbg !161430
  %i.ak = load i32, ptr %i.af, align 4, !dbg !161431, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !161431
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al, !dbg !161432
  store i8 %.val1, ptr %i.am, align 1, !dbg !161433, !noalias !161418
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24, !dbg !161430
  %i.ao = load i32, ptr %i.aj, align 4, !dbg !161431, !noundef !3509
  %i.ap = zext i32 %i.ao to i64, !dbg !161431
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap, !dbg !161432
  store i8 %.val1, ptr %i.aq, align 1, !dbg !161433, !noalias !161418
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 28, !dbg !161430
  %i.as = load i32, ptr %i.an, align 4, !dbg !161431, !noundef !3509
  %i.at = zext i32 %i.as to i64, !dbg !161431
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at, !dbg !161432
  store i8 %.val1, ptr %i.au, align 1, !dbg !161433, !noalias !161418
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 32, !dbg !161430 ; 2 uses
  %i.aw = load i32, ptr %i.ar, align 4, !dbg !161431, !noundef !3509
  %i.ax = zext i32 %i.aw to i64, !dbg !161431
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax, !dbg !161432
  store i8 %.val1, ptr %i.ay, align 1, !dbg !161433, !noalias !161418
  %i.az = icmp eq ptr %i.av, %i.j, !dbg !161428
  br i1 %i.az, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161429

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !161434
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs_00INtB6_5FnMutTTRaRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #6 !dbg !161435 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !161453
  %.val3 = load i32, ptr %i.a, align 4, !dbg !161453, !noundef !3509 ; 2 uses
  %.not.i = icmp eq i32 %.val3, 0, !dbg !161454
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs_00Ba_.exit, label %.lr.ph.preheader.i, !dbg !161455

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.val2 = load i32, ptr %2, align 4, !dbg !161453, !noundef !3509
  %.val1 = load i8, ptr %1, align 1, !dbg !161453
  %i.b = load ptr, ptr %0, align 8, !dbg !161456, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.b, align 8, !dbg !161453, !nonnull !3509, !align !3639, !noundef !3509
  %i.c = zext i32 %.val3 to i64, !dbg !161457
  %i.d = zext i32 %.val2 to i64, !dbg !161458
  %i.e = load ptr, ptr %.val, align 8, !dbg !161459, !noundef !3509
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.d, !dbg !161455
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 %.val1, i64 %i.c, i1 false), !dbg !161460
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs_00Ba_.exit, !dbg !161461

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEs_00Ba_.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  ret void, !dbg !161462
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE00INtB6_5FnMutTTRsRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !161463 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161507, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161508, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i16, ptr %1, align 2, !dbg !161508 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161505), !dbg !161508
  %i.b = load ptr, ptr %.val, align 8, !dbg !161509, !noalias !161505, !noundef !3509 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !161510
  %i.d = load i32, ptr %i.c, align 4, !dbg !161510, !range !3606, !alias.scope !161505, !noundef !3509
  %i.e = icmp eq i32 %i.d, 1, !dbg !161511
  %i.f = load ptr, ptr %2, align 8, !dbg !161511, !alias.scope !161505
  %.sroa.02.0.i = select i1 %i.e, ptr %2, ptr %i.f, !dbg !161511 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !161512
  %i.h = load i32, ptr %i.g, align 8, !dbg !161512, !alias.scope !161505, !noundef !3509 ; 2 uses
  %i.i = zext i32 %i.h to i64, !dbg !161512
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !161513
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !161514 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !161514
  %i.k = icmp eq i32 %i.h, 0, !dbg !161515
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161516

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !161516    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !161516
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !161516
  %xtraiter = and i64 %i.n, 7, !dbg !161516       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !161516
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161516

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !161517 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !161518, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !161518
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.q, !dbg !161519
  store i16 %.val1, ptr %i.r, align 2, !dbg !161520, !noalias !161505
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !161516 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !161516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161516, !llvm.loop !161504

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 28, !dbg !161516
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161516

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !161517
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !161518, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !161518
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v, !dbg !161519
  store i16 %.val1, ptr %i.w, align 2, !dbg !161520, !noalias !161505
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !161517
  %i.y = load i32, ptr %i.t, align 4, !dbg !161518, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !161518
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.z, !dbg !161519
  store i16 %.val1, ptr %i.aa, align 2, !dbg !161520, !noalias !161505
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !161517
  %i.ac = load i32, ptr %i.x, align 4, !dbg !161518, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !161518
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ad, !dbg !161519
  store i16 %.val1, ptr %i.ae, align 2, !dbg !161520, !noalias !161505
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !161517
  %i.ag = load i32, ptr %i.ab, align 4, !dbg !161518, !noundef !3509
  %i.ah = zext i32 %i.ag to i64, !dbg !161518
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ah, !dbg !161519
  store i16 %.val1, ptr %i.ai, align 2, !dbg !161520, !noalias !161505
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 20, !dbg !161517
  %i.ak = load i32, ptr %i.af, align 4, !dbg !161518, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !161518
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.al, !dbg !161519
  store i16 %.val1, ptr %i.am, align 2, !dbg !161520, !noalias !161505
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24, !dbg !161517
  %i.ao = load i32, ptr %i.aj, align 4, !dbg !161518, !noundef !3509
  %i.ap = zext i32 %i.ao to i64, !dbg !161518
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ap, !dbg !161519
  store i16 %.val1, ptr %i.aq, align 2, !dbg !161520, !noalias !161505
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 28, !dbg !161517
  %i.as = load i32, ptr %i.an, align 4, !dbg !161518, !noundef !3509
  %i.at = zext i32 %i.as to i64, !dbg !161518
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.at, !dbg !161519
  store i16 %.val1, ptr %i.au, align 2, !dbg !161520, !noalias !161505
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 32, !dbg !161517 ; 2 uses
  %i.aw = load i32, ptr %i.ar, align 4, !dbg !161518, !noundef !3509
  %i.ax = zext i32 %i.aw to i64, !dbg !161518
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ax, !dbg !161519
  store i16 %.val1, ptr %i.ay, align 2, !dbg !161520, !noalias !161505
  %i.az = icmp eq ptr %i.av, %i.j, !dbg !161515
  br i1 %i.az, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161516

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !161521
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00INtB6_5FnMutTTRsRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #28 !dbg !161522 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161550, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161551, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i16, ptr %1, align 2, !dbg !161551 ; 3 uses
  %.val2 = load i32, ptr %2, align 4, !dbg !161551, !noundef !3509
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !161551
  %.val3 = load i32, ptr %i.b, align 4, !dbg !161551, !noundef !3509 ; 4 uses
  %i.c = load ptr, ptr %.val, align 8, !dbg !161552, !noundef !3509 ; 3 uses
  %i.d = zext i32 %.val2 to i64, !dbg !161553     ; 6 uses
  %i.e = zext i32 %.val3 to i64, !dbg !161554     ; 6 uses
  %i.f = add nuw nsw i64 %i.e, %i.d, !dbg !161555
  %.not.i = icmp eq i32 %.val3, 0, !dbg !161556
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00Ba_.exit, label %iter.check, !dbg !161557

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i32 %.val3, 4, !dbg !161557
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check, !dbg !161557

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i32 %.val3, 16, !dbg !161557
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !161557

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 4294967280               ; 4 uses
  %i.h = add nuw nsw i64 %n.vec, %i.d
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.val1, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.c, i64 %i.d, !dbg !161557
  br label %vector.body, !dbg !161557

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index, !dbg !161558 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %gep, i64 16, !dbg !161559
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !dbg !161559
  store <8 x i16> %broadcast.splat, ptr %i.i, align 2, !dbg !161559
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !161557
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !161557, !llvm.loop !161541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e, !dbg !161557
  br i1 %cmp.n, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00Ba_.exit, label %vec.epilog.iter.check, !dbg !161557

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !4228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.e, 4294967292              ; 3 uses
  %i.k = add nuw nsw i64 %n.vec5, %i.d
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %.val1, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep12 = getelementptr [2 x i8], ptr %i.c, i64 %i.d
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ] ; 2 uses
  %gep13 = getelementptr [2 x i8], ptr %invariant.gep12, i64 %index8, !dbg !161558
  store <4 x i16> %broadcast.splat7, ptr %gep13, align 2, !dbg !161559
  %index.next9 = add nuw i64 %index8, 4           ; 2 uses
  %i.l = icmp eq i64 %index.next9, %n.vec5, !dbg !161557
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !161557, !llvm.loop !161542

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %n.vec5, %i.e, !dbg !161557
  br i1 %cmp.n10, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161557

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.i.ph = phi i64 [ %i.d, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ]
  br label %.lr.ph.i, !dbg !161557

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.01.05.i, 1, !dbg !161560 ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.sroa.01.05.i, !dbg !161558
  store i16 %.val1, ptr %i.n, align 2, !dbg !161559
  %i.o = icmp samesign ult i64 %i.m, %i.f, !dbg !161556
  br i1 %i.o, label %.lr.ph.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00Ba_.exit, !dbg !161557, !llvm.loop !161548

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs_00Ba_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !161561
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE00INtB6_5FnMutTTRlRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !161562 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161606, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161607, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i32, ptr %1, align 4, !dbg !161607 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161604), !dbg !161607
  %i.b = load ptr, ptr %.val, align 8, !dbg !161608, !noalias !161604, !noundef !3509 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !161609
  %i.d = load i32, ptr %i.c, align 4, !dbg !161609, !range !3606, !alias.scope !161604, !noundef !3509
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE00INtB6_5FnMutTTRxRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_:bb.a
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah, !dbg !161716
  store i64 %.val1, ptr %i.ai, align 8, !dbg !161717, !noalias !161702
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 20, !dbg !161714
  %i.ak = load i32, ptr %i.af, align 4, !dbg !161715, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !161715
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al, !dbg !161716
  store i64 %.val1, ptr %i.am, align 8, !dbg !161717, !noalias !161702
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24, !dbg !161714
  %i.ao = load i32, ptr %i.aj, align 4, !dbg !161715, !noundef !3509
  %i.ap = zext i32 %i.ao to i64, !dbg !161715
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap, !dbg !161716
  store i64 %.val1, ptr %i.aq, align 8, !dbg !161717, !noalias !161702
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 28, !dbg !161714
  %i.as = load i32, ptr %i.an, align 4, !dbg !161715, !noundef !3509
  %i.at = zext i32 %i.as to i64, !dbg !161715
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at, !dbg !161716
  store i64 %.val1, ptr %i.au, align 8, !dbg !161717, !noalias !161702
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 32, !dbg !161714 ; 2 uses
  %i.aw = load i32, ptr %i.ar, align 4, !dbg !161715, !noundef !3509
  %i.ax = zext i32 %i.aw to i64, !dbg !161715
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax, !dbg !161716
  store i64 %.val1, ptr %i.ay, align 8, !dbg !161717, !noalias !161702
  %i.az = icmp eq ptr %i.av, %i.j, !dbg !161712
  br i1 %i.az, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161713

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !161718
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs_00INtB6_5FnMutTTRxRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #28 !dbg !161719 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161746, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161747, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i64, ptr %1, align 8, !dbg !161747 ; 2 uses
  %.val2 = load i32, ptr %2, align 4, !dbg !161747, !noundef !3509
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !161747
  %.val3 = load i32, ptr %i.b, align 4, !dbg !161747, !noundef !3509 ; 3 uses
  %i.c = load ptr, ptr %.val, align 8, !dbg !161748, !noundef !3509 ; 2 uses
  %i.d = zext i32 %.val2 to i64, !dbg !161749     ; 4 uses
  %i.e = zext i32 %.val3 to i64, !dbg !161750     ; 3 uses
  %i.f = add nuw nsw i64 %i.e, %i.d, !dbg !161751
  %.not.i = icmp eq i32 %.val3, 0, !dbg !161752
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs_00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161753

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %.val3, 4, !dbg !161753
  br i1 %min.iters.check, label %.lr.ph.i.preheader4, label %vector.ph, !dbg !161753

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.e, 4294967292               ; 3 uses
  %i.g = add nuw nsw i64 %n.vec, %i.d
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.d, !dbg !161753
  br label %vector.body, !dbg !161753

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index, !dbg !161754 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %gep, i64 16, !dbg !161755
  store <2 x i64> %broadcast.splat, ptr %gep, align 8, !dbg !161755
  store <2 x i64> %broadcast.splat, ptr %i.h, align 8, !dbg !161755
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec, !dbg !161753
  br i1 %i.i, label %middle.block, label %vector.body, !dbg !161753, !llvm.loop !161738

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e, !dbg !161753
  br i1 %cmp.n, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs_00Ba_.exit, label %.lr.ph.i.preheader4, !dbg !161753

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.05.i.ph = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph.i, !dbg !161753

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.01.05.i, 1, !dbg !161756 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.05.i, !dbg !161754
  store i64 %.val1, ptr %i.k, align 8, !dbg !161755
  %i.l = icmp samesign ult i64 %i.j, %i.f, !dbg !161752
  br i1 %i.l, label %.lr.ph.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs_00Ba_.exit, !dbg !161753, !llvm.loop !161744

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEs_00Ba_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void, !dbg !161757
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE00INtB6_5FnMutTTRhRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %2) unnamed_addr #27 !dbg !161758 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !161802, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.a, align 8, !dbg !161803, !nonnull !3509, !align !3639, !noundef !3509
  %.val1 = load i8, ptr %1, align 1, !dbg !161803 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161800), !dbg !161803
  %i.b = load ptr, ptr %.val, align 8, !dbg !161804, !noalias !161800, !noundef !3509 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !161805
  %i.d = load i32, ptr %i.c, align 4, !dbg !161805, !range !3606, !alias.scope !161800, !noundef !3509
  %i.e = icmp eq i32 %i.d, 1, !dbg !161806
  %i.f = load ptr, ptr %2, align 8, !dbg !161806, !alias.scope !161800
  %.sroa.02.0.i = select i1 %i.e, ptr %2, ptr %i.f, !dbg !161806 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !161807
  %i.h = load i32, ptr %i.g, align 8, !dbg !161807, !alias.scope !161800, !noundef !3509 ; 2 uses
  %i.i = zext i32 %i.h to i64, !dbg !161807
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !161808
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !161809 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx.i, !dbg !161809
  %i.k = icmp eq i32 %i.h, 0, !dbg !161810
  br i1 %i.k, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE00Ba_.exit, label %.lr.ph.i.preheader, !dbg !161811

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -4, !dbg !161811    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2, !dbg !161811
  %i.n = add nuw nsw i64 %i.m, 1, !dbg !161811
  %xtraiter = and i64 %i.n, 7, !dbg !161811       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !161811
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161811

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.03.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %.sroa.02.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.prol, i64 4, !dbg !161812 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.03.i.prol, align 4, !dbg !161813, !noundef !3509
  %i.q = zext i32 %i.p to i64, !dbg !161813
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q, !dbg !161814
  store i8 %.val1, ptr %i.r, align 1, !dbg !161815, !noalias !161800
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !161811 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !161811
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !161811, !llvm.loop !161799

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.03.i.unr = phi ptr [ %.sroa.02.0.i, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %i.l, 28, !dbg !161811
  br i1 %i.s, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161811

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 4, !dbg !161812
  %i.u = load i32, ptr %.sroa.0.03.i, align 4, !dbg !161813, !noundef !3509
  %i.v = zext i32 %i.u to i64, !dbg !161813
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v, !dbg !161814
  store i8 %.val1, ptr %i.w, align 1, !dbg !161815, !noalias !161800
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8, !dbg !161812
  %i.y = load i32, ptr %i.t, align 4, !dbg !161813, !noundef !3509
  %i.z = zext i32 %i.y to i64, !dbg !161813
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z, !dbg !161814
  store i8 %.val1, ptr %i.aa, align 1, !dbg !161815, !noalias !161800
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 12, !dbg !161812
  %i.ac = load i32, ptr %i.x, align 4, !dbg !161813, !noundef !3509
  %i.ad = zext i32 %i.ac to i64, !dbg !161813
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad, !dbg !161814
  store i8 %.val1, ptr %i.ae, align 1, !dbg !161815, !noalias !161800
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16, !dbg !161812
  %i.ag = load i32, ptr %i.ab, align 4, !dbg !161813, !noundef !3509
  %i.ah = zext i32 %i.ag to i64, !dbg !161813
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah, !dbg !161814
  store i8 %.val1, ptr %i.ai, align 1, !dbg !161815, !noalias !161800
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 20, !dbg !161812
  %i.ak = load i32, ptr %i.af, align 4, !dbg !161813, !noundef !3509
  %i.al = zext i32 %i.ak to i64, !dbg !161813
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al, !dbg !161814
  store i8 %.val1, ptr %i.am, align 1, !dbg !161815, !noalias !161800
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24, !dbg !161812
  %i.ao = load i32, ptr %i.aj, align 4, !dbg !161813, !noundef !3509
  %i.ap = zext i32 %i.ao to i64, !dbg !161813
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap, !dbg !161814
  store i8 %.val1, ptr %i.aq, align 1, !dbg !161815, !noalias !161800
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 28, !dbg !161812
  %i.as = load i32, ptr %i.an, align 4, !dbg !161813, !noundef !3509
  %i.at = zext i32 %i.as to i64, !dbg !161813
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at, !dbg !161814
  store i8 %.val1, ptr %i.au, align 1, !dbg !161815, !noalias !161800
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 32, !dbg !161812 ; 2 uses
  %i.aw = load i32, ptr %i.ar, align 4, !dbg !161813, !noundef !3509
  %i.ax = zext i32 %i.aw to i64, !dbg !161813
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax, !dbg !161814
  store i8 %.val1, ptr %i.ay, align 1, !dbg !161815, !noalias !161800
  %i.az = icmp eq ptr %i.av, %i.j, !dbg !161810
  br i1 %i.az, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE00Ba_.exit, label %.lr.ph.i, !dbg !161811

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE00Ba_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void, !dbg !161816
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs_00INtB6_5FnMutTTRhRAmj2_EEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #6 !dbg !161817 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !161835
  %.val3 = load i32, ptr %i.a, align 4, !dbg !161835, !noundef !3509 ; 2 uses
  %.not.i = icmp eq i32 %.val3, 0, !dbg !161836
  br i1 %.not.i, label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs_00Ba_.exit, label %.lr.ph.preheader.i, !dbg !161837

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.val2 = load i32, ptr %2, align 4, !dbg !161835, !noundef !3509
  %.val1 = load i8, ptr %1, align 1, !dbg !161835
  %i.b = load ptr, ptr %0, align 8, !dbg !161838, !nonnull !3509, !align !3639, !noundef !3509
  %.val = load ptr, ptr %i.b, align 8, !dbg !161835, !nonnull !3509, !align !3639, !noundef !3509
  %i.c = zext i32 %.val3 to i64, !dbg !161839
  %i.d = zext i32 %.val2 to i64, !dbg !161840
  %i.e = load ptr, ptr %.val, align 8, !dbg !161841, !noundef !3509
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.d, !dbg !161837
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 %.val1, i64 %i.c, i1 false), !dbg !161842
  br label %_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs_00Ba_.exit, !dbg !161843

_RNCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEs_00Ba_.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  ret void, !dbg !161844
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtBV_14StructEvalExprNtBX_12PhysicalExpr13evaluate_impl0INtB6_5FnMutTRINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDB2a_EL_EEE8call_mutBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161845 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 15 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !161913, !nonnull !3509, !align !3639, !noundef !3509 ; 3 uses
  %.val = load ptr, ptr %2, align 8, !dbg !161914, !nonnull !3509, !noundef !3509
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !161914
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !161914, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161897), !dbg !161914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161898), !dbg !161914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !161915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161915, !noalias !161900
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !161916
  %i.f = load i64, ptr %i.e, align 8, !dbg !161916, !range !3584, !invariant.load !3509, !noalias !161900
  %i.g = add nsw i64 %i.f, -1, !dbg !161916
  %i.h = and i64 %i.g, -16, !dbg !161916
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h, !dbg !161916
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !161916
  %i.k = load ptr, ptr %i.c, align 8, !dbg !161917, !alias.scope !161898, !noalias !161897, !nonnull !3509, !align !3639, !noundef !3509
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !161918
  %i.m = load ptr, ptr %i.l, align 8, !dbg !161918, !alias.scope !161898, !noalias !161897, !nonnull !3509, !align !3639, !noundef !3509
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 40, !dbg !161919
  %i.o = load ptr, ptr %i.n, align 8, !dbg !161919, !invariant.load !3509, !noalias !161900, !nonnull !3509
  call void %i.o(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.m) #58, !dbg !161920, !noalias !161900, !inline_history !161853
  %i.p = load i8, ptr %i.a, align 16, !dbg !161921, !range !3601, !noalias !161900, !noundef !3509 ; 3 uses
  %i.q = icmp eq i8 %i.p, 32, !dbg !161921
  br i1 %i.q, label %bb.b, label %bb.c, !dbg !161922

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !161923
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !161925, !noalias !161898
  store i8 32, ptr %0, align 16, !dbg !161924, !alias.scope !161897, !noalias !161898
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit, !dbg !161926

bb.c:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !161927
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !161927
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !161928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.610.0..sroa_idx.i, i64 80, i1 false), !dbg !161927, !noalias !161900
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !161928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.59.0..sroa_idx.i, i64 79, i1 false), !dbg !161919, !noalias !161900
  store i8 %i.p, ptr %i.b, align 16, !dbg !161928, !noalias !161900
  %.not.i = icmp eq i8 %i.p, 31, !dbg !161929
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !161930

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !161931
  %i.u = load i64, ptr %i.t, align 8, !dbg !161931, !noalias !161900, !noundef !3509
  br label %bb.g, !dbg !161932

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !161933
  %i.w = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v)
          to label %bb.g unwind label %bb.f, !dbg !161934, !noalias !161900

bb.f:                                             ; preds = %bb.j, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.b) #54
          to label %bb.m unwind label %bb.l, !dbg !161935, !noalias !161900

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.i = phi i64 [ %i.u, %bb.d ], [ %i.w, %bb.e ], !dbg !161936
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !161937
  %i.z = load ptr, ptr %i.y, align 8, !dbg !161937, !alias.scope !161898, !noalias !161897, !nonnull !3509, !align !3639, !noundef !3509
  %i.aa = load i64, ptr %i.z, align 8, !dbg !161937, !noalias !161900, !noundef !3509
  %i.ab = icmp eq i64 %.sroa.06.0.i, %i.aa, !dbg !161938
  br i1 %i.ab, label %bb.r, label %bb.h, !dbg !161938

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.b, align 16, !dbg !161939, !range !3557, !noalias !161900, !noundef !3509
  %.not14.i = icmp eq i8 %i.ac, 31, !dbg !161939
  br i1 %.not14.i, label %bb.j, label %bb.i, !dbg !161940

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !161941
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !161941, !noalias !161900, !noundef !3509
  br label %bb.k, !dbg !161942

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !161943
  %i.ag = invoke noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af)
          to label %bb.k unwind label %bb.f, !dbg !161944, !noalias !161900

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.07.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.ag, %bb.j ], !dbg !161945
  %i.ah = icmp eq i64 %.sroa.07.0.i, 1, !dbg !161946
  br i1 %i.ah, label %bb.r, label %bb.n, !dbg !161946

bb.l:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !161947, !noalias !161900
  unreachable, !dbg !161947

bb.m:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x, !dbg !161947

bb.n:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) @62, i64 72, i1 false), !dbg !161948, !noalias !161898
  store i8 32, ptr %0, align 16, !dbg !161948, !alias.scope !161897, !noalias !161898
  call void @llvm.experimental.noalias.scope.decl(metadata !161906), !dbg !161935
  %i.ak = load i8, ptr %i.b, align 16, !dbg !161949, !range !3557, !alias.scope !161906, !noalias !161900, !noundef !3509
  %i.al = icmp eq i8 %i.ak, 31, !dbg !161949
  br i1 %i.al, label %bb.o, label %bb.q, !dbg !161949

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !161949 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161907), !dbg !161949
  call void @llvm.experimental.noalias.scope.decl(metadata !161908), !dbg !161950
  call void @llvm.experimental.noalias.scope.decl(metadata !161909), !dbg !161951
  call void @llvm.experimental.noalias.scope.decl(metadata !161910), !dbg !161952
  %i.an = load ptr, ptr %i.am, align 8, !dbg !161953, !alias.scope !161911, !noalias !161900, !nonnull !3509, !noundef !3509
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !161954, !noalias !161912
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !161955
  br i1 %i.ap, label %bb.p, label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit, !dbg !161955

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !161956
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #53, !dbg !161957, !noalias !161900
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit, !dbg !161957

bb.q:                                             ; preds = %bb.n
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.b), !dbg !161949, !noalias !161900
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit, !dbg !161949

bb.r:                                             ; preds = %bb.k, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.b, i64 160, i1 false), !dbg !161958, !noalias !161898
  br label %_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit, !dbg !161959

_RNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtB7_14StructEvalExprNtB9_12PhysicalExpr13evaluate_impl0Bb_.exit: ; preds = %bb.b, %bb.o, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161935, !noalias !161900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !161959
  ret void, !dbg !161960
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr11expressions10structevalNtBV_14StructEvalExprNtBX_12PhysicalExpr23evaluate_on_groups_impl0INtB6_5FnMutTRINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDB2a_EL_EEE8call_mutBZ_(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 16 captures(address) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 !dbg !161961 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !161973, !nonnull !3509, !align !3639, !noundef !3509 ; 3 uses
  %.val = load ptr, ptr %2, align 8, !dbg !161974, !nonnull !3509, !noundef !3509
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !161974
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !161974, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161970), !dbg !161974
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !161975
  %i.d = load i64, ptr %i.c, align 8, !dbg !161975, !range !3584, !invariant.load !3509, !noalias !161971
  %i.e = add nsw i64 %i.d, -1, !dbg !161975
  %i.f = and i64 %i.e, -16, !dbg !161975
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f, !dbg !161975
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !161975
  %i.i = load ptr, ptr %i.a, align 8, !dbg !161976, !alias.scope !161970, !noalias !161972, !nonnull !3509, !align !3639, !noundef !3509
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !161977
  %i.k = load ptr, ptr %i.j, align 8, !dbg !161977, !alias.scope !161970, !noalias !161972, !nonnull !3509, !align !3639, !noundef !3509
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !161978
  %i.m = load ptr, ptr %i.l, align 8, !dbg !161978, !alias.scope !161970, !noalias !161972, !nonnull !3509, !align !3639, !noundef !3509
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 56, !dbg !161979
  %i.o = load ptr, ptr %i.n, align 8, !dbg !161979, !invariant.load !3509, !noalias !161971, !nonnull !3509
  tail call void %i.o(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.k, ptr noundef nonnull align 8 %i.m) #58, !dbg !161980, !noalias !161970, !inline_history !161969
  ret void, !dbg !161981
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #20 !dbg !161982 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !161998, !nonnull !3509, !noundef !3509
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !161998
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !161998, !nonnull !3509, !noundef !3509
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !161999
  %i.c = ptrtoint ptr %.val to i64, !dbg !161999
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !161999
  %i.e = udiv exact i64 %i.d, 80, !dbg !161999    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !162000, !alias.scope !161997
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162000
  store i64 1, ptr %i.f, align 8, !dbg !162000, !alias.scope !161997
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162000
  store i64 %i.e, ptr %i.g, align 8, !dbg !162000, !alias.scope !161997
  ret void, !dbg !162001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #20 !dbg !1656 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !162010, !nonnull !3509, !noundef !3509
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !162010
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !162010, !nonnull !3509, !noundef !3509
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !162011
  %i.c = ptrtoint ptr %.val to i64, !dbg !162011
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !162011
  %i.e = udiv exact i64 %i.d, 24, !dbg !162011    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !162012, !alias.scope !162009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162012
end_hunk_14
