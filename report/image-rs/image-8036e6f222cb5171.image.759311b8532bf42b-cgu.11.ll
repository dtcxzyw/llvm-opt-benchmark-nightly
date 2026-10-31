Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
bb.jk:                                            ; preds = %bb.is
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 2, !alias.scope !677
  %i.akd = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.ake = icmp ult i64 %.sroa.027.0857.i, %i.akd
  br i1 %i.ake, label %bb.jl, label %.invoke1686.i

bb.jl:                                            ; preds = %bb.jk
  %i.akf = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.akg = getelementptr inbounds nuw [30 x i8], ptr %i.akf, i64 %.sroa.027.0857.i
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 20
  store i8 0, ptr %i.akh, align 1, !noalias !676
  br label %bb.jj

bb.jm:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !689
  %.val74.i = load i8, ptr %i.nm, align 1, !noalias !689
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !689
  %i.aki = load i16, ptr %i.dm, align 4, !alias.scope !716, !noundef !5
  %i.akj = zext i16 %i.aki to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !717
  %i.akk = load ptr, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akl = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  %i.akm = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akn = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr noalias nofree noundef nonnull sret([81 x i8]) align 1 captures(none) dereferenceable(81) %i.e, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i, i64 noundef range(i64 0, 65535) %.sroa.025.0858.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akk, i64 noundef %i.akl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akm, i64 noundef %i.akn)
          to label %.noexc235.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc235.i:                                      ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !717
  %i.ako = load ptr, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akp = load i64, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  %i.akq = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akr = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr noalias nofree noundef nonnull sret([81 x i8]) align 1 captures(none) dereferenceable(81) %i.d, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i, i64 noundef range(i64 0, 65535) %.sroa.025.0858.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akq, i64 noundef %i.akr)
          to label %.noexc236.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc236.i:                                      ; preds = %.noexc235.i
  switch i8 %.val74.i, label %default.unreachable.i.i [
    i8 0, label %bb.jn
    i8 1, label %bb.jo
    i8 2, label %bb.jp
    i8 3, label %bb.jq
  ]

default.unreachable.i.i:                          ; preds = %.noexc236.i
  unreachable

bb.jn:                                            ; preds = %.noexc236.i
  %i.aks = icmp ne i64 %.sroa.027.0857.i, 0       ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 9, i1 noundef zeroext %i.qj, i1 noundef zeroext %i.aks)
          to label %.noexc237.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc237.i:                                      ; preds = %bb.jn
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 9, i1 noundef zeroext %i.qj, i1 noundef zeroext %i.aks)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jo:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc239.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc239.i:                                      ; preds = %bb.jo
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jp:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc241.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc241.i:                                      ; preds = %bb.jp
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jq:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc243.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc243.i:                                      ; preds = %bb.jq
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.loopexit.i233.i:                                 ; preds = %.noexc243.i, %.noexc241.i, %.noexc239.i, %.noexc237.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nn, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc245.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc245.i:                                      ; preds = %.loopexit.i233.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.no, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc246.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc246.i:                                      ; preds = %.noexc245.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.np, i64 noundef 1, i64 noundef 5, i64 noundef 9)
          to label %.noexc247.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc247.i:                                      ; preds = %.noexc246.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nq, i64 noundef 1, i64 noundef 5, i64 noundef 9)
          to label %.noexc248.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc248.i:                                      ; preds = %.noexc247.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nr, i64 noundef 5, i64 noundef 1, i64 noundef 9)
          to label %.noexc249.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc249.i:                                      ; preds = %.noexc248.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.ns, i64 noundef 5, i64 noundef 1, i64 noundef 9)
          to label %.noexc250.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc250.i:                                      ; preds = %.noexc249.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nt, i64 noundef 5, i64 noundef 5, i64 noundef 9)
          to label %.noexc251.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc251.i:                                      ; preds = %.noexc250.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nu, i64 noundef 5, i64 noundef 5, i64 noundef 9)
          to label %.noexc252.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc252.i:                                      ; preds = %.noexc251.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akm, i64 noundef %i.akn, ptr noalias nofree noundef nonnull %i.akk, i64 noundef %i.akl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc253.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc253.i:                                      ; preds = %.noexc252.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akq, i64 noundef %i.akr, ptr noalias nofree noundef nonnull %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc254.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc254.i:                                      ; preds = %.noexc253.i
  %i.akt = load i64, ptr %i.nv, align 8, !alias.scope !716, !noundef !5 ; 4 uses
  %i.aku = load ptr, ptr %i.nw, align 8, !alias.scope !716, !nonnull !5
  %i.akv = load i64, ptr %i.nx, align 8, !alias.scope !716 ; 4 uses
  %i.akw = load ptr, ptr %i.ny, align 8, !alias.scope !716, !nonnull !5
  br label %bb.jr

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %vec.epilog.middle.block, %.noexc261.i
  %exitcond45.not.i.i = icmp eq i64 %i.akx, 8
  br i1 %exitcond45.not.i.i, label %bb.jw, label %bb.jr

bb.jr:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, %.noexc254.i
  %.sroa.09.034.i.i = phi i64 [ 0, %.noexc254.i ], [ %i.akx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 2 uses
  %i.akx = add nuw nsw i64 %.sroa.09.034.i.i, 1   ; 3 uses
  %i.aky = add nuw nsw i64 %.sroa.09.034.i.i, %i.ql
  %i.akz = mul nuw nsw i64 %i.aky, %i.akj
  %i.ala = add nuw nsw i64 %i.akz, %.sroa.027.0857.i
  %i.alb = shl nuw nsw i64 %i.ala, 3              ; 8 uses
  %i.alc = mul nuw nsw i64 %i.akx, 9
  %i.ald = add nuw nsw i64 %i.alc, 1              ; 2 uses
  %i.ale = icmp ugt i64 %i.alb, %i.akt
  br i1 %i.ale, label %.invoke.i, label %bb.js, !prof !11

bb.js:                                            ; preds = %bb.jr
  %i.alf = sub nuw i64 %i.akt, %i.alb             ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aku, i64 %i.alb ; 2 uses
  %i.alh = icmp ugt i64 %i.alf, 7
  br i1 %i.alh, label %bb.jt, label %.invoke.i, !prof !13

bb.jt:                                            ; preds = %bb.js
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.alj = icmp ugt i64 %i.alb, %i.akv
  br i1 %i.alj, label %.invoke.i, label %bb.ju, !prof !11

bb.ju:                                            ; preds = %bb.jt
  %i.alk = sub nuw i64 %i.akv, %i.alb             ; 2 uses
  %i.all = icmp ugt i64 %i.alk, 7
  br i1 %i.all, label %bb.jv, label %.invoke.i, !prof !13

.invoke.i:                                        ; preds = %bb.jh, %bb.jc, %bb.jb, %bb.jf, %bb.je, %bb.ju, %bb.jt, %bb.js, %bb.jr
  %i.alm = phi i64 [ %i.alb, %bb.jt ], [ 0, %bb.jf ], [ 0, %bb.ju ], [ %i.alb, %bb.jr ], [ 0, %bb.js ], [ %i.ahm, %bb.je ], [ 0, %bb.jb ], [ %i.ajz, %bb.jh ], [ 0, %bb.jc ]
  %i.aln = phi i64 [ %i.akv, %bb.jt ], [ 16, %bb.jf ], [ 8, %bb.ju ], [ %i.akt, %bb.jr ], [ 8, %bb.js ], [ %i.agq, %bb.je ], [ 16, %bb.jb ], [ %i.afe, %bb.jh ], [ 16, %bb.jc ]
  %i.alo = phi i64 [ %i.akv, %bb.jt ], [ %i.aho, %bb.jf ], [ %i.alk, %bb.ju ], [ %i.akt, %bb.jr ], [ %i.alf, %bb.js ], [ %i.agq, %bb.je ], [ %i.afn, %bb.jb ], [ %i.afe, %bb.jh ], [ %i.afp, %bb.jc ]
  %i.alp = phi ptr [ @118, %bb.jt ], [ @102, %bb.jf ], [ @117, %bb.ju ], [ @119, %bb.jr ], [ @116, %bb.js ], [ @103, %bb.je ], [ @100, %bb.jb ], [ @104, %bb.jh ], [ @101, %bb.jc ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.alm, i64 noundef %i.aln, i64 noundef %i.alo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alp) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.alq = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.alb ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !718
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.alg, ptr noundef nonnull %i.ali, ptr noundef nonnull %i.alq, ptr noundef nonnull %i.alr)
          to label %.noexc259.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc259.i:                                      ; preds = %bb.jv
  %i.als = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ald ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EINtB13_4IterhEEINtB5_7ZipImplBW_B1A_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.als, ptr noundef nonnull %i.alt)
          to label %.noexc260.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc260.i:                                      ; preds = %.noexc259.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !718
  %i.alu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ald ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.alu, ptr noundef nonnull %i.alv)
          to label %.noexc261.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc261.i:                                      ; preds = %.noexc260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !noalias !717 ; 7 uses
  %.sroa.0.0.copyload.i.i645 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.41.0.copyload.i.i644 = ptrtoaddr ptr %.sroa.41.0.copyload.i.i to i64 ; 3 uses
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !717 ; 9 uses
  %.sroa.63.0.copyload.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.63.0.copyload.i.i646 = ptrtoaddr ptr %.sroa.63.0.copyload.i.i to i64 ; 2 uses
  %.sroa.74.0.copyload.i.i = load i64, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.85.0.copyload.i.i = load ptr, ptr %.sroa.85.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.85.0.copyload.i.i648 = ptrtoaddr ptr %.sroa.85.0.copyload.i.i to i64 ; 2 uses
  %.sroa.96.0.copyload.i.i = load i64, ptr %.sroa.96.0..sroa_idx.i.i, align 8, !noalias !717 ; 8 uses
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !717 ; 5 uses
  %i.alw = icmp ult i64 %.sroa.96.0.copyload.i.i, %.sroa.11.0.copyload.i.i
  br i1 %i.alw, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i

iter.check:                                       ; preds = %.noexc261.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.41.0.copyload.i.i), "nonnull"(ptr %.sroa.63.0.copyload.i.i), "nonnull"(ptr %.sroa.85.0.copyload.i.i) ]
  %i.alx = sub nuw i64 %.sroa.11.0.copyload.i.i, %.sroa.96.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.alx, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aly = sub i64 %.sroa.0.0.copyload.i.i645, %.sroa.41.0.copyload.i.i644
  %diff.check = icmp ugt i64 %i.aly, -16
  %i.alz = add i64 %.sroa.52.0.copyload.i.i, %.sroa.0.0.copyload.i.i645
  %i.ama = sub i64 %.sroa.63.0.copyload.i.i646, %i.alz
  %diff.check647 = icmp ugt i64 %i.ama, -16
  %conflict.rdx = or i1 %diff.check, %diff.check647
  %i.amb = add i64 %.sroa.52.0.copyload.i.i, %.sroa.74.0.copyload.i.i
  %i.amc = add i64 %i.amb, %.sroa.0.0.copyload.i.i645
  %i.amd = sub i64 %.sroa.85.0.copyload.i.i648, %i.amc
  %diff.check649 = icmp ugt i64 %i.amd, -16
  %conflict.rdx650 = or i1 %conflict.rdx, %diff.check649
  %i.ame = add i64 %.sroa.52.0.copyload.i.i, %.sroa.41.0.copyload.i.i644
  %i.amf = sub i64 %.sroa.63.0.copyload.i.i646, %i.ame
  %diff.check651 = icmp ugt i64 %i.amf, -16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %2 = add i64 %.sroa.52.0.copyload.i.i, %.sroa.74.0.copyload.i.i
  %i.amg = add i64 %2, %.sroa.41.0.copyload.i.i644
  %i.amh = sub i64 %.sroa.85.0.copyload.i.i648, %i.amg
  %diff.check653 = icmp ugt i64 %i.amh, -16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check655 = icmp ult i64 %i.alx, 16
  br i1 %min.iters.check655, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ami = and i64 %i.alx, 12
  %n.vec = and i64 %i.alx, -16                    ; 4 uses
  %i.amj = add i64 %.sroa.96.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amk = add nuw i64 %.sroa.96.0.copyload.i.i, %index ; 2 uses
  %i.aml = add i64 %i.amk, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amm = add i64 %i.aml, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.amk
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.aml
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amm
  %wide.load = load <16 x i8>, ptr %i.amp, align 1, !noalias !720
  %wide.load656 = load <16 x i8>, ptr %i.amo, align 1, !noalias !720
  store <16 x i8> %wide.load, ptr %i.amn, align 1, !noalias !720
  store <16 x i8> %wide.load656, ptr %i.amq, align 1, !noalias !720
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.amr = icmp eq i64 %index.next, %n.vec
  br i1 %i.amr, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.alx, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ami, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vec.epilog.ph, !prof !721

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec657 = and i64 %i.alx, -4                  ; 3 uses
  %i.ams = add i64 %.sroa.96.0.copyload.i.i, %n.vec657
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index658 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next661, %vec.epilog.vector.body ] ; 2 uses
  %i.amt = add nuw i64 %.sroa.96.0.copyload.i.i, %index658 ; 2 uses
  %i.amu = add i64 %i.amt, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amv = add i64 %i.amu, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.amt
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.amu
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amv
  %wide.load659 = load <4 x i8>, ptr %i.amy, align 1, !noalias !720
  %wide.load660 = load <4 x i8>, ptr %i.amx, align 1, !noalias !720
  store <4 x i8> %wide.load659, ptr %i.amw, align 1, !noalias !720
  store <4 x i8> %wide.load660, ptr %i.amz, align 1, !noalias !720
  %index.next661 = add nuw i64 %index658, 4       ; 2 uses
  %i.ana = icmp eq i64 %index.next661, %n.vec657
  br i1 %i.ana, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !669

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n662 = icmp eq i64 %i.alx, %n.vec657
  br i1 %cmp.n662, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.96.033.i.i.ph = phi i64 [ %.sroa.96.0.copyload.i.i, %iter.check ], [ %.sroa.96.0.copyload.i.i, %vector.memcheck ], [ %i.amj, %vec.epilog.iter.check ], [ %i.ams, %vec.epilog.middle.block ] ; 6 uses
  %i.anb = sub i64 %.sroa.11.0.copyload.i.i, %.sroa.96.033.i.i.ph
  %.neg = add i64 %.sroa.96.033.i.i.ph, 1
  %xtraiter861 = and i64 %i.anb, 1
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.anc = add i64 %.sroa.96.033.i.i.ph, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.and = add i64 %i.anc, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.and
  %i.anf = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i.ph
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.anc
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.and
  %i.ani = add nuw i64 %.sroa.96.033.i.i.ph, 1
  %i.anj = load i8, ptr %i.ang, align 1, !noalias !720, !noundef !5
  %i.ank = load i8, ptr %i.anf, align 1, !noalias !720, !noundef !5
  store i8 %i.anj, ptr %i.ane, align 1, !noalias !720
  store i8 %i.ank, ptr %i.anh, align 1, !noalias !720
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.96.033.i.i.unr = phi i64 [ %.sroa.96.033.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ani, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.anl = icmp eq i64 %.sroa.11.0.copyload.i.i, %.neg
  br i1 %i.anl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.96.033.i.i = phi i64 [ %i.aob, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.96.033.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.anm = add i64 %.sroa.96.033.i.i, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.ann = add i64 %i.anm, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.anm
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.ann
  %i.ans = add nuw i64 %.sroa.96.033.i.i, 1       ; 2 uses
  %i.ant = load i8, ptr %i.anq, align 1, !noalias !720, !noundef !5
  %i.anu = load i8, ptr %i.anp, align 1, !noalias !720, !noundef !5
  store i8 %i.ant, ptr %i.ano, align 1, !noalias !720
  store i8 %i.anu, ptr %i.anr, align 1, !noalias !720
  %i.anv = add i64 %i.ans, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.anw = add i64 %i.anv, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.anw
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.ans
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.anv
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.anw
  %i.aob = add nuw i64 %.sroa.96.033.i.i, 2       ; 2 uses
  %i.aoc = load i8, ptr %i.anz, align 1, !noalias !720, !noundef !5
  %i.aod = load i8, ptr %i.any, align 1, !noalias !720, !noundef !5
  store i8 %i.aoc, ptr %i.anx, align 1, !noalias !720
  store i8 %i.aod, ptr %i.aoa, align 1, !noalias !720
  %exitcond.not.i234.i.1 = icmp eq i64 %i.aob, %.sroa.11.0.copyload.i.i
  br i1 %exitcond.not.i234.i.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !670

bb.jw:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !689
  %i.aoe = load i64, ptr %i.nz, align 8, !alias.scope !722, !noundef !5 ; 3 uses
  %i.aof = load i64, ptr %i.bm, align 8, !range !17, !alias.scope !722, !noundef !5
  %i.aog = icmp eq i64 %i.aoe, %i.aof
  br i1 %i.aog, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm) #30
          to label %bb.jy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.aoh = load ptr, ptr %i.oa, align 8, !alias.scope !722, !nonnull !5, !noundef !5
  %i.aoi = getelementptr inbounds nuw [30 x i8], ptr %i.aoh, i64 %i.aoe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aoi, ptr noundef nonnull align 1 dereferenceable(30) %i.ax, i64 30, i1 false), !noalias !676
  %i.aoj = add i64 %i.aoe, 1
  store i64 %i.aoj, ptr %i.nz, align 8, !alias.scope !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !689
  %exitcond.not.i = icmp eq i64 %i.qq, %i.qi
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ek

.invoke1686.i:                                    ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jk, %bb.jj, %.lr.ph864.i
  %i.aok = phi i64 [ %i.qa, %.lr.ph864.i ], [ %.sroa.027.0857.i, %bb.jj ], [ %.sroa.027.0857.i, %bb.jk ], [ %.sroa.027.0857.i, %bb.jz ], [ %.sroa.027.0857.i, %bb.ka ], [ %.sroa.027.0857.i, %bb.kb ], [ %.sroa.027.0857.i, %bb.kc ], [ %.sroa.027.0857.i, %bb.kd ], [ %.sroa.027.0857.i, %bb.ke ], [ %.sroa.027.0857.i, %bb.kf ]
  %i.aol = phi i64 [ %i.qb, %.lr.ph864.i ], [ %i.app, %bb.ke ], [ %i.apk, %bb.kd ], [ %i.apf, %bb.kc ], [ %i.apa, %bb.kb ], [ %i.aov, %bb.ka ], [ %i.aoq, %bb.jz ], [ %i.akd, %bb.jk ], [ %i.akb, %bb.jj ], [ %i.apu, %bb.kf ]
  %i.aom = phi ptr [ @77, %.lr.ph864.i ], [ @80, %bb.ke ], [ @80, %bb.kd ], [ @80, %bb.kc ], [ @80, %bb.kb ], [ @80, %bb.ka ], [ @80, %bb.jz ], [ @79, %bb.jk ], [ @80, %bb.jj ], [ @80, %bb.kf ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aok, i64 noundef %i.aol, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aom) #28
          to label %.cont1687.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.cont1687.i:                                      ; preds = %.invoke1686.i
  unreachable

bb.jz:                                            ; preds = %bb.jj
  %i.aon = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aoo = getelementptr inbounds nuw [30 x i8], ptr %i.aon, i64 %.sroa.027.0857.i
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 21
  store i8 0, ptr %i.aop, align 1, !noalias !676
  store i8 0, ptr %i.ol, align 4, !alias.scope !677
  %i.aoq = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.aor = icmp ult i64 %.sroa.027.0857.i, %i.aoq
  br i1 %i.aor, label %bb.ka, label %.invoke1686.i

bb.ka:                                            ; preds = %bb.jz
  %i.aos = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aot = getelementptr inbounds nuw [30 x i8], ptr %i.aos, i64 %.sroa.027.0857.i
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 22
  store i8 0, ptr %i.aou, align 1, !noalias !676
  store i8 0, ptr %i.om, align 1, !alias.scope !677
  %i.aov = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.aow = icmp ult i64 %.sroa.027.0857.i, %i.aov
  br i1 %i.aow, label %bb.kb, label %.invoke1686.i

bb.kb:                                            ; preds = %bb.ka
  %i.aox = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aoy = getelementptr inbounds nuw [30 x i8], ptr %i.aox, i64 %.sroa.027.0857.i
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 23
  store i8 0, ptr %i.aoz, align 1, !noalias !676
  store i8 0, ptr %i.on, align 2, !alias.scope !677
  %i.apa = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.apb = icmp ult i64 %.sroa.027.0857.i, %i.apa
  br i1 %i.apb, label %bb.kc, label %.invoke1686.i

bb.kc:                                            ; preds = %bb.kb
  %i.apc = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.apd = getelementptr inbounds nuw [30 x i8], ptr %i.apc, i64 %.sroa.027.0857.i
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 24
  store i8 0, ptr %i.ape, align 1, !noalias !676
  store i8 0, ptr %i.oo, align 1, !alias.scope !677
  %i.apf = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.apg = icmp ult i64 %.sroa.027.0857.i, %i.apf
  br i1 %i.apg, label %bb.kd, label %.invoke1686.i

bb.kd:                                            ; preds = %bb.kc
  %i.aph = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.api = getelementptr inbounds nuw [30 x i8], ptr %i.aph, i64 %.sroa.027.0857.i
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 25
  store i8 0, ptr %i.apj, align 1, !noalias !676
end_hunk_0
