Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.1?download=true
inline.NumInlined: 231
inline.NumDeleted: 109
begin_hunk_0_@_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj3_EB4_:bb.a
  br i1 %i.f, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #9, !noalias !6
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.i
  %i.g = sub nuw nsw i64 %1, %i.c                 ; 2 uses
  %i.h = urem i64 %i.g, %i.e                      ; 3 uses
  %i.i = sub nuw nsw i64 %i.g, %i.h               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = mul i64 %10, %9                          ; 4 uses
  %i.l = icmp ult i64 %i.k, %10
  %.not62 = icmp ugt i64 %i.k, %3
  %or.cond = or i1 %i.l, %.not62
  br i1 %or.cond, label %bb.k, label %bb.l, !prof !4

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %10, i64 noundef %i.k, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #9
  unreachable

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %10 ; 4 uses
  %i.n = shl i64 %10, 1                           ; 7 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.m, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !10
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.l
  %i.p = sub nuw i64 %i.k, %10                    ; 2 uses
  %i.q = urem i64 %i.p, %i.n                      ; 3 uses
  %i.r = sub nuw nsw i64 %i.p, %i.q               ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = and i64 %10, -2                          ; 9 uses
  %.not63 = icmp eq i64 %i.t, 0
  br i1 %.not63, label %bb.p, label %bb.n, !prof !5

bb.n:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %bb.o, label %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75, !prof !5

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #9, !noalias !14
  unreachable

_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75: ; preds = %bb.n
  %i.v = add nsw i64 %i.a, -1                     ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp ugt i64 %i.e, %i.i
  br i1 %.not.i.i.i.i.i.i.i153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75
  %.not.i = icmp ugt i64 %i.a, %i.t
  %i.w = sub i64 %i.t, %i.a                       ; 2 uses
  %.not.i82 = icmp slt i64 %10, 0
  %.not69 = icmp samesign ugt i64 %8, %10
  %.not70 = icmp samesign ugt i64 %.sroa.0.0, %i.a
  %.not71 = icmp ugt i64 %.sroa.0.0, %i.w
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !5

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not.i.i15.i.i.i.i.i.us = icmp ugt i64 %i.n, %i.r
  %.not.i.i.i.i9.i.i.i.us = icmp samesign ugt i64 %i.t, %5
  %or.cond296 = select i1 %.not.i.i15.i.i.i.i.i.us, i1 true, i1 %.not.i.i.i.i9.i.i.i.us
  %.not.i.i.i.i.i.us = icmp samesign ugt i64 %i.t, %7
  %or.cond297 = select i1 %or.cond296, i1 true, i1 %.not.i.i.i.i.i.us
  br i1 %or.cond297, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #9, !noalias !18
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i81 = icmp samesign ugt i64 %i.c, %i.e
  %.not.i.i15.i.i.i.i.i.us177 = icmp ugt i64 %i.n, %i.r
  %.not.i.i.i.i9.i.i.i.us178 = icmp ugt i64 %i.t, %5
  %or.cond298 = or i1 %.not.i.i15.i.i.i.i.i.us177, %.not.i.i.i.i9.i.i.i.us178
  %.not.i.i.i.i.i.us179 = icmp samesign ugt i64 %i.t, %7
  %or.cond299 = select i1 %or.cond298, i1 true, i1 %.not.i.i.i.i.i.us179 ; 6 uses
  br i1 %.not.i81, label %.lr.ph.split.split.us, label %.lr.ph.split.split, !prof !5

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us: ; preds = %.lr.ph.split.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #9, !noalias !22
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not.i82, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !5

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us193

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us193: ; preds = %.lr.ph.split.split.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #9, !noalias !26
  unreachable

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not69, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split, !prof !5

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us207

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us207: ; preds = %.lr.ph.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #9
  unreachable

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not70, label %.lr.ph.split.split.split.split.split.us, label %.lr.ph.split.split.split.split.split, !prof !4

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us221

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us221: ; preds = %.lr.ph.split.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #9
  unreachable

.lr.ph.split.split.split.split.split:             ; preds = %.lr.ph.split.split.split.split
  br i1 %.not71, label %.lr.ph.split.split.split.split.split.split.us, label %.lr.ph.split.split.split.split.split.split.preheader, !prof !4

.lr.ph.split.split.split.split.split.split.preheader: ; preds = %.lr.ph.split.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel: ; preds = %.lr.ph.split.split.split.split.split.split.preheader
  %i.x = sub nuw nsw i64 %i.i, %i.e               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 %i.a ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %10
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %.sroa.0.0)
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull %i.aa, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.0.0)
  %.not.i.i.i.i.i.i.i.peel = icmp samesign ugt i64 %i.e, %i.x
  br i1 %.not.i.i.i.i.i.i.i.peel, label %._crit_edge, label %.lr.ph.split.split.split.split.split.split

.lr.ph.split.split.split.split.split.split.us:    ; preds = %.lr.ph.split.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us235

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us235: ; preds = %.lr.ph.split.split.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #9
  unreachable

bb.p:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #9
  unreachable

.lr.ph.split.split.split.split.split.split:       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80
  %.sroa.0.0131162.pn = phi ptr [ %.sroa.0.0131162, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.m, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5.0161.pn = phi i64 [ %.sroa.5.0161, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.r, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.6119.0160.pn = phi ptr [ %.sroa.6119.0160, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.d, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.9120.0159 = phi i64 [ %i.ac, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.x, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.pn = phi ptr [ %i.af, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %4, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5123.0157.in = phi i64 [ %i.ae, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %5, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ] ; 2 uses
  %.pn295 = phi ptr [ %i.ai, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %6, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5126.0154.in = phi i64 [ %i.ah, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %7, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ] ; 2 uses
  %.sroa.5126.0154 = add nsw i64 %.sroa.5126.0154.in, -1
  %.sroa.6119.0160 = getelementptr inbounds nuw i8, ptr %.sroa.6119.0160.pn, i64 %i.e ; 3 uses
  %.sroa.5.0161 = sub nuw nsw i64 %.sroa.5.0161.pn, %i.n ; 2 uses
  %.sroa.0.0131162 = getelementptr inbounds nuw i8, ptr %.sroa.0.0131162.pn, i64 %i.n ; 3 uses
  %i.ac = sub nuw nsw i64 %.sroa.9120.0159, %i.e  ; 2 uses
  %.not.i.i15.i.i.i.i.i = icmp ugt i64 %i.n, %.sroa.5.0161
  %.sroa.5123.0157 = add nsw i64 %.sroa.5123.0157.in, -1
  %i.ad = icmp ult i64 %.sroa.5123.0157, %i.v
  %or.cond310 = select i1 %.not.i.i15.i.i.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond310, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.split.split.split.split
  %i.ae = sub nsw i64 %.sroa.5123.0157.in, %i.a   ; 2 uses
  %.not.i.i.i.i9.i.i.i = icmp ugt i64 %i.t, %i.ae
  br i1 %.not.i.i.i.i9.i.i.i, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr i8, ptr %.pn, i64 %i.a    ; 4 uses
  %i.ag = icmp ult i64 %.sroa.5126.0154, %i.v
  br i1 %i.ag, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = sub nsw i64 %.sroa.5126.0154.in, %i.a   ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.t, %i.ah
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80: ; preds = %bb.s
  %i.ai = getelementptr i8, ptr %.pn295, i64 %i.a ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.a ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.a ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6119.0160, i64 %i.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0131162, i64 %10
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull %.sroa.6119.0160, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0131162, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %.sroa.0.0)
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull %i.al, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.0.0)
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.e, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph.split.split.split.split.split.split, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.r, %bb.s, %.lr.ph.split.split.split.split.split.split, %bb.q, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80, %.lr.ph.split.split.split.split.split.split.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel, %.lr.ph.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.split.split.us, %.lr.ph.split.split.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.us, %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75
  %i.an = icmp eq i64 %i.h, 0
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ao = lshr i64 %9, 1
  %11 = or i64 %9, -2
  %sext = add nsw i64 %11, 1
  %.sroa.029.0 = add nsw i64 %sext, %i.ao
  %i.ap = mul i64 %.sroa.029.0, %i.a              ; 8 uses
  %i.aq = icmp ugt i64 %i.ap, %5
  br i1 %i.aq, label %bb.w, label %bb.v, !prof !5

bb.u:                                             ; preds = %bb.ae, %._crit_edge
  ret void

bb.v:                                             ; preds = %bb.t
  %i.ar = sub nuw nsw i64 %5, %i.ap               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ap
  %i.at = icmp ugt i64 %i.ap, %7
  br i1 %i.at, label %bb.y, label %bb.x, !prof !5

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #9
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.au = sub nuw nsw i64 %7, %i.ap               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 %i.ap
  %.not66 = icmp ugt i64 %8, %i.q
  br i1 %.not66, label %bb.z, label %bb.aa, !prof !5

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #9
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #9
  unreachable

bb.aa:                                            ; preds = %bb.x
  %.not67 = icmp ugt i64 %.sroa.0.0, %i.ar
  br i1 %.not67, label %bb.ab, label %bb.ac, !prof !4

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #9
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not68 = icmp ugt i64 %.sroa.0.0, %i.au
  br i1 %.not68, label %bb.ad, label %bb.ae, !prof !4

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #9
  unreachable

bb.ae:                                            ; preds = %bb.ac
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj3_EB4_(ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj4_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %10, 1                          ; 15 uses
  %i.b = lshr i64 %8, 1
  %.sroa.0.0 = sub i64 %8, %i.b                   ; 32 uses
  %.not58 = icmp ugt i64 %8, %3
  br i1 %.not58, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not59 = icmp ugt i64 %.sroa.0.0, %5
  br i1 %.not59, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not60 = icmp samesign ugt i64 %.sroa.0.0, %7
  br i1 %.not60, label %bb.f, label %bb.g, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.c = shl i64 %8, 2                            ; 12 uses
  %.not61 = icmp ugt i64 %i.c, %1
  br i1 %.not61, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_(ptr noalias nofree noundef nonnull %0, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.0.0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = shl i64 %8, 3                            ; 9 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #9, !noalias !32
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.i
  %i.g = sub nuw nsw i64 %1, %i.c                 ; 2 uses
  %i.h = urem i64 %i.g, %i.e                      ; 3 uses
  %i.i = sub nuw nsw i64 %i.g, %i.h               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = mul i64 %10, %9                          ; 4 uses
  %i.l = icmp ult i64 %i.k, %10
  %.not62 = icmp ugt i64 %i.k, %3
  %or.cond = or i1 %i.l, %.not62
  br i1 %or.cond, label %bb.k, label %bb.l, !prof !4

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %10, i64 noundef %i.k, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #9
  unreachable

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %10 ; 4 uses
  %i.n = shl i64 %10, 1                           ; 7 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.m, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !36
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.l
  %i.p = sub nuw i64 %i.k, %10                    ; 2 uses
  %i.q = urem i64 %i.p, %i.n                      ; 3 uses
  %i.r = sub nuw nsw i64 %i.p, %i.q               ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = and i64 %10, -2                          ; 9 uses
  %.not63 = icmp eq i64 %i.t, 0
  br i1 %.not63, label %bb.p, label %bb.n, !prof !5

bb.n:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %bb.o, label %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75, !prof !5

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #9, !noalias !40
  unreachable

_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75: ; preds = %bb.n
  %i.v = add nsw i64 %i.a, -1                     ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp ugt i64 %i.e, %i.i
  br i1 %.not.i.i.i.i.i.i.i153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75
  %.not.i = icmp ugt i64 %i.a, %i.t
  %i.w = sub i64 %i.t, %i.a                       ; 2 uses
  %.not.i82 = icmp slt i64 %10, 0
  %.not69 = icmp samesign ugt i64 %8, %10
  %.not70 = icmp samesign ugt i64 %.sroa.0.0, %i.a
  %.not71 = icmp ugt i64 %.sroa.0.0, %i.w
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !5

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not.i.i15.i.i.i.i.i.us = icmp ugt i64 %i.n, %i.r
  %.not.i.i.i.i9.i.i.i.us = icmp samesign ugt i64 %i.t, %5
  %or.cond296 = select i1 %.not.i.i15.i.i.i.i.i.us, i1 true, i1 %.not.i.i.i.i9.i.i.i.us
  %.not.i.i.i.i.i.us = icmp samesign ugt i64 %i.t, %7
  %or.cond297 = select i1 %or.cond296, i1 true, i1 %.not.i.i.i.i.i.us
  br i1 %or.cond297, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #9, !noalias !44
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i81 = icmp samesign ugt i64 %i.c, %i.e
  %.not.i.i15.i.i.i.i.i.us177 = icmp ugt i64 %i.n, %i.r
  %.not.i.i.i.i9.i.i.i.us178 = icmp ugt i64 %i.t, %5
  %or.cond298 = or i1 %.not.i.i15.i.i.i.i.i.us177, %.not.i.i.i.i9.i.i.i.us178
  %.not.i.i.i.i.i.us179 = icmp samesign ugt i64 %i.t, %7
  %or.cond299 = select i1 %or.cond298, i1 true, i1 %.not.i.i.i.i.i.us179 ; 6 uses
  br i1 %.not.i81, label %.lr.ph.split.split.us, label %.lr.ph.split.split, !prof !5

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us: ; preds = %.lr.ph.split.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #9, !noalias !48
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not.i82, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !5

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us193

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us193: ; preds = %.lr.ph.split.split.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #9, !noalias !52
  unreachable

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not69, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split, !prof !5

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us207

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us207: ; preds = %.lr.ph.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #9
  unreachable

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not70, label %.lr.ph.split.split.split.split.split.us, label %.lr.ph.split.split.split.split.split, !prof !4

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us221

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us221: ; preds = %.lr.ph.split.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #9
  unreachable

.lr.ph.split.split.split.split.split:             ; preds = %.lr.ph.split.split.split.split
  br i1 %.not71, label %.lr.ph.split.split.split.split.split.split.us, label %.lr.ph.split.split.split.split.split.split.preheader, !prof !4

.lr.ph.split.split.split.split.split.split.preheader: ; preds = %.lr.ph.split.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel: ; preds = %.lr.ph.split.split.split.split.split.split.preheader
  %i.x = sub nuw nsw i64 %i.i, %i.e               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 %i.a ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %10
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %.sroa.0.0)
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull %i.aa, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.0.0)
  %.not.i.i.i.i.i.i.i.peel = icmp samesign ugt i64 %i.e, %i.x
  br i1 %.not.i.i.i.i.i.i.i.peel, label %._crit_edge, label %.lr.ph.split.split.split.split.split.split

.lr.ph.split.split.split.split.split.split.us:    ; preds = %.lr.ph.split.split.split.split.split
  br i1 %or.cond299, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us235

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.us235: ; preds = %.lr.ph.split.split.split.split.split.split.us
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #9
  unreachable

bb.p:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #9
  unreachable

.lr.ph.split.split.split.split.split.split:       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80
  %.sroa.0.0131162.pn = phi ptr [ %.sroa.0.0131162, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.m, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5.0161.pn = phi i64 [ %.sroa.5.0161, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.r, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.6119.0160.pn = phi ptr [ %.sroa.6119.0160, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.d, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.9120.0159 = phi i64 [ %i.ac, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %i.x, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.pn = phi ptr [ %i.af, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %4, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5123.0157.in = phi i64 [ %i.ae, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %5, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ] ; 2 uses
  %.pn295 = phi ptr [ %i.ai, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %6, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ]
  %.sroa.5126.0154.in = phi i64 [ %i.ah, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80 ], [ %7, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel ] ; 2 uses
  %.sroa.5126.0154 = add nsw i64 %.sroa.5126.0154.in, -1
  %.sroa.6119.0160 = getelementptr inbounds nuw i8, ptr %.sroa.6119.0160.pn, i64 %i.e ; 3 uses
  %.sroa.5.0161 = sub nuw nsw i64 %.sroa.5.0161.pn, %i.n ; 2 uses
  %.sroa.0.0131162 = getelementptr inbounds nuw i8, ptr %.sroa.0.0131162.pn, i64 %i.n ; 3 uses
  %i.ac = sub nuw nsw i64 %.sroa.9120.0159, %i.e  ; 2 uses
  %.not.i.i15.i.i.i.i.i = icmp ugt i64 %i.n, %.sroa.5.0161
  %.sroa.5123.0157 = add nsw i64 %.sroa.5123.0157.in, -1
  %i.ad = icmp ult i64 %.sroa.5123.0157, %i.v
  %or.cond310 = select i1 %.not.i.i15.i.i.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond310, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.split.split.split.split
  %i.ae = sub nsw i64 %.sroa.5123.0157.in, %i.a   ; 2 uses
  %.not.i.i.i.i9.i.i.i = icmp ugt i64 %i.t, %i.ae
  br i1 %.not.i.i.i.i9.i.i.i, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr i8, ptr %.pn, i64 %i.a    ; 4 uses
  %i.ag = icmp ult i64 %.sroa.5126.0154, %i.v
  br i1 %i.ag, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = sub nsw i64 %.sroa.5126.0154.in, %i.a   ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.t, %i.ah
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80: ; preds = %bb.s
  %i.ai = getelementptr i8, ptr %.pn295, i64 %i.a ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.a ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.a ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6119.0160, i64 %i.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0131162, i64 %10
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull %.sroa.6119.0160, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0131162, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %.sroa.0.0)
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull %i.al, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.0.0)
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.e, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph.split.split.split.split.split.split, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.r, %bb.s, %.lr.ph.split.split.split.split.split.split, %bb.q, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80, %.lr.ph.split.split.split.split.split.split.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsksn9slvsHfS_10image_webp.exit80.peel, %.lr.ph.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.split.split.us, %.lr.ph.split.split.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.us, %_RNvMNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_5slice4iter7WindowshEE3newCsksn9slvsHfS_10image_webp.exit75
  %i.an = icmp eq i64 %i.h, 0
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ao = lshr i64 %9, 1
  %11 = or i64 %9, -2
  %sext = add nsw i64 %11, 1
  %.sroa.029.0 = add nsw i64 %sext, %i.ao
  %i.ap = mul i64 %.sroa.029.0, %i.a              ; 8 uses
  %i.aq = icmp ugt i64 %i.ap, %5
  br i1 %i.aq, label %bb.w, label %bb.v, !prof !5

bb.u:                                             ; preds = %bb.ae, %._crit_edge
  ret void

bb.v:                                             ; preds = %bb.t
  %i.ar = sub nuw nsw i64 %5, %i.ap               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ap
  %i.at = icmp ugt i64 %i.ap, %7
  br i1 %i.at, label %bb.y, label %bb.x, !prof !5

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #9
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.au = sub nuw nsw i64 %7, %i.ap               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 %i.ap
  %.not66 = icmp ugt i64 %8, %i.q
  br i1 %.not66, label %bb.z, label %bb.aa, !prof !5

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #9
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %8, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #9
  unreachable

bb.aa:                                            ; preds = %bb.x
  %.not67 = icmp ugt i64 %.sroa.0.0, %i.ar
  br i1 %.not67, label %bb.ab, label %bb.ac, !prof !4

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #9
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not68 = icmp ugt i64 %.sroa.0.0, %i.au
  br i1 %.not68, label %bb.ad, label %bb.ae, !prof !4

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #9
  unreachable

bb.ae:                                            ; preds = %bb.ac
  tail call fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_(ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_EB4_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef range(i64 0, -9223372036854775808) %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 31 uses
  %.sroa.041.sroa.0.sroa.0 = alloca [96 x i8], align 8 ; 2 uses
  %i.d = lshr i64 %10, 1                          ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit22, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #9, !noalias !57
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit22: ; preds = %bb.a
  %i.f = icmp eq i64 %8, 0
  br i1 %i.f, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit23, !prof !5

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit22
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #9, !noalias !61
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit23: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit22
  %i.g = mul i64 %8, 3                            ; 2 uses
  %i.h = urem i64 %7, %i.d                        ; 2 uses
  %i.i = sub nuw nsw i64 %7, %i.h                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 %i.i
  %i.k = urem i64 %5, %i.d                        ; 2 uses
  %i.l = sub nuw nsw i64 %5, %i.k                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %i.l
  %i.n = urem i64 %1, %i.g                        ; 2 uses
  %i.o = sub nuw nsw i64 %1, %i.n                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = urem i64 %3, %10                         ; 2 uses
  %i.r = sub nuw nsw i64 %3, %i.q                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65
  store ptr %i.p, ptr %i.b, align 8, !noalias !70
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %.sroa.451.0..sroa_idx, align 8, !noalias !70
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %.sroa.552.0..sroa_idx, align 8, !noalias !70
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.o, ptr %.sroa.653.0..sroa_idx, align 8, !noalias !70
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.g, ptr %.sroa.754.0..sroa_idx, align 8, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store ptr %2, ptr %i.a, align 8, !alias.scope !71, !noalias !75
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %.sroa.456.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %.sroa.557.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %.sroa.658.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %10, ptr %.sroa.759.0..sroa_idx, align 8, !alias.scope !71, !noalias !75
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %.sroa.041.sroa.0.sroa.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65
  %.sroa.041.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.745.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.041.sroa.0.sroa.0, i64 96, i1 false)
  %.sroa.041.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  store ptr %4, ptr %.sroa.041.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.041.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store i64 %i.l, ptr %.sroa.041.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.041.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.m, ptr %.sroa.041.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.041.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 %i.k, ptr %.sroa.041.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.041.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  store i64 %i.d, ptr %.sroa.041.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.041.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 4 uses
  store ptr null, ptr %.sroa.041.sroa.2.0..sroa_idx, align 8
  %.sroa.041.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %.sroa.041.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  store ptr null, ptr %.sroa.041.sroa.4.0..sroa_idx, align 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %.sroa.041.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 3 uses
  store ptr %6, ptr %.sroa.041.sroa.7.0..sroa_idx, align 8
  %.sroa.041.sroa.7.sroa.2.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  store i64 %i.i, ptr %.sroa.041.sroa.7.sroa.2.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.7.sroa.3.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr %i.j, ptr %.sroa.041.sroa.7.sroa.3.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.7.sroa.4.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i64 %i.h, ptr %.sroa.041.sroa.7.sroa.4.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.7.sroa.5.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  store i64 %i.d, ptr %.sroa.041.sroa.7.sroa.5.0..sroa.041.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 4 uses
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  store ptr null, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !77, !noalias !88, !noundef !76 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !alias.scope !77, !noalias !88, !noundef !76
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i.lr.ph, label %.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i.lr.ph: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12chunks_exactCsksn9slvsHfS_10image_webp.exit23
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.ad = and i64 %8, 1
  %i.ae = and i64 %8, 9223372036854775806         ; 3 uses
  %i.af = icmp samesign eq i64 %i.ad, 0
  %i.ag = lshr i64 %8, 1
  %i.ah = and i64 %i.ag, 4611686018427387903
  %i.ai = call i64 @llvm.umin.i64(i64 %9, i64 %i.ah)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i.lr.ph, %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit
  %i.aj = phi i64 [ %i.v, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i.lr.ph ], [ %i.ll, %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj3_EB4_.exit ] ; 3 uses
  %i.ak = add nuw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !77, !noalias !88
  %i.al = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.c, i64 noundef %i.aj), !noalias !88 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 5 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 3 uses
  %i.ao = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y, i64 noundef %i.aj), !noalias !88 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 20 uses
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i
  %.promoted.i.i.i.i.i = load ptr, ptr %.sroa.041.sroa.2.0..sroa_idx, align 8, !alias.scope !94, !noalias !99 ; 2 uses
  %.promoted27.i.i.i.i.i = load ptr, ptr %.sroa.041.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !94, !noalias !99 ; 4 uses
  %i.ar = load i64, ptr %.sroa.041.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !94, !noalias !99 ; 5 uses
  %.promoted28.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !94, !noalias !99 ; 2 uses
  %.promoted29.i.i.i.i.i = load i64, ptr %.sroa.041.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !94, !noalias !99 ; 2 uses
  %.not.i.peel.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i, null
  br i1 %.not.i.peel.i.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = icmp eq i64 %.promoted28.i.i.i.i.i, 0
  br i1 %i.as, label %bb.f, label %._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i.i.i

._RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_4take4TakeINtNtNtB6_7sources6repeat6RepeatRShEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsksn9slvsHfS_10image_webp.exit_crit_edge.i.i.i.i.i: ; preds = %bb.e
  %.val1.i.i.i.pre.i.i.i.i.i = load i64, ptr %.sroa.041.sroa.3.0..sroa_idx, align 8, !alias.scope !100, !noalias !99
end_hunk_0
begin_hunk_1_@_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_EB4_:bb.a
  %i.pq = load i8, ptr %.sroa.054.0.lcssa.i, align 1, !alias.scope !305, !noalias !310, !noundef !76
  %i.pr = zext i8 %i.pq to i32                    ; 2 uses
  %i.ps = mul nuw nsw i32 %i.pr, 26149
  %i.pt = lshr i32 %i.ps, 8
  %i.pu = zext i8 %i.pp to i32                    ; 2 uses
  %i.pv = mul nuw nsw i32 %i.pu, 33050
  %i.pw = lshr i32 %i.pv, 8
  %i.px = zext i8 %i.po to i32
  %i.py = mul nuw nsw i32 %i.px, 19077
  %i.pz = lshr i32 %i.py, 8                       ; 3 uses
  %i.qa = add nsw i32 %i.pz, -14234
  %i.qb = add nsw i32 %i.qa, %i.pt
  %i.qc = ashr i32 %i.qb, 6
  %..i.i.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.qc, i32 0)
  %i.qd = call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.qe = trunc nuw i32 %i.qd to i8
  %i.qf = mul nuw nsw i32 %i.pr, 13320
  %i.qg = lshr i32 %i.qf, 8
  %i.qh = mul nuw nsw i32 %i.pu, 6419
  %i.qi = lshr i32 %i.qh, 8
  store i8 %i.qe, ptr %i.bl, align 1, !alias.scope !307, !noalias !312
  %.neg103 = add nuw nsw i32 %i.pz, 8708
  %i.qj = add nuw nsw i32 %i.qi, %i.qg
  %i.qk = sub nsw i32 %.neg103, %i.qj
  %i.ql = ashr i32 %i.qk, 6
  %..i.i29.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ql, i32 0)
  %i.qm = call i32 @llvm.umin.i32(i32 %..i.i29.i, i32 255)
  %i.qn = trunc nuw i32 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.qn, ptr %i.qo, align 1, !alias.scope !307, !noalias !312
  %i.qp = add nsw i32 %i.pz, -17685
  %i.qq = add nsw i32 %i.qp, %i.pw
  %i.qr = ashr i32 %i.qq, 6
  %..i.i30.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.qr, i32 0)
  %i.qs = call i32 @llvm.umin.i32(i32 %..i.i30.i, i32 255)
  %i.qt = trunc nuw i32 %i.qs to i8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.qt, ptr %i.qu, align 1, !alias.scope !307, !noalias !312
  br label %_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj4_EB4_.exit

bb.x:                                             ; preds = %bb.u
  %i.qv = add nsw i64 %.sroa.545.080.i, -2
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.081.i, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.051.077.i, i64 1 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.054.076.i, i64 1 ; 2 uses
  %i.qz = load i8, ptr %.sroa.051.077.i, align 1, !alias.scope !303, !noalias !309, !noundef !76
  %i.ra = load i8, ptr %.sroa.054.076.i, align 1, !alias.scope !305, !noalias !310, !noundef !76
  %i.rb = zext i8 %i.ra to i32                    ; 2 uses
  %i.rc = mul nuw nsw i32 %i.rb, 26149
  %i.rd = lshr i32 %i.rc, 8
  %i.re = zext i8 %i.qz to i32                    ; 2 uses
  %i.rf = mul nuw nsw i32 %i.re, 6419
  %i.rg = lshr i32 %i.rf, 8
  %i.rh = mul nuw nsw i32 %i.rb, 13320
  %i.ri = lshr i32 %i.rh, 8
  %i.rj = mul nuw nsw i32 %i.re, 33050
  %i.rk = lshr i32 %i.rj, 8
  %i.rl = load i8, ptr %.sroa.0.081.i, align 1, !alias.scope !300, !noalias !311, !noundef !76
  %i.rm = zext i8 %i.rl to i32
  %i.rn = mul nuw nsw i32 %i.rm, 19077
  %i.ro = lshr i32 %i.rn, 8                       ; 3 uses
  %i.rp = add nsw i32 %i.rd, -14234               ; 2 uses
  %i.rq = add nsw i32 %i.rp, %i.ro
  %i.rr = ashr i32 %i.rq, 6
  %..i.i31.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.rr, i32 0)
  %i.rs = call i32 @llvm.umin.i32(i32 %..i.i31.i, i32 255)
  %i.rt = trunc nuw i32 %i.rs to i8
  store i8 %i.rt, ptr %.sroa.648.079.i, align 1, !alias.scope !307, !noalias !312
  %i.ru = add nuw nsw i32 %i.ri, %i.rg            ; 2 uses
  %reass.sub = sub nsw i32 %i.ro, %i.ru
  %i.rv = add nsw i32 %reass.sub, 8708
  %i.rw = ashr i32 %i.rv, 6
  %..i.i32.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.rw, i32 0)
  %i.rx = call i32 @llvm.umin.i32(i32 %..i.i32.i, i32 255)
  %i.ry = trunc nuw i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 1
  store i8 %i.ry, ptr %i.rz, align 1, !alias.scope !307, !noalias !312
  %i.sa = add nsw i32 %i.rk, -17685               ; 2 uses
  %i.sb = add nsw i32 %i.ro, %i.sa
  %i.sc = ashr i32 %i.sb, 6
  %..i.i33.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sc, i32 0)
  %i.sd = call i32 @llvm.umin.i32(i32 %..i.i33.i, i32 255)
  %i.se = trunc nuw i32 %i.sd to i8
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 2
  store i8 %i.se, ptr %i.sf, align 1, !alias.scope !307, !noalias !312
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.081.i, i64 1
  %i.si = load i8, ptr %i.sh, align 1, !alias.scope !300, !noalias !311, !noundef !76
  %i.sj = zext i8 %i.si to i32
  %i.sk = mul nuw nsw i32 %i.sj, 19077
  %i.sl = lshr i32 %i.sk, 8                       ; 3 uses
  %i.sm = add nsw i32 %i.sl, %i.rp
  %i.sn = ashr i32 %i.sm, 6
  %..i.i34.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sn, i32 0)
  %i.so = call i32 @llvm.umin.i32(i32 %..i.i34.i, i32 255)
  %i.sp = trunc nuw i32 %i.so to i8
  store i8 %i.sp, ptr %i.sg, align 1, !alias.scope !307, !noalias !312
  %reass.sub115 = sub nsw i32 %i.sl, %i.ru
  %i.sq = add nsw i32 %reass.sub115, 8708
  %i.sr = ashr i32 %i.sq, 6
  %..i.i35.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sr, i32 0)
  %i.ss = call i32 @llvm.umin.i32(i32 %..i.i35.i, i32 255)
  %i.st = trunc nuw i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 5
  store i8 %i.st, ptr %i.su, align 1, !alias.scope !307, !noalias !312
  %i.sv = add nsw i32 %i.sl, %i.sa
  %i.sw = ashr i32 %i.sv, 6
  %..i.i36.i = call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.sw, i32 0)
  %i.sx = call i32 @llvm.umin.i32(i32 %..i.i36.i, i32 255)
  %i.sy = trunc nuw i32 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.648.079.i, i64 6
  store i8 %i.sy, ptr %i.sz, align 1, !alias.scope !307, !noalias !312
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !314

_RINvNtCsksn9slvsHfS_10image_webp3yuv20fill_rgba_row_simpleKj4_EB4_.exit: ; preds = %._crit_edge.i, %bb.v, %bb.w
  %i.ta = load i64, ptr %i.t, align 8, !alias.scope !207, !noalias !218, !noundef !76 ; 2 uses
  %i.tb = load i64, ptr %i.u, align 8, !alias.scope !207, !noalias !218, !noundef !76
  %i.tc = icmp ult i64 %i.ta, %i.tb
  br i1 %i.tc, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter14ChunksExactMuthEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsksn9slvsHfS_10image_webp.exit.i.i.i, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj3_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !76
  %.not14 = icmp eq i64 %5, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %7, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !76
  %i.d = load i8, ptr %6, align 1, !noundef !76
  %i.e = zext i8 %i.b to i32
  %i.f = mul nuw nsw i32 %i.e, 19077
  %i.g = lshr i32 %i.f, 8                         ; 3 uses
  %i.h = zext i8 %i.d to i32                      ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 26149
  %i.j = lshr i32 %i.i, 8
  %i.k = add nsw i32 %i.g, -14234
  %i.l = add nsw i32 %i.k, %i.j
  %i.m = ashr i32 %i.l, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.m, i32 0)
  %i.n = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %0, align 1, !alias.scope !316
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 6419
  %i.r = lshr i32 %i.q, 8
  %i.s = mul nuw nsw i32 %i.h, 13320
  %i.t = lshr i32 %i.s, 8
  %.neg80 = add nuw nsw i32 %i.g, 8708
  %i.u = add nuw nsw i32 %i.r, %i.t
  %i.v = sub nsw i32 %.neg80, %i.u
  %i.w = ashr i32 %i.v, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.w, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.y, ptr %i.z, align 1, !alias.scope !316
  %i.aa = mul nuw nsw i32 %i.p, 33050
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.g, -17685
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !316
  %i.ai = add nsw i64 %1, -3                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.ak = urem i64 %i.ai, 6                       ; 4 uses
  %i.al = sub nuw i64 %i.ai, %i.ak                ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = add nsw i64 %3, -1                      ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.ap = and i64 %i.an, -2                       ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.not.i.i.i.i.i.i.i90 = icmp samesign ult i64 %1, 9
  br i1 %.not.i.i.i.i.i.i.i90, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ar = sub i64 5, %i.al
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 -6)
  %i.at = add i64 %i.as, %i.al
  %i.au = udiv i64 %i.at, 6
  %i.av = lshr i64 %i.an, 1
  %i.aw = add nsw i64 %7, -1
  %i.ax = add nsw i64 %5, -1
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.av)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ax) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ba, 16
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

.lr.ph.preheader134:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.19.098.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.bf, %vector.body ]
  %.sroa.16.097.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.bg, %vector.body ]
  %.sroa.10.096.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.bh, %vector.body ]
  %.sroa.754.095.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.bi, %vector.body ]
  %.sroa.0.094.ph = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bk, %vector.body ]
  %.sroa.560.093.ph = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.bm, %vector.body ]
  %.sroa.662.092.ph = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.bo, %vector.body ]
  %.sroa.9.06491.ph = phi i64 [ %i.al, %.lr.ph.preheader ], [ %i.bq, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = and i64 %i.bb, 15                       ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = select i1 %i.bd, i64 16, i64 %i.bc
  %n.vec = sub nsw i64 %i.bb, %i.be               ; 9 uses
  %i.bf = sub i64 %7, %n.vec
  %i.bg = getelementptr i8, ptr %6, i64 %n.vec
  %i.bh = sub i64 %5, %n.vec
  %i.bi = getelementptr i8, ptr %4, i64 %n.vec
  %i.bj = shl i64 %n.vec, 1
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %i.bl = shl i64 %n.vec, 1
  %i.bm = sub i64 %i.ap, %i.bl
  %i.bn = mul i64 %n.vec, 6
  %i.bo = getelementptr i8, ptr %i.aj, i64 %i.bn
  %i.bp = mul i64 %n.vec, -6
  %i.bq = add i64 %i.al, %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep106.a = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.br = shl i64 %index, 1                       ; 16 uses
  %next.gep107.a = getelementptr i8, ptr %i.ao, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep108.a = getelementptr i8, ptr %i.bs, i64 2
  %i.bt = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep109.a = getelementptr i8, ptr %i.bt, i64 4
  %i.bu = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep110.a = getelementptr i8, ptr %i.bu, i64 6
  %i.bv = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep111.a = getelementptr i8, ptr %i.bv, i64 8
  %i.bw = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep112.a = getelementptr i8, ptr %i.bw, i64 10
  %i.bx = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep113.a = getelementptr i8, ptr %i.bx, i64 12
  %i.by = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep114.a = getelementptr i8, ptr %i.by, i64 14
  %i.bz = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep115.a = getelementptr i8, ptr %i.bz, i64 16
  %i.ca = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep116.a = getelementptr i8, ptr %i.ca, i64 18
  %i.cb = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep117.a = getelementptr i8, ptr %i.cb, i64 20
  %i.cc = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep118.a = getelementptr i8, ptr %i.cc, i64 22
  %i.cd = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep119.a = getelementptr i8, ptr %i.cd, i64 24
  %i.ce = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep120.a = getelementptr i8, ptr %i.ce, i64 26
  %i.cf = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep121.a = getelementptr i8, ptr %i.cf, i64 28
  %i.cg = getelementptr i8, ptr %i.ao, i64 %i.br  ; 2 uses
  %next.gep122.a = getelementptr i8, ptr %i.cg, i64 30
  %i.ch = mul i64 %index, 6
  %next.gep123 = getelementptr i8, ptr %i.aj, i64 %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep106.a, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ck = load i8, ptr %next.gep107.a, align 1, !noundef !76
  %i.cl = load i8, ptr %next.gep108.a, align 1, !noundef !76
  %i.cm = load i8, ptr %next.gep109.a, align 1, !noundef !76
  %i.cn = load i8, ptr %next.gep110.a, align 1, !noundef !76
  %i.co = load i8, ptr %next.gep111.a, align 1, !noundef !76
  %i.cp = load i8, ptr %next.gep112.a, align 1, !noundef !76
  %i.cq = load i8, ptr %next.gep113.a, align 1, !noundef !76
  %i.cr = load i8, ptr %next.gep114.a, align 1, !noundef !76
  %i.cs = load i8, ptr %next.gep115.a, align 1, !noundef !76
  %i.ct = load i8, ptr %next.gep116.a, align 1, !noundef !76
  %i.cu = load i8, ptr %next.gep117.a, align 1, !noundef !76
  %i.cv = load i8, ptr %next.gep118.a, align 1, !noundef !76
  %i.cw = load i8, ptr %next.gep119.a, align 1, !noundef !76
  %i.cx = load i8, ptr %next.gep120.a, align 1, !noundef !76
  %i.cy = load i8, ptr %next.gep121.a, align 1, !noundef !76
  %i.cz = load i8, ptr %next.gep122.a, align 1, !noundef !76
  %i.da = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 1
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 2
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 3
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 4
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 5
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 6
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 7
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 8
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 9
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 10
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 11
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 12
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 13
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 14
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep106.a, align 1
  %wide.load124.a = load <16 x i8>, ptr %i.ci, align 1
  %i.dq = zext <16 x i8> %wide.load to <16 x i16> ; 3 uses
  %i.dr = zext <16 x i8> %wide.load124.a to <16 x i16> ; 3 uses
  %i.ds = mul nuw nsw <16 x i16> %i.dq, splat (i16 9)
  %i.dt = mul nuw nsw <16 x i16> %i.dr, splat (i16 3) ; 2 uses
  %i.du = mul nuw nsw <16 x i16> %i.dq, splat (i16 3)
  %i.dv = add nuw nsw <16 x i16> %i.du, splat (i16 8) ; 2 uses
  %i.dw = add nuw nsw <16 x i16> %i.dv, %i.ds
  %i.dx = add nuw nsw <16 x i16> %i.dw, %i.dr
  %i.dy = add nuw nsw <16 x i16> %i.dx, %i.dt
  %i.dz = lshr <16 x i16> %i.dy, splat (i16 4)
  %wide.load125.a = load <16 x i8>, ptr %next.gep, align 1
  %wide.load126 = load <16 x i8>, ptr %i.cj, align 1
  %i.ea = zext <16 x i8> %wide.load125.a to <16 x i16> ; 3 uses
  %i.eb = zext <16 x i8> %wide.load126 to <16 x i16> ; 3 uses
  %i.ec = mul nuw nsw <16 x i16> %i.ea, splat (i16 9)
  %i.ed = mul nuw nsw <16 x i16> %i.eb, splat (i16 3) ; 2 uses
  %i.ee = mul nuw nsw <16 x i16> %i.ea, splat (i16 3)
  %i.ef = add nuw nsw <16 x i16> %i.ee, splat (i16 8) ; 2 uses
  %i.eg = add nuw nsw <16 x i16> %i.ef, %i.ec
  %i.eh = add nuw nsw <16 x i16> %i.eg, %i.eb
  %i.ei = add nuw nsw <16 x i16> %i.eh, %i.ed
  %i.ej = lshr <16 x i16> %i.ei, splat (i16 4)
  %i.ek = zext <16 x i8> %i.dp to <16 x i32>
  %i.el = mul nuw nsw <16 x i32> %i.ek, splat (i32 19077)
  %i.em = lshr <16 x i32> %i.el, splat (i32 8)    ; 3 uses
  %i.en = zext nneg <16 x i16> %i.ej to <16 x i32> ; 2 uses
  %i.eo = mul nuw nsw <16 x i32> %i.en, splat (i32 26149)
  %i.ep = lshr <16 x i32> %i.eo, splat (i32 8)
  %i.eq = add nsw <16 x i32> %i.em, splat (i32 -14234)
  %i.er = add nsw <16 x i32> %i.eq, %i.ep
  %i.es = zext nneg <16 x i16> %i.dz to <16 x i32> ; 2 uses
  %i.et = mul nuw nsw <16 x i32> %i.es, splat (i32 6419)
  %i.eu = lshr <16 x i32> %i.et, splat (i32 8)
  %i.ev = mul nuw nsw <16 x i32> %i.en, splat (i32 13320)
  %i.ew = lshr <16 x i32> %i.ev, splat (i32 8)
  %i.ex = add nuw nsw <16 x i32> %i.em, splat (i32 8708)
  %i.ey = add nuw nsw <16 x i32> %i.eu, %i.ew
  %i.ez = sub nsw <16 x i32> %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep107.a, i64 1
  %i.fb = getelementptr i8, ptr %i.bs, i64 3
  %i.fc = getelementptr i8, ptr %i.bt, i64 5
  %i.fd = getelementptr i8, ptr %i.bu, i64 7
  %i.fe = getelementptr i8, ptr %i.bv, i64 9
  %i.ff = getelementptr i8, ptr %i.bw, i64 11
  %i.fg = getelementptr i8, ptr %i.bx, i64 13
  %i.fh = getelementptr i8, ptr %i.by, i64 15
  %i.fi = getelementptr i8, ptr %i.bz, i64 17
  %i.fj = getelementptr i8, ptr %i.ca, i64 19
  %i.fk = getelementptr i8, ptr %i.cb, i64 21
  %i.fl = getelementptr i8, ptr %i.cc, i64 23
  %i.fm = getelementptr i8, ptr %i.cd, i64 25
  %i.fn = getelementptr i8, ptr %i.ce, i64 27
  %i.fo = getelementptr i8, ptr %i.cf, i64 29
  %i.fp = getelementptr i8, ptr %i.cg, i64 31
  %i.fq = load i8, ptr %i.fa, align 1, !noundef !76
  %i.fr = load i8, ptr %i.fb, align 1, !noundef !76
  %i.fs = load i8, ptr %i.fc, align 1, !noundef !76
  %i.ft = load i8, ptr %i.fd, align 1, !noundef !76
  %i.fu = load i8, ptr %i.fe, align 1, !noundef !76
  %i.fv = load i8, ptr %i.ff, align 1, !noundef !76
  %i.fw = load i8, ptr %i.fg, align 1, !noundef !76
  %i.fx = load i8, ptr %i.fh, align 1, !noundef !76
  %i.fy = load i8, ptr %i.fi, align 1, !noundef !76
  %i.fz = load i8, ptr %i.fj, align 1, !noundef !76
  %i.ga = load i8, ptr %i.fk, align 1, !noundef !76
  %i.gb = load i8, ptr %i.fl, align 1, !noundef !76
  %i.gc = load i8, ptr %i.fm, align 1, !noundef !76
  %i.gd = load i8, ptr %i.fn, align 1, !noundef !76
  %i.ge = load i8, ptr %i.fo, align 1, !noundef !76
  %i.gf = load i8, ptr %i.fp, align 1, !noundef !76
  %i.gg = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 1
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 2
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 3
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 4
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 5
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 6
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 7
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 8
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 9
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 10
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 11
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 12
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 13
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 14
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 15
  %i.gw = mul nuw nsw <16 x i16> %i.dr, splat (i16 9)
  %i.gx = add nuw nsw <16 x i16> %i.dv, %i.dq
  %i.gy = add nuw nsw <16 x i16> %i.gx, %i.gw
  %i.gz = add nuw nsw <16 x i16> %i.gy, %i.dt
  %i.ha = lshr <16 x i16> %i.gz, splat (i16 4)
  %i.hb = mul nuw nsw <16 x i16> %i.eb, splat (i16 9)
  %i.hc = add nuw nsw <16 x i16> %i.ef, %i.ea
  %i.hd = add nuw nsw <16 x i16> %i.hc, %i.hb
  %i.he = add nuw nsw <16 x i16> %i.hd, %i.ed
  %i.hf = lshr <16 x i16> %i.he, splat (i16 4)
  %i.hg = zext <16 x i8> %i.gv to <16 x i32>
  %i.hh = mul nuw nsw <16 x i32> %i.hg, splat (i32 19077)
  %i.hi = lshr <16 x i32> %i.hh, splat (i32 8)    ; 3 uses
  %i.hj = zext nneg <16 x i16> %i.hf to <16 x i32> ; 2 uses
  %i.hk = zext nneg <16 x i16> %i.ha to <16 x i32> ; 2 uses
  %i.hl = mul nuw nsw <16 x i32> %i.hk, splat (i32 6419)
  %i.hm = lshr <16 x i32> %i.hl, splat (i32 8)
  %i.hn = mul nuw nsw <16 x i32> %i.hj, splat (i32 13320)
  %i.ho = lshr <16 x i32> %i.hn, splat (i32 8)
  %i.hp = add nuw nsw <16 x i32> %i.hi, splat (i32 8708)
  %i.hq = add nuw nsw <16 x i32> %i.hm, %i.ho
  %i.hr = sub nsw <16 x i32> %i.hp, %i.hq
  %i.hs = ashr <16 x i32> %i.hr, splat (i32 6)
  %i.ht = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hs, <16 x i32> zeroinitializer)
  %i.hu = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ht, <16 x i32> splat (i32 255))
  %i.hv = trunc nuw <16 x i32> %i.hu to <16 x i8>
  %i.hw = mul nuw nsw <16 x i32> %i.hk, splat (i32 33050)
  %i.hx = lshr <16 x i32> %i.hw, splat (i32 8)
  %i.hy = add nsw <16 x i32> %i.hi, splat (i32 -17685)
  %i.hz = add nsw <16 x i32> %i.hy, %i.hx
  %i.ia = ashr <16 x i32> %i.hz, splat (i32 6)
  %i.ib = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ia, <16 x i32> zeroinitializer)
  %i.ic = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ib, <16 x i32> splat (i32 255))
  %i.id = trunc nuw <16 x i32> %i.ic to <16 x i8>
  %i.ie = shufflevector <16 x i32> %i.er, <16 x i32> %i.ez, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.if = shufflevector <16 x i32> %i.em, <16 x i32> %i.hi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ig = add nsw <32 x i32> %i.if, <i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234>
  %i.ih = shufflevector <16 x i32> %i.es, <16 x i32> %i.hj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ii = mul nuw nsw <32 x i32> %i.ih, <i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149>
  %i.ij = lshr <32 x i32> %i.ii, splat (i32 8)
  %i.ik = add nsw <32 x i32> %i.ig, %i.ij
  %i.il = shufflevector <32 x i32> %i.ie, <32 x i32> %i.ik, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.im = ashr <64 x i32> %i.il, splat (i32 6)
  %i.in = tail call <64 x i32> @llvm.smax.v64i32(<64 x i32> %i.im, <64 x i32> zeroinitializer)
  %i.io = tail call <64 x i32> @llvm.umin.v64i32(<64 x i32> %i.in, <64 x i32> splat (i32 255))
  %i.ip = trunc nuw <64 x i32> %i.io to <64 x i8>
  %i.iq = shufflevector <16 x i8> %i.hv, <16 x i8> %i.id, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.ip, <64 x i8> %i.iq, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep123, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %.lr.ph.preheader134, label %vector.body, !llvm.loop !319

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37
  %.sroa.19.098 = phi i64 [ %i.km, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.19.098.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.16.097 = phi ptr [ %i.kn, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.16.097.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.10.096 = phi i64 [ %i.kl, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.10.096.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.754.095 = phi ptr [ %i.kk, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.754.095.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.0.094 = phi ptr [ %i.kj, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.0.094.ph, %.lr.ph.preheader134 ] ; 3 uses
  %.sroa.560.093 = phi i64 [ %i.ki, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.560.093.ph, %.lr.ph.preheader134 ] ; 2 uses
  %.sroa.662.092 = phi ptr [ %i.is, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.662.092.ph, %.lr.ph.preheader134 ] ; 7 uses
  %.sroa.9.06491 = phi i64 [ %i.it, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.9.06491.ph, %.lr.ph.preheader134 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 6
  %i.it = add i64 %.sroa.9.06491, -6              ; 2 uses
  %.not.i.i15.i.i.i.i.i = icmp eq i64 %.sroa.560.093, 0
  br i1 %.not.i.i15.i.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.iu = icmp ult i64 %.sroa.10.096, 2
  %i.iv = icmp ult i64 %.sroa.19.098, 2
  %or.cond = select i1 %i.iu, i1 true, i1 %i.iv
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37

._crit_edge:                                      ; preds = %.lr.ph, %bb.j, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37, %bb.h
  %8 = trunc i64 %i.an to i1
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %._crit_edge
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.iw = getelementptr i8, ptr %4, i64 %5
  %i.ix = getelementptr i8, ptr %i.iw, i64 -1
  %i.iy = load i8, ptr %i.ix, align 1, !noundef !76
  %i.iz = getelementptr i8, ptr %6, i64 %7
  %i.ja = getelementptr i8, ptr %i.iz, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !noundef !76
  %i.jc = load i8, ptr %i.aq, align 1, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.jd = zext i8 %i.jc to i32
  %i.je = mul nuw nsw i32 %i.jd, 19077
  %i.jf = lshr i32 %i.je, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jg = zext i8 %i.jb to i32                    ; 2 uses
  %i.jh = mul nuw nsw i32 %i.jg, 26149
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = add nsw i32 %i.ji, -14234
  %i.jk = add nsw i32 %i.jj, %i.jf
  %i.jl = ashr i32 %i.jk, 6
  %..i.i.i23 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.jl, i32 0)
  %i.jm = tail call i32 @llvm.umin.i32(i32 %..i.i.i23, i32 255)
  %i.jn = trunc nuw i32 %i.jm to i8
  store i8 %i.jn, ptr %i.am, align 1, !alias.scope !320
  %.not1.i = icmp eq i64 %i.ak, 1
  br i1 %.not1.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #9, !noalias !320
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.jo = zext i8 %i.iy to i32                    ; 2 uses
  %i.jp = mul nuw nsw i32 %i.jo, 6419
  %i.jq = lshr i32 %i.jp, 8
  %i.jr = mul nuw nsw i32 %i.jg, 13320
  %i.js = lshr i32 %i.jr, 8
  %i.jt = add nuw nsw i32 %i.jq, %i.js
  %reass.sub = sub nsw i32 %i.jf, %i.jt
  %i.ju = add nsw i32 %reass.sub, 8708
  %i.jv = ashr i32 %i.ju, 6
  %..i.i2.i25 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.jv, i32 0)
  %i.jw = tail call i32 @llvm.umin.i32(i32 %..i.i2.i25, i32 255)
  %i.jx = trunc nuw i32 %i.jw to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.jx, ptr %i.jy, align 1, !alias.scope !320
  %i.jz = icmp samesign ugt i64 %i.ak, 2
  br i1 %i.jz, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #9, !noalias !320
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #9, !noalias !320
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.o
  %i.ka = mul nuw nsw i32 %i.jo, 33050
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = add nsw i32 %i.kb, -17685
  %i.kd = add nsw i32 %i.kc, %i.jf
  %i.ke = ashr i32 %i.kd, 6
  %..i.i3.i26 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ke, i32 0)
  %i.kf = tail call i32 @llvm.umin.i32(i32 %..i.i3.i26, i32 255)
  %i.kg = trunc nuw i32 %i.kf to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.kg, ptr %i.kh, align 1, !alias.scope !320
  br label %bb.k

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37: ; preds = %bb.j
  %i.ki = add i64 %.sroa.560.093, -2
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 2
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.754.095, i64 1
  %i.kl = add nsw i64 %.sroa.10.096, -1
  %i.km = add nsw i64 %.sroa.19.098, -1
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.16.097, i64 1
  %i.ko = load i8, ptr %.sroa.0.094, align 1, !noundef !76
  %i.kp = zext i8 %i.ko to i32
  %i.kq = mul nuw nsw i32 %i.kp, 19077
  %i.kr = lshr i32 %i.kq, 8                       ; 3 uses
  %i.ks = add nsw i32 %i.kr, -14234
  %.neg83 = add nuw nsw i32 %i.kr, 8708
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 1
  %i.ku = add nsw i32 %i.kr, -17685
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 2
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 3
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !noundef !76
  %i.kz = load <2 x i8>, ptr %.sroa.754.095, align 1 ; 2 uses
  %i.la = load <2 x i8>, ptr %.sroa.16.097, align 1 ; 2 uses
  %i.lb = shufflevector <2 x i8> %i.kz, <2 x i8> %i.la, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.lc = zext <4 x i8> %i.lb to <4 x i16>        ; 2 uses
  %i.ld = shufflevector <2 x i8> %i.kz, <2 x i8> %i.la, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.le = zext <4 x i8> %i.ld to <4 x i16>        ; 2 uses
  %i.lf = mul nuw nsw <4 x i16> %i.lc, <i16 9, i16 9, i16 1, i16 1>
  %i.lg = mul nuw nsw <4 x i16> %i.le, splat (i16 3)
  %i.lh = mul nuw nsw <4 x i16> %i.lc, splat (i16 3)
  %i.li = add nuw nsw <4 x i16> %i.lh, splat (i16 8)
  %i.lj = mul nuw nsw <4 x i16> %i.le, <i16 1, i16 1, i16 9, i16 9>
  %i.lk = add nuw nsw <4 x i16> %i.li, %i.lf
  %i.ll = add nuw nsw <4 x i16> %i.lk, %i.lj
  %i.lm = add nuw nsw <4 x i16> %i.ll, %i.lg
  %i.ln = lshr <4 x i16> %i.lm, splat (i16 4)     ; 4 uses
  %i.lo = extractelement <4 x i16> %i.ln, i64 1
  %i.lp = zext nneg i16 %i.lo to i32              ; 2 uses
  %i.lq = mul nuw nsw i32 %i.lp, 26149
  %i.lr = lshr i32 %i.lq, 8
  %i.ls = add nsw i32 %i.ks, %i.lr
  %i.lt = ashr i32 %i.ls, 6
  %..i.i.i27 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.lt, i32 0)
  %i.lu = tail call i32 @llvm.umin.i32(i32 %..i.i.i27, i32 255)
  %i.lv = trunc nuw i32 %i.lu to i8
  store i8 %i.lv, ptr %.sroa.662.092, align 1, !alias.scope !323
  %i.lw = extractelement <4 x i16> %i.ln, i64 0
  %i.lx = zext nneg i16 %i.lw to i32              ; 2 uses
  %i.ly = mul nuw nsw i32 %i.lx, 6419
  %i.lz = lshr i32 %i.ly, 8
  %i.ma = mul nuw nsw i32 %i.lp, 13320
  %i.mb = lshr i32 %i.ma, 8
  %i.mc = add nuw nsw i32 %i.lz, %i.mb
  %i.md = sub nsw i32 %.neg83, %i.mc
  %i.me = ashr i32 %i.md, 6
  %..i.i2.i29 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.me, i32 0)
  %i.mf = tail call i32 @llvm.umin.i32(i32 %..i.i2.i29, i32 255)
  %i.mg = trunc nuw i32 %i.mf to i8
  store i8 %i.mg, ptr %i.kt, align 1, !alias.scope !323
  %i.mh = mul nuw nsw i32 %i.lx, 33050
  %i.mi = lshr i32 %i.mh, 8
  %i.mj = add nsw i32 %i.ku, %i.mi
  %i.mk = ashr i32 %i.mj, 6
  %..i.i3.i30 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mk, i32 0)
  %i.ml = tail call i32 @llvm.umin.i32(i32 %..i.i3.i30, i32 255)
  %i.mm = trunc nuw i32 %i.ml to i8
  store i8 %i.mm, ptr %i.kv, align 1, !alias.scope !323
  %i.mn = zext i8 %i.ky to i32
  %i.mo = mul nuw nsw i32 %i.mn, 19077
  %i.mp = lshr i32 %i.mo, 8                       ; 3 uses
  %i.mq = extractelement <4 x i16> %i.ln, i64 3
  %i.mr = zext nneg i16 %i.mq to i32              ; 2 uses
  %i.ms = mul nuw nsw i32 %i.mr, 26149
  %i.mt = lshr i32 %i.ms, 8
  %i.mu = add nsw i32 %i.mp, -14234
  %i.mv = add nsw i32 %i.mu, %i.mt
  %i.mw = ashr i32 %i.mv, 6
  %..i.i.i32 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mw, i32 0)
  %i.mx = tail call i32 @llvm.umin.i32(i32 %..i.i.i32, i32 255)
  %i.my = trunc nuw i32 %i.mx to i8
  store i8 %i.my, ptr %i.kw, align 1, !alias.scope !326
  %i.mz = extractelement <4 x i16> %i.ln, i64 2
  %i.na = zext nneg i16 %i.mz to i32              ; 2 uses
  %i.nb = mul nuw nsw i32 %i.na, 6419
  %i.nc = lshr i32 %i.nb, 8
  %i.nd = mul nuw nsw i32 %i.mr, 13320
  %i.ne = lshr i32 %i.nd, 8
  %.neg86 = add nuw nsw i32 %i.mp, 8708
  %i.nf = add nuw nsw i32 %i.nc, %i.ne
  %i.ng = sub nsw i32 %.neg86, %i.nf
  %i.nh = ashr i32 %i.ng, 6
  %..i.i2.i35 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.nh, i32 0)
  %i.ni = tail call i32 @llvm.umin.i32(i32 %..i.i2.i35, i32 255)
  %i.nj = trunc nuw i32 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 4
  store i8 %i.nj, ptr %i.nk, align 1, !alias.scope !326
  %i.nl = mul nuw nsw i32 %i.na, 33050
  %i.nm = lshr i32 %i.nl, 8
  %i.nn = add nsw i32 %i.mp, -17685
  %i.no = add nsw i32 %i.nn, %i.nm
  %i.np = ashr i32 %i.no, 6
  %..i.i3.i36 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.np, i32 0)
  %i.nq = tail call i32 @llvm.umin.i32(i32 %..i.i3.i36, i32 255)
  %i.nr = trunc nuw i32 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 5
  store i8 %i.nr, ptr %i.ns, align 1, !alias.scope !326
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.it, 6
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !329
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !76
  %.not14 = icmp eq i64 %5, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %7, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !76
  %i.d = load i8, ptr %6, align 1, !noundef !76
  %i.e = zext i8 %i.b to i32
  %i.f = mul nuw nsw i32 %i.e, 19077
  %i.g = lshr i32 %i.f, 8                         ; 3 uses
  %i.h = zext i8 %i.d to i32                      ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 26149
  %i.j = lshr i32 %i.i, 8
  %i.k = add nsw i32 %i.g, -14234
  %i.l = add nsw i32 %i.k, %i.j
  %i.m = ashr i32 %i.l, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.m, i32 0)
  %i.n = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %0, align 1, !alias.scope !330
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 6419
  %i.r = lshr i32 %i.q, 8
  %i.s = mul nuw nsw i32 %i.h, 13320
  %i.t = lshr i32 %i.s, 8
  %.neg80 = add nuw nsw i32 %i.g, 8708
  %i.u = add nuw nsw i32 %i.r, %i.t
  %i.v = sub nsw i32 %.neg80, %i.u
  %i.w = ashr i32 %i.v, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.w, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.y, ptr %i.z, align 1, !alias.scope !330
  %i.aa = mul nuw nsw i32 %i.p, 33050
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.g, -17685
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !330
  %i.ai = icmp eq i64 %1, 3
  br i1 %i.ai, label %bb.k, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = add nsw i64 %1, -4                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.al = and i64 %i.aj, 7                        ; 3 uses
  %i.am = and i64 %i.aj, -8                       ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 3 uses
  %i.ao = add nsw i64 %3, -1                      ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.aq = and i64 %i.ao, -2                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %.not.i.i.i.i.i.i.i90 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i90, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.as = lshr i64 %i.ao, 1
  %i.at = add nsw i64 %1, -12
  %i.au = lshr i64 %i.at, 3
  %i.av = add nsw i64 %7, -1
  %i.aw = add nsw i64 %5, -1
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.au)
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.av)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.az, 16
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

.lr.ph.preheader150:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.19.098.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.be, %vector.body ]
  %.sroa.16.097.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.bf, %vector.body ]
  %.sroa.10.096.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.bg, %vector.body ]
  %.sroa.754.095.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.bh, %vector.body ]
  %.sroa.0.094.ph = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.bj, %vector.body ]
  %.sroa.560.093.ph = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %i.bl, %vector.body ]
  %.sroa.662.092.ph = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.bn, %vector.body ]
  %.sroa.9.06491.ph = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bp, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = and i64 %i.ba, 15                       ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 16, i64 %i.bb
  %n.vec = sub nsw i64 %i.ba, %i.bd               ; 9 uses
  %i.be = sub i64 %7, %n.vec
  %i.bf = getelementptr i8, ptr %6, i64 %n.vec
  %i.bg = sub i64 %5, %n.vec
  %i.bh = getelementptr i8, ptr %4, i64 %n.vec
  %i.bi = shl i64 %n.vec, 1
  %i.bj = getelementptr i8, ptr %i.ap, i64 %i.bi
  %i.bk = shl i64 %n.vec, 1
  %i.bl = sub i64 %i.aq, %i.bk
  %i.bm = shl i64 %n.vec, 3
  %i.bn = getelementptr i8, ptr %i.ak, i64 %i.bm
  %i.bo = shl i64 %n.vec, 3
  %i.bp = sub i64 %i.am, %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep107.a = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.bq = shl i64 %index, 1                       ; 16 uses
  %next.gep108.a = getelementptr i8, ptr %i.ap, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep109.a = getelementptr i8, ptr %i.br, i64 2
  %i.bs = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep110.a = getelementptr i8, ptr %i.bs, i64 4
  %i.bt = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep111.a = getelementptr i8, ptr %i.bt, i64 6
  %i.bu = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep112.a = getelementptr i8, ptr %i.bu, i64 8
  %i.bv = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep113.a = getelementptr i8, ptr %i.bv, i64 10
  %i.bw = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep114.a = getelementptr i8, ptr %i.bw, i64 12
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep115.a = getelementptr i8, ptr %i.bx, i64 14
  %i.by = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep116.a = getelementptr i8, ptr %i.by, i64 16
  %i.bz = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep117.a = getelementptr i8, ptr %i.bz, i64 18
  %i.ca = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep118.a = getelementptr i8, ptr %i.ca, i64 20
  %i.cb = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep119.a = getelementptr i8, ptr %i.cb, i64 22
  %i.cc = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep120.a = getelementptr i8, ptr %i.cc, i64 24
  %i.cd = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep121.a = getelementptr i8, ptr %i.cd, i64 26
  %i.ce = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep122.a = getelementptr i8, ptr %i.ce, i64 28
  %i.cf = getelementptr i8, ptr %i.ap, i64 %i.bq  ; 2 uses
  %next.gep123.a = getelementptr i8, ptr %i.cf, i64 30
  %i.cg = shl i64 %index, 3                       ; 16 uses
  %next.gep124.a = getelementptr i8, ptr %i.ak, i64 %i.cg ; 6 uses
  %i.ch = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep125.a = getelementptr i8, ptr %i.ch, i64 8
  %i.ci = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep126.a = getelementptr i8, ptr %i.ci, i64 16
  %i.cj = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep127.a = getelementptr i8, ptr %i.cj, i64 24
  %i.ck = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep128.a = getelementptr i8, ptr %i.ck, i64 32
  %i.cl = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep129.a = getelementptr i8, ptr %i.cl, i64 40
  %i.cm = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep130.a = getelementptr i8, ptr %i.cm, i64 48
  %i.cn = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep131.a = getelementptr i8, ptr %i.cn, i64 56
  %i.co = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep132.a = getelementptr i8, ptr %i.co, i64 64
  %i.cp = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep133.a = getelementptr i8, ptr %i.cp, i64 72
  %i.cq = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep134.a = getelementptr i8, ptr %i.cq, i64 80
  %i.cr = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep135.a = getelementptr i8, ptr %i.cr, i64 88
  %i.cs = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep136.a = getelementptr i8, ptr %i.cs, i64 96
  %i.ct = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep137.a = getelementptr i8, ptr %i.ct, i64 104
  %i.cu = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep138.a = getelementptr i8, ptr %i.cu, i64 112
  %i.cv = getelementptr i8, ptr %i.ak, i64 %i.cg  ; 6 uses
  %next.gep139 = getelementptr i8, ptr %i.cv, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep107.a, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cy = load i8, ptr %next.gep108.a, align 1, !noundef !76
  %i.cz = load i8, ptr %next.gep109.a, align 1, !noundef !76
  %i.da = load i8, ptr %next.gep110.a, align 1, !noundef !76
  %i.db = load i8, ptr %next.gep111.a, align 1, !noundef !76
  %i.dc = load i8, ptr %next.gep112.a, align 1, !noundef !76
  %i.dd = load i8, ptr %next.gep113.a, align 1, !noundef !76
  %i.de = load i8, ptr %next.gep114.a, align 1, !noundef !76
  %i.df = load i8, ptr %next.gep115.a, align 1, !noundef !76
  %i.dg = load i8, ptr %next.gep116.a, align 1, !noundef !76
  %i.dh = load i8, ptr %next.gep117.a, align 1, !noundef !76
  %i.di = load i8, ptr %next.gep118.a, align 1, !noundef !76
  %i.dj = load i8, ptr %next.gep119.a, align 1, !noundef !76
  %i.dk = load i8, ptr %next.gep120.a, align 1, !noundef !76
  %i.dl = load i8, ptr %next.gep121.a, align 1, !noundef !76
  %i.dm = load i8, ptr %next.gep122.a, align 1, !noundef !76
  %i.dn = load i8, ptr %next.gep123.a, align 1, !noundef !76
  %i.do = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 1
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 2
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 3
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 4
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 5
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 6
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 7
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 8
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 9
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 10
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 11
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 12
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 13
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 14
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep107.a, align 1
  %wide.load140.a = load <16 x i8>, ptr %i.cw, align 1
  %i.ee = zext <16 x i8> %wide.load to <16 x i16> ; 3 uses
  %i.ef = zext <16 x i8> %wide.load140.a to <16 x i16> ; 3 uses
  %i.eg = mul nuw nsw <16 x i16> %i.ee, splat (i16 9)
  %i.eh = mul nuw nsw <16 x i16> %i.ef, splat (i16 3) ; 2 uses
  %i.ei = mul nuw nsw <16 x i16> %i.ee, splat (i16 3)
  %i.ej = add nuw nsw <16 x i16> %i.ei, splat (i16 8) ; 2 uses
  %i.ek = add nuw nsw <16 x i16> %i.ej, %i.eg
  %i.el = add nuw nsw <16 x i16> %i.ek, %i.ef
  %i.em = add nuw nsw <16 x i16> %i.el, %i.eh
  %i.en = lshr <16 x i16> %i.em, splat (i16 4)
  %wide.load141.a = load <16 x i8>, ptr %next.gep, align 1
  %wide.load142 = load <16 x i8>, ptr %i.cx, align 1
  %i.eo = zext <16 x i8> %wide.load141.a to <16 x i16> ; 3 uses
  %i.ep = zext <16 x i8> %wide.load142 to <16 x i16> ; 3 uses
  %i.eq = mul nuw nsw <16 x i16> %i.eo, splat (i16 9)
  %i.er = mul nuw nsw <16 x i16> %i.ep, splat (i16 3) ; 2 uses
  %i.es = mul nuw nsw <16 x i16> %i.eo, splat (i16 3)
  %i.et = add nuw nsw <16 x i16> %i.es, splat (i16 8) ; 2 uses
  %i.eu = add nuw nsw <16 x i16> %i.et, %i.eq
  %i.ev = add nuw nsw <16 x i16> %i.eu, %i.ep
  %i.ew = add nuw nsw <16 x i16> %i.ev, %i.er
  %i.ex = lshr <16 x i16> %i.ew, splat (i16 4)
  %i.ey = zext <16 x i8> %i.ed to <16 x i32>
  %i.ez = mul nuw nsw <16 x i32> %i.ey, splat (i32 19077)
  %i.fa = lshr <16 x i32> %i.ez, splat (i32 8)    ; 3 uses
  %i.fb = zext nneg <16 x i16> %i.ex to <16 x i32> ; 2 uses
  %i.fc = mul nuw nsw <16 x i32> %i.fb, splat (i32 26149)
  %i.fd = lshr <16 x i32> %i.fc, splat (i32 8)
  %i.fe = add nsw <16 x i32> %i.fa, splat (i32 -14234)
  %i.ff = add nsw <16 x i32> %i.fe, %i.fd
  %i.fg = ashr <16 x i32> %i.ff, splat (i32 6)
  %i.fh = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fg, <16 x i32> zeroinitializer)
  %i.fi = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fh, <16 x i32> splat (i32 255))
  %i.fj = trunc nuw <16 x i32> %i.fi to <16 x i8> ; 16 uses
  %i.fk = extractelement <16 x i8> %i.fj, i64 0
  store i8 %i.fk, ptr %next.gep124.a, align 1, !alias.scope !333
  %i.fl = extractelement <16 x i8> %i.fj, i64 1
  store i8 %i.fl, ptr %next.gep125.a, align 1, !alias.scope !333
  %i.fm = extractelement <16 x i8> %i.fj, i64 2
  store i8 %i.fm, ptr %next.gep126.a, align 1, !alias.scope !333
  %i.fn = extractelement <16 x i8> %i.fj, i64 3
  store i8 %i.fn, ptr %next.gep127.a, align 1, !alias.scope !333
  %i.fo = extractelement <16 x i8> %i.fj, i64 4
  store i8 %i.fo, ptr %next.gep128.a, align 1, !alias.scope !333
  %i.fp = extractelement <16 x i8> %i.fj, i64 5
  store i8 %i.fp, ptr %next.gep129.a, align 1, !alias.scope !333
  %i.fq = extractelement <16 x i8> %i.fj, i64 6
  store i8 %i.fq, ptr %next.gep130.a, align 1, !alias.scope !333
end_hunk_1
begin_hunk_2_@_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_:bb.a
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 15
  %i.ls = mul nuw nsw <16 x i16> %i.ef, splat (i16 9)
  %i.lt = add nuw nsw <16 x i16> %i.ej, %i.ee
  %i.lu = add nuw nsw <16 x i16> %i.lt, %i.ls
  %i.lv = add nuw nsw <16 x i16> %i.lu, %i.eh
  %i.lw = lshr <16 x i16> %i.lv, splat (i16 4)
  %i.lx = mul nuw nsw <16 x i16> %i.ep, splat (i16 9)
  %i.ly = add nuw nsw <16 x i16> %i.et, %i.eo
  %i.lz = add nuw nsw <16 x i16> %i.ly, %i.lx
  %i.ma = add nuw nsw <16 x i16> %i.lz, %i.er
  %i.mb = lshr <16 x i16> %i.ma, splat (i16 4)
  %i.mc = zext <16 x i8> %i.lr to <16 x i32>
  %i.md = mul nuw nsw <16 x i32> %i.mc, splat (i32 19077)
  %i.me = lshr <16 x i32> %i.md, splat (i32 8)    ; 3 uses
  %i.mf = zext nneg <16 x i16> %i.mb to <16 x i32> ; 2 uses
  %i.mg = mul nuw nsw <16 x i32> %i.mf, splat (i32 26149)
  %i.mh = lshr <16 x i32> %i.mg, splat (i32 8)
  %i.mi = add nsw <16 x i32> %i.me, splat (i32 -14234)
  %i.mj = add nsw <16 x i32> %i.mi, %i.mh
  %i.mk = ashr <16 x i32> %i.mj, splat (i32 6)
  %i.ml = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.mk, <16 x i32> zeroinitializer)
  %i.mm = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ml, <16 x i32> splat (i32 255))
  %i.mn = trunc nuw <16 x i32> %i.mm to <16 x i8> ; 16 uses
  %i.mo = extractelement <16 x i8> %i.mn, i64 0
  store i8 %i.mo, ptr %i.jg, align 1, !alias.scope !336
  %i.mp = extractelement <16 x i8> %i.mn, i64 1
  store i8 %i.mp, ptr %i.jh, align 1, !alias.scope !336
  %i.mq = extractelement <16 x i8> %i.mn, i64 2
  store i8 %i.mq, ptr %i.ji, align 1, !alias.scope !336
  %i.mr = extractelement <16 x i8> %i.mn, i64 3
  store i8 %i.mr, ptr %i.jj, align 1, !alias.scope !336
  %i.ms = extractelement <16 x i8> %i.mn, i64 4
  store i8 %i.ms, ptr %i.jk, align 1, !alias.scope !336
  %i.mt = extractelement <16 x i8> %i.mn, i64 5
  store i8 %i.mt, ptr %i.jl, align 1, !alias.scope !336
  %i.mu = extractelement <16 x i8> %i.mn, i64 6
  store i8 %i.mu, ptr %i.jm, align 1, !alias.scope !336
  %i.mv = extractelement <16 x i8> %i.mn, i64 7
  store i8 %i.mv, ptr %i.jn, align 1, !alias.scope !336
  %i.mw = extractelement <16 x i8> %i.mn, i64 8
  store i8 %i.mw, ptr %i.jo, align 1, !alias.scope !336
  %i.mx = extractelement <16 x i8> %i.mn, i64 9
  store i8 %i.mx, ptr %i.jp, align 1, !alias.scope !336
  %i.my = extractelement <16 x i8> %i.mn, i64 10
  store i8 %i.my, ptr %i.jq, align 1, !alias.scope !336
  %i.mz = extractelement <16 x i8> %i.mn, i64 11
  store i8 %i.mz, ptr %i.jr, align 1, !alias.scope !336
  %i.na = extractelement <16 x i8> %i.mn, i64 12
  store i8 %i.na, ptr %i.js, align 1, !alias.scope !336
  %i.nb = extractelement <16 x i8> %i.mn, i64 13
  store i8 %i.nb, ptr %i.jt, align 1, !alias.scope !336
  %i.nc = extractelement <16 x i8> %i.mn, i64 14
  store i8 %i.nc, ptr %i.ju, align 1, !alias.scope !336
  %i.nd = extractelement <16 x i8> %i.mn, i64 15
  store i8 %i.nd, ptr %i.jv, align 1, !alias.scope !336
  %i.ne = zext nneg <16 x i16> %i.lw to <16 x i32> ; 2 uses
  %i.nf = mul nuw nsw <16 x i32> %i.ne, splat (i32 6419)
  %i.ng = lshr <16 x i32> %i.nf, splat (i32 8)
  %i.nh = mul nuw nsw <16 x i32> %i.mf, splat (i32 13320)
  %i.ni = lshr <16 x i32> %i.nh, splat (i32 8)
  %i.nj = add nuw nsw <16 x i32> %i.me, splat (i32 8708)
  %i.nk = add nuw nsw <16 x i32> %i.ng, %i.ni
  %i.nl = sub nsw <16 x i32> %i.nj, %i.nk
  %i.nm = ashr <16 x i32> %i.nl, splat (i32 6)
  %i.nn = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.nm, <16 x i32> zeroinitializer)
  %i.no = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.nn, <16 x i32> splat (i32 255))
  %i.np = trunc nuw <16 x i32> %i.no to <16 x i8> ; 16 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %next.gep124.a, i64 5
  %i.nr = getelementptr i8, ptr %i.ch, i64 13
  %i.ns = getelementptr i8, ptr %i.ci, i64 21
  %i.nt = getelementptr i8, ptr %i.cj, i64 29
  %i.nu = getelementptr i8, ptr %i.ck, i64 37
  %i.nv = getelementptr i8, ptr %i.cl, i64 45
  %i.nw = getelementptr i8, ptr %i.cm, i64 53
  %i.nx = getelementptr i8, ptr %i.cn, i64 61
  %i.ny = getelementptr i8, ptr %i.co, i64 69
  %i.nz = getelementptr i8, ptr %i.cp, i64 77
  %i.oa = getelementptr i8, ptr %i.cq, i64 85
  %i.ob = getelementptr i8, ptr %i.cr, i64 93
  %i.oc = getelementptr i8, ptr %i.cs, i64 101
  %i.od = getelementptr i8, ptr %i.ct, i64 109
  %i.oe = getelementptr i8, ptr %i.cu, i64 117
  %i.of = getelementptr i8, ptr %i.cv, i64 125
  %i.og = extractelement <16 x i8> %i.np, i64 0
  store i8 %i.og, ptr %i.nq, align 1, !alias.scope !336
  %i.oh = extractelement <16 x i8> %i.np, i64 1
  store i8 %i.oh, ptr %i.nr, align 1, !alias.scope !336
  %i.oi = extractelement <16 x i8> %i.np, i64 2
  store i8 %i.oi, ptr %i.ns, align 1, !alias.scope !336
  %i.oj = extractelement <16 x i8> %i.np, i64 3
  store i8 %i.oj, ptr %i.nt, align 1, !alias.scope !336
  %i.ok = extractelement <16 x i8> %i.np, i64 4
  store i8 %i.ok, ptr %i.nu, align 1, !alias.scope !336
  %i.ol = extractelement <16 x i8> %i.np, i64 5
  store i8 %i.ol, ptr %i.nv, align 1, !alias.scope !336
  %i.om = extractelement <16 x i8> %i.np, i64 6
  store i8 %i.om, ptr %i.nw, align 1, !alias.scope !336
  %i.on = extractelement <16 x i8> %i.np, i64 7
  store i8 %i.on, ptr %i.nx, align 1, !alias.scope !336
  %i.oo = extractelement <16 x i8> %i.np, i64 8
  store i8 %i.oo, ptr %i.ny, align 1, !alias.scope !336
  %i.op = extractelement <16 x i8> %i.np, i64 9
  store i8 %i.op, ptr %i.nz, align 1, !alias.scope !336
  %i.oq = extractelement <16 x i8> %i.np, i64 10
  store i8 %i.oq, ptr %i.oa, align 1, !alias.scope !336
  %i.or = extractelement <16 x i8> %i.np, i64 11
  store i8 %i.or, ptr %i.ob, align 1, !alias.scope !336
  %i.os = extractelement <16 x i8> %i.np, i64 12
  store i8 %i.os, ptr %i.oc, align 1, !alias.scope !336
  %i.ot = extractelement <16 x i8> %i.np, i64 13
  store i8 %i.ot, ptr %i.od, align 1, !alias.scope !336
  %i.ou = extractelement <16 x i8> %i.np, i64 14
  store i8 %i.ou, ptr %i.oe, align 1, !alias.scope !336
  %i.ov = extractelement <16 x i8> %i.np, i64 15
  store i8 %i.ov, ptr %i.of, align 1, !alias.scope !336
  %i.ow = mul nuw nsw <16 x i32> %i.ne, splat (i32 33050)
  %i.ox = lshr <16 x i32> %i.ow, splat (i32 8)
  %i.oy = add nsw <16 x i32> %i.me, splat (i32 -17685)
  %i.oz = add nsw <16 x i32> %i.oy, %i.ox
  %i.pa = ashr <16 x i32> %i.oz, splat (i32 6)
  %i.pb = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pa, <16 x i32> zeroinitializer)
  %i.pc = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pb, <16 x i32> splat (i32 255))
  %i.pd = trunc nuw <16 x i32> %i.pc to <16 x i8> ; 16 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %next.gep124.a, i64 6
  %i.pf = getelementptr i8, ptr %i.ch, i64 14
  %i.pg = getelementptr i8, ptr %i.ci, i64 22
  %i.ph = getelementptr i8, ptr %i.cj, i64 30
  %i.pi = getelementptr i8, ptr %i.ck, i64 38
  %i.pj = getelementptr i8, ptr %i.cl, i64 46
  %i.pk = getelementptr i8, ptr %i.cm, i64 54
  %i.pl = getelementptr i8, ptr %i.cn, i64 62
  %i.pm = getelementptr i8, ptr %i.co, i64 70
  %i.pn = getelementptr i8, ptr %i.cp, i64 78
  %i.po = getelementptr i8, ptr %i.cq, i64 86
  %i.pp = getelementptr i8, ptr %i.cr, i64 94
  %i.pq = getelementptr i8, ptr %i.cs, i64 102
  %i.pr = getelementptr i8, ptr %i.ct, i64 110
  %i.ps = getelementptr i8, ptr %i.cu, i64 118
  %i.pt = getelementptr i8, ptr %i.cv, i64 126
  %i.pu = extractelement <16 x i8> %i.pd, i64 0
  store i8 %i.pu, ptr %i.pe, align 1, !alias.scope !336
  %i.pv = extractelement <16 x i8> %i.pd, i64 1
  store i8 %i.pv, ptr %i.pf, align 1, !alias.scope !336
  %i.pw = extractelement <16 x i8> %i.pd, i64 2
  store i8 %i.pw, ptr %i.pg, align 1, !alias.scope !336
  %i.px = extractelement <16 x i8> %i.pd, i64 3
  store i8 %i.px, ptr %i.ph, align 1, !alias.scope !336
  %i.py = extractelement <16 x i8> %i.pd, i64 4
  store i8 %i.py, ptr %i.pi, align 1, !alias.scope !336
  %i.pz = extractelement <16 x i8> %i.pd, i64 5
  store i8 %i.pz, ptr %i.pj, align 1, !alias.scope !336
  %i.qa = extractelement <16 x i8> %i.pd, i64 6
  store i8 %i.qa, ptr %i.pk, align 1, !alias.scope !336
  %i.qb = extractelement <16 x i8> %i.pd, i64 7
  store i8 %i.qb, ptr %i.pl, align 1, !alias.scope !336
  %i.qc = extractelement <16 x i8> %i.pd, i64 8
  store i8 %i.qc, ptr %i.pm, align 1, !alias.scope !336
  %i.qd = extractelement <16 x i8> %i.pd, i64 9
  store i8 %i.qd, ptr %i.pn, align 1, !alias.scope !336
  %i.qe = extractelement <16 x i8> %i.pd, i64 10
  store i8 %i.qe, ptr %i.po, align 1, !alias.scope !336
  %i.qf = extractelement <16 x i8> %i.pd, i64 11
  store i8 %i.qf, ptr %i.pp, align 1, !alias.scope !336
  %i.qg = extractelement <16 x i8> %i.pd, i64 12
  store i8 %i.qg, ptr %i.pq, align 1, !alias.scope !336
  %i.qh = extractelement <16 x i8> %i.pd, i64 13
  store i8 %i.qh, ptr %i.pr, align 1, !alias.scope !336
  %i.qi = extractelement <16 x i8> %i.pd, i64 14
  store i8 %i.qi, ptr %i.ps, align 1, !alias.scope !336
  %i.qj = extractelement <16 x i8> %i.pd, i64 15
  store i8 %i.qj, ptr %i.pt, align 1, !alias.scope !336
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qk = icmp eq i64 %index.next, %n.vec
  br i1 %i.qk, label %.lr.ph.preheader150, label %vector.body, !llvm.loop !339

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37
  %.sroa.19.098 = phi i64 [ %i.sf, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.19.098.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.16.097 = phi ptr [ %i.sg, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.16.097.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.10.096 = phi i64 [ %i.se, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.10.096.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.754.095 = phi ptr [ %i.sd, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.754.095.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.0.094 = phi ptr [ %i.sc, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.0.094.ph, %.lr.ph.preheader150 ] ; 3 uses
  %.sroa.560.093 = phi i64 [ %i.sb, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.560.093.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.sroa.662.092 = phi ptr [ %i.ql, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.662.092.ph, %.lr.ph.preheader150 ] ; 7 uses
  %.sroa.9.06491 = phi i64 [ %i.qm, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37 ], [ %.sroa.9.06491.ph, %.lr.ph.preheader150 ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 8
  %i.qm = add i64 %.sroa.9.06491, -8              ; 2 uses
  %.not.i.i15.i.i.i.i.i = icmp eq i64 %.sroa.560.093, 0
  br i1 %.not.i.i15.i.i.i.i.i, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.qn = icmp ult i64 %.sroa.10.096, 2
  %i.qo = icmp ult i64 %.sroa.19.098, 2
  %or.cond = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37

._crit_edge:                                      ; preds = %.lr.ph, %bb.l, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37, %bb.j
  %8 = trunc i64 %i.ao to i1
  br i1 %8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %._crit_edge
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.qp = getelementptr i8, ptr %4, i64 %5
  %i.qq = getelementptr i8, ptr %i.qp, i64 -1
  %i.qr = load i8, ptr %i.qq, align 1, !noundef !76
  %i.qs = getelementptr i8, ptr %6, i64 %7
  %i.qt = getelementptr i8, ptr %i.qs, i64 -1
  %i.qu = load i8, ptr %i.qt, align 1, !noundef !76
  %i.qv = load i8, ptr %i.ar, align 1, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nuw nsw i32 %i.qw, 19077
  %i.qy = lshr i32 %i.qx, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.qz = zext i8 %i.qu to i32                    ; 2 uses
  %i.ra = mul nuw nsw i32 %i.qz, 26149
  %i.rb = lshr i32 %i.ra, 8
  %i.rc = add nsw i32 %i.rb, -14234
  %i.rd = add nsw i32 %i.rc, %i.qy
  %i.re = ashr i32 %i.rd, 6
  %..i.i.i23 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.re, i32 0)
  %i.rf = tail call i32 @llvm.umin.i32(i32 %..i.i.i23, i32 255)
  %i.rg = trunc nuw i32 %i.rf to i8
  store i8 %i.rg, ptr %i.an, align 1, !alias.scope !340
  %.not1.i = icmp eq i64 %i.al, 1
  br i1 %.not1.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #9, !noalias !340
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.rh = zext i8 %i.qr to i32                    ; 2 uses
  %i.ri = mul nuw nsw i32 %i.rh, 6419
  %i.rj = lshr i32 %i.ri, 8
  %i.rk = mul nuw nsw i32 %i.qz, 13320
  %i.rl = lshr i32 %i.rk, 8
  %i.rm = add nuw nsw i32 %i.rj, %i.rl
  %reass.sub = sub nsw i32 %i.qy, %i.rm
  %i.rn = add nsw i32 %reass.sub, 8708
  %i.ro = ashr i32 %i.rn, 6
  %..i.i2.i25 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ro, i32 0)
  %i.rp = tail call i32 @llvm.umin.i32(i32 %..i.i2.i25, i32 255)
  %i.rq = trunc nuw i32 %i.rp to i8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.rq, ptr %i.rr, align 1, !alias.scope !340
  %i.rs = icmp samesign ugt i64 %i.al, 2
  br i1 %i.rs, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #9, !noalias !340
  unreachable

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #9, !noalias !340
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.q
  %i.rt = mul nuw nsw i32 %i.rh, 33050
  %i.ru = lshr i32 %i.rt, 8
  %i.rv = add nsw i32 %i.ru, -17685
  %i.rw = add nsw i32 %i.rv, %i.qy
  %i.rx = ashr i32 %i.rw, 6
  %..i.i3.i26 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.rx, i32 0)
  %i.ry = tail call i32 @llvm.umin.i32(i32 %..i.i3.i26, i32 255)
  %i.rz = trunc nuw i32 %i.ry to i8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i8 %i.rz, ptr %i.sa, align 1, !alias.scope !340
  br label %bb.m

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit37: ; preds = %bb.l
  %i.sb = add i64 %.sroa.560.093, -2
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.754.095, i64 1
  %i.se = add nsw i64 %.sroa.10.096, -1
  %i.sf = add nsw i64 %.sroa.19.098, -1
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.16.097, i64 1
  %i.sh = load i8, ptr %.sroa.0.094, align 1, !noundef !76
  %i.si = zext i8 %i.sh to i32
  %i.sj = mul nuw nsw i32 %i.si, 19077
  %i.sk = lshr i32 %i.sj, 8                       ; 3 uses
  %i.sl = add nsw i32 %i.sk, -14234
  %.neg83 = add nuw nsw i32 %i.sk, 8708
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 1
  %i.sn = add nsw i32 %i.sk, -17685
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 2
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !noundef !76
  %i.ss = load <2 x i8>, ptr %.sroa.754.095, align 1 ; 2 uses
  %i.st = load <2 x i8>, ptr %.sroa.16.097, align 1 ; 2 uses
  %i.su = shufflevector <2 x i8> %i.ss, <2 x i8> %i.st, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.sv = zext <4 x i8> %i.su to <4 x i16>        ; 2 uses
  %i.sw = shufflevector <2 x i8> %i.ss, <2 x i8> %i.st, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.sx = zext <4 x i8> %i.sw to <4 x i16>        ; 2 uses
  %i.sy = mul nuw nsw <4 x i16> %i.sv, <i16 9, i16 9, i16 1, i16 1>
  %i.sz = mul nuw nsw <4 x i16> %i.sx, splat (i16 3)
  %i.ta = mul nuw nsw <4 x i16> %i.sv, splat (i16 3)
  %i.tb = add nuw nsw <4 x i16> %i.ta, splat (i16 8)
  %i.tc = mul nuw nsw <4 x i16> %i.sx, <i16 1, i16 1, i16 9, i16 9>
  %i.td = add nuw nsw <4 x i16> %i.tb, %i.sy
  %i.te = add nuw nsw <4 x i16> %i.td, %i.tc
  %i.tf = add nuw nsw <4 x i16> %i.te, %i.sz
  %i.tg = lshr <4 x i16> %i.tf, splat (i16 4)     ; 4 uses
  %i.th = extractelement <4 x i16> %i.tg, i64 1
  %i.ti = zext nneg i16 %i.th to i32              ; 2 uses
  %i.tj = mul nuw nsw i32 %i.ti, 26149
  %i.tk = lshr i32 %i.tj, 8
  %i.tl = add nsw i32 %i.sl, %i.tk
  %i.tm = ashr i32 %i.tl, 6
  %..i.i.i27 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.tm, i32 0)
  %i.tn = tail call i32 @llvm.umin.i32(i32 %..i.i.i27, i32 255)
  %i.to = trunc nuw i32 %i.tn to i8
  store i8 %i.to, ptr %.sroa.662.092, align 1, !alias.scope !333
  %i.tp = extractelement <4 x i16> %i.tg, i64 0
  %i.tq = zext nneg i16 %i.tp to i32              ; 2 uses
  %i.tr = mul nuw nsw i32 %i.tq, 6419
  %i.ts = lshr i32 %i.tr, 8
  %i.tt = mul nuw nsw i32 %i.ti, 13320
  %i.tu = lshr i32 %i.tt, 8
  %i.tv = add nuw nsw i32 %i.ts, %i.tu
  %i.tw = sub nsw i32 %.neg83, %i.tv
  %i.tx = ashr i32 %i.tw, 6
  %..i.i2.i29 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.tx, i32 0)
  %i.ty = tail call i32 @llvm.umin.i32(i32 %..i.i2.i29, i32 255)
  %i.tz = trunc nuw i32 %i.ty to i8
  store i8 %i.tz, ptr %i.sm, align 1, !alias.scope !333
  %i.ua = mul nuw nsw i32 %i.tq, 33050
  %i.ub = lshr i32 %i.ua, 8
  %i.uc = add nsw i32 %i.sn, %i.ub
  %i.ud = ashr i32 %i.uc, 6
  %..i.i3.i30 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ud, i32 0)
  %i.ue = tail call i32 @llvm.umin.i32(i32 %..i.i3.i30, i32 255)
  %i.uf = trunc nuw i32 %i.ue to i8
  store i8 %i.uf, ptr %i.so, align 1, !alias.scope !333
  %i.ug = zext i8 %i.sr to i32
  %i.uh = mul nuw nsw i32 %i.ug, 19077
  %i.ui = lshr i32 %i.uh, 8                       ; 3 uses
  %i.uj = extractelement <4 x i16> %i.tg, i64 3
  %i.uk = zext nneg i16 %i.uj to i32              ; 2 uses
  %i.ul = mul nuw nsw i32 %i.uk, 26149
  %i.um = lshr i32 %i.ul, 8
  %i.un = add nsw i32 %i.ui, -14234
  %i.uo = add nsw i32 %i.un, %i.um
  %i.up = ashr i32 %i.uo, 6
  %..i.i.i32 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.up, i32 0)
  %i.uq = tail call i32 @llvm.umin.i32(i32 %..i.i.i32, i32 255)
  %i.ur = trunc nuw i32 %i.uq to i8
  store i8 %i.ur, ptr %i.sp, align 1, !alias.scope !336
  %i.us = extractelement <4 x i16> %i.tg, i64 2
  %i.ut = zext nneg i16 %i.us to i32              ; 2 uses
  %i.uu = mul nuw nsw i32 %i.ut, 6419
  %i.uv = lshr i32 %i.uu, 8
  %i.uw = mul nuw nsw i32 %i.uk, 13320
  %i.ux = lshr i32 %i.uw, 8
  %.neg86 = add nuw nsw i32 %i.ui, 8708
  %i.uy = add nuw nsw i32 %i.uv, %i.ux
  %i.uz = sub nsw i32 %.neg86, %i.uy
  %i.va = ashr i32 %i.uz, 6
  %..i.i2.i35 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.va, i32 0)
  %i.vb = tail call i32 @llvm.umin.i32(i32 %..i.i2.i35, i32 255)
  %i.vc = trunc nuw i32 %i.vb to i8
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 5
  store i8 %i.vc, ptr %i.vd, align 1, !alias.scope !336
  %i.ve = mul nuw nsw i32 %i.ut, 33050
  %i.vf = lshr i32 %i.ve, 8
  %i.vg = add nsw i32 %i.ui, -17685
  %i.vh = add nsw i32 %i.vg, %i.vf
  %i.vi = ashr i32 %i.vh, 6
  %..i.i3.i36 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.vi, i32 0)
  %i.vj = tail call i32 @llvm.umin.i32(i32 %..i.i3.i36, i32 255)
  %i.vk = trunc nuw i32 %i.vj to i8
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 6
  store i8 %i.vk, ptr %i.vl, align 1, !alias.scope !336
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !343
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef nonnull readonly captures(none) %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull readonly captures(none) %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !76
  %.not25 = icmp eq i64 %5, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not26 = icmp eq i64 %7, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !76
  %i.d = load i8, ptr %6, align 1, !noundef !76
  %i.e = zext i8 %i.c to i16
  %i.f = zext i8 %i.d to i16                      ; 2 uses
  %i.g = mul nuw nsw i16 %i.e, 12
  %i.h = mul nuw nsw i16 %i.f, 3
  %i.i = add nuw nsw i16 %i.g, 8
  %i.j = add nuw nsw i16 %i.i, %i.f
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 4
  %.not27 = icmp eq i64 %9, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !76
  %i.n = load i8, ptr %10, align 1, !noundef !76
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !344
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !344
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !344
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.bb = add nsw i64 %1, -3                      ; 2 uses
  %i.bc = add nsw i64 %3, -1                      ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.be = urem i64 %i.bb, 6                       ; 3 uses
  %i.bf = sub nuw i64 %i.bb, %i.be                ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 3 uses
  %i.bh = and i64 %i.bc, -2                       ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp samesign ult i64 %1, 9
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bj = sub i64 5, %i.bf
  %i.bk = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 -6)
  %i.bl = add i64 %i.bk, %i.bf
  %i.bm = udiv i64 %i.bl, 6
  %i.bn = lshr i64 %i.bc, 1
  %i.bo = add nsw i64 %11, -1
  %i.bp = add nsw i64 %9, -1
  %i.bq = add nsw i64 %7, -1
  %i.br = add nsw i64 %5, -1
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bn)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq)
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.br) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bw, 16
  br i1 %min.iters.check, label %.lr.ph.preheader203, label %vector.ph

.lr.ph.preheader203:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.37.0153.ph = phi i64 [ %11, %.lr.ph.preheader ], [ %i.cb, %vector.body ]
  %.sroa.34.0152.ph = phi ptr [ %10, %.lr.ph.preheader ], [ %i.cc, %vector.body ]
  %.sroa.28.0151.ph = phi i64 [ %9, %.lr.ph.preheader ], [ %i.cd, %vector.body ]
  %.sroa.25.0150.ph = phi ptr [ %8, %.lr.ph.preheader ], [ %i.ce, %vector.body ]
  %.sroa.19.0149.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.cf, %vector.body ]
  %.sroa.16.0148.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.cg, %vector.body ]
  %.sroa.10.0147.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.ch, %vector.body ]
  %.sroa.790.0146.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.ci, %vector.body ]
  %.sroa.0.0145.ph = phi ptr [ %i.bd, %.lr.ph.preheader ], [ %i.ck, %vector.body ]
  %.sroa.599.0144.ph = phi i64 [ %i.bh, %.lr.ph.preheader ], [ %i.cm, %vector.body ]
  %.sroa.6101.0143.ph = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.co, %vector.body ]
  %.sroa.9102.0142.ph = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %i.cq, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = and i64 %i.bx, 15                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 16, i64 %i.by
  %n.vec = sub i64 %i.bx, %i.ca                   ; 13 uses
  %i.cb = sub i64 %11, %n.vec
  %i.cc = getelementptr i8, ptr %10, i64 %n.vec
  %i.cd = sub i64 %9, %n.vec
  %i.ce = getelementptr i8, ptr %8, i64 %n.vec
  %i.cf = sub i64 %7, %n.vec
  %i.cg = getelementptr i8, ptr %6, i64 %n.vec
  %i.ch = sub i64 %5, %n.vec
  %i.ci = getelementptr i8, ptr %4, i64 %n.vec
  %i.cj = shl i64 %n.vec, 1
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.cj
  %i.cl = shl i64 %n.vec, 1
  %i.cm = sub i64 %i.bh, %i.cl
  %i.cn = mul i64 %n.vec, 6
  %i.co = getelementptr i8, ptr %i.ba, i64 %i.cn
  %i.cp = mul i64 %n.vec, -6
  %i.cq = add i64 %i.bf, %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep165.a = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep166.a = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep167.a = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cr = shl i64 %index, 1                       ; 16 uses
  %next.gep168.a = getelementptr i8, ptr %i.bd, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep169.a = getelementptr i8, ptr %i.cs, i64 2
  %i.ct = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep170.a = getelementptr i8, ptr %i.ct, i64 4
  %i.cu = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep171.a = getelementptr i8, ptr %i.cu, i64 6
  %i.cv = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep172.a = getelementptr i8, ptr %i.cv, i64 8
  %i.cw = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep173.a = getelementptr i8, ptr %i.cw, i64 10
  %i.cx = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep174.a = getelementptr i8, ptr %i.cx, i64 12
  %i.cy = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep175.a = getelementptr i8, ptr %i.cy, i64 14
  %i.cz = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep176.a = getelementptr i8, ptr %i.cz, i64 16
  %i.da = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep177.a = getelementptr i8, ptr %i.da, i64 18
  %i.db = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep178.a = getelementptr i8, ptr %i.db, i64 20
  %i.dc = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep179.a = getelementptr i8, ptr %i.dc, i64 22
  %i.dd = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep180.a = getelementptr i8, ptr %i.dd, i64 24
  %i.de = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep181.a = getelementptr i8, ptr %i.de, i64 26
  %i.df = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep182.a = getelementptr i8, ptr %i.df, i64 28
  %i.dg = getelementptr i8, ptr %i.bd, i64 %i.cr  ; 2 uses
  %next.gep183.a = getelementptr i8, ptr %i.dg, i64 30
  %i.dh = mul i64 %index, 6
  %next.gep184 = getelementptr i8, ptr %i.ba, i64 %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep167.a, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep166.a, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep165.a, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.dm = load i8, ptr %next.gep168.a, align 1, !noundef !76
  %i.dn = load i8, ptr %next.gep169.a, align 1, !noundef !76
  %i.do = load i8, ptr %next.gep170.a, align 1, !noundef !76
  %i.dp = load i8, ptr %next.gep171.a, align 1, !noundef !76
  %i.dq = load i8, ptr %next.gep172.a, align 1, !noundef !76
  %i.dr = load i8, ptr %next.gep173.a, align 1, !noundef !76
  %i.ds = load i8, ptr %next.gep174.a, align 1, !noundef !76
  %i.dt = load i8, ptr %next.gep175.a, align 1, !noundef !76
  %i.du = load i8, ptr %next.gep176.a, align 1, !noundef !76
  %i.dv = load i8, ptr %next.gep177.a, align 1, !noundef !76
  %i.dw = load i8, ptr %next.gep178.a, align 1, !noundef !76
  %i.dx = load i8, ptr %next.gep179.a, align 1, !noundef !76
  %i.dy = load i8, ptr %next.gep180.a, align 1, !noundef !76
  %i.dz = load i8, ptr %next.gep181.a, align 1, !noundef !76
  %i.ea = load i8, ptr %next.gep182.a, align 1, !noundef !76
  %i.eb = load i8, ptr %next.gep183.a, align 1, !noundef !76
  %i.ec = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 1
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 2
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 3
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 4
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 5
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 6
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 7
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 8
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 9
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 10
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 11
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 12
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 13
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 14
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep167.a, align 1
  %wide.load185.a = load <16 x i8>, ptr %i.di, align 1
  %wide.load186.a = load <16 x i8>, ptr %next.gep166.a, align 1
  %wide.load187.a = load <16 x i8>, ptr %i.dj, align 1
  %i.es = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.et = zext <16 x i8> %wide.load185.a to <16 x i16> ; 2 uses
  %i.eu = zext <16 x i8> %wide.load186.a to <16 x i16> ; 2 uses
  %i.ev = zext <16 x i8> %wide.load187.a to <16 x i16> ; 2 uses
  %i.ew = mul nuw nsw <16 x i16> %i.es, splat (i16 9)
  %i.ex = add nuw nsw <16 x i16> %i.eu, %i.et
  %i.ey = mul nuw nsw <16 x i16> %i.ex, splat (i16 3)
  %i.ez = add nuw nsw <16 x i16> %i.ew, splat (i16 8)
  %i.fa = add nuw nsw <16 x i16> %i.ez, %i.ev
  %i.fb = add nuw nsw <16 x i16> %i.fa, %i.ey
  %i.fc = lshr <16 x i16> %i.fb, splat (i16 4)
  %wide.load188.a = load <16 x i8>, ptr %next.gep165.a, align 1
  %wide.load189.a = load <16 x i8>, ptr %i.dk, align 1
  %wide.load190.a = load <16 x i8>, ptr %next.gep, align 1
  %wide.load191 = load <16 x i8>, ptr %i.dl, align 1
  %i.fd = zext <16 x i8> %wide.load188.a to <16 x i16> ; 2 uses
  %i.fe = zext <16 x i8> %wide.load189.a to <16 x i16> ; 2 uses
  %i.ff = zext <16 x i8> %wide.load190.a to <16 x i16> ; 2 uses
  %i.fg = zext <16 x i8> %wide.load191 to <16 x i16> ; 2 uses
  %i.fh = mul nuw nsw <16 x i16> %i.fd, splat (i16 9)
  %i.fi = add nuw nsw <16 x i16> %i.ff, %i.fe
  %i.fj = mul nuw nsw <16 x i16> %i.fi, splat (i16 3)
  %i.fk = add nuw nsw <16 x i16> %i.fh, splat (i16 8)
  %i.fl = add nuw nsw <16 x i16> %i.fk, %i.fg
  %i.fm = add nuw nsw <16 x i16> %i.fl, %i.fj
  %i.fn = lshr <16 x i16> %i.fm, splat (i16 4)
  %i.fo = zext <16 x i8> %i.er to <16 x i32>
  %i.fp = mul nuw nsw <16 x i32> %i.fo, splat (i32 19077)
  %i.fq = lshr <16 x i32> %i.fp, splat (i32 8)    ; 3 uses
  %i.fr = zext nneg <16 x i16> %i.fn to <16 x i32> ; 2 uses
  %i.fs = mul nuw nsw <16 x i32> %i.fr, splat (i32 26149)
  %i.ft = lshr <16 x i32> %i.fs, splat (i32 8)
  %i.fu = add nsw <16 x i32> %i.fq, splat (i32 -14234)
  %i.fv = add nsw <16 x i32> %i.fu, %i.ft
  %i.fw = zext nneg <16 x i16> %i.fc to <16 x i32> ; 2 uses
  %i.fx = mul nuw nsw <16 x i32> %i.fw, splat (i32 6419)
  %i.fy = lshr <16 x i32> %i.fx, splat (i32 8)
  %i.fz = mul nuw nsw <16 x i32> %i.fr, splat (i32 13320)
  %i.ga = lshr <16 x i32> %i.fz, splat (i32 8)
  %i.gb = add nuw nsw <16 x i32> %i.fq, splat (i32 8708)
  %i.gc = add nuw nsw <16 x i32> %i.fy, %i.ga
  %i.gd = sub nsw <16 x i32> %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %next.gep168.a, i64 1
  %i.gf = getelementptr i8, ptr %i.cs, i64 3
  %i.gg = getelementptr i8, ptr %i.ct, i64 5
  %i.gh = getelementptr i8, ptr %i.cu, i64 7
  %i.gi = getelementptr i8, ptr %i.cv, i64 9
  %i.gj = getelementptr i8, ptr %i.cw, i64 11
  %i.gk = getelementptr i8, ptr %i.cx, i64 13
  %i.gl = getelementptr i8, ptr %i.cy, i64 15
  %i.gm = getelementptr i8, ptr %i.cz, i64 17
  %i.gn = getelementptr i8, ptr %i.da, i64 19
  %i.go = getelementptr i8, ptr %i.db, i64 21
  %i.gp = getelementptr i8, ptr %i.dc, i64 23
  %i.gq = getelementptr i8, ptr %i.dd, i64 25
  %i.gr = getelementptr i8, ptr %i.de, i64 27
  %i.gs = getelementptr i8, ptr %i.df, i64 29
  %i.gt = getelementptr i8, ptr %i.dg, i64 31
  %i.gu = load i8, ptr %i.ge, align 1, !noundef !76
  %i.gv = load i8, ptr %i.gf, align 1, !noundef !76
  %i.gw = load i8, ptr %i.gg, align 1, !noundef !76
  %i.gx = load i8, ptr %i.gh, align 1, !noundef !76
  %i.gy = load i8, ptr %i.gi, align 1, !noundef !76
  %i.gz = load i8, ptr %i.gj, align 1, !noundef !76
  %i.ha = load i8, ptr %i.gk, align 1, !noundef !76
  %i.hb = load i8, ptr %i.gl, align 1, !noundef !76
  %i.hc = load i8, ptr %i.gm, align 1, !noundef !76
  %i.hd = load i8, ptr %i.gn, align 1, !noundef !76
  %i.he = load i8, ptr %i.go, align 1, !noundef !76
  %i.hf = load i8, ptr %i.gp, align 1, !noundef !76
  %i.hg = load i8, ptr %i.gq, align 1, !noundef !76
  %i.hh = load i8, ptr %i.gr, align 1, !noundef !76
  %i.hi = load i8, ptr %i.gs, align 1, !noundef !76
  %i.hj = load i8, ptr %i.gt, align 1, !noundef !76
  %i.hk = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 1
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 2
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 3
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 4
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 5
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 6
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 7
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 8
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 9
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 10
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 11
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 12
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 13
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 14
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 15
  %i.ia = mul nuw nsw <16 x i16> %i.et, splat (i16 9)
  %i.ib = add nuw nsw <16 x i16> %i.ev, %i.es
  %i.ic = mul nuw nsw <16 x i16> %i.ib, splat (i16 3)
  %i.id = add nuw nsw <16 x i16> %i.ia, splat (i16 8)
  %i.ie = add nuw nsw <16 x i16> %i.id, %i.eu
  %i.if = add nuw nsw <16 x i16> %i.ie, %i.ic
  %i.ig = lshr <16 x i16> %i.if, splat (i16 4)
  %i.ih = mul nuw nsw <16 x i16> %i.fe, splat (i16 9)
  %i.ii = add nuw nsw <16 x i16> %i.fg, %i.fd
  %i.ij = mul nuw nsw <16 x i16> %i.ii, splat (i16 3)
  %i.ik = add nuw nsw <16 x i16> %i.ih, splat (i16 8)
  %i.il = add nuw nsw <16 x i16> %i.ik, %i.ff
  %i.im = add nuw nsw <16 x i16> %i.il, %i.ij
  %i.in = lshr <16 x i16> %i.im, splat (i16 4)
  %i.io = zext <16 x i8> %i.hz to <16 x i32>
  %i.ip = mul nuw nsw <16 x i32> %i.io, splat (i32 19077)
  %i.iq = lshr <16 x i32> %i.ip, splat (i32 8)    ; 3 uses
  %i.ir = zext nneg <16 x i16> %i.in to <16 x i32> ; 2 uses
  %i.is = zext nneg <16 x i16> %i.ig to <16 x i32> ; 2 uses
  %i.it = mul nuw nsw <16 x i32> %i.is, splat (i32 6419)
  %i.iu = lshr <16 x i32> %i.it, splat (i32 8)
  %i.iv = mul nuw nsw <16 x i32> %i.ir, splat (i32 13320)
  %i.iw = lshr <16 x i32> %i.iv, splat (i32 8)
  %i.ix = add nuw nsw <16 x i32> %i.iq, splat (i32 8708)
  %i.iy = add nuw nsw <16 x i32> %i.iu, %i.iw
  %i.iz = sub nsw <16 x i32> %i.ix, %i.iy
  %i.ja = ashr <16 x i32> %i.iz, splat (i32 6)
  %i.jb = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ja, <16 x i32> zeroinitializer)
  %i.jc = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jb, <16 x i32> splat (i32 255))
  %i.jd = trunc nuw <16 x i32> %i.jc to <16 x i8>
  %i.je = mul nuw nsw <16 x i32> %i.is, splat (i32 33050)
  %i.jf = lshr <16 x i32> %i.je, splat (i32 8)
  %i.jg = add nsw <16 x i32> %i.jf, splat (i32 -17685)
  %i.jh = add nsw <16 x i32> %i.jg, %i.iq
  %i.ji = ashr <16 x i32> %i.jh, splat (i32 6)
  %i.jj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ji, <16 x i32> zeroinitializer)
  %i.jk = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.jj, <16 x i32> splat (i32 255))
  %i.jl = trunc nuw <16 x i32> %i.jk to <16 x i8>
  %i.jm = shufflevector <16 x i32> %i.fv, <16 x i32> %i.gd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jn = shufflevector <16 x i32> %i.fq, <16 x i32> %i.iq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jo = add nsw <32 x i32> %i.jn, <i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -17685, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234, i32 -14234>
  %i.jp = shufflevector <16 x i32> %i.fw, <16 x i32> %i.ir, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jq = mul nuw nsw <32 x i32> %i.jp, <i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 33050, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149, i32 26149>
  %i.jr = lshr <32 x i32> %i.jq, splat (i32 8)
  %i.js = add nsw <32 x i32> %i.jo, %i.jr
  %i.jt = shufflevector <32 x i32> %i.jm, <32 x i32> %i.js, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ju = ashr <64 x i32> %i.jt, splat (i32 6)
  %i.jv = tail call <64 x i32> @llvm.smax.v64i32(<64 x i32> %i.ju, <64 x i32> zeroinitializer)
  %i.jw = tail call <64 x i32> @llvm.umin.v64i32(<64 x i32> %i.jv, <64 x i32> splat (i32 255))
  %i.jx = trunc nuw <64 x i32> %i.jw to <64 x i8>
  %i.jy = shufflevector <16 x i8> %i.jd, <16 x i8> %i.jl, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.jx, <64 x i8> %i.jy, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep184, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %.lr.ph.preheader203, label %vector.body, !llvm.loop !347

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader203, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit
  %.sroa.37.0153 = phi i64 [ %i.mw, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.37.0153.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.34.0152 = phi ptr [ %i.mx, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.34.0152.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.28.0151 = phi i64 [ %i.mv, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.28.0151.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.25.0150 = phi ptr [ %i.mu, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.25.0150.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.19.0149 = phi i64 [ %i.mt, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.19.0149.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.16.0148 = phi ptr [ %i.ms, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.16.0148.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.10.0147 = phi i64 [ %i.kf, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.10.0147.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.790.0146 = phi ptr [ %i.kg, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.790.0146.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.0.0145 = phi ptr [ %i.kc, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.0.0145.ph, %.lr.ph.preheader203 ] ; 3 uses
  %.sroa.599.0144 = phi i64 [ %i.kd, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.599.0144.ph, %.lr.ph.preheader203 ] ; 2 uses
  %.sroa.6101.0143 = phi ptr [ %i.ka, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.6101.0143.ph, %.lr.ph.preheader203 ] ; 7 uses
  %.sroa.9102.0142 = phi i64 [ %i.kb, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.9102.0142.ph, %.lr.ph.preheader203 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 6
  %i.kb = add i64 %.sroa.9102.0142, -6            ; 2 uses
  %.not.i.i15.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.599.0144, 0
  br i1 %.not.i.i15.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 2
  %i.kd = add i64 %.sroa.599.0144, -2
  %i.ke = icmp ult i64 %.sroa.10.0147, 2
  br i1 %i.ke, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kf = add nsw i64 %.sroa.10.0147, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.790.0146, i64 1
  %i.kh = icmp ult i64 %.sroa.19.0149, 2
  br i1 %i.kh, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ki = icmp ult i64 %.sroa.28.0151, 2
  %i.kj = icmp ult i64 %.sroa.37.0153, 2
  %or.cond = select i1 %i.ki, i1 true, i1 %i.kj
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %bb.o, %bb.p, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %bb.l
  %12 = trunc i64 %i.bc to i1
  br i1 %12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.t, %._crit_edge
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.kk = icmp samesign ugt i64 %i.be, 2
  br i1 %i.kk, label %bb.t, label %bb.s, !prof !315

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.kl = getelementptr i8, ptr %8, i64 %9
  %i.km = getelementptr i8, ptr %i.kl, i64 -1
  %i.kn = load i8, ptr %i.km, align 1, !noundef !76
  %i.ko = getelementptr i8, ptr %6, i64 %7
  %i.kp = getelementptr i8, ptr %i.ko, i64 -1
  %i.kq = load i8, ptr %i.kp, align 1, !noundef !76
  %i.kr = getelementptr i8, ptr %4, i64 %5
  %i.ks = getelementptr i8, ptr %i.kr, i64 -1
  %i.kt = load i8, ptr %i.ks, align 1, !noundef !76
  %i.ku = getelementptr i8, ptr %10, i64 %11
  %i.kv = getelementptr i8, ptr %i.ku, i64 -1
  %i.kw = load i8, ptr %i.kv, align 1, !noundef !76
  %i.kx = zext i8 %i.kt to i16
  %i.ky = zext i8 %i.kq to i16                    ; 2 uses
  %i.kz = mul nuw nsw i16 %i.kx, 12
  %i.la = mul nuw nsw i16 %i.ky, 3
  %i.lb = add nuw nsw i16 %i.ky, 8
  %i.lc = add nuw nsw i16 %i.lb, %i.la
  %i.ld = add nuw nsw i16 %i.lc, %i.kz
  %i.le = lshr i16 %i.ld, 4
  %i.lf = zext i8 %i.kn to i16
  %i.lg = zext i8 %i.kw to i16                    ; 2 uses
  %i.lh = mul nuw nsw i16 %i.lf, 12
  %i.li = mul nuw nsw i16 %i.lg, 3
  %i.lj = add nuw nsw i16 %i.lh, 8
  %i.lk = add nuw nsw i16 %i.lj, %i.lg
  %i.ll = add nuw nsw i16 %i.lk, %i.li
  %i.lm = lshr i16 %i.ll, 4
  %i.ln = load i8, ptr %i.bi, align 1, !noundef !76
  %i.lo = zext i8 %i.ln to i32
  %i.lp = mul nuw nsw i32 %i.lo, 19077
  %i.lq = lshr i32 %i.lp, 8                       ; 3 uses
  %i.lr = zext nneg i16 %i.lm to i32              ; 2 uses
  %i.ls = mul nuw nsw i32 %i.lr, 26149
  %i.lt = lshr i32 %i.ls, 8
  %i.lu = add nsw i32 %i.lq, -14234
  %i.lv = add nsw i32 %i.lu, %i.lt
  %i.lw = ashr i32 %i.lv, 6
  %..i.i.i40 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.lw, i32 0)
  %i.lx = tail call i32 @llvm.umin.i32(i32 %..i.i.i40, i32 255)
  %i.ly = trunc nuw i32 %i.lx to i8
  store i8 %i.ly, ptr %i.bg, align 1, !alias.scope !348
  %i.lz = zext nneg i16 %i.le to i32              ; 2 uses
  %i.ma = mul nuw nsw i32 %i.lz, 6419
  %i.mb = lshr i32 %i.ma, 8
  %i.mc = mul nuw nsw i32 %i.lr, 13320
  %i.md = lshr i32 %i.mc, 8
  %.neg140 = add nuw nsw i32 %i.lq, 8708
  %i.me = add nuw nsw i32 %i.mb, %i.md
  %i.mf = sub nsw i32 %.neg140, %i.me
  %i.mg = ashr i32 %i.mf, 6
  %..i.i2.i42 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mg, i32 0)
  %i.mh = tail call i32 @llvm.umin.i32(i32 %..i.i2.i42, i32 255)
  %i.mi = trunc nuw i32 %i.mh to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.mi, ptr %i.mj, align 1, !alias.scope !348
  %i.mk = mul nuw nsw i32 %i.lz, 33050
  %i.ml = lshr i32 %i.mk, 8
  %i.mm = add nsw i32 %i.lq, -17685
  %i.mn = add nsw i32 %i.mm, %i.ml
  %i.mo = ashr i32 %i.mn, 6
  %..i.i3.i43 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.mo, i32 0)
  %i.mp = tail call i32 @llvm.umin.i32(i32 %..i.i3.i43, i32 255)
  %i.mq = trunc nuw i32 %i.mp to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.mq, ptr %i.mr, align 1, !alias.scope !348
  br label %bb.q

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.p
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.16.0148, i64 1
  %i.mt = add nsw i64 %.sroa.19.0149, -1
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.25.0150, i64 1
  %i.mv = add nsw i64 %.sroa.28.0151, -1
  %i.mw = add nsw i64 %.sroa.37.0153, -1
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.34.0152, i64 1
  %i.my = load i8, ptr %.sroa.0.0145, align 1, !noundef !76
  %i.mz = zext i8 %i.my to i32
  %i.na = mul nuw nsw i32 %i.mz, 19077
  %i.nb = lshr i32 %i.na, 8                       ; 3 uses
  %i.nc = add nsw i32 %i.nb, -14234
  %.neg130 = add nuw nsw i32 %i.nb, 8708
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 1
  %i.ne = add nsw i32 %i.nb, -17685
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 2
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 3
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !noundef !76
  %i.nj = load <2 x i8>, ptr %.sroa.790.0146, align 1
  %i.nk = load <2 x i8>, ptr %.sroa.16.0148, align 1
  %i.nl = load <2 x i8>, ptr %.sroa.25.0150, align 1
  %i.nm = load <2 x i8>, ptr %.sroa.34.0152, align 1
  %i.nn = shufflevector <2 x i8> %i.nj, <2 x i8> %i.nl, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.no = zext <4 x i8> %i.nn to <4 x i16>        ; 2 uses
  %i.np = shufflevector <2 x i8> %i.nk, <2 x i8> %i.nm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nq = zext <4 x i8> %i.np to <4 x i16>        ; 2 uses
  %i.nr = mul nuw nsw <4 x i16> %i.no, splat (i16 9)
  %i.ns = add nuw nsw <4 x i16> %i.nq, %i.no
  %i.nt = mul nuw nsw <4 x i16> %i.ns, splat (i16 3)
  %i.nu = shufflevector <4 x i16> %i.nt, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.nv = add nuw nsw <4 x i16> %i.nr, splat (i16 8)
  %i.nw = add nuw nsw <4 x i16> %i.nv, %i.nq
  %i.nx = add nuw nsw <4 x i16> %i.nw, %i.nu
  %i.ny = lshr <4 x i16> %i.nx, splat (i16 4)     ; 4 uses
  %i.nz = extractelement <4 x i16> %i.ny, i64 3
  %i.oa = zext nneg i16 %i.nz to i32              ; 2 uses
  %i.ob = mul nuw nsw i32 %i.oa, 26149
  %i.oc = lshr i32 %i.ob, 8
  %i.od = add nsw i32 %i.nc, %i.oc
  %i.oe = ashr i32 %i.od, 6
  %..i.i.i44 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.oe, i32 0)
  %i.of = tail call i32 @llvm.umin.i32(i32 %..i.i.i44, i32 255)
  %i.og = trunc nuw i32 %i.of to i8
  store i8 %i.og, ptr %.sroa.6101.0143, align 1, !alias.scope !351
  %i.oh = extractelement <4 x i16> %i.ny, i64 2
  %i.oi = zext nneg i16 %i.oh to i32              ; 2 uses
  %i.oj = mul nuw nsw i32 %i.oi, 6419
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = mul nuw nsw i32 %i.oa, 13320
  %i.om = lshr i32 %i.ol, 8
  %i.on = add nuw nsw i32 %i.ok, %i.om
  %i.oo = sub nsw i32 %.neg130, %i.on
  %i.op = ashr i32 %i.oo, 6
  %..i.i2.i46 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.op, i32 0)
  %i.oq = tail call i32 @llvm.umin.i32(i32 %..i.i2.i46, i32 255)
  %i.or = trunc nuw i32 %i.oq to i8
  store i8 %i.or, ptr %i.nd, align 1, !alias.scope !351
  %i.os = mul nuw nsw i32 %i.oi, 33050
  %i.ot = lshr i32 %i.os, 8
  %i.ou = add nsw i32 %i.ne, %i.ot
  %i.ov = ashr i32 %i.ou, 6
  %..i.i3.i47 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ov, i32 0)
  %i.ow = tail call i32 @llvm.umin.i32(i32 %..i.i3.i47, i32 255)
  %i.ox = trunc nuw i32 %i.ow to i8
  store i8 %i.ox, ptr %i.nf, align 1, !alias.scope !351
  %i.oy = zext i8 %i.ni to i32
  %i.oz = mul nuw nsw i32 %i.oy, 19077
  %i.pa = lshr i32 %i.oz, 8                       ; 3 uses
  %i.pb = extractelement <4 x i16> %i.ny, i64 1
  %i.pc = zext nneg i16 %i.pb to i32              ; 2 uses
  %i.pd = mul nuw nsw i32 %i.pc, 26149
  %i.pe = lshr i32 %i.pd, 8
  %i.pf = add nsw i32 %i.pa, -14234
  %i.pg = add nsw i32 %i.pf, %i.pe
  %i.ph = ashr i32 %i.pg, 6
  %..i.i.i48 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ph, i32 0)
  %i.pi = tail call i32 @llvm.umin.i32(i32 %..i.i.i48, i32 255)
  %i.pj = trunc nuw i32 %i.pi to i8
  store i8 %i.pj, ptr %i.ng, align 1, !alias.scope !354
  %i.pk = extractelement <4 x i16> %i.ny, i64 0
  %i.pl = zext nneg i16 %i.pk to i32              ; 2 uses
  %i.pm = mul nuw nsw i32 %i.pl, 6419
  %i.pn = lshr i32 %i.pm, 8
  %i.po = mul nuw nsw i32 %i.pc, 13320
  %i.pp = lshr i32 %i.po, 8
  %i.pq = add nuw nsw i32 %i.pa, 8708
  %i.pr = add nuw nsw i32 %i.pn, %i.pp
  %i.ps = sub nsw i32 %i.pq, %i.pr
  %i.pt = ashr i32 %i.ps, 6
  %..i.i2.i50 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.pt, i32 0)
  %i.pu = tail call i32 @llvm.umin.i32(i32 %..i.i2.i50, i32 255)
  %i.pv = trunc nuw i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 4
  store i8 %i.pv, ptr %i.pw, align 1, !alias.scope !354
  %i.px = mul nuw nsw i32 %i.pl, 33050
  %i.py = lshr i32 %i.px, 8
  %i.pz = add nsw i32 %i.py, -17685
  %i.qa = add nsw i32 %i.pz, %i.pa
  %i.qb = ashr i32 %i.qa, 6
  %..i.i3.i51 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.qb, i32 0)
  %i.qc = tail call i32 @llvm.umin.i32(i32 %..i.i3.i51, i32 255)
  %i.qd = trunc nuw i32 %i.qc to i8
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 5
  store i8 %i.qd, ptr %i.qe, align 1, !alias.scope !354
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.kb, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !357
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef nonnull readonly captures(none) %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull readonly captures(none) %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !76
  %.not25 = icmp eq i64 %5, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not26 = icmp eq i64 %7, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !76
  %i.d = load i8, ptr %6, align 1, !noundef !76
  %i.e = zext i8 %i.c to i16
  %i.f = zext i8 %i.d to i16                      ; 2 uses
  %i.g = mul nuw nsw i16 %i.e, 12
  %i.h = mul nuw nsw i16 %i.f, 3
  %i.i = add nuw nsw i16 %i.g, 8
  %i.j = add nuw nsw i16 %i.i, %i.f
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 4
  %.not27 = icmp eq i64 %9, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !76
  %i.n = load i8, ptr %10, align 1, !noundef !76
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !358
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !358
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !358
  %i.ba = icmp eq i64 %1, 3
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !5

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #9
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #9
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.bc = add nsw i64 %1, -4                      ; 2 uses
  %i.bd = add nsw i64 %3, -1                      ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.bf = and i64 %i.bc, 7                        ; 2 uses
  %i.bg = and i64 %i.bc, -8                       ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bi = and i64 %i.bd, -2                       ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bk = lshr i64 %i.bd, 1
  %i.bl = add nsw i64 %1, -12
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nsw i64 %11, -1
  %i.bo = add nsw i64 %9, -1
  %i.bp = add nsw i64 %7, -1
  %i.bq = add nsw i64 %5, -1
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bm)
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bn)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bv, 16
  br i1 %min.iters.check, label %.lr.ph.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %i.bx = and i64 %i.bw, 15                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 16, i64 %i.bx
  %n.vec = sub i64 %i.bw, %i.bz                   ; 13 uses
  %i.ca = sub i64 %11, %n.vec
  %i.cb = getelementptr i8, ptr %10, i64 %n.vec
  %i.cc = sub i64 %9, %n.vec
  %i.cd = getelementptr i8, ptr %8, i64 %n.vec
  %i.ce = sub i64 %7, %n.vec
  %i.cf = getelementptr i8, ptr %6, i64 %n.vec
  %i.cg = sub i64 %5, %n.vec
  %i.ch = getelementptr i8, ptr %4, i64 %n.vec
  %i.ci = shl i64 %n.vec, 1
  %i.cj = getelementptr i8, ptr %i.be, i64 %i.ci
  %i.ck = shl i64 %n.vec, 1
  %i.cl = sub i64 %i.bi, %i.ck
  %i.cm = shl i64 %n.vec, 3
  %i.cn = getelementptr i8, ptr %i.bb, i64 %i.cm
  %i.co = shl i64 %n.vec, 3
  %i.cp = sub i64 %i.bg, %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep166.a = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep167.a = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep168.a = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cq = shl i64 %index, 1                       ; 16 uses
  %next.gep169.a = getelementptr i8, ptr %i.be, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep170.a = getelementptr i8, ptr %i.cr, i64 2
  %i.cs = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep171.a = getelementptr i8, ptr %i.cs, i64 4
  %i.ct = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep172.a = getelementptr i8, ptr %i.ct, i64 6
  %i.cu = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep173.a = getelementptr i8, ptr %i.cu, i64 8
  %i.cv = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep174.a = getelementptr i8, ptr %i.cv, i64 10
  %i.cw = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep175.a = getelementptr i8, ptr %i.cw, i64 12
  %i.cx = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep176.a = getelementptr i8, ptr %i.cx, i64 14
  %i.cy = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep177.a = getelementptr i8, ptr %i.cy, i64 16
  %i.cz = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep178.a = getelementptr i8, ptr %i.cz, i64 18
  %i.da = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep179.a = getelementptr i8, ptr %i.da, i64 20
  %i.db = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep180.a = getelementptr i8, ptr %i.db, i64 22
  %i.dc = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep181.a = getelementptr i8, ptr %i.dc, i64 24
  %i.dd = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep182.a = getelementptr i8, ptr %i.dd, i64 26
  %i.de = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep183.a = getelementptr i8, ptr %i.de, i64 28
  %i.df = getelementptr i8, ptr %i.be, i64 %i.cq  ; 2 uses
  %next.gep184.a = getelementptr i8, ptr %i.df, i64 30
  %i.dg = shl i64 %index, 3                       ; 16 uses
  %next.gep185.a = getelementptr i8, ptr %i.bb, i64 %i.dg ; 6 uses
  %i.dh = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep186.a = getelementptr i8, ptr %i.dh, i64 8
  %i.di = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep187.a = getelementptr i8, ptr %i.di, i64 16
  %i.dj = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep188.a = getelementptr i8, ptr %i.dj, i64 24
  %i.dk = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep189.a = getelementptr i8, ptr %i.dk, i64 32
  %i.dl = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep190.a = getelementptr i8, ptr %i.dl, i64 40
  %i.dm = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep191.a = getelementptr i8, ptr %i.dm, i64 48
  %i.dn = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep192.a = getelementptr i8, ptr %i.dn, i64 56
  %i.do = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep193.a = getelementptr i8, ptr %i.do, i64 64
  %i.dp = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep194.a = getelementptr i8, ptr %i.dp, i64 72
  %i.dq = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep195.a = getelementptr i8, ptr %i.dq, i64 80
  %i.dr = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep196.a = getelementptr i8, ptr %i.dr, i64 88
  %i.ds = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep197.a = getelementptr i8, ptr %i.ds, i64 96
  %i.dt = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep198.a = getelementptr i8, ptr %i.dt, i64 104
  %i.du = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep199.a = getelementptr i8, ptr %i.du, i64 112
  %i.dv = getelementptr i8, ptr %i.bb, i64 %i.dg  ; 6 uses
  %next.gep200 = getelementptr i8, ptr %i.dv, i64 120
  %i.dw = getelementptr inbounds nuw i8, ptr %next.gep168.a, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep167.a, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep166.a, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ea = load i8, ptr %next.gep169.a, align 1, !noundef !76
  %i.eb = load i8, ptr %next.gep170.a, align 1, !noundef !76
  %i.ec = load i8, ptr %next.gep171.a, align 1, !noundef !76
  %i.ed = load i8, ptr %next.gep172.a, align 1, !noundef !76
  %i.ee = load i8, ptr %next.gep173.a, align 1, !noundef !76
  %i.ef = load i8, ptr %next.gep174.a, align 1, !noundef !76
  %i.eg = load i8, ptr %next.gep175.a, align 1, !noundef !76
  %i.eh = load i8, ptr %next.gep176.a, align 1, !noundef !76
  %i.ei = load i8, ptr %next.gep177.a, align 1, !noundef !76
  %i.ej = load i8, ptr %next.gep178.a, align 1, !noundef !76
  %i.ek = load i8, ptr %next.gep179.a, align 1, !noundef !76
  %i.el = load i8, ptr %next.gep180.a, align 1, !noundef !76
  %i.em = load i8, ptr %next.gep181.a, align 1, !noundef !76
  %i.en = load i8, ptr %next.gep182.a, align 1, !noundef !76
  %i.eo = load i8, ptr %next.gep183.a, align 1, !noundef !76
  %i.ep = load i8, ptr %next.gep184.a, align 1, !noundef !76
  %i.eq = insertelement <16 x i8> poison, i8 %i.ea, i64 0
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 1
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 2
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 3
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 4
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 5
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 6
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 7
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 8
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 9
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 10
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 11
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 12
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 13
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 14
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep168.a, align 1
  %wide.load201.a = load <16 x i8>, ptr %i.dw, align 1
  %wide.load202.a = load <16 x i8>, ptr %next.gep167.a, align 1
  %wide.load203.a = load <16 x i8>, ptr %i.dx, align 1
  %i.fg = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.fh = zext <16 x i8> %wide.load201.a to <16 x i16> ; 2 uses
  %i.fi = zext <16 x i8> %wide.load202.a to <16 x i16> ; 2 uses
  %i.fj = zext <16 x i8> %wide.load203.a to <16 x i16> ; 2 uses
  %i.fk = mul nuw nsw <16 x i16> %i.fg, splat (i16 9)
  %i.fl = add nuw nsw <16 x i16> %i.fi, %i.fh
  %i.fm = mul nuw nsw <16 x i16> %i.fl, splat (i16 3)
  %i.fn = add nuw nsw <16 x i16> %i.fk, splat (i16 8)
  %i.fo = add nuw nsw <16 x i16> %i.fn, %i.fj
  %i.fp = add nuw nsw <16 x i16> %i.fo, %i.fm
  %i.fq = lshr <16 x i16> %i.fp, splat (i16 4)
  %wide.load204.a = load <16 x i8>, ptr %next.gep166.a, align 1
  %wide.load205.a = load <16 x i8>, ptr %i.dy, align 1
  %wide.load206.a = load <16 x i8>, ptr %next.gep, align 1
  %wide.load207 = load <16 x i8>, ptr %i.dz, align 1
  %i.fr = zext <16 x i8> %wide.load204.a to <16 x i16> ; 2 uses
  %i.fs = zext <16 x i8> %wide.load205.a to <16 x i16> ; 2 uses
  %i.ft = zext <16 x i8> %wide.load206.a to <16 x i16> ; 2 uses
  %i.fu = zext <16 x i8> %wide.load207 to <16 x i16> ; 2 uses
  %i.fv = mul nuw nsw <16 x i16> %i.fr, splat (i16 9)
  %i.fw = add nuw nsw <16 x i16> %i.ft, %i.fs
  %i.fx = mul nuw nsw <16 x i16> %i.fw, splat (i16 3)
  %i.fy = add nuw nsw <16 x i16> %i.fv, splat (i16 8)
  %i.fz = add nuw nsw <16 x i16> %i.fy, %i.fu
  %i.ga = add nuw nsw <16 x i16> %i.fz, %i.fx
  %i.gb = lshr <16 x i16> %i.ga, splat (i16 4)
  %i.gc = zext <16 x i8> %i.ff to <16 x i32>
  %i.gd = mul nuw nsw <16 x i32> %i.gc, splat (i32 19077)
  %i.ge = lshr <16 x i32> %i.gd, splat (i32 8)    ; 3 uses
  %i.gf = zext nneg <16 x i16> %i.gb to <16 x i32> ; 2 uses
  %i.gg = mul nuw nsw <16 x i32> %i.gf, splat (i32 26149)
  %i.gh = lshr <16 x i32> %i.gg, splat (i32 8)
  %i.gi = add nsw <16 x i32> %i.ge, splat (i32 -14234)
  %i.gj = add nsw <16 x i32> %i.gi, %i.gh
  %i.gk = ashr <16 x i32> %i.gj, splat (i32 6)
  %i.gl = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.gk, <16 x i32> zeroinitializer)
  %i.gm = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gl, <16 x i32> splat (i32 255))
  %i.gn = trunc nuw <16 x i32> %i.gm to <16 x i8> ; 16 uses
  %i.go = extractelement <16 x i8> %i.gn, i64 0
  store i8 %i.go, ptr %next.gep185.a, align 1, !alias.scope !361
  %i.gp = extractelement <16 x i8> %i.gn, i64 1
  store i8 %i.gp, ptr %next.gep186.a, align 1, !alias.scope !361
  %i.gq = extractelement <16 x i8> %i.gn, i64 2
  store i8 %i.gq, ptr %next.gep187.a, align 1, !alias.scope !361
  %i.gr = extractelement <16 x i8> %i.gn, i64 3
end_hunk_2
begin_hunk_3_@_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_:bb.a
  %i.ny = extractelement <16 x i8> %i.nv, i64 2
  store i8 %i.ny, ptr %i.km, align 1, !alias.scope !364
  %i.nz = extractelement <16 x i8> %i.nv, i64 3
  store i8 %i.nz, ptr %i.kn, align 1, !alias.scope !364
  %i.oa = extractelement <16 x i8> %i.nv, i64 4
  store i8 %i.oa, ptr %i.ko, align 1, !alias.scope !364
  %i.ob = extractelement <16 x i8> %i.nv, i64 5
  store i8 %i.ob, ptr %i.kp, align 1, !alias.scope !364
  %i.oc = extractelement <16 x i8> %i.nv, i64 6
  store i8 %i.oc, ptr %i.kq, align 1, !alias.scope !364
  %i.od = extractelement <16 x i8> %i.nv, i64 7
  store i8 %i.od, ptr %i.kr, align 1, !alias.scope !364
  %i.oe = extractelement <16 x i8> %i.nv, i64 8
  store i8 %i.oe, ptr %i.ks, align 1, !alias.scope !364
  %i.of = extractelement <16 x i8> %i.nv, i64 9
  store i8 %i.of, ptr %i.kt, align 1, !alias.scope !364
  %i.og = extractelement <16 x i8> %i.nv, i64 10
  store i8 %i.og, ptr %i.ku, align 1, !alias.scope !364
  %i.oh = extractelement <16 x i8> %i.nv, i64 11
  store i8 %i.oh, ptr %i.kv, align 1, !alias.scope !364
  %i.oi = extractelement <16 x i8> %i.nv, i64 12
  store i8 %i.oi, ptr %i.kw, align 1, !alias.scope !364
  %i.oj = extractelement <16 x i8> %i.nv, i64 13
  store i8 %i.oj, ptr %i.kx, align 1, !alias.scope !364
  %i.ok = extractelement <16 x i8> %i.nv, i64 14
  store i8 %i.ok, ptr %i.ky, align 1, !alias.scope !364
  %i.ol = extractelement <16 x i8> %i.nv, i64 15
  store i8 %i.ol, ptr %i.kz, align 1, !alias.scope !364
  %i.om = zext nneg <16 x i16> %i.nc to <16 x i32> ; 2 uses
  %i.on = mul nuw nsw <16 x i32> %i.om, splat (i32 6419)
  %i.oo = lshr <16 x i32> %i.on, splat (i32 8)
  %i.op = mul nuw nsw <16 x i32> %i.nn, splat (i32 13320)
  %i.oq = lshr <16 x i32> %i.op, splat (i32 8)
  %i.or = add nuw nsw <16 x i32> %i.nm, splat (i32 8708)
  %i.os = add nuw nsw <16 x i32> %i.oo, %i.oq
  %i.ot = sub nsw <16 x i32> %i.or, %i.os
  %i.ou = ashr <16 x i32> %i.ot, splat (i32 6)
  %i.ov = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ou, <16 x i32> zeroinitializer)
  %i.ow = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ov, <16 x i32> splat (i32 255))
  %i.ox = trunc nuw <16 x i32> %i.ow to <16 x i8> ; 16 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %next.gep185.a, i64 5
  %i.oz = getelementptr i8, ptr %i.dh, i64 13
  %i.pa = getelementptr i8, ptr %i.di, i64 21
  %i.pb = getelementptr i8, ptr %i.dj, i64 29
  %i.pc = getelementptr i8, ptr %i.dk, i64 37
  %i.pd = getelementptr i8, ptr %i.dl, i64 45
  %i.pe = getelementptr i8, ptr %i.dm, i64 53
  %i.pf = getelementptr i8, ptr %i.dn, i64 61
  %i.pg = getelementptr i8, ptr %i.do, i64 69
  %i.ph = getelementptr i8, ptr %i.dp, i64 77
  %i.pi = getelementptr i8, ptr %i.dq, i64 85
  %i.pj = getelementptr i8, ptr %i.dr, i64 93
  %i.pk = getelementptr i8, ptr %i.ds, i64 101
  %i.pl = getelementptr i8, ptr %i.dt, i64 109
  %i.pm = getelementptr i8, ptr %i.du, i64 117
  %i.pn = getelementptr i8, ptr %i.dv, i64 125
  %i.po = extractelement <16 x i8> %i.ox, i64 0
  store i8 %i.po, ptr %i.oy, align 1, !alias.scope !364
  %i.pp = extractelement <16 x i8> %i.ox, i64 1
  store i8 %i.pp, ptr %i.oz, align 1, !alias.scope !364
  %i.pq = extractelement <16 x i8> %i.ox, i64 2
  store i8 %i.pq, ptr %i.pa, align 1, !alias.scope !364
  %i.pr = extractelement <16 x i8> %i.ox, i64 3
  store i8 %i.pr, ptr %i.pb, align 1, !alias.scope !364
  %i.ps = extractelement <16 x i8> %i.ox, i64 4
  store i8 %i.ps, ptr %i.pc, align 1, !alias.scope !364
  %i.pt = extractelement <16 x i8> %i.ox, i64 5
  store i8 %i.pt, ptr %i.pd, align 1, !alias.scope !364
  %i.pu = extractelement <16 x i8> %i.ox, i64 6
  store i8 %i.pu, ptr %i.pe, align 1, !alias.scope !364
  %i.pv = extractelement <16 x i8> %i.ox, i64 7
  store i8 %i.pv, ptr %i.pf, align 1, !alias.scope !364
  %i.pw = extractelement <16 x i8> %i.ox, i64 8
  store i8 %i.pw, ptr %i.pg, align 1, !alias.scope !364
  %i.px = extractelement <16 x i8> %i.ox, i64 9
  store i8 %i.px, ptr %i.ph, align 1, !alias.scope !364
  %i.py = extractelement <16 x i8> %i.ox, i64 10
  store i8 %i.py, ptr %i.pi, align 1, !alias.scope !364
  %i.pz = extractelement <16 x i8> %i.ox, i64 11
  store i8 %i.pz, ptr %i.pj, align 1, !alias.scope !364
  %i.qa = extractelement <16 x i8> %i.ox, i64 12
  store i8 %i.qa, ptr %i.pk, align 1, !alias.scope !364
  %i.qb = extractelement <16 x i8> %i.ox, i64 13
  store i8 %i.qb, ptr %i.pl, align 1, !alias.scope !364
  %i.qc = extractelement <16 x i8> %i.ox, i64 14
  store i8 %i.qc, ptr %i.pm, align 1, !alias.scope !364
  %i.qd = extractelement <16 x i8> %i.ox, i64 15
  store i8 %i.qd, ptr %i.pn, align 1, !alias.scope !364
  %i.qe = mul nuw nsw <16 x i32> %i.om, splat (i32 33050)
  %i.qf = lshr <16 x i32> %i.qe, splat (i32 8)
  %i.qg = add nsw <16 x i32> %i.qf, splat (i32 -17685)
  %i.qh = add nsw <16 x i32> %i.qg, %i.nm
  %i.qi = ashr <16 x i32> %i.qh, splat (i32 6)
  %i.qj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.qi, <16 x i32> zeroinitializer)
  %i.qk = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.qj, <16 x i32> splat (i32 255))
  %i.ql = trunc nuw <16 x i32> %i.qk to <16 x i8> ; 16 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %next.gep185.a, i64 6
  %i.qn = getelementptr i8, ptr %i.dh, i64 14
  %i.qo = getelementptr i8, ptr %i.di, i64 22
  %i.qp = getelementptr i8, ptr %i.dj, i64 30
  %i.qq = getelementptr i8, ptr %i.dk, i64 38
  %i.qr = getelementptr i8, ptr %i.dl, i64 46
  %i.qs = getelementptr i8, ptr %i.dm, i64 54
  %i.qt = getelementptr i8, ptr %i.dn, i64 62
  %i.qu = getelementptr i8, ptr %i.do, i64 70
  %i.qv = getelementptr i8, ptr %i.dp, i64 78
  %i.qw = getelementptr i8, ptr %i.dq, i64 86
  %i.qx = getelementptr i8, ptr %i.dr, i64 94
  %i.qy = getelementptr i8, ptr %i.ds, i64 102
  %i.qz = getelementptr i8, ptr %i.dt, i64 110
  %i.ra = getelementptr i8, ptr %i.du, i64 118
  %i.rb = getelementptr i8, ptr %i.dv, i64 126
  %i.rc = extractelement <16 x i8> %i.ql, i64 0
  store i8 %i.rc, ptr %i.qm, align 1, !alias.scope !364
  %i.rd = extractelement <16 x i8> %i.ql, i64 1
  store i8 %i.rd, ptr %i.qn, align 1, !alias.scope !364
  %i.re = extractelement <16 x i8> %i.ql, i64 2
  store i8 %i.re, ptr %i.qo, align 1, !alias.scope !364
  %i.rf = extractelement <16 x i8> %i.ql, i64 3
  store i8 %i.rf, ptr %i.qp, align 1, !alias.scope !364
  %i.rg = extractelement <16 x i8> %i.ql, i64 4
  store i8 %i.rg, ptr %i.qq, align 1, !alias.scope !364
  %i.rh = extractelement <16 x i8> %i.ql, i64 5
  store i8 %i.rh, ptr %i.qr, align 1, !alias.scope !364
  %i.ri = extractelement <16 x i8> %i.ql, i64 6
  store i8 %i.ri, ptr %i.qs, align 1, !alias.scope !364
  %i.rj = extractelement <16 x i8> %i.ql, i64 7
  store i8 %i.rj, ptr %i.qt, align 1, !alias.scope !364
  %i.rk = extractelement <16 x i8> %i.ql, i64 8
  store i8 %i.rk, ptr %i.qu, align 1, !alias.scope !364
  %i.rl = extractelement <16 x i8> %i.ql, i64 9
  store i8 %i.rl, ptr %i.qv, align 1, !alias.scope !364
  %i.rm = extractelement <16 x i8> %i.ql, i64 10
  store i8 %i.rm, ptr %i.qw, align 1, !alias.scope !364
  %i.rn = extractelement <16 x i8> %i.ql, i64 11
  store i8 %i.rn, ptr %i.qx, align 1, !alias.scope !364
  %i.ro = extractelement <16 x i8> %i.ql, i64 12
  store i8 %i.ro, ptr %i.qy, align 1, !alias.scope !364
  %i.rp = extractelement <16 x i8> %i.ql, i64 13
  store i8 %i.rp, ptr %i.qz, align 1, !alias.scope !364
  %i.rq = extractelement <16 x i8> %i.ql, i64 14
  store i8 %i.rq, ptr %i.ra, align 1, !alias.scope !364
  %i.rr = extractelement <16 x i8> %i.ql, i64 15
  store i8 %i.rr, ptr %i.rb, align 1, !alias.scope !364
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rs = icmp eq i64 %index.next, %n.vec
  br i1 %i.rs, label %.lr.ph.preheader219, label %vector.body, !llvm.loop !367

.lr.ph.preheader219:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.37.0153.ph = phi i64 [ %11, %.lr.ph.preheader ], [ %i.ca, %vector.body ]
  %.sroa.34.0152.ph = phi ptr [ %10, %.lr.ph.preheader ], [ %i.cb, %vector.body ]
  %.sroa.28.0151.ph = phi i64 [ %9, %.lr.ph.preheader ], [ %i.cc, %vector.body ]
  %.sroa.25.0150.ph = phi ptr [ %8, %.lr.ph.preheader ], [ %i.cd, %vector.body ]
  %.sroa.19.0149.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.ce, %vector.body ]
  %.sroa.16.0148.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.cf, %vector.body ]
  %.sroa.10.0147.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.cg, %vector.body ]
  %.sroa.790.0146.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.ch, %vector.body ]
  %.sroa.0.0145.ph = phi ptr [ %i.be, %.lr.ph.preheader ], [ %i.cj, %vector.body ]
  %.sroa.599.0144.ph = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %i.cl, %vector.body ]
  %.sroa.6101.0143.ph = phi ptr [ %i.bb, %.lr.ph.preheader ], [ %i.cn, %vector.body ]
  %.sroa.9102.0142.ph = phi i64 [ %i.bg, %.lr.ph.preheader ], [ %i.cp, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader219, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit
  %.sroa.37.0153 = phi i64 [ %i.up, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.37.0153.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.34.0152 = phi ptr [ %i.uq, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.34.0152.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.28.0151 = phi i64 [ %i.uo, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.28.0151.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.25.0150 = phi ptr [ %i.un, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.25.0150.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.19.0149 = phi i64 [ %i.um, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.19.0149.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.16.0148 = phi ptr [ %i.ul, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.16.0148.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.10.0147 = phi i64 [ %i.ry, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.10.0147.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.790.0146 = phi ptr [ %i.rz, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.790.0146.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.0.0145 = phi ptr [ %i.rv, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.0.0145.ph, %.lr.ph.preheader219 ] ; 3 uses
  %.sroa.599.0144 = phi i64 [ %i.rw, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.599.0144.ph, %.lr.ph.preheader219 ] ; 2 uses
  %.sroa.6101.0143 = phi ptr [ %i.rt, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.6101.0143.ph, %.lr.ph.preheader219 ] ; 7 uses
  %.sroa.9102.0142 = phi i64 [ %i.ru, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit ], [ %.sroa.9102.0142.ph, %.lr.ph.preheader219 ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 8
  %i.ru = add i64 %.sroa.9102.0142, -8            ; 2 uses
  %.not.i.i15.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.599.0144, 0
  br i1 %.not.i.i15.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 2
  %i.rw = add i64 %.sroa.599.0144, -2
  %i.rx = icmp ult i64 %.sroa.10.0147, 2
  br i1 %i.rx, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ry = add nsw i64 %.sroa.10.0147, -1
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.790.0146, i64 1
  %i.sa = icmp ult i64 %.sroa.19.0149, 2
  br i1 %i.sa, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.sb = icmp ult i64 %.sroa.28.0151, 2
  %i.sc = icmp ult i64 %.sroa.37.0153, 2
  %or.cond = select i1 %i.sb, i1 true, i1 %i.sc
  br i1 %or.cond, label %._crit_edge, label %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.p, %bb.q, %bb.r, %_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit, %bb.o
  %12 = trunc i64 %i.bd to i1
  br i1 %12, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.v, %._crit_edge
  ret void

bb.t:                                             ; preds = %._crit_edge
  %i.sd = icmp samesign ugt i64 %i.bf, 2
  br i1 %i.sd, label %bb.v, label %bb.u, !prof !315

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.se = getelementptr i8, ptr %8, i64 %9
  %i.sf = getelementptr i8, ptr %i.se, i64 -1
  %i.sg = load i8, ptr %i.sf, align 1, !noundef !76
  %i.sh = getelementptr i8, ptr %6, i64 %7
  %i.si = getelementptr i8, ptr %i.sh, i64 -1
  %i.sj = load i8, ptr %i.si, align 1, !noundef !76
  %i.sk = getelementptr i8, ptr %4, i64 %5
  %i.sl = getelementptr i8, ptr %i.sk, i64 -1
  %i.sm = load i8, ptr %i.sl, align 1, !noundef !76
  %i.sn = getelementptr i8, ptr %10, i64 %11
  %i.so = getelementptr i8, ptr %i.sn, i64 -1
  %i.sp = load i8, ptr %i.so, align 1, !noundef !76
  %i.sq = zext i8 %i.sm to i16
  %i.sr = zext i8 %i.sj to i16                    ; 2 uses
  %i.ss = mul nuw nsw i16 %i.sq, 12
  %i.st = mul nuw nsw i16 %i.sr, 3
  %i.su = add nuw nsw i16 %i.sr, 8
  %i.sv = add nuw nsw i16 %i.su, %i.st
  %i.sw = add nuw nsw i16 %i.sv, %i.ss
  %i.sx = lshr i16 %i.sw, 4
  %i.sy = zext i8 %i.sg to i16
  %i.sz = zext i8 %i.sp to i16                    ; 2 uses
  %i.ta = mul nuw nsw i16 %i.sy, 12
  %i.tb = mul nuw nsw i16 %i.sz, 3
  %i.tc = add nuw nsw i16 %i.ta, 8
  %i.td = add nuw nsw i16 %i.tc, %i.sz
  %i.te = add nuw nsw i16 %i.td, %i.tb
  %i.tf = lshr i16 %i.te, 4
  %i.tg = load i8, ptr %i.bj, align 1, !noundef !76
  %i.th = zext i8 %i.tg to i32
  %i.ti = mul nuw nsw i32 %i.th, 19077
  %i.tj = lshr i32 %i.ti, 8                       ; 3 uses
  %i.tk = zext nneg i16 %i.tf to i32              ; 2 uses
  %i.tl = mul nuw nsw i32 %i.tk, 26149
  %i.tm = lshr i32 %i.tl, 8
  %i.tn = add nsw i32 %i.tj, -14234
  %i.to = add nsw i32 %i.tn, %i.tm
  %i.tp = ashr i32 %i.to, 6
  %..i.i.i40 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.tp, i32 0)
  %i.tq = tail call i32 @llvm.umin.i32(i32 %..i.i.i40, i32 255)
  %i.tr = trunc nuw i32 %i.tq to i8
  store i8 %i.tr, ptr %i.bh, align 1, !alias.scope !368
  %i.ts = zext nneg i16 %i.sx to i32              ; 2 uses
  %i.tt = mul nuw nsw i32 %i.ts, 6419
  %i.tu = lshr i32 %i.tt, 8
  %i.tv = mul nuw nsw i32 %i.tk, 13320
  %i.tw = lshr i32 %i.tv, 8
  %.neg140 = add nuw nsw i32 %i.tj, 8708
  %i.tx = add nuw nsw i32 %i.tu, %i.tw
  %i.ty = sub nsw i32 %.neg140, %i.tx
  %i.tz = ashr i32 %i.ty, 6
  %..i.i2.i42 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.tz, i32 0)
  %i.ua = tail call i32 @llvm.umin.i32(i32 %..i.i2.i42, i32 255)
  %i.ub = trunc nuw i32 %i.ua to i8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.ub, ptr %i.uc, align 1, !alias.scope !368
  %i.ud = mul nuw nsw i32 %i.ts, 33050
  %i.ue = lshr i32 %i.ud, 8
  %i.uf = add nsw i32 %i.tj, -17685
  %i.ug = add nsw i32 %i.uf, %i.ue
  %i.uh = ashr i32 %i.ug, 6
  %..i.i3.i43 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.uh, i32 0)
  %i.ui = tail call i32 @llvm.umin.i32(i32 %..i.i3.i43, i32 255)
  %i.uj = trunc nuw i32 %i.ui to i8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.uj, ptr %i.uk, align 1, !alias.scope !368
  br label %bb.s

_RNvNtCsksn9slvsHfS_10image_webp3yuv9set_pixel.exit: ; preds = %bb.r
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.16.0148, i64 1
  %i.um = add nsw i64 %.sroa.19.0149, -1
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.25.0150, i64 1
  %i.uo = add nsw i64 %.sroa.28.0151, -1
  %i.up = add nsw i64 %.sroa.37.0153, -1
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.34.0152, i64 1
  %i.ur = load i8, ptr %.sroa.0.0145, align 1, !noundef !76
  %i.us = zext i8 %i.ur to i32
  %i.ut = mul nuw nsw i32 %i.us, 19077
  %i.uu = lshr i32 %i.ut, 8                       ; 3 uses
  %i.uv = add nsw i32 %i.uu, -14234
  %.neg130 = add nuw nsw i32 %i.uu, 8708
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 1
  %i.ux = add nsw i32 %i.uu, -17685
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 2
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 4
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 1
  %i.vb = load i8, ptr %i.va, align 1, !noundef !76
  %i.vc = load <2 x i8>, ptr %.sroa.790.0146, align 1
  %i.vd = load <2 x i8>, ptr %.sroa.16.0148, align 1
  %i.ve = load <2 x i8>, ptr %.sroa.25.0150, align 1
  %i.vf = load <2 x i8>, ptr %.sroa.34.0152, align 1
  %i.vg = shufflevector <2 x i8> %i.vc, <2 x i8> %i.ve, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.vh = zext <4 x i8> %i.vg to <4 x i16>        ; 2 uses
  %i.vi = shufflevector <2 x i8> %i.vd, <2 x i8> %i.vf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.vj = zext <4 x i8> %i.vi to <4 x i16>        ; 2 uses
  %i.vk = mul nuw nsw <4 x i16> %i.vh, splat (i16 9)
  %i.vl = add nuw nsw <4 x i16> %i.vj, %i.vh
  %i.vm = mul nuw nsw <4 x i16> %i.vl, splat (i16 3)
  %i.vn = shufflevector <4 x i16> %i.vm, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.vo = add nuw nsw <4 x i16> %i.vk, splat (i16 8)
  %i.vp = add nuw nsw <4 x i16> %i.vo, %i.vj
  %i.vq = add nuw nsw <4 x i16> %i.vp, %i.vn
  %i.vr = lshr <4 x i16> %i.vq, splat (i16 4)     ; 4 uses
  %i.vs = extractelement <4 x i16> %i.vr, i64 3
  %i.vt = zext nneg i16 %i.vs to i32              ; 2 uses
  %i.vu = mul nuw nsw i32 %i.vt, 26149
  %i.vv = lshr i32 %i.vu, 8
  %i.vw = add nsw i32 %i.uv, %i.vv
  %i.vx = ashr i32 %i.vw, 6
  %..i.i.i44 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.vx, i32 0)
  %i.vy = tail call i32 @llvm.umin.i32(i32 %..i.i.i44, i32 255)
  %i.vz = trunc nuw i32 %i.vy to i8
  store i8 %i.vz, ptr %.sroa.6101.0143, align 1, !alias.scope !361
  %i.wa = extractelement <4 x i16> %i.vr, i64 2
  %i.wb = zext nneg i16 %i.wa to i32              ; 2 uses
  %i.wc = mul nuw nsw i32 %i.wb, 6419
  %i.wd = lshr i32 %i.wc, 8
  %i.we = mul nuw nsw i32 %i.vt, 13320
  %i.wf = lshr i32 %i.we, 8
  %i.wg = add nuw nsw i32 %i.wd, %i.wf
  %i.wh = sub nsw i32 %.neg130, %i.wg
  %i.wi = ashr i32 %i.wh, 6
  %..i.i2.i46 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.wi, i32 0)
  %i.wj = tail call i32 @llvm.umin.i32(i32 %..i.i2.i46, i32 255)
  %i.wk = trunc nuw i32 %i.wj to i8
  store i8 %i.wk, ptr %i.uw, align 1, !alias.scope !361
  %i.wl = mul nuw nsw i32 %i.wb, 33050
  %i.wm = lshr i32 %i.wl, 8
  %i.wn = add nsw i32 %i.ux, %i.wm
  %i.wo = ashr i32 %i.wn, 6
  %..i.i3.i47 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.wo, i32 0)
  %i.wp = tail call i32 @llvm.umin.i32(i32 %..i.i3.i47, i32 255)
  %i.wq = trunc nuw i32 %i.wp to i8
  store i8 %i.wq, ptr %i.uy, align 1, !alias.scope !361
  %i.wr = zext i8 %i.vb to i32
  %i.ws = mul nuw nsw i32 %i.wr, 19077
  %i.wt = lshr i32 %i.ws, 8                       ; 3 uses
  %i.wu = extractelement <4 x i16> %i.vr, i64 1
  %i.wv = zext nneg i16 %i.wu to i32              ; 2 uses
  %i.ww = mul nuw nsw i32 %i.wv, 26149
  %i.wx = lshr i32 %i.ww, 8
  %i.wy = add nsw i32 %i.wt, -14234
  %i.wz = add nsw i32 %i.wy, %i.wx
  %i.xa = ashr i32 %i.wz, 6
  %..i.i.i48 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.xa, i32 0)
  %i.xb = tail call i32 @llvm.umin.i32(i32 %..i.i.i48, i32 255)
  %i.xc = trunc nuw i32 %i.xb to i8
  store i8 %i.xc, ptr %i.uz, align 1, !alias.scope !364
  %i.xd = extractelement <4 x i16> %i.vr, i64 0
  %i.xe = zext nneg i16 %i.xd to i32              ; 2 uses
  %i.xf = mul nuw nsw i32 %i.xe, 6419
  %i.xg = lshr i32 %i.xf, 8
  %i.xh = mul nuw nsw i32 %i.wv, 13320
  %i.xi = lshr i32 %i.xh, 8
  %i.xj = add nuw nsw i32 %i.wt, 8708
  %i.xk = add nuw nsw i32 %i.xg, %i.xi
  %i.xl = sub nsw i32 %i.xj, %i.xk
  %i.xm = ashr i32 %i.xl, 6
  %..i.i2.i50 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.xm, i32 0)
  %i.xn = tail call i32 @llvm.umin.i32(i32 %..i.i2.i50, i32 255)
  %i.xo = trunc nuw i32 %i.xn to i8
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 5
  store i8 %i.xo, ptr %i.xp, align 1, !alias.scope !364
  %i.xq = mul nuw nsw i32 %i.xe, 33050
  %i.xr = lshr i32 %i.xq, 8
  %i.xs = add nsw i32 %i.xr, -17685
  %i.xt = add nsw i32 %i.xs, %i.wt
  %i.xu = ashr i32 %i.xt, 6
  %..i.i3.i51 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.xu, i32 0)
  %i.xv = tail call i32 @llvm.umin.i32(i32 %..i.i3.i51, i32 255)
  %i.xw = trunc nuw i32 %i.xv to i8
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 6
  store i8 %i.xw, ptr %i.xx, align 1, !alias.scope !364
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ru, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !371
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_3
