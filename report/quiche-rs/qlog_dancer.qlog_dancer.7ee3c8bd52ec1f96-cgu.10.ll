Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.10?download=true
inline.NumInlined: 1202
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB6_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30212
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !29855)
  %i.df = load i8, ptr %i.h, align 8, !dbg !30213, !range !11263, !alias.scope !30074, !noundef !3137
  %i.dg = icmp eq i8 %i.df, -2, !dbg !30213
  br i1 %i.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit255, label %bb.ad, !dbg !30213

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !dbg !30213
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit255, !dbg !30213

bb.ae:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer.exit250
    #dbg_value(double poison, !29923, !DIExpression(), !30000)
    #dbg_value(double poison, !29973, !DIExpression(), !30002)
    #dbg_value(double poison, !29977, !DIExpression(), !30005)
    #dbg_value(ptr %i.g, !11265, !DIExpression(), !29859)
  %i.dh = fadd double %i.ag, %.sroa.071.0296, !dbg !30214 ; 2 uses
    #dbg_value(double %i.dh, !29923, !DIExpression(), !30000)
    #dbg_value(double %i.dh, !29973, !DIExpression(), !30002)
    #dbg_value(double %i.dh, !29977, !DIExpression(), !30005)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30212
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !29861)
  %i.di = load i8, ptr %i.h, align 8, !dbg !30215, !range !11263, !alias.scope !30075, !noundef !3137
  %i.dj = icmp eq i8 %i.di, -2, !dbg !30215
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256, label %bb.af, !dbg !30215

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !dbg !30215
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256, !dbg !30215

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30216
    #dbg_value(i8 poison, !29924, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30006)
    #dbg_value(i32 %i.bn, !29924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30006)
    #dbg_value(double %i.dh, !29977, !DIExpression(), !30005)
    #dbg_value(double %i.dh, !29973, !DIExpression(), !30002)
    #dbg_value(double %i.dh, !29923, !DIExpression(), !30000)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29767)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29766)
  %.not.i = icmp sgt i32 %i.bn, %..i243
  %or.cond288 = or i1 %i.bo, %.not.i, !dbg !30137
  br i1 %or.cond288, label %._crit_edge, label %bb.j, !dbg !30137

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit255: ; preds = %bb.ad, %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30216
  br label %bb.v, !dbg !30217

bb.ag:                                            ; preds = %bb.ab
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !30218
  unreachable, !dbg !30218

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit252: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %i.db, !dbg !30218

bb.ah:                                            ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261
  %.sroa.0268.0297 = phi i32 [ %.sroa.0.1, %bb.g ], [ %i.dq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261 ] ; 2 uses
    #dbg_value(i32 %.sroa.0268.0297, !11237, !DIExpression(), !29865)
    #dbg_value(i32 %.sroa.0268.0297, !11247, !DIExpression(), !29867)
    #dbg_value(i64 1, !11244, !DIExpression(), !29865)
    #dbg_value(i32 1, !11245, !DIExpression(), !29868)
    #dbg_value(i32 1, !11250, !DIExpression(), !29867)
    #dbg_value(i32 poison, !29910, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29957)
    #dbg_value(i1 poison, !29910, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !29957)
    #dbg_value(i32 %.sroa.0268.0297, !29911, !DIExpression(), !30077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !30219
  %i.dl = load ptr, ptr %i.p, align 8, !dbg !30220, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.dl, !29892, !DIExpression(), !29939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !30221
  %i.dm = load ptr, ptr %i.o, align 8, !dbg !30221, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.dm, !29895, !DIExpression(), !29939)
    #dbg_value(ptr %i.dm, !11201, !DIExpression(), !29870)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !dbg !30222, !alias.scope !30079
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dl, i32 noundef %.sroa.0268.0297, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.k), !dbg !30223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !30224
    #dbg_value(ptr %i.l, !30018, !DIExpression(), !30082)
    #dbg_value(ptr %i.l, !30023, !DIExpression(), !30085)
  %i.dn = load i8, ptr %i.l, align 8, !dbg !30225, !range !11263, !noundef !3137
  %.not235 = icmp eq i8 %i.dn, -2, !dbg !30225
  br i1 %.not235, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261, label %bb.aj, !dbg !30226

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261
    #dbg_value(i32 poison, !29910, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29957)
    #dbg_value(i8 poison, !29910, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29957)
  store i8 -2, ptr %0, align 8, !dbg !30227
  br label %bb.u, !dbg !30228

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261: ; preds = %bb.ah
  %i.do = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0268.0297, i32 1), !dbg !30229 ; 2 uses
  %i.dp = extractvalue { i32, i1 } %i.do, 1, !dbg !30230
    #dbg_value(i1 %i.dp, !29910, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !29957)
  %i.dq = extractvalue { i32, i1 } %i.do, 0, !dbg !30230 ; 2 uses
    #dbg_value(i32 %i.dq, !29910, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29957)
    #dbg_value(ptr %i.l, !11265, !DIExpression(), !29876)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30231
    #dbg_value(i8 poison, !29910, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29957)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29771)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29770)
  %.not.i257 = icmp sgt i32 %i.dq, %.sroa.027.1
  %or.cond289 = or i1 %i.dp, %.not.i257, !dbg !30108
  br i1 %or.cond289, label %bb.ai, label %bb.ah, !dbg !30108

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !30232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30231
  br label %bb.u, !dbg !30097

bb.ak:                                            ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit266
  %.sroa.0267.0298 = phi i32 [ %.sroa.17.2, %bb.e ], [ %i.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit266 ] ; 2 uses
    #dbg_value(i32 %.sroa.0267.0298, !11237, !DIExpression(), !29878)
    #dbg_value(i32 %.sroa.0267.0298, !11247, !DIExpression(), !29880)
    #dbg_value(i64 1, !11244, !DIExpression(), !29878)
    #dbg_value(i32 1, !11245, !DIExpression(), !29881)
    #dbg_value(i32 1, !11250, !DIExpression(), !29880)
    #dbg_value(i32 poison, !29906, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29949)
    #dbg_value(i1 poison, !29906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !29949)
    #dbg_value(i32 %.sroa.0267.0298, !29907, !DIExpression(), !30086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !30233
  %i.dr = load ptr, ptr %i.p, align 8, !dbg !30234, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.dr, !29892, !DIExpression(), !29939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !30235
  %i.ds = load ptr, ptr %i.o, align 8, !dbg !30235, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.ds, !29895, !DIExpression(), !29939)
    #dbg_value(ptr %i.ds, !11201, !DIExpression(), !29883)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !dbg !30236, !alias.scope !30088
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dr, i32 noundef %2, i32 noundef %.sroa.0267.0298, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m), !dbg !30237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !30238
    #dbg_value(ptr %i.n, !30018, !DIExpression(), !30090)
    #dbg_value(ptr %i.n, !30023, !DIExpression(), !30092)
  %i.dt = load i8, ptr %i.n, align 8, !dbg !30239, !range !11263, !noundef !3137
  %.not236 = icmp eq i8 %i.dt, -2, !dbg !30239
  br i1 %.not236, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit266, label %bb.am, !dbg !30240

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit266
    #dbg_value(i32 poison, !29906, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29949)
    #dbg_value(i8 poison, !29906, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29949)
  store i8 -2, ptr %0, align 8, !dbg !30241
  br label %bb.u, !dbg !30242

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit266: ; preds = %bb.ak
  %i.du = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0267.0298, i32 1), !dbg !30243 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1, !dbg !30244
    #dbg_value(i1 %i.dv, !29906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !29949)
  %i.dw = extractvalue { i32, i1 } %i.du, 0, !dbg !30244 ; 2 uses
    #dbg_value(i32 %i.dw, !29906, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29949)
    #dbg_value(ptr %i.n, !11265, !DIExpression(), !29889)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30245
    #dbg_value(i8 poison, !29906, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29949)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29775)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29774)
  %.not.i262 = icmp sgt i32 %i.dw, %.sroa.16.1
  %or.cond290 = or i1 %i.dv, %.not.i262, !dbg !30100
  br i1 %or.cond290, label %bb.al, label %bb.ak, !dbg !30100

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !30246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30245
  br label %bb.u, !dbg !30097
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30279 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !11279, !DIExpression(), !30282)
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !11279, !DIExpression(), !30285)
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 13 uses
    #dbg_declare(ptr poison, !30491, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !30503)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30288)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30288)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30289)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30289)
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [1 x i8], align 1                 ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !30504)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30292)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30292)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30293)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30293)
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !30505)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30296)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30296)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30297)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30297)
  %i.o = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !30470, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30506)
    #dbg_value(ptr poison, !30470, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30506)
    #dbg_value(ptr poison, !30469, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30507)
    #dbg_value(ptr poison, !30469, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30507)
  %i.p = alloca [24 x i8], align 8                ; 14 uses
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
  %i.q = alloca [8 x i8], align 8                 ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
    #dbg_value(ptr %1, !30459, !DIExpression(), !30510)
  store ptr %1, ptr %i.r, align 8
    #dbg_value(i32 %2, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %3, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %4, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %5, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
  store ptr %6, ptr %i.q, align 8
    #dbg_declare(ptr %i.p, !30468, !DIExpression(), !30511)
    #dbg_declare(ptr %i.n, !30476, !DIExpression(), !30512)
    #dbg_declare(ptr %i.l, !30480, !DIExpression(), !30513)
    #dbg_declare(ptr %i.i, !30486, !DIExpression(), !30514)
    #dbg_declare(ptr %i.h, !30494, !DIExpression(), !30515)
    #dbg_declare(ptr %i.g, !30496, !DIExpression(), !30516)
    #dbg_declare(ptr %i.f, !30499, !DIExpression(), !30517)
    #dbg_declare(ptr %i.e, !30501, !DIExpression(), !30518)
    #dbg_value(ptr %6, !11294, !DIExpression(), !30299)
    #dbg_value(ptr %6, !11301, !DIExpression(), !30301)
  %i.s = load double, ptr %6, align 8, !dbg !30751, !alias.scope !30519, !noundef !3137
  %i.t = fcmp oeq double %i.s, 0.000000e+00, !dbg !30752
  br i1 %i.t, label %bb.c, label %bb.b, !dbg !30752

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !30753
  %.val243 = load i32, ptr %i.u, align 8, !dbg !30753, !noundef !3137 ; 2 uses
  switch i32 %.val243, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ], !dbg !30754

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 -2, ptr %0, align 8, !dbg !30755
  br label %bb.w, !dbg !30756

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %2, %4, !dbg !30757
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !30757

bb.e:                                             ; preds = %bb.b
  %i.w = sub i32 %4, %2, !dbg !30758              ; 2 uses
    #dbg_value(i32 %i.w, !30521, !DIExpression(), !30524)
  %i.x = sext i32 %i.w to i64, !dbg !30759        ; 2 uses
    #dbg_value(i64 %i.x, !30463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30525)
  %i.y = sub i32 %5, %3, !dbg !30760              ; 2 uses
    #dbg_value(i32 %i.y, !30521, !DIExpression(), !30527)
  %i.z = sext i32 %i.y to i64, !dbg !30761        ; 2 uses
    #dbg_value(i64 %i.z, !30463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30525)
  %i.aa = mul nsw i64 %i.x, %i.x, !dbg !30762
  %i.ab = mul nsw i64 %i.z, %i.z, !dbg !30763
  %i.ac = add nuw i64 %i.ab, %i.aa, !dbg !30764
  %i.ad = sitofp i64 %i.ac to double, !dbg !30765
    #dbg_value(double %i.ad, !30528, !DIExpression(), !30531)
    #dbg_value(double %i.ad, !30532, !DIExpression(), !30535)
  %i.ae = tail call double @llvm.sqrt.f64(double %i.ad), !dbg !30766 ; 2 uses
    #dbg_value(double %i.ae, !30464, !DIExpression(), !30536)
  %i.af = fcmp olt double %i.ae, 1.000000e-05, !dbg !30767
  br i1 %i.af, label %bb.ap, label %bb.aq, !dbg !30767

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i32 %3, %5, !dbg !30768
  br i1 %i.ag, label %bb.i, label %bb.h, !dbg !30768

bb.g:                                             ; preds = %bb.d
  %.sroa.16.1 = tail call i32 @llvm.smax.i32(i32 %3, i32 %5), !dbg !30769
  %.sroa.17.2 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5), !dbg !30769
    #dbg_value(i32 %2, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.17.2, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.16.1, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.17.2, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30537)
    #dbg_value(i32 %.sroa.16.1, !30473, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30537)
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30537)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30297)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30296)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.5.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  br label %bb.am, !dbg !30770

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !30771
  %i.ai = sub i32 %2, %4, !dbg !30772
    #dbg_value(i32 %i.ai, !30538, !DIExpression(), !30541)
  %.sroa.065.0 = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 false), !dbg !30773
  %i.aj = sub i32 %3, %5, !dbg !30774
    #dbg_value(i32 %i.aj, !30538, !DIExpression(), !30543)
  %.sroa.066.0 = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 false), !dbg !30775
  %i.ak = icmp slt i32 %.sroa.065.0, %.sroa.066.0, !dbg !30772 ; 4 uses
  %i.al = zext i1 %i.ak to i8, !dbg !30772
    #dbg_value(i8 %i.al, !30481, !DIExpression(), !30544)
  store i8 %i.al, ptr %i.j, align 1, !dbg !30772
  br i1 %i.ak, label %bb.k, label %bb.j, !dbg !30776

bb.i:                                             ; preds = %bb.f
  %.sroa.027.1 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4), !dbg !30777
  %.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4), !dbg !30777
    #dbg_value(i32 %.sroa.0.1, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %3, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.027.1, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.0.1, !30477, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30545)
    #dbg_value(i32 %.sroa.027.1, !30477, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30545)
    #dbg_value(i8 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30545)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30293)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30292)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.5.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  br label %bb.aj, !dbg !30778

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.16.0 = phi i32 [ %4, %bb.k ], [ %5, %bb.h ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %5, %bb.k ], [ %4, %bb.h ] ; 3 uses
  %.sroa.17.0 = phi i32 [ %2, %bb.k ], [ %3, %bb.h ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %3, %bb.k ], [ %2, %bb.h ] ; 3 uses
    #dbg_value(i32 %.sroa.0.0, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.17.0, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.027.0, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.16.0, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
  %i.an = icmp sgt i32 %.sroa.0.0, %.sroa.027.0, !dbg !30779 ; 2 uses
  %.sroa.027.0..sroa.0.0 = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30780 ; 3 uses
  %.sroa.0.0..sroa.027.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30780 ; 3 uses
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !30546, !DIExpression(), !30549)
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !30483, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30550)
    #dbg_value(i32 %.sroa.0.0..sroa.027.0, !30483, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30550)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !30546, !DIExpression(), !30552)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !30482, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30550)
    #dbg_value(i32 %.sroa.027.0..sroa.0.0, !30482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30550)
    #dbg_value(ptr %1, !30459, !DIExpression(), !30510)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30781
  %.val = load i32, ptr %i.ao, align 8, !dbg !30781, !noundef !3137 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52, !dbg !30781
  %.val240 = load i32, ptr %i.ap, align 4, !dbg !30781, !noundef !3137 ; 2 uses
    #dbg_value(i32 %.val, !30484, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30553)
    #dbg_value(i32 %.val240, !30484, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30553)
    #dbg_value(i8 %i.al, !30481, !DIExpression(), !30544)
  %.sroa.7.0 = select i1 %i.ak, i32 %.val, i32 %.val240, !dbg !30782 ; 2 uses
  %.sroa.067.0 = select i1 %i.ak, i32 %.val240, i32 %.val, !dbg !30782
    #dbg_value(i32 %.sroa.067.0, !30484, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30553)
    #dbg_value(i32 %.sroa.7.0, !30484, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30553)
    #dbg_value(i32 %i.au, !30546, !DIExpression(), !30555)
  %i.aq = sub i32 %.sroa.0.0..sroa.027.0, %.sroa.027.0..sroa.0.0, !dbg !30783
    #dbg_value(i32 %i.aq, !30546, !DIExpression(), !30557)
  %i.ar = sitofp i32 %i.aq to double, !dbg !30784
    #dbg_value(double %i.aw, !30485, !DIExpression(), !30558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !30785
  store ptr %i.j, ptr %i.i, align 8, !dbg !30786
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !30786
  store ptr %i.r, ptr %i.as, align 8, !dbg !30786
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !30786
  store ptr %i.q, ptr %i.at, align 8, !dbg !30786
  %.sroa.16.0..sroa.17.0 = select i1 %i.an, i32 %.sroa.16.0, i32 %.sroa.17.0, !dbg !30780 ; 4 uses
  %.sroa.17.0..sroa.16.0 = select i1 %i.an, i32 %.sroa.17.0, i32 %.sroa.16.0, !dbg !30780 ; 3 uses
  %i.au = sub i32 %.sroa.17.0..sroa.16.0, %.sroa.16.0..sroa.17.0, !dbg !30787
  %i.av = sitofp i32 %i.au to double, !dbg !30788
  %i.aw = fdiv double %i.av, %i.ar, !dbg !30554   ; 3 uses
  %i.ax = add i32 %.sroa.7.0, -1, !dbg !30789
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30310)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30310)
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.ax, i32 %.sroa.17.0..sroa.16.0), !dbg !30790
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !30312)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !30312)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !30546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !30560)
    #dbg_value(double poison, !30561, !DIExpression(), !30564)
    #dbg_value(double poison, !30565, !DIExpression(), !30568)
    #dbg_value(i32 %i.bl, !30487, !DIExpression(), !30569)
  %i.ay = add i32 %.sroa.7.0, -2, !dbg !30791
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30316)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30316)
  %..i245 = call noundef i32 @llvm.smin.i32(i32 %i.ay, i32 %.sroa.16.0..sroa.17.0), !dbg !30792
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !30318)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !30318)
  %i.az = insertelement <2 x i32> poison, i32 %..i245, i64 0, !dbg !30793
  %i.ba = insertelement <2 x i32> %i.az, i32 %..i, i64 1, !dbg !30793
  %i.bb = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ba, <2 x i32> zeroinitializer), !dbg !30793
  %i.bc = insertelement <2 x i32> poison, i32 %.sroa.16.0..sroa.17.0, i64 0, !dbg !30794
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !30794
  %i.be = sub <2 x i32> %i.bb, %i.bd, !dbg !30794
    #dbg_value(!DIArgList(i32 poison, i32 poison), !30546, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !30571)
  %i.bf = sitofp <2 x i32> %i.be to <2 x double>, !dbg !30795
  %i.bg = insertelement <2 x double> poison, double %i.aw, i64 0, !dbg !30796
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !30796
  %i.bi = fdiv <2 x double> %i.bf, %i.bh, !dbg !30796 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1, !dbg !30797
    #dbg_value(double %i.bj, !30561, !DIExpression(), !30564)
    #dbg_value(double %i.bj, !30565, !DIExpression(), !30568)
  %i.bk = call double @llvm.floor.f64(double %i.bj), !dbg !30797
  %i.bl = call i32 @llvm.fptosi.sat.i32.f64(double %i.bk), !dbg !30796
    #dbg_value(double poison, !30572, !DIExpression(), !30575)
  %i.bm = extractelement <2 x double> %i.bi, i64 0, !dbg !30798
    #dbg_value(double %i.bm, !30572, !DIExpression(), !30575)
  %i.bn = call double @llvm.fabs.f64(double %i.bm), !dbg !30798
    #dbg_value(double %i.bn, !30576, !DIExpression(), !30579)
    #dbg_value(double %i.bn, !30580, !DIExpression(), !30583)
  %i.bo = call double @llvm.ceil.f64(double %i.bn), !dbg !30799
  %i.bp = call i32 @llvm.fptosi.sat.i32.f64(double %i.bo), !dbg !30800 ; 2 uses
  %i.bq = add i32 %i.bp, %.sroa.027.0..sroa.0.0, !dbg !30800 ; 2 uses
    #dbg_value(i32 %i.bq, !30488, !DIExpression(), !30584)
  %i.br = add i32 %.sroa.067.0, -2, !dbg !30801
end_hunk_0
begin_hunk_1_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !30919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30918
  br label %bb.w, !dbg !30756

bb.am:                                            ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276
  %.sroa.0278.0311 = phi i32 [ %.sroa.17.2, %bb.g ], [ %i.gc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276 ] ; 2 uses
    #dbg_value(i32 %.sroa.0278.0311, !11237, !DIExpression(), !30410)
    #dbg_value(i32 %.sroa.0278.0311, !11247, !DIExpression(), !30412)
    #dbg_value(i64 1, !11244, !DIExpression(), !30410)
    #dbg_value(i32 1, !11245, !DIExpression(), !30413)
    #dbg_value(i32 1, !11250, !DIExpression(), !30412)
    #dbg_value(i32 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30537)
    #dbg_value(i1 poison, !30473, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30537)
    #dbg_value(i32 %.sroa.0278.0311, !30474, !DIExpression(), !30675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !30920
  %i.fq = load ptr, ptr %i.r, align 8, !dbg !30921, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.fq, !30459, !DIExpression(), !30510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !30922
  %i.fr = load ptr, ptr %i.q, align 8, !dbg !30922, !nonnull !3137, !align !5401, !noundef !3137 ; 4 uses
    #dbg_value(ptr %i.fr, !30462, !DIExpression(), !30510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30677), !dbg !30923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30678), !dbg !30923
    #dbg_value(ptr %i.fr, !11294, !DIExpression(), !30418)
    #dbg_value(ptr %i.fr, !11301, !DIExpression(), !30420)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8, !dbg !30924
  %i.ft = load i8, ptr %i.fs, align 8, !dbg !30924, !alias.scope !30678, !noundef !3137
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 9, !dbg !30925
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !30925, !alias.scope !30678, !noundef !3137
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 10, !dbg !30926
  %i.fx = load i8, ptr %i.fw, align 2, !dbg !30926, !alias.scope !30678, !noundef !3137
  %i.fy = load double, ptr %i.fr, align 8, !dbg !30927, !alias.scope !30678, !noundef !3137
  store double %i.fy, ptr %i.m, align 8, !dbg !30928, !alias.scope !30677
  store i8 %i.ft, ptr %i.ah, align 8, !dbg !30928, !alias.scope !30677
  store i8 %i.fv, ptr %.sroa.4.0..sroa_idx.i274, align 1, !dbg !30928, !alias.scope !30677
  store i8 %i.fx, ptr %.sroa.5.0..sroa_idx.i275, align 2, !dbg !30928, !alias.scope !30677
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.fq, i32 noundef %2, i32 noundef %.sroa.0278.0311, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m), !dbg !30929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !30930
    #dbg_value(ptr %i.n, !30606, !DIExpression(), !30680)
    #dbg_value(ptr %i.n, !30611, !DIExpression(), !30682)
  %i.fz = load i8, ptr %i.n, align 8, !dbg !30931, !range !11263, !noundef !3137
  %.not238 = icmp eq i8 %i.fz, -2, !dbg !30931
  br i1 %.not238, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276, label %bb.ao, !dbg !30932

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276
    #dbg_value(i32 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30537)
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30537)
  store i8 -2, ptr %0, align 8, !dbg !30933
  br label %bb.w, !dbg !30934

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276: ; preds = %bb.am
  %i.ga = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0278.0311, i32 1), !dbg !30935 ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.ga, 1, !dbg !30936
    #dbg_value(i1 %i.gb, !30473, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30537)
  %i.gc = extractvalue { i32, i1 } %i.ga, 0, !dbg !30936 ; 2 uses
    #dbg_value(i32 %i.gc, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30537)
    #dbg_value(ptr %i.n, !11265, !DIExpression(), !30423)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30937
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30537)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30297)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30296)
  %.not.i270 = icmp sgt i32 %i.gc, %.sroa.16.1
  %or.cond303 = or i1 %i.gb, %.not.i270, !dbg !30770
  br i1 %or.cond303, label %bb.an, label %bb.am, !dbg !30770

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !30938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30937
  br label %bb.w, !dbg !30756

bb.ap:                                            ; preds = %bb.e
  store i8 -2, ptr %0, align 8, !dbg !30939
  br label %bb.w, !dbg !30940

bb.aq:                                            ; preds = %bb.e
  %i.gd = insertelement <2 x i32> poison, i32 %i.w, i64 0, !dbg !30941
  %i.ge = insertelement <2 x i32> %i.gd, i32 %i.y, i64 1, !dbg !30941
  %i.gf = sitofp <2 x i32> %i.ge to <2 x double>, !dbg !30941
    #dbg_value(double poison, !30465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30684)
  %i.gg = insertelement <2 x double> poison, double %i.ae, i64 0, !dbg !30941
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !30941
  %i.gi = fdiv <2 x double> %i.gf, %i.gh, !dbg !30941 ; 2 uses
    #dbg_value(double poison, !30465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30684)
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
    #dbg_value(i32 %.val243, !30685, !DIExpression(), !30688)
  %i.gj = uitofp i32 %.val243 to double, !dbg !30942
  %i.gk = fmul nnan double %i.gj, 5.000000e-01, !dbg !30687 ; 4 uses
  %i.gl = extractelement <2 x double> %i.gi, i64 1, !dbg !30943 ; 2 uses
    #dbg_value(double %i.gk, !30466, !DIExpression(), !30689)
  %i.gm = fmul double %i.gl, %i.gk, !dbg !30944   ; 2 uses
  %i.gn = extractelement <2 x double> %i.gi, i64 0, !dbg !30945 ; 2 uses
  %i.go = fneg double %i.gn, !dbg !30946
  %i.gp = fmul double %i.gk, %i.go, !dbg !30946   ; 2 uses
    #dbg_value(double %i.gl, !30465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30684)
  %i.gq = fneg double %i.gl, !dbg !30943
  %i.gr = fmul double %i.gk, %i.gq, !dbg !30943   ; 2 uses
  %i.gs = fmul double %i.gn, %i.gk, !dbg !30945   ; 2 uses
    #dbg_value(double %i.gm, !30467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30690)
    #dbg_value(double %i.gp, !30467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30690)
    #dbg_value(double %i.gr, !30467, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30690)
    #dbg_value(double %i.gs, !30467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30947
  store i64 0, ptr %i.p, align 8, !dbg !30948
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !30948 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.gt, align 8, !dbg !30948
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !30948 ; 5 uses
  store i64 0, ptr %i.gu, align 8, !dbg !30948
    #dbg_value(ptr undef, !30469, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30507)
    #dbg_value(!DIArgList(ptr undef, i64 8), !30469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30507)
    #dbg_value(ptr undef, !30470, !DIExpression(), !30506)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30509)
    #dbg_value(!DIArgList(ptr undef, i64 0), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30698, !DIExpression(), !30705)
    #dbg_value(i32 %2, !30546, !DIExpression(), !30707)
    #dbg_value(i32 %3, !30546, !DIExpression(), !30709)
    #dbg_value(i32 poison, !30702, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30705)
    #dbg_value(i32 poison, !30702, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30705)
    #dbg_value(ptr %i.p, !30710, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30718, !DIExpression(), !30434)
    #dbg_value(i32 poison, !30714, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 poison, !30714, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30723, !DIExpression(), !30439)
    #dbg_value(i64 0, !30715, !DIExpression(), !30440)
    #dbg_value(i64 0, !30732, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30730, !DIExpression(), !30444)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge337 unwind label %bb.ar, !dbg !30949

bb.ar:                                            ; preds = %bb.aw, %bb.au, %bb.as, %bb.aq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTllEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit258 unwind label %bb.ai, !dbg !30950

._crit_edge337:                                   ; preds = %bb.aq
  %i.gw = sitofp i32 %3 to double                 ; 2 uses
  %i.gx = fadd double %i.gp, %i.gw, !dbg !30951
  %i.gy = call i32 @llvm.fptosi.sat.i32.f64(double %i.gx), !dbg !30951
    #dbg_value(i32 %i.gy, !30702, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30705)
    #dbg_value(i32 %i.gy, !30714, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
  %i.gz = sitofp i32 %2 to double                 ; 2 uses
  %i.ha = fadd double %i.gm, %i.gz, !dbg !30952
  %i.hb = call i32 @llvm.fptosi.sat.i32.f64(double %i.ha), !dbg !30952
    #dbg_value(i32 %i.hb, !30702, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30705)
    #dbg_value(i32 %i.hb, !30714, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
  %.pre = load ptr, ptr %i.gt, align 8, !dbg !30953, !alias.scope !30735 ; 2 uses
    #dbg_value(ptr %.pre, !30733, !DIExpression(), !30443)
    #dbg_value(ptr %.pre, !30716, !DIExpression(), !30453)
    #dbg_value(ptr %.pre, !30746, !DIExpression(), !30456)
    #dbg_value(i32 %i.hb, !30749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.gy, !30749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hb, ptr %.pre, align 4, !dbg !30954
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre, i64 4, !dbg !30954
  store i32 %i.gy, ptr %i.hc, align 4, !dbg !30954
  store i64 1, ptr %i.gu, align 8, !dbg !30955, !alias.scope !30735
    #dbg_value(!DIArgList(ptr undef, i64 16), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30698, !DIExpression(), !30705)
    #dbg_value(i32 %2, !30546, !DIExpression(), !30707)
  %i.hd = fadd double %i.gr, %i.gz, !dbg !30952
  %i.he = call i32 @llvm.fptosi.sat.i32.f64(double %i.hd), !dbg !30952
    #dbg_value(i32 %3, !30546, !DIExpression(), !30709)
  %i.hf = fadd double %i.gs, %i.gw, !dbg !30951
  %i.hg = call i32 @llvm.fptosi.sat.i32.f64(double %i.hf), !dbg !30951
    #dbg_value(i32 %i.he, !30702, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30705)
    #dbg_value(i32 %i.hg, !30702, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30705)
    #dbg_value(ptr %i.p, !30710, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30718, !DIExpression(), !30434)
    #dbg_value(i32 %i.he, !30714, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.hg, !30714, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30723, !DIExpression(), !30439)
    #dbg_value(i64 1, !30715, !DIExpression(), !30440)
    #dbg_value(i64 1, !30732, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30730, !DIExpression(), !30444)
  %i.hh = load i64, ptr %i.p, align 8, !dbg !30956, !range !5219, !alias.scope !30735, !noundef !3137 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 1, !dbg !30957
  br i1 %i.hi, label %bb.as, label %bb.at, !dbg !30957

bb.as:                                            ; preds = %._crit_edge337
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge338 unwind label %bb.ar, !dbg !30949

._crit_edge338:                                   ; preds = %bb.as
  %.pre339 = load i64, ptr %i.p, align 8, !dbg !30956, !range !5219, !alias.scope !30735
  br label %bb.at, !dbg !30949

bb.at:                                            ; preds = %._crit_edge338, %._crit_edge337
  %i.hj = phi i64 [ %.pre339, %._crit_edge338 ], [ %i.hh, %._crit_edge337 ], !dbg !30956 ; 2 uses
  %i.hk = load ptr, ptr %i.gt, align 8, !dbg !30953, !alias.scope !30735, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.hk, !30733, !DIExpression(), !30443)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8, !dbg !30958
    #dbg_value(ptr %i.hl, !30716, !DIExpression(), !30453)
    #dbg_value(ptr %i.hl, !30746, !DIExpression(), !30456)
    #dbg_value(i32 %i.he, !30749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.hg, !30749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.he, ptr %i.hl, align 4, !dbg !30954
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 12, !dbg !30954
  store i32 %i.hg, ptr %i.hm, align 4, !dbg !30954
  store i64 2, ptr %i.gu, align 8, !dbg !30955, !alias.scope !30735
    #dbg_value(double %i.gr, !30467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30690)
    #dbg_value(double %i.gs, !30467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30690)
    #dbg_value(double %i.gm, !30467, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30690)
    #dbg_value(double %i.gp, !30467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30690)
    #dbg_value(!DIArgList(ptr undef, i64 16), !30469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30507)
    #dbg_value(ptr undef, !30470, !DIExpression(), !30506)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30509)
  %i.hn = sitofp i32 %4 to double                 ; 2 uses
  %i.ho = sitofp i32 %5 to double                 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 0), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30698, !DIExpression(), !30705)
    #dbg_value(i32 %4, !30546, !DIExpression(), !30707)
  %i.hp = fadd double %i.gr, %i.hn, !dbg !30952
  %i.hq = call i32 @llvm.fptosi.sat.i32.f64(double %i.hp), !dbg !30952
    #dbg_value(i32 %5, !30546, !DIExpression(), !30709)
  %i.hr = fadd double %i.gs, %i.ho, !dbg !30951
  %i.hs = call i32 @llvm.fptosi.sat.i32.f64(double %i.hr), !dbg !30951
    #dbg_value(i32 %i.hq, !30702, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30705)
    #dbg_value(i32 %i.hs, !30702, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30705)
    #dbg_value(ptr %i.p, !30710, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30718, !DIExpression(), !30434)
    #dbg_value(i32 %i.hq, !30714, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.hs, !30714, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30723, !DIExpression(), !30439)
    #dbg_value(i64 2, !30715, !DIExpression(), !30440)
    #dbg_value(i64 2, !30732, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30730, !DIExpression(), !30444)
  %i.ht = icmp eq i64 %i.hj, 2, !dbg !30957
  br i1 %i.ht, label %bb.au, label %bb.av, !dbg !30957

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge340 unwind label %bb.ar, !dbg !30949

._crit_edge340:                                   ; preds = %bb.au
  %.pre341 = load i64, ptr %i.p, align 8, !dbg !30956, !range !5219, !alias.scope !30735
  br label %bb.av, !dbg !30949

bb.av:                                            ; preds = %._crit_edge340, %bb.at
  %i.hu = phi i64 [ %.pre341, %._crit_edge340 ], [ %i.hj, %bb.at ], !dbg !30956
  %i.hv = load ptr, ptr %i.gt, align 8, !dbg !30953, !alias.scope !30735, !nonnull !3137, !noundef !3137 ; 3 uses
    #dbg_value(ptr %i.hv, !30733, !DIExpression(), !30443)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16, !dbg !30958
    #dbg_value(ptr %i.hw, !30716, !DIExpression(), !30453)
    #dbg_value(ptr %i.hw, !30746, !DIExpression(), !30456)
    #dbg_value(i32 %i.hq, !30749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.hs, !30749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hq, ptr %i.hw, align 4, !dbg !30954
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20, !dbg !30954
  store i32 %i.hs, ptr %i.hx, align 4, !dbg !30954
  store i64 3, ptr %i.gu, align 8, !dbg !30955, !alias.scope !30735
    #dbg_value(!DIArgList(ptr undef, i64 16), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30698, !DIExpression(), !30705)
    #dbg_value(i32 %4, !30546, !DIExpression(), !30707)
  %i.hy = fadd double %i.gm, %i.hn, !dbg !30952
  %i.hz = call i32 @llvm.fptosi.sat.i32.f64(double %i.hy), !dbg !30952
    #dbg_value(i32 %5, !30546, !DIExpression(), !30709)
  %i.ia = fadd double %i.gp, %i.ho, !dbg !30951
  %i.ib = call i32 @llvm.fptosi.sat.i32.f64(double %i.ia), !dbg !30951
    #dbg_value(i32 %i.hz, !30702, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30705)
    #dbg_value(i32 %i.ib, !30702, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30705)
    #dbg_value(ptr %i.p, !30710, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30718, !DIExpression(), !30434)
    #dbg_value(i32 %i.hz, !30714, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.ib, !30714, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30723, !DIExpression(), !30439)
    #dbg_value(i64 3, !30715, !DIExpression(), !30440)
    #dbg_value(i64 3, !30732, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30730, !DIExpression(), !30444)
  %i.ic = icmp eq i64 %i.hu, 3, !dbg !30957
  br i1 %i.ic, label %bb.aw, label %bb.ax, !dbg !30957

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge342 unwind label %bb.ar, !dbg !30949

._crit_edge342:                                   ; preds = %bb.aw
  %.pre343 = load ptr, ptr %i.gt, align 8, !dbg !30953, !alias.scope !30735
  br label %bb.ax, !dbg !30949

bb.ax:                                            ; preds = %._crit_edge342, %bb.av
  %i.id = phi ptr [ %.pre343, %._crit_edge342 ], [ %i.hv, %bb.av ], !dbg !30953 ; 2 uses
    #dbg_value(ptr %i.id, !30733, !DIExpression(), !30443)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24, !dbg !30958
    #dbg_value(ptr %i.ie, !30716, !DIExpression(), !30453)
    #dbg_value(ptr %i.ie, !30746, !DIExpression(), !30456)
    #dbg_value(i32 %i.hz, !30749, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.ib, !30749, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hz, ptr %i.ie, align 4, !dbg !30954
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 28, !dbg !30954
  store i32 %i.ib, ptr %i.if, align 4, !dbg !30954
  store i64 4, ptr %i.gu, align 8, !dbg !30955, !alias.scope !30735
    #dbg_value(!DIArgList(ptr undef, i64 32), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(double %i.gm, !30467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30690)
    #dbg_value(double %i.gp, !30467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30690)
    #dbg_value(double %i.gr, !30467, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30690)
    #dbg_value(double %i.gs, !30467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30690)
    #dbg_value(!DIArgList(ptr undef, i64 16), !30469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30507)
  %i.ig = load ptr, ptr %i.r, align 8, !dbg !30959, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.ig, !30459, !DIExpression(), !30510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !30960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !30960
  %i.ih = load ptr, ptr %i.q, align 8, !dbg !30959, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.ih, !30462, !DIExpression(), !30510)
  call void @_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend12fill_polygonNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleINtNtCsexYYUdYSQU6_5alloc3vec3VecTllEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ig, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih), !dbg !30961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !30962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !30950
  br label %bb.w, !dbg !30940
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4rect9draw_rectNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB6_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30978 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !31041, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !31055)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30981)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30981)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30982)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30982)
  %i.f = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !31037, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !31056)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30985)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30985)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30986)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30986)
    #dbg_value(ptr %1, !31030, !DIExpression(), !31057)
    #dbg_value(i32 %2, !31031, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31057)
    #dbg_value(i32 %3, !31031, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31057)
    #dbg_value(i32 %4, !31032, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31057)
    #dbg_value(i32 %5, !31032, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31057)
    #dbg_value(ptr %6, !31033, !DIExpression(), !31057)
    #dbg_value(i1 %7, !31034, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !31057)
    #dbg_declare(ptr %i.f, !31040, !DIExpression(), !31058)
    #dbg_declare(ptr %i.e, !31044, !DIExpression(), !31059)
    #dbg_declare(ptr %i.d, !31060, !DIExpression(), !31071)
    #dbg_declare(ptr poison, !31045, !DIExpression(), !31072)
    #dbg_declare(ptr poison, !31073, !DIExpression(), !31081)
    #dbg_declare(ptr %i.c, !31060, !DIExpression(), !31083)
    #dbg_declare(ptr poison, !31047, !DIExpression(), !31084)
    #dbg_declare(ptr poison, !31073, !DIExpression(), !31087)
    #dbg_declare(ptr %i.b, !31060, !DIExpression(), !31089)
    #dbg_declare(ptr poison, !31049, !DIExpression(), !31090)
    #dbg_declare(ptr poison, !31073, !DIExpression(), !31093)
    #dbg_declare(ptr %i.a, !31060, !DIExpression(), !31095)
    #dbg_declare(ptr poison, !31051, !DIExpression(), !31096)
    #dbg_declare(ptr poison, !31073, !DIExpression(), !31099)
    #dbg_declare(ptr poison, !31062, !DIExpression(), !31100)
    #dbg_declare(ptr poison, !31074, !DIExpression(), !31101)
    #dbg_declare(ptr poison, !31064, !DIExpression(), !31102)
    #dbg_declare(ptr poison, !31075, !DIExpression(), !31103)
    #dbg_declare(ptr poison, !31066, !DIExpression(), !31104)
    #dbg_declare(ptr poison, !31076, !DIExpression(), !31105)
    #dbg_declare(ptr poison, !31068, !DIExpression(), !31106)
    #dbg_declare(ptr poison, !31077, !DIExpression(), !31107)
    #dbg_value(ptr %6, !11201, !DIExpression(), !31002)
  %.sroa.0.0.copyload = load double, ptr %6, align 8, !dbg !31132, !alias.scope !31108
  %i.g = fcmp oeq double %.sroa.0.0.copyload, 0.000000e+00, !dbg !31133
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !31133

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !31007)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !31007)
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %4, i32 %2), !dbg !31134 ; 7 uses
    #dbg_value(i32 %..i, !31035, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31109)
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !31009)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !31009)
  %..i27 = tail call noundef i32 @llvm.smin.i32(i32 %5, i32 %3), !dbg !31135 ; 7 uses
    #dbg_value(i32 %..i27, !31035, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31109)
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !31011)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !31011)
  %..i28 = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %2), !dbg !31136 ; 7 uses
    #dbg_value(i32 %..i28, !31036, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31109)
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !31013)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !31013)
  %..i29 = tail call noundef i32 @llvm.smax.i32(i32 %5, i32 %3), !dbg !31137 ; 7 uses
    #dbg_value(i32 %..i29, !31036, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31109)
  br i1 %7, label %bb.e, label %bb.d, !dbg !31138

bb.c:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8, !dbg !31139
  br label %bb.o, !dbg !31140

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31070
  call void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %..i, i32 noundef %..i27, i32 noundef %..i, i32 noundef %..i29, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6), !dbg !31141
  %i.h = load i8, ptr %i.d, align 8, !dbg !31142, !range !11263, !noundef !3137
  %.not = icmp eq i8 %i.h, -2, !dbg !31142
  br i1 %.not, label %bb.g, label %bb.f, !dbg !31143

bb.e:                                             ; preds = %bb.b
  %i.i = sub i32 %..i28, %..i, !dbg !31144
  %i.j = sub i32 %..i29, %..i27, !dbg !31145
  %i.k = icmp slt i32 %i.i, %i.j, !dbg !31144
  br i1 %i.k, label %.preheader, label %.preheader49, !dbg !31144

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !dbg !31146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !31147
  br label %bb.o, !dbg !31148

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !31147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31082
  call void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %..i, i32 noundef %..i27, i32 noundef %..i28, i32 noundef %..i27, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6), !dbg !31149
  %i.l = load i8, ptr %i.c, align 8, !dbg !31150, !range !11263, !noundef !3137
  %.not22 = icmp eq i8 %i.l, -2, !dbg !31150
  br i1 %.not22, label %bb.i, label %bb.h, !dbg !31151

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !31152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31153
  br label %bb.o, !dbg !31148

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31088
  call void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %..i28, i32 noundef %..i29, i32 noundef %..i, i32 noundef %..i29, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6), !dbg !31154
  %i.m = load i8, ptr %i.b, align 8, !dbg !31155, !range !11263, !noundef !3137
  %.not23 = icmp eq i8 %i.m, -2, !dbg !31155
  br i1 %.not23, label %bb.k, label %bb.j, !dbg !31156

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !31157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31158
  br label %bb.o, !dbg !31148

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31094
  call void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %..i28, i32 noundef %..i29, i32 noundef %..i28, i32 noundef %..i27, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6), !dbg !31159
  %i.n = load i8, ptr %i.a, align 8, !dbg !31160, !range !11263, !noundef !3137
  %.not24 = icmp eq i8 %i.n, -2, !dbg !31160
  br i1 %.not24, label %bb.m, label %bb.l, !dbg !31161

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !31162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31163
  br label %bb.o, !dbg !31148

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31163
  br label %.loopexit, !dbg !31164

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34, %bb.m
  store i8 -2, ptr %0, align 8, !dbg !31165
  br label %bb.o, !dbg !31166

.preheader49:                                     ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit
  %.sroa.036.051 = phi i32 [ %i.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %..i27, %bb.e ] ; 3 uses
    #dbg_value(i32 %.sroa.036.051, !11237, !DIExpression(), !31015)
    #dbg_value(i32 %.sroa.036.051, !11247, !DIExpression(), !31017)
    #dbg_value(i64 1, !11244, !DIExpression(), !31015)
    #dbg_value(i32 1, !11245, !DIExpression(), !31018)
    #dbg_value(i32 1, !11250, !DIExpression(), !31017)
    #dbg_value(i1 poison, !31041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !31112)
    #dbg_value(i32 poison, !31041, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31112)
    #dbg_value(i32 %.sroa.036.051, !31042, !DIExpression(), !31113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31167
  call void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %..i, i32 noundef %.sroa.036.051, i32 noundef %..i28, i32 noundef %.sroa.036.051, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6), !dbg !31168
    #dbg_value(ptr %i.e, !31115, !DIExpression(), !31119)
    #dbg_value(ptr %i.e, !31120, !DIExpression(), !31124)
  %i.o = load i8, ptr %i.e, align 8, !dbg !31169, !range !11263, !noundef !3137
  %.not25 = icmp eq i8 %i.o, -2, !dbg !31169
  br i1 %.not25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.n, !dbg !31170

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.preheader49
  %i.p = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.036.051, i32 1), !dbg !31171 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1, !dbg !31172
    #dbg_value(i1 %i.q, !31041, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !31112)
  %i.r = extractvalue { i32, i1 } %i.p, 0, !dbg !31172 ; 2 uses
    #dbg_value(i32 %i.r, !31041, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31112)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !31173
    #dbg_value(i8 poison, !31041, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !31112)
    #dbg_value(i32 %i.r, !31041, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31112)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30982)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30981)
  %.not.i = icmp sgt i32 %i.r, %..i29
  %or.cond = or i1 %i.q, %.not.i, !dbg !31174
  br i1 %or.cond, label %.loopexit, label %.preheader49, !dbg !31174

bb.n:                                             ; preds = %.preheader49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !31175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !31173
  br label %bb.o, !dbg !31148

.preheader:                                       ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34
  %.sroa.035.052 = phi i32 [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34 ], [ %..i, %bb.e ] ; 3 uses
    #dbg_value(i32 %.sroa.035.052, !11237, !DIExpression(), !31023)
    #dbg_value(i32 %.sroa.035.052, !11247, !DIExpression(), !31025)
    #dbg_value(i64 1, !11244, !DIExpression(), !31023)
    #dbg_value(i32 1, !11245, !DIExpression(), !31026)
end_hunk_1
