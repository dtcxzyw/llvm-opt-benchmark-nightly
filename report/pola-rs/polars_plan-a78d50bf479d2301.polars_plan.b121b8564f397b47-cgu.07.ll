Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.07?download=true
inline.NumInlined: 10851
inline.NumDeleted: 5377
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR8evaluate:bb.a
  %i.co = icmp slt i64 %i.cn, 0, !dbg !153169
  br i1 %i.co, label %bb.af, label %bb.ae, !dbg !153169

bb.ad:                                            ; preds = %bb.d, %bb.ae
  %.sroa.0.0 = phi ptr [ %i.cp, %bb.ae ], [ null, %bb.d ], !dbg !153170
  call void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions10python_udf15call_python_udf(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.l, i1 noundef zeroext %i.aa, ptr noundef %.sroa.0.0), !dbg !153171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !153172
  br label %bb.ag, !dbg !153173

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr %i.w, align 8, !dbg !153174, !nonnull !1971, !noundef !1971
  br label %bb.ad, !dbg !153175

bb.af:                                            ; preds = %bb.ac
  tail call void @llvm.trap(), !dbg !153176
  unreachable, !dbg !153176

bb.ag:                                            ; preds = %bb.ba, %bb.ax, %bb.v, %bb.as, %bb.ad, %bb.ab
  ret void, !dbg !153177

bb.ah:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !153178
  %i.cq = icmp eq i8 %i.ag, -40, !dbg !153179
  br i1 %i.cq, label %bb.ak, label %bb.al, !dbg !153179

bb.ai:                                            ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 23, !dbg !153180
  store i8 -38, ptr %i.cr, align 1, !dbg !153180
  br label %bb.aj, !dbg !153180

bb.aj:                                            ; preds = %bb.am, %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !153181 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !153181, !range !2233, !noundef !1971
  %.not29 = icmp eq i64 %i.ct, 2, !dbg !153181
  %. = select i1 %.not29, ptr null, ptr %i.cs, !dbg !153182
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count10count_rows(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) %.)
          to label %bb.an unwind label %.body.thread39, !dbg !153183

bb.ak:                                            ; preds = %bb.ah
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.am unwind label %.body.thread39, !dbg !153184

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !153185
  br label %bb.am, !dbg !153186

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !153187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !153188
  br label %bb.aj, !dbg !153189

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !153190
  br label %bb.ab, !dbg !153191

bb.ao:                                            ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !153117 ; 2 uses
  %i.cv = icmp ugt i8 %i.ao, -41, !dbg !153192
  br i1 %i.cv, label %bb.aq, label %bb.ap, !dbg !153192

bb.ap:                                            ; preds = %bb.ao
  %i.cw = add i8 %i.ao, 64, !dbg !153193
  %i.cx = tail call i8 @llvm.umin.i8(i8 %i.cw, i8 24), !dbg !153194
  %.sroa.0.0.i.i = zext nneg i8 %i.cx to i64, !dbg !153194
  br label %bb.ar, !dbg !153195

bb.aq:                                            ; preds = %bb.ao
  %i.cy = load ptr, ptr %i.cu, align 8, !dbg !153196, !alias.scope !153077, !noundef !1971
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !153197
  %i.da = load i64, ptr %i.cz, align 8, !dbg !153197, !alias.scope !153077, !noundef !1971
  br label %bb.ar, !dbg !153198

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.f
  %.sroa.5.0 = phi i64 [ undef, %bb.f ], [ %i.da, %bb.aq ], [ %.sroa.0.0.i.i, %bb.ap ], !dbg !153199
  %.sroa.02.0 = phi ptr [ null, %bb.f ], [ %i.cy, %bb.aq ], [ %i.cu, %bb.ap ], !dbg !153199
  invoke void @_RINvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB3_9dataframe9DataFrame6unnestNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterB1a_EEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.02.0, i64 %.sroa.5.0)
          to label %bb.ab unwind label %.body.thread39, !dbg !153200

bb.as:                                            ; preds = %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !153201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !153202
  store i64 18, ptr %0, align 8, !dbg !153201
  br label %bb.ag, !dbg !153203

bb.at:                                            ; preds = %bb.r, %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !153149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !153204, !noalias !153040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !153205, !noalias !153041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !153149, !noalias !153040
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !153149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !153149, !noalias !153040
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !153149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !153149, !noalias !153040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !153130, !noalias !153041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !153130, !noalias !153041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !153130, !noalias !153041
  invoke void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame7unpivot9UnpivotDF8unpivot2CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.j)
          to label %bb.ab unwind label %.body.thread39, !dbg !153206

bb.au:                                            ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !153156
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !153156, !nonnull !1971, !noundef !1971 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !153207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !153086
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 39, !dbg !153208
  %i.dj = load i8, ptr %i.di, align 1, !dbg !153208, !range !2129, !alias.scope !153085, !noundef !1971 ; 2 uses
  %i.dk = icmp ugt i8 %i.dj, -41, !dbg !153209
  br i1 %i.dk, label %bb.aw, label %bb.av, !dbg !153209

bb.av:                                            ; preds = %bb.au
  %i.dl = add i8 %i.dj, 64, !dbg !153210
  %i.dm = tail call i8 @llvm.umin.i8(i8 %i.dl, i8 24), !dbg !153211
  %.sroa.0.0.i.i31 = zext nneg i8 %i.dm to i64, !dbg !153211
  br label %bb.ay, !dbg !153212

bb.aw:                                            ; preds = %bb.au
  %i.dn = load ptr, ptr %i.dh, align 8, !dbg !153213, !alias.scope !153085, !noundef !1971
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24, !dbg !153214
  %i.dp = load i64, ptr %i.do, align 8, !dbg !153214, !alias.scope !153085, !noundef !1971
  br label %bb.ay, !dbg !153215

bb.ax:                                            ; preds = %bb.bg, %bb.bc, %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !153216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !153217
  store i64 18, ptr %0, align 8, !dbg !153216
  br label %bb.ag, !dbg !153218

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.sroa.01.0.i32 = phi i64 [ %i.dp, %bb.aw ], [ %.sroa.0.0.i.i31, %bb.av ], !dbg !153219
  %.sroa.0.0.i33 = phi ptr [ %i.dn, %bb.aw ], [ %i.dh, %bb.av ], !dbg !153220
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame20try_get_column_index(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i33, i64 noundef %.sroa.01.0.i32)
          to label %bb.az unwind label %.body.thread39, !dbg !153221

bb.az:                                            ; preds = %bb.ay
  %i.dr = load i64, ptr %i.h, align 8, !dbg !153222, !range !2679, !noundef !1971 ; 2 uses
  %.not25 = icmp eq i64 %i.dr, 18, !dbg !153222
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !153223
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !153223 ; 4 uses
  br i1 %.not25, label %bb.bb, label %bb.ba, !dbg !153224

bb.ba:                                            ; preds = %bb.az
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !153225
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !153226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.319.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.616.0..sroa_idx, i64 56, i1 false), !dbg !153225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153227
  store i64 %i.dr, ptr %0, align 8, !dbg !153226
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !153226
  store i64 %i.dt, ptr %.sroa.218.0..sroa_idx, align 8, !dbg !153226
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(48) %2), !dbg !153161
  br label %bb.ag, !dbg !153161

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !153227
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !153228
  %i.dv = load i64, ptr %i.du, align 8, !dbg !153228, !noundef !1971 ; 2 uses
  %i.dw = icmp ult i64 %i.dt, %i.dv, !dbg !153229
  br i1 %i.dw, label %bb.bc, label %bb.bd, !dbg !153229

bb.bc:                                            ; preds = %bb.bb
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !153230
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !153230, !nonnull !1971, !noundef !1971
  %i.dz = getelementptr inbounds nuw [160 x i8], ptr %i.dy, i64 %i.dt, !dbg !153231
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 40, !dbg !153232
  %i.eb = load i8, ptr %i.ea, align 8, !dbg !153232, !range !2356, !noundef !1971 ; 2 uses
  switch i8 %i.eb, label %bb.bf [
    i8 2, label %bb.ax
    i8 0, label %bb.bg
  ], !dbg !153233

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dt, i64 noundef %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #35
          to label %bb.be unwind label %.body.thread39, !dbg !153229

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  br label %bb.bg, !dbg !153234

bb.bg:                                            ; preds = %bb.bc, %bb.bf
  %.sroa.010.0 = phi i8 [ 1, %bb.bf ], [ %i.eb, %bb.bc ], !dbg !153235
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column15set_sorted_flag(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.dz, i8 noundef %.sroa.010.0)
          to label %bb.ax unwind label %.body.thread39, !dbg !153236

bb.bh:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body38, !dbg !153237

.body.thread:                                     ; preds = %bb.j, %.body.thread39
  %eh.lpad-body38 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread39 ], [ %.pn.pn.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(48) %2) #33
          to label %bb.bh unwind label %bb.bi, !dbg !153161

bb.bi:                                            ; preds = %.body.thread
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !153237
  unreachable, !dbg !153237
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 129) %0, i64 noundef range(i64 8, 641) %1) unnamed_addr #4 !dbg !27 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !153242
  %i.a = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 641) %1, i64 noundef range(i64 8, 129) %0) #34, !dbg !153243 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !153244
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !153245, !prof !2004

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #35, !dbg !153246
  unreachable, !dbg !153246

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !153247
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsfcROwRM8ZtH_11polars_plan5plans6schema15det_join_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 16 %3, i64 noundef range(i64 0, 82351536043346213) %4, ptr noundef nonnull align 16 %5, i64 noundef range(i64 0, 82351536043346213) %6, ptr noundef nonnull align 16 %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !153248 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 16               ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [80 x i8], align 16               ; 5 uses
  %i.n = alloca [80 x i8], align 8                ; 7 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 16               ; 5 uses
  %i.s = alloca [80 x i8], align 16               ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 16               ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [80 x i8], align 16              ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 6 uses
  %i.af = alloca [64 x i8], align 8               ; 19 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [80 x i8], align 16              ; 7 uses
  %i.ai = alloca [64 x i8], align 8               ; 19 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.632 = alloca [64 x i8], align 8          ; 6 uses
  %i.al = alloca [64 x i8], align 8               ; 13 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [48 x i8], align 8               ; 9 uses
  %i.ao = alloca [64 x i8], align 8               ; 2 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [64 x i8], align 8               ; 4 uses
  %i.ar = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.722 = alloca [64 x i8], align 8          ; 7 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [80 x i8], align 16              ; 7 uses
  %i.aw = alloca [64 x i8], align 8               ; 13 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [80 x i8], align 16              ; 7 uses
  %i.az = alloca [64 x i8], align 8               ; 15 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 112, !dbg !154018 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 136, !dbg !154018 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !154018, !range !2334, !noundef !1971
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 144, !dbg !154018
  switch i64 %i.bc, label %bb.b [
    i64 2, label %bb.c
    i64 5, label %bb.d
    i64 6, label %bb.d
  ], !dbg !154019

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !154020
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632), !dbg !153751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !153751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !153751
  %i.be = load ptr, ptr %1, align 8, !dbg !154021, !nonnull !1971, !noundef !1971 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !154022 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64, !dbg !154022
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !154022, !noundef !1971
  %i.bi = load ptr, ptr %2, align 8, !dbg !154023, !nonnull !1971, !noundef !1971 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !154024
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 64, !dbg !154024
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !154024, !noundef !1971
  %i.bm = add i64 %i.bl, %i.bh, !dbg !153698
  call void @_RNvMs0_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, i64 noundef %i.bm), !dbg !153751
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24, !dbg !154025
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !154025, !nonnull !1971, !noundef !1971 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 32, !dbg !154026
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !154026, !noundef !1971
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %i.bo, i64 %i.bq, !dbg !154027
  call void @_RINvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB6_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE6hstackNtNtBZ_5field5FieldINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBV_ENCNvXNtB11_6schemaBI_NtB4N_9SchemaExt11iter_fields0EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.aj, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.br), !dbg !154028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !154029
  %i.bs = load i64, ptr %i.ak, align 8, !dbg !154030, !range !2679, !noundef !1971 ; 2 uses
  %.not109 = icmp eq i64 %i.bs, 18, !dbg !154030
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !154031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i64 64, i1 false), !dbg !154031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !154032
  br i1 %.not109, label %bb.az, label %bb.ay, !dbg !154033

bb.c:                                             ; preds = %bb.a
  %i.bu = tail call noundef zeroext i1 @_RNvMNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4argsNtB2_8JoinArgs15should_coalesce(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ba), !dbg !154034
  br i1 %i.bu, label %bb.e, label %bb.b, !dbg !154035

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.bv = load ptr, ptr %1, align 8, !dbg !154036, !nonnull !1971, !noundef !1971 ; 2 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !dbg !154037
  %i.bx = icmp slt i64 %i.bw, 0, !dbg !154038
  br i1 %i.bx, label %bb.ax, label %bb.aw, !dbg !154038

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !154039
  call void @_RNvXs5_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtB7_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.az, i64 noundef %4), !dbg !154040
  %.idx = mul nuw nsw i64 %4, 112, !dbg !154041
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !154041
  %i.bz = icmp eq i64 %4, 0, !dbg !154042
  br i1 %i.bz, label %._crit_edge, label %.lr.ph, !dbg !153764

.lr.ph:                                           ; preds = %bb.e
  %i.ca = load ptr, ptr %1, align 8, !nonnull !1971, !noundef !1971
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  br label %bb.f, !dbg !153764

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.0292 = phi ptr [ %3, %.lr.ph ], [ %i.cd, %bb.l ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0292, i64 112, !dbg !154043 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !154044
  invoke void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR5field(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.s, ptr noundef nonnull align 16 %.sroa.0.0292, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8)
          to label %bb.g unwind label %.loopexit276, !dbg !154045

._crit_edge:                                      ; preds = %bb.l, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !154046
  invoke void @_RNvXs5_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtB7_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aw, i64 noundef %6)
          to label %bb.s unwind label %.loopexit.split-lp277, !dbg !154047

.body132:                                         ; preds = %.loopexit276, %.loopexit.split-lp277, %bb.ab, %bb.ac, %.body124.thread, %bb.j
  %.pn107 = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %.pn, %.body124.thread ], [ %i.dl, %bb.ab ], [ %i.dm, %bb.ac ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.az) #33
          to label %common.resume unwind label %bb.m, !dbg !154048

.loopexit276:                                     ; preds = %bb.f, %bb.k
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %.body132

.loopexit.split-lp277:                            ; preds = %._crit_edge, %bb.as, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %.body132

bb.g:                                             ; preds = %bb.f
  %i.ce = load i8, ptr %i.s, align 16, !dbg !154049, !range !2730, !noundef !1971 ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 31, !dbg !154049
  br i1 %i.cf, label %bb.h, label %bb.i, !dbg !154050

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !154051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false), !dbg !154052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !154053
  br label %bb.n, !dbg !154054

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.564.0..sroa_idx, i64 79, i1 false), !dbg !153766
  store i8 %i.ce, ptr %i.ay, align 16, !dbg !154055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !154056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 16 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !154056
  %i.ch = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.k unwind label %bb.j, !dbg !154057 ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.ay) #33
          to label %.body132 unwind label %bb.m, !dbg !154053

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !154058
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.ay)
          to label %bb.l unwind label %.loopexit276, !dbg !154053

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !154053
  %i.cj = icmp eq ptr %i.cd, %i.by, !dbg !154042
  br i1 %i.cj, label %._crit_edge, label %bb.f, !dbg !153764

bb.m:                                             ; preds = %bb.fe, %bb.ei, %bb.eb, %bb.dq, %bb.av, %.body145.thread, %.body, %bb.bh, %.body154, %bb.x, %.body124.thread, %bb.j, %.body132
  %i.ck = landingpad { ptr, i32 }
end_hunk_0
