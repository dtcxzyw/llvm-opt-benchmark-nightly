Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i16 0, ptr %i.cn, align 2, !dbg !155714, !noalias !155663
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !155715
  store i8 0, ptr %i.co, align 1, !dbg !155716, !noalias !155663
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !155711
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !155712, !noalias !155663, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !155712     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !155713
  store i16 0, ptr %i.cs, align 2, !dbg !155714, !noalias !155663
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !155715
  store i8 0, ptr %i.ct, align 1, !dbg !155716, !noalias !155663
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !155711
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !155712, !noalias !155663, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !155712     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !155713
  store i16 0, ptr %i.cx, align 2, !dbg !155714, !noalias !155663
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !155715
  store i8 0, ptr %i.cy, align 1, !dbg !155716, !noalias !155663
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !155711 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !155712, !noalias !155663, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !155712     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !155713
  store i16 0, ptr %i.dc, align 2, !dbg !155714, !noalias !155663
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !155715
  store i8 0, ptr %i.dd, align 1, !dbg !155716, !noalias !155663
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !155709
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !155710

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !155691, !noalias !155648 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptiontERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !155692 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !155693
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !155694

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !155721, !noalias !155648
  unreachable, !dbg !155721

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !155721

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155722, !noalias !155648
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditytINtNtB7_6copied6CopiedIB1x_tEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !155905 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !155906
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !155902
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !155902, !llvm.loop !155840

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
  %i.az = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !155903
  store <4 x i16> %broadcast.splat10, ptr %i.bb, align 2, !dbg !155904, !alias.scope !155860, !noalias !155861
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !155905
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !155906, !alias.scope !155862, !noalias !155848
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next12, %n.vec8, !dbg !155902
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !155902, !llvm.loop !155841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !155902
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !155902

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !155902

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !155902
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !155902
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !155902
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !155907, !noalias !155848
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !155902
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !155908, !noalias !155848
  br label %.loopexit.i.backedge, !dbg !155888

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !155909 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !155903
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !155904, !noalias !155848
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !155905
  store i8 1, ptr %i.bi, align 1, !dbg !155906, !noalias !155848
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !155901
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !155902, !llvm.loop !155847

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !155910, !noalias !155848
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i16 0, ptr %i.cn, align 2, !dbg !156987, !noalias !156936
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !156988
  store i8 0, ptr %i.co, align 1, !dbg !156989, !noalias !156936
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !156984
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !156985, !noalias !156936, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !156985     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !156986
  store i16 0, ptr %i.cs, align 2, !dbg !156987, !noalias !156936
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !156988
  store i8 0, ptr %i.ct, align 1, !dbg !156989, !noalias !156936
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !156984
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !156985, !noalias !156936, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !156985     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !156986
  store i16 0, ptr %i.cx, align 2, !dbg !156987, !noalias !156936
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !156988
  store i8 0, ptr %i.cy, align 1, !dbg !156989, !noalias !156936
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !156984 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !156985, !noalias !156936, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !156985     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !156986
  store i16 0, ptr %i.dc, align 2, !dbg !156987, !noalias !156936
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !156988
  store i8 0, ptr %i.dd, align 1, !dbg !156989, !noalias !156936
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !156982
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !156983

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !156964, !noalias !156921 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtB1G_7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_00E0B30_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !156965 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !156966
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !156967

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !156994, !noalias !156921
  unreachable, !dbg !156994

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !156994

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !156995, !noalias !156921
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtB7_6copied6CopiedIB1x_B6T_EENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !157178 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !157179
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !157175
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !157175, !llvm.loop !157113

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
  %i.az = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !157176
  store <4 x i16> %broadcast.splat10, ptr %i.bb, align 2, !dbg !157177, !alias.scope !157133, !noalias !157134
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !157178
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !157179, !alias.scope !157135, !noalias !157121
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next12, %n.vec8, !dbg !157175
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !157175, !llvm.loop !157114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !157175
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !157175

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !157175

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !157175
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !157175
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !157175
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !157180, !noalias !157121
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !157175
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !157181, !noalias !157121
  br label %.loopexit.i.backedge, !dbg !157161

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !157182 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !157176
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !157177, !noalias !157121
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !157178
  store i8 1, ptr %i.bi, align 1, !dbg !157179, !noalias !157121
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !157174
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !157175, !llvm.loop !157120

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !157183, !noalias !157121
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.af = invoke fastcc { i32, float } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes11Float32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValidityfINtNtB7_6copied6CopiedIB1x_fEENtNtB67_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0INtB6_5FnMutTRTjjEEE8call_mutBW_:bb.a
  store i16 0, ptr %i.cn, align 2, !dbg !159126, !noalias !159075
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cm, !dbg !159127
  store i8 0, ptr %i.co, align 1, !dbg !159128, !noalias !159075
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 8, !dbg !159123
  %i.cq = load i32, ptr %i.ck, align 4, !dbg !159124, !noalias !159075, !noundef !3509
  %i.cr = zext i32 %i.cq to i64, !dbg !159124     ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr, !dbg !159125
  store i16 0, ptr %i.cs, align 2, !dbg !159126, !noalias !159075
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cr, !dbg !159127
  store i8 0, ptr %i.ct, align 1, !dbg !159128, !noalias !159075
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 12, !dbg !159123
  %i.cv = load i32, ptr %i.cp, align 4, !dbg !159124, !noalias !159075, !noundef !3509
  %i.cw = zext i32 %i.cv to i64, !dbg !159124     ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cw, !dbg !159125
  store i16 0, ptr %i.cx, align 2, !dbg !159126, !noalias !159075
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cw, !dbg !159127
  store i8 0, ptr %i.cy, align 1, !dbg !159128, !noalias !159075
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i, i64 16, !dbg !159123 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 4, !dbg !159124, !noalias !159075, !noundef !3509
  %i.db = zext i32 %i.da to i64, !dbg !159124     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db, !dbg !159125
  store i16 0, ptr %i.dc, align 2, !dbg !159126, !noalias !159075
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db, !dbg !159127
  store i8 0, ptr %i.dd, align 1, !dbg !159128, !noalias !159075
  %i.de = icmp eq ptr %i.cz, %i.au, !dbg !159121
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !159122

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i.i.i, %bb.g
  %i.df = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !159103, !noalias !159060 ; 2 uses

.noexc14.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtBe_6option6OptionsERINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_00E0B2G_.exit.i.i.i
  %i.dg = extractvalue { i16, i16 } %i.df, 0, !dbg !159104 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dg, 2, !dbg !159105
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit, label %.lr.ph.i.i.i, !dbg !159106

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !159133, !noalias !159060
  unreachable, !dbg !159133

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi.i, !dbg !159133

_RNCINvNtNtCskY9G75ZWc4U_11polars_expr11expressions6window11set_numericNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEs0_0B8_.exit: ; preds = %.lr.ph.i.i.i, %.noexc14.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !159134, !noalias !159060
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.ac = invoke fastcc { i16, i16 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int16TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditysINtNtB7_6copied6CopiedIB1x_sEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au, !dbg !159317 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !159318
  store <8 x i8> splat (i8 1), ptr %2, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  store <8 x i8> splat (i8 1), ptr %i.ax, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec, !dbg !159314
  br i1 %i.ay, label %middle.block, label %vector.body, !dbg !159314, !llvm.loop !159252

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
  %i.az = add nuw nsw i64 %n.vec8, %i.ak
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index11, %i.ak             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ba, !dbg !159315
  store <4 x i16> %broadcast.splat10, ptr %i.bb, align 2, !dbg !159316, !alias.scope !159272, !noalias !159273
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ba, !dbg !159317
  store <4 x i8> splat (i8 1), ptr %i.bc, align 1, !dbg !159318, !alias.scope !159274, !noalias !159260
  %index.next12 = add nuw i64 %index11, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next12, %n.vec8, !dbg !159314
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !159314, !llvm.loop !159253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %i.an, !dbg !159314
  br i1 %cmp.n13, label %.loopexit.i.backedge, label %.lr.ph.split.us.i.preheader, !dbg !159314

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.011.012.us.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i, !dbg !159314

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.be = shl nuw nsw i64 %i.ak, 1, !dbg !159314
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.be, !dbg !159314
  %i.bf = shl nuw nsw i64 %i.an, 1, !dbg !159314
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 0, i64 %i.bf, i1 false), !dbg !159319, !noalias !159260
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.ak, !dbg !159314
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep15.i, i8 0, i64 %i.an, i1 false), !dbg !159320, !noalias !159260
  br label %.loopexit.i.backedge, !dbg !159300

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.011.012.us.i = phi i64 [ %i.bg, %.lr.ph.split.us.i ], [ %.sroa.011.012.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.bg = add nuw nsw i64 %.sroa.011.012.us.i, 1, !dbg !159321 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.011.012.us.i, !dbg !159315
  store i16 %i.ae, ptr %i.bh, align 2, !dbg !159316, !noalias !159260
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.011.012.us.i, !dbg !159317
  store i8 1, ptr %i.bi, align 1, !dbg !159318, !noalias !159260
  %i.bj = icmp samesign ult i64 %i.bg, %i.ao, !dbg !159313
  br i1 %i.bj, label %.lr.ph.split.us.i, label %.loopexit.i.backedge, !dbg !159314, !llvm.loop !159259

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !159322, !noalias !159260
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
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %i.j, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #55
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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.b) #52
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
  %i.af = invoke fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes9Int32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditylINtNtB7_6copied6CopiedIB1x_lEENtNtB64_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #56
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
end_hunk_2
