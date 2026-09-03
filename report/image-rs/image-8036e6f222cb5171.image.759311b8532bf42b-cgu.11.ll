Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs6_NtCs53gkmrwjETj_4tiff7decoderINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE10next_imageCsa5QsYiPB8Gl_5image:bb.a
  %.sroa.6434.i.sroa.7.0..sroa_idx952 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.6434.i.sroa.7.0.copyload951, ptr %.sroa.6434.i.sroa.7.0..sroa_idx952, align 8, !noalias !923
  %.sroa.6434.i.sroa.8.0..sroa_idx956 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 %.sroa.6434.i.sroa.8.0.copyload955, ptr %.sroa.6434.i.sroa.8.0..sroa_idx956, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !923
  invoke void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp, i16 noundef 279, i16 undef)
          to label %bb.hq unwind label %bb.il

bb.hq:                                            ; preds = %bb.hp
  %i.na = load i64, ptr %i.ab, align 8, !range !12, !noalias !923, !noundef !5
  %i.nb = trunc nuw i64 %i.na to i1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %.sroa.0911.0.copyload.i = load i8, ptr %i.nc, align 8, !noalias !923 ; 3 uses
  %.sroa.5454.sroa.7.i.sroa.0.0.copyload980 = load i56, ptr %.sroa.4912.0..sroa_idx.i, align 1, !noalias !923 ; 2 uses
  %.sroa.5454.sroa.7.i.sroa.6.0..sroa.4912.0..sroa_idx.i.sroa_idx982 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5454.sroa.7.i.sroa.6.0.copyload983 = load i64, ptr %.sroa.5454.sroa.7.i.sroa.6.0..sroa.4912.0..sroa_idx.i.sroa_idx982, align 8, !noalias !923 ; 4 uses
  %.sroa.5454.sroa.7.i.sroa.7.0..sroa.4912.0..sroa_idx.i.sroa_idx985 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.5454.sroa.7.i.sroa.7.0.copyload986 = load i64, ptr %.sroa.5454.sroa.7.i.sroa.7.0..sroa.4912.0..sroa_idx.i.sroa_idx985, align 8, !noalias !923 ; 4 uses
  %.sroa.5454.sroa.7.i.sroa.8.0..sroa.4912.0..sroa_idx.i.sroa_idx988 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.5454.sroa.7.i.sroa.8.0.copyload989 = load i64, ptr %.sroa.5454.sroa.7.i.sroa.8.0..sroa.4912.0..sroa_idx.i.sroa_idx988, align 8, !noalias !923 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !923
  br i1 %i.nb, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %.sroa.126.sroa.0.sroa.0.0.extract.trunc554 = trunc i64 %.sroa.5454.sroa.7.i.sroa.6.0.copyload983 to i16
  %.sroa.126.sroa.0.sroa.58.0.extract.shift6021171 = lshr i64 %.sroa.5454.sroa.7.i.sroa.6.0.copyload983, 16
  %.sroa.126.sroa.0.sroa.58.0.extract.trunc603 = trunc i64 %.sroa.126.sroa.0.sroa.58.0.extract.shift6021171 to i16
  %.sroa.126.sroa.66.0.extract.shift489 = lshr i64 %.sroa.5454.sroa.7.i.sroa.6.0.copyload983, 32
  %.sroa.126.sroa.66.0.extract.trunc490 = trunc nuw i64 %.sroa.126.sroa.66.0.extract.shift489 to i32
  %.sroa.179.sroa.0.sroa.0.0.extract.trunc312 = trunc i64 %.sroa.5454.sroa.7.i.sroa.7.0.copyload986 to i16
  %.sroa.179.sroa.0.sroa.52.0.extract.shift3661172 = lshr i64 %.sroa.5454.sroa.7.i.sroa.7.0.copyload986, 16
  %.sroa.179.sroa.0.sroa.52.0.extract.trunc367 = trunc i64 %.sroa.179.sroa.0.sroa.52.0.extract.shift3661172 to i16
  %.sroa.179.sroa.52.0.extract.shift233 = lshr i64 %.sroa.5454.sroa.7.i.sroa.7.0.copyload986, 32
  %.sroa.179.sroa.52.0.extract.trunc234 = trunc nuw i64 %.sroa.179.sroa.52.0.extract.shift233 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !923
  br label %bb.in

bb.hs:                                            ; preds = %bb.hq
  %.not1045.i = icmp eq i8 %.sroa.0911.0.copyload.i, -1
  br i1 %.not1045.i, label %.invoke1239.i, label %bb.ht, !prof !11

bb.ht:                                            ; preds = %bb.hs
  store i8 %.sroa.0911.0.copyload.i, ptr %i.ac, align 8, !noalias !923
  %.sroa.3457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i56 %.sroa.5454.sroa.7.i.sroa.0.0.copyload980, ptr %.sroa.3457.0..sroa_idx.i, align 1, !noalias !923
  %.sroa.5454.sroa.7.i.sroa.6.0..sroa.3457.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.5454.sroa.7.i.sroa.6.0.copyload983, ptr %.sroa.5454.sroa.7.i.sroa.6.0..sroa.3457.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  %.sroa.5454.sroa.7.i.sroa.7.0..sroa.3457.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.5454.sroa.7.i.sroa.7.0.copyload986, ptr %.sroa.5454.sroa.7.i.sroa.7.0..sroa.3457.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  %.sroa.5454.sroa.7.i.sroa.8.0..sroa.3457.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.5454.sroa.7.i.sroa.8.0.copyload989, ptr %.sroa.5454.sroa.7.i.sroa.8.0..sroa.3457.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  invoke void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value12into_u64_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ac)
          to label %bb.hu unwind label %bb.il

.invoke1239.i:                                    ; preds = %bb.hs, %bb.gz
  %i.nd = phi ptr [ @13, %bb.gz ], [ @15, %bb.hs ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nd) #28
          to label %.cont1240.i unwind label %bb.il

.cont1240.i:                                      ; preds = %.invoke1239.i
  unreachable

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !923
  %i.ne = load i64, ptr %i.ad, align 8, !range !26, !noalias !923, !noundef !5 ; 3 uses
  %.not1046.i = icmp eq i64 %i.ne, -1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.6451.i.sroa.0.0.copyload969 = load i64, ptr %i.nf, align 8, !noalias !923 ; 4 uses
  %.sroa.6451.i.sroa.7.0..sroa_idx971 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.6451.i.sroa.7.0.copyload972 = load i64, ptr %.sroa.6451.i.sroa.7.0..sroa_idx971, align 8, !noalias !923 ; 4 uses
  %.sroa.6451.i.sroa.8.0..sroa_idx975 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.6451.i.sroa.8.0.copyload976 = load i64, ptr %.sroa.6451.i.sroa.8.0..sroa_idx975, align 8, !noalias !923 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !923
  br i1 %.not1046.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %.sroa.126.sroa.0.sroa.0.0.extract.trunc571 = trunc i64 %.sroa.6451.i.sroa.0.0.copyload969 to i16
  %.sroa.126.sroa.0.sroa.58.0.extract.shift6361164 = lshr i64 %.sroa.6451.i.sroa.0.0.copyload969, 16
  %.sroa.126.sroa.0.sroa.58.0.extract.trunc637 = trunc i64 %.sroa.126.sroa.0.sroa.58.0.extract.shift6361164 to i16
  %.sroa.126.sroa.66.0.extract.shift523 = lshr i64 %.sroa.6451.i.sroa.0.0.copyload969, 32
  %.sroa.126.sroa.66.0.extract.trunc524 = trunc nuw i64 %.sroa.126.sroa.66.0.extract.shift523 to i32
  %.sroa.179.sroa.0.sroa.0.0.extract.trunc326 = trunc i64 %.sroa.6451.i.sroa.7.0.copyload972 to i16
  %.sroa.179.sroa.0.sroa.52.0.extract.shift3941165 = lshr i64 %.sroa.6451.i.sroa.7.0.copyload972, 16
  %.sroa.179.sroa.0.sroa.52.0.extract.trunc395 = trunc i64 %.sroa.179.sroa.0.sroa.52.0.extract.shift3941165 to i16
  %.sroa.179.sroa.52.0.extract.shift261 = lshr i64 %.sroa.6451.i.sroa.7.0.copyload972, 32
  %.sroa.179.sroa.52.0.extract.trunc262 = trunc nuw i64 %.sroa.179.sroa.52.0.extract.shift261 to i32
  %.sroa.59.sroa.0.0.extract.trunc661 = trunc i64 %i.ne to i8
  %.sroa.59.sroa.59.0.extract.shift703 = lshr i64 %i.ne, 8
  %.sroa.59.sroa.59.0.extract.trunc704 = trunc nuw i64 %.sroa.59.sroa.59.0.extract.shift703 to i56
  br label %bb.in

bb.hw:                                            ; preds = %bb.hu
  store i64 %.sroa.6451.i.sroa.0.0.copyload969, ptr %i.ah, align 8, !noalias !923
  %.sroa.6451.i.sroa.7.0..sroa_idx973 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.6451.i.sroa.7.0.copyload972, ptr %.sroa.6451.i.sroa.7.0..sroa_idx973, align 8, !noalias !923
  %.sroa.6451.i.sroa.8.0..sroa_idx977 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 %.sroa.6451.i.sroa.8.0.copyload976, ptr %.sroa.6451.i.sroa.8.0..sroa_idx977, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !923
  invoke void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp, i16 noundef 278, i16 undef)
          to label %bb.hx unwind label %bb.fu

bb.hx:                                            ; preds = %bb.hw
  %i.ng = load i64, ptr %i.aa, align 8, !range !12, !noalias !923, !noundef !5
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4926.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %.sroa.0925.0.copyload.i = load i8, ptr %i.ni, align 8, !noalias !923 ; 3 uses
  %.sroa.5502.sroa.7.i.sroa.0.0.copyload991 = load i56, ptr %.sroa.4926.0..sroa_idx.i, align 1, !noalias !923 ; 2 uses
  %.sroa.5502.sroa.7.i.sroa.6.0..sroa.4926.0..sroa_idx.i.sroa_idx993 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5502.sroa.7.i.sroa.6.0.copyload994 = load i64, ptr %.sroa.5502.sroa.7.i.sroa.6.0..sroa.4926.0..sroa_idx.i.sroa_idx993, align 8, !noalias !923 ; 4 uses
  %.sroa.5502.sroa.7.i.sroa.7.0..sroa.4926.0..sroa_idx.i.sroa_idx996 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5502.sroa.7.i.sroa.7.0.copyload997 = load i64, ptr %.sroa.5502.sroa.7.i.sroa.7.0..sroa.4926.0..sroa_idx.i.sroa_idx996, align 8, !noalias !923 ; 4 uses
  %.sroa.5502.sroa.7.i.sroa.8.0..sroa.4926.0..sroa_idx.i.sroa_idx999 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.5502.sroa.7.i.sroa.8.0.copyload1000 = load i64, ptr %.sroa.5502.sroa.7.i.sroa.8.0..sroa.4926.0..sroa_idx.i.sroa_idx999, align 8, !noalias !923 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !923
  br i1 %i.nh, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %.sroa.126.sroa.0.sroa.0.0.extract.trunc553 = trunc i64 %.sroa.5502.sroa.7.i.sroa.6.0.copyload994 to i16
  %.sroa.126.sroa.0.sroa.58.0.extract.shift6001169 = lshr i64 %.sroa.5502.sroa.7.i.sroa.6.0.copyload994, 16
  %.sroa.126.sroa.0.sroa.58.0.extract.trunc601 = trunc i64 %.sroa.126.sroa.0.sroa.58.0.extract.shift6001169 to i16
  %.sroa.126.sroa.66.0.extract.shift487 = lshr i64 %.sroa.5502.sroa.7.i.sroa.6.0.copyload994, 32
  %.sroa.126.sroa.66.0.extract.trunc488 = trunc nuw i64 %.sroa.126.sroa.66.0.extract.shift487 to i32
  %.sroa.179.sroa.0.sroa.0.0.extract.trunc311 = trunc i64 %.sroa.5502.sroa.7.i.sroa.7.0.copyload997 to i16
  %.sroa.179.sroa.0.sroa.52.0.extract.shift3641170 = lshr i64 %.sroa.5502.sroa.7.i.sroa.7.0.copyload997, 16
  %.sroa.179.sroa.0.sroa.52.0.extract.trunc365 = trunc i64 %.sroa.179.sroa.0.sroa.52.0.extract.shift3641170 to i16
  %.sroa.179.sroa.52.0.extract.shift231 = lshr i64 %.sroa.5502.sroa.7.i.sroa.7.0.copyload997, 32
  %.sroa.179.sroa.52.0.extract.trunc232 = trunc nuw i64 %.sroa.179.sroa.52.0.extract.shift231 to i32
  br label %bb.hg

bb.hz:                                            ; preds = %bb.hx
  %.not1047.i = icmp eq i8 %.sroa.0925.0.copyload.i, -1
  br i1 %.not1047.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !923
  store i8 %.sroa.0925.0.copyload.i, ptr %i.d, align 8, !noalias !923
  %.sroa.3505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i56 %.sroa.5502.sroa.7.i.sroa.0.0.copyload991, ptr %.sroa.3505.0..sroa_idx.i, align 1, !noalias !923
  %.sroa.5502.sroa.7.i.sroa.6.0..sroa.3505.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5502.sroa.7.i.sroa.6.0.copyload994, ptr %.sroa.5502.sroa.7.i.sroa.6.0..sroa.3505.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  %.sroa.5502.sroa.7.i.sroa.7.0..sroa.3505.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5502.sroa.7.i.sroa.7.0.copyload997, ptr %.sroa.5502.sroa.7.i.sroa.7.0..sroa.3505.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  %.sroa.5502.sroa.7.i.sroa.8.0..sroa.3505.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.5502.sroa.7.i.sroa.8.0.copyload1000, ptr %.sroa.5502.sroa.7.i.sroa.8.0..sroa.3505.0..sroa_idx.i.sroa_idx, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !923
  invoke void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value8into_u32(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ic unwind label %bb.fu

bb.ib:                                            ; preds = %bb.ic, %bb.hz
  %.sroa.0466.0.i = phi i32 [ %.sroa.8496.0.copyload.i, %bb.ic ], [ %i.gp, %bb.hz ] ; 3 uses
  %i.nj = load i64, ptr %.sroa.6434.i.sroa.8.0..sroa_idx956, align 8, !noalias !923, !noundef !5 ; 4 uses
  %i.nk = icmp ult i64 %i.nj, 1152921504606846976
  call void @llvm.assume(i1 %i.nk)
  %i.nl = load i64, ptr %.sroa.6451.i.sroa.8.0..sroa_idx977, align 8, !noalias !923, !noundef !5 ; 2 uses
  %i.nm = icmp ult i64 %i.nl, 1152921504606846976
  call void @llvm.assume(i1 %i.nm)
  %i.nn = icmp ne i64 %i.nj, %i.nl
  %i.no = icmp eq i32 %.sroa.0466.0.i, 0
  %or.cond7.i = select i1 %i.nn, i1 true, i1 %i.no
  br i1 %or.cond7.i, label %bb.hg, label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  %.sroa.0494.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !923 ; 3 uses
  %.sroa.8496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8496.0.copyload.i = load i32, ptr %.sroa.8496.0..sroa_idx.i, align 8, !noalias !923 ; 3 uses
  %.sroa.9499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.9499.sroa.0.0.copyload.i = load i32, ptr %.sroa.9499.0..sroa_idx.i, align 4, !noalias !923
  %.sroa.9499.sroa.7.0..sroa.9499.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9499.sroa.7.i.sroa.0.0.copyload = load i64, ptr %.sroa.9499.sroa.7.0..sroa.9499.0..sroa_idx.sroa_idx.i, align 8, !noalias !923 ; 3 uses
  %.sroa.9499.sroa.7.i.sroa.6.0..sroa.9499.sroa.7.0..sroa.9499.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9499.sroa.7.i.sroa.6.0.copyload = load i64, ptr %.sroa.9499.sroa.7.i.sroa.6.0..sroa.9499.sroa.7.0..sroa.9499.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !923
  %.not1048.i = icmp eq i64 %.sroa.0494.0.copyload.i, -1
  br i1 %.not1048.i, label %bb.ib, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %.sroa.179.sroa.0.sroa.0.0.extract.trunc345 = trunc i64 %.sroa.9499.sroa.7.i.sroa.0.0.copyload to i16
  %.sroa.179.sroa.0.sroa.52.0.extract.shift4321166 = lshr i64 %.sroa.9499.sroa.7.i.sroa.0.0.copyload, 16
  %.sroa.179.sroa.0.sroa.52.0.extract.trunc433 = trunc i64 %.sroa.179.sroa.0.sroa.52.0.extract.shift4321166 to i16
  %.sroa.179.sroa.52.0.extract.shift299 = lshr i64 %.sroa.9499.sroa.7.i.sroa.0.0.copyload, 32
  %.sroa.179.sroa.52.0.extract.trunc300 = trunc nuw i64 %.sroa.179.sroa.52.0.extract.shift299 to i32
  %.sroa.59.sroa.0.0.extract.trunc662 = trunc i64 %.sroa.0494.0.copyload.i to i8
  %.sroa.59.sroa.59.0.extract.shift705 = lshr i64 %.sroa.0494.0.copyload.i, 8
  %.sroa.59.sroa.59.0.extract.trunc706 = trunc nuw i64 %.sroa.59.sroa.59.0.extract.shift705 to i56
  %.sroa.126.sroa.0.sroa.0.0.extract.trunc542 = trunc i32 %.sroa.8496.0.copyload.i to i16
  %.sroa.126.sroa.0.sroa.58.0.extract.shift580 = lshr i32 %.sroa.8496.0.copyload.i, 16
  %.sroa.126.sroa.0.sroa.58.0.extract.trunc581 = trunc nuw i32 %.sroa.126.sroa.0.sroa.58.0.extract.shift580 to i16
  br label %bb.hg

bb.ie:                                            ; preds = %bb.ib
  %i.np = icmp samesign ugt i64 %i.nj, 4294967295
  br i1 %i.np, label %bb.hg, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %2 = add i32 %i.gp, -1
  %i.nq = trunc nuw i64 %i.nj to i32
  %i.nr = udiv i32 %2, %.sroa.0466.0.i
  %i.ns = add nuw i32 %i.nr, 1
  %i.nt = zext i16 %..sroa.0135.0.i to i32
  %i.nu = mul i32 %i.ns, %i.nt
  %.not1049.i = icmp eq i32 %i.nu, %i.nq
  br i1 %.not1049.i, label %bb.hf, label %bb.hg

bb.ig:                                            ; preds = %bb.hf
  %i.nv = load ptr, ptr %i.ju, align 8, !noalias !923, !nonnull !5, !noundef !5
  %i.nw = load i8, ptr %i.nv, align 1, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.199, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !924
  %i.nx = load ptr, ptr %i.bd, align 8, !noalias !923, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.200, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.201, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !924
  %i.ny = load <2 x i64>, ptr %i.mt, align 8, !noalias !924 ; 3 uses
  %.sroa.179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.nz = load <2 x i64>, ptr %.sroa.179.0..sroa_idx, align 8, !noalias !924 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !923
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak)
          to label %bb.ij unwind label %bb.ek

bb.ih:                                            ; preds = %bb.hf
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28
          to label %bb.co unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mt)
          to label %.thread1167.i unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !923
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap)
          to label %bb.jg unwind label %bb.dr

bb.ik:                                            ; preds = %.thread.i15, %bb.jd, %.thread1151.i, %bb.iv, %.thread1181.i, %.thread1167.i, %bb.io, %bb.ii
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread1191.i:                                    ; preds = %bb.hm, %bb.hi, %.invoke.i, %bb.gt, %bb.gp, %bb.gk, %bb.gh, %bb.ge, %bb.gb, %bb.fx, %bb.fw, %bb.fv, %bb.fs
  %lpad.thr_comm1189.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.il:                                            ; preds = %.invoke1239.i, %bb.ht, %bb.hp, %bb.ha, %bb.gw
  %lpad.thr_comm.split-lp1190.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread1181.i

bb.im:                                            ; preds = %bb.hg
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1181.i

bb.in:                                            ; preds = %bb.hr, %bb.hv, %bb.gy, %bb.hc, %bb.hg
  %.sroa.59.sroa.59.sroa.0.20 = phi i56 [ %.sroa.59.sroa.59.0.extract.trunc700, %bb.hc ], [ %.sroa.59.sroa.59.sroa.0.21, %bb.hg ], [ %.sroa.5598.sroa.7.i.sroa.0.0.copyload1061, %bb.gy ], [ %.sroa.5454.sroa.7.i.sroa.0.0.copyload980, %bb.hr ], [ %.sroa.59.sroa.59.0.extract.trunc704, %bb.hv ]
  %.sroa.59.sroa.0.20 = phi i8 [ %.sroa.59.sroa.0.0.extract.trunc659, %bb.hc ], [ %.sroa.59.sroa.0.21, %bb.hg ], [ %.sroa.0985.0.copyload.i, %bb.gy ], [ %.sroa.0911.0.copyload.i, %bb.hr ], [ %.sroa.59.sroa.0.0.extract.trunc661, %bb.hv ]
  %.sroa.126.sroa.0.sroa.58.20 = phi i16 [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc633, %bb.hc ], [ %.sroa.126.sroa.0.sroa.58.21, %bb.hg ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc597, %bb.gy ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc603, %bb.hr ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc637, %bb.hv ]
  %.sroa.126.sroa.0.sroa.0.20 = phi i16 [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc569, %bb.hc ], [ %.sroa.126.sroa.0.sroa.0.21, %bb.hg ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc551, %bb.gy ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc554, %bb.hr ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc571, %bb.hv ]
  %.sroa.126.sroa.66.20 = phi i32 [ %.sroa.126.sroa.66.0.extract.trunc520, %bb.hc ], [ %.sroa.126.sroa.66.21, %bb.hg ], [ %.sroa.126.sroa.66.0.extract.trunc484, %bb.gy ], [ %.sroa.126.sroa.66.0.extract.trunc490, %bb.hr ], [ %.sroa.126.sroa.66.0.extract.trunc524, %bb.hv ]
  %.sroa.179.sroa.0.sroa.52.20 = phi i16 [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc391, %bb.hc ], [ %.sroa.179.sroa.0.sroa.52.21, %bb.hg ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc361, %bb.gy ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc367, %bb.hr ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc395, %bb.hv ]
  %.sroa.179.sroa.0.sroa.0.20 = phi i16 [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc324, %bb.hc ], [ %.sroa.179.sroa.0.sroa.0.21, %bb.hg ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc309, %bb.gy ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc312, %bb.hr ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc326, %bb.hv ]
  %.sroa.179.sroa.52.20 = phi i32 [ %.sroa.179.sroa.52.0.extract.trunc258, %bb.hc ], [ %.sroa.179.sroa.52.21, %bb.hg ], [ %.sroa.179.sroa.52.0.extract.trunc228, %bb.gy ], [ %.sroa.179.sroa.52.0.extract.trunc234, %bb.hr ], [ %.sroa.179.sroa.52.0.extract.trunc262, %bb.hv ]
  %.sroa.190.20 = phi i64 [ %.sroa.6595.i.sroa.8.0.copyload1057, %bb.hc ], [ %.sroa.190.21, %bb.hg ], [ %.sroa.5598.sroa.7.i.sroa.8.0.copyload1070, %bb.gy ], [ %.sroa.5454.sroa.7.i.sroa.8.0.copyload989, %bb.hr ], [ %.sroa.6451.i.sroa.8.0.copyload976, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !923
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.iq unwind label %bb.ip

bb.io:                                            ; preds = %.thread1181.i, %bb.ip, %.thread1191.i
  %.sroa.0637.8.i = phi i8 [ 1, %bb.ip ], [ %.sroa.0637.71185.i, %.thread1181.i ], [ 1, %.thread1191.i ]
  %.pn1054.i = phi { ptr, i32 } [ %i.od, %bb.ip ], [ %.pn10521186.i, %.thread1181.i ], [ %lpad.thr_comm1189.i, %.thread1191.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #24
          to label %bb.iv unwind label %bb.ik

bb.ip:                                            ; preds = %bb.in
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.iq:                                            ; preds = %bb.in, %bb.hh
  %.sroa.59.sroa.59.sroa.0.16 = phi i56 [ %.sroa.59.sroa.59.sroa.0.15, %bb.hh ], [ %.sroa.59.sroa.59.sroa.0.20, %bb.in ]
  %.sroa.59.sroa.0.16 = phi i8 [ %.sroa.59.sroa.0.15, %bb.hh ], [ %.sroa.59.sroa.0.20, %bb.in ]
  %.sroa.126.sroa.0.sroa.58.16 = phi i16 [ %.sroa.126.sroa.0.sroa.58.15, %bb.hh ], [ %.sroa.126.sroa.0.sroa.58.20, %bb.in ]
  %.sroa.126.sroa.0.sroa.0.16 = phi i16 [ %.sroa.126.sroa.0.sroa.0.15, %bb.hh ], [ %.sroa.126.sroa.0.sroa.0.20, %bb.in ]
  %.sroa.126.sroa.66.16 = phi i32 [ %.sroa.126.sroa.66.15, %bb.hh ], [ %.sroa.126.sroa.66.20, %bb.in ]
  %.sroa.179.sroa.0.sroa.52.16 = phi i16 [ %.sroa.179.sroa.0.sroa.52.15, %bb.hh ], [ %.sroa.179.sroa.0.sroa.52.20, %bb.in ]
  %.sroa.179.sroa.0.sroa.0.16 = phi i16 [ %.sroa.179.sroa.0.sroa.0.15, %bb.hh ], [ %.sroa.179.sroa.0.sroa.0.20, %bb.in ]
  %.sroa.179.sroa.52.16 = phi i32 [ %.sroa.179.sroa.52.15, %bb.hh ], [ %.sroa.179.sroa.52.20, %bb.in ]
  %.sroa.190.16 = phi i64 [ %.sroa.190.15, %bb.hh ], [ %.sroa.190.20, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !923
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak)
          to label %bb.ir unwind label %bb.ek

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !923
  br label %bb.it

bb.is:                                            ; preds = %bb.iu, %bb.it, %bb.ee
  %.sroa.59.sroa.59.sroa.0.9 = phi i56 [ -36028797018963968, %bb.iu ], [ %.sroa.59.sroa.59.sroa.0.10, %bb.it ], [ %.sroa.59.sroa.59.0.extract.trunc686, %bb.ee ]
  %.sroa.59.sroa.0.9 = phi i8 [ 2, %bb.iu ], [ %.sroa.59.sroa.0.10, %bb.it ], [ %.sroa.59.sroa.0.0.extract.trunc652, %bb.ee ]
  %.sroa.126.sroa.0.sroa.58.9 = phi i16 [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc639, %bb.iu ], [ %.sroa.126.sroa.0.sroa.58.10, %bb.it ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc625, %bb.ee ]
  %.sroa.126.sroa.0.sroa.0.9 = phi i16 [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc572, %bb.iu ], [ %.sroa.126.sroa.0.sroa.0.10, %bb.it ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc565, %bb.ee ]
  %.sroa.126.sroa.66.9 = phi i32 [ %.sroa.126.sroa.66.0.extract.trunc526, %bb.iu ], [ %.sroa.126.sroa.66.10, %bb.it ], [ %.sroa.126.sroa.66.0.extract.trunc512, %bb.ee ]
  %.sroa.179.sroa.0.sroa.52.9 = phi i16 [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc397, %bb.iu ], [ %.sroa.179.sroa.0.sroa.52.10, %bb.it ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc431, %bb.ee ]
  %.sroa.179.sroa.0.sroa.0.9 = phi i16 [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc327, %bb.iu ], [ %.sroa.179.sroa.0.sroa.0.10, %bb.it ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc344, %bb.ee ]
  %.sroa.179.sroa.52.9 = phi i32 [ %.sroa.179.sroa.52.0.extract.trunc264, %bb.iu ], [ %.sroa.179.sroa.52.10, %bb.it ], [ %.sroa.179.sroa.52.0.extract.trunc298, %bb.ee ]
  %.sroa.190.9 = phi i64 [ %.sroa.190.16.copyload158, %bb.iu ], [ %.sroa.190.10, %bb.it ], [ %.sroa.6249.sroa.7.i.sroa.6.0.copyload914, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !923
  br label %bb.iw

bb.it:                                            ; preds = %bb.er, %bb.ew, %bb.ez, %bb.fc, %bb.fh, %bb.fk, %bb.ei, %bb.ir, %bb.ft
  %.sroa.59.sroa.59.sroa.0.10 = phi i56 [ %.sroa.59.sroa.59.0.extract.trunc690, %bb.fh ], [ -36028797018963968, %bb.ei ], [ %.sroa.59.sroa.59.sroa.0.16, %bb.ir ], [ %.sroa.59.sroa.59.sroa.0.13, %bb.ft ], [ %.sroa.5394.sroa.7.i.sroa.0.0.copyload928, %bb.fc ], [ -36028797018963968, %bb.fk ], [ %.sroa.5317.sroa.7.i.sroa.0.0.copyload917, %bb.er ], [ -36028797018963968, %bb.ez ], [ %.sroa.59.sroa.59.0.extract.trunc688, %bb.ew ]
  %.sroa.59.sroa.0.10 = phi i8 [ %.sroa.59.sroa.0.0.extract.trunc654, %bb.fh ], [ 16, %bb.ei ], [ %.sroa.59.sroa.0.16, %bb.ir ], [ %.sroa.59.sroa.0.13, %bb.ft ], [ %.sroa.0849.0.copyload.i, %bb.fc ], [ 16, %bb.fk ], [ %.sroa.0807.0.copyload.i, %bb.er ], [ 16, %bb.ez ], [ %.sroa.59.sroa.0.0.extract.trunc653, %bb.ew ]
  %.sroa.126.sroa.0.sroa.58.10 = phi i16 [ %.sroa.9391.sroa.0.0.copyload.i, %bb.fh ], [ 0, %bb.ei ], [ %.sroa.126.sroa.0.sroa.58.16, %bb.ir ], [ %.sroa.126.sroa.0.sroa.58.13, %bb.ft ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc607, %bb.fc ], [ 0, %bb.fk ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc609, %bb.er ], [ 0, %bb.ez ], [ %.sroa.9314.sroa.0.0.copyload.i, %bb.ew ]
  %.sroa.126.sroa.0.sroa.0.10 = phi i16 [ %.sroa.8388.0.copyload.i, %bb.fh ], [ 3, %bb.ei ], [ %.sroa.126.sroa.0.sroa.0.16, %bb.ir ], [ %.sroa.126.sroa.0.sroa.0.13, %bb.ft ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc556, %bb.fc ], [ 9, %bb.fk ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc557, %bb.er ], [ 8, %bb.ez ], [ %.sroa.8311.0.copyload.i, %bb.ew ]
  %.sroa.126.sroa.66.10 = phi i32 [ %.sroa.9391.sroa.7.i.sroa.0.0.copyload, %bb.fh ], [ -2147483648, %bb.ei ], [ %.sroa.126.sroa.66.16, %bb.ir ], [ %.sroa.126.sroa.66.13, %bb.ft ], [ %.sroa.126.sroa.66.0.extract.trunc494, %bb.fc ], [ -2147483648, %bb.fk ], [ %.sroa.126.sroa.66.0.extract.trunc496, %bb.er ], [ -2147483648, %bb.ez ], [ %.sroa.9314.sroa.7.i.sroa.0.0.copyload, %bb.ew ]
  %.sroa.179.sroa.0.sroa.52.10 = phi i16 [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc419, %bb.fh ], [ undef, %bb.ei ], [ %.sroa.179.sroa.0.sroa.52.16, %bb.ir ], [ %.sroa.179.sroa.0.sroa.52.13, %bb.ft ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc371, %bb.fc ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc405, %bb.fk ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc373, %bb.er ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc403, %bb.ez ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc417, %bb.ew ]
  %.sroa.179.sroa.0.sroa.0.10 = phi i16 [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc338, %bb.fh ], [ undef, %bb.ei ], [ %.sroa.179.sroa.0.sroa.0.16, %bb.ir ], [ %.sroa.179.sroa.0.sroa.0.13, %bb.ft ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc314, %bb.fc ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc331, %bb.fk ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc315, %bb.er ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc330, %bb.ez ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc337, %bb.ew ]
  %.sroa.179.sroa.52.10 = phi i32 [ %.sroa.179.sroa.52.0.extract.trunc286, %bb.fh ], [ undef, %bb.ei ], [ %.sroa.179.sroa.52.16, %bb.ir ], [ %.sroa.179.sroa.52.13, %bb.ft ], [ %.sroa.179.sroa.52.0.extract.trunc238, %bb.fc ], [ %.sroa.179.sroa.52.0.extract.trunc272, %bb.fk ], [ %.sroa.179.sroa.52.0.extract.trunc240, %bb.er ], [ %.sroa.179.sroa.52.0.extract.trunc270, %bb.ez ], [ %.sroa.179.sroa.52.0.extract.trunc284, %bb.ew ]
  %.sroa.190.10 = phi i64 [ %.sroa.9391.sroa.7.i.sroa.8.0.copyload, %bb.fh ], [ undef, %bb.ei ], [ %.sroa.190.16, %bb.ir ], [ %.sroa.190.13, %bb.ft ], [ %.sroa.5394.sroa.7.i.sroa.8.0.copyload937, %bb.fc ], [ %.sroa.190.18.copyload161, %bb.fk ], [ %.sroa.5317.sroa.7.i.sroa.8.0.copyload926, %bb.er ], [ %.sroa.190.18.copyload160, %bb.ez ], [ %.sroa.9314.sroa.7.i.sroa.8.0.copyload, %bb.ew ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap)
          to label %bb.is unwind label %bb.dr

.thread1167.i:                                    ; preds = %bb.ii, %bb.fu
  %.pn1174.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.fu ], [ %i.oa, %bb.ii ]
  %.sroa.0637.61173.i = phi i8 [ 1, %bb.fu ], [ 0, %bb.ii ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #24
          to label %.thread1181.i unwind label %bb.ik

.thread1181.i:                                    ; preds = %.thread1167.i, %bb.im, %bb.il
  %.pn10521186.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1190.i, %bb.il ], [ %.pn1174.i, %.thread1167.i ], [ %i.oc, %bb.im ]
  %.sroa.0637.71185.i = phi i8 [ 1, %bb.il ], [ %.sroa.0637.61173.i, %.thread1167.i ], [ 1, %bb.im ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #24
          to label %bb.io unwind label %bb.ik

bb.iu:                                            ; preds = %._crit_edge1242, %bb.en
  %.sroa.190.16.copyload158 = phi i64 [ %.sroa.190.16.copyload158.pre, %._crit_edge1242 ], [ %i.ka, %bb.en ]
  %.sroa.179.16.copyload123 = phi i64 [ %.sroa.179.16.copyload123.pre, %._crit_edge1242 ], [ %i.ke, %bb.en ] ; 3 uses
  %.sroa.126.16.copyload84 = load i64, ptr %i.ap, align 8, !noalias !924 ; 3 uses
  %.sroa.126.sroa.0.sroa.0.0.extract.trunc572 = trunc i64 %.sroa.126.16.copyload84 to i16
  %.sroa.126.sroa.0.sroa.58.0.extract.shift6381179 = lshr i64 %.sroa.126.16.copyload84, 16
  %.sroa.126.sroa.0.sroa.58.0.extract.trunc639 = trunc i64 %.sroa.126.sroa.0.sroa.58.0.extract.shift6381179 to i16
  %.sroa.126.sroa.66.0.extract.shift525 = lshr i64 %.sroa.126.16.copyload84, 32
  %.sroa.126.sroa.66.0.extract.trunc526 = trunc nuw i64 %.sroa.126.sroa.66.0.extract.shift525 to i32
  %.sroa.179.sroa.0.sroa.0.0.extract.trunc327 = trunc i64 %.sroa.179.16.copyload123 to i16
  %.sroa.179.sroa.0.sroa.52.0.extract.shift3961180 = lshr i64 %.sroa.179.16.copyload123, 16
  %.sroa.179.sroa.0.sroa.52.0.extract.trunc397 = trunc i64 %.sroa.179.sroa.0.sroa.52.0.extract.shift3961180 to i16
  %.sroa.179.sroa.52.0.extract.shift263 = lshr i64 %.sroa.179.16.copyload123, 32
  %.sroa.179.sroa.52.0.extract.trunc264 = trunc nuw i64 %.sroa.179.sroa.52.0.extract.shift263 to i32
  br label %bb.is

bb.iv:                                            ; preds = %bb.io, %bb.ek
  %.sroa.0636.4.i = phi i8 [ %.sroa.0637.5.i, %bb.ek ], [ 1, %bb.io ]
  %.sroa.0637.4.i = phi i8 [ %.sroa.0637.5.i, %bb.ek ], [ %.sroa.0637.8.i, %bb.io ]
  %.pn1056.i = phi { ptr, i32 } [ %i.jz, %bb.ek ], [ %.pn1054.i, %bb.io ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #24
          to label %bb.dq unwind label %bb.ik

bb.iw:                                            ; preds = %bb.do, %bb.is, %bb.eb, %bb.dt
  %.sroa.59.sroa.59.sroa.0.7 = phi i56 [ %.sroa.59.sroa.59.0.extract.trunc684, %bb.dt ], [ %.sroa.59.sroa.59.sroa.0.9, %bb.is ], [ -36028797018963968, %bb.eb ], [ -36028797018963968, %bb.do ]
  %.sroa.59.sroa.0.7 = phi i8 [ %.sroa.59.sroa.0.0.extract.trunc651, %bb.dt ], [ %.sroa.59.sroa.0.9, %bb.is ], [ %.sroa.59.sroa.0.8, %bb.eb ], [ 16, %bb.do ]
  %.sroa.126.sroa.0.sroa.58.7 = phi i16 [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc623, %bb.dt ], [ %.sroa.126.sroa.0.sroa.58.9, %bb.is ], [ %.sroa.126.sroa.0.sroa.58.8, %bb.eb ], [ 0, %bb.do ]
  %.sroa.126.sroa.0.sroa.0.7 = phi i16 [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc564, %bb.dt ], [ %.sroa.126.sroa.0.sroa.0.9, %bb.is ], [ %.sroa.126.sroa.0.sroa.0.8, %bb.eb ], [ 3, %bb.do ]
  %.sroa.126.sroa.66.7 = phi i32 [ %.sroa.126.sroa.66.0.extract.trunc510, %bb.dt ], [ %.sroa.126.sroa.66.9, %bb.is ], [ %.sroa.126.sroa.66.8, %bb.eb ], [ -2147483648, %bb.do ]
  %.sroa.179.sroa.0.sroa.52.7 = phi i16 [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc427, %bb.dt ], [ %.sroa.179.sroa.0.sroa.52.9, %bb.is ], [ %.sroa.179.sroa.0.sroa.52.8, %bb.eb ], [ undef, %bb.do ]
  %.sroa.179.sroa.0.sroa.0.7 = phi i16 [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc342, %bb.dt ], [ %.sroa.179.sroa.0.sroa.0.9, %bb.is ], [ %.sroa.179.sroa.0.sroa.0.8, %bb.eb ], [ undef, %bb.do ]
  %.sroa.179.sroa.52.7 = phi i32 [ %.sroa.179.sroa.52.0.extract.trunc294, %bb.dt ], [ %.sroa.179.sroa.52.9, %bb.is ], [ %.sroa.179.sroa.52.8, %bb.eb ], [ undef, %bb.do ]
  %.sroa.190.7 = phi i64 [ %.sroa.5779.0.copyload.i, %bb.dt ], [ %.sroa.190.9, %bb.is ], [ %i.iw, %bb.eb ], [ undef, %bb.do ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au)
          to label %bb.ix unwind label %bb.cx

.thread1151.i:                                    ; preds = %bb.dq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #24
          to label %bb.jb unwind label %bb.ik

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !923
  br label %bb.iy

bb.iy:                                            ; preds = %bb.cz, %bb.de, %bb.df, %bb.ix, %bb.dm, %bb.dh
  %.sroa.59.sroa.59.sroa.0.5 = phi i56 [ -36028797018963968, %bb.df ], [ %.sroa.5187.sroa.7.i.sroa.0.0.copyload901, %bb.dh ], [ %.sroa.59.sroa.59.sroa.0.7, %bb.ix ], [ %.sroa.59.sroa.59.0.extract.trunc682, %bb.dm ], [ %.sroa.6170.sroa.8.i.sroa.0.0.copyload890, %bb.cz ], [ %.sroa.59.sroa.59.0.extract.trunc680, %bb.de ] ; 3 uses
  %.sroa.59.sroa.0.5 = phi i8 [ 16, %bb.df ], [ %.sroa.0758.0.copyload.i, %bb.dh ], [ %.sroa.59.sroa.0.7, %bb.ix ], [ %.sroa.59.sroa.0.0.extract.trunc650, %bb.dm ], [ %.sroa.0730.0.copyload.i, %bb.cz ], [ %.sroa.59.sroa.0.0.extract.trunc649, %bb.de ] ; 3 uses
  %.sroa.126.sroa.0.sroa.58.5 = phi i16 [ 0, %bb.df ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc611, %bb.dh ], [ %.sroa.126.sroa.0.sroa.58.7, %bb.ix ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc621, %bb.dm ], [ %.sroa.126.sroa.0.sroa.58.0.extract.trunc613, %bb.cz ], [ %.sroa.9167.sroa.0.0.copyload.i, %bb.de ] ; 3 uses
  %.sroa.126.sroa.0.sroa.0.5 = phi i16 [ 14, %bb.df ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc558, %bb.dh ], [ %.sroa.126.sroa.0.sroa.0.7, %bb.ix ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc563, %bb.dm ], [ %.sroa.126.sroa.0.sroa.0.0.extract.trunc559, %bb.cz ], [ %.sroa.8164.0.copyload.i, %bb.de ] ; 3 uses
  %.sroa.126.sroa.66.5 = phi i32 [ -2147483648, %bb.df ], [ %.sroa.126.sroa.66.0.extract.trunc498, %bb.dh ], [ %.sroa.126.sroa.66.7, %bb.ix ], [ %.sroa.126.sroa.66.0.extract.trunc508, %bb.dm ], [ %.sroa.126.sroa.66.0.extract.trunc500, %bb.cz ], [ %.sroa.9167.sroa.7.i.sroa.0.0.copyload, %bb.de ] ; 3 uses
  %.sroa.179.sroa.0.sroa.52.5 = phi i16 [ undef, %bb.df ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc375, %bb.dh ], [ %.sroa.179.sroa.0.sroa.52.7, %bb.ix ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc425, %bb.dm ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc377, %bb.cz ], [ %.sroa.179.sroa.0.sroa.52.0.extract.trunc415, %bb.de ] ; 3 uses
  %.sroa.179.sroa.0.sroa.0.5 = phi i16 [ undef, %bb.df ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc316, %bb.dh ], [ %.sroa.179.sroa.0.sroa.0.7, %bb.ix ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc341, %bb.dm ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc317, %bb.cz ], [ %.sroa.179.sroa.0.sroa.0.0.extract.trunc336, %bb.de ] ; 3 uses
  %.sroa.179.sroa.52.5 = phi i32 [ undef, %bb.df ], [ %.sroa.179.sroa.52.0.extract.trunc242, %bb.dh ], [ %.sroa.179.sroa.52.7, %bb.ix ], [ %.sroa.179.sroa.52.0.extract.trunc292, %bb.dm ], [ %.sroa.179.sroa.52.0.extract.trunc244, %bb.cz ], [ %.sroa.179.sroa.52.0.extract.trunc282, %bb.de ] ; 3 uses
  %.sroa.190.5 = phi i64 [ undef, %bb.df ], [ %.sroa.5187.sroa.7.i.sroa.8.0.copyload910, %bb.dh ], [ %.sroa.190.7, %bb.ix ], [ %.sroa.5764.0.copyload.i, %bb.dm ], [ %.sroa.6170.sroa.8.i.sroa.8.0.copyload899, %bb.cz ], [ %.sroa.9167.sroa.7.i.sroa.8.0.copyload, %bb.de ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.oe = load ptr, ptr %i.bd, align 8, !alias.scope !930, !noalias !923, !noundef !5 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit.i, label %bb.iz

end_hunk_0
begin_hunk_1_@_RNvXss_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtB5_5Blend5blendB7_:bb.a
  %i.bv = bitcast <4 x i16> %i.bu to i64
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #26
  unreachable

.sink.split:                                      ; preds = %bb.c, %bb.k
  %.sroa.030.0.insert.insert.sink = phi i64 [ %i.bv, %bb.k ], [ %.sroa.0.0.copyload, %bb.c ]
  store i64 %.sroa.030.0.insert.insert.sink, ptr %0, align 2
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_4Read13read_vectored0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_buf_exactINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16default_read_bufNCNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_4Read8read_buf0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_15LayerAttributesNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([848 x i8]) align 8 captures(none) dereferenceable(848)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds4zero(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB4_15ImageAttributes3new(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta12sequence_end8has_comeINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([392 x i8]) align 8 captures(none) dereferenceable(392), ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB2_4Text8as_slice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_9BlockType5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBP_14AttributeValueNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([352 x i8]) align 8 captures(none) dereferenceable(352), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta19compute_chunk_count(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsdsTQD3x2eOp_3exr5errorNtB3_5Error7invalidReECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB5_10IfdDecoder8find_tag(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value12into_u64_vec(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB27_10IfdDecoder21find_tag_unsigned_vectEs_00EtINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB29_5error9TiffErrorENCINvXso_B3q_IB3o_INtB1b_3VectEB4a_EINtNtNtB4_6traits7collect12FromIteratorIB3o_tB4a_EE9from_iterBQ_E0B4R_ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE11require_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(16), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value8into_u32(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(16), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value8into_u16(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory8contains(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value11into_u8_vec(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value12into_u16_vec(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collectINtB6_3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENCINvMs_NtNtB12_7decoder5imageNtB3J_5Image11from_readerINtNtNtB2t_2io6cursor6CursorRShEE0EE9from_iterCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB5_9TagReaderINtB7_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE17find_tag_uint_vectECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENvMs1s_B15_B13_19from_u16_exhaustiveEE9from_iterCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB5_9TagReaderINtB7_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE17find_tag_uint_vechECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image16chunk_dimensions(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image21chunk_data_dimensions(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB5_13ReadoutLayout15chunk_row_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image25compact_photometric_bytes(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs53gkmrwjETj_4tiff7decoder26fix_endianness_and_predict(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i8 noundef, i16 noundef, i1 noundef zeroext, i16 noundef range(i16 1, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs53gkmrwjETj_4tiff7decoder13invert_colors(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i32, i16 noundef range(i16 1, 6), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4copy4copyINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EENtBG_4SinkECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs53gkmrwjETj_4tiff7decoder11predict_f16(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs53gkmrwjETj_4tiff7decoder11predict_f32(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs53gkmrwjETj_4tiff7decoder11predict_f64(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream12Group4ReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB4_9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBX_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB7_6cursor6CursorRShEINtB5_4TakeIB17_QBG_EEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB7_6cursor6CursorRShEINtB5_4TakeIB17_QBG_EEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtBG_6cursor6CursorRShEINtBE_4TakeIB1G_QB1f_EEENtNtB7_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util5ChainINtNtB7_6cursor6CursorRShEINtB5_4TakeIB17_QBG_EEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg7decoderINtB2_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE7defaultCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([29432 x i8]) align 8 captures(none) dereferenceable(29432), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg7decoderINtB2_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE14decode_headersCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(29432)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg7decoderINtB2_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE6decodeCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(29432)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs53gkmrwjETj_4tiff5errorNtB5_9TiffErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCsaXAyoiiLu3Y_9zune_jpeg6errors12DecodeErrorsE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtNtCs53gkmrwjETj_4tiff7decoder6streamINtB5_14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCs53gkmrwjETj_4tiff7decoder6stream14PackBitsReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXCs6crhI5QFTW0_8bytemuckNtB2_12PodCastErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RNvYfNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RNvYfNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYhNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvYhNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYtNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i16 @_RNvYtNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsaKJjC64KgbL_3std3env3var5inner(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(4288)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(336)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtBT_7decoder6cycles11ComponentIdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdBP_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBR_14AttributeValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11GainMapInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags12SampleFormatENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11GainMapInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i16, i16 } @_RINvMNtCsch97uQowpgv_3fax4mapsINtB3_5EntrytE4findINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB18_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2r_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtCsbQ1pTce3Gzu_14byteorder_lite12LittleEndianNtB4_9ByteOrder8read_u24Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EINtB13_4IterhEEINtB5_7ZipImplBW_B1A_E3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdsTQD3x2eOp_3exr4meta17missing_attribute(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCsa5QsYiPB8Gl_5image5errorNtB5_16UnsupportedErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_15ImageFormatHintE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1v_6cursor6CursorRShEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter28macroblock_filter_horizontal(i8 noundef, i8 noundef, i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26subblock_filter_horizontal(i8 noundef, i8 noundef, i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter26macroblock_filter_vertical(i8 noundef, i8 noundef, i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter24subblock_filter_vertical(i8 noundef, i8 noundef, i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter23simple_segment_vertical(i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_segment_horizontal(i8 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([9 x i8]) align 1 captures(none) dereferenceable(9)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtCsj6eKBz9Db1c_4core5sliceSAhj4_16as_flattened_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder4init(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder30read_with_tree_with_first_node(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i32 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_bool(ptr noalias nofree noundef align 8 dereferenceable(48), i8 noundef) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder9read_flag(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp820init_top_macroblocks(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i8 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder12read_literal(ptr noalias nofree noundef align 8 dereferenceable(48), i8 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp818create_border_luma(ptr dead_on_unwind noalias nofree noundef writable sret([357 x i8]) align 1 captures(none) dereferenceable(357), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp811predict_4x4(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp9transform7iwht4x4(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp9transform7idct4x4(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr dead_on_unwind noalias nofree noundef writable sret([81 x i8]) align 1 captures(none) dereferenceable(81), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder26read_optional_signed_value(ptr noalias nofree noundef align 8 dereferenceable(48), i8 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8dc_quant(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB7_10Vp8DecoderpE25read_quantization_indices8ac_quant(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsgidZRN39rux_6flate23memNtB5_10Decompress3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder6streamINtB2_12EndianReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE11goto_offsetCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB4_5Image17readout_for_image(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB5_13ReadoutLayout15to_plane_layout(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCs53gkmrwjETj_4tiff7decoderNtB5_22BufferLayoutPreference11from_planes(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs53gkmrwjETj_4tiff7decoderNtNtB5_5image13ReadoutLayout24result_extent_for_planes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs53gkmrwjETj_4tiff7decoderNtB2_14DecodingResult16resize_to_extent(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef range(i64 0, 11), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs53gkmrwjETj_4tiff7decoderNtB2_14DecodingResult9as_buffer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder6cyclesNtB2_9IfdCycles3new(ptr dead_on_unwind noalias nofree noundef writable sret([144 x i8]) align 8 captures(address) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB5_10IfdDecoder7get_tag(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i16 noundef range(i16 -32104, 532), i16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder6cyclesNtB2_9IfdCycles11insert_next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(144), i64 noundef, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB5_5Entry3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i16 noundef range(i16 1, 19), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE6insertCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i16 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E21reserve_one_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(4288)) unnamed_addr #20

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB6_5Entry14buffered_valueINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB6_5Entry12raw_value_atINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB6_5Entry3valINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #17

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCsgidZRN39rux_6flate23zio4readINtNtB4_9bufreader9BufReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtB4_3mem10DecompressECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_4Read13read_vectored0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_buf_exactINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16default_read_bufNCNvYINtNtNtCsgidZRN39rux_6flate24zlib4read11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_4Read8read_buf0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noinline noreturn }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { inlinehint }
attributes #30 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{i64 -1, i64 4}
!5 = !{}
!6 = !{i64 0, i64 27}
!7 = !{i8 0, i8 3}
!8 = !{i64 0, i64 3}
!9 = !{i8 0, i8 2}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 0, i64 2}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"address", !"read_provenance"}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i64 1, i64 536870913}
!19 = !{i64 8}
!20 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!21 = !{i8 0, i8 29}
!22 = !{i8 -1, i8 29}
!23 = !{i8 0, i8 10}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{i64 -1, i64 -9223372036854775786}
!27 = !{i16 1, i16 6}
!28 = distinct !{!28, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!29 = distinct !{!29, !28, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!30 = distinct !{!30, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!31 = distinct !{!31, !30, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!32 = distinct !{!32, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!33 = distinct !{!33, !32, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!34 = distinct !{!34, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image"}
!35 = distinct !{!35, !34, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image: argument 0"}
!36 = distinct !{!36, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!37 = distinct !{!37, !36, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!38 = distinct !{!38, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!39 = distinct !{!39, !38, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!40 = distinct !{!40, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!41 = distinct !{!41, !40, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!42 = distinct !{!42, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!43 = distinct !{!43, !42, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!44 = distinct !{!44, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!45 = distinct !{!45, !44, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!46 = distinct !{!46, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!47 = distinct !{!47, !46, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image"}
!49 = distinct !{!49, !48, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image: argument 0"}
!50 = distinct !{!50, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image"}
!51 = distinct !{!51, !50, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEECsa5QsYiPB8Gl_5image: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!53 = distinct !{!53, !52, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!55 = distinct !{!55, !54, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!57 = distinct !{!57, !56, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!59 = distinct !{!59, !58, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!60 = distinct !{!60, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!61 = distinct !{!61, !60, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!62 = distinct !{!62, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!63 = distinct !{!63, !62, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!65 = distinct !{!65, !64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!66 = distinct !{!66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!67 = distinct !{!67, !66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!68 = distinct !{!68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEECsa5QsYiPB8Gl_5image"}
!69 = distinct !{!69, !68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEECsa5QsYiPB8Gl_5image: argument 0"}
!70 = distinct !{!70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute7PreviewEECsa5QsYiPB8Gl_5image"}
!71 = distinct !{!71, !70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute7PreviewEECsa5QsYiPB8Gl_5image: argument 0"}
!72 = distinct !{!72, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!73 = distinct !{!73, !72, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!74 = distinct !{!74, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!75 = distinct !{!75, !74, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!76 = distinct !{!76, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image"}
!77 = distinct !{!77, !76, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!79 = distinct !{!79, !78, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!80 = distinct !{!80, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!81 = distinct !{!81, !80, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!83 = distinct !{!83, !82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!84 = distinct !{!84, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!85 = distinct !{!85, !84, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!87 = distinct !{!87, !86, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!89 = distinct !{!89, !88, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!90 = distinct !{!90, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!91 = distinct !{!91, !90, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!92 = distinct !{!92, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!93 = distinct !{!93, !92, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!94 = distinct !{!94, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!95 = distinct !{!95, !94, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!96 = distinct !{!96, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!97 = distinct !{!97, !96, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!98 = distinct !{!98, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!99 = distinct !{!99, !98, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!100 = distinct !{!100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!101 = distinct !{!101, !100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!102 = distinct !{!102, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!103 = distinct !{!103, !102, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!104 = distinct !{!104, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!105 = distinct !{!105, !104, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!107 = distinct !{!107, !106, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!108 = distinct !{!108, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image"}
!109 = distinct !{!109, !108, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image: argument 0"}
!110 = distinct !{!110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image"}
!111 = distinct !{!111, !110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute11ChannelListEECsa5QsYiPB8Gl_5image: argument 0"}
!112 = !{i64 -2, i64 27}
!113 = !{!29}
!114 = !{!31}
!115 = !{!33}
!116 = !{!35}
!117 = !{!37}
!118 = !{!39}
!119 = !{!41}
!120 = !{!43}
!121 = !{!45}
!122 = !{!47}
!123 = !{i64 -1, i64 27}
!124 = !{!49}
!125 = !{!51}
!126 = !{!53}
!127 = !{!55}
!128 = !{!57}
!129 = !{!59}
!130 = !{!61}
!131 = !{!63}
!132 = !{!65}
!133 = !{!67}
!134 = !{!69}
!135 = !{!71}
!136 = !{!73}
!137 = !{!75}
!138 = !{!77}
!139 = !{!79}
!140 = !{!81}
!141 = !{!83}
!142 = !{!85}
!143 = !{!87}
!144 = !{!89}
!145 = !{!91}
!146 = !{!93}
!147 = !{!95}
!148 = !{!97}
!149 = !{!99}
!150 = !{!101}
!151 = !{!103}
!152 = !{!105}
!153 = !{!107}
!154 = !{!109}
!155 = !{!111}
!156 = distinct !{!156, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image"}
!157 = distinct !{!157, !156, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image: argument 0"}
!158 = distinct !{!158, !156, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image: argument 1"}
!159 = distinct !{!159, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image"}
!160 = distinct !{!160, !159, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image: argument 0"}
!161 = distinct !{!161, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E10triple_mutCsa5QsYiPB8Gl_5image"}
!162 = distinct !{!162, !161, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E10triple_mutCsa5QsYiPB8Gl_5image: argument 1"}
!163 = distinct !{!163, !159, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E4pushCsa5QsYiPB8Gl_5image: argument 1"}
!164 = distinct !{!164, !161, !"_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E10triple_mutCsa5QsYiPB8Gl_5image: argument 0"}
!165 = !{!157}
!166 = !{!158}
!167 = !{!162, !160}
!168 = !{!164, !163}
!169 = !{!160}
!170 = !{!163}
!171 = distinct !{!171, !"_RINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB6_10IfdDecoder21find_tag_unsigned_vectECsa5QsYiPB8Gl_5image"}
!172 = distinct !{!172, !171, !"_RINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB6_10IfdDecoder21find_tag_unsigned_vectECsa5QsYiPB8Gl_5image: argument 0"}
!173 = distinct !{!173, !171, !"_RINvMs8_NtCs53gkmrwjETj_4tiff7decoderNtB6_10IfdDecoder21find_tag_unsigned_vectECsa5QsYiPB8Gl_5image: argument 1"}
!174 = !{!172}
!175 = !{!172, !173}
!176 = !{!173}
!177 = distinct !{!177, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image"}
!178 = distinct !{!178, !177, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image: argument 0"}
!179 = distinct !{!179, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image"}
!180 = distinct !{!180, !179, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtCs53gkmrwjETj_4tiff7decoder6stream9LZWReaderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image: argument 0"}
!181 = distinct !{!181, !"_RNvMs2_NtNtCsgidZRN39rux_6flate24zlib4readINtB5_11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image"}
!182 = distinct !{!182, !181, !"_RNvMs2_NtNtCsgidZRN39rux_6flate24zlib4readINtB5_11ZlibDecoderQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newCsa5QsYiPB8Gl_5image: argument 0"}
end_hunk_1
