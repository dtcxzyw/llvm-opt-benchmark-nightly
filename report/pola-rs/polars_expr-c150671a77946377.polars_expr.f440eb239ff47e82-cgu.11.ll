Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.11?download=true
inline.NumInlined: 9010
inline.NumDeleted: 3867
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array20static_array_collectINtNtB8_9primitive14PrimitiveArraytEINtB6_13ArrayFromIterINtNtCscgRAwXFJnXP_4core6option6OptiontEE17try_arr_from_iterNtCsgjwxzEoLG5s_12polars_error11PolarsErrorINtNtNtNtB24_4iter8adapters3map3MapINtNtB3J_3zip3ZipINtNtNtNtBa_6bitmap5utils12zip_validity11ZipValidityReINtNtB8_8iterator15ArrayValuesIterINtNtB8_7binview22BinaryViewArrayGenericeEENtNtB4z_8iterator10BitmapIterEIB4v_mINtNtB3J_6copied6CopiedINtNtNtB24_5slice4iter4ItermEEB6B_EENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity22try_binary_elementwiseNtNtB8l_9datatypes10StringTypeNtB9B_10UInt32TypeNtB9B_10UInt16TypeNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace13parse_integerBal_E0tB2X_E00EECskY9G75ZWc4U_11polars_expr:bb.a
  store i32 %.sroa.64.0.copyload.i, ptr %i.c, align 4, !dbg !139110, !noalias !139009
  %i.au = add i32 %.sroa.64.0.copyload.i, -2, !dbg !139111
  %spec.select.i.i.i.i = icmp ult i32 %i.au, 35, !dbg !139111
  br i1 %spec.select.i.i.i.i, label %bb.k, label %.split.i.i.i, !dbg !139112, !prof !3363

.split.i.i.i:                                     ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139113, !noalias !139009
  store ptr %i.c, ptr %i.a, align 8, !dbg !139113, !noalias !139009
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !dbg !139113, !noalias !139009
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @34, ptr noundef nonnull %i.a)
          to label %.noexc50 unwind label %.loopexit.split-lp, !dbg !139114

.noexc50:                                         ; preds = %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139115, !noalias !139009
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %bb.am unwind label %.loopexit.split-lp, !dbg !139116

bb.k:                                             ; preds = %bb.j
  switch i64 %.sroa.42.0.copyload.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i
    i64 1, label %bb.l
  ], !dbg !139117

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %.sroa.01.0.copyload.i, align 1, !dbg !139118, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  switch i8 %i.av, label %bb.m [
    i8 43, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i
    i8 45, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i
  ], !dbg !139118

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.k
  %.pr.i.i.i.i.i = load i8, ptr %.sroa.01.0.copyload.i, align 1, !dbg !139118, !alias.scope !139015, !noalias !139016
  br label %bb.m, !dbg !139118

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.l
  %i.aw = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.av, %bb.l ], !dbg !139118
  %cond.i.i.i.i.i = icmp eq i8 %i.aw, 43, !dbg !139118 ; 2 uses
  %i.ax = sext i1 %cond.i.i.i.i.i to i64, !dbg !139118
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %.sroa.42.0.copyload.i, %i.ax, !dbg !139118 ; 11 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64, !dbg !139118
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 %.sroa.0.0.idx.i.i.i.i.i, !dbg !139118 ; 10 uses
  %i.ay = icmp samesign ult i32 %.sroa.64.0.copyload.i, 17, !dbg !139119
  %i.az = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 5
  %or.cond1.i.i.i.i.i = and i1 %i.ay, %i.az, !dbg !139119
  br i1 %or.cond1.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader62.i.i.i.i.i, !dbg !139119

.preheader62.i.i.i.i.i:                           ; preds = %bb.m
  %i.ba = trunc nuw nsw i32 %.sroa.64.0.copyload.i to i16 ; 2 uses
  %i.bb = icmp samesign ugt i32 %.sroa.64.0.copyload.i, 10 ; 2 uses
  %.not53.i.i.i.i.i196 = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0, !dbg !139120 ; 2 uses
  br i1 %i.bb, label %.preheader62.split.i.i.i.i.i.preheader, label %.preheader62.split.us.i.i.i.i.i.preheader

.preheader62.split.us.i.i.i.i.i.preheader:        ; preds = %.preheader62.i.i.i.i.i
  br i1 %.not53.i.i.i.i.i196, label %.loopexit.i.i.i.i.i, label %.lr.ph, !dbg !139120

.preheader62.split.i.i.i.i.i.preheader:           ; preds = %.preheader62.i.i.i.i.i
  br i1 %.not53.i.i.i.i.i196, label %.loopexit.i.i.i.i.i, label %.lr.ph200, !dbg !139120

.preheader62.split.us.i.i.i.i.i:                  ; preds = %bb.o
  %.not53.us.i.i.i.i.i = icmp eq i64 %i.bd, 0, !dbg !139120
  br i1 %.not53.us.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph, !dbg !139120

.lr.ph:                                           ; preds = %.preheader62.split.us.i.i.i.i.i.preheader, %.preheader62.split.us.i.i.i.i.i
  %.sroa.0.1.us.i.i.i.i.i195 = phi ptr [ %i.bc, %.preheader62.split.us.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.preheader62.split.us.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.15.1.us.i.i.i.i.i194 = phi i64 [ %i.bd, %.preheader62.split.us.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %.preheader62.split.us.i.i.i.i.i.preheader ]
  %.sroa.043.0.us.i.i.i.i.i193 = phi i16 [ %i.bm, %.preheader62.split.us.i.i.i.i.i ], [ 0, %.preheader62.split.us.i.i.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i.i.i.i195, i64 1, !dbg !139121
  %i.bd = add nsw i64 %.sroa.15.1.us.i.i.i.i.i194, -1, !dbg !139121 ; 2 uses
  %i.be = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.us.i.i.i.i.i193, i16 %i.ba), !dbg !139122 ; 2 uses
  %i.bf = extractvalue { i16, i1 } %i.be, 0, !dbg !139122 ; 2 uses
  %i.bg = extractvalue { i16, i1 } %i.be, 1, !dbg !139122
  br i1 %i.bg, label %.split.us.i.i.i.i.i, label %bb.n, !dbg !139123, !prof !3210

bb.n:                                             ; preds = %.lr.ph
  %i.bh = load i8, ptr %.sroa.0.1.us.i.i.i.i.i195, align 1, !dbg !139124, !alias.scope !139015, !noalias !139016, !noundef !3147
  %i.bi = zext i8 %i.bh to i32, !dbg !139125
  %i.bj = add nsw i32 %i.bi, -48, !dbg !139126    ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %.sroa.64.0.copyload.i, !dbg !139127
  br i1 %i.bk, label %bb.o, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139128

bb.o:                                             ; preds = %bb.n
  %i.bl = trunc nuw nsw i32 %i.bj to i16, !dbg !139129
  %i.bm = add i16 %i.bf, %i.bl, !dbg !139130      ; 3 uses
  %i.bn = icmp ult i16 %i.bm, %i.bf, !dbg !139130
  br i1 %i.bn, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, label %.preheader62.split.us.i.i.i.i.i, !dbg !139131, !prof !3210

.preheader.i.i.i.i.i:                             ; preds = %bb.m
  %.not5472.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0, !dbg !139132
  br i1 %.not5472.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !139132

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.bo = icmp samesign ugt i32 %.sroa.64.0.copyload.i, 10
  %i.bp = trunc nuw nsw i32 %.sroa.64.0.copyload.i to i16 ; 6 uses
  br i1 %i.bo, label %.lr.ph.split.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = load i8, ptr %.sroa.0.0.i.i.i.i.i, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147
  %i.br = zext i8 %i.bq to i32, !dbg !139134
  %i.bs = add nsw i32 %i.br, -48, !dbg !139135    ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.bt, label %bb.p, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.p:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.bu = trunc nuw nsw i32 %i.bs to i16, !dbg !139138 ; 2 uses
  %.not54.us.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 1, !dbg !139132
  br i1 %.not54.us.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.1, !dbg !139132

.lr.ph.split.us.i.i.i.i.i.1:                      ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 1, !dbg !139139
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147
  %i.bx = zext i8 %i.bw to i32, !dbg !139134
  %i.by = add nsw i32 %i.bx, -48, !dbg !139135    ; 2 uses
  %i.bz = icmp ult i32 %i.by, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.bz, label %bb.q, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.q:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.1
  %i.ca = mul nsw i16 %i.bu, %i.bp, !dbg !139140
  %i.cb = trunc nuw nsw i32 %i.by to i16, !dbg !139138
  %i.cc = add nsw i16 %i.ca, %i.cb, !dbg !139141  ; 2 uses
  %.not54.us.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 2, !dbg !139132
  br i1 %.not54.us.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.2, !dbg !139132

.lr.ph.split.us.i.i.i.i.i.2:                      ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 2, !dbg !139139
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147
  %i.cf = zext i8 %i.ce to i32, !dbg !139134
  %i.cg = add nsw i32 %i.cf, -48, !dbg !139135    ; 2 uses
  %i.ch = icmp ult i32 %i.cg, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.ch, label %bb.r, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.r:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.2
  %i.ci = mul i16 %i.cc, %i.bp, !dbg !139140
  %i.cj = trunc nuw nsw i32 %i.cg to i16, !dbg !139138
  %i.ck = add i16 %i.ci, %i.cj, !dbg !139141      ; 2 uses
  %.not54.us.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 3, !dbg !139132
  br i1 %.not54.us.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.3, !dbg !139132

.lr.ph.split.us.i.i.i.i.i.3:                      ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 3, !dbg !139139
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147
  %i.cn = zext i8 %i.cm to i32, !dbg !139134
  %i.co = add nsw i32 %i.cn, -48, !dbg !139135    ; 2 uses
  %i.cp = icmp ult i32 %i.co, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.cp, label %bb.s, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.s:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.3
  %i.cq = mul i16 %i.ck, %i.bp, !dbg !139140
  %i.cr = trunc nuw nsw i32 %i.co to i16, !dbg !139138
  %i.cs = add i16 %i.cq, %i.cr, !dbg !139141
  br label %.loopexit.i.i.i.i.i, !dbg !139132

.preheader62.split.i.i.i.i.i:                     ; preds = %bb.u
  %.not53.i.i.i.i.i = icmp eq i64 %i.cw, 0, !dbg !139120
  br i1 %.not53.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph200, !dbg !139120

.loopexit.i.i.i.i.i:                              ; preds = %.preheader62.split.us.i.i.i.i.i, %.preheader62.split.i.i.i.i.i, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.w, %bb.x, %bb.y, %.preheader62.split.us.i.i.i.i.i.preheader, %.preheader62.split.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %.sroa.043.1.i.i.i.i.i = phi i16 [ %i.fl, %bb.y ], [ 0, %.preheader.i.i.i.i.i ], [ %i.dr, %.preheader62.split.i.i.i.i.i ], [ %i.cs, %bb.s ], [ 0, %.preheader62.split.i.i.i.i.i.preheader ], [ 0, %.preheader62.split.us.i.i.i.i.i.preheader ], [ %i.eb, %bb.v ], [ %i.en, %bb.w ], [ %i.ez, %bb.x ], [ %i.bu, %bb.p ], [ %i.cc, %bb.q ], [ %i.ck, %bb.r ], [ %i.bm, %.preheader62.split.us.i.i.i.i.i ], !dbg !139142
  %i.ct = zext i16 %.sroa.043.1.i.i.i.i.i to i32, !dbg !139143
  %i.cu = shl nuw i32 %i.ct, 16, !dbg !139143
  br label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139143

.lr.ph200:                                        ; preds = %.preheader62.split.i.i.i.i.i.preheader, %.preheader62.split.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i199 = phi ptr [ %i.cv, %.preheader62.split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.preheader62.split.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.15.1.i.i.i.i.i198 = phi i64 [ %i.cw, %.preheader62.split.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %.preheader62.split.i.i.i.i.i.preheader ]
  %.sroa.043.0.i.i.i.i.i197 = phi i16 [ %i.dr, %.preheader62.split.i.i.i.i.i ], [ 0, %.preheader62.split.i.i.i.i.i.preheader ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i199, i64 1, !dbg !139121
  %i.cw = add nsw i64 %.sroa.15.1.i.i.i.i.i198, -1, !dbg !139121 ; 2 uses
  %i.cx = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i.i.i.i.i197, i16 %i.ba), !dbg !139122 ; 2 uses
  %i.cy = extractvalue { i16, i1 } %i.cx, 0, !dbg !139122 ; 2 uses
  %i.cz = extractvalue { i16, i1 } %i.cx, 1, !dbg !139122
  br i1 %i.cz, label %.split.us.i.i.i.i.i, label %bb.t, !dbg !139123, !prof !3210

bb.t:                                             ; preds = %.lr.ph200
  %i.da = load i8, ptr %.sroa.0.1.i.i.i.i.i199, align 1, !dbg !139124, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.db = zext i8 %i.da to i32, !dbg !139125      ; 2 uses
  %i.dc = icmp ugt i8 %i.da, 57, !dbg !139126
  %i.dd = add nsw i32 %i.db, -65, !dbg !139126
  %i.de = and i32 %i.dd, -33, !dbg !139126
  %i.df = add nuw nsw i32 %i.de, 10, !dbg !139126
  %i.dg = add nsw i32 %i.db, -48, !dbg !139126
  %spec.select79.i.i.i.i.i = select i1 %i.dc, i32 %i.df, i32 %i.dg, !dbg !139126 ; 2 uses
  %i.dh = icmp ult i32 %spec.select79.i.i.i.i.i, %.sroa.64.0.copyload.i, !dbg !139127
  br i1 %i.dh, label %bb.u, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139128

.split.us.i.i.i.i.i:                              ; preds = %.lr.ph, %.lr.ph200
  %.us-phi70.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i199, %.lr.ph200 ], [ %.sroa.0.1.us.i.i.i.i.i195, %.lr.ph ], !dbg !139124
  %i.di = load i8, ptr %.us-phi70.i.i.i.i.i, align 1, !dbg !139124, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.dj = zext i8 %i.di to i32, !dbg !139125      ; 2 uses
  %i.dk = icmp ugt i8 %i.di, 57, !dbg !139144
  %or.cond1.i55.i.i.i.i.i = and i1 %i.bb, %i.dk, !dbg !139144
  %i.dl = add nsw i32 %i.dj, -65, !dbg !139144
  %i.dm = and i32 %i.dl, -33, !dbg !139144
  %i.dn = add nuw nsw i32 %i.dm, 10, !dbg !139144
  %i.do = add nsw i32 %i.dj, -48, !dbg !139144
  %.sroa.02.0.i56.i.i.i.i.i = select i1 %or.cond1.i55.i.i.i.i.i, i32 %i.dn, i32 %i.do, !dbg !139144
  %i.dp = icmp ult i32 %.sroa.02.0.i56.i.i.i.i.i, %.sroa.64.0.copyload.i, !dbg !139145
  %spec.select.i.i.i.i.i = select i1 %i.dp, i32 513, i32 257, !dbg !139128
  br label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139128

bb.u:                                             ; preds = %bb.t
  %i.dq = trunc nuw nsw i32 %spec.select79.i.i.i.i.i to i16, !dbg !139129
  %i.dr = add i16 %i.cy, %i.dq, !dbg !139130      ; 3 uses
  %i.ds = icmp ult i16 %i.dr, %i.cy, !dbg !139130
  br i1 %i.ds, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, label %.preheader62.split.i.i.i.i.i, !dbg !139131, !prof !3210

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.dt = load i8, ptr %.sroa.0.0.i.i.i.i.i, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.du = zext i8 %i.dt to i32, !dbg !139134      ; 2 uses
  %i.dv = icmp ugt i8 %i.dt, 57, !dbg !139135
  %i.dw = add nsw i32 %i.du, -65, !dbg !139135
  %i.dx = and i32 %i.dw, -33, !dbg !139135
  %i.dy = add nuw nsw i32 %i.dx, 10, !dbg !139135
  %i.dz = add nsw i32 %i.du, -48, !dbg !139135
  %spec.select80.i.i.i.i.i = select i1 %i.dv, i32 %i.dy, i32 %i.dz, !dbg !139135 ; 2 uses
  %i.ea = icmp ult i32 %spec.select80.i.i.i.i.i, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.ea, label %bb.v, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.v:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.eb = trunc nuw nsw i32 %spec.select80.i.i.i.i.i to i16, !dbg !139138 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 1, !dbg !139132
  br i1 %.not54.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.1, !dbg !139132

.lr.ph.split.i.i.i.i.i.1:                         ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 1, !dbg !139139
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.ee = zext i8 %i.ed to i32, !dbg !139134      ; 2 uses
  %i.ef = icmp ugt i8 %i.ed, 57, !dbg !139135
  %i.eg = add nsw i32 %i.ee, -65, !dbg !139135
  %i.eh = and i32 %i.eg, -33, !dbg !139135
  %i.ei = add nuw nsw i32 %i.eh, 10, !dbg !139135
  %i.ej = add nsw i32 %i.ee, -48, !dbg !139135
  %spec.select80.i.i.i.i.i.1 = select i1 %i.ef, i32 %i.ei, i32 %i.ej, !dbg !139135 ; 2 uses
  %i.ek = icmp ult i32 %spec.select80.i.i.i.i.i.1, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.ek, label %bb.w, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i.i.1
  %i.el = mul nsw i16 %i.eb, %i.bp, !dbg !139140
  %i.em = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.1 to i16, !dbg !139138
  %i.en = add i16 %i.el, %i.em, !dbg !139141      ; 2 uses
  %.not54.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 2, !dbg !139132
  br i1 %.not54.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.2, !dbg !139132

.lr.ph.split.i.i.i.i.i.2:                         ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 2, !dbg !139139
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.eq = zext i8 %i.ep to i32, !dbg !139134      ; 2 uses
  %i.er = icmp ugt i8 %i.ep, 57, !dbg !139135
  %i.es = add nsw i32 %i.eq, -65, !dbg !139135
  %i.et = and i32 %i.es, -33, !dbg !139135
  %i.eu = add nuw nsw i32 %i.et, 10, !dbg !139135
  %i.ev = add nsw i32 %i.eq, -48, !dbg !139135
  %spec.select80.i.i.i.i.i.2 = select i1 %i.er, i32 %i.eu, i32 %i.ev, !dbg !139135 ; 2 uses
  %i.ew = icmp ult i32 %spec.select80.i.i.i.i.i.2, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.ew, label %bb.x, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i.i.2
  %i.ex = mul i16 %i.en, %i.bp, !dbg !139140
  %i.ey = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.2 to i16, !dbg !139138
  %i.ez = add i16 %i.ex, %i.ey, !dbg !139141      ; 2 uses
  %.not54.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 3, !dbg !139132
  br i1 %.not54.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.3, !dbg !139132

.lr.ph.split.i.i.i.i.i.3:                         ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 3, !dbg !139139
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !139133, !alias.scope !139015, !noalias !139016, !noundef !3147 ; 2 uses
  %i.fc = zext i8 %i.fb to i32, !dbg !139134      ; 2 uses
  %i.fd = icmp ugt i8 %i.fb, 57, !dbg !139135
  %i.fe = add nsw i32 %i.fc, -65, !dbg !139135
  %i.ff = and i32 %i.fe, -33, !dbg !139135
  %i.fg = add nuw nsw i32 %i.ff, 10, !dbg !139135
  %i.fh = add nsw i32 %i.fc, -48, !dbg !139135
  %spec.select80.i.i.i.i.i.3 = select i1 %i.fd, i32 %i.fg, i32 %i.fh, !dbg !139135 ; 2 uses
  %i.fi = icmp ult i32 %spec.select80.i.i.i.i.i.3, %.sroa.64.0.copyload.i, !dbg !139136
  br i1 %i.fi, label %bb.y, label %_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i, !dbg !139137

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i.i.3
  %i.fj = mul i16 %i.ez, %i.bp, !dbg !139140
  %i.fk = trunc nuw nsw i32 %spec.select80.i.i.i.i.i.3 to i16, !dbg !139138
  %i.fl = add i16 %i.fj, %i.fk, !dbg !139141
  br label %.loopexit.i.i.i.i.i, !dbg !139132

_RNvXs8_CslmKYcnV0hjo_10num_traitstNtB5_3Num14from_str_radix.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.u, %bb.t, %.lr.ph.split.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.1, %.lr.ph.split.us.i.i.i.i.i.2, %.lr.ph.split.us.i.i.i.i.i.3, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.1, %.lr.ph.split.i.i.i.i.i.2, %.lr.ph.split.i.i.i.i.i.3, %.split.us.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.l, %bb.l, %bb.k
  %.sroa.8.0.insert.insert.i.i.i.i.i = phi i32 [ 257, %.lr.ph.split.i.i.i.i.i ], [ %i.cu, %.loopexit.i.i.i.i.i ], [ 257, %bb.l ], [ 1, %bb.k ], [ 257, %bb.l ], [ %spec.select.i.i.i.i.i, %.split.us.i.i.i.i.i ], [ 513, %bb.u ], [ 257, %.lr.ph.split.us.i.i.i.i.i ], [ 257, %.lr.ph.split.i.i.i.i.i.3 ], [ 257, %.lr.ph.split.i.i.i.i.i.2 ], [ 257, %.lr.ph.split.i.i.i.i.i.1 ], [ 257, %.lr.ph.split.us.i.i.i.i.i.3 ], [ 257, %.lr.ph.split.us.i.i.i.i.i.2 ], [ 257, %.lr.ph.split.us.i.i.i.i.i.1 ], [ 257, %bb.t ], [ 257, %bb.n ], [ 513, %bb.o ], !dbg !139143 ; 2 uses
  %.sroa.517.0.extract.shift.i.i.i = lshr i32 %.sroa.8.0.insert.insert.i.i.i.i.i, 16, !dbg !139146
  %.sroa.517.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.517.0.extract.shift.i.i.i to i16, !dbg !139146
  %i.fm = trunc i32 %.sroa.8.0.insert.insert.i.i.i.i.i to i16, !dbg !139147
  %not..i.i.i = and i16 %i.fm, 1, !dbg !139148
  %..i.i.i = xor i16 %not..i.i.i, 1, !dbg !139148 ; 2 uses
  store i16 %..i.i.i, ptr %i.ak, align 8, !dbg !139149, !alias.scope !139017, !noalias !139018
  store i16 %.sroa.517.0.extract.trunc.i.i.i, ptr %i.al, align 2, !dbg !139149, !alias.scope !139017, !noalias !139018
  br label %bb.ar, !dbg !139150

.loopexit:                                        ; preds = %bb.as, %bb.av, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread82

.loopexit.split-lp:                               ; preds = %.split.i.i.i, %.noexc50
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread82

.body.thread:                                     ; preds = %bb.al
  br i1 %.sroa.025.1.ph, label %.thread82, label %common.resume, !dbg !139151

bb.z:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !139152, !noalias !139004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !139153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !139154
  store i8 8, ptr %i.m, align 8, !dbg !139155, !alias.scope !139019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !139156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !139156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !139156
  %i.fn = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragetE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.ab unwind label %bb.aa, !dbg !139157

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BuffertE12from_storageCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.fn)
          to label %bb.ac unwind label %bb.aa, !dbg !139158

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !139159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !139160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !139160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !dbg !139160
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.ad unwind label %bb.aj, !dbg !139161

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !139162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !139163
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraytE7try_newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j), !dbg !139163
  call void @llvm.experimental.noalias.scope.decl(metadata !139025), !dbg !139164
  %i.fp = load i8, ptr %i.h, align 8, !dbg !139165, !range !3206, !alias.scope !139025, !noalias !139026, !noundef !3147
  %i.fq = icmp eq i8 %i.fp, 42, !dbg !139165
  br i1 %i.fq, label %bb.ae, label %bb.ai, !dbg !139166, !prof !3210

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !139167, !noalias !139027
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !139167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fr, i64 72, i1 false), !dbg !139167, !noalias !139026
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #44
          to label %bb.ag unwind label %bb.af, !dbg !139168, !noalias !139027

bb.af:                                            ; preds = %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #45
          to label %common.resume unwind label %bb.ah, !dbg !139169, !noalias !139027

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !139170, !noalias !139027
  unreachable, !dbg !139170

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.h, i64 88, i1 false), !dbg !139171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !139172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !139173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !139173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !139173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !139151
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VectEECskY9G75ZWc4U_11polars_expr.exit, !dbg !139174

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VectEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ba, %bb.az, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !139097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !139174
  ret void, !dbg !139175

bb.aj:                                            ; preds = %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragetENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.al unwind label %bb.ak, !dbg !139176

bb.ak:                                            ; preds = %bb.aj, %.thread, %.thread82, %bb.al
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !139177
  unreachable, !dbg !139177

bb.al:                                            ; preds = %bb.aa, %bb.aj
  %.sroa.025.1.ph = phi i1 [ true, %bb.aa ], [ false, %bb.aj ]
  %.pn.ph = phi { ptr, i32 } [ %i.fo, %bb.aa ], [ %i.fu, %bb.aj ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #45
          to label %.body.thread unwind label %bb.ak, !dbg !139173

bb.am:                                            ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139150, !noalias !139008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139150, !noalias !139008
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !139178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.9.0..sroa_idx, i64 60, i1 false), !dbg !139179
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr:bb.a

bb.f:                                             ; preds = %._crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.p = phi ptr [ %i.m, %._crit_edge ], [ %i.k, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ]
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], !dbg !167553 ; 2 uses
  store i32 0, ptr %i.q, align 8, !dbg !167555
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !167555
  store i32 0, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !167555
  store i64 1, ptr %i.p, align 8, !dbg !167556, !alias.scope !167537, !noalias !167536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !167557
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !167558
  store i32 1, ptr %i.r, align 8, !dbg !167558
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !167558
  store i32 0, ptr %i.s, align 4, !dbg !167558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167554
  ret void, !dbg !167559

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECskY9G75ZWc4U_11polars_expr.exit.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !167560
  unreachable, !dbg !167560

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEECskY9G75ZWc4U_11polars_expr.exit.i
  resume { ptr, i32 } %i.o, !dbg !167560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !167561 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !167588
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !167588 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !167588
  %.val3 = load i64, ptr %i.b, align 8, !dbg !167588, !noundef !3147
  %i.c = zext i32 %3 to i64, !dbg !167589         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !167590
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !167591
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !167590
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit, !dbg !167592

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %i.c, !dbg !167590 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40, !dbg !167593 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !167593, !alias.scope !167583, !noundef !3147
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !167594
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !167595

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  store i32 0, ptr %0, align 8, !dbg !167596
  br label %bb.c, !dbg !167597

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !167598
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !167599 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !167599, !noundef !3147
  store i32 %i.i, ptr %i.e, align 8, !dbg !167600
  store i32 %3, ptr %i.h, align 8, !dbg !167601
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !167602 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !167602, !noundef !3147
  %i.l = add i32 %i.k, -1, !dbg !167602
  store i32 %i.l, ptr %i.j, align 4, !dbg !167602
  %i.m = add i32 %2, 1, !dbg !167603
  store i32 %i.m, ptr %i.f, align 8, !dbg !167604
  br label %bb.c, !dbg !167597

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !167605
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167606 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167647
  %i.b = add i64 %1, 1, !dbg !167648              ; 5 uses
  %i.c = mul i64 %i.b, 48, !dbg !167649           ; 3 uses
  %or.cond.i = icmp ugt i64 %i.b, 192153584101141162, !dbg !167650
  br i1 %or.cond.i, label %bb.d, label %bb.b, !dbg !167650, !prof !3433

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0, !dbg !167651
  br i1 %i.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.c, !dbg !167651

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.b
  %i.e = icmp eq i64 %i.b, 0, !dbg !167652
  tail call void @llvm.assume(i1 %i.e), !dbg !167653
  store i64 0, ptr %i.a, align 8, !dbg !167654
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167654 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !dbg !167654
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167654 ; 2 uses
  store i64 0, ptr %i.g, align 8, !dbg !167654
  br label %bb.e, !dbg !167655

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !dbg !167656, !noalias !167644
  %i.h = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !dbg !167657, !noalias !167644 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !167658
  br i1 %i.i, label %bb.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit, !dbg !167659

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #44, !dbg !167660
  unreachable, !dbg !167660

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8, !dbg !167654
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167654 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !dbg !167654
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167654 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !167654
  %i.l = icmp eq i64 %i.b, 0, !dbg !167655
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !167655

bb.e:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.m = phi ptr [ %i.g, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %i.k, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ]
  %i.n = phi ptr [ %i.f, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %i.j, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !167661, !noalias !167645

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.n, align 8, !dbg !167662, !alias.scope !167646, !noalias !167645
  br label %bb.f, !dbg !167661

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.h unwind label %bb.g, !dbg !167663

bb.f:                                             ; preds = %._crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.p = phi ptr [ %i.m, %._crit_edge ], [ %i.k, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ]
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], !dbg !167662 ; 2 uses
  store i32 0, ptr %i.q, align 8, !dbg !167664
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !167664
  store i32 0, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !167664
  store i64 1, ptr %i.p, align 8, !dbg !167665, !alias.scope !167646, !noalias !167645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !167666
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !167667
  store i32 1, ptr %i.r, align 8, !dbg !167667
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !167667
  store i32 0, ptr %i.s, align 4, !dbg !167667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167663
  ret void, !dbg !167668

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECskY9G75ZWc4U_11polars_expr.exit.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !167669
  unreachable, !dbg !167669

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEECskY9G75ZWc4U_11polars_expr.exit.i
  resume { ptr, i32 } %i.o, !dbg !167669
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !167670 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !167697
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !167697 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !167697
  %.val3 = load i64, ptr %i.b, align 8, !dbg !167697, !noundef !3147
  %i.c = zext i32 %3 to i64, !dbg !167698         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !167699
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !167700
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !167699
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit, !dbg !167701

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %i.c, !dbg !167699 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40, !dbg !167702 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !167702, !alias.scope !167692, !noundef !3147
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !167703
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !167704

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  store i32 0, ptr %0, align 8, !dbg !167705
  br label %bb.c, !dbg !167706

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !167707
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !167708 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !167708, !noundef !3147
  store i32 %i.i, ptr %i.e, align 8, !dbg !167709
  store i32 %3, ptr %i.h, align 8, !dbg !167710
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !167711 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !167711, !noundef !3147
  %i.l = add i32 %i.k, -1, !dbg !167711
  store i32 %i.l, ptr %i.j, align 4, !dbg !167711
  %i.m = add i32 %2, 1, !dbg !167712
  store i32 %i.m, ptr %i.f, align 8, !dbg !167713
  br label %bb.c, !dbg !167706

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !167714
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167715 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167757
  %i.b = add i64 %1, 1, !dbg !167758              ; 4 uses
  %i.c = mul i64 %i.b, 48, !dbg !167759           ; 3 uses
  %or.cond.i = icmp ugt i64 %i.b, 192153584101141162, !dbg !167760
  br i1 %or.cond.i, label %bb.d, label %bb.b, !dbg !167760, !prof !3433

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0, !dbg !167761
  br i1 %i.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13, label %bb.c, !dbg !167761

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13: ; preds = %bb.b
  %i.e = icmp eq i64 %i.b, 0, !dbg !167762
  tail call void @llvm.assume(i1 %i.e), !dbg !167763
  store i64 0, ptr %i.a, align 8, !dbg !167764
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167764 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !dbg !167764
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167764 ; 2 uses
  store i64 0, ptr %i.g, align 8, !dbg !167764
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge unwind label %bb.e, !dbg !167765

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13
  %.pre = load ptr, ptr %i.f, align 8, !dbg !167766, !alias.scope !167754, !noalias !167755
  br label %bb.f, !dbg !167765

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !dbg !167767, !noalias !167756
  %i.h = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !dbg !167768, !noalias !167756 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !167769
  br i1 %i.i, label %bb.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit, !dbg !167770

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.46.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.46.0.ph, i64 %i.c) #44, !dbg !167771
  unreachable, !dbg !167771

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8, !dbg !167764
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167764
  store ptr %i.h, ptr %i.j, align 8, !dbg !167764
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167764
  br label %bb.f, !dbg !167772

bb.e:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionlEEEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.h unwind label %bb.g, !dbg !167773

bb.f:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.m = phi ptr [ %i.h, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], [ %.pre, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge ], !dbg !167766 ; 2 uses
  %i.n = phi ptr [ %i.k, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], [ %i.g, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge ]
  store i32 0, ptr %i.m, align 8, !dbg !167774
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !167774
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !167774
  store i64 1, ptr %i.n, align 8, !dbg !167775, !alias.scope !167754, !noalias !167755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !167776
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !167777
  store i32 1, ptr %i.o, align 8, !dbg !167777
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !167777
  store i32 0, ptr %i.p, align 4, !dbg !167777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167773
  ret void, !dbg !167778

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !167779
  unreachable, !dbg !167779

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l, !dbg !167779
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE6removeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !167780 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !167807
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !167807 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !167807
  %.val3 = load i64, ptr %i.b, align 8, !dbg !167807, !noundef !3147
  %i.c = zext i32 %3 to i64, !dbg !167808         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !167809
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !167810
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !167809
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit, !dbg !167811

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %i.c, !dbg !167809 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 40, !dbg !167812 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !167812, !alias.scope !167802, !noundef !3147
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !167813
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !167814

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  store i32 2, ptr %0, align 8, !dbg !167815
  br label %bb.c, !dbg !167816

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !167817
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !167818 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !167818, !noundef !3147
  store i32 %i.i, ptr %i.e, align 8, !dbg !167819
  store i32 %3, ptr %i.h, align 8, !dbg !167820
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !167821 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !167821, !noundef !3147
  %i.l = add i32 %i.k, -1, !dbg !167821
  store i32 %i.l, ptr %i.j, align 4, !dbg !167821
  %i.m = add i32 %2, 1, !dbg !167822
  store i32 %i.m, ptr %i.f, align 8, !dbg !167823
  br label %bb.c, !dbg !167816

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !167824
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7get_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !2513 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !167838
  %i.b = load i64, ptr %i.a, align 8, !dbg !167838, !noundef !3147
  %i.c = zext i32 %2 to i64, !dbg !167839         ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !167840
  br i1 %i.d, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !167840

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167841
  %i.f = load ptr, ptr %i.e, align 8, !dbg !167841, !nonnull !3147, !noundef !3147
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.c, !dbg !167842 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !167843
  %i.i = load i32, ptr %i.h, align 8, !dbg !167843, !alias.scope !167837, !noundef !3147
  %i.j = icmp eq i32 %i.i, %1, !dbg !167843
  %..i = select i1 %i.j, ptr %i.g, ptr null, !dbg !167844
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !167844

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ], !dbg !167845
  ret ptr %.sroa.02.0.i, !dbg !167846
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167847 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167889
  %i.b = add i64 %1, 1, !dbg !167890              ; 4 uses
  %i.c = mul i64 %i.b, 56, !dbg !167891           ; 3 uses
  %or.cond.i = icmp ugt i64 %i.b, 164703072086692425, !dbg !167892
  br i1 %or.cond.i, label %bb.d, label %bb.b, !dbg !167892, !prof !3433

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0, !dbg !167893
  br i1 %i.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13, label %bb.c, !dbg !167893

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13: ; preds = %bb.b
  %i.e = icmp eq i64 %i.b, 0, !dbg !167894
  tail call void @llvm.assume(i1 %i.e), !dbg !167895
  store i64 0, ptr %i.a, align 8, !dbg !167896
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167896 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !dbg !167896
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167896 ; 2 uses
  store i64 0, ptr %i.g, align 8, !dbg !167896
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge unwind label %bb.e, !dbg !167897

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13
  %.pre = load ptr, ptr %i.f, align 8, !dbg !167898, !alias.scope !167886, !noalias !167887
  br label %bb.f, !dbg !167897

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !dbg !167899, !noalias !167888
  %i.h = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !dbg !167900, !noalias !167888 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !167901
  br i1 %i.i, label %bb.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit, !dbg !167902

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.46.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.46.0.ph, i64 %i.c) #44, !dbg !167903
  unreachable, !dbg !167903

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8, !dbg !167896
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167896
  store ptr %i.h, ptr %i.j, align 8, !dbg !167896
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167896
  br label %bb.f, !dbg !167904

bb.e:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionxEEEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.h unwind label %bb.g, !dbg !167905

bb.f:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.m = phi ptr [ %i.h, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], [ %.pre, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge ], !dbg !167898 ; 2 uses
  %i.n = phi ptr [ %i.k, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit ], [ %i.g, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit.thread13._crit_edge ]
  store i32 0, ptr %i.m, align 8, !dbg !167906
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !167906
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !167906
  store i64 1, ptr %i.n, align 8, !dbg !167907, !alias.scope !167886, !noalias !167887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !167908
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !167909
  store i32 1, ptr %i.o, align 8, !dbg !167909
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !167909
  store i32 0, ptr %i.p, align 4, !dbg !167909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167905
  ret void, !dbg !167910

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !167911
  unreachable, !dbg !167911

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l, !dbg !167911
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE6removeCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !167912 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !167939
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !167939 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !167939
  %.val3 = load i64, ptr %i.b, align 8, !dbg !167939, !noundef !3147
  %i.c = zext i32 %3 to i64, !dbg !167940         ; 2 uses
  %i.d = icmp ule i64 %.val3, %i.c, !dbg !167941
  %.not.i2.i = icmp eq ptr %.val2, null, !dbg !167942
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not.i2.i, !dbg !167941
  br i1 %.not.i.i, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit, !dbg !167943

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %.val2, i64 %i.c, !dbg !167941 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 48, !dbg !167944 ; 2 uses
  %.val5.i.i = load i32, ptr %i.f, align 8, !dbg !167944, !alias.scope !167934, !noundef !3147
  %i.g = icmp eq i32 %.val5.i.i, %2, !dbg !167945
  br i1 %i.g, label %bb.b, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !167946

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.a, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  store i64 2, ptr %0, align 8, !dbg !167947
  br label %bb.c, !dbg !167948

bb.b:                                             ; preds = %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !167949
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !167950 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !167950, !noundef !3147
  store i32 %i.i, ptr %i.e, align 8, !dbg !167951
  store i32 %3, ptr %i.h, align 8, !dbg !167952
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !167953 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !dbg !167953, !noundef !3147
  %i.l = add i32 %i.k, -1, !dbg !167953
  store i32 %i.l, ptr %i.j, align 4, !dbg !167953
  %i.m = add i32 %2, 1, !dbg !167954
  store i32 %i.m, ptr %i.f, align 8, !dbg !167955
  br label %bb.c, !dbg !167948

bb.c:                                             ; preds = %bb.b, %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !167956
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE7get_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !2526 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !167970
  %i.b = load i64, ptr %i.a, align 8, !dbg !167970, !noundef !3147
  %i.c = zext i32 %2 to i64, !dbg !167971         ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !167972
  br i1 %i.d, label %bb.b, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !167972

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167973
  %i.f = load ptr, ptr %i.e, align 8, !dbg !167973, !nonnull !3147, !noundef !3147
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.c, !dbg !167974 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !167975
  %i.i = load i32, ptr %i.h, align 8, !dbg !167975, !alias.scope !167969, !noundef !3147
  %i.j = icmp eq i32 %i.i, %1, !dbg !167975
  %..i = select i1 %i.j, ptr %i.g, ptr null, !dbg !167976
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !167976

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ], !dbg !167977
  ret ptr %.sroa.02.0.i, !dbg !167978
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !167979 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !167992, !range !3162, !noundef !3147 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167991), !dbg !167993
  %i.c = shl nuw i64 %i.b, 1, !dbg !167994
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !167995 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167996, !noalias !167991
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167997 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !167997, !alias.scope !167991
  call fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !dbg !167997, !noalias !167991
  %i.f = load i64, ptr %i.a, align 8, !dbg !167998, !range !3337, !noalias !167991, !noundef !3147
  %i.g = trunc nuw i64 %i.f to i1, !dbg !167999
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168000 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !167999

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !168001, !range !3292, !noalias !167991, !noundef !3147
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168001
  %i.k = load i64, ptr %i.j, align 8, !dbg !168001, !noalias !167991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168002, !noalias !167991
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #44, !dbg !168003
  unreachable, !dbg !168003

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !168004, !noalias !167991, !nonnull !3147, !noundef !3147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168002, !noalias !167991
  store ptr %i.l, ptr %i.e, align 8, !dbg !168005, !alias.scope !167991
  %i.m = icmp sgt i64 %i.d, -1, !dbg !168006
  tail call void @llvm.assume(i1 %i.m), !dbg !168006
  store i64 %i.d, ptr %0, align 8, !dbg !168007, !alias.scope !167991
  ret void, !dbg !168008
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRNtNtB1t_7float164pf16EEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !168009 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !168022, !range !3162, !noundef !3147 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168021), !dbg !168023
  %i.c = shl nuw i64 %i.b, 1, !dbg !168024
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !168025 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168026, !noalias !168021
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168027 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !168027, !alias.scope !168021
  call fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !dbg !168027, !noalias !168021
  %i.f = load i64, ptr %i.a, align 8, !dbg !168028, !range !3337, !noalias !168021, !noundef !3147
  %i.g = trunc nuw i64 %i.f to i1, !dbg !168029
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168030 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !168029

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !168031, !range !3292, !noalias !168021, !noundef !3147
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168031
  %i.k = load i64, ptr %i.j, align 8, !dbg !168031, !noalias !168021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168032, !noalias !168021
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #44, !dbg !168033
  unreachable, !dbg !168033

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !168034, !noalias !168021, !nonnull !3147, !noundef !3147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168032, !noalias !168021
  store ptr %i.l, ptr %i.e, align 8, !dbg !168035, !alias.scope !168021
  %i.m = icmp sgt i64 %i.d, -1, !dbg !168036
  tail call void @llvm.assume(i1 %i.m), !dbg !168036
  store i64 %i.d, ptr %0, align 8, !dbg !168037, !alias.scope !168021
  ret void, !dbg !168038
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRaEEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !168039 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !168052, !range !3162, !noundef !3147 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168051), !dbg !168053
  %i.c = shl nuw i64 %i.b, 1, !dbg !168054
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !168055 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168056, !noalias !168051
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168057 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !168057, !alias.scope !168051
  call fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !dbg !168057, !noalias !168051
  %i.f = load i64, ptr %i.a, align 8, !dbg !168058, !range !3337, !noalias !168051, !noundef !3147
  %i.g = trunc nuw i64 %i.f to i1, !dbg !168059
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168060 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !168059

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !168061, !range !3292, !noalias !168051, !noundef !3147
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168061
  %i.k = load i64, ptr %i.j, align 8, !dbg !168061, !noalias !168051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168062, !noalias !168051
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #44, !dbg !168063
  unreachable, !dbg !168063

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !168064, !noalias !168051, !nonnull !3147, !noundef !3147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168062, !noalias !168051
  store ptr %i.l, ptr %i.e, align 8, !dbg !168065, !alias.scope !168051
  %i.m = icmp sgt i64 %i.d, -1, !dbg !168066
  tail call void @llvm.assume(i1 %i.m), !dbg !168066
  store i64 %i.d, ptr %0, align 8, !dbg !168067, !alias.scope !168051
  ret void, !dbg !168068
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRdEEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !168069 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !168082, !range !3162, !noundef !3147 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168081), !dbg !168083
  %i.c = shl nuw i64 %i.b, 1, !dbg !168084
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !168085 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168086, !noalias !168081
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168087 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !168087, !alias.scope !168081
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!167532 = !DILocation(line: 438, column: 50, scope: !167509, inlinedAt: !167531)
!167533 = !DILocation(line: 438, column: 21, scope: !167509, inlinedAt: !167531)
!167534 = !DILocation(line: 205, column: 15, scope: !167512)
!167535 = !{!167515}
!167536 = !{!167522}
!167537 = !{!167523}
!167538 = !DILocation(line: 204, column: 13, scope: !167497)
!167539 = !DILocation(line: 204, column: 44, scope: !167497)
!167540 = !DILocation(line: 3105, column: 26, scope: !29, inlinedAt: !167506)
!167541 = !DILocation(line: 457, column: 8, scope: !803, inlinedAt: !167507)
!167542 = !DILocation(line: 460, column: 12, scope: !36, inlinedAt: !167502)
!167543 = !DILocation(line: 767, column: 9, scope: !167508, inlinedAt: !167532)
!167544 = !DILocation(line: 210, column: 9, scope: !167510, inlinedAt: !167533)
!167545 = !DILocation(line: 977, column: 9, scope: !167500, inlinedAt: !167529)
!167546 = !DILocation(line: 1040, column: 12, scope: !213, inlinedAt: !167513)
!167547 = !DILocation(line: 0, scope: !36, inlinedAt: !167502)
!167548 = !DILocation(line: 101, column: 9, scope: !37, inlinedAt: !167519)
!167549 = !DILocation(line: 469, column: 25, scope: !42, inlinedAt: !167502)
!167550 = !DILocation(line: 469, column: 19, scope: !42, inlinedAt: !167502)
!167551 = !DILocation(line: 442, column: 25, scope: !167520, inlinedAt: !167531)
!167552 = !DILocation(line: 1041, column: 22, scope: !213, inlinedAt: !167513)
!167553 = !DILocation(line: 614, column: 9, scope: !218, inlinedAt: !167527)
!167554 = !DILocation(line: 216, column: 5, scope: !167497)
!167555 = !DILocation(line: 1045, column: 29, scope: !222, inlinedAt: !167513)
!167556 = !DILocation(line: 1046, column: 13, scope: !222, inlinedAt: !167513)
!167557 = !DILocation(line: 211, column: 13, scope: !167512)
!167558 = !DILocation(line: 210, column: 9, scope: !167512)
!167559 = !DILocation(line: 216, column: 6, scope: !167497)
!167560 = !DILocation(line: 199, column: 5, scope: !167497)
!167561 = distinct !DISubprogram(name: "remove<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 462, type: !3148, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167562 = distinct !DILexicalBlock(scope: !167561, file: !3224, line: 463, column: 9)
!167563 = distinct !DISubprogram(name: "contains_key<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE12contains_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 319, type: !3151, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167564 = distinct !DILexicalBlock(scope: !167563, file: !3224, line: 320, column: 9)
!167565 = distinct !DILocation(line: 464, column: 17, scope: !167562)
!167566 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f64>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEE3getCskY9G75ZWc4U_11polars_expr", scope: !3232, file: !3229, line: 218, type: !3148, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167567 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f64>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEE3getjECskY9G75ZWc4U_11polars_expr", scope: !3234, file: !3233, line: 572, type: !3148, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167568 = distinct !DILocation(line: 322, column: 14, scope: !167564, inlinedAt: !167565)
!167569 = distinct !DILocation(line: 576, column: 15, scope: !167567, inlinedAt: !167568)
!167570 = distinct !DISubprogram(name: "map_or<&slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f64>>, bool, slotmap::basic::{impl#5}::contains_key::{closure_env#0}<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f64>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr", scope: !3146, file: !3143, line: 1224, type: !3151, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167571 = distinct !DILocation(line: 323, column: 14, scope: !167564, inlinedAt: !167565)
!167572 = distinct !DILexicalBlock(scope: !167570, file: !3143, line: 1230, column: 13)
!167573 = distinct !{!167573, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr"}
!167574 = distinct !{!167574, !167573, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167575 = distinct !DISubprogram(name: "{closure#0}<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBR_4NodedEE12contains_key0CskY9G75ZWc4U_11polars_expr", scope: !3939, file: !3224, line: 323, type: !3151, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167576 = distinct !DILocation(line: 1230, column: 24, scope: !167572, inlinedAt: !167571)
!167577 = distinct !DISubprogram(name: "read<polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEECskY9G75ZWc4U_11polars_expr", scope: !3150, file: !3149, line: 1682, type: !3148, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167578 = distinct !DISubprogram(name: "remove_from_slot<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE16remove_from_slotCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 436, type: !3148, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167579 = distinct !DILexicalBlock(scope: !167578, file: !3224, line: 438, column: 9)
!167580 = distinct !DISubprogram(name: "take<polars_utils::order_statistic_tree::Node<f64>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodedEE4takeCskY9G75ZWc4U_11polars_expr", scope: !3237, file: !3235, line: 227, type: !3148, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167581 = distinct !DILexicalBlock(scope: !167579, file: !3224, line: 439, column: 9)
!167582 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !3423, file: !3188, line: 2510, type: !3148, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167583 = !{!167574}
!167584 = !DILocation(line: 466, column: 32, scope: !167562)
!167585 = !DILocation(line: 439, column: 21, scope: !167579, inlinedAt: !167584)
!167586 = !DILocation(line: 230, column: 18, scope: !167580, inlinedAt: !167585)
!167587 = !DILocation(line: 445, column: 37, scope: !167581, inlinedAt: !167584)
!167588 = !DILocation(line: 464, column: 17, scope: !167562)
!167589 = !DILocation(line: 322, column: 18, scope: !167564, inlinedAt: !167565)
!167590 = !DILocation(line: 219, column: 12, scope: !167566, inlinedAt: !167569)
!167591 = !DILocation(line: 1229, column: 15, scope: !167570, inlinedAt: !167571)
!167592 = !DILocation(line: 1229, column: 9, scope: !167570, inlinedAt: !167571)
!167593 = !DILocation(line: 1230, column: 24, scope: !167572, inlinedAt: !167571)
!167594 = !DILocation(line: 323, column: 35, scope: !167575, inlinedAt: !167576)
!167595 = !DILocation(line: 464, column: 12, scope: !167562)
!167596 = !DILocation(line: 468, column: 13, scope: !167562)
!167597 = !DILocation(line: 464, column: 9, scope: !167562)
!167598 = !DILocation(line: 1721, column: 9, scope: !167577, inlinedAt: !167586)
!167599 = !DILocation(line: 442, column: 28, scope: !167581, inlinedAt: !167584)
!167600 = !DILocation(line: 442, column: 9, scope: !167581, inlinedAt: !167584)
!167601 = !DILocation(line: 443, column: 9, scope: !167581, inlinedAt: !167584)
!167602 = !DILocation(line: 444, column: 9, scope: !167581, inlinedAt: !167584)
!167603 = !DILocation(line: 2511, column: 13, scope: !167582, inlinedAt: !167587)
!167604 = !DILocation(line: 445, column: 9, scope: !167581, inlinedAt: !167584)
!167605 = !DILocation(line: 470, column: 6, scope: !167561)
!167606 = distinct !DISubprogram(name: "with_capacity_and_key<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 199, type: !3148, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167607 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 433, type: !3148, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167608 = distinct !DISubprogram(name: "with_capacity<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 523, type: !3148, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167609 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 976, type: !3148, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167610 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 175, type: !3148, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167611 = distinct !DILocation(line: 434, column: 15, scope: !167607, inlinedAt: !167640)
!167612 = distinct !DILocation(line: 454, column: 28, scope: !34, inlinedAt: !167611)
!167613 = distinct !DILocation(line: 902, column: 23, scope: !33, inlinedAt: !167612)
!167614 = distinct !DILocation(line: 527, column: 39, scope: !32, inlinedAt: !167613)
!167615 = distinct !DILocation(line: 1215, column: 31, scope: !30, inlinedAt: !167614)
!167616 = distinct !DILocation(line: 1216, column: 16, scope: !804, inlinedAt: !167614)
!167617 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 766, type: !3148, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167618 = distinct !DILexicalBlock(scope: !167607, file: !3191, line: 435, column: 13)
!167619 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !3435, file: !3434, line: 202, type: !3148, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167620 = distinct !DISubprogram(name: "push<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE4pushCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 1003, type: !3148, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167621 = distinct !DILexicalBlock(scope: !167606, file: !3224, line: 204, column: 9)
!167622 = distinct !DILocation(line: 1004, column: 22, scope: !167620, inlinedAt: !167643)
!167623 = distinct !{!167623, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr"}
!167624 = distinct !{!167624, !167623, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!167625 = distinct !DILocation(line: 465, column: 47, scope: !36, inlinedAt: !167611)
!167626 = distinct !DILocation(line: 449, column: 14, scope: !41, inlinedAt: !167625)
!167627 = distinct !DILocation(line: 332, column: 9, scope: !40, inlinedAt: !167626)
!167628 = distinct !DILocation(line: 210, column: 73, scope: !39, inlinedAt: !167627)
!167629 = distinct !DILexicalBlock(scope: !167607, file: !3191, line: 442, column: 13)
!167630 = distinct !{!167630, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!167631 = distinct !{!167631, !167630, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 1"}
!167632 = distinct !{!167632, !167630, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!167633 = distinct !DILocation(line: 1044, column: 28, scope: !224, inlinedAt: !167622)
!167634 = distinct !DILocation(line: 2026, column: 18, scope: !232, inlinedAt: !167633)
!167635 = distinct !DILocation(line: 296, column: 20, scope: !231, inlinedAt: !167634)
!167636 = distinct !DILocation(line: 609, column: 14, scope: !230, inlinedAt: !167635)
!167637 = !DILocation(line: 204, column: 25, scope: !167606)
!167638 = !DILocation(line: 524, column: 9, scope: !167608, inlinedAt: !167637)
!167639 = !DILocation(line: 977, column: 20, scope: !167609, inlinedAt: !167638)
!167640 = !DILocation(line: 177, column: 20, scope: !167610, inlinedAt: !167639)
!167641 = !DILocation(line: 438, column: 50, scope: !167618, inlinedAt: !167640)
!167642 = !DILocation(line: 438, column: 21, scope: !167618, inlinedAt: !167640)
!167643 = !DILocation(line: 205, column: 15, scope: !167621)
!167644 = !{!167624}
!167645 = !{!167631}
!167646 = !{!167632}
!167647 = !DILocation(line: 204, column: 13, scope: !167606)
!167648 = !DILocation(line: 204, column: 44, scope: !167606)
!167649 = !DILocation(line: 3105, column: 26, scope: !29, inlinedAt: !167615)
!167650 = !DILocation(line: 457, column: 8, scope: !803, inlinedAt: !167616)
!167651 = !DILocation(line: 460, column: 12, scope: !36, inlinedAt: !167611)
!167652 = !DILocation(line: 767, column: 9, scope: !167617, inlinedAt: !167641)
!167653 = !DILocation(line: 210, column: 9, scope: !167619, inlinedAt: !167642)
!167654 = !DILocation(line: 977, column: 9, scope: !167609, inlinedAt: !167638)
!167655 = !DILocation(line: 1040, column: 12, scope: !224, inlinedAt: !167622)
!167656 = !DILocation(line: 0, scope: !36, inlinedAt: !167611)
!167657 = !DILocation(line: 101, column: 9, scope: !37, inlinedAt: !167628)
!167658 = !DILocation(line: 469, column: 25, scope: !42, inlinedAt: !167611)
!167659 = !DILocation(line: 469, column: 19, scope: !42, inlinedAt: !167611)
!167660 = !DILocation(line: 442, column: 25, scope: !167629, inlinedAt: !167640)
!167661 = !DILocation(line: 1041, column: 22, scope: !224, inlinedAt: !167622)
!167662 = !DILocation(line: 614, column: 9, scope: !229, inlinedAt: !167636)
!167663 = !DILocation(line: 216, column: 5, scope: !167606)
!167664 = !DILocation(line: 1045, column: 29, scope: !233, inlinedAt: !167622)
!167665 = !DILocation(line: 1046, column: 13, scope: !233, inlinedAt: !167622)
!167666 = !DILocation(line: 211, column: 13, scope: !167621)
!167667 = !DILocation(line: 210, column: 9, scope: !167621)
!167668 = !DILocation(line: 216, column: 6, scope: !167606)
!167669 = !DILocation(line: 199, column: 5, scope: !167606)
!167670 = distinct !DISubprogram(name: "remove<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 462, type: !3148, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167671 = distinct !DILexicalBlock(scope: !167670, file: !3224, line: 463, column: 9)
!167672 = distinct !DISubprogram(name: "contains_key<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE12contains_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 319, type: !3151, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167673 = distinct !DILexicalBlock(scope: !167672, file: !3224, line: 320, column: 9)
!167674 = distinct !DILocation(line: 464, column: 17, scope: !167671)
!167675 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE3getCskY9G75ZWc4U_11polars_expr", scope: !3232, file: !3229, line: 218, type: !3148, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167676 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEE3getjECskY9G75ZWc4U_11polars_expr", scope: !3234, file: !3233, line: 572, type: !3148, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167677 = distinct !DILocation(line: 322, column: 14, scope: !167673, inlinedAt: !167674)
!167678 = distinct !DILocation(line: 576, column: 15, scope: !167676, inlinedAt: !167677)
!167679 = distinct !DISubprogram(name: "map_or<&slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<f32>>, bool, slotmap::basic::{impl#5}::contains_key::{closure_env#0}<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr", scope: !3146, file: !3143, line: 1224, type: !3151, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167680 = distinct !DILocation(line: 323, column: 14, scope: !167673, inlinedAt: !167674)
!167681 = distinct !DILexicalBlock(scope: !167679, file: !3143, line: 1230, column: 13)
!167682 = distinct !{!167682, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr"}
!167683 = distinct !{!167683, !167682, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_3KeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167684 = distinct !DISubprogram(name: "{closure#0}<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBR_4NodefEE12contains_key0CskY9G75ZWc4U_11polars_expr", scope: !3939, file: !3224, line: 323, type: !3151, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167685 = distinct !DILocation(line: 1230, column: 24, scope: !167681, inlinedAt: !167680)
!167686 = distinct !DISubprogram(name: "read<polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEECskY9G75ZWc4U_11polars_expr", scope: !3150, file: !3149, line: 1682, type: !3148, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167687 = distinct !DISubprogram(name: "remove_from_slot<polars_utils::order_statistic_tree::Key, polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE16remove_from_slotCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 436, type: !3148, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167688 = distinct !DILexicalBlock(scope: !167687, file: !3224, line: 438, column: 9)
!167689 = distinct !DISubprogram(name: "take<polars_utils::order_statistic_tree::Node<f32>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodefEE4takeCskY9G75ZWc4U_11polars_expr", scope: !3237, file: !3235, line: 227, type: !3148, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167690 = distinct !DILexicalBlock(scope: !167688, file: !3224, line: 439, column: 9)
!167691 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !3423, file: !3188, line: 2510, type: !3148, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167692 = !{!167683}
!167693 = !DILocation(line: 466, column: 32, scope: !167671)
!167694 = !DILocation(line: 439, column: 21, scope: !167688, inlinedAt: !167693)
!167695 = !DILocation(line: 230, column: 18, scope: !167689, inlinedAt: !167694)
!167696 = !DILocation(line: 445, column: 37, scope: !167690, inlinedAt: !167693)
!167697 = !DILocation(line: 464, column: 17, scope: !167671)
!167698 = !DILocation(line: 322, column: 18, scope: !167673, inlinedAt: !167674)
!167699 = !DILocation(line: 219, column: 12, scope: !167675, inlinedAt: !167678)
!167700 = !DILocation(line: 1229, column: 15, scope: !167679, inlinedAt: !167680)
!167701 = !DILocation(line: 1229, column: 9, scope: !167679, inlinedAt: !167680)
!167702 = !DILocation(line: 1230, column: 24, scope: !167681, inlinedAt: !167680)
!167703 = !DILocation(line: 323, column: 35, scope: !167684, inlinedAt: !167685)
!167704 = !DILocation(line: 464, column: 12, scope: !167671)
!167705 = !DILocation(line: 468, column: 13, scope: !167671)
!167706 = !DILocation(line: 464, column: 9, scope: !167671)
!167707 = !DILocation(line: 1721, column: 9, scope: !167686, inlinedAt: !167695)
!167708 = !DILocation(line: 442, column: 28, scope: !167690, inlinedAt: !167693)
!167709 = !DILocation(line: 442, column: 9, scope: !167690, inlinedAt: !167693)
!167710 = !DILocation(line: 443, column: 9, scope: !167690, inlinedAt: !167693)
!167711 = !DILocation(line: 444, column: 9, scope: !167690, inlinedAt: !167693)
!167712 = !DILocation(line: 2511, column: 13, scope: !167691, inlinedAt: !167696)
!167713 = !DILocation(line: 445, column: 9, scope: !167690, inlinedAt: !167693)
!167714 = !DILocation(line: 470, column: 6, scope: !167670)
!167715 = distinct !DISubprogram(name: "with_capacity_and_key<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 199, type: !3148, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167716 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 433, type: !3148, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167717 = distinct !DISubprogram(name: "with_capacity<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 523, type: !3148, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167718 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 976, type: !3148, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167719 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 175, type: !3148, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167720 = distinct !DILocation(line: 434, column: 15, scope: !167716, inlinedAt: !167750)
!167721 = distinct !DILocation(line: 454, column: 28, scope: !34, inlinedAt: !167720)
!167722 = distinct !DILocation(line: 902, column: 23, scope: !33, inlinedAt: !167721)
!167723 = distinct !DILocation(line: 527, column: 39, scope: !32, inlinedAt: !167722)
!167724 = distinct !DILocation(line: 1215, column: 31, scope: !30, inlinedAt: !167723)
!167725 = distinct !DILocation(line: 1216, column: 16, scope: !804, inlinedAt: !167723)
!167726 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 766, type: !3148, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167727 = distinct !DILexicalBlock(scope: !167716, file: !3191, line: 435, column: 13)
!167728 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !3435, file: !3434, line: 202, type: !3148, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167729 = distinct !DISubprogram(name: "push<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE4pushCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 1003, type: !3148, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167730 = distinct !DILexicalBlock(scope: !167715, file: !3224, line: 204, column: 9)
!167731 = distinct !DILocation(line: 1004, column: 22, scope: !167729, inlinedAt: !167753)
!167732 = distinct !{!167732, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!167733 = distinct !{!167733, !167732, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!167734 = distinct !{!167734, !167732, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 1"}
!167735 = distinct !DILocation(line: 1044, column: 28, scope: !236, inlinedAt: !167731)
!167736 = distinct !DILocation(line: 2026, column: 18, scope: !240, inlinedAt: !167735)
!167737 = distinct !DILocation(line: 296, column: 20, scope: !239, inlinedAt: !167736)
!167738 = distinct !DILocation(line: 609, column: 14, scope: !238, inlinedAt: !167737)
!167739 = distinct !{!167739, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr"}
!167740 = distinct !{!167740, !167739, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!167741 = distinct !DILocation(line: 465, column: 47, scope: !36, inlinedAt: !167720)
!167742 = distinct !DILocation(line: 449, column: 14, scope: !41, inlinedAt: !167741)
!167743 = distinct !DILocation(line: 332, column: 9, scope: !40, inlinedAt: !167742)
!167744 = distinct !DILocation(line: 210, column: 73, scope: !39, inlinedAt: !167743)
!167745 = distinct !DILexicalBlock(scope: !167716, file: !3191, line: 442, column: 13)
!167746 = distinct !DILocation(line: 1045, column: 13, scope: !242, inlinedAt: !167731)
!167747 = !DILocation(line: 204, column: 25, scope: !167715)
!167748 = !DILocation(line: 524, column: 9, scope: !167717, inlinedAt: !167747)
!167749 = !DILocation(line: 977, column: 20, scope: !167718, inlinedAt: !167748)
!167750 = !DILocation(line: 177, column: 20, scope: !167719, inlinedAt: !167749)
!167751 = !DILocation(line: 438, column: 50, scope: !167727, inlinedAt: !167750)
!167752 = !DILocation(line: 438, column: 21, scope: !167727, inlinedAt: !167750)
!167753 = !DILocation(line: 205, column: 15, scope: !167730)
!167754 = !{!167733}
!167755 = !{!167734}
!167756 = !{!167740}
!167757 = !DILocation(line: 204, column: 13, scope: !167715)
!167758 = !DILocation(line: 204, column: 44, scope: !167715)
!167759 = !DILocation(line: 3105, column: 26, scope: !29, inlinedAt: !167724)
!167760 = !DILocation(line: 457, column: 8, scope: !803, inlinedAt: !167725)
!167761 = !DILocation(line: 460, column: 12, scope: !36, inlinedAt: !167720)
!167762 = !DILocation(line: 767, column: 9, scope: !167726, inlinedAt: !167751)
!167763 = !DILocation(line: 210, column: 9, scope: !167728, inlinedAt: !167752)
!167764 = !DILocation(line: 977, column: 9, scope: !167718, inlinedAt: !167748)
!167765 = !DILocation(line: 1041, column: 22, scope: !236, inlinedAt: !167731)
!167766 = !DILocation(line: 614, column: 9, scope: !237, inlinedAt: !167738)
!167767 = !DILocation(line: 0, scope: !36, inlinedAt: !167720)
!167768 = !DILocation(line: 101, column: 9, scope: !37, inlinedAt: !167744)
!167769 = !DILocation(line: 469, column: 25, scope: !42, inlinedAt: !167720)
!167770 = !DILocation(line: 469, column: 19, scope: !42, inlinedAt: !167720)
!167771 = !DILocation(line: 442, column: 25, scope: !167745, inlinedAt: !167750)
!167772 = !DILocation(line: 1040, column: 12, scope: !236, inlinedAt: !167731)
!167773 = !DILocation(line: 216, column: 5, scope: !167715)
!167774 = !DILocation(line: 1921, column: 41, scope: !241, inlinedAt: !167746)
!167775 = !DILocation(line: 1046, column: 13, scope: !242, inlinedAt: !167731)
!167776 = !DILocation(line: 211, column: 13, scope: !167730)
!167777 = !DILocation(line: 210, column: 9, scope: !167730)
!167778 = !DILocation(line: 216, column: 6, scope: !167715)
!167779 = !DILocation(line: 199, column: 5, scope: !167715)
!167780 = distinct !DISubprogram(name: "remove<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE6removeCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 462, type: !3148, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167781 = distinct !DILexicalBlock(scope: !167780, file: !3224, line: 463, column: 9)
!167782 = distinct !DISubprogram(name: "contains_key<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 319, type: !3151, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167783 = distinct !DILexicalBlock(scope: !167782, file: !3224, line: 320, column: 9)
!167784 = distinct !DILocation(line: 464, column: 17, scope: !167781)
!167785 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB9_6option6OptionlEEEE3getCskY9G75ZWc4U_11polars_expr", scope: !3232, file: !3229, line: 218, type: !3148, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167786 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB5_6option6OptionlEEE3getjECskY9G75ZWc4U_11polars_expr", scope: !3234, file: !3233, line: 572, type: !3148, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167787 = distinct !DILocation(line: 322, column: 14, scope: !167783, inlinedAt: !167784)
!167788 = distinct !DILocation(line: 576, column: 15, scope: !167786, inlinedAt: !167787)
!167789 = distinct !DISubprogram(name: "map_or<&slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>, bool, slotmap::basic::{impl#5}::contains_key::{closure_env#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr", scope: !3146, file: !3143, line: 1224, type: !3151, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167790 = distinct !DILocation(line: 323, column: 14, scope: !167783, inlinedAt: !167784)
!167791 = distinct !DILexicalBlock(scope: !167789, file: !3143, line: 1230, column: 13)
!167792 = distinct !{!167792, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr"}
!167793 = distinct !{!167793, !167792, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167794 = distinct !DISubprogram(name: "{closure#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBR_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE12contains_key0CskY9G75ZWc4U_11polars_expr", scope: !3939, file: !3224, line: 323, type: !3151, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167795 = distinct !DILocation(line: 1230, column: 24, scope: !167791, inlinedAt: !167790)
!167796 = distinct !DISubprogram(name: "read<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionlEEECskY9G75ZWc4U_11polars_expr", scope: !3150, file: !3149, line: 1682, type: !3148, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167797 = distinct !DISubprogram(name: "remove_from_slot<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE16remove_from_slotCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 436, type: !3148, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167798 = distinct !DILexicalBlock(scope: !167797, file: !3224, line: 438, column: 9)
!167799 = distinct !DISubprogram(name: "take<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB6_6option6OptionlEEE4takeCskY9G75ZWc4U_11polars_expr", scope: !3237, file: !3235, line: 227, type: !3148, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167800 = distinct !DILexicalBlock(scope: !167798, file: !3224, line: 439, column: 9)
!167801 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !3423, file: !3188, line: 2510, type: !3148, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167802 = !{!167793}
!167803 = !DILocation(line: 466, column: 32, scope: !167781)
!167804 = !DILocation(line: 439, column: 21, scope: !167798, inlinedAt: !167803)
!167805 = !DILocation(line: 230, column: 18, scope: !167799, inlinedAt: !167804)
!167806 = !DILocation(line: 445, column: 37, scope: !167800, inlinedAt: !167803)
!167807 = !DILocation(line: 464, column: 17, scope: !167781)
!167808 = !DILocation(line: 322, column: 18, scope: !167783, inlinedAt: !167784)
!167809 = !DILocation(line: 219, column: 12, scope: !167785, inlinedAt: !167788)
!167810 = !DILocation(line: 1229, column: 15, scope: !167789, inlinedAt: !167790)
!167811 = !DILocation(line: 1229, column: 9, scope: !167789, inlinedAt: !167790)
!167812 = !DILocation(line: 1230, column: 24, scope: !167791, inlinedAt: !167790)
!167813 = !DILocation(line: 323, column: 35, scope: !167794, inlinedAt: !167795)
!167814 = !DILocation(line: 464, column: 12, scope: !167781)
!167815 = !DILocation(line: 468, column: 13, scope: !167781)
!167816 = !DILocation(line: 464, column: 9, scope: !167781)
!167817 = !DILocation(line: 1721, column: 9, scope: !167796, inlinedAt: !167805)
!167818 = !DILocation(line: 442, column: 28, scope: !167800, inlinedAt: !167803)
!167819 = !DILocation(line: 442, column: 9, scope: !167800, inlinedAt: !167803)
!167820 = !DILocation(line: 443, column: 9, scope: !167800, inlinedAt: !167803)
!167821 = !DILocation(line: 444, column: 9, scope: !167800, inlinedAt: !167803)
!167822 = !DILocation(line: 2511, column: 13, scope: !167801, inlinedAt: !167806)
!167823 = !DILocation(line: 445, column: 9, scope: !167800, inlinedAt: !167803)
!167824 = !DILocation(line: 470, column: 6, scope: !167780)
!167825 = distinct !DILocation(line: 704, column: 14, scope: !2515)
!167826 = distinct !DILocation(line: 1584, column: 16, scope: !2525, inlinedAt: !167825)
!167827 = distinct !{!167827, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr"}
!167828 = distinct !{!167828, !167827, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_lEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167829 = !DILocation(line: 702, column: 9, scope: !2515)
!167830 = !DILocation(line: 3764, column: 14, scope: !2516, inlinedAt: !167829)
!167831 = !DILocation(line: 703, column: 14, scope: !2515)
!167832 = !DILocation(line: 603, column: 15, scope: !2518, inlinedAt: !167831)
!167833 = !DILocation(line: 1877, column: 78, scope: !2514, inlinedAt: !167830)
!167834 = !DILocation(line: 2026, column: 18, scope: !2520, inlinedAt: !167833)
!167835 = !DILocation(line: 296, column: 20, scope: !2521, inlinedAt: !167834)
!167836 = !DILocation(line: 609, column: 14, scope: !2522, inlinedAt: !167835)
!167837 = !{!167828}
!167838 = !DILocation(line: 1877, column: 92, scope: !2514, inlinedAt: !167830)
!167839 = !DILocation(line: 703, column: 22, scope: !2515)
!167840 = !DILocation(line: 229, column: 12, scope: !2517, inlinedAt: !167832)
!167841 = !DILocation(line: 614, column: 9, scope: !2519, inlinedAt: !167836)
!167842 = !DILocation(line: 231, column: 27, scope: !2517, inlinedAt: !167832)
!167843 = !DILocation(line: 704, column: 28, scope: !2523, inlinedAt: !167826)
!167844 = !DILocation(line: 1589, column: 5, scope: !2524, inlinedAt: !167825)
!167845 = !DILocation(line: 0, scope: !2524, inlinedAt: !167825)
!167846 = !DILocation(line: 706, column: 6, scope: !2513)
!167847 = distinct !DISubprogram(name: "with_capacity_and_key<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE21with_capacity_and_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 199, type: !3148, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167848 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 433, type: !3148, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167849 = distinct !DISubprogram(name: "with_capacity<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE13with_capacityCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 523, type: !3148, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167850 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 976, type: !3148, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167851 = distinct !DISubprogram(name: "with_capacity_in<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 175, type: !3148, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167852 = distinct !DILocation(line: 434, column: 15, scope: !167848, inlinedAt: !167882)
!167853 = distinct !DILocation(line: 454, column: 28, scope: !34, inlinedAt: !167852)
!167854 = distinct !DILocation(line: 902, column: 23, scope: !33, inlinedAt: !167853)
!167855 = distinct !DILocation(line: 527, column: 39, scope: !32, inlinedAt: !167854)
!167856 = distinct !DILocation(line: 1215, column: 31, scope: !30, inlinedAt: !167855)
!167857 = distinct !DILocation(line: 1216, column: 16, scope: !804, inlinedAt: !167855)
!167858 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 766, type: !3148, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167859 = distinct !DILexicalBlock(scope: !167848, file: !3191, line: 435, column: 13)
!167860 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !3435, file: !3434, line: 202, type: !3148, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167861 = distinct !DISubprogram(name: "push<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE4pushCskY9G75ZWc4U_11polars_expr", scope: !3195, file: !3185, line: 1003, type: !3148, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167862 = distinct !DILexicalBlock(scope: !167847, file: !3224, line: 204, column: 9)
!167863 = distinct !DILocation(line: 1004, column: 22, scope: !167861, inlinedAt: !167885)
!167864 = distinct !{!167864, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!167865 = distinct !{!167865, !167864, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!167866 = distinct !{!167866, !167864, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 1"}
!167867 = distinct !DILocation(line: 1044, column: 28, scope: !244, inlinedAt: !167863)
!167868 = distinct !DILocation(line: 2026, column: 18, scope: !248, inlinedAt: !167867)
!167869 = distinct !DILocation(line: 296, column: 20, scope: !247, inlinedAt: !167868)
!167870 = distinct !DILocation(line: 609, column: 14, scope: !246, inlinedAt: !167869)
!167871 = distinct !{!167871, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr"}
!167872 = distinct !{!167872, !167871, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!167873 = distinct !DILocation(line: 465, column: 47, scope: !36, inlinedAt: !167852)
!167874 = distinct !DILocation(line: 449, column: 14, scope: !41, inlinedAt: !167873)
!167875 = distinct !DILocation(line: 332, column: 9, scope: !40, inlinedAt: !167874)
!167876 = distinct !DILocation(line: 210, column: 73, scope: !39, inlinedAt: !167875)
!167877 = distinct !DILexicalBlock(scope: !167848, file: !3191, line: 442, column: 13)
!167878 = distinct !DILocation(line: 1045, column: 13, scope: !250, inlinedAt: !167863)
!167879 = !DILocation(line: 204, column: 25, scope: !167847)
!167880 = !DILocation(line: 524, column: 9, scope: !167849, inlinedAt: !167879)
!167881 = !DILocation(line: 977, column: 20, scope: !167850, inlinedAt: !167880)
!167882 = !DILocation(line: 177, column: 20, scope: !167851, inlinedAt: !167881)
!167883 = !DILocation(line: 438, column: 50, scope: !167859, inlinedAt: !167882)
!167884 = !DILocation(line: 438, column: 21, scope: !167859, inlinedAt: !167882)
!167885 = !DILocation(line: 205, column: 15, scope: !167862)
!167886 = !{!167865}
!167887 = !{!167866}
!167888 = !{!167872}
!167889 = !DILocation(line: 204, column: 13, scope: !167847)
!167890 = !DILocation(line: 204, column: 44, scope: !167847)
!167891 = !DILocation(line: 3105, column: 26, scope: !29, inlinedAt: !167856)
!167892 = !DILocation(line: 457, column: 8, scope: !803, inlinedAt: !167857)
!167893 = !DILocation(line: 460, column: 12, scope: !36, inlinedAt: !167852)
!167894 = !DILocation(line: 767, column: 9, scope: !167858, inlinedAt: !167883)
!167895 = !DILocation(line: 210, column: 9, scope: !167860, inlinedAt: !167884)
!167896 = !DILocation(line: 977, column: 9, scope: !167850, inlinedAt: !167880)
!167897 = !DILocation(line: 1041, column: 22, scope: !244, inlinedAt: !167863)
!167898 = !DILocation(line: 614, column: 9, scope: !245, inlinedAt: !167870)
!167899 = !DILocation(line: 0, scope: !36, inlinedAt: !167852)
!167900 = !DILocation(line: 101, column: 9, scope: !37, inlinedAt: !167876)
!167901 = !DILocation(line: 469, column: 25, scope: !42, inlinedAt: !167852)
!167902 = !DILocation(line: 469, column: 19, scope: !42, inlinedAt: !167852)
!167903 = !DILocation(line: 442, column: 25, scope: !167877, inlinedAt: !167882)
!167904 = !DILocation(line: 1040, column: 12, scope: !244, inlinedAt: !167863)
!167905 = !DILocation(line: 216, column: 5, scope: !167847)
!167906 = !DILocation(line: 1921, column: 41, scope: !249, inlinedAt: !167878)
!167907 = !DILocation(line: 1046, column: 13, scope: !250, inlinedAt: !167863)
!167908 = !DILocation(line: 211, column: 13, scope: !167862)
!167909 = !DILocation(line: 210, column: 9, scope: !167862)
!167910 = !DILocation(line: 216, column: 6, scope: !167847)
!167911 = !DILocation(line: 199, column: 5, scope: !167847)
!167912 = distinct !DISubprogram(name: "remove<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE6removeCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 462, type: !3148, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167913 = distinct !DILexicalBlock(scope: !167912, file: !3224, line: 463, column: 9)
!167914 = distinct !DISubprogram(name: "contains_key<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_keyCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 319, type: !3151, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167915 = distinct !DILexicalBlock(scope: !167914, file: !3224, line: 320, column: 9)
!167916 = distinct !DILocation(line: 464, column: 17, scope: !167913)
!167917 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB9_6option6OptionxEEEE3getCskY9G75ZWc4U_11polars_expr", scope: !3232, file: !3229, line: 218, type: !3148, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167918 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB5_6option6OptionxEEE3getjECskY9G75ZWc4U_11polars_expr", scope: !3234, file: !3233, line: 572, type: !3148, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167919 = distinct !DILocation(line: 322, column: 14, scope: !167915, inlinedAt: !167916)
!167920 = distinct !DILocation(line: 576, column: 15, scope: !167918, inlinedAt: !167919)
!167921 = distinct !DISubprogram(name: "map_or<&slotmap::basic::Slot<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>, bool, slotmap::basic::{impl#5}::contains_key::{closure_env#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr", scope: !3146, file: !3143, line: 1224, type: !3151, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167922 = distinct !DILocation(line: 323, column: 14, scope: !167915, inlinedAt: !167916)
!167923 = distinct !DILexicalBlock(scope: !167921, file: !3143, line: 1230, column: 13)
!167924 = distinct !{!167924, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr"}
!167925 = distinct !{!167925, !167924, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6map_orbNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E12contains_key0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167926 = distinct !DISubprogram(name: "{closure#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBR_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE12contains_key0CskY9G75ZWc4U_11polars_expr", scope: !3939, file: !3224, line: 323, type: !3151, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167927 = distinct !DILocation(line: 1230, column: 24, scope: !167923, inlinedAt: !167922)
!167928 = distinct !DISubprogram(name: "read<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB4_6option6OptionxEEECskY9G75ZWc4U_11polars_expr", scope: !3150, file: !3149, line: 1682, type: !3148, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167929 = distinct !DISubprogram(name: "remove_from_slot<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE16remove_from_slotCskY9G75ZWc4U_11polars_expr", scope: !3227, file: !3224, line: 436, type: !3148, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167930 = distinct !DILexicalBlock(scope: !167929, file: !3224, line: 438, column: 9)
!167931 = distinct !DISubprogram(name: "take<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3mem13manually_dropINtB2_12ManuallyDropINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReINtNtB6_6option6OptionxEEE4takeCskY9G75ZWc4U_11polars_expr", scope: !3237, file: !3235, line: 227, type: !3148, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167932 = distinct !DILexicalBlock(scope: !167930, file: !3224, line: 439, column: 9)
!167933 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !3423, file: !3188, line: 2510, type: !3148, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167934 = !{!167925}
!167935 = !DILocation(line: 466, column: 32, scope: !167913)
!167936 = !DILocation(line: 439, column: 21, scope: !167930, inlinedAt: !167935)
!167937 = !DILocation(line: 230, column: 18, scope: !167931, inlinedAt: !167936)
!167938 = !DILocation(line: 445, column: 37, scope: !167932, inlinedAt: !167935)
!167939 = !DILocation(line: 464, column: 17, scope: !167913)
!167940 = !DILocation(line: 322, column: 18, scope: !167915, inlinedAt: !167916)
!167941 = !DILocation(line: 219, column: 12, scope: !167917, inlinedAt: !167920)
!167942 = !DILocation(line: 1229, column: 15, scope: !167921, inlinedAt: !167922)
!167943 = !DILocation(line: 1229, column: 9, scope: !167921, inlinedAt: !167922)
!167944 = !DILocation(line: 1230, column: 24, scope: !167923, inlinedAt: !167922)
!167945 = !DILocation(line: 323, column: 35, scope: !167926, inlinedAt: !167927)
!167946 = !DILocation(line: 464, column: 12, scope: !167913)
!167947 = !DILocation(line: 468, column: 13, scope: !167913)
!167948 = !DILocation(line: 464, column: 9, scope: !167913)
!167949 = !DILocation(line: 1721, column: 9, scope: !167928, inlinedAt: !167937)
!167950 = !DILocation(line: 442, column: 28, scope: !167932, inlinedAt: !167935)
!167951 = !DILocation(line: 442, column: 9, scope: !167932, inlinedAt: !167935)
!167952 = !DILocation(line: 443, column: 9, scope: !167932, inlinedAt: !167935)
!167953 = !DILocation(line: 444, column: 9, scope: !167932, inlinedAt: !167935)
!167954 = !DILocation(line: 2511, column: 13, scope: !167933, inlinedAt: !167938)
!167955 = !DILocation(line: 445, column: 9, scope: !167932, inlinedAt: !167935)
!167956 = !DILocation(line: 470, column: 6, scope: !167912)
!167957 = distinct !DILocation(line: 704, column: 14, scope: !2528)
!167958 = distinct !DILocation(line: 1584, column: 16, scope: !2538, inlinedAt: !167957)
!167959 = distinct !{!167959, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr"}
!167960 = distinct !{!167960, !167959, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBw_xEEEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!167961 = !DILocation(line: 702, column: 9, scope: !2528)
!167962 = !DILocation(line: 3764, column: 14, scope: !2529, inlinedAt: !167961)
!167963 = !DILocation(line: 703, column: 14, scope: !2528)
!167964 = !DILocation(line: 603, column: 15, scope: !2531, inlinedAt: !167963)
!167965 = !DILocation(line: 1877, column: 78, scope: !2527, inlinedAt: !167962)
!167966 = !DILocation(line: 2026, column: 18, scope: !2533, inlinedAt: !167965)
!167967 = !DILocation(line: 296, column: 20, scope: !2534, inlinedAt: !167966)
!167968 = !DILocation(line: 609, column: 14, scope: !2535, inlinedAt: !167967)
!167969 = !{!167960}
!167970 = !DILocation(line: 1877, column: 92, scope: !2527, inlinedAt: !167962)
!167971 = !DILocation(line: 703, column: 22, scope: !2528)
!167972 = !DILocation(line: 229, column: 12, scope: !2530, inlinedAt: !167964)
!167973 = !DILocation(line: 614, column: 9, scope: !2532, inlinedAt: !167968)
!167974 = !DILocation(line: 231, column: 27, scope: !2530, inlinedAt: !167964)
!167975 = !DILocation(line: 704, column: 28, scope: !2536, inlinedAt: !167958)
!167976 = !DILocation(line: 1589, column: 5, scope: !2537, inlinedAt: !167957)
!167977 = !DILocation(line: 0, scope: !2537, inlinedAt: !167957)
!167978 = !DILocation(line: 706, column: 6, scope: !2526)
!167979 = distinct !DISubprogram(name: "grow_one<indexmap::Bucket<&polars_utils::pl_str::PlSmallStr, &polars_core::series::Series>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 186, type: !3148, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167980 = distinct !DISubprogram(name: "grow_one<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 490, type: !3148, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!167981 = distinct !DILexicalBlock(scope: !167980, file: !3191, line: 492, column: 95)
!167982 = distinct !{!167982, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr"}
!167983 = distinct !{!167983, !167982, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr: argument 0"}
!167984 = distinct !DILocation(line: 492, column: 41, scope: !167981, inlinedAt: !167990)
!167985 = distinct !DILocation(line: 523, column: 19, scope: !1384, inlinedAt: !167984)
!167986 = distinct !DILocation(line: 1683, column: 8, scope: !1383, inlinedAt: !167985)
!167987 = distinct !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !167984)
!167988 = distinct !DILocation(line: 531, column: 23, scope: !1388, inlinedAt: !167984)
!167989 = distinct !DILocation(line: 777, column: 29, scope: !1387, inlinedAt: !167988)
!167990 = !DILocation(line: 188, column: 29, scope: !167979)
!167991 = !{!167983}
!167992 = !DILocation(line: 492, column: 56, scope: !167981, inlinedAt: !167990)
!167993 = !DILocation(line: 492, column: 41, scope: !167981, inlinedAt: !167990)
!167994 = !DILocation(line: 522, column: 28, scope: !1381, inlinedAt: !167984)
!167995 = !DILocation(line: 1038, column: 12, scope: !1382, inlinedAt: !167986)
!167996 = !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !167984)
!167997 = !DILocation(line: 528, column: 33, scope: !1385, inlinedAt: !167984)
!167998 = !DILocation(line: 2173, column: 15, scope: !1386, inlinedAt: !167987)
!167999 = !DILocation(line: 2173, column: 9, scope: !1386, inlinedAt: !167987)
!168000 = !DILocation(line: 0, scope: !1386, inlinedAt: !167987)
!168001 = !DILocation(line: 2175, column: 17, scope: !1386, inlinedAt: !167987)
!168002 = !DILocation(line: 528, column: 62, scope: !1385, inlinedAt: !167984)
!168003 = !DILocation(line: 493, column: 13, scope: !167981, inlinedAt: !167990)
!168004 = !DILocation(line: 2174, column: 16, scope: !1386, inlinedAt: !167987)
!168005 = !DILocation(line: 776, column: 9, scope: !1387, inlinedAt: !167988)
!168006 = !DILocation(line: 42, column: 26, scope: !1389, inlinedAt: !167989)
!168007 = !DILocation(line: 777, column: 9, scope: !1387, inlinedAt: !167988)
!168008 = !DILocation(line: 189, column: 6, scope: !167979)
!168009 = distinct !DISubprogram(name: "grow_one<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<&polars_utils::float16::pf16>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRNtNtB1t_7float164pf16EEE8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 186, type: !3148, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168010 = distinct !DISubprogram(name: "grow_one<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 490, type: !3148, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168011 = distinct !DILexicalBlock(scope: !168010, file: !3191, line: 492, column: 95)
!168012 = distinct !{!168012, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr"}
!168013 = distinct !{!168013, !168012, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr: argument 0"}
!168014 = distinct !DILocation(line: 492, column: 41, scope: !168011, inlinedAt: !168020)
!168015 = distinct !DILocation(line: 523, column: 19, scope: !1384, inlinedAt: !168014)
!168016 = distinct !DILocation(line: 1683, column: 8, scope: !1383, inlinedAt: !168015)
!168017 = distinct !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168014)
!168018 = distinct !DILocation(line: 531, column: 23, scope: !1388, inlinedAt: !168014)
!168019 = distinct !DILocation(line: 777, column: 29, scope: !1387, inlinedAt: !168018)
!168020 = !DILocation(line: 188, column: 29, scope: !168009)
!168021 = !{!168013}
!168022 = !DILocation(line: 492, column: 56, scope: !168011, inlinedAt: !168020)
!168023 = !DILocation(line: 492, column: 41, scope: !168011, inlinedAt: !168020)
!168024 = !DILocation(line: 522, column: 28, scope: !1381, inlinedAt: !168014)
!168025 = !DILocation(line: 1038, column: 12, scope: !1382, inlinedAt: !168016)
!168026 = !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168014)
!168027 = !DILocation(line: 528, column: 33, scope: !1385, inlinedAt: !168014)
!168028 = !DILocation(line: 2173, column: 15, scope: !1386, inlinedAt: !168017)
!168029 = !DILocation(line: 2173, column: 9, scope: !1386, inlinedAt: !168017)
!168030 = !DILocation(line: 0, scope: !1386, inlinedAt: !168017)
!168031 = !DILocation(line: 2175, column: 17, scope: !1386, inlinedAt: !168017)
!168032 = !DILocation(line: 528, column: 62, scope: !1385, inlinedAt: !168014)
!168033 = !DILocation(line: 493, column: 13, scope: !168011, inlinedAt: !168020)
!168034 = !DILocation(line: 2174, column: 16, scope: !1386, inlinedAt: !168017)
!168035 = !DILocation(line: 776, column: 9, scope: !1387, inlinedAt: !168018)
!168036 = !DILocation(line: 42, column: 26, scope: !1389, inlinedAt: !168019)
!168037 = !DILocation(line: 777, column: 9, scope: !1387, inlinedAt: !168018)
!168038 = !DILocation(line: 189, column: 6, scope: !168009)
!168039 = distinct !DISubprogram(name: "grow_one<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<&i8>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRaEEE8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 186, type: !3148, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168040 = distinct !DISubprogram(name: "grow_one<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 490, type: !3148, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168041 = distinct !DILexicalBlock(scope: !168040, file: !3191, line: 492, column: 95)
!168042 = distinct !{!168042, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr"}
!168043 = distinct !{!168043, !168042, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr: argument 0"}
!168044 = distinct !DILocation(line: 492, column: 41, scope: !168041, inlinedAt: !168050)
!168045 = distinct !DILocation(line: 523, column: 19, scope: !1384, inlinedAt: !168044)
!168046 = distinct !DILocation(line: 1683, column: 8, scope: !1383, inlinedAt: !168045)
!168047 = distinct !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168044)
!168048 = distinct !DILocation(line: 531, column: 23, scope: !1388, inlinedAt: !168044)
!168049 = distinct !DILocation(line: 777, column: 29, scope: !1387, inlinedAt: !168048)
!168050 = !DILocation(line: 188, column: 29, scope: !168039)
!168051 = !{!168043}
!168052 = !DILocation(line: 492, column: 56, scope: !168041, inlinedAt: !168050)
!168053 = !DILocation(line: 492, column: 41, scope: !168041, inlinedAt: !168050)
!168054 = !DILocation(line: 522, column: 28, scope: !1381, inlinedAt: !168044)
!168055 = !DILocation(line: 1038, column: 12, scope: !1382, inlinedAt: !168046)
!168056 = !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168044)
!168057 = !DILocation(line: 528, column: 33, scope: !1385, inlinedAt: !168044)
!168058 = !DILocation(line: 2173, column: 15, scope: !1386, inlinedAt: !168047)
!168059 = !DILocation(line: 2173, column: 9, scope: !1386, inlinedAt: !168047)
!168060 = !DILocation(line: 0, scope: !1386, inlinedAt: !168047)
!168061 = !DILocation(line: 2175, column: 17, scope: !1386, inlinedAt: !168047)
!168062 = !DILocation(line: 528, column: 62, scope: !1385, inlinedAt: !168044)
!168063 = !DILocation(line: 493, column: 13, scope: !168041, inlinedAt: !168050)
!168064 = !DILocation(line: 2174, column: 16, scope: !1386, inlinedAt: !168047)
!168065 = !DILocation(line: 776, column: 9, scope: !1387, inlinedAt: !168048)
!168066 = !DILocation(line: 42, column: 26, scope: !1389, inlinedAt: !168049)
!168067 = !DILocation(line: 777, column: 9, scope: !1387, inlinedAt: !168048)
!168068 = !DILocation(line: 189, column: 6, scope: !168039)
!168069 = distinct !DISubprogram(name: "grow_one<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<&f64>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRdEEE8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 186, type: !3148, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168070 = distinct !DISubprogram(name: "grow_one<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 490, type: !3148, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168071 = distinct !DILexicalBlock(scope: !168070, file: !3191, line: 492, column: 95)
!168072 = distinct !{!168072, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr"}
!168073 = distinct !{!168073, !168072, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr: argument 0"}
!168074 = distinct !DILocation(line: 492, column: 41, scope: !168071, inlinedAt: !168080)
!168075 = distinct !DILocation(line: 523, column: 19, scope: !1384, inlinedAt: !168074)
!168076 = distinct !DILocation(line: 1683, column: 8, scope: !1383, inlinedAt: !168075)
!168077 = distinct !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168074)
!168078 = distinct !DILocation(line: 531, column: 23, scope: !1388, inlinedAt: !168074)
!168079 = distinct !DILocation(line: 777, column: 29, scope: !1387, inlinedAt: !168078)
!168080 = !DILocation(line: 188, column: 29, scope: !168069)
!168081 = !{!168073}
!168082 = !DILocation(line: 492, column: 56, scope: !168071, inlinedAt: !168080)
!168083 = !DILocation(line: 492, column: 41, scope: !168071, inlinedAt: !168080)
!168084 = !DILocation(line: 522, column: 28, scope: !1381, inlinedAt: !168074)
!168085 = !DILocation(line: 1038, column: 12, scope: !1382, inlinedAt: !168076)
!168086 = !DILocation(line: 528, column: 28, scope: !1385, inlinedAt: !168074)
!168087 = !DILocation(line: 528, column: 33, scope: !1385, inlinedAt: !168074)
!168088 = !DILocation(line: 2173, column: 15, scope: !1386, inlinedAt: !168077)
!168089 = !DILocation(line: 2173, column: 9, scope: !1386, inlinedAt: !168077)
!168090 = !DILocation(line: 0, scope: !1386, inlinedAt: !168077)
!168091 = !DILocation(line: 2175, column: 17, scope: !1386, inlinedAt: !168077)
!168092 = !DILocation(line: 528, column: 62, scope: !1385, inlinedAt: !168074)
!168093 = !DILocation(line: 493, column: 13, scope: !168071, inlinedAt: !168080)
!168094 = !DILocation(line: 2174, column: 16, scope: !1386, inlinedAt: !168077)
!168095 = !DILocation(line: 776, column: 9, scope: !1387, inlinedAt: !168078)
!168096 = !DILocation(line: 42, column: 26, scope: !1389, inlinedAt: !168079)
!168097 = !DILocation(line: 777, column: 9, scope: !1387, inlinedAt: !168078)
!168098 = !DILocation(line: 189, column: 6, scope: !168069)
!168099 = distinct !DISubprogram(name: "grow_one<slotmap::basic::Slot<polars_utils::order_statistic_tree::Node<&f32>>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils20order_statistic_tree4NodeRfEEE8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3194, file: !3191, line: 186, type: !3148, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168100 = distinct !DISubprogram(name: "grow_one<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8grow_oneCskY9G75ZWc4U_11polars_expr", scope: !3193, file: !3191, line: 490, type: !3148, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3147)
!168101 = distinct !DILexicalBlock(scope: !168100, file: !3191, line: 492, column: 95)
!168102 = distinct !{!168102, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr"}
!168103 = distinct !{!168103, !168102, !"_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskY9G75ZWc4U_11polars_expr: argument 0"}
!168104 = distinct !DILocation(line: 492, column: 41, scope: !168101, inlinedAt: !168110)
end_hunk_2
