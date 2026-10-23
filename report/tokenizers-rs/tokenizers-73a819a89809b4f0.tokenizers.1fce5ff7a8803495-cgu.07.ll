Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB6_9tokenizer10Normalizer9normalize:bb.a
  %.pre105.i.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx, align 1, !range !1300, !alias.scope !1307 ; 2 uses
  %.not46.i.i.i.i = icmp eq i8 %.pre105.i.i.i.i, -1
  br i1 %.not46.i.i.i.i, label %bb.av, label %.thread.thread.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.ip = load i8, ptr %.sroa.15.0..sroa_idx, align 1, !range !1300, !alias.scope !1307, !noundef !7 ; 2 uses
  %.not45.i.i.i.i = icmp eq i8 %i.ip, -1
  br i1 %.not45.i.i.i.i, label %.loopexit.i.i.i, label %.thread.thread.i.i.i.i

.sink.split.i.i.i.i.loopexit:                     ; preds = %bb.as
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i.loopexit671:                  ; preds = %bb.as
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.as, %.sink.split.i.i.i.i.loopexit671, %.sink.split.i.i.i.i.loopexit
  %.sink.i.i.i.i = phi i8 [ 6, %.sink.split.i.i.i.i.loopexit ], [ 0, %.sink.split.i.i.i.i.loopexit671 ], [ 5, %bb.as ]
  store i8 %.sink.i.i.i.i, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !1307
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.au, %.sink.split.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.d, align 8, !alias.scope !1307
  store i64 0, ptr %i.iq, align 8, !alias.scope !1307
  br label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ir = icmp eq i64 %i.gk, 0
  br i1 %i.ir, label %.invoke553, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not.i40.i.i.i, label %bb.ax, label %.split.i57.i.i.i.i

.split.i57.i.i.i.i:                               ; preds = %bb.aw
  %i.is = icmp eq i64 %i.gk, %i.ag
  br i1 %i.is, label %bb.ay, label %.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.it = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !1312, !noalias !1297, !noundef !7
  %i.iv = icmp sgt i8 %i.iu, -65
  br i1 %i.iv, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax, %.split.i57.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -1
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !1309, !noalias !1313, !noundef !7 ; 3 uses
  %i.iz = icmp sgt i8 %i.iy, -1
  br i1 %i.iz, label %bb.az, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i.i.i: ; preds = %bb.ay
  %i.ja = icmp ne i64 %i.gk, 1
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds i8, ptr %i.iw, i64 -2
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !1309, !noalias !1313, !noundef !7 ; 3 uses
  %i.jd = and i8 %i.jc, 31
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = icmp slt i8 %i.jc, -64
  br i1 %i.jf, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i.i.i, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jg = zext nneg i8 %i.iy to i32
  br label %.thread.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i.i.i
  %i.jh = icmp ne i64 %i.gk, 2
  call void @llvm.assume(i1 %i.jh)
  %i.ji = getelementptr inbounds i8, ptr %i.iw, i64 -3
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !1309, !noalias !1313, !noundef !7 ; 3 uses
  %i.jk = and i8 %i.jj, 15
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = icmp slt i8 %i.jj, -64
  br i1 %i.jm, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i.i.i, label %bb.bb

bb.ba:                                            ; preds = %bb.bb, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.kd, %bb.bb ], [ %i.je, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i.i.i ]
  %i.jn = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.jo = and i8 %i.iy, 63
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jn, %i.jp
  br label %.thread.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i.i.i
  %i.jr = icmp ne i64 %i.gk, 3
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !1309, !noalias !1313, !noundef !7
  %i.ju = and i8 %i.jt, 7
  %i.jv = zext nneg i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 6
  %i.jx = and i8 %i.jj, 63
  %i.jy = zext nneg i8 %i.jx to i32
  %i.jz = or disjoint i32 %i.jw, %i.jy
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.jz, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i.i.i ], [ %i.jl, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i.i.i ]
  %i.ka = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.kb = and i8 %i.jc, 63
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.ka, %i.kc
  br label %bb.ba

.thread.i.i.i.i:                                  ; preds = %bb.ba, %bb.az
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.jg, %bb.az ], [ %i.jq, %bb.ba ] ; 2 uses
  %i.ke = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ke)
  %i.kf = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.4.1.i.ph.i.i.i.i)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %.thread.i.i.i.i
  store i8 %i.kf, ptr %.sroa.15.0..sroa_idx, align 1, !alias.scope !1307
  %.pre106.i.i.i.i = load i8, ptr %.sroa.16.0..sroa_idx, align 8, !range !1300, !alias.scope !1307 ; 2 uses
  %.not49.i.i.i.i = icmp eq i8 %.pre106.i.i.i.i, -1
  br i1 %.not49.i.i.i.i, label %.invoke553, label %.thread.thread.i.i.i.i, !prof !1314

.thread.thread.i.i.i.i:                           ; preds = %.noexc38, %bb.au, %bb.at
  %i.kg = phi i8 [ %i.kf, %.noexc38 ], [ %i.ip, %bb.au ], [ %.pre105.i.i.i.i, %bb.at ] ; 6 uses
  %i.kh = phi i8 [ %.pre106.i.i.i.i, %.noexc38 ], [ %i.gs, %bb.au ], [ %i.gs, %bb.at ] ; 6 uses
  switch i8 %i.kg, label %bb.bc [
    i8 1, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i
    i8 2, label %.loopexit.i.i.sink.split
    i8 7, label %.loopexit.i.i.sink.split
  ]

bb.bc:                                            ; preds = %.thread.thread.i.i.i.i
  switch i8 %i.kh, label %bb.bd [
    i8 1, label %.loopexit.i.i.sink.split
    i8 2, label %.loopexit.i.i.sink.split
    i8 7, label %.loopexit.i.i.sink.split
  ]

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.kg, label %bb.be [
    i8 6, label %bb.bf
    i8 8, label %bb.bg
    i8 14, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.kh, label %bb.bh [
    i8 3, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 12, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i
    i8 13, label %bb.bi
    i8 15, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
  ]

bb.bf:                                            ; preds = %bb.bd
  switch i8 %i.kh, label %.loopexit.i.i.sink.split [
    i8 6, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 8, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 9, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 14, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 3, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 12, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i
    i8 5, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread91.i.i.i.i
    i8 15, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
  ]

bb.bg:                                            ; preds = %bb.bd, %bb.bd
  switch i8 %i.kh, label %bb.bh [
    i8 13, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 14, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 3, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 12, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i
    i8 15, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.ki = icmp eq i8 %i.kg, 10
  br i1 %i.ki, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i, label %.thread.i.i.i.i.i

bb.bi:                                            ; preds = %bb.be
  switch i8 %i.kg, label %.loopexit.i.i.sink.split [
    i8 9, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 13, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
    i8 10, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i
  ]

.thread.i.i.i.i.i:                                ; preds = %bb.bh
  switch i8 %i.kh, label %.loopexit.i.i.sink.split [
    i8 4, label %bb.bj
    i8 5, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread91.i.i.i.i
    i8 11, label %bb.bk
  ]

bb.bj:                                            ; preds = %.thread.i.i.i.i.i
  %i.kj = icmp eq i8 %i.kg, 15
  br i1 %i.kj, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread95.i.i.i.i, label %.loopexit.i.i.sink.split

bb.bk:                                            ; preds = %.thread.i.i.i.i.i
  %i.kk = icmp eq i8 %i.kg, 11
  br i1 %i.kk, label %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread93.i.i.i.i, label %.loopexit.i.i.sink.split

_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i: ; preds = %.thread.thread.i.i.i.i
  %.not104.i.i.i.i = icmp eq i8 %i.kh, 7
  br i1 %.not104.i.i.i.i, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split, label %.loopexit.i.i.sink.split

_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %i.kl = load i8, ptr %.sroa.12.0..sroa_idx, align 4, !range !18, !alias.scope !1307, !noundef !7 ; 2 uses
  %..i.i.i.i = sub nuw nsw i8 4, %i.kl
  store i8 %..i.i.i.i, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !1307
  br label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i.i

_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread91.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.bf
  %i.km = icmp eq i64 %i.gk, 0
  br i1 %i.km, label %.loopexit.i.i.sink.split, label %bb.bl

bb.bl:                                            ; preds = %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread91.i.i.i.i
  br i1 %.not.i40.i.i.i, label %bb.bm, label %.split.i61.i.i.i.i

.split.i61.i.i.i.i:                               ; preds = %bb.bl
  %i.kn = icmp eq i64 %i.gk, %i.ag
  br i1 %i.kn, label %bb.bp, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !1315, !noalias !1297, !noundef !7
  %i.kq = icmp sgt i8 %i.kp, -65
  br i1 %i.kq, label %bb.bp, label %.invoke

_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread93.i.i.i.i: ; preds = %bb.bk
  %i.kr = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !range !11, !alias.scope !1307, !noundef !7
  %i.ks = trunc nuw i64 %i.kr to i1
  br i1 %i.ks, label %bb.bz, label %bb.ca

_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread95.i.i.i.i: ; preds = %bb.bj
  %i.kt = icmp eq i64 %i.gk, 0
  br i1 %i.kt, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i.preheader, label %bb.bn

bb.bn:                                            ; preds = %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread95.i.i.i.i
  br i1 %.not.i40.i.i.i, label %bb.bo, label %.split.i65.i.i.i.i

.split.i65.i.i.i.i:                               ; preds = %bb.bn
  %i.ku = icmp eq i64 %i.gk, %i.ag
  br i1 %i.ku, label %bb.ci, label %.invoke

bb.bo:                                            ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  %i.kw = load i8, ptr %i.kv, align 1, !alias.scope !1316, !noalias !1297, !noundef !7
  %i.kx = icmp sgt i8 %i.kw, -65
  br i1 %i.kx, label %bb.ci, label %.invoke

bb.bp:                                            ; preds = %bb.bm, %.split.i61.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.ky = load i8, ptr %.sroa.12.0..sroa_idx, align 4, !range !18, !alias.scope !1319, !noalias !1320, !noundef !7
  %2 = trunc nuw i8 %i.ky to i1
  br i1 %2, label %.lr.ph.preheader.i28.i, label %.loopexit.i.i.sink.split

.lr.ph.preheader.i28.i:                           ; preds = %bb.bp
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  %i.la = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !range !11, !alias.scope !1319, !noalias !1320, !noundef !7 ; 2 uses
  %i.lb = trunc nuw i64 %i.la to i1
  %i.lc = load i64, ptr %i.aa, align 8, !alias.scope !1319, !noalias !1320 ; 2 uses
  %.sroa.0.0.i29.i = select i1 %i.lb, i64 %i.lc, i64 0
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %bb.bw, %.lr.ph.preheader.i28.i
  %i.ld = phi i64 [ %i.og, %bb.bw ], [ %i.lc, %.lr.ph.preheader.i28.i ] ; 2 uses
  %i.le = phi i64 [ %i.oh, %bb.bw ], [ %i.la, %.lr.ph.preheader.i28.i ] ; 2 uses
  %.sroa.0.124.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.bw ], [ %.sroa.0.0.i29.i, %.lr.ph.preheader.i28.i ] ; 2 uses
  %.sroa.5.023.i.i = phi ptr [ %.sroa.5.3.ph.i34.i, %bb.bw ], [ %i.kz, %.lr.ph.preheader.i28.i ] ; 4 uses
  %i.lf = getelementptr inbounds i8, ptr %.sroa.5.023.i.i, i64 -1 ; 3 uses
  %i.lg = load i8, ptr %i.lf, align 1, !alias.scope !1318, !noalias !1321, !noundef !7 ; 3 uses
  %i.lh = icmp sgt i8 %i.lg, -1
  br i1 %i.lh, label %bb.bq, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i: ; preds = %.lr.ph.i30.i
  %i.li = icmp ne ptr %i.ah, %i.lf
  call void @llvm.assume(i1 %i.li), !noalias !1320
  %i.lj = getelementptr inbounds i8, ptr %.sroa.5.023.i.i, i64 -2 ; 3 uses
  %i.lk = load i8, ptr %i.lj, align 1, !alias.scope !1318, !noalias !1321, !noundef !7 ; 3 uses
  %i.ll = and i8 %i.lk, 31
  %i.lm = zext nneg i8 %i.ll to i32
  %i.ln = icmp slt i8 %i.lk, -64
  br i1 %i.ln, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i30.i
  %i.lo = zext nneg i8 %i.lg to i32
  br label %bb.bt

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i
  %i.lp = icmp ne ptr %i.ah, %i.lj
  call void @llvm.assume(i1 %i.lp), !noalias !1320
  %i.lq = getelementptr inbounds i8, ptr %.sroa.5.023.i.i, i64 -3 ; 3 uses
  %i.lr = load i8, ptr %i.lq, align 1, !alias.scope !1318, !noalias !1321, !noundef !7 ; 3 uses
  %i.ls = and i8 %i.lr, 15
  %i.lt = zext nneg i8 %i.ls to i32
  %i.lu = icmp slt i8 %i.lr, -64
  br i1 %i.lu, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i41.i, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i
  %.sroa.5.1.i32.i = phi ptr [ %.sroa.5.2.i39.i, %bb.bs ], [ %i.lj, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i ]
  %.sroa.010.0.i.i33.i = phi i32 [ %i.ml, %bb.bs ], [ %i.lm, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i31.i ]
  %i.lv = shl nuw nsw i32 %.sroa.010.0.i.i33.i, 6
  %i.lw = and i8 %i.lg, 63
  %i.lx = zext nneg i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.lv, %i.lx
  br label %bb.bt

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i41.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i
  %i.lz = icmp ne ptr %i.ah, %i.lq
  call void @llvm.assume(i1 %i.lz), !noalias !1320
  %i.ma = getelementptr inbounds i8, ptr %.sroa.5.023.i.i, i64 -4 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !1318, !noalias !1321, !noundef !7
  %i.mc = and i8 %i.mb, 7
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = shl nuw nsw i32 %i.md, 6
  %i.mf = and i8 %i.lr, 63
  %i.mg = zext nneg i8 %i.mf to i32
  %i.mh = or disjoint i32 %i.me, %i.mg
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i41.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i
  %.sroa.5.2.i39.i = phi ptr [ %i.ma, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i41.i ], [ %i.lq, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i ]
  %.sroa.010.1.i.i40.i = phi i32 [ %i.mh, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i41.i ], [ %i.lt, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i38.i ]
  %i.mi = shl nuw nsw i32 %.sroa.010.1.i.i40.i, 6
  %i.mj = and i8 %i.lk, 63
  %i.mk = zext nneg i8 %i.mj to i32
  %i.ml = or disjoint i32 %i.mi, %i.mk
  br label %bb.br

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %.sroa.5.3.ph.i34.i = phi ptr [ %.sroa.5.1.i32.i, %bb.br ], [ %i.lf, %bb.bq ] ; 2 uses
  %.sroa.4.1.i.ph.i35.i = phi i32 [ %i.ly, %bb.br ], [ %i.lo, %bb.bq ] ; 22 uses
  %i.mm = icmp samesign ult i32 %.sroa.4.1.i.ph.i35.i, 1114112
  call void @llvm.assume(i1 %i.mm), !noalias !1320
  switch i32 %.sroa.4.1.i.ph.i35.i, label %bb.bu [
    i32 2381, label %bb.bv
    i32 2509, label %bb.bv
    i32 2765, label %bb.bv
    i32 2893, label %bb.bv
    i32 3149, label %bb.bv
    i32 3405, label %bb.bv
    i32 4153, label %bb.bv
    i32 6098, label %bb.bv
    i32 6752, label %bb.bv
    i32 6980, label %bb.bv
    i32 7083, label %bb.bv
    i32 43456, label %bb.bv
    i32 43766, label %bb.bv
    i32 68159, label %bb.bv
    i32 69939, label %bb.bv
    i32 70608, label %bb.bv
    i32 71998, label %bb.bv
    i32 72263, label %bb.bv
    i32 72345, label %bb.bv
    i32 73538, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.mn = icmp samesign ult i32 %.sroa.4.1.i.ph.i35.i, 43302
  %i.mo = select i1 %i.mn, i64 0, i64 188, !unpredictable !7 ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, 94               ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.mp ; 2 uses
  %.val17.1.i.i.i = load i32, ptr %i.mq, align 4, !range !28, !noalias !1322, !noundef !7
  %i.mr = getelementptr i8, ptr %i.mq, i64 4
  %.val18.1.i.i.i = load i32, ptr %i.mr, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.1.i.i.i = icmp samesign ugt i32 %.val17.1.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.1.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.1.i.i.i
  %i.ms = select i1 %.not1.i20.1.i.i.i, i1 %.not.i19.1.i.i.i, i1 false
  %i.mt = select i1 %i.ms, i64 %i.mo, i64 %i.mp, !unpredictable !7 ; 2 uses
  %i.mu = add nuw nsw i64 %i.mt, 47               ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.mu ; 2 uses
  %.val17.2.i.i.i = load i32, ptr %i.mv, align 4, !range !28, !noalias !1322, !noundef !7
  %i.mw = getelementptr i8, ptr %i.mv, i64 4
  %.val18.2.i.i.i = load i32, ptr %i.mw, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.2.i.i.i = icmp samesign ugt i32 %.val17.2.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.2.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.2.i.i.i
  %i.mx = select i1 %.not1.i20.2.i.i.i, i1 %.not.i19.2.i.i.i, i1 false
  %i.my = select i1 %i.mx, i64 %i.mt, i64 %i.mu, !unpredictable !7 ; 2 uses
  %i.mz = add nuw nsw i64 %i.my, 24               ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.mz ; 2 uses
  %.val17.3.i.i.i = load i32, ptr %i.na, align 4, !range !28, !noalias !1322, !noundef !7
  %i.nb = getelementptr i8, ptr %i.na, i64 4
  %.val18.3.i.i.i = load i32, ptr %i.nb, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.3.i.i.i = icmp samesign ugt i32 %.val17.3.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.3.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.3.i.i.i
  %i.nc = select i1 %.not1.i20.3.i.i.i, i1 %.not.i19.3.i.i.i, i1 false
  %i.nd = select i1 %i.nc, i64 %i.my, i64 %i.mz, !unpredictable !7 ; 2 uses
  %i.ne = add nuw nsw i64 %i.nd, 12               ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.ne ; 2 uses
  %.val17.4.i.i.i = load i32, ptr %i.nf, align 4, !range !28, !noalias !1322, !noundef !7
  %i.ng = getelementptr i8, ptr %i.nf, i64 4
  %.val18.4.i.i.i = load i32, ptr %i.ng, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.4.i.i.i = icmp samesign ugt i32 %.val17.4.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.4.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.4.i.i.i
  %i.nh = select i1 %.not1.i20.4.i.i.i, i1 %.not.i19.4.i.i.i, i1 false
  %i.ni = select i1 %i.nh, i64 %i.nd, i64 %i.ne, !unpredictable !7 ; 2 uses
  %i.nj = add nuw nsw i64 %i.ni, 6                ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.nj ; 2 uses
  %.val17.5.i.i.i = load i32, ptr %i.nk, align 4, !range !28, !noalias !1322, !noundef !7
  %i.nl = getelementptr i8, ptr %i.nk, i64 4
  %.val18.5.i.i.i = load i32, ptr %i.nl, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.5.i.i.i = icmp samesign ugt i32 %.val17.5.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.5.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.5.i.i.i
  %i.nm = select i1 %.not1.i20.5.i.i.i, i1 %.not.i19.5.i.i.i, i1 false
  %i.nn = select i1 %i.nm, i64 %i.ni, i64 %i.nj, !unpredictable !7 ; 2 uses
  %i.no = add nuw nsw i64 %i.nn, 3                ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.no ; 2 uses
  %.val17.6.i.i.i = load i32, ptr %i.np, align 4, !range !28, !noalias !1322, !noundef !7
  %i.nq = getelementptr i8, ptr %i.np, i64 4
  %.val18.6.i.i.i = load i32, ptr %i.nq, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.6.i.i.i = icmp samesign ugt i32 %.val17.6.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.6.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.6.i.i.i
  %i.nr = select i1 %.not1.i20.6.i.i.i, i1 %.not.i19.6.i.i.i, i1 false
  %i.ns = select i1 %i.nr, i64 %i.nn, i64 %i.no, !unpredictable !7 ; 2 uses
  %i.nt = add nuw nsw i64 %i.ns, 1                ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.nt ; 2 uses
  %.val17.7.i.i.i = load i32, ptr %i.nu, align 4, !range !28, !noalias !1322, !noundef !7
  %i.nv = getelementptr i8, ptr %i.nu, i64 4
  %.val18.7.i.i.i = load i32, ptr %i.nv, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.7.i.i.i = icmp samesign ugt i32 %.val17.7.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.7.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.7.i.i.i
  %i.nw = select i1 %.not1.i20.7.i.i.i, i1 %.not.i19.7.i.i.i, i1 false
  %i.nx = select i1 %i.nw, i64 %i.ns, i64 %i.nt, !unpredictable !7 ; 2 uses
  %i.ny = add nuw nsw i64 %i.nx, 1                ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.ny ; 2 uses
  %.val17.8.i.i.i = load i32, ptr %i.nz, align 4, !range !28, !noalias !1322, !noundef !7
  %i.oa = getelementptr i8, ptr %i.nz, i64 4
  %.val18.8.i.i.i = load i32, ptr %i.oa, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i19.8.i.i.i = icmp samesign ugt i32 %.val17.8.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i20.8.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val18.8.i.i.i
  %i.ob = select i1 %.not1.i20.8.i.i.i, i1 %.not.i19.8.i.i.i, i1 false
  %i.oc = select i1 %i.ob, i64 %i.nx, i64 %i.ny, !unpredictable !7
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @111, i64 %i.oc ; 2 uses
  %.val14.i.i.i = load i32, ptr %i.od, align 4, !range !28, !noalias !1322, !noundef !7
  %i.oe = getelementptr i8, ptr %i.od, i64 4
  %.val15.i.i.i = load i32, ptr %i.oe, align 4, !range !28, !noalias !1322, !noundef !7
  %.not.i.i.i36.i = icmp samesign ule i32 %.val14.i.i.i, %.sroa.4.1.i.ph.i35.i
  %.not1.i.i.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph.i35.i, %.val15.i.i.i
  %.not.i.not.i.i = select i1 %.not1.i.i.i.i, i1 %.not.i.i.i36.i, i1 false
  br i1 %.not.i.not.i.i, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.of = add i64 %.sroa.0.124.i.i, 1             ; 3 uses
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !1319, !noalias !1320
  store i64 %i.of, ptr %i.aa, align 8, !alias.scope !1319, !noalias !1320
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.og = phi i64 [ %i.ld, %bb.bu ], [ %i.of, %bb.bv ]
  %i.oh = phi i64 [ %i.le, %bb.bu ], [ 1, %bb.bv ]
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.124.i.i, %bb.bu ], [ %i.of, %bb.bv ]
  %i.oi = icmp eq ptr %i.ah, %.sroa.5.3.ph.i34.i
  br i1 %i.oi, label %.loopexit.i.i.sink.split, label %.lr.ph.i30.i

bb.bx:                                            ; preds = %bb.bu
  %3 = trunc nuw i64 %i.le to i1
  %4 = icmp ne i64 %i.ld, 0
  %or.cond.not.i.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.not.i.i, label %bb.by, label %.loopexit.i.i.sink.split

bb.by:                                            ; preds = %bb.bx
  %i.oj = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.4.1.i.ph.i35.i)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.by
  %.not.i37.i = icmp eq i8 %i.oj, 5
  br i1 %.not.i37.i, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split, label %.loopexit.i.i.sink.split

bb.bz:                                            ; preds = %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread93.i.i.i.i
  %i.ok = load i64, ptr %i.ab, align 8, !alias.scope !1307, !noundef !7
  %i.ol = and i64 %i.ok, 1                        ; 2 uses
  %i.om = icmp eq i64 %i.ol, 0
  %.54.i.i.i.i = select i1 %i.om, i8 4, i8 3
  store i8 %.54.i.i.i.i, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !1307
  %i.on = trunc nuw nsw i64 %i.ol to i8
  br label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i.i

bb.ca:                                            ; preds = %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread93.i.i.i.i
  %i.oo = icmp eq i64 %i.gk, 0
  br i1 %i.oo, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not.i40.i.i.i, label %bb.cc, label %.split.i69.i.i.i.i

.split.i69.i.i.i.i:                               ; preds = %bb.cb
  %i.op = icmp eq i64 %i.gk, %i.ag
  br i1 %i.op, label %.lr.ph.preheader.i.i, label %.invoke

bb.cc:                                            ; preds = %bb.cb
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  %i.or = load i8, ptr %i.oq, align 1, !alias.scope !1323, !noalias !1297, !noundef !7
  %i.os = icmp sgt i8 %i.or, -65
  br i1 %i.os, label %.lr.ph.preheader.i.i, label %.invoke

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i.thread: ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1326, !noalias !1320
  store i64 0, ptr %i.ab, align 8, !alias.scope !1326, !noalias !1320
  br label %.loopexit.i.i.sink.split

.lr.ph.preheader.i.i:                             ; preds = %bb.cc, %.split.i69.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ch, %.lr.ph.preheader.i.i
  %.sroa.0.119.i.i = phi i64 [ %i.qd, %bb.ch ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.5.018.i.i = phi ptr [ %.sroa.5.3.ph.i21.i, %bb.ch ], [ %i.ot, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ou = getelementptr inbounds i8, ptr %.sroa.5.018.i.i, i64 -1 ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !1325, !noalias !1327, !noundef !7 ; 3 uses
  %i.ow = icmp sgt i8 %i.ov, -1
  br i1 %i.ow, label %bb.cd, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i: ; preds = %.lr.ph.i.i
  %i.ox = icmp ne ptr %i.ah, %i.ou
  call void @llvm.assume(i1 %i.ox), !noalias !1320
  %i.oy = getelementptr inbounds i8, ptr %.sroa.5.018.i.i, i64 -2 ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 1, !alias.scope !1325, !noalias !1327, !noundef !7 ; 3 uses
  %i.pa = and i8 %i.oz, 31
  %i.pb = zext nneg i8 %i.pa to i32
  %i.pc = icmp slt i8 %i.oz, -64
  br i1 %i.pc, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i.i
  %i.pd = zext nneg i8 %i.ov to i32
  br label %bb.cg

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i
  %i.pe = icmp ne ptr %i.ah, %i.oy
  call void @llvm.assume(i1 %i.pe), !noalias !1320
  %i.pf = getelementptr inbounds i8, ptr %.sroa.5.018.i.i, i64 -3 ; 3 uses
  %i.pg = load i8, ptr %i.pf, align 1, !alias.scope !1325, !noalias !1327, !noundef !7 ; 3 uses
  %i.ph = and i8 %i.pg, 15
  %i.pi = zext nneg i8 %i.ph to i32
  %i.pj = icmp slt i8 %i.pg, -64
  br i1 %i.pj, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i27.i, label %bb.cf

bb.ce:                                            ; preds = %bb.cf, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i
  %.sroa.5.1.i19.i = phi ptr [ %.sroa.5.2.i25.i, %bb.cf ], [ %i.oy, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i ]
  %.sroa.010.0.i.i20.i = phi i32 [ %i.qa, %bb.cf ], [ %i.pb, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i18.i ]
  %i.pk = shl nuw nsw i32 %.sroa.010.0.i.i20.i, 6
  %i.pl = and i8 %i.ov, 63
  %i.pm = zext nneg i8 %i.pl to i32
  %i.pn = or disjoint i32 %i.pk, %i.pm
  br label %bb.cg

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i27.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i
  %i.po = icmp ne ptr %i.ah, %i.pf
  call void @llvm.assume(i1 %i.po), !noalias !1320
  %i.pp = getelementptr inbounds i8, ptr %.sroa.5.018.i.i, i64 -4 ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !alias.scope !1325, !noalias !1327, !noundef !7
  %i.pr = and i8 %i.pq, 7
  %i.ps = zext nneg i8 %i.pr to i32
  %i.pt = shl nuw nsw i32 %i.ps, 6
  %i.pu = and i8 %i.pg, 63
  %i.pv = zext nneg i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv
  br label %bb.cf

bb.cf:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i27.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i
  %.sroa.5.2.i25.i = phi ptr [ %i.pp, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i27.i ], [ %i.pf, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i ]
  %.sroa.010.1.i.i26.i = phi i32 [ %i.pw, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i27.i ], [ %i.pi, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i24.i ]
  %i.px = shl nuw nsw i32 %.sroa.010.1.i.i26.i, 6
  %i.py = and i8 %i.oz, 63
  %i.pz = zext nneg i8 %i.py to i32
  %i.qa = or disjoint i32 %i.px, %i.pz
  br label %bb.ce

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.5.3.ph.i21.i = phi ptr [ %.sroa.5.1.i19.i, %bb.ce ], [ %i.ou, %bb.cd ] ; 2 uses
  %.sroa.4.1.i.ph.i22.i = phi i32 [ %i.pn, %bb.ce ], [ %i.pd, %bb.cd ] ; 2 uses
  %i.qb = icmp samesign ult i32 %.sroa.4.1.i.ph.i22.i, 1114112
  call void @llvm.assume(i1 %i.qb), !noalias !1320
  %i.qc = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.4.1.i.ph.i22.i)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.cg
  %.not.i23.i = icmp eq i8 %i.qc, 11
  br i1 %.not.i23.i, label %bb.ch, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i

bb.ch:                                            ; preds = %.noexc42
  %i.qd = add i64 %.sroa.0.119.i.i, 1             ; 2 uses
  %i.qe = icmp eq ptr %i.ah, %.sroa.5.3.ph.i21.i
  br i1 %i.qe, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i, label %.lr.ph.i.i

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i: ; preds = %bb.ch, %.noexc42
  %.sroa.0.1.lcssa.sink25.i.i = phi i64 [ %.sroa.0.119.i.i, %.noexc42 ], [ %i.qd, %bb.ch ] ; 2 uses
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1326, !noalias !1320
  store i64 %.sroa.0.1.lcssa.sink25.i.i, ptr %i.ab, align 8, !alias.scope !1326, !noalias !1320
  %i.qf = and i64 %.sroa.0.1.lcssa.sink25.i.i, 1
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %.loopexit.i.i.sink.split, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split

bb.ci:                                            ; preds = %bb.bo, %.split.i65.i.i.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gk ; 4 uses
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -1 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !alias.scope !1328, !noalias !1329, !noundef !7 ; 3 uses
  %i.qk = icmp sgt i8 %i.qj, -1
  br i1 %i.qk, label %bb.cj, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i: ; preds = %bb.ci
  %i.ql = icmp ne i64 %i.gk, 1
  call void @llvm.assume(i1 %i.ql), !noalias !1320
  %i.qm = getelementptr inbounds i8, ptr %i.qh, i64 -2 ; 2 uses
  %i.qn = load i8, ptr %i.qm, align 1, !alias.scope !1328, !noalias !1329, !noundef !7 ; 3 uses
  %i.qo = and i8 %i.qn, 31
  %i.qp = zext nneg i8 %i.qo to i32
  %i.qq = icmp slt i8 %i.qn, -64
  br i1 %i.qq, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.qr = zext nneg i8 %i.qj to i32
  br label %bb.cm

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i
  %i.qs = icmp ne i64 %i.gk, 2
  call void @llvm.assume(i1 %i.qs), !noalias !1320
  %i.qt = getelementptr inbounds i8, ptr %i.qh, i64 -3 ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !1328, !noalias !1329, !noundef !7 ; 3 uses
  %i.qv = and i8 %i.qu, 15
  %i.qw = zext nneg i8 %i.qv to i32
  %i.qx = icmp slt i8 %i.qu, -64
  br i1 %i.qx, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.cl ], [ %i.qm, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.ro, %bb.cl ], [ %i.qp, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i ]
  %i.qy = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.qz = and i8 %i.qj, 63
  %i.ra = zext nneg i8 %i.qz to i32
  %i.rb = or disjoint i32 %i.qy, %i.ra
  br label %bb.cm

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i
  %i.rc = icmp ne i64 %i.gk, 3
  call void @llvm.assume(i1 %i.rc), !noalias !1320
  %i.rd = getelementptr inbounds i8, ptr %i.qh, i64 -4 ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1, !alias.scope !1328, !noalias !1329, !noundef !7
  %i.rf = and i8 %i.re, 7
  %i.rg = zext nneg i8 %i.rf to i32
  %i.rh = shl nuw nsw i32 %i.rg, 6
  %i.ri = and i8 %i.qu, 63
  %i.rj = zext nneg i8 %i.ri to i32
  %i.rk = or disjoint i32 %i.rh, %i.rj
  br label %bb.cl

bb.cl:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.rd, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i ], [ %i.qt, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.rk, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i ], [ %i.qw, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i ]
  %i.rl = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.rm = and i8 %i.qn, 63
  %i.rn = zext nneg i8 %i.rm to i32
  %i.ro = or disjoint i32 %i.rl, %i.rn
  br label %bb.ck

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.ck ], [ %i.qi, %bb.cj ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.rb, %bb.ck ], [ %i.qr, %bb.cj ] ; 2 uses
  %i.rp = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.rp), !noalias !1320
  %i.rq = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.4.1.i.ph.i.i)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.cm
  %.not.i.i = icmp eq i8 %i.rq, 15
  br i1 %.not.i.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i.preheader, label %.loopexit.i.i.sink.split

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i.preheader: ; preds = %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread95.i.i.i.i, %.noexc44
  %.sroa.5.0.i.i.ph = phi ptr [ %i.ah, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread95.i.i.i.i ], [ %.sroa.6.2.ph.i.i, %.noexc44 ]
  br label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i.preheader, %.noexc45
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.3.ph.i.i, %.noexc45 ], [ %.sroa.5.0.i.i.ph, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i.preheader ] ; 5 uses
  %i.rr = icmp eq ptr %i.ah, %.sroa.5.0.i.i
  br i1 %i.rr, label %.loopexit.i.i.sink.split, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.rs = getelementptr inbounds i8, ptr %.sroa.5.0.i.i, i64 -1 ; 3 uses
  %i.rt = load i8, ptr %i.rs, align 1, !alias.scope !1328, !noalias !1330, !noundef !7 ; 3 uses
  %i.ru = icmp sgt i8 %i.rt, -1
  br i1 %i.ru, label %bb.co, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i: ; preds = %bb.cn
  %i.rv = icmp ne ptr %i.ah, %i.rs
  call void @llvm.assume(i1 %i.rv), !noalias !1320
  %i.rw = getelementptr inbounds i8, ptr %.sroa.5.0.i.i, i64 -2 ; 3 uses
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !1328, !noalias !1330, !noundef !7 ; 3 uses
  %i.ry = and i8 %i.rx, 31
  %i.rz = zext nneg i8 %i.ry to i32
  %i.sa = icmp slt i8 %i.rx, -64
  br i1 %i.sa, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.sb = zext nneg i8 %i.rt to i32
  br label %bb.cr

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i
  %i.sc = icmp ne ptr %i.ah, %i.rw
  call void @llvm.assume(i1 %i.sc), !noalias !1320
  %i.sd = getelementptr inbounds i8, ptr %.sroa.5.0.i.i, i64 -3 ; 3 uses
  %i.se = load i8, ptr %i.sd, align 1, !alias.scope !1328, !noalias !1330, !noundef !7 ; 3 uses
  %i.sf = and i8 %i.se, 15
  %i.sg = zext nneg i8 %i.sf to i32
  %i.sh = icmp slt i8 %i.se, -64
  br i1 %i.sh, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i15.i.i, label %bb.cq

bb.cp:                                            ; preds = %bb.cq, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i
  %.sroa.5.1.i.i = phi ptr [ %.sroa.5.2.i.i, %bb.cq ], [ %i.rw, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i ]
  %.sroa.010.0.i10.i.i = phi i32 [ %i.sy, %bb.cq ], [ %i.rz, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i9.i.i ]
  %i.si = shl nuw nsw i32 %.sroa.010.0.i10.i.i, 6
  %i.sj = and i8 %i.rt, 63
  %i.sk = zext nneg i8 %i.sj to i32
  %i.sl = or disjoint i32 %i.si, %i.sk
  br label %bb.cr

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i15.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i
  %i.sm = icmp ne ptr %i.ah, %i.sd
  call void @llvm.assume(i1 %i.sm), !noalias !1320
  %i.sn = getelementptr inbounds i8, ptr %.sroa.5.0.i.i, i64 -4 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !alias.scope !1328, !noalias !1330, !noundef !7
  %i.sp = and i8 %i.so, 7
  %i.sq = zext nneg i8 %i.sp to i32
  %i.sr = shl nuw nsw i32 %i.sq, 6
  %i.ss = and i8 %i.se, 63
  %i.st = zext nneg i8 %i.ss to i32
  %i.su = or disjoint i32 %i.sr, %i.st
  br label %bb.cq

bb.cq:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i15.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i
  %.sroa.5.2.i.i = phi ptr [ %i.sn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i15.i.i ], [ %i.sd, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i ]
  %.sroa.010.1.i14.i.i = phi i32 [ %i.su, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i15.i.i ], [ %i.sg, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i13.i.i ]
  %i.sv = shl nuw nsw i32 %.sroa.010.1.i14.i.i, 6
  %i.sw = and i8 %i.rx, 63
  %i.sx = zext nneg i8 %i.sw to i32
  %i.sy = or disjoint i32 %i.sv, %i.sx
  br label %bb.cp

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %.sroa.5.3.ph.i.i = phi ptr [ %.sroa.5.1.i.i, %bb.cp ], [ %i.rs, %bb.co ]
  %.sroa.4.1.i11.ph.i.i = phi i32 [ %i.sl, %bb.cp ], [ %i.sb, %bb.co ] ; 2 uses
  %i.sz = icmp samesign ult i32 %.sroa.4.1.i11.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.sz), !noalias !1320
  %i.ta = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.4.1.i11.ph.i.i)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.cr
  switch i8 %i.ta, label %.loopexit.i.i.sink.split [
    i8 3, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i
    i8 4, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split
  ]

bb.cs:                                            ; preds = %bb.m
  %i.tb = invoke noundef i8 @_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d, i32 noundef %.sroa.08.0.i.i.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.cs
  store i8 %i.tb, ptr %.sroa.16.0..sroa_idx, align 8, !alias.scope !1299
  br label %bb.ae

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i.i: ; preds = %bb.bz, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i
  %.in.i = phi i8 [ %i.kl, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread89.i.i.i.i ], [ %i.on, %bb.bz ]
  %i.tc = trunc nuw i8 %.in.i to i1
  br i1 %i.tc, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i, label %.loopexit.i.i

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split: ; preds = %.noexc45, %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i, %.noexc40, %bb.be, %bb.be, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bi, %bb.bi, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i
  store i8 3, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !1290
  br label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i: ; preds = %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread159.i.i.i.sink.split, %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i.i, %bb.ae
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1, !alias.scope !1299
  br label %bb.k

_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i: ; preds = %bb.g, %bb.ah, %.loopexit.i.i.i, %bb.ai, %bb.ac
  %.sroa.14.0.ph.i.i = phi i64 [ undef, %bb.ah ], [ undef, %bb.ac ], [ %i.gq, %bb.ai ], [ 0, %.loopexit.i.i.i ], [ undef, %bb.g ]
  %.sroa.8.0.ph.i.i = phi i64 [ 3, %bb.ah ], [ 2, %bb.ac ], [ 0, %bb.ai ], [ 0, %.loopexit.i.i.i ], [ 2, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  store i64 %.sroa.8.0.ph.i.i, ptr %i.a, align 8, !noalias !1331
  %i.td = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.14.0.ph.i.i, ptr %i.td, align 8, !noalias !1331
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #29
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i
  unreachable

.loopexit.i.i.sink.split:                         ; preds = %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i, %.noexc44, %bb.bx, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.thread91.i.i.i.i, %.noexc40, %bb.bp, %.thread.thread.i.i.i.i, %.thread.thread.i.i.i.i, %bb.bc, %bb.bc, %bb.bc, %bb.bf, %bb.bi, %.thread.i.i.i.i.i, %bb.bj, %bb.bk, %_RNvNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme10check_pair.exit.i.i.i.i, %bb.bw, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %.noexc45, %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional.exit.i.thread
  store i8 4, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !1290
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i.i, %bb.ae, %.loopexit.i.i.sink.split
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1, !alias.scope !1299
  %i.te = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1299, !noundef !7 ; 13 uses
  %i.tf = load ptr, ptr %i.w, align 8, !alias.scope !1332, !nonnull !7, !noundef !7 ; 9 uses
  %i.tg = load i64, ptr %i.x, align 8, !alias.scope !1332, !noundef !7 ; 9 uses
  %.not.i.i.i = icmp ugt i64 %i.ai, %i.te
  br i1 %.not.i.i.i, label %.invoke, label %bb.ct

bb.ct:                                            ; preds = %.loopexit.i.i
  br i1 %i.aj, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.not5.i.i.i = icmp ult i64 %i.ai, %i.tg
  br i1 %.not5.i.i.i, label %bb.cw, label %.split.i.i.i

bb.cv:                                            ; preds = %bb.cw, %.split.i.i.i, %bb.ct
  %i.th = icmp eq i64 %i.te, 0
  br i1 %i.th, label %bb.cz, label %bb.cx

.split.i.i.i:                                     ; preds = %bb.cu
  %i.ti = icmp eq i64 %i.ai, %i.tg
  br i1 %i.ti, label %bb.cv, label %.invoke

bb.cw:                                            ; preds = %bb.cu
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ai
  %i.tk = load i8, ptr %i.tj, align 1, !alias.scope !1333, !noalias !1297, !noundef !7
  %i.tl = icmp sgt i8 %i.tk, -65
  br i1 %i.tl, label %bb.cv, label %.invoke

bb.cx:                                            ; preds = %bb.cv
  %.not6.i.i.i = icmp ult i64 %i.te, %i.tg
  br i1 %.not6.i.i.i, label %bb.cy, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.cx
  %i.tm = icmp eq i64 %i.te, %i.tg
  br i1 %i.tm, label %bb.cz, label %.invoke

bb.cy:                                            ; preds = %bb.cx
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.te
  %i.to = load i8, ptr %i.tn, align 1, !alias.scope !1333, !noalias !1297, !noundef !7
  %i.tp = icmp sgt i8 %i.to, -65
  br i1 %i.tp, label %bb.cz, label %.invoke

bb.cz:                                            ; preds = %bb.cy, %.split7.i.i.i, %bb.cv
  %i.tq = sub nuw i64 %i.te, %i.ai                ; 12 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ai ; 11 uses
  %i.ts = icmp ult i64 %i.tq, 6
  br i1 %i.ts, label %bb.db, label %.lr.ph.i.i.i

bb.da:                                            ; preds = %.noexc51
  %i.tt = icmp eq i64 %i.te, %i.ai
  br i1 %i.tt, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB1q_9tokenizer10Normalizer9normalize0E0B1q_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.da, %bb.cz
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.te ; 4 uses
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %i.tv = invoke { ptr, i64 } @_RNvMs3_CsblNeYnuIT2i_15spm_precompiledNtB5_11Precompiled9transform(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.tr, i64 noundef %i.tq)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %bb.db
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0      ; 2 uses
  %.not.i.i16.i = icmp eq ptr %i.tw, null
  br i1 %.not.i.i16.i, label %bb.da, label %bb.dc

bb.dc:                                            ; preds = %.noexc51
  %i.tx = extractvalue { ptr, i64 } %i.tv, 1
  invoke void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.tr, i64 noundef %i.tq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.tw, i64 noundef %i.tx)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB1q_9tokenizer10Normalizer9normalize0E0B1q_.exit.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %.noexc55, %.lr.ph.i.i.i
  %.sroa.0.1 = phi i1 [ %.sroa.0.0657, %.lr.ph.i.i.i ], [ %.sroa.0.2, %.noexc55 ]
  %.sroa.0.031.i.i.i = phi ptr [ %i.tr, %.lr.ph.i.i.i ], [ %.sroa.0.143.i.i.i, %.noexc55 ] ; 6 uses
  %.sroa.10.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.vr, %.noexc55 ] ; 14 uses
  %i.ty = ptrtoint ptr %.sroa.0.031.i.i.i to i64  ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 1 ; 4 uses
  %i.ua = load i8, ptr %.sroa.0.031.i.i.i, align 1, !alias.scope !1334, !noalias !1335, !noundef !7 ; 5 uses
  %i.ub = icmp sgt i8 %i.ua, -1
  br i1 %i.ub, label %.thread40.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i: ; preds = %bb.dd
  %i.uc = and i8 %i.ua, 31
  %i.ud = zext nneg i8 %i.uc to i32               ; 3 uses
  %i.ue = icmp ne ptr %i.tz, %i.tu
  call void @llvm.assume(i1 %i.ue)
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 2 ; 3 uses
  %i.ug = load i8, ptr %i.tz, align 1, !alias.scope !1334, !noalias !1335, !noundef !7
  %i.uh = shl nuw nsw i32 %i.ud, 6
  %i.ui = and i8 %i.ug, 63
  %i.uj = zext nneg i8 %i.ui to i32               ; 2 uses
  %i.uk = or disjoint i32 %i.uh, %i.uj
  %i.ul = icmp samesign ugt i8 %i.ua, -33
  br i1 %i.ul, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i, label %bb.de

.thread40.i.i.i:                                  ; preds = %bb.dd
  %i.um = zext nneg i8 %i.ua to i32
  %i.un = ptrtoint ptr %i.tz to i64
  %i.uo = sub i64 %.sroa.10.030.i.i.i, %i.ty
  %i.up = add i64 %i.uo, %i.un
  br label %bb.dh

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i
  %i.uq = icmp ne ptr %i.uf, %i.tu
  call void @llvm.assume(i1 %i.uq)
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 3 ; 3 uses
  %i.us = load i8, ptr %i.uf, align 1, !alias.scope !1334, !noalias !1335, !noundef !7
  %i.ut = shl nuw nsw i32 %i.uj, 6
  %i.uu = and i8 %i.us, 63
  %i.uv = zext nneg i8 %i.uu to i32
  %i.uw = or disjoint i32 %i.ut, %i.uv            ; 2 uses
  %i.ux = shl nuw nsw i32 %i.ud, 12
  %i.uy = or disjoint i32 %i.uw, %i.ux
  %i.uz = icmp samesign ugt i8 %i.ua, -17
  br i1 %i.uz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i15.i, label %bb.de

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i15.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i
  %i.va = icmp ne ptr %i.ur, %i.tu
  call void @llvm.assume(i1 %i.va)
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 4
  %i.vc = load i8, ptr %i.ur, align 1, !alias.scope !1334, !noalias !1335, !noundef !7
  %i.vd = shl nuw nsw i32 %i.ud, 18
  %i.ve = and i32 %i.vd, 1835008
  %i.vf = shl nuw nsw i32 %i.uw, 6
  %i.vg = and i8 %i.vc, 63
  %i.vh = zext nneg i8 %i.vg to i32
  %i.vi = or disjoint i32 %i.vf, %i.vh
  %i.vj = or disjoint i32 %i.vi, %i.ve
  br label %bb.de

bb.de:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i15.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i
  %.sroa.0.1.i.i8.i = phi ptr [ %i.uf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i ], [ %i.vb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i15.i ], [ %i.ur, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i9.i = phi i32 [ %i.uk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i7.i ], [ %i.vj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i15.i ], [ %i.uy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i14.i ] ; 7 uses
  %i.vk = ptrtoint ptr %.sroa.0.1.i.i8.i to i64
  %i.vl = sub i64 %.sroa.10.030.i.i.i, %i.ty
  %i.vm = add i64 %i.vl, %i.vk                    ; 3 uses
  %i.vn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i9.i, 1114112
  call void @llvm.assume(i1 %i.vn)
  %i.vo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i9.i, 128
  br i1 %i.vo, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i9.i, 2048
  br i1 %i.vp, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i9.i, 65536
  %..i.i10.i = select i1 %i.vq, i64 3, i64 4
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %.thread40.i.i.i
  %i.vr = phi i64 [ %i.vm, %bb.df ], [ %i.vm, %bb.dg ], [ %i.vm, %bb.de ], [ %i.up, %.thread40.i.i.i ]
  %.sroa.4.0.i.ph.i44.i.i.i = phi i32 [ %.sroa.4.0.i.ph.i.i.i9.i, %bb.df ], [ %.sroa.4.0.i.ph.i.i.i9.i, %bb.dg ], [ %.sroa.4.0.i.ph.i.i.i9.i, %bb.de ], [ %i.um, %.thread40.i.i.i ]
  %.sroa.0.143.i.i.i = phi ptr [ %.sroa.0.1.i.i8.i, %bb.df ], [ %.sroa.0.1.i.i8.i, %bb.dg ], [ %.sroa.0.1.i.i8.i, %bb.de ], [ %i.tz, %.thread40.i.i.i ] ; 2 uses
  %.sroa.08.0.i.i11.i = phi i64 [ 2, %bb.df ], [ %..i.i10.i, %bb.dg ], [ 1, %bb.de ], [ 1, %.thread40.i.i.i ] ; 3 uses
  %i.vs = add i64 %.sroa.08.0.i.i11.i, %.sroa.10.030.i.i.i ; 10 uses
  %.not.i.i.i12.i = icmp ugt i64 %.sroa.10.030.i.i.i, %i.vs
  br i1 %.not.i.i.i12.i, label %.invoke, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vt = icmp eq i64 %.sroa.10.030.i.i.i, 0
  br i1 %i.vt, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.not5.i.i.i.i = icmp ult i64 %.sroa.10.030.i.i.i, %i.tq
  br i1 %.not5.i.i.i.i, label %bb.dl, label %.split.i.i.i13.i

bb.dk:                                            ; preds = %bb.dl, %.split.i.i.i13.i, %bb.di
  %i.vu = icmp eq i64 %i.vs, 0
  br i1 %i.vu, label %bb.do, label %bb.dm

.split.i.i.i13.i:                                 ; preds = %bb.dj
end_hunk_0
