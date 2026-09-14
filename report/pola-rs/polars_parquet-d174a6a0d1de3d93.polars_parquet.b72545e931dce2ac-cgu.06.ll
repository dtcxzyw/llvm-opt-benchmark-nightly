Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.06?download=true
inline.NumInlined: 2903
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQQINtNtB2_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.n:                                             ; preds = %._crit_edge, %.thread98
  %i.cf = phi i64 [ %.pre107, %._crit_edge ], [ %i.az, %.thread98 ], !dbg !7020
  %i.cg = phi i64 [ %.pre106, %._crit_edge ], [ %i.ba, %.thread98 ], !dbg !7019 ; 5 uses
  %i.ch = load ptr, ptr %i.s, align 8, !dbg !7021, !nonnull !1738, !noundef !1738
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg, !dbg !7022 ; 2 uses
  %i.cj = sub i64 %i.cf, %i.cg, !dbg !7023
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3.ph, i64 %i.cj), !dbg !7024 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6878), !dbg !7025
  %i.ck = icmp eq i64 %i.bb, 0, !dbg !7026
  br i1 %i.ck, label %.thread, label %bb.o, !dbg !7026

.thread:                                          ; preds = %bb.n
  %i.cl = icmp sgt i64 %i.cg, -1, !dbg !7027
  call void @llvm.assume(i1 %i.cl), !dbg !7028
  store i64 %i.cg, ptr %i.c, align 8, !dbg !7029
  br label %.loopexit118, !dbg !7030

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp ult i64 %i.bb, %.sroa.0.0.i, !dbg !7031
  %.val.i6.i = load ptr, ptr %.val.i.i64, align 8, !dbg !6883, !noalias !6881, !nonnull !1738, !align !1780, !noundef !1738 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 8, !dbg !7032 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 16, !dbg !7033 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 24, !dbg !7034 ; 4 uses
  br i1 %i.cm, label %bb.q, label %bb.p, !dbg !7031

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !6888), !dbg !7035
  %i.cq = load ptr, ptr %i.cn, align 8, !dbg !7036, !alias.scope !6889, !noalias !6890, !nonnull !1738, !noundef !1738
  %i.cr = load i64, ptr %i.co, align 8, !dbg !7037, !alias.scope !6889, !noalias !6890, !noundef !1738 ; 2 uses
  %i.cs = load i64, ptr %i.cp, align 8, !dbg !7038, !alias.scope !6891, !noalias !6890, !noundef !1738 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cs), !dbg !7039 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.0.0.i.i.i.i.i.i, !dbg !7040
  %i.cu = sub nuw nsw i64 %i.cr, %.sroa.0.0.i.i.i.i.i.i, !dbg !7041
  %.sroa.0.0.i.i4.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cu, i64 %.sroa.0.0.i), !dbg !7042 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.ci, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137), !dbg !7043, !noalias !6892
  %.sroa.0.0.i.i.i.i.i.i.i77 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i.i.i, i64 %.sroa.048.2), !dbg !7044
  %i.cv = add i64 %.sroa.0.0.i.i4.i.i.i.i, %i.cs, !dbg !7045
  store i64 %i.cv, ptr %i.cp, align 8, !dbg !7045, !alias.scope !6888, !noalias !6900
  br label %bb.r, !dbg !7046

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !6901), !dbg !7047
  %i.cw = load ptr, ptr %i.cn, align 8, !dbg !7048, !alias.scope !6902, !noalias !6903, !nonnull !1738, !noundef !1738
  %i.cx = load i64, ptr %i.co, align 8, !dbg !7049, !alias.scope !6902, !noalias !6903, !noundef !1738 ; 2 uses
  %i.cy = load i64, ptr %i.cp, align 8, !dbg !7050, !alias.scope !6904, !noalias !6903, !noundef !1738 ; 2 uses
  %.sroa.0.0.i.i.i.i.i7.i = call noundef i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy), !dbg !7051 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.i.i.i.i.i7.i, !dbg !7052
  %i.da = sub nuw nsw i64 %i.cx, %.sroa.0.0.i.i.i.i.i7.i, !dbg !7053
  %.sroa.0.0.i.i4.i.i.i8.i = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %i.bb), !dbg !7054 ; 5 uses
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.ci, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i4.i.i.i8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137), !dbg !7055, !noalias !6905
  %i.db = add i64 %.sroa.0.0.i.i4.i.i.i8.i, %i.cy, !dbg !7056
  store i64 %i.db, ptr %i.cp, align 8, !dbg !7056, !alias.scope !6901, !noalias !6906
  %.sroa.0.0.i10.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i4.i.i.i8.i, i64 %.sroa.048.2), !dbg !7057
  br label %bb.r, !dbg !7046

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.13.1 = phi i64 [ %.sroa.0.0.i10.i, %bb.q ], [ %.sroa.0.0.i.i.i.i.i.i.i77, %bb.p ], !dbg !6882 ; 2 uses
  %.sroa.8.193 = phi i64 [ %.sroa.0.0.i.i4.i.i.i8.i, %bb.q ], [ %.sroa.0.0.i.i4.i.i.i.i, %bb.p ], !dbg !6882 ; 6 uses
  %i.dc = sub nuw i64 %i.bb, %.sroa.8.193, !dbg !6882 ; 3 uses
  store i64 %i.dc, ptr %i.r, align 8, !dbg !6882, !alias.scope !6878, !noalias !6907
  %.pre108 = load i64, ptr %i.c, align 8, !dbg !7058 ; 2 uses
  %i.dd = icmp sgt i64 %.pre108, -1, !dbg !7027
  call void @llvm.assume(i1 %i.dd), !dbg !7028
  %i.de = add i64 %.pre108, %.sroa.8.193, !dbg !7059 ; 4 uses
  store i64 %i.de, ptr %i.c, align 8, !dbg !7029
  %i.df = icmp eq i64 %.sroa.8.193, 0, !dbg !7030
  br i1 %i.df, label %.loopexit118, label %bb.s, !dbg !7030

bb.s:                                             ; preds = %bb.r
  %i.dg = sub nuw i64 %.sroa.13.1, %.sroa.8.193, !dbg !7060 ; 2 uses
  %i.dh = icmp ult i64 %.sroa.8.193, %.sroa.0.0.i, !dbg !7061
  %i.di = add i32 %.sroa.019.0, 1, !dbg !7061
  %.sroa.019.1 = select i1 %i.dh, i32 %i.di, i32 0, !dbg !7061 ; 3 uses
  br i1 %.sroa.013.1, label %bb.t, label %bb.h, !dbg !7062

.loopexit118:                                     ; preds = %bb.r, %.thread
  %i.dj = phi i64 [ %i.cg, %.thread ], [ %i.de, %bb.r ]
  %i.dk = sub nsw i64 %i.dj, %i.d, !dbg !7063
  br label %.loopexit, !dbg !7064

bb.t:                                             ; preds = %bb.s
  %i.dl = icmp ne i64 %.sroa.13.1, %.sroa.0.0.i, !dbg !7065
  %i.dm = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.dl, i1 %i.dm, i1 false, !dbg !7066
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3.ph, !dbg !7066 ; 4 uses
  %i.dn = icmp uge i64 %.sroa.0.0.i, %spec.select, !dbg !7067
  %i.do = icmp eq i64 %.sroa.8.193, %.sroa.0.0.i
  %or.cond2 = and i1 %i.do, %i.dn, !dbg !7067
  br i1 %or.cond2, label %bb.u, label %.outer.backedge, !dbg !7067

bb.u:                                             ; preds = %bb.t
  %i.dp = shl nuw i64 %spec.select, 1, !dbg !7068
  %i.dq = icmp slt i64 %spec.select, 0, !dbg !7068
  br i1 %i.dq, label %bb.v, label %.outer.backedge, !dbg !7069, !prof !1767

.outer:                                           ; preds = %.outer.backedge, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread
  %.ph = phi i64 [ %i.q, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %i.de, %.outer.backedge ]
  %.ph127 = phi i64 [ %.promoted, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %i.dc, %.outer.backedge ]
  %.sroa.048.2.ph = phi i64 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %i.dg, %.outer.backedge ]
  %.sroa.050.3.ph = phi i64 [ %.sroa.050.2, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %.sroa.050.3.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.019.0.ph = phi i32 [ 0, %_RNCINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEE0CsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %.sroa.019.1, %.outer.backedge ]
  br label %bb.h, !dbg !6973

bb.v:                                             ; preds = %bb.u
  br label %.outer.backedge, !dbg !7070

.outer.backedge:                                  ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.050.3.ph.be = phi i64 [ %spec.select, %bb.t ], [ %i.dp, %bb.u ], [ -1, %bb.v ]
  br label %.outer, !dbg !6973

.loopexit:                                        ; preds = %bb.m, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit74, %.loopexit118
  %.sroa.8.1 = phi i64 [ %i.dk, %.loopexit118 ], [ %i.bz, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit74 ], [ 163208757251, %bb.m ], !dbg !7071
  %.sroa.010.1 = phi i64 [ 0, %.loopexit118 ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit74 ], [ 1, %bb.m ], !dbg !7071
  %i.dr = inttoptr i64 %.sroa.8.1 to ptr, !dbg !7072
  br label %bb.w, !dbg !7073

bb.w:                                             ; preds = %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dr, %.loopexit ], [ null, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit ], !dbg !6969
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 0, %_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQQINtNtB4_6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEEECsfISxE4fmY1Y_14polars_parquet.exit ], !dbg !6969
  %i.ds = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0, !dbg !7072
  %i.dt = insertvalue { i64, ptr } %i.ds, ptr %.sroa.8.2, 1, !dbg !7072
  ret { i64, ptr } %i.dt, !dbg !7072
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment22compress_fragment_fastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef %7, ptr noalias noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias noundef align 8 dereferenceable(8) %12, ptr noalias noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias noundef align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #1 !dbg !7074 {
bb.a:
  %i.a = load i64, ptr %15, align 8, !dbg !7086, !noundef !1738 ; 2 uses
  %i.b = icmp eq i64 %3, 0, !dbg !7087
  br i1 %i.b, label %.sink.split, label %bb.b, !dbg !7087

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false), !dbg !7088
  %switch.tableidx = add nsw i64 %i.c, -48, !dbg !7089 ; 3 uses
  %i.d = icmp ult i64 %switch.tableidx, 7, !dbg !7089
  %switch.maskindex = trunc i64 %switch.tableidx to i8, !dbg !7089
  %switch.shifted = lshr i8 85, %switch.maskindex, !dbg !7089
  %switch.lobit = trunc i8 %switch.shifted to i1, !dbg !7089
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false, !dbg !7089
  br i1 %or.cond, label %switch.lookup, label %bb.d, !dbg !7089

.sink.split:                                      ; preds = %bb.a, %bb.f
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7083
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7083
  %i.e = load i64, ptr %15, align 8, !dbg !7083, !noundef !1738
  %i.f = add i64 %i.e, 7, !dbg !7090
  %i.g = and i64 %i.f, 4294967288, !dbg !7083
  store i64 %i.g, ptr %15, align 8, !dbg !7083
  br label %bb.c, !dbg !7091

bb.c:                                             ; preds = %.sink.split, %bb.f
  ret void, !dbg !7091

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment22compress_fragment_fastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet, i64 %switch.tableidx, !dbg !7089
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !7089
  %switch.ext = zext i8 %switch.load to i64, !dbg !7089
  tail call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 4 %5, i64 noundef %6, i64 noundef %switch.ext, ptr noalias noundef nonnull %8, i64 noundef %9, ptr noalias noundef nonnull align 2 %10, i64 noundef %11, ptr noalias noundef align 8 dereferenceable(8) %12, ptr noalias noundef nonnull %13, i64 noundef %14, ptr noalias noundef align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7083
  br label %bb.d, !dbg !7092

bb.d:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i64, ptr %15, align 8, !dbg !7092, !noundef !1738
  %i.i = sub i64 %i.h, %i.a, !dbg !7093
  %i.j = shl i64 %3, 3, !dbg !7094
  %i.k = add i64 %i.j, 31, !dbg !7095
  %i.l = icmp ugt i64 %i.i, %i.k, !dbg !7092
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !7092

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7096
  br label %bb.f, !dbg !7096

bb.f:                                             ; preds = %bb.d, %bb.e
  br i1 %4, label %.sink.split, label %bb.c, !dbg !7097
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 0) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 9, 16) %7, ptr noalias noundef nonnull %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias noundef nonnull align 2 %10, i64 noundef range(i64 0, 4611686018427387904) %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %12, ptr noalias noundef nonnull %13, i64 noundef range(i64 0, -9223372036854775808) %14, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef range(i64 0, -9223372036854775808) %17) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7098 {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [512 x i8], align 2               ; 8 uses
  %i.e = alloca [256 x i8], align 1               ; 9 uses
  %i.f = alloca [512 x i8], align 4               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !dbg !7461
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 98304), !dbg !7462 ; 3 uses
  %i.g = load i64, ptr %15, align 8, !dbg !7463, !noundef !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.e, i8 0, i64 256, i1 false), !dbg !7465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !dbg !7467
  %i.h = sub nuw nsw i64 64, %7, !dbg !7468       ; 11 uses
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass23store_meta_block_header(i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7469
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7470
  %i.i = call fastcc noundef i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull align 2 %i.d, ptr noalias noundef align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7471
  %i.j = load i64, ptr %12, align 8, !dbg !7472, !noundef !1738 ; 4 uses
  %i.k = icmp ugt i64 %i.j, 7, !dbg !7473
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge, !dbg !7473

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not2271 = icmp eq i64 %14, 0, !dbg !7474
  br i1 %.not2271, label %bb.di, label %bb.dh, !dbg !7474

._crit_edge:                                      ; preds = %bb.dh, %bb.a
  %i.l = lshr i64 %i.j, 3, !dbg !7475             ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, %14, !dbg !7476
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !7476

.lr.ph:                                           ; preds = %bb.dh
  %i.n = lshr exact i64 %i.km, 3, !dbg !7477      ; 2 uses
  %i.o = icmp samesign ult i64 %i.n, %14, !dbg !7474
  br i1 %i.o, label %bb.dh, label %bb.di, !dbg !7474

bb.b:                                             ; preds = %._crit_edge
  %i.p = and i64 %i.j, 7, !dbg !7478
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 %i.l, !dbg !7476
  %i.r = load i8, ptr %i.q, align 1, !dbg !7476, !noundef !1738
  %i.s = zext i8 %i.r to i64, !dbg !7476
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef %i.p, i64 noundef %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7479
  %i.t = icmp samesign ugt i64 %9, 64
  %i.u = icmp samesign ugt i64 %11, 64
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  br label %.outer, !dbg !7480

.outer:                                           ; preds = %bb.df, %bb.b
  %.sroa.0.01394.ph = phi i64 [ %.sroa.0.1.jt2, %bb.df ], [ %3, %bb.b ]
  %.sroa.0108.01386.ph = phi i64 [ %.sroa.0108.4.jt2, %bb.df ], [ 0, %bb.b ]
  %.sroa.0125.01384.ph = phi i64 [ %.sroa.09.1.jt2, %bb.df ], [ 0, %bb.b ] ; 9 uses
  %.sroa.0145.01380.ph = phi i64 [ %.sroa.0.0.i234, %bb.df ], [ %.sroa.0.0.i, %bb.b ] ; 2 uses
  %.sroa.0148.01378.ph.in = phi i64 [ %i.ke, %bb.df ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0151.01376.ph = phi i64 [ %i.ki, %bb.df ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.0148.01378.ph = add i64 %.sroa.0148.01378.ph.in, 3, !dbg !7481
  %i.ae = icmp ugt i64 %.sroa.0151.01376.ph, 980
  br label %bb.d, !dbg !7482

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #31, !dbg !7476
  unreachable, !dbg !7476

bb.d:                                             ; preds = %.outer, %bb.cq
  %.sroa.0.01394 = phi i64 [ %i.hy, %bb.cq ], [ %.sroa.0.01394.ph, %.outer ], !dbg !7483 ; 3 uses
  %.sroa.09.01391 = phi i64 [ %i.hx, %bb.cq ], [ %.sroa.0125.01384.ph, %.outer ], !dbg !7483 ; 6 uses
  %.sroa.0108.01386 = phi i64 [ %.sroa.0108.4.jt0, %bb.cq ], [ %.sroa.0108.01386.ph, %.outer ], !dbg !7483 ; 3 uses
  %.sroa.0131.01382 = phi i64 [ %.sroa.0.0.i232, %bb.cq ], [ %.sroa.0145.01380.ph, %.outer ], !dbg !7483 ; 5 uses
  %.sroa.0145.01380 = phi i64 [ %i.hz, %bb.cq ], [ %.sroa.0145.01380.ph, %.outer ], !dbg !7483
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implmECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment13kCmdHistoSeed, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19), !dbg !7483
  %i.af = add i64 %.sroa.09.01391, %.sroa.0131.01382, !dbg !7484 ; 8 uses
  %i.ag = icmp samesign ugt i64 %.sroa.0131.01382, 15, !dbg !7482
  br i1 %i.ag, label %bb.e, label %.loopexit.loopexit, !dbg !7482

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %.sroa.0131.01382, -5, !dbg !7485
  %i.ai = add i64 %.sroa.0.01394, -16, !dbg !7486
  %.sroa.0.0.i226 = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ah), !dbg !7487
  %i.aj = add i64 %.sroa.0.0.i226, %.sroa.09.01391, !dbg !7488 ; 5 uses
  %i.ak = add i64 %.sroa.09.01391, 1, !dbg !7489  ; 5 uses
  %i.al = icmp ugt i64 %i.ak, %2, !dbg !7490
  br i1 %i.al, label %bb.g, label %bb.f, !dbg !7490, !prof !1767

bb.f:                                             ; preds = %bb.e
  %i.am = sub nuw nsw i64 %2, %i.ak, !dbg !7491
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !7492
  %i.ao = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment4Hash(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.am, i64 noundef %i.h), !dbg !7493
  %i.ap = add i64 %.sroa.09.01391, 2, !dbg !7494  ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %i.aj, !dbg !7495
  br i1 %i.aq, label %.loopexit.loopexit, label %.lr.ph767.lr.ph, !dbg !7495

.lr.ph767.lr.ph:                                  ; preds = %bb.f
  %i.ar = add i64 %i.af, -5                       ; 2 uses
  br label %.lr.ph767, !dbg !7495

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #31, !dbg !7496
  unreachable, !dbg !7496

.lr.ph767:                                        ; preds = %.lr.ph767.lr.ph, %bb.cb
  %i.as = phi i64 [ %i.ap, %.lr.ph767.lr.ph ], [ %i.hv, %bb.cb ]
  %.sroa.019.0784 = phi i32 [ -1, %.lr.ph767.lr.ph ], [ %.sroa.019.2773, %bb.cb ] ; 3 uses
  %.sroa.032.0783 = phi i64 [ %i.ak, %.lr.ph767.lr.ph ], [ %i.hr, %bb.cb ]
  %.sroa.0107.0782 = phi i32 [ %i.ao, %.lr.ph767.lr.ph ], [ %i.hu, %bb.cb ]
  %.sroa.0108.2781 = phi i64 [ %.sroa.0108.01386, %.lr.ph767.lr.ph ], [ %.sroa.032.1772, %bb.cb ] ; 7 uses
  %i.at = sext i32 %.sroa.019.0784 to i64
  br label %bb.h, !dbg !7495

bb.h:                                             ; preds = %.lr.ph767, %.backedge
  %i.au = phi i64 [ %i.as, %.lr.ph767 ], [ %i.bw, %.backedge ] ; 6 uses
  %i.av = phi i32 [ 33, %.lr.ph767 ], [ %i.bu, %.backedge ] ; 2 uses
  %.sroa.080.0765 = phi i64 [ %.sroa.032.0783, %.lr.ph767 ], [ %i.au, %.backedge ] ; 17 uses
  %.sroa.0107.1764 = phi i32 [ %.sroa.0107.0782, %.lr.ph767 ], [ %i.az, %.backedge ]
  %i.aw = icmp ugt i64 %i.au, %2, !dbg !7497
  br i1 %i.aw, label %bb.j, label %bb.i, !dbg !7497, !prof !1767

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nuw nsw i64 %2, %i.au, !dbg !7498
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.au, !dbg !7499
  %i.az = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment4Hash(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.ax, i64 noundef %i.h), !dbg !7500
  %i.ba = sub i64 %.sroa.080.0765, %i.at, !dbg !7501 ; 6 uses
  %i.bb = icmp ugt i64 %.sroa.080.0765, %2, !dbg !7502
  br i1 %i.bb, label %bb.l, label %bb.k, !dbg !7502, !prof !1767

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.au, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #31, !dbg !7503
  unreachable, !dbg !7503

bb.k:                                             ; preds = %bb.i
  %i.bc = sub nuw nsw i64 %2, %.sroa.080.0765, !dbg !7504 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.080.0765, !dbg !7505 ; 2 uses
  %i.be = icmp ugt i64 %i.ba, %2, !dbg !7506
  br i1 %i.be, label %bb.n, label %bb.m, !dbg !7506, !prof !1767

bb.l:                                             ; preds = %bb.i
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.080.0765, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31, !dbg !7507
  unreachable, !dbg !7507

bb.m:                                             ; preds = %bb.k
  %i.bf = sub nuw nsw i64 %2, %i.ba, !dbg !7508
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba, !dbg !7509
  %i.bh = call noundef zeroext i1 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment7IsMatch(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bf), !dbg !7510
  %i.bi = icmp ult i64 %i.ba, %.sroa.080.0765
  %or.cond225 = select i1 %i.bh, i1 %i.bi, i1 false, !dbg !7510
  %i.bj = zext i32 %.sroa.0107.1764 to i64, !dbg !7511 ; 5 uses
  %i.bk = icmp samesign ugt i64 %6, %i.bj, !dbg !7511 ; 2 uses
  br i1 %or.cond225, label %bb.p, label %bb.o, !dbg !7510

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ba, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #31, !dbg !7512
  unreachable, !dbg !7512

bb.o:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.q, label %bb.r, !dbg !7513

bb.p:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.v, label %bb.w, !dbg !7514

bb.q:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bj, !dbg !7513 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !7513, !noundef !1738
  %i.bn = sext i32 %i.bm to i64, !dbg !7513       ; 5 uses
  %i.bo = trunc i64 %.sroa.080.0765 to i32, !dbg !7515
  store i32 %i.bo, ptr %i.bl, align 4, !dbg !7515
  %i.bp = icmp ult i64 %2, %i.bn, !dbg !7516
  br i1 %i.bp, label %bb.t, label %bb.s, !dbg !7516, !prof !1767

bb.r:                                             ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31, !dbg !7513
  unreachable, !dbg !7513

bb.s:                                             ; preds = %bb.q
  %i.bq = sub nuw nsw i64 %2, %i.bn, !dbg !7517
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn, !dbg !7518
  %i.bs = call noundef zeroext i1 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment7IsMatch(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bq), !dbg !7519
  br i1 %i.bs, label %bb.u, label %.backedge, !dbg !7519

.backedge:                                        ; preds = %bb.s, %bb.u
  %i.bt = lshr i32 %i.av, 5, !dbg !7520
  %i.bu = add i32 %i.av, 1, !dbg !7521
  %i.bv = zext nneg i32 %i.bt to i64, !dbg !7522
  %i.bw = add nuw i64 %i.au, %i.bv, !dbg !7494    ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.aj, !dbg !7495
  br i1 %i.bx, label %.loopexit.loopexit, label %bb.h, !dbg !7495

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #31, !dbg !7523
  unreachable, !dbg !7523

bb.u:                                             ; preds = %bb.s, %bb.v
  %.sroa.096.1 = phi i64 [ %i.ba, %bb.v ], [ %i.bn, %bb.s ], !dbg !7511 ; 2 uses
  %i.by = sub nsw i64 %.sroa.080.0765, %.sroa.096.1, !dbg !7524 ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 262128, !dbg !7525
  br i1 %i.bz, label %.backedge, label %bb.x, !dbg !7525

bb.v:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bj, !dbg !7514
  %i.cb = trunc i64 %.sroa.080.0765 to i32, !dbg !7514
  store i32 %i.cb, ptr %i.ca, align 4, !dbg !7514
  br label %bb.u, !dbg !7526

bb.w:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #31, !dbg !7514
  unreachable, !dbg !7514

bb.x:                                             ; preds = %bb.u
  %i.cc = add nuw i64 %.sroa.096.1, 5, !dbg !7527 ; 4 uses
  %i.cd = icmp ugt i64 %i.cc, %2, !dbg !7528
  br i1 %i.cd, label %bb.z, label %bb.y, !dbg !7528, !prof !1767

bb.y:                                             ; preds = %bb.x
  %i.ce = add nuw i64 %.sroa.080.0765, 5, !dbg !7529 ; 4 uses
  %i.cf = icmp ugt i64 %i.ce, %2, !dbg !7530
  br i1 %i.cf, label %bb.ab, label %bb.aa, !dbg !7530, !prof !1767

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #31, !dbg !7531
  unreachable, !dbg !7531

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc, !dbg !7532
  %i.ch = sub nuw nsw i64 %2, %i.cc, !dbg !7533
  %i.ci = sub nuw nsw i64 %2, %i.ce, !dbg !7534
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce, !dbg !7535
  %i.ck = sub i64 %i.ar, %.sroa.080.0765, !dbg !7536
  %i.cl = call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ch, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.ci, i64 noundef %i.ck), !dbg !7537
  %i.cm = add i64 %i.cl, 5, !dbg !7538            ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.by to i32, !dbg !7539 ; 2 uses
  %i.co = sub i64 %.sroa.080.0765, %.sroa.0108.2781, !dbg !7540 ; 5 uses
  %i.cp = add i64 %i.cm, %.sroa.080.0765, !dbg !7541 ; 8 uses
  %i.cq = icmp ult i64 %i.co, 6210, !dbg !7542
  br i1 %i.cq, label %bb.ad, label %bb.ac, !dbg !7542

bb.ab:                                            ; preds = %bb.y
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ce, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #31, !dbg !7543
  unreachable, !dbg !7543

bb.ac:                                            ; preds = %bb.aa
  %i.cr = sub i64 %.sroa.0108.2781, %.sroa.0125.01384.ph, !dbg !7544
  %i.cs = mul i64 %i.cr, 50, !dbg !7545
  %i.ct = icmp ule i64 %i.cs, %i.co, !dbg !7546
  %or.cond = and i1 %i.ae, %i.ct, !dbg !7546
  br i1 %or.cond, label %bb.af, label %bb.ae, !dbg !7546

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment13EmitInsertLen(i64 noundef %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7547
  br label %bb.ag, !dbg !7548

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment17EmitLongInsertLen(i64 noundef %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7549
  br label %bb.ag, !dbg !7548

bb.af:                                            ; preds = %bb.ac
  %i.cu = sub nuw nsw i64 %2, %.sroa.0125.01384.ph, !dbg !7550
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0125.01384.ph, !dbg !7551
  %i.cw = sub nsw i64 %.sroa.080.0765, %.sroa.0125.01384.ph, !dbg !7552
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, i64 noundef %i.cw, i64 noundef %.sroa.0148.01378.ph.in, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7553
  %.neg = add i64 %.sroa.0.01394, %.sroa.09.01391, !dbg !7554
  %i.cx = sub i64 %.neg, %.sroa.080.0765, !dbg !7555
  br label %bb.da, !dbg !7556

bb.ag:                                            ; preds = %bb.ae, %bb.ad
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment27compress_fragment_fast_implNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.ce:                                            ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, %bb.cd, %.loopexit.loopexit
  %i.ib = icmp ult i64 %.sroa.0108.4.jt0, %i.af, !dbg !7694
  br i1 %i.ib, label %bb.cr, label %bb.da, !dbg !7694

bb.cf:                                            ; preds = %bb.cd
  %i.ic = icmp ugt i64 %i.hx, %2, !dbg !7695
  br i1 %i.ic, label %bb.cp, label %bb.cg, !dbg !7695, !prof !1767

bb.cg:                                            ; preds = %bb.cf
  %i.id = sub nuw nsw i64 %2, %i.hx, !dbg !7696   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 %i.hx, !dbg !7697
  call void @llvm.experimental.noalias.scope.decl(metadata !7423), !dbg !7698
  call void @llvm.experimental.noalias.scope.decl(metadata !7424), !dbg !7698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7699, !noalias !7425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !dbg !7700, !noalias !7425
  br label %.lr.ph.i, !dbg !7701

._crit_edge.i:                                    ; preds = %bb.co
  %i.if = add nuw nsw i64 %.sroa.0.0.i232, 42, !dbg !7702
  %i.ig = udiv i64 %i.if, 43, !dbg !7703          ; 3 uses
  %i.ih = icmp ult i64 %i.hy, 10966, !dbg !7704
  br i1 %i.ih, label %._crit_edge.thread.i, label %bb.ch, !dbg !7704

.lr.ph.i:                                         ; preds = %bb.cg, %bb.co
  %.sroa.0.015.i = phi i64 [ %i.jk, %bb.co ], [ 0, %bb.cg ] ; 4 uses
  %i.ii = icmp samesign ult i64 %.sroa.0.015.i, %i.id, !dbg !7705
  br i1 %i.ii, label %bb.co, label %bb.cn, !dbg !7705

bb.ch:                                            ; preds = %._crit_edge.i
  %i.ij = uitofp nneg i64 %i.ig to float, !dbg !7706 ; 2 uses
  %i.ik = call nnan float @llvm.log2.f32(float %i.ij), !dbg !7707
  br label %bb.ci, !dbg !7708

bb.ci:                                            ; preds = %._crit_edge.thread.i, %bb.ch
  %.pre-phi.i = phi float [ %.pre.i, %._crit_edge.thread.i ], [ %i.ij, %bb.ch ], !dbg !7709
  %.sroa.05.0.i = phi float [ %i.ip, %._crit_edge.thread.i ], [ %i.ik, %bb.ch ], !dbg !7710
  %i.il = fadd float %.sroa.05.0.i, 5.000000e-01, !dbg !7711
  %i.im = fmul float %.pre-phi.i, %i.il, !dbg !7711
  %i.in = fadd float %i.im, 2.000000e+02, !dbg !7711
  br label %bb.cj, !dbg !7712

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.ig, !dbg !7713
  %i.ip = load float, ptr %i.io, align 4, !dbg !7713, !noalias !7425, !noundef !1738
  %.pre.i = uitofp nneg i64 %i.ig to float, !dbg !7709
  br label %bb.ci, !dbg !7708

bb.cj:                                            ; preds = %bb.cl, %bb.ci
  %.sroa.03.017.i = phi float [ %i.in, %bb.ci ], [ %i.jb, %bb.cl ]
  %.sroa.08.016.i = phi i64 [ 0, %bb.ci ], [ %i.iq, %bb.cl ] ; 3 uses
  %i.iq = add nuw nsw i64 %.sroa.08.016.i, 1, !dbg !7714 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.08.016.i, !dbg !7715
  %i.is = load i64, ptr %i.ir, align 8, !dbg !7715, !noalias !7425, !noundef !1738 ; 3 uses
  %i.it = uitofp i64 %i.is to float, !dbg !7716   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.08.016.i, !dbg !7717
  %i.iv = load i8, ptr %i.iu, align 1, !dbg !7717, !alias.scope !7424, !noalias !7423, !noundef !1738
  %i.iw = uitofp i8 %i.iv to float, !dbg !7718
  %i.ix = icmp ult i64 %i.is, 256, !dbg !7719
  br i1 %i.ix, label %bb.cm, label %bb.ck, !dbg !7719

bb.ck:                                            ; preds = %bb.cj
  %i.iy = call nnan float @llvm.log2.f32(float %i.it), !dbg !7720
  br label %bb.cl, !dbg !7721

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.07.0.i = phi float [ %i.jd, %bb.cm ], [ %i.iy, %bb.ck ], !dbg !7722
  %i.iz = fadd float %.sroa.07.0.i, %i.iw, !dbg !7723
  %i.ja = fmul float %i.iz, %i.it, !dbg !7716
  %i.jb = fsub float %.sroa.03.017.i, %i.ja, !dbg !7724 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iq, 256, !dbg !7725
  br i1 %exitcond.not.i, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment16ShouldMergeBlock.exit, label %bb.cj, !dbg !7712

bb.cm:                                            ; preds = %bb.cj
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.is, !dbg !7726
  %i.jd = load float, ptr %i.jc, align 4, !dbg !7726, !noalias !7425, !noundef !1738
  br label %bb.cl, !dbg !7721

bb.cn:                                            ; preds = %.lr.ph.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.015.i, i64 noundef range(i64 0, -9223372036854775808) %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #31, !dbg !7705, !noalias !7425
  unreachable, !dbg !7705

bb.co:                                            ; preds = %.lr.ph.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.0.015.i, !dbg !7705
  %i.jf = load i8, ptr %i.je, align 1, !dbg !7705, !alias.scope !7423, !noalias !7424, !noundef !1738
  %i.jg = zext i8 %i.jf to i64, !dbg !7705
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jg, !dbg !7727 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !dbg !7728, !noalias !7425, !noundef !1738
  %i.jj = add i64 %i.ji, 1, !dbg !7729
  store i64 %i.jj, ptr %i.jh, align 8, !dbg !7730, !noalias !7425
  %i.jk = add nuw nsw i64 %.sroa.0.015.i, 43, !dbg !7731 ; 2 uses
  %i.jl = icmp samesign ult i64 %i.jk, %.sroa.0.0.i232, !dbg !7701
  br i1 %i.jl, label %.lr.ph.i, label %._crit_edge.i, !dbg !7701

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment16ShouldMergeBlock.exit: ; preds = %bb.cl
  %i.jm = fcmp ult float %i.jb, 0.000000e+00, !dbg !7732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7733, !noalias !7425
  br i1 %i.jm, label %bb.ce, label %bb.cq, !dbg !7698

bb.cp:                                            ; preds = %bb.cf
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.hx, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #31, !dbg !7734
  unreachable, !dbg !7734

bb.cq:                                            ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment16ShouldMergeBlock.exit
  %i.jn = trunc nuw nsw i64 %i.hz to i32, !dbg !7735
  %i.jo = add nsw i32 %i.jn, -1, !dbg !7735
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment10UpdateBits(i64 noundef 20, i32 noundef %i.jo, i64 noundef %.sroa.0148.01378.ph, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7736
  br label %bb.d, !dbg !7737

bb.cr:                                            ; preds = %bb.ce
  %i.jp = sub nuw i64 %i.af, %.sroa.0108.4.jt0, !dbg !7738 ; 6 uses
  %i.jq = icmp ult i64 %i.jp, 6210, !dbg !7739
  br i1 %i.jq, label %bb.ct, label %bb.cs, !dbg !7739

bb.cs:                                            ; preds = %bb.cr
  %i.jr = sub i64 %.sroa.0108.4.jt0, %.sroa.0125.01384.ph, !dbg !7740
  %i.js = mul i64 %i.jr, 50, !dbg !7741
  %i.jt = icmp ule i64 %i.js, %i.jp, !dbg !7742
  %i.ju = icmp ugt i64 %.sroa.0151.01376.ph, 980
  %or.cond1 = and i1 %i.ju, %i.jt, !dbg !7742
  br i1 %or.cond1, label %bb.cv, label %bb.cu, !dbg !7742

bb.ct:                                            ; preds = %bb.cr
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment13EmitInsertLen(i64 noundef %i.jp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7743
  %i.jv = icmp ugt i64 %.sroa.0108.4.jt0, %2, !dbg !7744
  br i1 %i.jv, label %bb.cz, label %bb.cy, !dbg !7744, !prof !1767

bb.cu:                                            ; preds = %bb.cs
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment17EmitLongInsertLen(i64 noundef %i.jp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %i.f, i64 noundef 128, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7745
  %i.jw = icmp ugt i64 %.sroa.0108.4.jt0, %2, !dbg !7746
  br i1 %i.jw, label %bb.cx, label %bb.cw, !dbg !7746, !prof !1767

bb.cv:                                            ; preds = %bb.cs
  %i.jx = sub nuw nsw i64 %2, %.sroa.0125.01384.ph, !dbg !7747
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0125.01384.ph, !dbg !7748
  %i.jz = sub i64 %i.af, %.sroa.0125.01384.ph, !dbg !7749
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment25EmitUncompressedMetaBlock(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jy, i64 noundef %i.jx, i64 noundef %i.jz, i64 noundef %.sroa.0148.01378.ph.in, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7750
  br label %bb.da, !dbg !7751

bb.cw:                                            ; preds = %bb.cu
  %i.ka = sub nuw nsw i64 %2, %.sroa.0108.4.jt0, !dbg !7752
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0108.4.jt0, !dbg !7753
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment12EmitLiterals(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kb, i64 noundef %i.ka, i64 noundef %i.jp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.d, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7754
  br label %bb.da, !dbg !7751

bb.cx:                                            ; preds = %bb.cu
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0108.4.jt0, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #31, !dbg !7755
  unreachable, !dbg !7755

bb.cy:                                            ; preds = %bb.ct
  %i.kc = sub nuw nsw i64 %2, %.sroa.0108.4.jt0, !dbg !7756
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0108.4.jt0, !dbg !7757
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment12EmitLiterals(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kd, i64 noundef %i.kc, i64 noundef %i.jp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.d, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7758
  br label %bb.da, !dbg !7759

bb.cz:                                            ; preds = %bb.ct
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0108.4.jt0, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #31, !dbg !7760
  unreachable, !dbg !7760

bb.da:                                            ; preds = %bb.cv, %bb.cw, %bb.cy, %bb.ce, %bb.af
  %.sroa.0108.4.jt2 = phi i64 [ %i.af, %bb.ce ], [ %i.af, %bb.cw ], [ %i.af, %bb.cv ], [ %.sroa.080.0765, %bb.af ], [ %i.af, %bb.cy ], !dbg !7687
  %.sroa.09.1.jt2 = phi i64 [ %i.hx, %bb.ce ], [ %i.hx, %bb.cw ], [ %i.hx, %bb.cv ], [ %.sroa.080.0765, %bb.af ], [ %i.hx, %bb.cy ], !dbg !7761 ; 5 uses
  %.sroa.0.1.jt2 = phi i64 [ %i.hy, %bb.ce ], [ %i.hy, %bb.cw ], [ %i.hy, %bb.cv ], [ %i.cx, %bb.af ], [ %i.hy, %bb.cy ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.1.jt2, 0, !dbg !7762
  br i1 %.not, label %bb.db, label %bb.dc, !dbg !7762

bb.db:                                            ; preds = %bb.da
  br i1 %4, label %bb.dd, label %bb.de, !dbg !7763

bb.dc:                                            ; preds = %bb.da
  %.sroa.0.0.i234 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.jt2, i64 98304), !dbg !7764 ; 3 uses
  %i.ke = load i64, ptr %15, align 8, !dbg !7765, !noundef !1738
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass23store_meta_block_header(i64 noundef %.sroa.0.0.i234, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7766
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7767
  %i.kf = icmp ugt i64 %.sroa.09.1.jt2, %2, !dbg !7768
  br i1 %i.kf, label %bb.dg, label %bb.df, !dbg !7768, !prof !1767

bb.dd:                                            ; preds = %bb.de, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7771
  ret void, !dbg !7772

bb.de:                                            ; preds = %bb.db
  store i8 0, ptr %13, align 1, !dbg !7773
  store i64 0, ptr %12, align 8, !dbg !7774
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 128, ptr noalias noundef nonnull %8, i64 noundef %9, ptr noalias noundef nonnull align 2 %10, i64 noundef %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %12, ptr noalias noundef nonnull %13, i64 noundef %14), !dbg !7775
  br label %bb.dd, !dbg !7776

bb.df:                                            ; preds = %bb.dc
  %i.kg = sub nuw nsw i64 %2, %.sroa.09.1.jt2, !dbg !7777
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.1.jt2, !dbg !7778
  %i.ki = call fastcc noundef i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kh, i64 noundef %i.kg, i64 noundef %.sroa.0.0.i234, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull align 2 %i.d, ptr noalias noundef align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7779
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment30BuildAndStoreCommandPrefixCode(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 128, ptr noalias noundef nonnull %8, i64 noundef %9, ptr noalias noundef nonnull align 2 %10, i64 noundef %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7780
  br label %.outer, !dbg !7737

bb.dg:                                            ; preds = %bb.dc
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.1.jt2, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #31, !dbg !7781
  unreachable, !dbg !7781

bb.dh:                                            ; preds = %.lr.ph.preheader, %.lr.ph
  %18 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.022.07632269 = phi i64 [ %i.km, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 %18, !dbg !7474
  %i.kk = load i8, ptr %i.kj, align 1, !dbg !7474, !noundef !1738
  %i.kl = zext i8 %i.kk to i64, !dbg !7474
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc26compress_fragment_two_pass15BrotliWriteBits(i64 noundef 8, i64 noundef %i.kl, ptr noalias noundef nonnull align 8 dereferenceable(8) %15, ptr noalias noundef nonnull %16, i64 noundef %17), !dbg !7782
  %i.km = add nuw i64 %.sroa.022.07632269, 8, !dbg !7783 ; 3 uses
  %i.kn = or disjoint i64 %i.km, 7, !dbg !7784
  %i.ko = icmp ult i64 %i.kn, %i.j, !dbg !7473
  br i1 %i.ko, label %.lr.ph, label %._crit_edge, !dbg !7473

bb.di:                                            ; preds = %.lr.ph, %.lr.ph.preheader
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %14, i64 noundef %14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31, !dbg !7474
  unreachable, !dbg !7474
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias noundef nonnull %4, ptr noalias noundef nonnull align 2 %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6, ptr noalias noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7785 {
bb.a:
  %i.a = alloca [1024 x i8], align 4              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7861
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false), !dbg !7862
  %i.b = icmp ult i64 %3, 32768, !dbg !7863
  br i1 %i.b, label %.preheader33, label %.preheader35.preheader, !dbg !7863

.preheader35.preheader:                           ; preds = %bb.a
  %.not18 = icmp eq i64 %2, 0, !dbg !7864
  br i1 %.not18, label %.preheader35._crit_edge, label %.lr.ph5, !dbg !7864

.preheader33:                                     ; preds = %bb.a
  %.not = icmp eq i64 %3, 0, !dbg !7865
  br i1 %.not, label %vector.ph8, label %.lr.ph, !dbg !7826

vector.ph:                                        ; preds = %.lr.ph5
  %i.c = add nuw i64 %3, 28, !dbg !7866
  %i.d = udiv i64 %i.c, 29, !dbg !7867
  %i.e = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.d, i64 0
  br label %vector.body, !dbg !7868

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !7869 ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.e, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi6 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !7870 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !7870 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !dbg !7870 ; 2 uses
  %wide.load7 = load <2 x i32>, ptr %i.g, align 4, !dbg !7870 ; 2 uses
  %i.h = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load, <2 x i32> splat (i32 11)), !dbg !7871
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load7, <2 x i32> splat (i32 11)), !dbg !7871
  %i.j = shl nuw nsw <2 x i32> %i.h, splat (i32 1), !dbg !7872
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1), !dbg !7872
  %i.l = or disjoint <2 x i32> %i.j, splat (i32 1), !dbg !7873 ; 2 uses
  %i.m = or disjoint <2 x i32> %i.k, splat (i32 1), !dbg !7873 ; 2 uses
  %i.n = add <2 x i32> %i.l, %wide.load, !dbg !7874
  %i.o = add <2 x i32> %i.m, %wide.load7, !dbg !7874
  store <2 x i32> %i.n, ptr %i.f, align 4, !dbg !7875
  store <2 x i32> %i.o, ptr %i.g, align 4, !dbg !7875
  %i.p = zext nneg <2 x i32> %i.l to <2 x i64>, !dbg !7876
  %i.q = zext nneg <2 x i32> %i.m to <2 x i64>, !dbg !7876
  %i.r = add <2 x i64> %vec.phi, %i.p, !dbg !7877 ; 2 uses
  %i.s = add <2 x i64> %vec.phi6, %i.q, !dbg !7877 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !7869 ; 2 uses
  %i.t = icmp eq i64 %index.next, 256, !dbg !7868
  br i1 %i.t, label %.loopexit.loopexit1, label %vector.body, !dbg !7868, !llvm.loop !7805

.preheader35:                                     ; preds = %.lr.ph5
  %i.u = icmp ult i64 %i.ac, %2, !dbg !7864
  br i1 %i.u, label %.lr.ph5, label %.preheader35._crit_edge, !dbg !7864

.loopexit.loopexit1:                              ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r, !dbg !7868
  br label %.loopexit, !dbg !7878

.loopexit:                                        ; preds = %.loopexit.loopexit1, %middle.block16
  %bin.rdx.sink = phi <2 x i64> [ %bin.rdx, %.loopexit.loopexit1 ], [ %bin.rdx17, %middle.block16 ]
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.sink), !dbg !7879 ; 3 uses
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 256, i64 noundef %i.v, i64 noundef 8, ptr noalias noundef nonnull %4, i64 noundef 256, ptr noalias noundef nonnull align 2 %5, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %6, ptr noalias noundef nonnull %7, i64 noundef %8), !dbg !7878
  br label %bb.c, !dbg !7880

.preheader35._crit_edge:                          ; preds = %.preheader35, %.preheader35.preheader
  %.sroa.09.038.lcssa = phi i64 [ 0, %.preheader35.preheader ], [ %i.ac, %.preheader35 ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.038.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31, !dbg !7864
  unreachable, !dbg !7864

.lr.ph5:                                          ; preds = %.preheader35.preheader, %.preheader35
  %.sroa.09.0384 = phi i64 [ %i.ac, %.preheader35 ], [ 0, %.preheader35.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.0384, !dbg !7864
  %i.x = load i8, ptr %i.w, align 1, !dbg !7864, !noundef !1738
  %i.y = zext i8 %i.x to i64, !dbg !7864
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y, !dbg !7881 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !dbg !7882, !noundef !1738
  %i.ab = add i32 %i.aa, 1, !dbg !7883
  store i32 %i.ab, ptr %i.z, align 4, !dbg !7884
  %i.ac = add nuw i64 %.sroa.09.0384, 29, !dbg !7885 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, %3, !dbg !7886
  br i1 %i.ad, label %.preheader35, label %vector.ph, !dbg !7886

vector.ph8:                                       ; preds = %bb.k, %.preheader33
  %i.ae = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %vector.body9, !dbg !7887

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next15, %vector.body9 ], !dbg !7888 ; 2 uses
  %vec.phi11 = phi <2 x i64> [ %i.ae, %vector.ph8 ], [ %i.ap, %vector.body9 ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph8 ], [ %i.aq, %vector.body9 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index10, !dbg !7889 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !7889 ; 2 uses
  %wide.load13 = load <2 x i32>, ptr %i.af, align 4, !dbg !7889 ; 2 uses
  %wide.load14 = load <2 x i32>, ptr %i.ag, align 4, !dbg !7889 ; 2 uses
  %i.ah = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load13, <2 x i32> splat (i32 11)), !dbg !7890
  %i.ai = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load14, <2 x i32> splat (i32 11)), !dbg !7890
  %i.aj = shl nuw nsw <2 x i32> %i.ah, splat (i32 1), !dbg !7891 ; 2 uses
  %i.ak = shl nuw nsw <2 x i32> %i.ai, splat (i32 1), !dbg !7891 ; 2 uses
  %i.al = add <2 x i32> %i.aj, %wide.load13, !dbg !7892
  %i.am = add <2 x i32> %i.ak, %wide.load14, !dbg !7892
  store <2 x i32> %i.al, ptr %i.af, align 4, !dbg !7893
  store <2 x i32> %i.am, ptr %i.ag, align 4, !dbg !7893
  %i.an = zext nneg <2 x i32> %i.aj to <2 x i64>, !dbg !7894
  %i.ao = zext nneg <2 x i32> %i.ak to <2 x i64>, !dbg !7894
  %i.ap = add <2 x i64> %vec.phi11, %i.an, !dbg !7895 ; 2 uses
  %i.aq = add <2 x i64> %vec.phi12, %i.ao, !dbg !7895 ; 2 uses
  %index.next15 = add nuw i64 %index10, 4, !dbg !7888 ; 2 uses
  %i.ar = icmp eq i64 %index.next15, 256, !dbg !7887
  br i1 %i.ar, label %middle.block16, label %vector.body9, !dbg !7887, !llvm.loop !7813

middle.block16:                                   ; preds = %vector.body9
  %bin.rdx17 = add <2 x i64> %i.aq, %i.ap, !dbg !7887
  br label %.loopexit, !dbg !7878

.lr.ph:                                           ; preds = %.preheader33, %bb.k
  %.sroa.025.041 = phi i64 [ %i.bp, %bb.k ], [ 0, %.preheader33 ] ; 3 uses
  %exitcond50.not = icmp eq i64 %.sroa.025.041, %2, !dbg !7896
  br i1 %exitcond50.not, label %bb.j, label %bb.k, !dbg !7896

bb.b:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.v, 0, !dbg !7897
  br i1 %i.as, label %bb.e, label %bb.d, !dbg !7897

bb.c:                                             ; preds = %bb.h, %.loopexit
  %.sroa.021.045 = phi i64 [ 0, %.loopexit ], [ %.sroa.021.1.1, %bb.h ] ; 2 uses
  %.sroa.027.044 = phi i64 [ 0, %.loopexit ], [ %i.az, %bb.h ] ; 4 uses
  %i.at = or disjoint i64 %.sroa.027.044, 1, !dbg !7898 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.027.044, !dbg !7899
  %i.av = load i32, ptr %i.au, align 4, !dbg !7899, !noundef !1738 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0, !dbg !7899
  br i1 %i.aw, label %bb.f, label %bb.i, !dbg !7899

bb.d:                                             ; preds = %bb.b
  %i.ax = mul i64 %.sroa.021.1.1, 125, !dbg !7900
  %i.ay = udiv i64 %i.ax, %i.v, !dbg !7897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7901
  ret i64 %i.ay, !dbg !7902

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #31, !dbg !7897
  unreachable, !dbg !7897

bb.f:                                             ; preds = %bb.c, %bb.i
  %.sroa.021.1 = phi i64 [ %.sroa.021.045, %bb.c ], [ %i.bo, %bb.i ], !dbg !7879 ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.027.044, 2, !dbg !7898 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at, !dbg !7899
  %i.bb = load i32, ptr %i.ba, align 4, !dbg !7899, !noundef !1738 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0, !dbg !7899
  br i1 %i.bc, label %bb.h, label %bb.g, !dbg !7899

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.at, !dbg !7903
  %i.be = load i8, ptr %i.bd, align 1, !dbg !7903, !noundef !1738
  %i.bf = zext i8 %i.be to i32, !dbg !7903
  %i.bg = mul i32 %i.bb, %i.bf, !dbg !7904
  %i.bh = zext i32 %i.bg to i64, !dbg !7905
  %i.bi = add i64 %.sroa.021.1, %i.bh, !dbg !7906
  br label %bb.h, !dbg !7907

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.021.1.1 = phi i64 [ %.sroa.021.1, %bb.f ], [ %i.bi, %bb.g ], !dbg !7879 ; 2 uses
  %exitcond53.not.1 = icmp eq i64 %i.az, 256, !dbg !7908
  br i1 %exitcond53.not.1, label %bb.b, label %bb.c, !dbg !7880

bb.i:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.027.044, !dbg !7903
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !7903, !noundef !1738
  %i.bl = zext i8 %i.bk to i32, !dbg !7903
  %i.bm = mul i32 %i.av, %i.bl, !dbg !7904
  %i.bn = zext i32 %i.bm to i64, !dbg !7905
  %i.bo = add i64 %.sroa.021.045, %i.bn, !dbg !7906
  br label %bb.f, !dbg !7907

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #31, !dbg !7896
  unreachable, !dbg !7896

bb.k:                                             ; preds = %.lr.ph
  %i.bp = add nuw i64 %.sroa.025.041, 1, !dbg !7909 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.025.041, !dbg !7896
  %i.br = load i8, ptr %i.bq, align 1, !dbg !7896, !noundef !1738
  %i.bs = zext i8 %i.br to i64, !dbg !7896
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bs, !dbg !7910 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !dbg !7911, !noundef !1738
  %i.bv = add i32 %i.bu, 1, !dbg !7912
  store i32 %i.bv, ptr %i.bt, align 4, !dbg !7913
  %exitcond51.not = icmp eq i64 %i.bp, %3, !dbg !7865
  br i1 %exitcond51.not, label %vector.ph8, label %.lr.ph, !dbg !7826
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_plainNtNtCs2mZqlW55729_12polars_utils7float164pf16fEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7914 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  br i1 %2, label %bb.b, label %bb.c, !dbg !7985

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!7274 = !DILocation(line: 710, column: 30, scope: !7120)
!7275 = !DILocation(line: 4258, column: 14, scope: !7123, inlinedAt: !7274)
!7276 = !DILocation(line: 713, column: 34, scope: !7120)
!7277 = !DILocation(line: 716, column: 32, scope: !7120)
!7278 = !DILocation(line: 717, column: 32, scope: !7120)
!7279 = !DILocation(line: 715, column: 40, scope: !7120)
!7280 = !DILocation(line: 719, column: 51, scope: !7125)
!7281 = !DILocation(line: 722, column: 45, scope: !7126)
!7282 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 4)
!7283 = !DILocation(line: 721, column: 31, scope: !7126)
!7284 = !DILocation(line: 19, column: 15, scope: !7282, inlinedAt: !7283)
!7285 = !DILexicalBlockFile(scope: !7131, file: !1795, discriminator: 2)
!7286 = !DILocation(line: 574, column: 15, scope: !7285, inlinedAt: !7284)
!7287 = !DILocation(line: 737, column: 48, scope: !7137)
!7288 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 6)
!7289 = !DILocation(line: 742, column: 56, scope: !7137)
!7290 = !DILocation(line: 19, column: 15, scope: !7288, inlinedAt: !7289)
!7291 = !DILexicalBlockFile(scope: !7139, file: !1795, discriminator: 4)
!7292 = !DILocation(line: 574, column: 15, scope: !7291, inlinedAt: !7290)
!7293 = !DILocation(line: 743, column: 50, scope: !7137)
!7294 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 8)
!7295 = !DILocation(line: 744, column: 50, scope: !7137)
!7296 = !DILocation(line: 19, column: 15, scope: !7294, inlinedAt: !7295)
!7297 = !DILexicalBlockFile(scope: !7141, file: !1795, discriminator: 6)
!7298 = !DILocation(line: 574, column: 15, scope: !7297, inlinedAt: !7296)
!7299 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 10)
!7300 = !DILocation(line: 744, column: 74, scope: !7137)
!7301 = !DILocation(line: 19, column: 15, scope: !7299, inlinedAt: !7300)
!7302 = !DILexicalBlockFile(scope: !7143, file: !1795, discriminator: 8)
!7303 = !DILocation(line: 574, column: 15, scope: !7302, inlinedAt: !7301)
!7304 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 14)
!7305 = !DILocation(line: 752, column: 74, scope: !7137)
!7306 = !DILocation(line: 19, column: 15, scope: !7304, inlinedAt: !7305)
!7307 = !DILexicalBlockFile(scope: !7145, file: !1795, discriminator: 12)
!7308 = !DILocation(line: 574, column: 15, scope: !7307, inlinedAt: !7306)
!7309 = !DILocation(line: 735, column: 41, scope: !7137)
!7310 = !DILocation(line: 756, column: 39, scope: !7135)
!7311 = !DILexicalBlockFile(scope: !7137, file: !1786, discriminator: 0)
!7312 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 16)
!7313 = !DILocation(line: 769, column: 35, scope: !7147)
!7314 = !DILocation(line: 19, column: 15, scope: !7312, inlinedAt: !7313)
!7315 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 18)
!7316 = !DILocation(line: 770, column: 35, scope: !7147)
!7317 = !DILocation(line: 19, column: 15, scope: !7315, inlinedAt: !7316)
!7318 = !DILexicalBlockFile(scope: !7149, file: !1795, discriminator: 14)
!7319 = !DILocation(line: 574, column: 15, scope: !7318, inlinedAt: !7314)
!7320 = !DILexicalBlockFile(scope: !7151, file: !1795, discriminator: 16)
!7321 = !DILocation(line: 574, column: 15, scope: !7320, inlinedAt: !7317)
!7322 = !DILocation(line: 771, column: 55, scope: !7147)
!7323 = !DILocation(line: 768, column: 44, scope: !7147)
!7324 = !DILocation(line: 774, column: 39, scope: !7153)
!7325 = !DILocation(line: 775, column: 41, scope: !7154)
!7326 = !DILocation(line: 785, column: 31, scope: !7154)
!7327 = !DILocation(line: 217, column: 19, scope: !7157, inlinedAt: !7326)
!7328 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 20)
!7329 = !DILocation(line: 791, column: 39, scope: !7154)
!7330 = !DILocation(line: 19, column: 15, scope: !7328, inlinedAt: !7329)
!7331 = !DILexicalBlockFile(scope: !7159, file: !1795, discriminator: 18)
!7332 = !DILocation(line: 574, column: 15, scope: !7331, inlinedAt: !7330)
!7333 = !DILocation(line: 792, column: 34, scope: !7154)
!7334 = !DILocation(line: 797, column: 67, scope: !7154)
!7335 = !DILocation(line: 797, column: 49, scope: !7154)
!7336 = !DILexicalBlockFile(scope: !7154, file: !1786, discriminator: 0)
!7337 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 22)
!7338 = !DILocation(line: 813, column: 35, scope: !7154)
!7339 = !DILocation(line: 19, column: 15, scope: !7337, inlinedAt: !7338)
!7340 = !DILexicalBlockFile(scope: !7161, file: !1795, discriminator: 20)
!7341 = !DILocation(line: 574, column: 15, scope: !7340, inlinedAt: !7339)
!7342 = !DILocation(line: 830, column: 45, scope: !7163)
!7343 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 24)
!7344 = !DILocation(line: 858, column: 78, scope: !7154)
!7345 = !DILocation(line: 19, column: 15, scope: !7343, inlinedAt: !7344)
!7346 = !{!7165}
!7347 = !DIFile(filename: "src/enc/static_dict.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.3", checksumkind: CSK_MD5, checksum: "b63a2606793685da34c8687d4bc934ca")
!7348 = !DINamespace(name: "static_dict", scope: !1902)
!7349 = !{!7173, !7172}
!7350 = !DILexicalBlockFile(scope: !7175, file: !1795, discriminator: 22)
!7351 = !DILocation(line: 574, column: 15, scope: !7350, inlinedAt: !7345)
!7352 = !DILocation(line: 859, column: 46, scope: !7181)
!7353 = !DILocation(line: 449, column: 47, scope: !7182, inlinedAt: !7352)
!7354 = !DILocation(line: 860, column: 41, scope: !7184)
!7355 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 2)
!7356 = !DILocation(line: 449, column: 47, scope: !7355, inlinedAt: !7354)
!7357 = !DILocation(line: 863, column: 33, scope: !7186)
!7358 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 4)
!7359 = !DILocation(line: 449, column: 47, scope: !7358, inlinedAt: !7357)
!7360 = !DILocation(line: 866, column: 33, scope: !7186)
!7361 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 6)
!7362 = !DILocation(line: 449, column: 47, scope: !7361, inlinedAt: !7360)
!7363 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 26)
!7364 = !DILocation(line: 872, column: 45, scope: !7186)
!7365 = !DILocation(line: 19, column: 15, scope: !7363, inlinedAt: !7364)
!7366 = !{!"branch_weights", i32 1, i32 127}
!7367 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 28)
!7368 = !DILocation(line: 872, column: 69, scope: !7186)
!7369 = !DILocation(line: 19, column: 15, scope: !7367, inlinedAt: !7368)
!7370 = !DILexicalBlockFile(scope: !7190, file: !1795, discriminator: 24)
!7371 = !DILocation(line: 574, column: 15, scope: !7370, inlinedAt: !7365)
!7372 = !DILexicalBlockFile(scope: !7192, file: !1795, discriminator: 26)
!7373 = !DILocation(line: 574, column: 15, scope: !7372, inlinedAt: !7369)
!7374 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 30)
!7375 = !DILocation(line: 875, column: 39, scope: !7193)
!7376 = !DILocation(line: 19, column: 15, scope: !7374, inlinedAt: !7375)
!7377 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 32)
!7378 = !DILocation(line: 876, column: 39, scope: !7193)
!7379 = !DILocation(line: 19, column: 15, scope: !7377, inlinedAt: !7378)
!7380 = !DILexicalBlockFile(scope: !7195, file: !1795, discriminator: 28)
!7381 = !DILocation(line: 574, column: 15, scope: !7380, inlinedAt: !7376)
!7382 = !DILexicalBlockFile(scope: !7197, file: !1795, discriminator: 30)
!7383 = !DILocation(line: 574, column: 15, scope: !7382, inlinedAt: !7379)
!7384 = !DILocation(line: 877, column: 59, scope: !7193)
!7385 = !DILocation(line: 879, column: 37, scope: !7198)
!7386 = !DILocation(line: 874, column: 55, scope: !7193)
!7387 = !DILocation(line: 882, column: 45, scope: !7198)
!7388 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 34)
!7389 = !DILocation(line: 907, column: 82, scope: !7198)
!7390 = !DILocation(line: 19, column: 15, scope: !7388, inlinedAt: !7389)
!7391 = !{!7200}
!7392 = !{!7206, !7205}
!7393 = !DILexicalBlockFile(scope: !7208, file: !1795, discriminator: 32)
!7394 = !DILocation(line: 574, column: 15, scope: !7393, inlinedAt: !7390)
!7395 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 8)
!7396 = !DILocation(line: 908, column: 50, scope: !7211)
!7397 = !DILocation(line: 449, column: 47, scope: !7395, inlinedAt: !7396)
!7398 = !DILocation(line: 909, column: 45, scope: !7213)
!7399 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 10)
!7400 = !DILocation(line: 449, column: 47, scope: !7399, inlinedAt: !7398)
!7401 = !DILocation(line: 912, column: 37, scope: !7215)
!7402 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 12)
!7403 = !DILocation(line: 449, column: 47, scope: !7402, inlinedAt: !7401)
!7404 = !DILocation(line: 915, column: 37, scope: !7215)
!7405 = !DILexicalBlockFile(scope: !7182, file: !1939, discriminator: 14)
!7406 = !DILocation(line: 449, column: 47, scope: !7405, inlinedAt: !7404)
!7407 = !{!"branch_weights", i32 127, i32 255873}
!7408 = !DILocation(line: 927, column: 53, scope: !7186)
!7409 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 36)
!7410 = !DILocation(line: 926, column: 39, scope: !7186)
!7411 = !DILocation(line: 19, column: 15, scope: !7409, inlinedAt: !7410)
!7412 = !DILexicalBlockFile(scope: !7219, file: !1795, discriminator: 34)
!7413 = !DILocation(line: 574, column: 15, scope: !7412, inlinedAt: !7411)
!7414 = !DILocation(line: 938, column: 39, scope: !7120)
!7415 = !DILocation(line: 939, column: 37, scope: !7120)
!7416 = !DILocation(line: 940, column: 26, scope: !7120)
!7417 = !DILocation(line: 942, column: 38, scope: !7120)
!7418 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 38)
!7419 = !DILocation(line: 943, column: 47, scope: !7120)
!7420 = !DILocation(line: 19, column: 15, scope: !7418, inlinedAt: !7419)
!7421 = !DILexicalBlockFile(scope: !7222, file: !1795, discriminator: 36)
!7422 = !DILocation(line: 574, column: 15, scope: !7421, inlinedAt: !7420)
!7423 = !{!7224}
!7424 = !{!7225}
!7425 = !{!7224, !7225}
!7426 = !DIFile(filename: "library/std/src/num/f32.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f0b9edd9b4401d181abb858442759c14")
!7427 = !DINamespace(name: "f32", scope: !1817)
!7428 = !DINamespace(name: "{impl#0}", scope: !7427)
!7429 = !DILexicalBlockFile(scope: !7243, file: !1939, discriminator: 2)
!7430 = !DILexicalBlockFile(scope: !7234, file: !1942, discriminator: 2)
!7431 = !DILexicalBlockFile(scope: !7120, file: !1786, discriminator: 0)
!7432 = !DILocation(line: 956, column: 44, scope: !7120)
!7433 = !DILexicalBlockFile(scope: !7261, file: !1939, discriminator: 2)
!7434 = !DILocation(line: 974, column: 27, scope: !7260)
!7435 = !DILocation(line: 217, column: 19, scope: !7433, inlinedAt: !7434)
!7436 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 40)
!7437 = !DILocation(line: 967, column: 35, scope: !7260)
!7438 = !DILocation(line: 19, column: 15, scope: !7436, inlinedAt: !7437)
!7439 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 44)
!7440 = !DILocation(line: 996, column: 35, scope: !7260)
!7441 = !DILocation(line: 19, column: 15, scope: !7439, inlinedAt: !7440)
!7442 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 42)
!7443 = !DILocation(line: 980, column: 35, scope: !7260)
!7444 = !DILocation(line: 19, column: 15, scope: !7442, inlinedAt: !7443)
!7445 = !DILexicalBlockFile(scope: !7263, file: !1795, discriminator: 40)
!7446 = !DILocation(line: 574, column: 15, scope: !7445, inlinedAt: !7444)
!7447 = !DILocation(line: 981, column: 32, scope: !7260)
!7448 = !DILexicalBlockFile(scope: !7265, file: !1795, discriminator: 42)
!7449 = !DILocation(line: 574, column: 15, scope: !7448, inlinedAt: !7441)
!7450 = !DILexicalBlockFile(scope: !7267, file: !1795, discriminator: 38)
!7451 = !DILocation(line: 574, column: 15, scope: !7450, inlinedAt: !7438)
!7452 = !DILocation(line: 1011, column: 30, scope: !7120)
!7453 = !DILexicalBlockFile(scope: !7128, file: !1795, discriminator: 46)
!7454 = !DILocation(line: 1018, column: 31, scope: !7120)
!7455 = !DILocation(line: 19, column: 15, scope: !7453, inlinedAt: !7454)
!7456 = !DILexicalBlockFile(scope: !7270, file: !1795, discriminator: 44)
!7457 = !DILocation(line: 574, column: 15, scope: !7456, inlinedAt: !7455)
!7458 = !DILocation(line: 697, column: 19, scope: !7118)
!7459 = !DILocation(line: 695, column: 17, scope: !7118)
!7460 = !DILocation(line: 664, column: 9, scope: !7098)
!7461 = !DILocation(line: 664, column: 25, scope: !7098)
!7462 = !DILocation(line: 1077, column: 12, scope: !301, inlinedAt: !7107)
!7463 = !DILocation(line: 675, column: 31, scope: !7109)
!7464 = !DILocation(line: 676, column: 9, scope: !7110)
!7465 = !DILocation(line: 676, column: 25, scope: !7110)
!7466 = !DILocation(line: 677, column: 9, scope: !7111)
!7467 = !DILocation(line: 677, column: 24, scope: !7111)
!7468 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7272)
!7469 = !DILocation(line: 682, column: 5, scope: !7117)
!7470 = !DILocation(line: 683, column: 5, scope: !7117)
!7471 = !DILocation(line: 684, column: 21, scope: !7117)
!7472 = !DILocation(line: 695, column: 35, scope: !7118)
!7473 = !DILocation(line: 695, column: 15, scope: !7118)
!7474 = !DILocation(line: 696, column: 37, scope: !7118)
!7475 = !DILocation(line: 702, column: 18, scope: !7117)
!7476 = !DILocation(line: 702, column: 9, scope: !7117)
!7477 = !DILocation(line: 696, column: 46, scope: !7118)
!7478 = !DILocation(line: 701, column: 9, scope: !7117)
!7479 = !DILocation(line: 700, column: 5, scope: !7117)
!7480 = !DILocation(line: 709, column: 12, scope: !7120)
!7481 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7273)
!7482 = !DILocation(line: 714, column: 16, scope: !7120)
!7483 = !DILocation(line: 5621, column: 13, scope: !7122, inlinedAt: !7275)
!7484 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7276)
!7485 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7277)
!7486 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7278)
!7487 = !DILocation(line: 1077, column: 12, scope: !301, inlinedAt: !7124)
!7488 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7280)
!7489 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7281)
!7490 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7284)
!7491 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7284)
!7492 = !DILocation(line: 89, column: 24, scope: !7130, inlinedAt: !7286)
!7493 = !DILocation(line: 720, column: 37, scope: !7126)
!7494 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7287)
!7495 = !DILocation(line: 738, column: 32, scope: !7137)
!7496 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7284)
!7497 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7290)
!7498 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7290)
!7499 = !DILocation(line: 89, column: 24, scope: !7138, inlinedAt: !7292)
!7500 = !DILocation(line: 742, column: 41, scope: !7137)
!7501 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7293)
!7502 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7296)
!7503 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7290)
!7504 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7296)
!7505 = !DILocation(line: 89, column: 24, scope: !7140, inlinedAt: !7298)
!7506 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7301)
!7507 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7296)
!7508 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7301)
!7509 = !DILocation(line: 89, column: 24, scope: !7142, inlinedAt: !7303)
!7510 = !DILocation(line: 744, column: 32, scope: !7137)
!7511 = !DILocation(line: 0, scope: !7137)
!7512 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7301)
!7513 = !DILocation(line: 750, column: 62, scope: !7137)
!7514 = !DILocation(line: 747, column: 33, scope: !7137)
!7515 = !DILocation(line: 751, column: 29, scope: !7137)
!7516 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7306)
!7517 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7306)
!7518 = !DILocation(line: 89, column: 24, scope: !7144, inlinedAt: !7308)
!7519 = !DILocation(line: 752, column: 32, scope: !7137)
!7520 = !DILocation(line: 734, column: 67, scope: !7136)
!7521 = !DILocation(line: 2511, column: 13, scope: !7146, inlinedAt: !7309)
!7522 = !DILocation(line: 737, column: 61, scope: !7137)
!7523 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7306)
!7524 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7310)
!7525 = !DILocation(line: 756, column: 30, scope: !7135)
!7526 = !DILocation(line: 0, scope: !7311)
!7527 = !DILocation(line: 769, column: 36, scope: !7147)
!7528 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7314)
!7529 = !DILocation(line: 770, column: 36, scope: !7147)
!7530 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7317)
!7531 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7314)
!7532 = !DILocation(line: 89, column: 24, scope: !7148, inlinedAt: !7319)
!7533 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7314)
!7534 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7317)
!7535 = !DILocation(line: 89, column: 24, scope: !7150, inlinedAt: !7321)
!7536 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7322)
!7537 = !DILocation(line: 768, column: 57, scope: !7147)
!7538 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7323)
!7539 = !DILocation(line: 773, column: 36, scope: !7152)
!7540 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7324)
!7541 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7325)
!7542 = !DILocation(line: 776, column: 24, scope: !7154)
!7543 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7317)
!7544 = !DILocation(line: 786, column: 25, scope: !7154)
!7545 = !DILocation(line: 2587, column: 13, scope: !7155, inlinedAt: !7327)
!7546 = !DILocation(line: 217, column: 8, scope: !7157, inlinedAt: !7326)
!7547 = !DILocation(line: 777, column: 25, scope: !7154)
!7548 = !DILocation(line: 776, column: 21, scope: !7154)
!7549 = !DILocation(line: 803, column: 25, scope: !7154)
!7550 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7330)
!7551 = !DILocation(line: 89, column: 24, scope: !7158, inlinedAt: !7332)
!7552 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7333)
!7553 = !DILocation(line: 790, column: 25, scope: !7154)
!7554 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7334)
!7555 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7335)
!7556 = !DILocation(line: 0, scope: !7336)
!7557 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7339)
!7558 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7339)
!7559 = !DILocation(line: 89, column: 24, scope: !7160, inlinedAt: !7341)
!7560 = !DILocation(line: 812, column: 21, scope: !7154)
!7561 = !DILocation(line: 820, column: 24, scope: !7154)
!7562 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7339)
!7563 = !DILocation(line: 833, column: 25, scope: !7154)
!7564 = !DILocation(line: 820, column: 21, scope: !7154)
!7565 = !DILocation(line: 822, column: 29, scope: !7154)
!7566 = !DILocation(line: 0, scope: !7120)
!7567 = !DILocation(line: 843, column: 21, scope: !7154)
!7568 = !DILocation(line: 852, column: 24, scope: !7154)
!7569 = !DILocation(line: 823, column: 29, scope: !7154)
!7570 = !DILocation(line: 821, column: 25, scope: !7154)
!7571 = !DILocation(line: 830, column: 37, scope: !7163)
!7572 = !DILocation(line: 2511, column: 13, scope: !7146, inlinedAt: !7342)
!7573 = !DILocation(line: 830, column: 29, scope: !7163)
!7574 = !DILocation(line: 857, column: 29, scope: !7154)
!7575 = !DILocation(line: 857, column: 21, scope: !7154)
!7576 = !DILocation(line: 858, column: 79, scope: !7154)
!7577 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7345)
!7578 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7345)
!7579 = !DILocation(line: 45, column: 9, scope: !7166, inlinedAt: !7167)
!7580 = !DILocation(line: 45, column: 17, scope: !7166, inlinedAt: !7167)
!7581 = !DILocation(line: 2154, column: 12, scope: !298, inlinedAt: !7170)
!7582 = !DILocation(line: 1955, column: 21, scope: !299, inlinedAt: !7169)
!7583 = !DILocation(line: 89, column: 24, scope: !7174, inlinedAt: !7351)
!7584 = !DILocation(line: 5621, column: 13, scope: !7176, inlinedAt: !7179)
!7585 = !DILocation(line: 47, column: 6, scope: !7168, inlinedAt: !7167)
!7586 = !DILocation(line: 51, column: 13, scope: !7168, inlinedAt: !7167)
!7587 = !DILocation(line: 51, column: 12, scope: !7168, inlinedAt: !7167)
!7588 = !DILocation(line: 51, column: 11, scope: !7168, inlinedAt: !7167)
!7589 = !DILocation(line: 47, column: 5, scope: !7168, inlinedAt: !7167)
!7590 = !DILocation(line: 52, column: 13, scope: !7168, inlinedAt: !7167)
!7591 = !DILocation(line: 52, column: 12, scope: !7168, inlinedAt: !7167)
!7592 = !DILocation(line: 52, column: 11, scope: !7168, inlinedAt: !7167)
!7593 = !DILocation(line: 53, column: 13, scope: !7168, inlinedAt: !7167)
!7594 = !DILocation(line: 55, column: 1, scope: !7166, inlinedAt: !7167)
!7595 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7353)
!7596 = !DILocation(line: 450, column: 5, scope: !7183, inlinedAt: !7352)
!7597 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7354)
!7598 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7356)
!7599 = !DILocation(line: 450, column: 5, scope: !7185, inlinedAt: !7354)
!7600 = !DILocation(line: 861, column: 21, scope: !7186)
!7601 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7345)
!7602 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7357)
!7603 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7359)
!7604 = !DILocation(line: 450, column: 5, scope: !7187, inlinedAt: !7357)
!7605 = !DILocation(line: 864, column: 21, scope: !7186)
!7606 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7360)
!7607 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7362)
!7608 = !DILocation(line: 450, column: 5, scope: !7188, inlinedAt: !7360)
!7609 = !DILocation(line: 867, column: 21, scope: !7186)
!7610 = !DILocation(line: 869, column: 54, scope: !7186)
!7611 = !DILocation(line: 870, column: 21, scope: !7186)
!7612 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7365)
!7613 = !DILocation(line: 0, scope: !7186)
!7614 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7369)
!7615 = !DILocation(line: 0, scope: !7154)
!7616 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7365)
!7617 = !DILocation(line: 89, column: 24, scope: !7189, inlinedAt: !7371)
!7618 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7365)
!7619 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7369)
!7620 = !DILocation(line: 89, column: 24, scope: !7191, inlinedAt: !7373)
!7621 = !DILocation(line: 872, column: 27, scope: !7186)
!7622 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7369)
!7623 = !DILocation(line: 875, column: 40, scope: !7193)
!7624 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7376)
!7625 = !DILocation(line: 876, column: 40, scope: !7193)
!7626 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7379)
!7627 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7376)
!7628 = !DILocation(line: 89, column: 24, scope: !7194, inlinedAt: !7381)
!7629 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7376)
!7630 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7379)
!7631 = !DILocation(line: 89, column: 24, scope: !7196, inlinedAt: !7383)
!7632 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7384)
!7633 = !DILocation(line: 874, column: 68, scope: !7193)
!7634 = !DILocation(line: 2548, column: 13, scope: !7112, inlinedAt: !7385)
!7635 = !DILocation(line: 879, column: 28, scope: !7198)
!7636 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7379)
!7637 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7386)
!7638 = !DILocation(line: 2511, column: 13, scope: !7121, inlinedAt: !7387)
!7639 = !DILocation(line: 883, column: 25, scope: !7198)
!7640 = !DILocation(line: 884, column: 25, scope: !7198)
!7641 = !DILocation(line: 892, column: 25, scope: !7198)
!7642 = !DILocation(line: 901, column: 28, scope: !7198)
!7643 = !DILocation(line: 906, column: 33, scope: !7198)
!7644 = !DILocation(line: 906, column: 25, scope: !7198)
!7645 = !DILocation(line: 907, column: 83, scope: !7198)
!7646 = !DILocation(line: 568, column: 12, scope: !7127, inlinedAt: !7390)
!7647 = !DILocation(line: 573, column: 27, scope: !7127, inlinedAt: !7390)
!7648 = !DILocation(line: 45, column: 9, scope: !7166, inlinedAt: !7201)
!7649 = !DILocation(line: 45, column: 17, scope: !7166, inlinedAt: !7201)
!7650 = !DILocation(line: 2154, column: 12, scope: !298, inlinedAt: !7203)
!7651 = !DILocation(line: 1955, column: 21, scope: !299, inlinedAt: !7202)
!7652 = !DILocation(line: 89, column: 24, scope: !7207, inlinedAt: !7394)
!7653 = !DILocation(line: 5621, column: 13, scope: !7176, inlinedAt: !7210)
!7654 = !DILocation(line: 47, column: 6, scope: !7168, inlinedAt: !7201)
!7655 = !DILocation(line: 51, column: 13, scope: !7168, inlinedAt: !7201)
!7656 = !DILocation(line: 51, column: 12, scope: !7168, inlinedAt: !7201)
!7657 = !DILocation(line: 51, column: 11, scope: !7168, inlinedAt: !7201)
!7658 = !DILocation(line: 47, column: 5, scope: !7168, inlinedAt: !7201)
!7659 = !DILocation(line: 52, column: 13, scope: !7168, inlinedAt: !7201)
!7660 = !DILocation(line: 52, column: 12, scope: !7168, inlinedAt: !7201)
!7661 = !DILocation(line: 52, column: 11, scope: !7168, inlinedAt: !7201)
!7662 = !DILocation(line: 53, column: 13, scope: !7168, inlinedAt: !7201)
!7663 = !DILocation(line: 55, column: 1, scope: !7166, inlinedAt: !7201)
!7664 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7397)
!7665 = !DILocation(line: 450, column: 5, scope: !7212, inlinedAt: !7396)
!7666 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7398)
!7667 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7400)
!7668 = !DILocation(line: 450, column: 5, scope: !7214, inlinedAt: !7398)
!7669 = !DILocation(line: 910, column: 25, scope: !7215)
!7670 = !DILocation(line: 569, column: 13, scope: !7127, inlinedAt: !7390)
!7671 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7401)
!7672 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7403)
!7673 = !DILocation(line: 450, column: 5, scope: !7216, inlinedAt: !7401)
!7674 = !DILocation(line: 913, column: 25, scope: !7215)
!7675 = !DILocation(line: 449, column: 18, scope: !7182, inlinedAt: !7404)
!7676 = !DILocation(line: 2587, column: 13, scope: !7180, inlinedAt: !7406)
!7677 = !DILocation(line: 450, column: 5, scope: !7217, inlinedAt: !7404)
end_hunk_2
