Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !155525
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !155526

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !155527
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !155528, !noalias !155479, !noundef !3508
  %i.cm = zext i32 %i.cl to i64, !dbg !155528     ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cm, !dbg !155529
  store i16 0, ptr %i.cn, align 2, !dbg !155530, !noalias !155479
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !155531
  store i8 0, ptr %i.co, align 1, !dbg !155532, !noalias !155479
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !155527
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !155528, !noalias !155479, !noundef !3508
  %i.cr = zext i32 %i.cq to i64, !dbg !155528     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !155529
  store i16 0, ptr %i.cs, align 2, !dbg !155530, !noalias !155479
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !155531
  store i8 0, ptr %i.ct, align 1, !dbg !155532, !noalias !155479
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !155527
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !155528, !noalias !155479, !noundef !3508
  %i.cw = zext i32 %i.cv to i64, !dbg !155528     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !155529
  store i16 0, ptr %i.cx, align 2, !dbg !155530, !noalias !155479
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !155531
  store i8 0, ptr %i.cy, align 1, !dbg !155532, !noalias !155479
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !155527 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !155528, !noalias !155479, !noundef !3508
  %i.db = zext i32 %i.da to i64, !dbg !155528     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !155529
  store i16 0, ptr %i.dc, align 2, !dbg !155530, !noalias !155479
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !155531
  store i8 0, ptr %i.dd, align 1, !dbg !155532, !noalias !155479
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !155525
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !155526

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.f
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !155507, !noalias !155466 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !155508 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !155509
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !155510

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !155537, !noalias !155466
  unreachable, !dbg !155537

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10, !dbg !155537

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155538, !noalias !155466
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !155491, !noalias !155466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155491, !noalias !155466
  ret void, !dbg !155539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155540 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !155677, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !155678, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !155678
  %.val1 = load i64, ptr %i.d, align 8, !dbg !155678, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155663), !dbg !155678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155679, !noalias !155663
  %i.e = load ptr, ptr %i.c, align 8, !dbg !155680, !alias.scope !155663, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !155681, !noalias !155663
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !155682
  %i.g = load ptr, ptr %i.f, align 8, !dbg !155682, !alias.scope !155663, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !155683      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !155684
  %i.j = load i64, ptr %i.i, align 8, !dbg !155684, !noalias !155663, !noundef !3508 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !155685
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !155685
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !155685, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !155686, !noalias !155663

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i, %bb.b
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.h unwind label %bb.g, !dbg !155687, !noalias !155663

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !155688
  %i.m = load ptr, ptr %i.l, align 8, !dbg !155688, !noalias !155663, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !155689 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !155690
  %i.p = load ptr, ptr %i.o, align 8, !dbg !155690, !alias.scope !155663, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155691, !noalias !155663, !noundef !3508 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !155692
  %i.s = load ptr, ptr %i.r, align 8, !dbg !155692, !alias.scope !155663, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !155693, !noalias !155663, !noundef !3508 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !155694
  %i.v = load ptr, ptr %i.u, align 8, !dbg !155694, !noalias !155663, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !155695
  %i.x = load i64, ptr %i.w, align 8, !dbg !155695, !noalias !155663, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !155696
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !155697
  %i.aa = load i64, ptr %i.z, align 8, !dbg !155697, !noalias !155663, !noundef !3508
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !155698
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !155699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155699, !noalias !155663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !155700, !noalias !155663
  store i64 0, ptr %i.a, align 8, !dbg !155699, !noalias !155663
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !155699
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !155699
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !155699
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !155699
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !155699 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !155699 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155699, !noalias !155663
  br label %.loopexit.i, !dbg !155701

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.c
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !155702, !noalias !155663 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !155703 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !155703 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !155704
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit, label %bb.d, !dbg !155705

bb.d:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155706, !alias.scope !155672, !noalias !155663, !nonnull !3508, !noundef !3508 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !155707, !alias.scope !155672, !noalias !155663, !nonnull !3508, !noundef !3508
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !155708
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit, label %bb.e, !dbg !155709

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !155710
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !155711, !alias.scope !155672, !noalias !155663
  %i.aj = load i32, ptr %i.af, align 4, !dbg !155712, !noalias !155663, !noundef !3508
  %i.ak = zext i32 %i.aj to i64, !dbg !155712     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !155713
  %i.am = load i32, ptr %i.al, align 4, !dbg !155713, !noalias !155663, !noundef !3508 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !155713     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !155714 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !155715
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !155716

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !155716
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !155716

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !155716
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !155716
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !155716
  %scevgep4 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !155716
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !155716
  %scevgep6 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !155716
  %bound0 = icmp ult ptr %scevgep, %scevgep6, !dbg !155716
  %bound1 = icmp ult ptr %scevgep5, %scevgep4, !dbg !155716
  %found.conflict = and i1 %bound0, %bound1, !dbg !155716
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i32 %i.am, 16, !dbg !155716
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !155716

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !155716

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !155717 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !155718
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !155718, !alias.scope !155674, !noalias !155675
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !155718, !alias.scope !155674, !noalias !155675
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !155719 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !155720
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !155720, !alias.scope !155676, !noalias !155663
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !155720, !alias.scope !155676, !noalias !155663
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !155716
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !155716, !llvm.loop !155655

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !155716
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !155716

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.e
  br label %.loopexit.i, !dbg !155702

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.an, 4294967292             ; 3 uses
  %i.az = add nuw nsw i64 %n.vec9, %i.ak
  %broadcast.splatinsert10 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat11 = shufflevector <4 x i16> %broadcast.splatinsert10, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index12, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !155717
  store <4 x i16> %broadcast.splat11, ptr %i.bb, align 2, !dbg !155718, !alias.scope !155674, !noalias !155675
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !155719
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !155720, !alias.scope !155676, !noalias !155663
  %index.next13 = add nuw i64 %index12, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next13, %n.vec9, !dbg !155716
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !155716, !llvm.loop !155656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec9, %i.an, !dbg !155716
  br i1 %cmp.n14, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !155716

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !155716

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !155716
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !155716
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !155716
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !155721, !noalias !155663
  %scevgep16.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !155716
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep16.i, i8 0, i64 %i.an, i1 false), !dbg !155722, !noalias !155663
  br label %.loopexit.i.backedge, !dbg !155702

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !155723 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !155717
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !155718, !noalias !155663
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !155719
  store i8 1, ptr %i.bi, align 1, !dbg !155720, !noalias !155663
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !155715
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !155716, !llvm.loop !155662

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !155724, !noalias !155663
  unreachable, !dbg !155724

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp16, !dbg !155724

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155725, !noalias !155663
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !155687, !noalias !155663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !155687, !noalias !155663
  ret void, !dbg !155726
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !155727 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !155903, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !155904, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !155904
  %.val1 = load i64, ptr %i.d, align 8, !dbg !155904, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155888), !dbg !155904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !155905, !noalias !155888
  %i.e = load ptr, ptr %i.c, align 8, !dbg !155906, !alias.scope !155888, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !155907, !noalias !155888
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !155908
  %i.g = load ptr, ptr %i.f, align 8, !dbg !155908, !alias.scope !155888, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !155909
  %i.i = load i64, ptr %i.h, align 8, !dbg !155909, !noalias !155888, !noundef !3508 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !155910      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !155911
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !155911
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !155911, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !155912, !noalias !155888

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.i unwind label %bb.h, !dbg !155913, !noalias !155888

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !155914
  %i.m = load ptr, ptr %i.l, align 8, !dbg !155914, !noalias !155888, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !155915 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !155916
  %i.p = load ptr, ptr %i.o, align 8, !dbg !155916, !alias.scope !155888, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !155917, !noalias !155888, !noundef !3508 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !155918
  %i.s = load ptr, ptr %i.r, align 8, !dbg !155918, !alias.scope !155888, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !155919, !noalias !155888, !noundef !3508 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155920, !noalias !155888
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !155921
  %i.v = load ptr, ptr %i.u, align 8, !dbg !155921, !noalias !155888, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !155922
  %i.x = load i64, ptr %i.w, align 8, !dbg !155922, !noalias !155888, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !155923
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !155924
  %i.aa = load i64, ptr %i.z, align 8, !dbg !155924, !noalias !155888, !noundef !3508
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !155925
  call void @llvm.experimental.noalias.scope.decl(metadata !155896), !dbg !155926
  call void @llvm.experimental.noalias.scope.decl(metadata !155897), !dbg !155927
  store i64 0, ptr %i.a, align 8, !dbg !155928, !alias.scope !155898, !noalias !155888
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !155928
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !155928, !alias.scope !155898, !noalias !155888
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !155928
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !155928, !alias.scope !155898, !noalias !155888
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !155928
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !155928, !alias.scope !155898, !noalias !155888
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !155928
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !155928, !alias.scope !155898, !noalias !155888
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !155928 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !155928, !alias.scope !155899, !noalias !155888
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !155928 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !155928, !alias.scope !155899, !noalias !155888
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !155928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !155928, !alias.scope !155899, !noalias !155888
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !155929, !noalias !155888 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.ag = extractvalue { i32, i32 } %i.af, 0, !dbg !155930 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !155931
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !155932

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, i32 } %.pn.i.i.i, 1, !dbg !155930 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !155933, !alias.scope !155900, !noalias !155888, !nonnull !3508, !noundef !3508 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !155934, !alias.scope !155900, !noalias !155888, !nonnull !3508, !noundef !3508
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !155935
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_0B8_.exit, label %bb.d, !dbg !155936

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !155937
  store ptr %i.am, ptr %i.ac, align 8, !dbg !155938, !alias.scope !155900, !noalias !155888
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !155939
  %i.ao = load i32, ptr %i.an, align 4, !dbg !155939, !range !3605, !noalias !155901, !noundef !3508
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !155940
  br i1 %i.ap, label %bb.f, label %bb.e, !dbg !155940

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !155941, !noalias !155901, !noundef !3508
  br label %bb.f, !dbg !155942

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], !dbg !155943 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !155944
  %i.as = load i32, ptr %i.ar, align 8, !dbg !155944, !noalias !155901, !noundef !3508 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !155944
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !155945
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !155946 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !155946 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !155947
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionmERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !155948

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !155948 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !155948
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !155948
  %xtraiter = and i64 %i.az, 3, !dbg !155948      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !155948
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !155948
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !156783
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !156784

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !156785
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !156786, !noalias !156737, !noundef !3508
  %i.cm = zext i32 %i.cl to i64, !dbg !156786     ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cm, !dbg !156787
  store i16 0, ptr %i.cn, align 2, !dbg !156788, !noalias !156737
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !156789
  store i8 0, ptr %i.co, align 1, !dbg !156790, !noalias !156737
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !156785
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !156786, !noalias !156737, !noundef !3508
  %i.cr = zext i32 %i.cq to i64, !dbg !156786     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !156787
  store i16 0, ptr %i.cs, align 2, !dbg !156788, !noalias !156737
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !156789
  store i8 0, ptr %i.ct, align 1, !dbg !156790, !noalias !156737
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !156785
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !156786, !noalias !156737, !noundef !3508
  %i.cw = zext i32 %i.cv to i64, !dbg !156786     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !156787
  store i16 0, ptr %i.cx, align 2, !dbg !156788, !noalias !156737
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !156789
  store i8 0, ptr %i.cy, align 1, !dbg !156790, !noalias !156737
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !156785 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !156786, !noalias !156737, !noundef !3508
  %i.db = zext i32 %i.da to i64, !dbg !156786     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !156787
  store i16 0, ptr %i.dc, align 2, !dbg !156788, !noalias !156737
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !156789
  store i8 0, ptr %i.dd, align 1, !dbg !156790, !noalias !156737
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !156783
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156784

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.f
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !156765, !noalias !156724 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !156766 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !156767
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156768

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !156795, !noalias !156724
  unreachable, !dbg !156795

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10, !dbg !156795

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156796, !noalias !156724
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156749, !noalias !156724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156749, !noalias !156724
  ret void, !dbg !156797
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156798 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !156935, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !156936, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !156936
  %.val1 = load i64, ptr %i.d, align 8, !dbg !156936, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156921), !dbg !156936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !156937, !noalias !156921
  %i.e = load ptr, ptr %i.c, align 8, !dbg !156938, !alias.scope !156921, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !156939, !noalias !156921
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !156940
  %i.g = load ptr, ptr %i.f, align 8, !dbg !156940, !alias.scope !156921, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !156941      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !156942
  %i.j = load i64, ptr %i.i, align 8, !dbg !156942, !noalias !156921, !noundef !3508 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !156943
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !156943
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !156943, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !156944, !noalias !156921

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i, %bb.b
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.h unwind label %bb.g, !dbg !156945, !noalias !156921

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !156946
  %i.m = load ptr, ptr %i.l, align 8, !dbg !156946, !noalias !156921, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !156947 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !156948
  %i.p = load ptr, ptr %i.o, align 8, !dbg !156948, !alias.scope !156921, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !156949, !noalias !156921, !noundef !3508 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !156950
  %i.s = load ptr, ptr %i.r, align 8, !dbg !156950, !alias.scope !156921, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !156951, !noalias !156921, !noundef !3508 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !156952
  %i.v = load ptr, ptr %i.u, align 8, !dbg !156952, !noalias !156921, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !156953
  %i.x = load i64, ptr %i.w, align 8, !dbg !156953, !noalias !156921, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !156954
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !156955
  %i.aa = load i64, ptr %i.z, align 8, !dbg !156955, !noalias !156921, !noundef !3508
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !156956
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !156957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !156957, !noalias !156921
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !156958, !noalias !156921
  store i64 0, ptr %i.a, align 8, !dbg !156957, !noalias !156921
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !156957
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !156957
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !156957
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !156957
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !156957 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !156957 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156957, !noalias !156921
  br label %.loopexit.i, !dbg !156959

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.c
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !156960, !noalias !156921 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !156961 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !156961 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !156962
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit, label %bb.d, !dbg !156963

bb.d:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156964, !alias.scope !156930, !noalias !156921, !nonnull !3508, !noundef !3508 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !156965, !alias.scope !156930, !noalias !156921, !nonnull !3508, !noundef !3508
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !156966
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit, label %bb.e, !dbg !156967

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !156968
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !156969, !alias.scope !156930, !noalias !156921
  %i.aj = load i32, ptr %i.af, align 4, !dbg !156970, !noalias !156921, !noundef !3508
  %i.ak = zext i32 %i.aj to i64, !dbg !156970     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !156971
  %i.am = load i32, ptr %i.al, align 4, !dbg !156971, !noalias !156921, !noundef !3508 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !156971     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !156972 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !156973
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !156974

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !156974
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !156974

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !156974
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !156974
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !156974
  %scevgep4 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !156974
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !156974
  %scevgep6 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !156974
  %bound0 = icmp ult ptr %scevgep, %scevgep6, !dbg !156974
  %bound1 = icmp ult ptr %scevgep5, %scevgep4, !dbg !156974
  %found.conflict = and i1 %bound0, %bound1, !dbg !156974
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i32 %i.am, 16, !dbg !156974
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !156974

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !156974

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !156975 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !156976
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !156976, !alias.scope !156932, !noalias !156933
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !156976, !alias.scope !156932, !noalias !156933
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !156977 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !156978
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !156978, !alias.scope !156934, !noalias !156921
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !156978, !alias.scope !156934, !noalias !156921
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !156974
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !156974, !llvm.loop !156913

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !156974
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !156974

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.e
  br label %.loopexit.i, !dbg !156960

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.an, 4294967292             ; 3 uses
  %i.az = add nuw nsw i64 %n.vec9, %i.ak
  %broadcast.splatinsert10 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat11 = shufflevector <4 x i16> %broadcast.splatinsert10, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index12, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !156975
  store <4 x i16> %broadcast.splat11, ptr %i.bb, align 2, !dbg !156976, !alias.scope !156932, !noalias !156933
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !156977
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !156978, !alias.scope !156934, !noalias !156921
  %index.next13 = add nuw i64 %index12, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next13, %n.vec9, !dbg !156974
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !156974, !llvm.loop !156914

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec9, %i.an, !dbg !156974
  br i1 %cmp.n14, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !156974

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !156974

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !156974
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !156974
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !156974
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !156979, !noalias !156921
  %scevgep16.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !156974
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep16.i, i8 0, i64 %i.an, i1 false), !dbg !156980, !noalias !156921
  br label %.loopexit.i.backedge, !dbg !156960

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !156981 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !156975
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !156976, !noalias !156921
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !156977
  store i8 1, ptr %i.bi, align 1, !dbg !156978, !noalias !156921
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !156973
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !156974, !llvm.loop !156920

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !156982, !noalias !156921
  unreachable, !dbg !156982

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp16, !dbg !156982

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156983, !noalias !156921
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !156945, !noalias !156921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156945, !noalias !156921
  ret void, !dbg !156984
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !156985 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !157162, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !157163, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157163
  %.val1 = load i64, ptr %i.d, align 8, !dbg !157163, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157147), !dbg !157163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157164, !noalias !157147
  %i.e = load ptr, ptr %i.c, align 8, !dbg !157165, !alias.scope !157147, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11Float32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !157166, !noalias !157147
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !157167
  %i.g = load ptr, ptr %i.f, align 8, !dbg !157167, !alias.scope !157147, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !157168
  %i.i = load i64, ptr %i.h, align 8, !dbg !157168, !noalias !157147, !noundef !3508 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !157169      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !157170
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !157170
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !157170, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !157171, !noalias !157147

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.i unwind label %bb.h, !dbg !157172, !noalias !157147

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !157173
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157173, !noalias !157147, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !157174 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !157175
  %i.p = load ptr, ptr %i.o, align 8, !dbg !157175, !alias.scope !157147, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !157176, !noalias !157147, !noundef !3508 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !157177
  %i.s = load ptr, ptr %i.r, align 8, !dbg !157177, !alias.scope !157147, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !157178, !noalias !157147, !noundef !3508 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157179, !noalias !157147
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157180
  %i.v = load ptr, ptr %i.u, align 8, !dbg !157180, !noalias !157147, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157181
  %i.x = load i64, ptr %i.w, align 8, !dbg !157181, !noalias !157147, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !157182
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !157183
  %i.aa = load i64, ptr %i.z, align 8, !dbg !157183, !noalias !157147, !noundef !3508
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !157184
  call void @llvm.experimental.noalias.scope.decl(metadata !157155), !dbg !157185
  call void @llvm.experimental.noalias.scope.decl(metadata !157156), !dbg !157186
  store i64 0, ptr %i.a, align 8, !dbg !157187, !alias.scope !157157, !noalias !157147
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !157187
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !157187, !alias.scope !157157, !noalias !157147
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !157187
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !157187, !alias.scope !157157, !noalias !157147
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !157187
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !157187, !alias.scope !157157, !noalias !157147
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !157187
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !157187, !alias.scope !157157, !noalias !157147
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !157187 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !157187, !alias.scope !157158, !noalias !157147
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !157187 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !157187, !alias.scope !157158, !noalias !157147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !157187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !157187, !alias.scope !157158, !noalias !157147
  %i.af = invoke fastcc { i32, float } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityfINtNtB7_6copied6CopiedIB1x_fEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !157188, !noalias !157147 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.ag = extractvalue { i32, float } %i.af, 0, !dbg !157189 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !157190
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !157191

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, float } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, float } %.pn.i.i.i, 1, !dbg !157189 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !157192, !alias.scope !157159, !noalias !157147, !nonnull !3508, !noundef !3508 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !157193, !alias.scope !157159, !noalias !157147, !nonnull !3508, !noundef !3508
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !157194
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_0B8_.exit, label %bb.d, !dbg !157195

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !157196
  store ptr %i.am, ptr %i.ac, align 8, !dbg !157197, !alias.scope !157159, !noalias !157147
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !157198
  %i.ao = load i32, ptr %i.an, align 4, !dbg !157198, !range !3605, !noalias !157160, !noundef !3508
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !157199
  br i1 %i.ap, label %bb.f, label %bb.e, !dbg !157199

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !157200, !noalias !157160, !noundef !3508
  br label %bb.f, !dbg !157201

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], !dbg !157202 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !157203
  %i.as = load i32, ptr %i.ar, align 8, !dbg !157203, !noalias !157160, !noundef !3508 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !157203
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !157204
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !157205 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !157205 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !157206
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionfERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !157207

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !157207 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !157207
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !157207
  %xtraiter = and i64 %i.az, 3, !dbg !157207      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !157207
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !157207
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  %i.cj = icmp eq ptr %i.ce, %i.au, !dbg !158901
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !dbg !158902

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i
  %.sroa.02.01.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.02.01.i.i.i.i.i.unr, %.lr.ph.split.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 4, !dbg !158903
  %i.cl = load i32, ptr %.sroa.02.01.i.i.i.i.i, align 4, !dbg !158904, !noalias !158855, !noundef !3508
  %i.cm = zext i32 %i.cl to i64, !dbg !158904     ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cm, !dbg !158905
  store i16 0, ptr %i.cn, align 2, !dbg !158906, !noalias !158855
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !158907
  store i8 0, ptr %i.co, align 1, !dbg !158908, !noalias !158855
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !158903
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !158904, !noalias !158855, !noundef !3508
  %i.cr = zext i32 %i.cq to i64, !dbg !158904     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !158905
  store i16 0, ptr %i.cs, align 2, !dbg !158906, !noalias !158855
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !158907
  store i8 0, ptr %i.ct, align 1, !dbg !158908, !noalias !158855
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !158903
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !158904, !noalias !158855, !noundef !3508
  %i.cw = zext i32 %i.cv to i64, !dbg !158904     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !158905
  store i16 0, ptr %i.cx, align 2, !dbg !158906, !noalias !158855
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !158907
  store i8 0, ptr %i.cy, align 1, !dbg !158908, !noalias !158855
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !158903 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !158904, !noalias !158855, !noundef !3508
  %i.db = zext i32 %i.da to i64, !dbg !158904     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !158905
  store i16 0, ptr %i.dc, align 2, !dbg !158906, !noalias !158855
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !158907
  store i8 0, ptr %i.dd, align 1, !dbg !158908, !noalias !158855
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !158901
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !158902

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.f
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !158883, !noalias !158842 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !158884 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !158885
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !158886

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !158913, !noalias !158842
  unreachable, !dbg !158913

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10, !dbg !158913

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !158914, !noalias !158842
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !158867, !noalias !158842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !158867, !noalias !158842
  ret void, !dbg !158915
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !158916 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159053, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159054, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159054
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159054, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159039), !dbg !159054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159055, !noalias !159039
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159056, !alias.scope !159039, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159057, !noalias !159039
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159058
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159058, !alias.scope !159039, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = add i64 %.val1, %.val, !dbg !159059      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !159060
  %i.j = load i64, ptr %i.i, align 8, !dbg !159060, !noalias !159039, !noundef !3508 ; 2 uses
  %i.k = icmp ult i64 %i.h, %.val, !dbg !159061
  %.not.i = icmp ugt i64 %i.h, %i.j
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159061
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !159061, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !159062, !noalias !159039

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i, %bb.b
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.h unwind label %bb.g, !dbg !159063, !noalias !159039

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !159064
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159064, !noalias !159039, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val, !dbg !159065 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159066
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159066, !alias.scope !159039, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159067, !noalias !159039, !noundef !3508 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159068
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159068, !alias.scope !159039, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159069, !noalias !159039, !noundef !3508 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159070
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159070, !noalias !159039, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159071
  %i.x = load i64, ptr %i.w, align 8, !dbg !159071, !noalias !159039, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159072
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159073
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159073, !noalias !159039, !noundef !3508
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.val1, !dbg !159074
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159075, !noalias !159039
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !159076, !noalias !159039
  store i64 0, ptr %i.a, align 8, !dbg !159075, !noalias !159039
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159075
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159075
  store ptr %i.v, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159075
  store ptr %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159075
  store i64 %i.aa, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159075 ; 3 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159075 ; 2 uses
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159075, !noalias !159039
  br label %.loopexit.i, !dbg !159077

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.c
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !159078, !noalias !159039 ; 2 uses

.noexc.i:                                         ; preds = %.loopexit.i
  %i.ad = extractvalue { i16, i16 } %i.ac, 0, !dbg !159079 ; 2 uses
  %i.ae = extractvalue { i16, i16 } %i.ac, 1, !dbg !159079 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ad, 2, !dbg !159080
  br i1 %.not.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit, label %bb.d, !dbg !159081

bb.d:                                             ; preds = %.noexc.i
  %i.af = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159082, !alias.scope !159048, !noalias !159039, !nonnull !3508, !noundef !3508 ; 4 uses
  %i.ag = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !159083, !alias.scope !159048, !noalias !159039, !nonnull !3508, !noundef !3508
  %i.ah = icmp eq ptr %i.af, %i.ag, !dbg !159084
  br i1 %i.ah, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit, label %bb.e, !dbg !159085

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !159086
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !159087, !alias.scope !159048, !noalias !159039
  %i.aj = load i32, ptr %i.af, align 4, !dbg !159088, !noalias !159039, !noundef !3508
  %i.ak = zext i32 %i.aj to i64, !dbg !159088     ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !159089
  %i.am = load i32, ptr %i.al, align 4, !dbg !159089, !noalias !159039, !noundef !3508 ; 4 uses
  %i.an = zext i32 %i.am to i64, !dbg !159089     ; 8 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ak, !dbg !159090 ; 3 uses
  %.not13.i = icmp eq i32 %i.am, 0, !dbg !159091
  br i1 %.not13.i, label %.loopexit.i.backedge, label %.lr.ph.i, !dbg !159092

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = trunc i16 %i.ad to i1
  br i1 %i.ap, label %iter.check, label %.lr.ph.split.preheader.i

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %i.am, 4, !dbg !159092
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.memcheck, !dbg !159092

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = shl nuw nsw i64 %i.ak, 1, !dbg !159092
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aq, !dbg !159092
  %i.ar = shl nuw nsw i64 %i.ao, 1, !dbg !159092
  %scevgep4 = getelementptr i8, ptr %i.q, i64 %i.ar, !dbg !159092
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159092
  %scevgep6 = getelementptr i8, ptr %i.t, i64 %i.ao, !dbg !159092
  %bound0 = icmp ult ptr %scevgep, %scevgep6, !dbg !159092
  %bound1 = icmp ult ptr %scevgep5, %scevgep4, !dbg !159092
  %found.conflict = and i1 %bound0, %bound1, !dbg !159092
  br i1 %found.conflict, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i32 %i.am, 16, !dbg !159092
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !159092

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4294967280              ; 4 uses
  %i.at = add nuw nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !159092

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ak               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au, !dbg !159093 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !159094
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !dbg !159094, !alias.scope !159050, !noalias !159051
  store <8 x i16> %broadcast.splat, ptr %i.aw, align 2, !dbg !159094, !alias.scope !159050, !noalias !159051
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !159095 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !159096
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !159096, !alias.scope !159052, !noalias !159039
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !159096, !alias.scope !159052, !noalias !159039
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !159092
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !159092, !llvm.loop !159031

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an, !dbg !159092
  br i1 %cmp.n, label %.loopexit.i.backedge, label %vec.epilog.iter.check, !dbg !159092

.loopexit.i.backedge:                             ; preds = %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.split.preheader.i, %bb.e
  br label %.loopexit.i, !dbg !159078

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.an, 4294967292             ; 3 uses
  %i.az = add nuw nsw i64 %n.vec9, %i.ak
  %broadcast.splatinsert10 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat11 = shufflevector <4 x i16> %broadcast.splatinsert10, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index12, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !159093
  store <4 x i16> %broadcast.splat11, ptr %i.bb, align 2, !dbg !159094, !alias.scope !159050, !noalias !159051
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !159095
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !159096, !alias.scope !159052, !noalias !159039
  %index.next13 = add nuw i64 %index12, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next13, %n.vec9, !dbg !159092
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !159092, !llvm.loop !159032

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec9, %i.an, !dbg !159092
  br i1 %cmp.n14, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !159092

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !159092

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !159092
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !159092
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !159092
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !159097, !noalias !159039
  %scevgep16.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159092
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep16.i, i8 0, i64 %i.an, i1 false), !dbg !159098, !noalias !159039
  br label %.loopexit.i.backedge, !dbg !159078

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !159099 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !159093
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !159094, !noalias !159039
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !159095
  store i8 1, ptr %i.bi, align 1, !dbg !159096, !noalias !159039
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !159091
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !159092, !llvm.loop !159038

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !159100, !noalias !159039
  unreachable, !dbg !159100

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp16, !dbg !159100

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs1_0B8_.exit: ; preds = %.noexc.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159101, !noalias !159039
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b), !dbg !159063, !noalias !159039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !159063, !noalias !159039
  ret void, !dbg !159102
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !159103 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 12 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !159280, !nonnull !3508, !align !3638, !noundef !3508 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !159281, !noundef !3508 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !159281
  %.val1 = load i64, ptr %i.d, align 8, !dbg !159281, !noundef !3508 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159265), !dbg !159281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !159282, !noalias !159265
  %i.e = load ptr, ptr %i.c, align 8, !dbg !159283, !alias.scope !159265, !nonnull !3508, !align !3638, !noundef !3508
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeE5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.e, i64 noundef %.val, i64 noundef %.val1), !dbg !159284, !noalias !159265
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !159285
  %i.g = load ptr, ptr %i.f, align 8, !dbg !159285, !alias.scope !159265, !nonnull !3508, !align !3638, !noundef !3508 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !159286
  %i.i = load i64, ptr %i.h, align 8, !dbg !159286, !noalias !159265, !noundef !3508 ; 2 uses
  %i.j = add i64 %.val1, %.val, !dbg !159287      ; 3 uses
  %i.k = icmp ult i64 %i.j, %.val, !dbg !159288
  %.not.i = icmp ugt i64 %i.j, %i.i
  %or.cond.i = or i1 %i.k, %.not.i, !dbg !159288
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !159288, !prof !3969

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !159289, !noalias !159265

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
          to label %bb.i unwind label %bb.h, !dbg !159290, !noalias !159265

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !159291
  %i.m = load ptr, ptr %i.l, align 8, !dbg !159291, !noalias !159265, !nonnull !3508, !noundef !3508
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val, !dbg !159292 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !159293
  %i.p = load ptr, ptr %i.o, align 8, !dbg !159293, !alias.scope !159265, !nonnull !3508, !align !3638, !noundef !3508
  %i.q = load ptr, ptr %i.p, align 8, !dbg !159294, !noalias !159265, !noundef !3508 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !159295
  %i.s = load ptr, ptr %i.r, align 8, !dbg !159295, !alias.scope !159265, !nonnull !3508, !align !3638, !noundef !3508
  %i.t = load ptr, ptr %i.s, align 8, !dbg !159296, !noalias !159265, !noundef !3508 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !159297, !noalias !159265
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !159298
  %i.v = load ptr, ptr %i.u, align 8, !dbg !159298, !noalias !159265, !nonnull !3508, !noundef !3508 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !159299
  %i.x = load i64, ptr %i.w, align 8, !dbg !159299, !noalias !159265, !noundef !3508
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x, !dbg !159300
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !159301
  %i.aa = load i64, ptr %i.z, align 8, !dbg !159301, !noalias !159265, !noundef !3508
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val1, !dbg !159302
  call void @llvm.experimental.noalias.scope.decl(metadata !159273), !dbg !159303
  call void @llvm.experimental.noalias.scope.decl(metadata !159274), !dbg !159304
  store i64 0, ptr %i.a, align 8, !dbg !159305, !alias.scope !159275, !noalias !159265
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !159305
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !159305, !alias.scope !159275, !noalias !159265
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !159305
  store ptr %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !159305, !alias.scope !159275, !noalias !159265
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !159305
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !159305, !alias.scope !159275, !noalias !159265
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !159305
  store i64 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !159305, !alias.scope !159275, !noalias !159265
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !159305 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !dbg !159305, !alias.scope !159276, !noalias !159265
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !159305 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !159305, !alias.scope !159276, !noalias !159265
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 168, !dbg !159305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !dbg !159305, !alias.scope !159276, !noalias !159265
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditylINtNtB7_6copied6CopiedIB1x_lEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !159306, !noalias !159265 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.ag = extractvalue { i32, i32 } %i.af, 0, !dbg !159307 ; 2 uses
  %.not.i8.i.i.i = icmp eq i32 %i.ag, 2, !dbg !159308
  br i1 %.not.i8.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159309

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc14.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.df, %.noexc14.i ], [ %i.af, %.noexc.i ]
  %i.ah = phi i32 [ %i.dg, %.noexc14.i ], [ %i.ag, %.noexc.i ]
  %i.ai = extractvalue { i32, i32 } %.pn.i.i.i, 1, !dbg !159307 ; 5 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !dbg !159310, !alias.scope !159277, !noalias !159265, !nonnull !3508, !noundef !3508 ; 6 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !dbg !159311, !alias.scope !159277, !noalias !159265, !nonnull !3508, !noundef !3508
  %i.al = icmp eq ptr %i.aj, %i.ak, !dbg !159312
  br i1 %i.al, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_0B8_.exit, label %bb.d, !dbg !159313

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !159314
  store ptr %i.am, ptr %i.ac, align 8, !dbg !159315, !alias.scope !159277, !noalias !159265
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12, !dbg !159316
  %i.ao = load i32, ptr %i.an, align 4, !dbg !159316, !range !3605, !noalias !159278, !noundef !3508
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !159317
  br i1 %i.ap, label %bb.f, label %bb.e, !dbg !159317

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !dbg !159318, !noalias !159278, !noundef !3508
  br label %bb.f, !dbg !159319

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], !dbg !159320 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !159321
  %i.as = load i32, ptr %i.ar, align 8, !dbg !159321, !noalias !159278, !noundef !3508 ; 2 uses
  %i.at = zext i32 %i.as to i64, !dbg !159321
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i.i.i) ], !dbg !159322
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.at, 2, !dbg !159323 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 %.idx.i.i.i.i.i, !dbg !159323 ; 2 uses
  %i.av = icmp eq i32 %i.as, 0, !dbg !159324
  br i1 %i.av, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionlERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !159325

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aw = trunc nuw i32 %i.ah to i1
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = add nsw i64 %.idx.i.i.i.i.i, -4, !dbg !159325 ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2, !dbg !159325
  %i.az = add nuw nsw i64 %i.ay, 1, !dbg !159325
  %xtraiter = and i64 %i.az, 3, !dbg !159325      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !159325
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.i.i.prol, !dbg !159325
end_hunk_2
