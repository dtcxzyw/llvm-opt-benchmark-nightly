Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0
@177 = private unnamed_addr constant [4 x i8] c"Rgb8", align 1
@178 = private unnamed_addr constant [5 x i8] c"Rgba8", align 1
@179 = private unnamed_addr constant [3 x i8] c"L16", align 1
@180 = private unnamed_addr constant [4 x i8] c"La16", align 1
@181 = private unnamed_addr constant [5 x i8] c"Rgb16", align 1
@182 = private unnamed_addr constant [6 x i8] c"Rgba16", align 1
@183 = private unnamed_addr constant [4 x i8] c"Bgr8", align 1
@184 = private unnamed_addr constant [5 x i8] c"Bgra8", align 1
@185 = private unnamed_addr constant [6 x i8] c"Rgb32F", align 1
@186 = private unnamed_addr constant [7 x i8] c"Rgba32F", align 1
@187 = private unnamed_addr constant [5 x i8] c"Cmyk8", align 1
@188 = private unnamed_addr constant [6 x i8] c"Cmyk16", align 1
@189 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@190 = private unnamed_addr constant [8 x i8] c"\03\00\00\00\00\00\00\00", align 8
@191 = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@192 = private unnamed_addr constant [8 x i8] c"\04\00\00\00\00\00\00\00", align 8
@193 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00W\03\00\00-\00\00\00" }>, align 8
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00X\03\00\000\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00\9B\03\00\00*\00\00\00" }>, align 8
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00\9C\03\00\00*\00\00\00" }>, align 8
@197 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00\9D\03\00\00*\00\00\00" }>, align 8
@198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"\0C\00\00\00\00\00\00\00\9E\03\00\000\00\00\00" }>, align 8
@199 = private unnamed_addr constant [5 x i8] c"Strip", align 1
@200 = private unnamed_addr constant [4 x i8] c"Tile", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB6_6Header4readINtNtBa_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1424) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i8 %.0.val, i8 %.1.val, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = alloca [32 x i8], align 16               ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.6228 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.6222 = alloca [32 x i8], align 8         ; 5 uses
  %i.h = alloca [848 x i8], align 8               ; 6 uses
  %i.i = alloca [136 x i8], align 8               ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.6205.sroa.8 = alloca [6 x i8], align 2   ; 5 uses
  %.sroa.6201.sroa.8 = alloca [6 x i8], align 2   ; 5 uses
  %.sroa.6191.sroa.8 = alloca [6 x i8], align 2   ; 5 uses
  %.sroa.6187.sroa.8 = alloca [6 x i8], align 2   ; 5 uses
  %.sroa.5181 = alloca [6 x i8], align 2          ; 4 uses
  %.sroa.6143 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.6139 = alloca [24 x i8], align 8         ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [352 x i8], align 8               ; 5 uses
  %i.o = alloca [352 x i8], align 8               ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [352 x i8], align 8               ; 5 uses
  %i.r = alloca [352 x i8], align 8               ; 4 uses
  %.sroa.353 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.829 = alloca [6 x i8], align 2           ; 3 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [368 x i8], align 8               ; 13 uses
  %i.v = alloca [352 x i8], align 8               ; 31 uses
  %i.w = alloca [392 x i8], align 8               ; 8 uses
  %.sroa.08 = alloca [40 x i8], align 8           ; 7 uses
  %i.x = alloca [352 x i8], align 8               ; 10 uses
  %i.y = alloca [40 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [136 x i8], align 8              ; 15 uses
  %i.ac = alloca [848 x i8], align 8              ; 78 uses
  %i.ad = alloca [352 x i8], align 8              ; 14 uses
  %i.ae = trunc nuw i8 %.1.val to i1
  %. = select i1 %i.ae, i64 256, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 2, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvXs1_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_15LayerAttributesNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([848 x i8]) align 8 captures(none) dereferenceable(848) %i.ac)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc567, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.aao

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds4zero(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.ys, %bb.e, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.aac

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB4_15ImageAttributes3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.2440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 25 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 29 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 220
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 236
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 676
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 680
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 840
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 320 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 664
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 668
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 824
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 828
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 836
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 656
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 280 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 440 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 180
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 480 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 688
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 692
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %.sroa.5377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %.sroa.6378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 756
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 760
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 560 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 400 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 360 ; 8 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 520 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 240 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 600 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 26
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522, %bb.f
  %.sroa.019.sroa.5.0 = phi i8 [ undef, %bb.f ], [ %.sroa.019.sroa.5.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 52 uses
  %.sroa.019.sroa.4.0 = phi i64 [ undef, %bb.f ], [ %.sroa.019.sroa.4.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 54 uses
  %.sroa.019.sroa.0.0 = phi i64 [ undef, %bb.f ], [ %.sroa.019.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 54 uses
  %.sroa.0.0 = phi i8 [ -1, %bb.f ], [ %.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 52 uses
  %.sroa.842.sroa.4.0 = phi i32 [ undef, %bb.f ], [ %.sroa.842.sroa.4.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.842.sroa.0.0 = phi i32 [ undef, %bb.f ], [ %.sroa.842.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %i.di = phi i32 [ undef, %bb.f ], [ %i.blz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.0102.0 = phi i32 [ 0, %bb.f ], [ %.sroa.0102.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.472.0 = phi i64 [ undef, %bb.f ], [ %.sroa.472.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.070.0 = phi i64 [ 0, %bb.f ], [ %.sroa.070.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.3.sroa.0.0 = phi i64 [ undef, %bb.f ], [ %.sroa.3.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 53 uses
  %.sroa.359.0 = phi i64 [ undef, %bb.f ], [ %.sroa.359.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.058.0 = phi i64 [ 0, %bb.f ], [ %.sroa.058.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.357.0 = phi i32 [ undef, %bb.f ], [ %.sroa.357.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.056.0 = phi i32 [ 0, %bb.f ], [ %.sroa.056.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.054.0 = phi i8 [ -1, %bb.f ], [ %.sroa.054.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 52 uses
  %.sroa.052.0 = phi i1 [ false, %bb.f ], [ %.sroa.052.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.051.0 = phi i1 [ false, %bb.f ], [ %.sroa.051.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 51 uses
  %.sroa.3.sroa.2.0 = phi i64 [ undef, %bb.f ], [ %.sroa.3.sroa.2.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 53 uses
  %.sroa.3.sroa.3.0 = phi i32 [ undef, %bb.f ], [ %.sroa.3.sroa.3.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 53 uses
  %.sroa.036.0 = phi i32 [ -1, %bb.f ], [ %.sroa.036.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 54 uses
  %.sroa.3.sroa.4.0 = phi i32 [ undef, %bb.f ], [ %.sroa.3.sroa.4.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 53 uses
  %.sroa.420.0 = phi i8 [ 2, %bb.f ], [ %.sroa.420.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 53 uses
  %i.dj = phi i8 [ -1, %bb.f ], [ %i.bma, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 ] ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta12sequence_end8has_comeINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.h unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.g, %bb.xc, %bb.yg, %bb.ya, %bb.yd, %bb.xz, %bb.xq, %bb.xo, %bb.xm, %bb.nh
  %lpad.loopexit.split-lp2720 = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

bb.h:                                             ; preds = %bb.g
  %i.dk = load i64, ptr %i.z, align 8, !range !4, !noundef !5 ; 2 uses
  %.not443 = icmp eq i64 %i.dk, -1
  %i.dl = load i8, ptr %i.ah, align 8             ; 2 uses
  br i1 %.not443, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5294.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5291.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dk, ptr %i.dm, align 8
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %.sroa.4293.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ys

bb.j:                                             ; preds = %bb.h
  %i.dn = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.dn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.)
          to label %bb.m unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.do = trunc nuw i32 %.sroa.0102.0 to i1
  %.not453 = icmp ne i32 %.sroa.036.0, -1
  %3 = and i32 %.sroa.036.0, -2
  %switch = icmp eq i32 %3, 8
  %or.cond = select i1 %i.do, i1 %switch, i1 false ; 3 uses
  %brmerge = select i1 %or.cond, i1 true, i1 %.not453
  br i1 %brmerge, label %bb.xl, label %bb.xm

bb.m:                                             ; preds = %bb.k
  %i.dp = load i64, ptr %i.ai, align 8, !range !112, !noundef !5 ; 3 uses
  %i.dq = icmp eq i64 %i.dp, -2
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  br label %bb.ys

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.2440.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5297.0..sroa_idx, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08, i64 40, i1 false)
  store i64 %i.dp, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  %.not452 = icmp eq i64 %i.dp, -1
  br i1 %.not452, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2440.0..sroa_idx, i64 32, i1 false)
  br i1 %2, label %bb.xh, label %bb.xg

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.v, ptr noundef nonnull align 8 dereferenceable(352) %i.x, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ds = invoke { ptr, i64 } @_RNvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB2_4Text8as_slice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y)
          to label %bb.r unwind label %bb.xf      ; 2 uses

.thread148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.wu, %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread140

bb.r:                                             ; preds = %bb.q
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0      ; 501 uses
  %i.du = extractvalue { ptr, i64 } %i.ds, 1      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ak, ptr noundef nonnull align 8 dereferenceable(352) %i.v, i64 352, i1 false)
  store ptr %i.dt, ptr %i.u, align 8
  store i64 %i.du, ptr %i.aj, align 8
  switch i64 %i.du, label %bb.t [
    i64 4, label %bb.s
    i64 5, label %bb.av
    i64 8, label %bb.bq
    i64 11, label %bb.eu
    i64 10, label %bb.fh
    i64 13, label %bb.gq
    i64 9, label %bb.ht
    i64 7, label %bb.jv
    i64 18, label %bb.lo
    i64 17, label %bb.os
    i64 14, label %bb.pl
    i64 16, label %bb.ru
    i64 6, label %bb.tf
    i64 15, label %bb.tn
    i64 19, label %bb.ue
    i64 3, label %bb.vs
    i64 21, label %bb.vx
  ]

bb.s:                                             ; preds = %bb.r
  %i.dv = load i64, ptr %i.ak, align 8, !range !6, !noundef !5
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 1)
  switch i64 %i.dw, label %bb.t [
    i64 14, label %bb.u
    i64 16, label %bb.v
  ]

bb.t:                                             ; preds = %bb.r, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl, %bb.wk, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf, %bb.we, %bb.wd, %bb.wc, %bb.wb, %bb.wa, %bb.vz, %bb.vy, %bb.vx, %bb.vv, %bb.vu, %bb.vt, %bb.vs, %bb.vq, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vl, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.vf, %bb.ve, %bb.vd, %bb.vc, %bb.vb, %bb.va, %bb.uy, %bb.ux, %bb.uw, %bb.uv, %bb.uu, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uk, %bb.uj, %bb.ui, %bb.uh, %bb.ug, %bb.uf, %bb.ue, %bb.uc, %bb.ub, %bb.ua, %bb.tz, %bb.ty, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.tp, %bb.to, %bb.tn, %bb.tl, %bb.tk, %bb.tj, %bb.ti, %bb.th, %bb.tg, %bb.tf, %bb.td, %bb.tc, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.su, %bb.st, %bb.ss, %bb.sr, %bb.sq, %bb.sp, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rx, %bb.rw, %bb.rv, %bb.ru, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s
  %i.dx = load i64, ptr %i.ak, align 8, !range !6, !noundef !5
  %i.dy = call i64 @llvm.usub.sat.i64(i64 %i.dx, i64 1)
  switch i64 %i.dy, label %bb.ww [
    i64 1, label %bb.wx
    i64 13, label %bb.wx
  ]

bb.u:                                             ; preds = %bb.s
  %i.dz = load i8, ptr %i.dt, align 1, !noundef !5
  switch i8 %i.dz, label %bb.t [
    i8 116, label %bb.w
    i8 110, label %bb.x
    i8 118, label %bb.y
  ]

bb.v:                                             ; preds = %bb.s
  %i.ea = load i8, ptr %i.dt, align 1, !noundef !5
  %i.eb = icmp eq i8 %i.ea, 110
  br i1 %i.eb, label %bb.ar, label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !noundef !5
  %i.ee = icmp eq i8 %i.ed, 121
  br i1 %i.ee, label %bb.z, label %bb.t

bb.x:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !5
  %i.eh = icmp eq i8 %i.eg, 97
  br i1 %i.eh, label %bb.ah, label %bb.t

bb.y:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %i.ek = icmp eq i8 %i.ej, 105
  br i1 %i.ek, label %bb.am, label %bb.t

bb.z:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.em = load i8, ptr %i.el, align 1, !noundef !5
  %i.en = icmp eq i8 %i.em, 112
  br i1 %i.en, label %bb.aa, label %bb.t

bb.aa:                                            ; preds = %bb.z
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !noundef !5
  %i.eq = icmp eq i8 %i.ep, 101
  br i1 %i.eq, label %bb.ab, label %bb.t

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs9_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_9BlockType5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.ad unwind label %bb.ac

.thread163:                                       ; preds = %bb.xb, %bb.ww, %bb.wz, %bb.wx
  %lpad.thr_comm161 = landingpad { ptr, i32 }
          cleanup
  br label %.thread140

bb.ac:                                            ; preds = %bb.ab
  %lpad.thr_comm.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.ad:                                            ; preds = %bb.ab
  %i.er = load i64, ptr %i.s, align 8, !range !4, !noundef !5 ; 2 uses
  %.not446 = icmp eq i64 %i.er, -1
  %i.es = load i8, ptr %i.cm, align 8             ; 3 uses
  br i1 %.not446, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

bb.af:                                            ; preds = %bb.wt, %bb.vw, %bb.vr, %bb.uz, %bb.ud, %bb.tm, %bb.te, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517, %bb.rt, %bb.rf, %bb.qr, %bb.qd, %bb.pk, %bb.or, %bb.nz, %bb.nf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509, %bb.ln, %bb.lg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507, %bb.kq, %bb.kh, %bb.ju, %bb.jm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505, %bb.ir, %bb.ig, %bb.hs, %bb.hf, %bb.gp, %bb.gf, %bb.fu, %bb.fg, %bb.et, %bb.em, %bb.eg, %bb.dy, %bb.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501, %bb.cm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit, %bb.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498, %bb.bd, %bb.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, %bb.ae
  %.sroa.019.sroa.5.1 = phi i8 [ %.sroa.019.sroa.5.0, %bb.ae ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.019.sroa.5.0, %bb.au ], [ %.sroa.033.sroa.5.0.copyload, %bb.bd ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.019.sroa.5.0, %bb.bp ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.5.0, %bb.cm ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.019.sroa.5.0, %bb.dr ], [ %.sroa.019.sroa.5.0, %bb.dy ], [ %.sroa.019.sroa.5.0, %bb.eg ], [ %.sroa.019.sroa.5.0, %bb.em ], [ %.sroa.019.sroa.5.0, %bb.et ], [ %.sroa.019.sroa.5.0, %bb.fg ], [ %.sroa.019.sroa.5.0, %bb.fu ], [ %.sroa.019.sroa.5.0, %bb.gf ], [ %.sroa.019.sroa.5.0, %bb.gp ], [ %.sroa.019.sroa.5.0, %bb.hf ], [ %.sroa.019.sroa.5.0, %bb.hs ], [ %.sroa.019.sroa.5.0, %bb.ig ], [ %.sroa.019.sroa.5.0, %bb.ir ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.019.sroa.5.0, %bb.jm ], [ %.sroa.019.sroa.5.0, %bb.ju ], [ %.sroa.019.sroa.5.0, %bb.kh ], [ %.sroa.019.sroa.5.0, %bb.kq ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.019.sroa.5.0, %bb.lg ], [ %.sroa.019.sroa.5.0, %bb.ln ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.019.sroa.5.0, %bb.nf ], [ %.sroa.019.sroa.5.0, %bb.nz ], [ %.sroa.019.sroa.5.0, %bb.or ], [ %.sroa.019.sroa.5.0, %bb.pk ], [ %.sroa.019.sroa.5.0, %bb.qd ], [ %.sroa.019.sroa.5.0, %bb.qr ], [ %.sroa.019.sroa.5.0, %bb.rf ], [ %.sroa.019.sroa.5.0, %bb.rt ], [ %.sroa.019.sroa.5.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.019.sroa.5.0, %bb.te ], [ %.sroa.019.sroa.5.0, %bb.tm ], [ %.sroa.019.sroa.5.0, %bb.ud ], [ %.sroa.019.sroa.5.0, %bb.uz ], [ %.sroa.019.sroa.5.0, %bb.vr ], [ %.sroa.019.sroa.5.0, %bb.vw ], [ %.sroa.019.sroa.5.0, %bb.wt ]
  %.sroa.019.sroa.4.1 = phi i64 [ %.sroa.019.sroa.4.0, %bb.ae ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.019.sroa.4.0, %bb.au ], [ %.sroa.033.sroa.4.0.copyload, %bb.bd ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.019.sroa.4.0, %bb.bp ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.4.0, %bb.cm ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.019.sroa.4.0, %bb.dr ], [ %.sroa.019.sroa.4.0, %bb.dy ], [ %.sroa.019.sroa.4.0, %bb.eg ], [ %.sroa.019.sroa.4.0, %bb.em ], [ %.sroa.019.sroa.4.0, %bb.et ], [ %.sroa.019.sroa.4.0, %bb.fg ], [ %.sroa.019.sroa.4.0, %bb.fu ], [ %.sroa.019.sroa.4.0, %bb.gf ], [ %.sroa.019.sroa.4.0, %bb.gp ], [ %.sroa.019.sroa.4.0, %bb.hf ], [ %.sroa.019.sroa.4.0, %bb.hs ], [ %.sroa.019.sroa.4.0, %bb.ig ], [ %.sroa.019.sroa.4.0, %bb.ir ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.019.sroa.4.0, %bb.jm ], [ %.sroa.019.sroa.4.0, %bb.ju ], [ %.sroa.019.sroa.4.0, %bb.kh ], [ %.sroa.019.sroa.4.0, %bb.kq ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.019.sroa.4.0, %bb.lg ], [ %.sroa.019.sroa.4.0, %bb.ln ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.019.sroa.4.0, %bb.nf ], [ %.sroa.019.sroa.4.0, %bb.nz ], [ %.sroa.019.sroa.4.0, %bb.or ], [ %.sroa.019.sroa.4.0, %bb.pk ], [ %.sroa.019.sroa.4.0, %bb.qd ], [ %.sroa.019.sroa.4.0, %bb.qr ], [ %.sroa.019.sroa.4.0, %bb.rf ], [ %.sroa.019.sroa.4.0, %bb.rt ], [ %.sroa.019.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.019.sroa.4.0, %bb.te ], [ %.sroa.019.sroa.4.0, %bb.tm ], [ %.sroa.019.sroa.4.0, %bb.ud ], [ %.sroa.019.sroa.4.0, %bb.uz ], [ %.sroa.019.sroa.4.0, %bb.vr ], [ %.sroa.019.sroa.4.0, %bb.vw ], [ %.sroa.019.sroa.4.0, %bb.wt ]
  %.sroa.019.sroa.0.1 = phi i64 [ %.sroa.019.sroa.0.0, %bb.ae ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.019.sroa.0.0, %bb.au ], [ %.sroa.033.sroa.0.0.copyload, %bb.bd ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.019.sroa.0.0, %bb.bp ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.019.sroa.0.0, %bb.cm ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.019.sroa.0.0, %bb.dr ], [ %.sroa.019.sroa.0.0, %bb.dy ], [ %.sroa.019.sroa.0.0, %bb.eg ], [ %.sroa.019.sroa.0.0, %bb.em ], [ %.sroa.019.sroa.0.0, %bb.et ], [ %.sroa.019.sroa.0.0, %bb.fg ], [ %.sroa.019.sroa.0.0, %bb.fu ], [ %.sroa.019.sroa.0.0, %bb.gf ], [ %.sroa.019.sroa.0.0, %bb.gp ], [ %.sroa.019.sroa.0.0, %bb.hf ], [ %.sroa.019.sroa.0.0, %bb.hs ], [ %.sroa.019.sroa.0.0, %bb.ig ], [ %.sroa.019.sroa.0.0, %bb.ir ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.019.sroa.0.0, %bb.jm ], [ %.sroa.019.sroa.0.0, %bb.ju ], [ %.sroa.019.sroa.0.0, %bb.kh ], [ %.sroa.019.sroa.0.0, %bb.kq ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.019.sroa.0.0, %bb.lg ], [ %.sroa.019.sroa.0.0, %bb.ln ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.019.sroa.0.0, %bb.nf ], [ %.sroa.019.sroa.0.0, %bb.nz ], [ %.sroa.019.sroa.0.0, %bb.or ], [ %.sroa.019.sroa.0.0, %bb.pk ], [ %.sroa.019.sroa.0.0, %bb.qd ], [ %.sroa.019.sroa.0.0, %bb.qr ], [ %.sroa.019.sroa.0.0, %bb.rf ], [ %.sroa.019.sroa.0.0, %bb.rt ], [ %.sroa.019.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.019.sroa.0.0, %bb.te ], [ %.sroa.019.sroa.0.0, %bb.tm ], [ %.sroa.019.sroa.0.0, %bb.ud ], [ %.sroa.019.sroa.0.0, %bb.uz ], [ %.sroa.019.sroa.0.0, %bb.vr ], [ %.sroa.019.sroa.0.0, %bb.vw ], [ %.sroa.019.sroa.0.0, %bb.wt ]
  %.sroa.0.1 = phi i8 [ %i.es, %bb.ae ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.0.0, %bb.au ], [ %.sroa.0.0, %bb.bd ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.0.0, %bb.bp ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.0.0, %bb.cm ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.0.0, %bb.dr ], [ %.sroa.0.0, %bb.dy ], [ %.sroa.0.0, %bb.eg ], [ %.sroa.0.0, %bb.em ], [ %.sroa.0.0, %bb.et ], [ %.sroa.0.0, %bb.fg ], [ %.sroa.0.0, %bb.fu ], [ %.sroa.0.0, %bb.gf ], [ %.sroa.0.0, %bb.gp ], [ %.sroa.0.0, %bb.hf ], [ %.sroa.0.0, %bb.hs ], [ %.sroa.0.0, %bb.ig ], [ %.sroa.0.0, %bb.ir ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.0.0, %bb.jm ], [ %.sroa.0.0, %bb.ju ], [ %.sroa.0.0, %bb.kh ], [ %.sroa.0.0, %bb.kq ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.0.0, %bb.lg ], [ %.sroa.0.0, %bb.ln ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.0.0, %bb.nf ], [ %.sroa.0.0, %bb.nz ], [ %.sroa.0.0, %bb.or ], [ %.sroa.0.0, %bb.pk ], [ %.sroa.0.0, %bb.qd ], [ %.sroa.0.0, %bb.qr ], [ %.sroa.0.0, %bb.rf ], [ %.sroa.0.0, %bb.rt ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.0.0, %bb.te ], [ %.sroa.0.0, %bb.tm ], [ %.sroa.0.0, %bb.ud ], [ %.sroa.0.0, %bb.uz ], [ %.sroa.0.0, %bb.vr ], [ %.sroa.0.0, %bb.vw ], [ %.sroa.0.0, %bb.wt ]
  %.sroa.842.sroa.4.1 = phi i32 [ %.sroa.842.sroa.4.0, %bb.ae ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.842.sroa.4.0, %bb.au ], [ %.sroa.842.sroa.4.0, %bb.bd ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.842.sroa.4.0, %bb.bp ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.842.sroa.4.0, %bb.cm ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.842.sroa.4.0, %bb.dr ], [ %.sroa.842.sroa.4.0, %bb.dy ], [ %.sroa.842.sroa.4.0, %bb.eg ], [ %.sroa.842.sroa.4.0, %bb.em ], [ %.sroa.842.sroa.4.0, %bb.et ], [ %.sroa.842.sroa.4.0.extract.trunc, %bb.fg ], [ %.sroa.842.sroa.4.0, %bb.fu ], [ %.sroa.842.sroa.4.0, %bb.gf ], [ %.sroa.842.sroa.4.0, %bb.gp ], [ %.sroa.842.sroa.4.0, %bb.hf ], [ %.sroa.842.sroa.4.0, %bb.hs ], [ %.sroa.842.sroa.4.0, %bb.ig ], [ %.sroa.842.sroa.4.0, %bb.ir ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.842.sroa.4.0, %bb.jm ], [ %.sroa.842.sroa.4.0, %bb.ju ], [ %.sroa.842.sroa.4.0, %bb.kh ], [ %.sroa.842.sroa.4.0, %bb.kq ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.842.sroa.4.0, %bb.lg ], [ %.sroa.842.sroa.4.0, %bb.ln ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.842.sroa.4.0, %bb.nf ], [ %.sroa.842.sroa.4.0, %bb.nz ], [ %.sroa.842.sroa.4.0, %bb.or ], [ %.sroa.842.sroa.4.0, %bb.pk ], [ %.sroa.842.sroa.4.0, %bb.qd ], [ %.sroa.842.sroa.4.0, %bb.qr ], [ %.sroa.842.sroa.4.0, %bb.rf ], [ %.sroa.842.sroa.4.0, %bb.rt ], [ %.sroa.842.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.842.sroa.4.0, %bb.te ], [ %.sroa.842.sroa.4.0, %bb.tm ], [ %.sroa.842.sroa.4.0, %bb.ud ], [ %.sroa.842.sroa.4.0, %bb.uz ], [ %.sroa.842.sroa.4.0, %bb.vr ], [ %.sroa.842.sroa.4.0, %bb.vw ], [ %.sroa.842.sroa.4.0, %bb.wt ]
  %.sroa.842.sroa.0.1 = phi i32 [ %.sroa.842.sroa.0.0, %bb.ae ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.842.sroa.0.0, %bb.au ], [ %.sroa.842.sroa.0.0, %bb.bd ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.842.sroa.0.0, %bb.bp ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.842.sroa.0.0, %bb.cm ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.842.sroa.0.0, %bb.dr ], [ %.sroa.842.sroa.0.0, %bb.dy ], [ %.sroa.842.sroa.0.0, %bb.eg ], [ %.sroa.842.sroa.0.0, %bb.em ], [ %.sroa.842.sroa.0.0, %bb.et ], [ %.sroa.842.sroa.0.0.extract.trunc, %bb.fg ], [ %.sroa.842.sroa.0.0, %bb.fu ], [ %.sroa.842.sroa.0.0, %bb.gf ], [ %.sroa.842.sroa.0.0, %bb.gp ], [ %.sroa.842.sroa.0.0, %bb.hf ], [ %.sroa.842.sroa.0.0, %bb.hs ], [ %.sroa.842.sroa.0.0, %bb.ig ], [ %.sroa.842.sroa.0.0, %bb.ir ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.842.sroa.0.0, %bb.jm ], [ %.sroa.842.sroa.0.0, %bb.ju ], [ %.sroa.842.sroa.0.0, %bb.kh ], [ %.sroa.842.sroa.0.0, %bb.kq ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.842.sroa.0.0, %bb.lg ], [ %.sroa.842.sroa.0.0, %bb.ln ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.842.sroa.0.0, %bb.nf ], [ %.sroa.842.sroa.0.0, %bb.nz ], [ %.sroa.842.sroa.0.0, %bb.or ], [ %.sroa.842.sroa.0.0, %bb.pk ], [ %.sroa.842.sroa.0.0, %bb.qd ], [ %.sroa.842.sroa.0.0, %bb.qr ], [ %.sroa.842.sroa.0.0, %bb.rf ], [ %.sroa.842.sroa.0.0, %bb.rt ], [ %.sroa.842.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.842.sroa.0.0, %bb.te ], [ %.sroa.842.sroa.0.0, %bb.tm ], [ %.sroa.842.sroa.0.0, %bb.ud ], [ %.sroa.842.sroa.0.0, %bb.uz ], [ %.sroa.842.sroa.0.0, %bb.vr ], [ %.sroa.842.sroa.0.0, %bb.vw ], [ %.sroa.842.sroa.0.0, %bb.wt ]
  %i.et = phi i32 [ %i.di, %bb.ae ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %i.di, %bb.au ], [ %i.di, %bb.bd ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %i.di, %bb.bp ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %i.di, %bb.cm ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %i.di, %bb.dr ], [ %i.di, %bb.dy ], [ %i.di, %bb.eg ], [ %i.di, %bb.em ], [ %i.di, %bb.et ], [ %i.di, %bb.fg ], [ %i.di, %bb.fu ], [ %i.di, %bb.gf ], [ %i.di, %bb.gp ], [ %i.di, %bb.hf ], [ %i.di, %bb.hs ], [ %i.di, %bb.ig ], [ %i.di, %bb.ir ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %i.di, %bb.jm ], [ %i.di, %bb.ju ], [ %i.di, %bb.kh ], [ %i.di, %bb.kq ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %i.di, %bb.lg ], [ %i.di, %bb.ln ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %i.di, %bb.nf ], [ %i.di, %bb.nz ], [ %i.di, %bb.or ], [ %i.di, %bb.pk ], [ %i.di, %bb.qd ], [ %i.di, %bb.qr ], [ %i.di, %bb.rf ], [ %i.di, %bb.rt ], [ %i.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %i.di, %bb.te ], [ %i.di, %bb.tm ], [ %i.di, %bb.ud ], [ %i.bgw, %bb.uz ], [ %i.di, %bb.vr ], [ %i.di, %bb.vw ], [ %i.di, %bb.wt ]
  %.sroa.0102.1 = phi i32 [ %.sroa.0102.0, %bb.ae ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.0102.0, %bb.au ], [ %.sroa.0102.0, %bb.bd ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.0102.0, %bb.bp ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.0102.0, %bb.cm ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.0102.0, %bb.dr ], [ %.sroa.0102.0, %bb.dy ], [ %.sroa.0102.0, %bb.eg ], [ %.sroa.0102.0, %bb.em ], [ %.sroa.0102.0, %bb.et ], [ %.sroa.0102.0, %bb.fg ], [ %.sroa.0102.0, %bb.fu ], [ %.sroa.0102.0, %bb.gf ], [ %.sroa.0102.0, %bb.gp ], [ %.sroa.0102.0, %bb.hf ], [ %.sroa.0102.0, %bb.hs ], [ %.sroa.0102.0, %bb.ig ], [ %.sroa.0102.0, %bb.ir ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.0102.0, %bb.jm ], [ %.sroa.0102.0, %bb.ju ], [ %.sroa.0102.0, %bb.kh ], [ %.sroa.0102.0, %bb.kq ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.0102.0, %bb.lg ], [ %.sroa.0102.0, %bb.ln ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.0102.0, %bb.nf ], [ %.sroa.0102.0, %bb.nz ], [ %.sroa.0102.0, %bb.or ], [ %.sroa.0102.0, %bb.pk ], [ %.sroa.0102.0, %bb.qd ], [ %.sroa.0102.0, %bb.qr ], [ %.sroa.0102.0, %bb.rf ], [ %.sroa.0102.0, %bb.rt ], [ %.sroa.0102.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.0102.0, %bb.te ], [ %.sroa.0102.0, %bb.tm ], [ %.sroa.0102.0, %bb.ud ], [ 1, %bb.uz ], [ %.sroa.0102.0, %bb.vr ], [ %.sroa.0102.0, %bb.vw ], [ %.sroa.0102.0, %bb.wt ]
  %.sroa.472.1 = phi i64 [ %.sroa.472.0, %bb.ae ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.472.0, %bb.au ], [ %.sroa.472.0, %bb.bd ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.472.0, %bb.bp ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.472.0, %bb.cm ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.472.0, %bb.dr ], [ %.sroa.472.0, %bb.dy ], [ %.sroa.472.0, %bb.eg ], [ %.sroa.472.0, %bb.em ], [ %.sroa.472.0, %bb.et ], [ %.sroa.472.0, %bb.fg ], [ %.sroa.472.0, %bb.fu ], [ %i.tp, %bb.gf ], [ %.sroa.472.0, %bb.gp ], [ %.sroa.472.0, %bb.hf ], [ %.sroa.472.0, %bb.hs ], [ %.sroa.472.0, %bb.ig ], [ %.sroa.472.0, %bb.ir ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.472.0, %bb.jm ], [ %.sroa.472.0, %bb.ju ], [ %.sroa.472.0, %bb.kh ], [ %.sroa.472.0, %bb.kq ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.472.0, %bb.lg ], [ %.sroa.472.0, %bb.ln ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.472.0, %bb.nf ], [ %.sroa.472.0, %bb.nz ], [ %.sroa.472.0, %bb.or ], [ %.sroa.472.0, %bb.pk ], [ %.sroa.472.0, %bb.qd ], [ %.sroa.472.0, %bb.qr ], [ %.sroa.472.0, %bb.rf ], [ %.sroa.472.0, %bb.rt ], [ %.sroa.472.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.472.0, %bb.te ], [ %.sroa.472.0, %bb.tm ], [ %.sroa.472.0, %bb.ud ], [ %.sroa.472.0, %bb.uz ], [ %.sroa.472.0, %bb.vr ], [ %.sroa.472.0, %bb.vw ], [ %.sroa.472.0, %bb.wt ]
  %.sroa.070.1 = phi i64 [ %.sroa.070.0, %bb.ae ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.070.0, %bb.au ], [ %.sroa.070.0, %bb.bd ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.070.0, %bb.bp ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.070.0, %bb.cm ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.070.0, %bb.dr ], [ %.sroa.070.0, %bb.dy ], [ %.sroa.070.0, %bb.eg ], [ %.sroa.070.0, %bb.em ], [ %.sroa.070.0, %bb.et ], [ %.sroa.070.0, %bb.fg ], [ %.sroa.070.0, %bb.fu ], [ 1, %bb.gf ], [ %.sroa.070.0, %bb.gp ], [ %.sroa.070.0, %bb.hf ], [ %.sroa.070.0, %bb.hs ], [ %.sroa.070.0, %bb.ig ], [ %.sroa.070.0, %bb.ir ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.070.0, %bb.jm ], [ %.sroa.070.0, %bb.ju ], [ %.sroa.070.0, %bb.kh ], [ %.sroa.070.0, %bb.kq ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.070.0, %bb.lg ], [ %.sroa.070.0, %bb.ln ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.070.0, %bb.nf ], [ %.sroa.070.0, %bb.nz ], [ %.sroa.070.0, %bb.or ], [ %.sroa.070.0, %bb.pk ], [ %.sroa.070.0, %bb.qd ], [ %.sroa.070.0, %bb.qr ], [ %.sroa.070.0, %bb.rf ], [ %.sroa.070.0, %bb.rt ], [ %.sroa.070.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.070.0, %bb.te ], [ %.sroa.070.0, %bb.tm ], [ %.sroa.070.0, %bb.ud ], [ %.sroa.070.0, %bb.uz ], [ %.sroa.070.0, %bb.vr ], [ %.sroa.070.0, %bb.vw ], [ %.sroa.070.0, %bb.wt ]
  %.sroa.3.sroa.0.1 = phi i64 [ %.sroa.3.sroa.0.0, %bb.ae ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.3.sroa.0.0, %bb.au ], [ %.sroa.3.sroa.0.0, %bb.bd ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.3.sroa.0.0, %bb.bp ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.0.0, %bb.cm ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.3.sroa.0.0, %bb.dr ], [ %.sroa.3.sroa.0.0, %bb.dy ], [ %.sroa.3.sroa.0.0, %bb.eg ], [ %.sroa.3.sroa.0.0, %bb.em ], [ %.sroa.3.sroa.0.0, %bb.et ], [ %.sroa.3.sroa.0.0, %bb.fg ], [ %.sroa.3.sroa.0.0, %bb.fu ], [ %.sroa.3.sroa.0.0, %bb.gf ], [ %.sroa.0375.0.copyload, %bb.gp ], [ %.sroa.3.sroa.0.0, %bb.hf ], [ %.sroa.3.sroa.0.0, %bb.hs ], [ %.sroa.3.sroa.0.0, %bb.ig ], [ %.sroa.3.sroa.0.0, %bb.ir ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.3.sroa.0.0, %bb.jm ], [ %.sroa.3.sroa.0.0, %bb.ju ], [ %.sroa.3.sroa.0.0, %bb.kh ], [ %.sroa.3.sroa.0.0, %bb.kq ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.3.sroa.0.0, %bb.lg ], [ %.sroa.3.sroa.0.0, %bb.ln ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.3.sroa.0.0, %bb.nf ], [ %.sroa.3.sroa.0.0, %bb.nz ], [ %.sroa.3.sroa.0.0, %bb.or ], [ %.sroa.3.sroa.0.0, %bb.pk ], [ %.sroa.3.sroa.0.0, %bb.qd ], [ %.sroa.3.sroa.0.0, %bb.qr ], [ %.sroa.3.sroa.0.0, %bb.rf ], [ %.sroa.3.sroa.0.0, %bb.rt ], [ %.sroa.3.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.3.sroa.0.0, %bb.te ], [ %.sroa.3.sroa.0.0, %bb.tm ], [ %.sroa.3.sroa.0.0, %bb.ud ], [ %.sroa.3.sroa.0.0, %bb.uz ], [ %.sroa.3.sroa.0.0, %bb.vr ], [ %.sroa.3.sroa.0.0, %bb.vw ], [ %.sroa.3.sroa.0.0, %bb.wt ]
  %.sroa.359.1 = phi i64 [ %.sroa.359.0, %bb.ae ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.359.0, %bb.au ], [ %.sroa.359.0, %bb.bd ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.359.0, %bb.bp ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.359.0, %bb.cm ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.359.0, %bb.dr ], [ %.sroa.359.0, %bb.dy ], [ %.sroa.359.0, %bb.eg ], [ %.sroa.359.0, %bb.em ], [ %.sroa.359.0, %bb.et ], [ %.sroa.359.0, %bb.fg ], [ %.sroa.359.0, %bb.fu ], [ %.sroa.359.0, %bb.gf ], [ %.sroa.359.0, %bb.gp ], [ %.sroa.359.0, %bb.hf ], [ %.sroa.359.0, %bb.hs ], [ %.sroa.359.0, %bb.ig ], [ %.sroa.359.0, %bb.ir ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.359.0, %bb.jm ], [ %.sroa.359.0, %bb.ju ], [ %.sroa.359.0, %bb.kh ], [ %.sroa.359.0, %bb.kq ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.359.0, %bb.lg ], [ %.sroa.359.0, %bb.ln ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %i.alo, %bb.nf ], [ %.sroa.359.0, %bb.nz ], [ %.sroa.359.0, %bb.or ], [ %.sroa.359.0, %bb.pk ], [ %.sroa.359.0, %bb.qd ], [ %.sroa.359.0, %bb.qr ], [ %.sroa.359.0, %bb.rf ], [ %.sroa.359.0, %bb.rt ], [ %.sroa.359.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.359.0, %bb.te ], [ %.sroa.359.0, %bb.tm ], [ %.sroa.359.0, %bb.ud ], [ %.sroa.359.0, %bb.uz ], [ %.sroa.359.0, %bb.vr ], [ %.sroa.359.0, %bb.vw ], [ %.sroa.359.0, %bb.wt ]
  %.sroa.058.1 = phi i64 [ %.sroa.058.0, %bb.ae ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.058.0, %bb.au ], [ %.sroa.058.0, %bb.bd ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.058.0, %bb.bp ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.058.0, %bb.cm ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.058.0, %bb.dr ], [ %.sroa.058.0, %bb.dy ], [ %.sroa.058.0, %bb.eg ], [ %.sroa.058.0, %bb.em ], [ %.sroa.058.0, %bb.et ], [ %.sroa.058.0, %bb.fg ], [ %.sroa.058.0, %bb.fu ], [ %.sroa.058.0, %bb.gf ], [ %.sroa.058.0, %bb.gp ], [ %.sroa.058.0, %bb.hf ], [ %.sroa.058.0, %bb.hs ], [ %.sroa.058.0, %bb.ig ], [ %.sroa.058.0, %bb.ir ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.058.0, %bb.jm ], [ %.sroa.058.0, %bb.ju ], [ %.sroa.058.0, %bb.kh ], [ %.sroa.058.0, %bb.kq ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.058.0, %bb.lg ], [ %.sroa.058.0, %bb.ln ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ 1, %bb.nf ], [ %.sroa.058.0, %bb.nz ], [ %.sroa.058.0, %bb.or ], [ %.sroa.058.0, %bb.pk ], [ %.sroa.058.0, %bb.qd ], [ %.sroa.058.0, %bb.qr ], [ %.sroa.058.0, %bb.rf ], [ %.sroa.058.0, %bb.rt ], [ %.sroa.058.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.058.0, %bb.te ], [ %.sroa.058.0, %bb.tm ], [ %.sroa.058.0, %bb.ud ], [ %.sroa.058.0, %bb.uz ], [ %.sroa.058.0, %bb.vr ], [ %.sroa.058.0, %bb.vw ], [ %.sroa.058.0, %bb.wt ]
  %.sroa.357.1 = phi i32 [ %.sroa.357.0, %bb.ae ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.357.0, %bb.au ], [ %.sroa.357.0, %bb.bd ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.357.0, %bb.bp ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.357.0, %bb.cm ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.357.0, %bb.dr ], [ %.sroa.357.0, %bb.dy ], [ %.sroa.357.0, %bb.eg ], [ %.sroa.357.0, %bb.em ], [ %.sroa.357.0, %bb.et ], [ %.sroa.357.0, %bb.fg ], [ %.sroa.357.0, %bb.fu ], [ %.sroa.357.0, %bb.gf ], [ %.sroa.357.0, %bb.gp ], [ %.sroa.357.0, %bb.hf ], [ %.sroa.357.0, %bb.hs ], [ %.sroa.357.0, %bb.ig ], [ %.sroa.357.0, %bb.ir ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.357.0, %bb.jm ], [ %.sroa.357.0, %bb.ju ], [ %.sroa.357.0, %bb.kh ], [ %.sroa.357.0, %bb.kq ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.357.0, %bb.lg ], [ %i.aha, %bb.ln ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.357.0, %bb.nf ], [ %.sroa.357.0, %bb.nz ], [ %.sroa.357.0, %bb.or ], [ %.sroa.357.0, %bb.pk ], [ %.sroa.357.0, %bb.qd ], [ %.sroa.357.0, %bb.qr ], [ %.sroa.357.0, %bb.rf ], [ %.sroa.357.0, %bb.rt ], [ %.sroa.357.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.357.0, %bb.te ], [ %.sroa.357.0, %bb.tm ], [ %.sroa.357.0, %bb.ud ], [ %.sroa.357.0, %bb.uz ], [ %.sroa.357.0, %bb.vr ], [ %.sroa.357.0, %bb.vw ], [ %.sroa.357.0, %bb.wt ]
  %.sroa.056.1 = phi i32 [ %.sroa.056.0, %bb.ae ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.056.0, %bb.au ], [ %.sroa.056.0, %bb.bd ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.056.0, %bb.bp ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.056.0, %bb.cm ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.056.0, %bb.dr ], [ %.sroa.056.0, %bb.dy ], [ %.sroa.056.0, %bb.eg ], [ %.sroa.056.0, %bb.em ], [ %.sroa.056.0, %bb.et ], [ %.sroa.056.0, %bb.fg ], [ %.sroa.056.0, %bb.fu ], [ %.sroa.056.0, %bb.gf ], [ %.sroa.056.0, %bb.gp ], [ %.sroa.056.0, %bb.hf ], [ %.sroa.056.0, %bb.hs ], [ %.sroa.056.0, %bb.ig ], [ %.sroa.056.0, %bb.ir ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.056.0, %bb.jm ], [ %.sroa.056.0, %bb.ju ], [ %.sroa.056.0, %bb.kh ], [ %.sroa.056.0, %bb.kq ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.056.0, %bb.lg ], [ 1, %bb.ln ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.056.0, %bb.nf ], [ %.sroa.056.0, %bb.nz ], [ %.sroa.056.0, %bb.or ], [ %.sroa.056.0, %bb.pk ], [ %.sroa.056.0, %bb.qd ], [ %.sroa.056.0, %bb.qr ], [ %.sroa.056.0, %bb.rf ], [ %.sroa.056.0, %bb.rt ], [ %.sroa.056.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.056.0, %bb.te ], [ %.sroa.056.0, %bb.tm ], [ %.sroa.056.0, %bb.ud ], [ %.sroa.056.0, %bb.uz ], [ %.sroa.056.0, %bb.vr ], [ %.sroa.056.0, %bb.vw ], [ %.sroa.056.0, %bb.wt ]
  %.sroa.054.1 = phi i8 [ %.sroa.054.0, %bb.ae ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.054.0, %bb.au ], [ %.sroa.054.0, %bb.bd ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.054.0, %bb.bp ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.054.0, %bb.cm ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.054.0, %bb.dr ], [ %.sroa.054.0, %bb.dy ], [ %.sroa.054.0, %bb.eg ], [ %.sroa.054.0, %bb.em ], [ %.sroa.054.0, %bb.et ], [ %.sroa.054.0, %bb.fg ], [ %.sroa.054.0, %bb.fu ], [ %.sroa.054.0, %bb.gf ], [ %.sroa.054.0, %bb.gp ], [ %.sroa.054.0, %bb.hf ], [ %.sroa.054.0, %bb.hs ], [ %i.yy, %bb.ig ], [ %.sroa.054.0, %bb.ir ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.054.0, %bb.jm ], [ %.sroa.054.0, %bb.ju ], [ %.sroa.054.0, %bb.kh ], [ %.sroa.054.0, %bb.kq ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.054.0, %bb.lg ], [ %.sroa.054.0, %bb.ln ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.054.0, %bb.nf ], [ %.sroa.054.0, %bb.nz ], [ %.sroa.054.0, %bb.or ], [ %.sroa.054.0, %bb.pk ], [ %.sroa.054.0, %bb.qd ], [ %.sroa.054.0, %bb.qr ], [ %.sroa.054.0, %bb.rf ], [ %.sroa.054.0, %bb.rt ], [ %.sroa.054.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.054.0, %bb.te ], [ %.sroa.054.0, %bb.tm ], [ %.sroa.054.0, %bb.ud ], [ %.sroa.054.0, %bb.uz ], [ %.sroa.054.0, %bb.vr ], [ %.sroa.054.0, %bb.vw ], [ %.sroa.054.0, %bb.wt ]
  %.sroa.052.1 = phi i1 [ %.sroa.052.0, %bb.ae ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.052.0, %bb.au ], [ %.sroa.052.0, %bb.bd ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.052.0, %bb.bp ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.052.0, %bb.cm ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.052.0, %bb.dr ], [ %.sroa.052.0, %bb.dy ], [ %.sroa.052.0, %bb.eg ], [ %.sroa.052.0, %bb.em ], [ %.sroa.052.0, %bb.et ], [ %.sroa.052.0, %bb.fg ], [ %.sroa.052.0, %bb.fu ], [ %.sroa.052.0, %bb.gf ], [ %.sroa.052.0, %bb.gp ], [ %.sroa.052.0, %bb.hf ], [ true, %bb.hs ], [ %.sroa.052.0, %bb.ig ], [ %.sroa.052.0, %bb.ir ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.052.0, %bb.jm ], [ %.sroa.052.0, %bb.ju ], [ %.sroa.052.0, %bb.kh ], [ %.sroa.052.0, %bb.kq ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.052.0, %bb.lg ], [ %.sroa.052.0, %bb.ln ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.052.0, %bb.nf ], [ %.sroa.052.0, %bb.nz ], [ %.sroa.052.0, %bb.or ], [ %.sroa.052.0, %bb.pk ], [ %.sroa.052.0, %bb.qd ], [ %.sroa.052.0, %bb.qr ], [ %.sroa.052.0, %bb.rf ], [ %.sroa.052.0, %bb.rt ], [ %.sroa.052.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.052.0, %bb.te ], [ %.sroa.052.0, %bb.tm ], [ %.sroa.052.0, %bb.ud ], [ %.sroa.052.0, %bb.uz ], [ %.sroa.052.0, %bb.vr ], [ %.sroa.052.0, %bb.vw ], [ %.sroa.052.0, %bb.wt ]
  %.sroa.051.1 = phi i1 [ %.sroa.051.0, %bb.ae ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.051.0, %bb.au ], [ %.sroa.051.0, %bb.bd ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.051.0, %bb.bp ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.051.0, %bb.cm ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.051.0, %bb.dr ], [ %.sroa.051.0, %bb.dy ], [ %.sroa.051.0, %bb.eg ], [ %.sroa.051.0, %bb.em ], [ %.sroa.051.0, %bb.et ], [ %.sroa.051.0, %bb.fg ], [ %.sroa.051.0, %bb.fu ], [ %.sroa.051.0, %bb.gf ], [ true, %bb.gp ], [ %.sroa.051.0, %bb.hf ], [ %.sroa.051.0, %bb.hs ], [ %.sroa.051.0, %bb.ig ], [ %.sroa.051.0, %bb.ir ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.051.0, %bb.jm ], [ %.sroa.051.0, %bb.ju ], [ %.sroa.051.0, %bb.kh ], [ %.sroa.051.0, %bb.kq ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.051.0, %bb.lg ], [ %.sroa.051.0, %bb.ln ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.051.0, %bb.nf ], [ %.sroa.051.0, %bb.nz ], [ %.sroa.051.0, %bb.or ], [ %.sroa.051.0, %bb.pk ], [ %.sroa.051.0, %bb.qd ], [ %.sroa.051.0, %bb.qr ], [ %.sroa.051.0, %bb.rf ], [ %.sroa.051.0, %bb.rt ], [ %.sroa.051.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.051.0, %bb.te ], [ %.sroa.051.0, %bb.tm ], [ %.sroa.051.0, %bb.ud ], [ %.sroa.051.0, %bb.uz ], [ %.sroa.051.0, %bb.vr ], [ %.sroa.051.0, %bb.vw ], [ %.sroa.051.0, %bb.wt ]
  %.sroa.3.sroa.2.1 = phi i64 [ %.sroa.3.sroa.2.0, %bb.ae ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.3.sroa.2.0, %bb.au ], [ %.sroa.3.sroa.2.0, %bb.bd ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.3.sroa.2.0, %bb.bp ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.2.0, %bb.cm ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.3.sroa.2.0, %bb.dr ], [ %.sroa.3.sroa.2.0, %bb.dy ], [ %.sroa.3.sroa.2.0, %bb.eg ], [ %.sroa.3.sroa.2.0, %bb.em ], [ %.sroa.3.sroa.2.0, %bb.et ], [ %.sroa.3.sroa.2.0, %bb.fg ], [ %.sroa.3.sroa.2.0, %bb.fu ], [ %.sroa.3.sroa.2.0, %bb.gf ], [ %.sroa.4376.0.copyload, %bb.gp ], [ %.sroa.3.sroa.2.0, %bb.hf ], [ %.sroa.3.sroa.2.0, %bb.hs ], [ %.sroa.3.sroa.2.0, %bb.ig ], [ %.sroa.3.sroa.2.0, %bb.ir ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.3.sroa.2.0, %bb.jm ], [ %.sroa.3.sroa.2.0, %bb.ju ], [ %.sroa.3.sroa.2.0, %bb.kh ], [ %.sroa.3.sroa.2.0, %bb.kq ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.3.sroa.2.0, %bb.lg ], [ %.sroa.3.sroa.2.0, %bb.ln ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.3.sroa.2.0, %bb.nf ], [ %.sroa.3.sroa.2.0, %bb.nz ], [ %.sroa.3.sroa.2.0, %bb.or ], [ %.sroa.3.sroa.2.0, %bb.pk ], [ %.sroa.3.sroa.2.0, %bb.qd ], [ %.sroa.3.sroa.2.0, %bb.qr ], [ %.sroa.3.sroa.2.0, %bb.rf ], [ %.sroa.3.sroa.2.0, %bb.rt ], [ %.sroa.3.sroa.2.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.3.sroa.2.0, %bb.te ], [ %.sroa.3.sroa.2.0, %bb.tm ], [ %.sroa.3.sroa.2.0, %bb.ud ], [ %.sroa.3.sroa.2.0, %bb.uz ], [ %.sroa.3.sroa.2.0, %bb.vr ], [ %.sroa.3.sroa.2.0, %bb.vw ], [ %.sroa.3.sroa.2.0, %bb.wt ]
  %.sroa.3.sroa.3.1 = phi i32 [ %.sroa.3.sroa.3.0, %bb.ae ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.3.sroa.3.0, %bb.au ], [ %.sroa.3.sroa.3.0, %bb.bd ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.3.sroa.3.0, %bb.bp ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.3.0, %bb.cm ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.3.sroa.3.0, %bb.dr ], [ %.sroa.3.sroa.3.0, %bb.dy ], [ %.sroa.3.sroa.3.0, %bb.eg ], [ %.sroa.3.sroa.3.0, %bb.em ], [ %.sroa.3.sroa.3.0, %bb.et ], [ %.sroa.3.sroa.3.0, %bb.fg ], [ %.sroa.3.sroa.3.0, %bb.fu ], [ %.sroa.3.sroa.3.0, %bb.gf ], [ %.sroa.5377.0.copyload, %bb.gp ], [ %.sroa.3.sroa.3.0, %bb.hf ], [ %.sroa.3.sroa.3.0, %bb.hs ], [ %.sroa.3.sroa.3.0, %bb.ig ], [ %.sroa.3.sroa.3.0, %bb.ir ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.3.sroa.3.0, %bb.jm ], [ %.sroa.3.sroa.3.0, %bb.ju ], [ %.sroa.3.sroa.3.0, %bb.kh ], [ %.sroa.3.sroa.3.0, %bb.kq ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.3.sroa.3.0, %bb.lg ], [ %.sroa.3.sroa.3.0, %bb.ln ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.3.sroa.3.0, %bb.nf ], [ %.sroa.3.sroa.3.0, %bb.nz ], [ %.sroa.3.sroa.3.0, %bb.or ], [ %.sroa.3.sroa.3.0, %bb.pk ], [ %.sroa.3.sroa.3.0, %bb.qd ], [ %.sroa.3.sroa.3.0, %bb.qr ], [ %.sroa.3.sroa.3.0, %bb.rf ], [ %.sroa.3.sroa.3.0, %bb.rt ], [ %.sroa.3.sroa.3.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.3.sroa.3.0, %bb.te ], [ %.sroa.3.sroa.3.0, %bb.tm ], [ %.sroa.3.sroa.3.0, %bb.ud ], [ %.sroa.3.sroa.3.0, %bb.uz ], [ %.sroa.3.sroa.3.0, %bb.vr ], [ %.sroa.3.sroa.3.0, %bb.vw ], [ %.sroa.3.sroa.3.0, %bb.wt ]
  %.sroa.036.1 = phi i32 [ %.sroa.036.0, %bb.ae ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.036.0, %bb.au ], [ %.sroa.036.0, %bb.bd ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.036.0, %bb.bp ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.036.0, %bb.cm ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.036.0, %bb.dr ], [ %.sroa.036.0, %bb.dy ], [ %.sroa.036.0, %bb.eg ], [ %.sroa.036.0, %bb.em ], [ %.sroa.036.0, %bb.et ], [ %.sroa.049.0.copyload, %bb.fg ], [ %.sroa.036.0, %bb.fu ], [ %.sroa.036.0, %bb.gf ], [ %.sroa.036.0, %bb.gp ], [ %.sroa.036.0, %bb.hf ], [ %.sroa.036.0, %bb.hs ], [ %.sroa.036.0, %bb.ig ], [ %.sroa.036.0, %bb.ir ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.036.0, %bb.jm ], [ %.sroa.036.0, %bb.ju ], [ %.sroa.036.0, %bb.kh ], [ %.sroa.036.0, %bb.kq ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.036.0, %bb.lg ], [ %.sroa.036.0, %bb.ln ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.036.0, %bb.nf ], [ %.sroa.036.0, %bb.nz ], [ %.sroa.036.0, %bb.or ], [ %.sroa.036.0, %bb.pk ], [ %.sroa.036.0, %bb.qd ], [ %.sroa.036.0, %bb.qr ], [ %.sroa.036.0, %bb.rf ], [ %.sroa.036.0, %bb.rt ], [ %.sroa.036.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.036.0, %bb.te ], [ %.sroa.036.0, %bb.tm ], [ %.sroa.036.0, %bb.ud ], [ %.sroa.036.0, %bb.uz ], [ %.sroa.036.0, %bb.vr ], [ %.sroa.036.0, %bb.vw ], [ %.sroa.036.0, %bb.wt ]
  %.sroa.3.sroa.4.1 = phi i32 [ %.sroa.3.sroa.4.0, %bb.ae ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.3.sroa.4.0, %bb.au ], [ %.sroa.3.sroa.4.0, %bb.bd ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.3.sroa.4.0, %bb.bp ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.3.sroa.4.0, %bb.cm ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.3.sroa.4.0, %bb.dr ], [ %.sroa.3.sroa.4.0, %bb.dy ], [ %.sroa.3.sroa.4.0, %bb.eg ], [ %.sroa.3.sroa.4.0, %bb.em ], [ %.sroa.3.sroa.4.0, %bb.et ], [ %.sroa.3.sroa.4.0, %bb.fg ], [ %.sroa.3.sroa.4.0, %bb.fu ], [ %.sroa.3.sroa.4.0, %bb.gf ], [ %.sroa.6378.0.copyload, %bb.gp ], [ %.sroa.3.sroa.4.0, %bb.hf ], [ %.sroa.3.sroa.4.0, %bb.hs ], [ %.sroa.3.sroa.4.0, %bb.ig ], [ %.sroa.3.sroa.4.0, %bb.ir ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.3.sroa.4.0, %bb.jm ], [ %.sroa.3.sroa.4.0, %bb.ju ], [ %.sroa.3.sroa.4.0, %bb.kh ], [ %.sroa.3.sroa.4.0, %bb.kq ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.3.sroa.4.0, %bb.lg ], [ %.sroa.3.sroa.4.0, %bb.ln ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.3.sroa.4.0, %bb.nf ], [ %.sroa.3.sroa.4.0, %bb.nz ], [ %.sroa.3.sroa.4.0, %bb.or ], [ %.sroa.3.sroa.4.0, %bb.pk ], [ %.sroa.3.sroa.4.0, %bb.qd ], [ %.sroa.3.sroa.4.0, %bb.qr ], [ %.sroa.3.sroa.4.0, %bb.rf ], [ %.sroa.3.sroa.4.0, %bb.rt ], [ %.sroa.3.sroa.4.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.3.sroa.4.0, %bb.te ], [ %.sroa.3.sroa.4.0, %bb.tm ], [ %.sroa.3.sroa.4.0, %bb.ud ], [ %.sroa.3.sroa.4.0, %bb.uz ], [ %.sroa.3.sroa.4.0, %bb.vr ], [ %.sroa.3.sroa.4.0, %bb.vw ], [ %.sroa.3.sroa.4.0, %bb.wt ]
  %.sroa.420.1 = phi i8 [ %.sroa.420.0, %bb.ae ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %.sroa.420.0, %bb.au ], [ %.sroa.434.0.copyload, %bb.bd ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %.sroa.420.0, %bb.bp ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.420.0, %bb.cm ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %.sroa.420.0, %bb.dr ], [ %.sroa.420.0, %bb.dy ], [ %.sroa.420.0, %bb.eg ], [ %.sroa.420.0, %bb.em ], [ %.sroa.420.0, %bb.et ], [ %.sroa.420.0, %bb.fg ], [ %.sroa.420.0, %bb.fu ], [ %.sroa.420.0, %bb.gf ], [ %.sroa.420.0, %bb.gp ], [ %.sroa.420.0, %bb.hf ], [ %.sroa.420.0, %bb.hs ], [ %.sroa.420.0, %bb.ig ], [ %.sroa.420.0, %bb.ir ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %.sroa.420.0, %bb.jm ], [ %.sroa.420.0, %bb.ju ], [ %.sroa.420.0, %bb.kh ], [ %.sroa.420.0, %bb.kq ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %.sroa.420.0, %bb.lg ], [ %.sroa.420.0, %bb.ln ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %.sroa.420.0, %bb.nf ], [ %.sroa.420.0, %bb.nz ], [ %.sroa.420.0, %bb.or ], [ %.sroa.420.0, %bb.pk ], [ %.sroa.420.0, %bb.qd ], [ %.sroa.420.0, %bb.qr ], [ %.sroa.420.0, %bb.rf ], [ %.sroa.420.0, %bb.rt ], [ %.sroa.420.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %.sroa.420.0, %bb.te ], [ %.sroa.420.0, %bb.tm ], [ %.sroa.420.0, %bb.ud ], [ %.sroa.420.0, %bb.uz ], [ %.sroa.420.0, %bb.vr ], [ %.sroa.420.0, %bb.vw ], [ %.sroa.420.0, %bb.wt ]
  %i.eu = phi i8 [ %i.es, %bb.ae ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit496 ], [ %i.dj, %bb.au ], [ %i.dj, %bb.bd ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit498 ], [ %i.dj, %bb.bp ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image.exit ], [ %i.dj, %bb.cm ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit501 ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit503 ], [ %i.dj, %bb.dr ], [ %i.dj, %bb.dy ], [ %i.dj, %bb.eg ], [ %i.dj, %bb.em ], [ %i.dj, %bb.et ], [ %i.dj, %bb.fg ], [ %i.dj, %bb.fu ], [ %i.dj, %bb.gf ], [ %i.dj, %bb.gp ], [ %i.dj, %bb.hf ], [ %i.dj, %bb.hs ], [ %i.dj, %bb.ig ], [ %i.dj, %bb.ir ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit505 ], [ %i.dj, %bb.jm ], [ %i.dj, %bb.ju ], [ %i.dj, %bb.kh ], [ %i.dj, %bb.kq ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit507 ], [ %i.dj, %bb.lg ], [ %i.dj, %bb.ln ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit509 ], [ %i.dj, %bb.nf ], [ %i.dj, %bb.nz ], [ %i.dj, %bb.or ], [ %i.dj, %bb.pk ], [ %i.dj, %bb.qd ], [ %i.dj, %bb.qr ], [ %i.dj, %bb.rf ], [ %i.dj, %bb.rt ], [ %i.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit517 ], [ %i.dj, %bb.te ], [ %i.dj, %bb.tm ], [ %i.dj, %bb.ud ], [ %i.dj, %bb.uz ], [ %i.dj, %bb.vr ], [ %i.dj, %bb.vw ], [ %i.dj, %bb.wt ]
  %i.ev = load i64, ptr %i.ak, align 8, !range !6, !noundef !5
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %i.ev, i64 1)
  switch i64 %i.ew, label %bb.wu [
    i64 0, label %.thread175
    i64 8, label %.thread175
    i64 11, label %.thread175
    i64 14, label %.thread175
  ]

bb.ag:                                            ; preds = %bb.ad
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5306.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5303.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.er, ptr %i.ex, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.es, ptr %.sroa.4305.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB6_6Header4readINtNtBa_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
  store i32 1, ptr %i.am, align 8
  store float %i.blu, ptr %i.an, align 4
  br label %bb.af

bb.wu:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.ak)
          to label %.thread175 unwind label %.thread148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread175:                                       ; preds = %bb.wu, %bb.af, %bb.af, %bb.af, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.xc

bb.wv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit520, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522

bb.ww:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.o, ptr noundef nonnull align 8 dereferenceable(352) %i.v, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  invoke void @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBP_14AttributeValueNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(352) %i.o)
          to label %bb.xa unwind label %.thread163

bb.wx:                                            ; preds = %bb.t, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.r, ptr noundef nonnull align 8 dereferenceable(352) %i.v, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  invoke void @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBP_14AttributeValueNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(352) %i.r)
          to label %bb.wy unwind label %.thread163

bb.wy:                                            ; preds = %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.blv = load i64, ptr %i.q, align 8, !range !123, !alias.scope !124, !noundef !5
  %i.blw = icmp eq i64 %i.blv, -1
  br i1 %i.blw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit unwind label %.thread163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.wy, %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.wv

bb.xa:                                            ; preds = %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.blx = load i64, ptr %i.n, align 8, !range !123, !alias.scope !125, !noundef !5
  %i.bly = icmp eq i64 %i.blx, -1
  br i1 %i.bly, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit520, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit520 unwind label %.thread163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image.exit520: ; preds = %bb.xa, %bb.xb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.wv

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522: ; preds = %bb.xc, %bb.wv
  %.sroa.019.sroa.5.3 = phi i8 [ %.sroa.019.sroa.5.0, %bb.wv ], [ %.sroa.019.sroa.5.4, %bb.xc ]
  %.sroa.019.sroa.4.3 = phi i64 [ %.sroa.019.sroa.4.0, %bb.wv ], [ %.sroa.019.sroa.4.4, %bb.xc ]
  %.sroa.019.sroa.0.3 = phi i64 [ %.sroa.019.sroa.0.0, %bb.wv ], [ %.sroa.019.sroa.0.4, %bb.xc ]
  %.sroa.0.3 = phi i8 [ %.sroa.0.0, %bb.wv ], [ %.sroa.0.4, %bb.xc ]
  %.sroa.842.sroa.4.3 = phi i32 [ %.sroa.842.sroa.4.0, %bb.wv ], [ %.sroa.842.sroa.4.4, %bb.xc ]
  %.sroa.842.sroa.0.3 = phi i32 [ %.sroa.842.sroa.0.0, %bb.wv ], [ %.sroa.842.sroa.0.4, %bb.xc ]
  %i.blz = phi i32 [ %i.di, %bb.wv ], [ %i.bmb, %bb.xc ]
  %.sroa.0102.3 = phi i32 [ %.sroa.0102.0, %bb.wv ], [ %.sroa.0102.4, %bb.xc ]
  %.sroa.472.3 = phi i64 [ %.sroa.472.0, %bb.wv ], [ %.sroa.472.4, %bb.xc ]
  %.sroa.070.3 = phi i64 [ %.sroa.070.0, %bb.wv ], [ %.sroa.070.4, %bb.xc ]
  %.sroa.3.sroa.0.3 = phi i64 [ %.sroa.3.sroa.0.0, %bb.wv ], [ %.sroa.3.sroa.0.4, %bb.xc ]
  %.sroa.359.3 = phi i64 [ %.sroa.359.0, %bb.wv ], [ %.sroa.359.4, %bb.xc ]
  %.sroa.058.3 = phi i64 [ %.sroa.058.0, %bb.wv ], [ %.sroa.058.4, %bb.xc ]
  %.sroa.357.3 = phi i32 [ %.sroa.357.0, %bb.wv ], [ %.sroa.357.4, %bb.xc ]
  %.sroa.056.3 = phi i32 [ %.sroa.056.0, %bb.wv ], [ %.sroa.056.4, %bb.xc ]
  %.sroa.054.3 = phi i8 [ %.sroa.054.0, %bb.wv ], [ %.sroa.054.4, %bb.xc ]
  %.sroa.052.3 = phi i1 [ %.sroa.052.0, %bb.wv ], [ %.sroa.052.4, %bb.xc ]
  %.sroa.051.3 = phi i1 [ %.sroa.051.0, %bb.wv ], [ %.sroa.051.4, %bb.xc ]
  %.sroa.3.sroa.2.3 = phi i64 [ %.sroa.3.sroa.2.0, %bb.wv ], [ %.sroa.3.sroa.2.4, %bb.xc ]
  %.sroa.3.sroa.3.3 = phi i32 [ %.sroa.3.sroa.3.0, %bb.wv ], [ %.sroa.3.sroa.3.4, %bb.xc ]
  %.sroa.036.3 = phi i32 [ %.sroa.036.0, %bb.wv ], [ %.sroa.036.4, %bb.xc ]
  %.sroa.3.sroa.4.3 = phi i32 [ %.sroa.3.sroa.4.0, %bb.wv ], [ %.sroa.3.sroa.4.4, %bb.xc ]
  %.sroa.420.3 = phi i8 [ %.sroa.420.0, %bb.wv ], [ %.sroa.420.4, %bb.xc ]
  %i.bma = phi i8 [ %i.dj, %bb.wv ], [ %i.bmc, %bb.xc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.g

bb.xc:                                            ; preds = %.thread175, %bb.xi
  %.sroa.019.sroa.5.4 = phi i8 [ %.sroa.019.sroa.5.0, %bb.xi ], [ %.sroa.019.sroa.5.1, %.thread175 ]
  %.sroa.019.sroa.4.4 = phi i64 [ %.sroa.019.sroa.4.0, %bb.xi ], [ %.sroa.019.sroa.4.1, %.thread175 ]
  %.sroa.019.sroa.0.4 = phi i64 [ %.sroa.019.sroa.0.0, %bb.xi ], [ %.sroa.019.sroa.0.1, %.thread175 ]
  %.sroa.0.4 = phi i8 [ %.sroa.0.0, %bb.xi ], [ %.sroa.0.1, %.thread175 ]
  %.sroa.842.sroa.4.4 = phi i32 [ %.sroa.842.sroa.4.0, %bb.xi ], [ %.sroa.842.sroa.4.1, %.thread175 ]
  %.sroa.842.sroa.0.4 = phi i32 [ %.sroa.842.sroa.0.0, %bb.xi ], [ %.sroa.842.sroa.0.1, %.thread175 ]
  %i.bmb = phi i32 [ %i.di, %bb.xi ], [ %i.et, %.thread175 ]
  %.sroa.0102.4 = phi i32 [ %.sroa.0102.0, %bb.xi ], [ %.sroa.0102.1, %.thread175 ]
  %.sroa.472.4 = phi i64 [ %.sroa.472.0, %bb.xi ], [ %.sroa.472.1, %.thread175 ]
  %.sroa.070.4 = phi i64 [ %.sroa.070.0, %bb.xi ], [ %.sroa.070.1, %.thread175 ]
  %.sroa.3.sroa.0.4 = phi i64 [ %.sroa.3.sroa.0.0, %bb.xi ], [ %.sroa.3.sroa.0.1, %.thread175 ]
  %.sroa.359.4 = phi i64 [ %.sroa.359.0, %bb.xi ], [ %.sroa.359.1, %.thread175 ]
  %.sroa.058.4 = phi i64 [ %.sroa.058.0, %bb.xi ], [ %.sroa.058.1, %.thread175 ]
  %.sroa.357.4 = phi i32 [ %.sroa.357.0, %bb.xi ], [ %.sroa.357.1, %.thread175 ]
  %.sroa.056.4 = phi i32 [ %.sroa.056.0, %bb.xi ], [ %.sroa.056.1, %.thread175 ]
  %.sroa.054.4 = phi i8 [ %.sroa.054.0, %bb.xi ], [ %.sroa.054.1, %.thread175 ]
  %.sroa.052.4 = phi i1 [ %.sroa.052.0, %bb.xi ], [ %.sroa.052.1, %.thread175 ]
  %.sroa.051.4 = phi i1 [ %.sroa.051.0, %bb.xi ], [ %.sroa.051.1, %.thread175 ]
  %.sroa.3.sroa.2.4 = phi i64 [ %.sroa.3.sroa.2.0, %bb.xi ], [ %.sroa.3.sroa.2.1, %.thread175 ]
  %.sroa.3.sroa.3.4 = phi i32 [ %.sroa.3.sroa.3.0, %bb.xi ], [ %.sroa.3.sroa.3.1, %.thread175 ]
  %.sroa.036.4 = phi i32 [ %.sroa.036.0, %bb.xi ], [ %.sroa.036.1, %.thread175 ]
  %.sroa.3.sroa.4.4 = phi i32 [ %.sroa.3.sroa.4.0, %bb.xi ], [ %.sroa.3.sroa.4.1, %.thread175 ]
  %.sroa.420.4 = phi i8 [ %.sroa.420.0, %bb.xi ], [ %.sroa.420.1, %.thread175 ]
  %i.bmc = phi i8 [ %i.dj, %bb.xi ], [ %i.eu, %.thread175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit522 unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread152:                                       ; preds = %bb.so, %bb.mm, %bb.kz, %bb.kp, %bb.jc, %bb.iq, %bb.dg, %bb.cx, %bb.ce, %bb.bk, %bb.aq, %bb.al, %bb.ac
  %.pn158 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp162, %bb.ac ], [ %i.bae, %bb.so ], [ %i.ajm, %bb.mm ], [ %i.afo, %bb.kz ], [ %i.aet, %bb.kp ], [ %i.aay, %bb.jc ], [ %i.zx, %bb.iq ], [ %i.ls, %bb.dg ], [ %i.kx, %bb.cx ], [ %i.jb, %bb.ce ], [ %i.hi, %bb.bk ], [ %i.fp, %bb.aq ], [ %i.fg, %bb.al ] ; 5 uses
  %i.bmd = load i64, ptr %i.ak, align 8, !range !6, !noundef !5
  %i.bme = call i64 @llvm.usub.sat.i64(i64 %i.bmd, i64 1)
  switch i64 %i.bme, label %bb.xd [
    i64 0, label %.thread140
    i64 8, label %.thread140
    i64 11, label %.thread140
    i64 14, label %.thread140
  ]

bb.xd:                                            ; preds = %.thread152
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.ak) #24
          to label %.thread140 unwind label %bb.xe

bb.xe:                                            ; preds = %bb.aap, %.noexc605, %bb.aan, %bb.aam, %bb.aaj, %bb.aai, %bb.aah, %bb.aag, %bb.aaf, %bb.aae, %bb.aad, %.thread126, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit584, %bb.aab, %bb.aaa, %bb.zz, %bb.zy, %bb.zx, %bb.zw, %bb.zv, %bb.yu, %bb.ym, %bb.yk, %.thread217, %bb.aak, %.noexc601, %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit580, %bb.yj, %bb.xk, %.thread209, %bb.xf, %bb.xd
  %i.bmf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread140:                                       ; preds = %.thread148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread163, %.thread152, %.thread152, %.thread152, %.thread152, %bb.xd, %bb.xf
  %.sroa.0242.4 = phi i1 [ true, %bb.xd ], [ true, %bb.xf ], [ false, %.thread163 ], [ true, %.thread152 ], [ true, %.thread152 ], [ true, %.thread152 ], [ true, %.thread152 ], [ true, %.thread148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn449 = phi { ptr, i32 } [ %.pn158, %bb.xd ], [ %lpad.thr_comm.split-lp147, %bb.xf ], [ %lpad.thr_comm161, %.thread163 ], [ %.pn158, %.thread152 ], [ %.pn158, %.thread152 ], [ %.pn158, %.thread152 ], [ %.pn158, %.thread152 ], [ %lpad.loopexit.split-lp, %.thread148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bmg = load i64, ptr %i.x, align 8, !range !123, !noundef !5
  %.not451 = icmp eq i64 %i.bmg, -1
  br i1 %.not451, label %bb.xk, label %bb.xj

.thread199:                                       ; preds = %bb.xg
  %i.bmh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmi = load i64, ptr %i.x, align 8, !range !123, !noundef !5
  %.not451202 = icmp eq i64 %i.bmi, -1
  br i1 %.not451202, label %.thread217, label %.thread209

bb.xf:                                            ; preds = %bb.q
  %lpad.thr_comm.split-lp147 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.v) #24
          to label %.thread140 unwind label %bb.xe

bb.xg:                                            ; preds = %bb.p
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %bb.xi unwind label %.thread199

bb.xh:                                            ; preds = %bb.p
  %i.bmj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bmj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2440.0..sroa_idx, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.nh

bb.xi:                                            ; preds = %bb.xg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.xc

bb.xj:                                            ; preds = %.thread140, %bb.xk
  br i1 %.sroa.0242.4, label %.thread217, label %.thread126

.thread209:                                       ; preds = %.thread199
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.x) #24
          to label %.thread217 unwind label %bb.xe

bb.xk:                                            ; preds = %.thread140
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2440.0..sroa_idx) #24
          to label %bb.xj unwind label %bb.xe

.thread217:                                       ; preds = %.thread209, %.thread199, %bb.xj
  %.pn449206221 = phi { ptr, i32 } [ %.pn449, %bb.xj ], [ %i.bmh, %.thread199 ], [ %i.bmh, %.thread209 ]
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.thread126 unwind label %bb.xe

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ys

bb.xl:                                            ; preds = %bb.l
  %.lcssa1971.mux = select i1 %or.cond, i32 %i.di, i32 %.sroa.842.sroa.4.0
  %.sroa.842.sroa.4.0.insert.ext = zext i32 %.lcssa1971.mux to i64
  %.sroa.842.sroa.4.0.insert.shift = shl nuw i64 %.sroa.842.sroa.4.0.insert.ext, 32
  %i.bmk = zext i32 %.sroa.842.sroa.0.0 to i64
  %.sroa.842.sroa.0.0.insert.ext = select i1 %or.cond, i64 1, i64 %i.bmk
  %.sroa.842.sroa.0.0.insert.insert = or disjoint i64 %.sroa.842.sroa.4.0.insert.shift, %.sroa.842.sroa.0.0.insert.ext ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6139)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6143)
  br i1 %.sroa.052.0, label %bb.xn, label %bb.xo

bb.xm:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCsdsTQD3x2eOp_3exr4meta17missing_attribute(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 11)
          to label %_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.xm
  %.sroa.0128.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7130.sroa.0.0.copyload = load i32, ptr %.sroa.7130.0..sroa_idx, align 8
  %.sroa.7130.sroa.8.0..sroa.7130.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.7130.sroa.8.0.copyload = load i64, ptr %.sroa.7130.sroa.8.0..sroa.7130.0..sroa_idx.sroa_idx, align 4
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6352.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9132.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bml = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0128.0.copyload, ptr %i.bml, align 8
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7130.sroa.0.0.copyload, ptr %.sroa.4350.0..sroa_idx, align 8
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.7130.sroa.8.0.copyload, ptr %.sroa.5351.0..sroa_idx, align 4
  store i64 2, ptr %0, align 8
  br label %bb.ys

bb.xn:                                            ; preds = %bb.xl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6143)
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmm, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.353, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6139)
  br i1 %.sroa.051.0, label %bb.xp, label %bb.xq

bb.xo:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCsdsTQD3x2eOp_3exr4meta17missing_attribute(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 14)
          to label %_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs_0Csa5QsYiPB8Gl_5image.exit unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs_0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.xo
  %.sroa.0141.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6143, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6143.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6139, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6143, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6143)
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4358.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6139, i64 24, i1 false)
  %i.bmn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0141.0.copyload, ptr %i.bmn, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6139)
  br label %bb.ys

bb.xp:                                            ; preds = %bb.xn
  %i.bmo = sext i32 %.sroa.3.sroa.3.0 to i64
  %i.bmp = sext i32 %.sroa.3.sroa.4.0 to i64
  %i.bmq = add i64 %.sroa.3.sroa.0.0, %i.bmo
  %i.bmr = add i64 %.sroa.3.sroa.2.0, %i.bmp
  %i.bms = icmp sgt i64 %i.bmq, 1073741822
  %i.bmt = icmp sgt i64 %i.bmr, 1073741822
  %or.cond3.i = or i1 %i.bms, %i.bmt
  %i.bmu = icmp slt i32 %.sroa.3.sroa.3.0, -1073741822
  %or.cond4.i = or i1 %i.bmu, %or.cond3.i
  %i.bmv = icmp slt i32 %.sroa.3.sroa.4.0, -1073741822
  %or.cond5.i = or i1 %i.bmv, %or.cond4.i
  br i1 %or.cond5.i, label %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit, label %bb.xr

bb.xq:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsdsTQD3x2eOp_3exr4meta17missing_attribute(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 11)
          to label %_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs0_0Csa5QsYiPB8Gl_5image.exit unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs0_0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.xq
  %.sroa.6153.sroa.7.0..sroa.6153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6153.sroa.7.0.copyload = load i64, ptr %.sroa.6153.sroa.7.0..sroa.6153.0..sroa_idx.sroa_idx, align 16
  %.sroa.6153.sroa.8.0..sroa.6153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bmw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bmx = load <2 x i32>, ptr %.sroa.6153.sroa.8.0..sroa.6153.0..sroa_idx.sroa_idx, align 8
  %i.bmy = load <2 x i64>, ptr %i.e, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store <2 x i64> %i.bmy, ptr %i.bmw, align 8
  store i64 %.sroa.6153.sroa.7.0.copyload, ptr %.sroa.5391.0..sroa_idx, align 8
  store <2 x i32> %i.bmx, ptr %.sroa.6392.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ys

_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit: ; preds = %bb.xp
  %i.bmz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bmz, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @138, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 37, ptr %.sroa.657.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ys

bb.xr:                                            ; preds = %bb.xp
  %i.bna = getelementptr inbounds nuw i8, ptr %i.ac, i64 648
  store i32 %.sroa.3.sroa.3.0, ptr %i.bna, align 8
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.ac, i64 652
  store i32 %.sroa.3.sroa.4.0, ptr %i.bnb, align 4
  %.not456 = icmp eq i8 %.sroa.420.0, 2           ; 3 uses
  br i1 %.not456, label %_RNvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_15TileDescription8validate.exit, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.bnc = icmp eq i64 %.sroa.019.sroa.0.0, 0
  br i1 %i.bnc, label %bb.xu, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.bnd = icmp eq i64 %.sroa.019.sroa.4.0, 0
  %i.bne = icmp sgt i64 %.sroa.019.sroa.0.0, 1073741822
  %or.cond.i530 = or i1 %i.bnd, %i.bne
  %i.bnf = icmp sgt i64 %.sroa.019.sroa.4.0, 1073741822
  %or.cond1.i = or i1 %i.bnf, %or.cond.i530
  br i1 %or.cond1.i, label %bb.xu, label %_RNvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_15TileDescription8validate.exit

_RNvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_15TileDescription8validate.exit: ; preds = %bb.xt, %bb.xr
  %.not458 = icmp eq i8 %i.dj, -1                 ; 2 uses
  br i1 %.not458, label %bb.xw, label %bb.xv

bb.xu:                                            ; preds = %bb.xt, %bb.xs
  %i.bng = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bng, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @139, ptr %.sroa.576.0..sroa_idx, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 9, ptr %.sroa.677.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ys

bb.xv:                                            ; preds = %_RNvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_15TileDescription8validate.exit
  switch i8 %i.dj, label %bb.ya [
    i8 1, label %bb.yb
    i8 3, label %bb.yb
  ]

bb.xw:                                            ; preds = %_RNvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_15TileDescription8validate.exit
  %i.bnh = trunc nuw i8 %.0.val to i1
  br i1 %i.bnh, label %bb.xx, label %bb.ya

bb.xx:                                            ; preds = %bb.xw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6187.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6191.sroa.8)
  br i1 %.not456, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6191.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5181, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.829, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6187.sroa.8)
  br label %bb.ya

bb.xz:                                            ; preds = %bb.xx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtCsdsTQD3x2eOp_3exr4meta17missing_attribute(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5)
          to label %_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs1_0Csa5QsYiPB8Gl_5image.exit unwind label %.thread136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB8_6Header4readINtNtBc_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEs1_0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.xz
  %.sroa.6191.sroa.0.sroa.7.0..sroa.6191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6191.sroa.0.sroa.7.0.copyload = load i64, ptr %.sroa.6191.sroa.0.sroa.7.0..sroa.6191.0..sroa_idx.sroa_idx, align 16
  %.sroa.6191.sroa.0.sroa.8.0..sroa.6191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6191.sroa.0.sroa.8.0.copyload = load i8, ptr %.sroa.6191.sroa.0.sroa.8.0..sroa.6191.0..sroa_idx.sroa_idx, align 8
  %.sroa.6191.sroa.7.0..sroa.6191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.6191.sroa.7.0.copyload = load i8, ptr %.sroa.6191.sroa.7.0..sroa.6191.0..sroa_idx.sroa_idx, align 1
  %.sroa.6191.sroa.8.0..sroa.6191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6191.sroa.8, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6191.sroa.8.0..sroa.6191.0..sroa_idx.sroa_idx, i64 6, i1 false)
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bni = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bnj = load <2 x i64>, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6187.sroa.8, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6191.sroa.8, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6191.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6418.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6187.sroa.8, i64 6, i1 false)
  store <2 x i64> %i.bnj, ptr %i.bni, align 8
  %.sroa.4416.sroa.4.0..sroa.4416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6191.sroa.0.sroa.7.0.copyload, ptr %.sroa.4416.sroa.4.0..sroa.4416.0..sroa_idx.sroa_idx, align 8
  %.sroa.4416.sroa.5.0..sroa.4416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.6191.sroa.0.sroa.8.0.copyload, ptr %.sroa.4416.sroa.5.0..sroa.4416.0..sroa_idx.sroa_idx, align 8
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.6191.sroa.7.0.copyload, ptr %.sroa.5417.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6187.sroa.8)
  br label %bb.ys

bb.ya:                                            ; preds = %bb.xv, %bb.xw, %bb.yc, %bb.xy
  %.sroa.0173.sroa.0.0 = phi i64 [ %.sroa.019.sroa.0.0, %bb.xy ], [ undef, %bb.xw ], [ undef, %bb.xv ], [ %.sroa.019.sroa.0.0, %bb.yc ] ; 2 uses
  %.sroa.0173.sroa.4.0 = phi i64 [ %.sroa.019.sroa.4.0, %bb.xy ], [ undef, %bb.xw ], [ undef, %bb.xv ], [ %.sroa.019.sroa.4.0, %bb.yc ] ; 2 uses
  %.sroa.0173.sroa.5.0 = phi i8 [ %.sroa.019.sroa.5.0, %bb.xy ], [ undef, %bb.xw ], [ undef, %bb.xv ], [ %.sroa.019.sroa.5.0, %bb.yc ] ; 2 uses
  %.sroa.4174.0 = phi i8 [ %.sroa.420.0, %bb.xy ], [ 2, %bb.xw ], [ 2, %bb.xv ], [ %.sroa.420.0, %bb.yc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0173.sroa.0.0, ptr %i.k, align 8
  %.sroa.0173.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.0173.sroa.4.0, ptr %.sroa.0173.sroa.4.0..sroa_idx, align 8
  %.sroa.0173.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %.sroa.0173.sroa.5.0, ptr %.sroa.0173.sroa.5.0..sroa_idx, align 8
  %.sroa.4174.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 %.sroa.4174.0, ptr %.sroa.4174.0..sroa_idx175, align 1
  %.sroa.5181.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.k, i64 18
end_hunk_1
