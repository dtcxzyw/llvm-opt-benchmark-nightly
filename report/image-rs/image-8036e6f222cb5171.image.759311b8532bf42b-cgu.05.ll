Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB5_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE10read_imageCsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1478
  %i.ky = zext i32 %.val3.i.i.i to i64            ; 4 uses
  %.sroa.14.0.extract.trunc412.i = trunc i40 %i.kx to i8
  %i.kz = icmp eq i8 %.sroa.14.0.extract.trunc412.i, 6
  %i.la = icmp ugt i32 %.val3.i.i.i, 31
  %or.cond395.i = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %or.cond395.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i8 4, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i32 1179471425, ptr %.sroa.422.0..sroa_idx.i, align 1, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false), !noalias !1481
  %i.lb = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noalias nofree noundef nonnull %i.d, i64 noundef 3)
          to label %.noexc275 unwind label %bb.bu ; 2 uses

.noexc275:                                        ; preds = %bb.cj
  %.not.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.noexc275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  store i8 0, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.6225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.lb, ptr %.sroa.6225.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cl:                                            ; preds = %.noexc275
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ld = load i16, ptr %i.lc, align 1, !noalias !1481
  %i.le = zext i16 %i.ld to i32
  %i.lf = load i8, ptr %i.d, align 1, !noalias !1481, !noundef !4
  %i.lg = zext i8 %i.lf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  %i.lh = shl nuw nsw i32 %i.le, 9
  %i.li = shl nuw nsw i32 %i.lg, 1
  %i.lj = or disjoint i32 %i.li, %i.lh            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1466
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp8extended12read_3_bytesINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef align 8 dereferenceable(24) %i.kq)
          to label %.noexc276 unwind label %bb.bu

.noexc276:                                        ; preds = %bb.cl
  %i.lk = load i8, ptr %i.ag, align 8, !range !304, !noalias !1466, !noundef !4 ; 2 uses
  %.not370.i = icmp eq i8 %i.lk, -1
  br i1 %.not370.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.noexc276
  %.sroa.4231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.sroa.4235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4235.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4231.0..sroa_idx.i, i64 3, i1 false), !noalias !1470
  %.sroa.5232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.5232.0.copyload.i = load i32, ptr %.sroa.5232.0..sroa_idx.i, align 4, !noalias !1466
  %.sroa.6233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.6237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6237.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6233.0..sroa_idx.i, i64 24, i1 false), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1466
  store i8 %i.lk, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.5236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.sroa.5232.0.copyload.i, ptr %.sroa.5236.0..sroa_idx.i, align 4, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cn:                                            ; preds = %.noexc276
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !noalias !1466, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1466
  %i.ln = shl i32 %i.lm, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1466
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp8extended12read_3_bytesINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef align 8 dereferenceable(24) %i.kq)
          to label %.noexc277 unwind label %bb.bu

.noexc277:                                        ; preds = %bb.cn
  %i.lo = load i8, ptr %i.af, align 8, !range !304, !noalias !1466, !noundef !4 ; 2 uses
  %.not371.i = icmp eq i8 %i.lo, -1
  br i1 %.not371.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.noexc277
  %.sroa.4243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.sroa.4247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4247.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4243.0..sroa_idx.i, i64 3, i1 false), !noalias !1470
  %.sroa.5244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.5244.0.copyload.i = load i32, ptr %.sroa.5244.0..sroa_idx.i, align 4, !noalias !1466
  %.sroa.6245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.6249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6245.0..sroa_idx.i, i64 24, i1 false), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1466
  store i8 %i.lo, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.5248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.sroa.5244.0.copyload.i, ptr %.sroa.5248.0..sroa_idx.i, align 4, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cp:                                            ; preds = %.noexc277
  %i.lp = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !noalias !1466, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1466
  %i.lr = add i32 %i.lq, 1                        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1466
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp8extended12read_3_bytesINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(24) %i.kq)
          to label %.noexc278 unwind label %bb.bu

.noexc278:                                        ; preds = %bb.cp
  %i.ls = load i8, ptr %i.ae, align 8, !range !304, !noalias !1466, !noundef !4 ; 2 uses
  %.not372.i = icmp eq i8 %i.ls, -1
  br i1 %.not372.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.noexc278
  %.sroa.4255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.4259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4259.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4255.0..sroa_idx.i, i64 3, i1 false), !noalias !1470
  %.sroa.5256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.5256.0.copyload.i = load i32, ptr %.sroa.5256.0..sroa_idx.i, align 4, !noalias !1466
  %.sroa.6257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6261.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6257.0..sroa_idx.i, i64 24, i1 false), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1466
  store i8 %i.ls, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.5260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.sroa.5256.0.copyload.i, ptr %.sroa.5260.0..sroa_idx.i, align 4, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cr:                                            ; preds = %.noexc278
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !noalias !1466, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1466
  %i.lv = add i32 %i.lu, 1                        ; 10 uses
  %i.lw = icmp ugt i32 %i.lr, 16384
  %i.lx = icmp ugt i32 %i.lv, 16384
  %or.cond.i = or i1 %i.lw, %i.lx
  br i1 %or.cond.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i8 9, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.ct:                                            ; preds = %bb.cr
  %i.ly = add nuw nsw i32 %i.lr, %i.lj
  %i.lz = load i32, ptr %i.bf, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.ma = icmp ugt i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.fz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mb = add i32 %i.lv, %i.ln
  %i.mc = load i32, ptr %i.bi, align 4, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.md = icmp ugt i32 %i.mb, %i.mc
  br i1 %i.md, label %bb.fz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1466
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp8extended12read_3_bytesINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(24) %i.kq)
          to label %.noexc279 unwind label %bb.bu

.noexc279:                                        ; preds = %bb.cv
  %i.me = load i8, ptr %i.ad, align 8, !range !304, !noalias !1466, !noundef !4 ; 2 uses
  %.not373.i = icmp eq i8 %i.me, -1
  br i1 %.not373.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.noexc279
  %.sroa.4267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4271.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4267.0..sroa_idx.i, i64 3, i1 false), !noalias !1470
  %.sroa.5268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.5268.0.copyload.i = load i32, ptr %.sroa.5268.0..sroa_idx.i, align 4, !noalias !1466
  %.sroa.6269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.6273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6273.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6269.0..sroa_idx.i, i64 24, i1 false), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1466
  store i8 %i.me, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.sroa.5268.0.copyload.i, ptr %.sroa.5272.0..sroa_idx.i, align 4, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cx:                                            ; preds = %.noexc279
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !noalias !1466, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1485
  store i8 0, ptr %i.c, align 1, !noalias !1485
  %i.mh = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noalias nofree noundef nonnull %i.c, i64 noundef 1)
          to label %.noexc280 unwind label %bb.bu ; 2 uses

.noexc280:                                        ; preds = %bb.cx
  %.not.i399.i = icmp eq ptr %i.mh, null
  br i1 %.not.i399.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.noexc280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1485
  store i8 0, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.4447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.mh, ptr %.sroa.4447.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.cz:                                            ; preds = %.noexc280
  %i.mi = load i8, ptr %i.c, align 1, !noalias !1485, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1485
  %i.mj = and i8 %i.mi, 2
  %i.mk = icmp eq i8 %i.mj, 0
  %i.ml = load i8, ptr %.sroa.7327.0..sroa_idx, align 4, !range !9, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.mm = trunc nuw i8 %i.ml to i1
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.096.0.copyload.i = load i8, ptr %i.mn, align 4, !alias.scope !1462, !noalias !1464
  %.sroa.398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 69 ; 2 uses
  %.sroa.398.0.copyload.i = load i32, ptr %.sroa.398.0..sroa_idx.i, align 1, !alias.scope !1462, !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1466
  invoke fastcc void @_RINvNtCsksn9slvsHfS_10image_webp7decoder17read_chunk_headerQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(24) %i.kq)
          to label %.noexc281 unwind label %bb.bu

.noexc281:                                        ; preds = %bb.cz
  %i.mo = load i8, ptr %i.ac, align 8, !range !304, !noalias !1466, !noundef !4 ; 2 uses
  %.not374.i = icmp eq i8 %i.mo, -1
  br i1 %.not374.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.noexc281
  %.sroa.4285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.sroa.4291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4291.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4285.0..sroa_idx.i, i64 7, i1 false), !noalias !1470
  %.sroa.5286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5286.0.copyload.i = load i64, ptr %.sroa.5286.0..sroa_idx.i, align 8, !noalias !1466
  %.sroa.6287.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.6287.sroa.0.0.copyload.i = load i8, ptr %.sroa.6287.0..sroa_idx.i, align 8, !noalias !1466
  %.sroa.6287.sroa.4.0..sroa.6287.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %.sroa.6287.sroa.4.0.copyload.i = load i32, ptr %.sroa.6287.sroa.4.0..sroa.6287.0..sroa_idx.sroa_idx.i, align 1, !noalias !1466
  %.sroa.7288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 21
  %.sroa.7294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7294.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7288.0..sroa_idx.i, i64 3, i1 false), !noalias !1470
  %.sroa.8289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.8289.0.copyload.i = load i64, ptr %.sroa.8289.0..sroa_idx.i, align 8, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1466
  store i8 %i.mo, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.5286.0.copyload.i, ptr %.sroa.5292.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.6293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i8 %.sroa.6287.sroa.0.0.copyload.i, ptr %.sroa.6293.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.6293.sroa.4.0..sroa.6293.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 17
  store i32 %.sroa.6287.sroa.4.0.copyload.i, ptr %.sroa.6293.sroa.4.0..sroa.6293.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !1459, !noalias !1470
  %.sroa.8295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.8289.0.copyload.i, ptr %.sroa.8295.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.db:                                            ; preds = %.noexc281
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0274.0.copyload.i = load i64, ptr %i.mp, align 8, !noalias !1466 ; 7 uses
  %.sroa.4275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4275.sroa.0.0.copyload.i = load i8, ptr %.sroa.4275.0..sroa_idx.i, align 8, !noalias !1466 ; 3 uses
  %.sroa.4275.sroa.4.0..sroa.4275.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %.sroa.4275.sroa.4.0.copyload.i = load i32, ptr %.sroa.4275.sroa.4.0..sroa.4275.0..sroa_idx.sroa_idx.i, align 1, !noalias !1466 ; 3 uses
  %.sroa.6277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.6277.0.copyload.i = load i64, ptr %.sroa.6277.0..sroa_idx.i, align 8, !noalias !1466 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1466
  %i.mq = add i64 %.sroa.6277.0.copyload.i, 24
  %i.mr = icmp ugt i64 %i.mq, %i.ky
  br i1 %i.mr, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  switch i8 %.sroa.4275.sroa.0.0.copyload.i, label %bb.de [
    i8 2, label %bb.df
    i8 3, label %bb.dg
    i8 7, label %bb.dh
  ]

bb.dd:                                            ; preds = %bb.db
  %.sroa.0358.0.insert.ext.i = zext i8 %.sroa.4275.sroa.0.0.copyload.i to i40
  %.sroa.0358.1.insert.ext.i = zext i32 %.sroa.4275.sroa.4.0.copyload.i to i40
  %.sroa.0358.1.insert.shift.i = shl nuw i40 %.sroa.0358.1.insert.ext.i, 8
  %.sroa.0358.1.insert.insert.i = or disjoint i40 %.sroa.0358.1.insert.shift.i, %.sroa.0358.0.insert.ext.i
  %i.ms = call fastcc noundef i32 @_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc(i40 %.sroa.0358.1.insert.insert.i)
  store i8 4, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.4121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i32 %i.ms, ptr %.sroa.4121.0..sroa_idx.i, align 1, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.de:                                            ; preds = %bb.dc
  %.sroa.0355.0.insert.ext.i = zext i8 %.sroa.4275.sroa.0.0.copyload.i to i40
  %.sroa.0355.1.insert.ext.i = zext i32 %.sroa.4275.sroa.4.0.copyload.i to i40
  %.sroa.0355.1.insert.shift.i = shl nuw i40 %.sroa.0355.1.insert.ext.i, 8
  %.sroa.0355.1.insert.insert.i = or disjoint i40 %.sroa.0355.1.insert.shift.i, %.sroa.0355.0.insert.ext.i
  %i.mt = call fastcc noundef i32 @_RNvMNtCsksn9slvsHfS_10image_webp7decoderNtB2_13WebPRiffChunk9to_fourcc(i40 %.sroa.0355.1.insert.insert.i)
  store i8 4, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i32 %i.mt, ptr %.sroa.4189.0..sroa_idx.i, align 1, !alias.scope !1459, !noalias !1470
  br label %bb.ga

bb.df:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1466
  store ptr %i.kq, ptr %i.aa, align 8, !noalias !1466
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.0274.0.copyload.i, ptr %i.mu, align 8, !noalias !1466
  %i.mv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.0274.0.copyload.i, ptr %i.mv, align 8, !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6126.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1466
  invoke void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc282 unwind label %bb.bu

.noexc282:                                        ; preds = %bb.df
  %i.mw = load i64, ptr %i.y, align 8, !range !213, !noalias !1466, !noundef !4 ; 2 uses
  %i.mx = icmp eq i64 %i.mw, -1
  %i.my = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6126.i, ptr noundef nonnull align 8 dereferenceable(32) %i.my, i64 32, i1 false), !noalias !1466
  br i1 %i.mx, label %bb.di, label %bb.dj

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1466
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store ptr %i.kq, ptr %i.mz, align 8, !alias.scope !1492, !noalias !1466
  %.sroa.5424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store i64 %.sroa.0274.0.copyload.i, ptr %.sroa.5424.0..sroa_idx.i, align 8, !alias.scope !1492, !noalias !1466
  %.sroa.6425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  store i64 %.sroa.0274.0.copyload.i, ptr %.sroa.6425.0..sroa_idx.i, align 8, !alias.scope !1492, !noalias !1466
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  %i.na = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i8 -1, ptr %i.na, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.510.0..sroa_idx.i401.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i8 -1, ptr %.sroa.510.0..sroa_idx.i401.i, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i8 -1, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store i8 -1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  store i64 0, ptr %i.w, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1495
  %i.nb = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  store i16 0, ptr %i.nb, align 8, !alias.scope !1494, !noalias !1495
  %i.nc = getelementptr inbounds nuw i8, ptr %i.w, i64 194
  store i16 0, ptr %i.nc, align 2, !alias.scope !1494, !noalias !1495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1466
  %narrow379.i = shl nuw nsw i32 %i.lr, 2
  %i.nd = mul nuw nsw i32 %narrow379.i, %i.lv
  %i.ne = zext nneg i32 %i.nd to i64
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.ne)
          to label %bb.dv unwind label %bb.du

bb.dh:                                            ; preds = %bb.dc
  %i.nf = add nsw i64 %.sroa.6277.0.copyload.i, 32
  %i.ng = icmp samesign ugt i64 %i.nf, %i.ky
  br i1 %i.ng, label %bb.ec, label %bb.eb

bb.di:                                            ; preds = %.noexc282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6126.i, i64 32, i1 false), !noalias !1470
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126.i)
  br label %.noexc284

bb.dj:                                            ; preds = %.noexc282
  %.sroa.5298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5132.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5298.0..sroa_idx.i, i64 48, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1466
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4131.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6126.i, i64 32, i1 false), !noalias !1466
  store i64 %i.mw, ptr %i.z, align 8, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126.i)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ni = load i16, ptr %i.nh, align 8, !noalias !1466, !noundef !4
  %i.nj = zext i16 %i.ni to i32
  %i.nk = icmp ne i32 %i.lr, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.z, i64 74
  %i.nm = load i16, ptr %i.nl, align 2, !noalias !1466
  %i.nn = zext i16 %i.nm to i32
  %i.no = icmp ne i32 %i.lv, %i.nn
  %or.cond7.i = select i1 %i.nk, i1 true, i1 %i.no
  br i1 %or.cond7.i, label %bb.ds, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1466
  %narrow383.i = mul nuw nsw i32 %i.lr, 3
  %narrow384.i = mul nuw nsw i32 %narrow383.i, %i.lv
  %i.np = zext nneg i32 %narrow384.i to i64
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, i64 noundef %i.np)
          to label %bb.dn unwind label %bb.dm

bb.dl:                                            ; preds = %bb.do, %bb.dm
  %.pn385.i = phi { ptr, i32 } [ %i.ny, %bb.do ], [ %i.nq, %bb.dm ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.z) #24
          to label %.thread388 unwind label %bb.dr, !noalias !1464

bb.dm:                                            ; preds = %bb.dk
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dn:                                            ; preds = %bb.dk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !1466, !noundef !4
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.nw = load i8, ptr %i.nv, align 8, !range !9, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.nx = trunc nuw i8 %i.nw to i1
  invoke void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame8fill_rgb(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.z, ptr noalias nofree noundef nonnull %i.ns, i64 noundef %i.nu, i1 noundef zeroext %i.nx)
          to label %bb.dp unwind label %bb.do, !noalias !1464

bb.do:                                            ; preds = %bb.dn
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #24
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB5_11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE10read_imageCsa5QsYiPB8Gl_5image:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5183.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5323.0..sroa_idx.i, i64 48, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1466
  %.sroa.4182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4182.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6177.i, i64 32, i1 false), !noalias !1466
  store i64 %i.pf, ptr %i.p, align 8, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6177.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1466
  %narrow.i = shl nuw nsw i32 %i.lr, 2
  %i.pi = mul nuw nsw i32 %narrow.i, %i.lv
  %i.pj = zext nneg i32 %i.pi to i64
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.pj)
          to label %bb.et unwind label %bb.es

bb.er:                                            ; preds = %bb.eu, %bb.es
  %.pn.i = phi { ptr, i32 } [ %lpad.phi477.i, %bb.eu ], [ %i.pk, %bb.es ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p) #24
          to label %bb.ef unwind label %bb.dr, !noalias !1464

bb.es:                                            ; preds = %bb.eq
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.et:                                            ; preds = %bb.eq
  %i.pl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !noalias !1466, !nonnull !4, !noundef !4 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.po = load i64, ptr %i.pn, align 8, !noalias !1466, !noundef !4 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.pq = load i8, ptr %i.pp, align 8, !range !9, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.pr = trunc nuw i8 %i.pq to i1
  invoke void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame9fill_rgba(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.p, ptr noalias nofree noundef nonnull %i.pm, i64 noundef %i.po, i1 noundef zeroext %i.pr)
          to label %bb.ev unwind label %.loopexit.split-lp474.i, !noalias !1464

.loopexit473.i:                                   ; preds = %bb.ft
  %lpad.loopexit475.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp474.i:                          ; preds = %.invoke.i, %bb.et
  %lpad.loopexit.split-lp476.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp474.i, %.loopexit473.i
  %lpad.phi477.i = phi { ptr, i32 } [ %lpad.loopexit475.i, %.loopexit473.i ], [ %lpad.loopexit.split-lp476.i, %.loopexit.split-lp474.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %bb.er unwind label %bb.dr, !noalias !1464

bb.ev:                                            ; preds = %bb.et
  %i.ps = getelementptr inbounds nuw i8, ptr %i.p, i64 74
  %i.pt = load i16, ptr %i.ps, align 2, !noalias !1466, !noundef !4 ; 2 uses
  %.not.i269 = icmp eq i16 %i.pt, 0
  br i1 %.not.i269, label %._crit_edge.i, label %.lr.ph487.i

.lr.ph487.i:                                      ; preds = %bb.ev
  %i.pu = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %i.pw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.py = load i16, ptr %i.pu, align 8, !noalias !1466, !noundef !4 ; 2 uses
  %.not488.i.a = icmp eq i16 %i.py, 0
  br i1 %.not488.i.a, label %._crit_edge.i, label %.lr.ph487.split.preheader.i

.lr.ph487.split.preheader.i:                      ; preds = %.lr.ph487.i
  %wide.trip.count506.i = zext i16 %i.pt to i64
  br label %.lr.ph487.split.i

.loopexit472.i:                                   ; preds = %bb.fw, %.lr.ph487.split.i
  %exitcond507.not.i = icmp eq i64 %indvars.iv.next504.i, %wide.trip.count506.i
  br i1 %exitcond507.not.i, label %._crit_edge.i, label %.lr.ph487.splitthread-pre-split.i, !llvm.loop !1496

._crit_edge.i:                                    ; preds = %.loopexit472.i, %.lr.ph487.i, %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1466
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p)
          to label %bb.ew unwind label %bb.eg, !noalias !1464

.lr.ph487.splitthread-pre-split.i:                ; preds = %.loopexit472.i
  %.pr534.i = load i16, ptr %i.pu, align 8, !noalias !1466
  br label %.lr.ph487.split.i

.lr.ph487.split.i:                                ; preds = %.lr.ph487.splitthread-pre-split.i, %.lr.ph487.split.preheader.i
  %i.pz = phi i16 [ %.pr534.i, %.lr.ph487.splitthread-pre-split.i ], [ %i.py, %.lr.ph487.split.preheader.i ] ; 2 uses
  %indvars.iv503.i = phi i64 [ %indvars.iv.next504.i, %.lr.ph487.splitthread-pre-split.i ], [ 0, %.lr.ph487.split.preheader.i ] ; 3 uses
  %indvars.iv.next504.i = add nuw nsw i64 %indvars.iv503.i, 1 ; 2 uses
  %.not489.i = icmp eq i16 %i.pz, 0
  br i1 %.not489.i, label %.loopexit472.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph487.split.i
  %wide.trip.count.i = zext i16 %i.pz to i64
  br label %bb.ft

bb.ew:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1466
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp8extended10AlphaChunkECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %.noexc288 unwind label %bb.bu

.noexc288:                                        ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1466
  br label %bb.dq

bb.ex:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pr.i = load i64, ptr %1, align 8, !alias.scope !1462, !noalias !1464
  %.not388.i = icmp eq i64 %.pr.i, -1
  br i1 %.not388.i, label %.invoke544.i, label %.thread.i, !prof !1497

bb.ey:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1466
  %i.qa = load i32, ptr %i.bf, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qb = load i32, ptr %i.bi, align 4, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qc = shl i32 %i.qa, 2
  %i.qd = mul i32 %i.qc, %i.qb
  %i.qe = zext i32 %i.qd to i64
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.qe)
          to label %bb.fa unwind label %.loopexit.split-lp.i

bb.ez:                                            ; preds = %bb.fd, %bb.fb, %.loopexit.split-lp.i, %.loopexit.i
  %.pn392.i = phi { ptr, i32 } [ %i.qh, %bb.fb ], [ %i.qr, %bb.fd ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #24
          to label %.thread388 unwind label %bb.dr, !noalias !1459

.loopexit.i:                                      ; preds = %bb.fq, %bb.fk
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp.i:                             ; preds = %bb.ey, %bb.fs, %bb.fp, %bb.fi, %.invoke544.i, %.thread.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fa:                                            ; preds = %bb.ey
  %i.qf = load i8, ptr %i.mn, align 4, !range !9, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.fc, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc.i, %bb.fc, %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1466
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1)
          to label %bb.ex unwind label %bb.fd, !noalias !1464

bb.fb:                                            ; preds = %.lr.ph.i.i
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %bb.ez unwind label %bb.dr, !noalias !1464

bb.fc:                                            ; preds = %bb.fa
  %i.qi = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !1466, !noundef !4 ; 2 uses
  %.not.i6.i.i = icmp ult i64 %i.qj, 4
  br i1 %.not.i6.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.fc
  %i.qk = and i64 %i.qj, -4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !noalias !1466, !nonnull !4, !noundef !4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.lr.ph.i.preheader.i
  %i.qn = phi ptr [ %i.qq, %.noexc.i ], [ %i.qm, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.qo = phi i64 [ %i.qp, %.noexc.i ], [ %i.qk, %.lr.ph.i.preheader.i ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.qn, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %.sroa.398.0..sroa_idx.i, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %.noexc.i unwind label %bb.fb, !noalias !1464

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.qp = add i64 %i.qo, -4                       ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %.not.i.i402.i = icmp eq i64 %i.qp, 0
  br i1 %.not.i.i402.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i.i

bb.fd:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBW_8for_each4callQShNCNvMs1_NtCsksn9slvsHfS_10image_webp7decoderINtB2g_11WebPDecoderINtNtNtBa_2io6cursor6CursorRB26_EE10read_frame0E0ECsa5QsYiPB8Gl_5image.exit.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1464
  br label %bb.ez

.thread.i:                                        ; preds = %bb.ex, %bb.dq
  %i.qs = load ptr, ptr %.sroa.4323.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464, !nonnull !4, !noundef !4
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qv = load i32, ptr %i.bf, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qw = load i32, ptr %i.bi, align 4, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !noalias !1466, !noundef !4
  %i.rb = load i32, ptr %.sroa.6326.0..sroa_idx, align 4, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.ri = zext i8 %.sroa.096.0.copyload.i to i40
  %i.rj = zext i32 %.sroa.398.0.copyload.i to i40
  %i.rk = shl nuw i40 %i.rj, 8
  %4 = or disjoint i40 %i.rk, %i.ri
  %.sroa.0344.1.insert.insert.i = select i1 %i.mm, i40 %4, i40 0
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp8extended15composite_frame(ptr noalias nofree noundef nonnull %i.qs, i64 noundef %i.qu, i32 noundef %i.qv, i32 noundef %i.qw, i40 %.sroa.0344.1.insert.insert.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qy, i64 noundef %i.ra, i32 noundef %i.lj, i32 noundef %i.ln, i32 noundef %i.lr, i32 noundef %i.lv, i1 noundef zeroext %.sroa.0328.0.i, i1 noundef zeroext %i.mk, i32 noundef %i.rb, i32 noundef %i.rd, i32 noundef %i.rf, i32 noundef %i.rh)
          to label %bb.ff unwind label %.loopexit.split-lp.i, !noalias !1464

.invoke544.i:                                     ; preds = %bb.fh, %bb.fg, %bb.ex
  %i.rl = phi ptr [ @102, %bb.fh ], [ @101, %bb.ex ], [ @105, %bb.fg ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rl) #26
          to label %.cont545.i unwind label %.loopexit.split-lp.i, !noalias !1464

.cont545.i:                                       ; preds = %.invoke544.i
  unreachable

bb.fe:                                            ; preds = %bb.fp
  unreachable

bb.ff:                                            ; preds = %.thread.i
  store i32 %i.lr, ptr %.sroa.6326.0..sroa_idx, align 4, !alias.scope !1462, !noalias !1464
  store i32 %i.lv, ptr %i.rc, align 8, !alias.scope !1462, !noalias !1464
  store i32 %i.lj, ptr %i.re, align 4, !alias.scope !1462, !noalias !1464
  store i32 %i.ln, ptr %i.rg, align 8, !alias.scope !1462, !noalias !1464
  %i.rm = and i8 %i.mi, 1
  store i8 %i.rm, ptr %.sroa.7327.0..sroa_idx, align 4, !alias.scope !1462, !noalias !1464
  %i.rn = add nuw nsw i64 %i.ky, 8
  %i.ro = load i64, ptr %.sroa.4324.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.rp = add i64 %i.rn, %i.ro
  store i64 %i.rp, ptr %.sroa.4324.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464
  %i.rq = load i32, ptr %.sroa.5325.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %.sroa.5325.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464
  %.val396.i = load i8, ptr %i.bc, align 1, !range !9, !alias.scope !1462, !noalias !1464, !noundef !4
  %i.rs = trunc nuw i8 %.val396.i to i1
  %i.rt = load i64, ptr %1, align 8, !range !213, !alias.scope !1462, !noalias !1464, !noundef !4
  %.not391.i = icmp eq i64 %i.rt, -1              ; 2 uses
  br i1 %i.rs, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  br i1 %.not391.i, label %.invoke544.i, label %bb.fs, !prof !6

bb.fh:                                            ; preds = %bb.ff
  br i1 %.not391.i, label %.invoke544.i, label %bb.fi, !prof !6

bb.fi:                                            ; preds = %bb.fh
  %i.ru = urem i64 %3, 3                          ; 2 uses
  %i.rv = sub nuw nsw i64 %3, %i.ru               ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 %i.rv
  %i.rx = load ptr, ptr %.sroa.4323.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464, !nonnull !4, !noundef !4 ; 2 uses
  %i.ry = load i64, ptr %i.qt, align 8, !alias.scope !1462, !noalias !1464, !noundef !4 ; 2 uses
  %i.rz = and i64 %i.ry, 3
  %i.sa = and i64 %i.ry, -4                       ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1498
  store ptr %i.rw, ptr %i.b, align 8, !noalias !1503
  %.sroa.4430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ru, ptr %.sroa.4430.0..sroa_idx.i, align 8, !noalias !1503
  %.sroa.5431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %.sroa.5431.0..sroa_idx.i, align 8, !noalias !1503
  %.sroa.6432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.rv, ptr %.sroa.6432.0..sroa_idx.i, align 8, !noalias !1503
  %.sroa.7433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 3, ptr %.sroa.7433.0..sroa_idx.i, align 8, !noalias !1503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1498
  store ptr %i.rx, ptr %i.a, align 8, !alias.scope !1504, !noalias !1508
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.sa, ptr %.sroa.4435.0..sroa_idx.i, align 8, !alias.scope !1504, !noalias !1508
  %.sroa.5436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.sb, ptr %.sroa.5436.0..sroa_idx.i, align 8, !alias.scope !1504, !noalias !1508
  %.sroa.6437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.rz, ptr %.sroa.6437.0..sroa_idx.i, align 8, !alias.scope !1504, !noalias !1508
  %.sroa.7438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %.sroa.7438.0..sroa_idx.i, align 8, !alias.scope !1504, !noalias !1508
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.fj unwind label %.loopexit.split-lp.i, !noalias !1459

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.i, i64 96, i1 false), !noalias !1466
  %i.sc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fr, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1466
  invoke fastcc void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(96) %i.h)
          to label %bb.fl unwind label %.loopexit.i, !noalias !1459

bb.fl:                                            ; preds = %bb.fk
  %i.sf = load ptr, ptr %i.g, align 8, !noalias !1466, !noundef !4 ; 2 uses
  %.not390.i = icmp eq ptr %i.sf, null
  br i1 %.not390.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.sg = load i64, ptr %i.sc, align 8, !noalias !1466, !noundef !4 ; 2 uses
  %i.sh = icmp ugt i64 %i.sg, 2
  br i1 %i.sh, label %bb.fq, label %bb.fp, !prof !382

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1466
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fs, %bb.fn
  %i.si = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.mg, ptr %i.si, align 4, !alias.scope !1459, !noalias !1470
  store i8 -1, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab)
          to label %.noexc289 unwind label %bb.bu

.noexc289:                                        ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1466
  br label %bb.ga

bb.fp:                                            ; preds = %bb.fm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.sg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #26
          to label %bb.fe unwind label %.loopexit.split-lp.i, !noalias !1459

bb.fq:                                            ; preds = %bb.fm
  %i.sj = load ptr, ptr %i.sd, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.sk = load i64, ptr %i.se, align 8, !noalias !1466, !noundef !4
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.sf, i64 noundef %i.sk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sj, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %bb.fr unwind label %.loopexit.i, !noalias !1459

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1466
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fg
  %i.sl = load ptr, ptr %.sroa.4323.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1464, !nonnull !4, !noundef !4
  %i.sm = load i64, ptr %i.qt, align 8, !alias.scope !1462, !noalias !1464, !noundef !4
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sl, i64 noundef %i.sm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.fo unwind label %.loopexit.split-lp.i, !noalias !1459

bb.ft:                                            ; preds = %bb.fw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.fw ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.sn = load i16, ptr %i.pu, align 8, !noalias !1466, !noundef !4
  %i.so = zext i16 %i.sn to i64
  %i.sp = load i8, ptr %i.pv, align 1, !range !1349, !noalias !1466, !noundef !4
  %i.sq = invoke noundef i8 @_RNvNtCsksn9slvsHfS_10image_webp8extended19get_alpha_predictor(i64 noundef %indvars.iv.i, i64 noundef %indvars.iv503.i, i64 noundef %i.so, i8 noundef %i.sp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pm, i64 noundef %i.po)
          to label %bb.fu unwind label %.loopexit473.i, !noalias !1464

bb.fu:                                            ; preds = %bb.ft
  %i.sr = load i16, ptr %i.pu, align 8, !noalias !1466, !noundef !4
  %i.ss = zext i16 %i.sr to i64
  %i.st = mul nuw nsw i64 %indvars.iv503.i, %i.ss
  %i.su = add nuw nsw i64 %i.st, %indvars.iv.i    ; 4 uses
  %i.sv = shl nuw nsw i64 %i.su, 2
  %i.sw = or disjoint i64 %i.sv, 3                ; 3 uses
  %i.sx = load i64, ptr %i.pw, align 8, !noalias !1466, !noundef !4 ; 2 uses
  %i.sy = icmp ult i64 %i.su, %i.sx
  br i1 %i.sy, label %bb.fv, label %.invoke.i

bb.fv:                                            ; preds = %bb.fu
  %i.sz = icmp ult i64 %i.sw, %i.po
  br i1 %i.sz, label %bb.fw, label %.invoke.i

.invoke.i:                                        ; preds = %bb.fv, %bb.fu
  %i.ta = phi i64 [ %i.su, %bb.fu ], [ %i.sw, %bb.fv ]
  %i.tb = phi i64 [ %i.sx, %bb.fu ], [ %i.po, %bb.fv ]
  %i.tc = phi ptr [ @107, %bb.fu ], [ @108, %bb.fv ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ta, i64 noundef %i.tb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tc) #26
          to label %.cont.i unwind label %.loopexit.split-lp474.i, !noalias !1464

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.fw:                                            ; preds = %bb.fv
  %i.td = load ptr, ptr %i.px, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.su
  %i.tf = load i8, ptr %i.te, align 1, !noalias !1464, !noundef !4
  %i.tg = add i8 %i.tf, %i.sq
  %i.th = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.sw
  store i8 %i.tg, ptr %i.th, align 1, !noalias !1464
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit472.i, label %bb.ft

bb.fx:                                            ; preds = %bb.fy, %bb.ep, %bb.en, %bb.ek
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp8extended10AlphaChunkECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %.noexc290 unwind label %bb.bu

bb.fy:                                            ; preds = %bb.eh
  %i.ti = extractvalue { i64, ptr } %i.ot, 1
  store i8 0, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  %.sroa.4451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ti, ptr %.sroa.4451.0..sroa_idx.i, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.fx

.noexc290:                                        ; preds = %bb.fx, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1466
  br label %bb.ga

bb.fz:                                            ; preds = %bb.cu, %bb.ct
  store i8 10, ptr %i.ba, align 8, !alias.scope !1459, !noalias !1470
  br label %bb.ga

select.unfold392:                                 ; preds = %._crit_edge.i.us.i225, %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #26
          to label %bb.af unwind label %bb.bu
end_hunk_1
