Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.14?download=true
inline.NumInlined: 20908
inline.NumDeleted: 8232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE15from_iter_exactINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2p_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB3H_11PyLazyFrame15match_to_schema0EEB3J_:bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.d ], !dbg !25220 ; 6 uses
  %i.l = icmp eq ptr %.sroa.0.0.i.i.i.i, null, !dbg !25221
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !25222, !prof !4833

bb.e:                                             ; preds = %_RNCNvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE18allocate_for_slice0CseeLknQCOKOd_13polars_python.exit.i.i
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef %i.g, i64 noundef %i.h) #52, !dbg !25223
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.ay, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtBP_3ArcSpE15from_iter_exact5GuardNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.c) #51
          to label %bb.u unwind label %bb.t, !dbg !25224

bb.f:                                             ; preds = %_RNCNvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB7_3ArcSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema22MatchToSchemaPerColumnE18allocate_for_slice0CseeLknQCOKOd_13polars_python.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 16, !dbg !25225
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8, !dbg !25226
  store i64 1, ptr %i.m, align 8, !dbg !25226
  %i.n = or disjoint i64 %i.e, 16, !dbg !25227
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16, !dbg !25228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25229
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25230
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !dbg !25230
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !25230
  store ptr %i.o, ptr %i.q, align 8, !dbg !25230
  store i64 16, ptr %i.c, align 8, !dbg !25230
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25230
  store i64 %i.n, ptr %i.r, align 8, !dbg !25230
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !25230 ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25231
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25231
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25231
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25231
  %.sroa.0.sroa.5.0.copyload = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25231
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 3 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25231
  %.sroa.0.sroa.7.0.copyload = load i64, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !dbg !25231, !alias.scope !25170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58), !dbg !25232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !25233
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !25233
  %i.t = icmp ult i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.7.0.copyload, !dbg !25234
  br i1 %i.t, label %.lr.ph, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i._crit_edge, !dbg !25235

.lr.ph:                                           ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.2.0.copyload, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.2.0.copyload, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.5.0.copyload, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.5.0.copyload, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 8
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.4.sroa.0.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.0.i, i64 8
  %.sroa.58.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.58, i64 8
  %i.af = sub nuw i64 %.sroa.0.sroa.7.0.copyload, %.sroa.0.sroa.6.0.copyload, !dbg !25235
  br label %bb.g, !dbg !25235

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %i.ag = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.s ] ; 5 uses
  %.sroa.8.041 = phi i64 [ %.sroa.0.sroa.6.0.copyload, %.lr.ph ], [ %i.ah, %bb.s ] ; 13 uses
  %i.ah = add nuw i64 %.sroa.8.041, 1, !dbg !25236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25237, !noalias !25172
  %i.ai = load i64, ptr %i.u, align 8, !dbg !25238, !noalias !25172, !noundef !4821 ; 2 uses
  %i.aj = icmp ult i64 %.sroa.8.041, %i.ai, !dbg !25239
  br i1 %i.aj, label %bb.h, label %bb.i, !dbg !25239

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.v, align 8, !dbg !25240, !noalias !25172, !nonnull !4821, !noundef !4821
  %i.al = getelementptr inbounds nuw [144 x i8], ptr %i.ak, i64 %.sroa.8.041, !dbg !25241 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112, !dbg !25242
  %i.an = load i64, ptr %i.am, align 16, !dbg !25242, !range !5373, !noalias !25172, !noundef !4821 ; 2 uses
  %i.ao = add nsw i64 %i.an, 9223372036854775780, !dbg !25242
  %i.ap = icmp ugt i64 %i.an, -9223372036854775781, !dbg !25242
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 2, !dbg !25242
  switch i64 %i.aq, label %bb.j [
    i64 0, label %.noexc6.sink.split
    i64 1, label %bb.k
    i64 2, label %bb.l
  ], !dbg !25242

bb.i:                                             ; preds = %bb.g
  store i64 %i.ag, ptr %i.s, align 8, !dbg !25243
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.041, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #54
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !25239

.noexc:                                           ; preds = %bb.i
  unreachable, !dbg !25239

bb.j:                                             ; preds = %bb.h
  unreachable, !dbg !25242

bb.k:                                             ; preds = %bb.h
  br label %.noexc6.sink.split, !dbg !25242

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.b, ptr noundef nonnull align 16 %i.al) #56
          to label %.noexc6 unwind label %.loopexit, !dbg !25244

.noexc6.sink.split:                               ; preds = %bb.h, %bb.k
  %.sink = phi i64 [ -9223372036854775779, %bb.k ], [ -9223372036854775780, %bb.h ]
  store i64 %.sink, ptr %i.w, align 16, !dbg !25242, !noalias !25172
  br label %.noexc6

.noexc6:                                          ; preds = %.noexc6.sink.split, %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.2.0.copyload) ]
  %i.ar = load i64, ptr %i.x, align 8, !dbg !25245, !noalias !25172, !noundef !4821 ; 2 uses
  %i.as = icmp ult i64 %.sroa.8.041, %i.ar, !dbg !25246
  br i1 %i.as, label %bb.m, label %.invoke.i.i.i, !dbg !25246

bb.m:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %i.y, align 8, !dbg !25247, !noalias !25172, !nonnull !4821, !noundef !4821
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.8.041, !dbg !25248
  %i.av = load i8, ptr %i.au, align 1, !dbg !25249, !range !4858, !noalias !25172, !noundef !4821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.aw = load i64, ptr %i.z, align 8, !dbg !25250, !noalias !25172, !noundef !4821 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.8.041, %i.aw, !dbg !25251
  br i1 %i.ax, label %bb.p, label %.invoke.i.i.i, !dbg !25251

bb.n:                                             ; preds = %.invoke.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load i64, ptr %i.w, align 16, !dbg !25252, !range !5373, !alias.scope !25186, !noalias !25172, !noundef !4821
  %i.ba = icmp ugt i64 %i.az, -9223372036854775781, !dbg !25252
  br i1 %i.ba, label %.body, label %bb.o, !dbg !25252

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b)
          to label %.body unwind label %bb.r, !dbg !25252, !noalias !25172

bb.p:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.aa, align 8, !dbg !25253, !noalias !25172, !nonnull !4821, !noundef !4821
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.8.041, !dbg !25254
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !25255, !range !4858, !noalias !25172, !noundef !4821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.4.0.copyload) ]
  %i.be = load i64, ptr %i.ab, align 8, !dbg !25256, !noalias !25172, !noundef !4821 ; 2 uses
  %i.bf = icmp ult i64 %.sroa.8.041, %i.be, !dbg !25257
  br i1 %i.bf, label %bb.q, label %.invoke.i.i.i, !dbg !25257

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.5.0.copyload) ]
  %i.bg = load i64, ptr %i.ac, align 8, !dbg !25258, !noalias !25172, !noundef !4821 ; 2 uses
  %i.bh = icmp ult i64 %.sroa.8.041, %i.bg, !dbg !25259
  br i1 %i.bh, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, label %.invoke.i.i.i, !dbg !25259

.invoke.i.i.i:                                    ; preds = %bb.q, %bb.p, %bb.m, %.noexc6
  %i.bi = phi i64 [ %i.be, %bb.p ], [ %i.aw, %bb.m ], [ %i.bg, %bb.q ], [ %i.ar, %.noexc6 ]
  %i.bj = phi ptr [ @496, %bb.p ], [ @495, %bb.m ], [ @497, %bb.q ], [ @494, %.noexc6 ]
  store i64 %i.ag, ptr %i.s, align 8, !dbg !25243
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.041, i64 noundef %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #52
          to label %.cont.i.i.i unwind label %bb.n, !dbg !25260, !noalias !25172

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !25261, !noalias !25172
  unreachable, !dbg !25261

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %bb.q
  %i.bl = load ptr, ptr %i.ad, align 8, !dbg !25262, !noalias !25172, !nonnull !4821, !noundef !4821
  %i.bm = load ptr, ptr %i.ae, align 8, !dbg !25263, !noalias !25172, !nonnull !4821, !noundef !4821
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.8.041, !dbg !25264
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !25265, !range !4858, !noalias !25172, !noundef !4821
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.8.041, !dbg !25266
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !25267, !range !4858, !noalias !25172, !noundef !4821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25268, !noalias !25205
  %.sroa.5.0.copyload2.i = load i64, ptr %i.w, align 16, !dbg !25268, !noalias !25205 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx3.i, i64 24, i1 false), !dbg !25268, !noalias !25205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25269, !noalias !25172
  %.not.i = icmp eq i64 %.sroa.5.0.copyload2.i, -9223372036854775778, !dbg !25270
  br i1 %.not.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i._crit_edge, label %bb.s, !dbg !25271

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ag, ptr %i.s, align 8, !dbg !25243
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036.i), !dbg !25272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.036.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i, i64 112, i1 false), !dbg !25273, !noalias !25206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !dbg !25273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !25274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !25274
  %i.br = add i64 %i.ag, 1, !dbg !25243           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.0.i), !dbg !25275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.sroa.0.8..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.036.i, i64 112, i1 false), !dbg !25275, !noalias !25206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.i), !dbg !25276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.58, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.sroa.0.i, i64 120, i1 false), !dbg !25277, !noalias !25207
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.0.i), !dbg !25278
  %i.bs = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %i.ag, !dbg !25279 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bs, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.58.16..sroa_idx, i64 112, i1 false), !dbg !25280
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 112, !dbg !25280
  store i64 %.sroa.5.0.copyload2.i, ptr %.sroa.213.0..sroa_idx, align 16, !dbg !25280
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 120, !dbg !25280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false), !dbg !25280
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 144, !dbg !25280
  store i8 %i.av, ptr %.sroa.414.0..sroa_idx, align 16, !dbg !25280
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 145, !dbg !25280
  store i8 %i.bd, ptr %.sroa.515.0..sroa_idx, align 1, !dbg !25280
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 146, !dbg !25280
  store i8 %i.bo, ptr %.sroa.616.0..sroa_idx, align 2, !dbg !25280
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 147, !dbg !25280
  store i8 %i.bq, ptr %.sroa.717.0..sroa_idx, align 1, !dbg !25280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58), !dbg !25281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58), !dbg !25232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !25233
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !25233
  %exitcond.not = icmp eq i64 %i.br, %i.af, !dbg !25234
  br i1 %exitcond.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i._crit_edge, label %bb.g, !dbg !25235

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i._crit_edge: ; preds = %bb.s, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB1y_11PyLazyFrame15match_to_schema0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, %bb.f
  %i.bt = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0, !dbg !25282
  %i.bu = insertvalue { ptr, i64 } %i.bt, i64 %1, 1, !dbg !25283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !25274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !25274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58), !dbg !25281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25224
  ret { ptr, i64 } %i.bu, !dbg !25284

bb.t:                                             ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !25285
  unreachable, !dbg !25285

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %.pn, !dbg !25285
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25286 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !25354
  %i.b = load i8, ptr %i.a, align 1, !dbg !25354, !range !5374, !alias.scope !25335, !noundef !4821
  switch i8 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit
    i8 -40, label %bb.b
  ], !dbg !25354, !prof !5375

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.c, !dbg !25355

bb.c:                                             ; preds = %bb.g, %bb.b
  %.lcssa13 = phi ptr [ %0, %bb.b ], [ %i.o, %bb.g ], !dbg !25356
  %.lcssa = phi i64 [ 1, %bb.b ], [ 2, %bb.g ], !dbg !25356 ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.lcssa13, i64 24, !dbg !25357 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25336), !dbg !25357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25337), !dbg !25358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25338), !dbg !25359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25339), !dbg !25360
  %i.e = load ptr, ptr %i.d, align 8, !dbg !25361, !alias.scope !25340, !nonnull !4821, !noundef !4821
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !25362, !noalias !25341
  %i.g = icmp eq i64 %i.f, 1, !dbg !25363
  br i1 %i.g, label %bb.d, label %.body, !dbg !25363

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !25364
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #55
          to label %.body unwind label %bb.f, !dbg !25365

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25357 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25342), !dbg !25357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25343), !dbg !25366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25344), !dbg !25367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25345), !dbg !25368
  %i.i = load ptr, ptr %i.h, align 8, !dbg !25369, !alias.scope !25346, !nonnull !4821, !noundef !4821
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !25370, !noalias !25347
  %i.k = icmp eq i64 %i.j, 1, !dbg !25371
  br i1 %i.k, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit, !dbg !25371

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i
  fence acquire, !dbg !25372
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #55
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.i, !dbg !25373

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !25357
  unreachable, !dbg !25357

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.e, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 63, !dbg !25354
  %i.n = load i8, ptr %i.m, align 1, !dbg !25354, !range !5374, !alias.scope !25335, !noundef !4821
  switch i8 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.1 [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit.1
    i8 -40, label %bb.g
  ], !dbg !25354, !prof !5375

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25356 ; 2 uses
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.1 unwind label %bb.c, !dbg !25355

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.1: ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !25357 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25348), !dbg !25357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25349), !dbg !25366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25350), !dbg !25367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25351), !dbg !25368
  %i.q = load ptr, ptr %i.p, align 8, !dbg !25369, !alias.scope !25352, !nonnull !4821, !noundef !4821
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !dbg !25370, !noalias !25353
  %i.s = icmp eq i64 %i.r, 1, !dbg !25371
  br i1 %i.s, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit.1, !dbg !25371

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.1
  fence acquire, !dbg !25372
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #55
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit.1 unwind label %bb.i, !dbg !25373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit.1: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python.exit
  ret void, !dbg !25356

bb.i:                                             ; preds = %bb.h, %bb.e
  %.lcssa11 = phi i64 [ 1, %bb.e ], [ 2, %bb.h ], !dbg !25356
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !25356

.body:                                            ; preds = %bb.c, %bb.d, %bb.i
  %i.u = phi i64 [ %.lcssa11, %bb.i ], [ %.lcssa, %bb.d ], [ %.lcssa, %bb.c ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.v = icmp eq i64 %i.u, 2, !dbg !25356
  br i1 %i.v, label %.critedge, label %bb.j, !dbg !25356

bb.j:                                             ; preds = %.body
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(40) %i.w) #51
          to label %.critedge unwind label %bb.k, !dbg !25356

.critedge:                                        ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !25356

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !25356
  unreachable, !dbg !25356
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive08OutPathsNCBJ_0EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25374 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b, !dbg !25406

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !dbg !25406, !alias.scope !25402 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %.body, label %bb.c, !dbg !25407

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25406
  %.val3.i = load ptr, ptr %i.c, align 8, !dbg !25406, !alias.scope !25403, !nonnull !4821, !noundef !4821
  %i.d = shl nuw i64 %.val2.i, 4, !dbg !25408
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !dbg !25409, !noalias !25404
  br label %.body, !dbg !25410

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !dbg !25406, !alias.scope !25402 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECseeLknQCOKOd_13polars_python.exit, label %bb.e, !dbg !25411

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25406
  %.val1.i = load ptr, ptr %i.f, align 8, !dbg !25406, !alias.scope !25403, !nonnull !4821, !noundef !4821
  %i.g = shl nuw i64 %.val.i, 4, !dbg !25412
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !dbg !25413, !noalias !25405
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECseeLknQCOKOd_13polars_python.exit, !dbg !25414

.body:                                            ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25415
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(80) %i.h) #51
          to label %bb.g unwind label %bb.f, !dbg !25415

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25415
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(80) %i.i), !dbg !25415
end_hunk_0
