Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.031?download=true
inline.NumInlined: 89
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYBW_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api:bb.a

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB12_NtNtB8_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB15_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias nofree noundef nonnull %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i, %middle.block, %vec.epilog.middle.block, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i455256.i, %middle.block ], [ %.sroa.0.0.i455256.i, %vec.epilog.middle.block ], [ %.sroa.0.0.i455256.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ]
  %i.ab = shl nuw i64 %.sroa.0.0.i18.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i, %bb.q
  %i.ae = phi i64 [ %i.ad, %bb.q ], [ 1, %.preheader.i ] ; 8 uses
  %.sroa.0.0.i455256.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i455256.i ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 4
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp samesign ult i64 %i.ae, 16
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 %i.ah
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !23, !noalias !24
  %i.ak = getelementptr i8, ptr %i.aj, i64 -15    ; 2 uses
  %wide.load55 = load <16 x i8>, ptr %i.ak, align 1, !alias.scope !25, !noalias !26
  %reverse = shufflevector <16 x i8> %wide.load55, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ai, align 1, !alias.scope !23, !noalias !24
  %reverse56 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse56, ptr %i.ak, align 1, !alias.scope !25, !noalias !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.ae, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %i.am = xor i64 %index58, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %index58 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.am
  %wide.load59 = load <4 x i8>, ptr %i.an, align 1, !alias.scope !23, !noalias !24
  %i.ap = getelementptr i8, ptr %i.ao, i64 -3     ; 2 uses
  %wide.load60 = load <4 x i8>, ptr %i.ap, align 1, !alias.scope !25, !noalias !26
  %reverse61 = shufflevector <4 x i8> %wide.load60, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse61, ptr %i.an, align 1, !alias.scope !23, !noalias !24
  %reverse62 = shufflevector <4 x i8> %wide.load59, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse62, ptr %i.ap, align 1, !alias.scope !25, !noalias !26
  %index.next63 = add nuw i64 %index58, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next63, %n.vec57
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.ae, %n.vec57
  br i1 %cmp.n64, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec57, %vec.epilog.middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i.i, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.at = getelementptr i8, ptr %i.af, i64 %i.ar  ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !range !18, !alias.scope !23, !noalias !24, !noundef !4
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !25, !noalias !26
  store i8 %i.av, ptr %i.as, align 1, !alias.scope !23, !noalias !24
  store i8 %i.au, ptr %i.at, align 1, !alias.scope !25, !noalias !26
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aw, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i, !llvm.loop !17

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ac, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1
  %i.ay = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw i64 %.sroa.09.0, 1            ; 2 uses
  %i.az = sub i64 %factor, %i.ax
  %i.ba = add i64 %i.ay, %factor
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit
  %.sroa.02.136 = phi i64 [ %i.bg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bg = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bi, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 5 uses
  %i.bo = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 5 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 3 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.023.135 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.135
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = shl nuw i64 %i.bp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bt, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB15_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull %i.br, i64 noundef range(i64 0, -9223372036854775808) %i.bn, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cc, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB15_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull %i.cd, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYBX_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull %i.br, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.bn, ptr noalias nofree noundef nonnull %5)
  %i.cj = shl nuw i64 %i.bp, 1
  %i.ck = or disjoint i64 %i.cj, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB16_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ck, %bb.x ], [ %i.bx, %bb.t ] ; 2 uses
  %i.cl = icmp ugt i64 %i.bg, 1
  br i1 %i.cl, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cm = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cn = lshr i64 %.sroa.018.0, 1
  %i.co = add nuw i64 %i.cn, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cp, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cq = or i64 %1, 1
  %i.cr = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB15_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB32_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBX_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6p_11conversionsNtB1B_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6n_22StrictModeSparseConfigE4from0EE0E0EB6r_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 48
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 56
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !43, !noalias !44, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !43, !noalias !44, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !45, !noalias !46 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !43, !noalias !44, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !47, !noalias !46 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !43, !noalias !44, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !48, !noalias !46 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB39_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4c_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6z_11conversionsNtB1H_22StrictModeSparseConfigINtNtB8_7convert4FromNtB6x_22StrictModeSparseConfigE4from0EE0E0EB6B_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3c_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4f_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6C_11conversionsNtB1K_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6A_22StrictModeSparseConfigE4from0EE0E0EB6E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [40 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshMzyYDJGtjv_3api(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i unwind label %bb.q, !noalias !44

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !44
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseEECshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseE7reverseCshMzyYDJGtjv_3api.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3c_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4f_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6C_11conversionsNtB1K_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6A_22StrictModeSparseConfigE4from0EE0E0EB6E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3c_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4f_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6C_11conversionsNtB1K_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6A_22StrictModeSparseConfigE4from0EE0E0EB6E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 230584300921369396) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB33_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6q_11conversionsNtB1C_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6o_22StrictModeSparseConfigE4from0EE0E0EB6s_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3d_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6D_11conversionsNtB1L_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6B_22StrictModeSparseConfigE4from0EE0E0EB6F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3c_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4f_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6C_11conversionsNtB1K_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6A_22StrictModeSparseConfigE4from0EE0E0EB6E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB37_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB49_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBX_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6q_11conversionsNtB1B_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6o_27StrictModeMultivectorConfigE4from0EE0E0EB6s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 48
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !62, !noalias !63, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 56
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !62, !noalias !63, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !62, !noalias !63, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !64, !noalias !65 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !62, !noalias !63, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !66, !noalias !65 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !62, !noalias !63, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !67, !noalias !65 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3e_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4h_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6A_11conversionsNtB1H_27StrictModeMultivectorConfigINtNtB8_7convert4FromNtB6y_27StrictModeMultivectorConfigE4from0EE0E0EB6C_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3h_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6D_11conversionsNtB1K_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6B_27StrictModeMultivectorConfigE4from0EE0E0EB6F_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [40 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshMzyYDJGtjv_3api(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i unwind label %bb.q, !noalias !63

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !63
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorEECshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorE7reverseCshMzyYDJGtjv_3api.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3h_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6D_11conversionsNtB1K_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6B_27StrictModeMultivectorConfigE4from0EE0E0EB6F_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3h_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6D_11conversionsNtB1K_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6B_27StrictModeMultivectorConfigE4from0EE0E0EB6F_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 230584300921369396) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB38_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6r_11conversionsNtB1C_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6p_27StrictModeMultivectorConfigE4from0EE0E0EB6t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3i_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4l_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6E_11conversionsNtB1L_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6C_27StrictModeMultivectorConfigE4from0EE0E0EB6G_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3h_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6D_11conversionsNtB1K_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6B_27StrictModeMultivectorConfigE4from0EE0E0EB6F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB13_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB33_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB42_8adapters3map3MapINtNtB4Y_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterB1x_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB4Y_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB13_6string6StringINtB5T_3VecB7m_EEINtNtB8_4iter4IterB7m_ENCNvXs8_NtB7q_8validateNtB7o_17BatchVectorStructNtNtB1B_6traits8Validate8validate0EEs_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !77, !noalias !78, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB57_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringINtB62_3VecB7v_EEINtNtB6_4iter4IterB7v_ENCNvXs8_NtB7z_8validateNtB7x_17BatchVectorStructNtNtB1H_6traits8Validate8validate0EEs_0EE0E0EB7B_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5a_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringINtB65_3VecB7y_EEINtNtB8_4iter4IterB7y_ENCNvXs8_NtB7C_8validateNtB7A_17BatchVectorStructNtNtB1K_6traits8Validate8validate0EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !79, !noalias !80, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !79, !noalias !80, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !81, !noalias !78
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !82, !noalias !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !82, !noalias !83
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !79, !noalias !80, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !79, !noalias !80, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !81, !noalias !78
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !82, !noalias !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !82, !noalias !83
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !79, !noalias !80, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !79, !noalias !80, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !81, !noalias !78
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !82, !noalias !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !82, !noalias !83
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5a_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringINtB65_3VecB7y_EEINtNtB8_4iter4IterB7y_ENCNvXs8_NtB7C_8validateNtB7A_17BatchVectorStructNtNtB1K_6traits8Validate8validate0EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5a_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringINtB65_3VecB7y_EEINtNtB8_4iter4IterB7y_ENCNvXs8_NtB7C_8validateNtB7A_17BatchVectorStructNtNtB1K_6traits8Validate8validate0EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB4Z_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB14_6string6StringINtB5U_3VecB7n_EEINtNtB8_4iter4IterB7n_ENCNvXs8_NtB7r_8validateNtB7p_17BatchVectorStructNtNtB1C_6traits8Validate8validate0EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5b_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringINtB66_3VecB7z_EEINtNtB8_4iter4IterB7z_ENCNvXs8_NtB7D_8validateNtB7B_17BatchVectorStructNtNtB1L_6traits8Validate8validate0EEs_0EE0E0EB7F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5a_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringINtB65_3VecB7y_EEINtNtB8_4iter4IterB7y_ENCNvXs8_NtB7C_8validateNtB7A_17BatchVectorStructNtNtB1K_6traits8Validate8validate0EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB13_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB33_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB42_8adapters3map3MapINtNtB4Y_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterB1x_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB13_6string6StringB7m_EEs_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !95, !noalias !96, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !95, !noalias !96, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !95, !noalias !96, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !95, !noalias !96, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !97, !noalias !98, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !97, !noalias !98, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !99, !noalias !96
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !100, !noalias !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !100, !noalias !101
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !97, !noalias !98, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !97, !noalias !98, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !99, !noalias !96
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !100, !noalias !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !100, !noalias !101
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !97, !noalias !98, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !97, !noalias !98, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !99, !noalias !96
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !100, !noalias !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !100, !noalias !101
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCshMzyYDJGtjv_3api.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB15_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3c_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4f_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6C_11conversionsNtB1K_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6A_22StrictModeSparseConfigE4from0EE0E0EB6E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3h_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4k_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6D_11conversionsNtB1K_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6B_27StrictModeMultivectorConfigE4from0EE0E0EB6F_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB5a_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringINtB65_3VecB7y_EEINtNtB8_4iter4IterB7y_ENCNvXs8_NtB7C_8validateNtB7A_17BatchVectorStructNtNtB1K_6traits8Validate8validate0EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYBX_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB33_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6q_11conversionsNtB1C_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6o_22StrictModeSparseConfigE4from0EE0E0EB6s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB38_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6r_11conversionsNtB1C_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6p_27StrictModeMultivectorConfigE4from0EE0E0EB6t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB4Z_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB14_6string6StringINtB5U_3VecB7n_EEINtNtB8_4iter4IterB7n_ENCNvXs8_NtB7r_8validateNtB7p_17BatchVectorStructNtNtB1C_6traits8Validate8validate0EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshMzyYDJGtjv_3api(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = distinct !{!6, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api"}
!7 = distinct !{!7, !6, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api: argument 0"}
!8 = distinct !{!8, !6, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api: argument 2"}
!9 = distinct !{!9, !6, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNvYB13_NtNtBa_3cmp10PartialOrd2ltECshMzyYDJGtjv_3api: argument 1"}
!10 = distinct !{!10, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageECshMzyYDJGtjv_3api"}
!11 = distinct !{!11, !10, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageECshMzyYDJGtjv_3api: argument 0"}
!12 = distinct !{!12, !10, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageECshMzyYDJGtjv_3api: argument 1"}
!13 = distinct !{!13, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api"}
!14 = distinct !{!14, !13, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types5index8Language7reverseCshMzyYDJGtjv_3api: argument 0"}
!15 = distinct !{!15, !27, !28}
!16 = distinct !{!16, !27, !28}
!17 = distinct !{!17, !28, !27}
!18 = !{i8 0, i8 30}
!19 = !{!7}
!20 = !{!9, !8}
!21 = !{!11}
!22 = !{!12}
!23 = !{!11, !14, !7}
!24 = !{!12, !9, !8}
!25 = !{!12, !14, !7}
!26 = !{!11, !9, !8}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = distinct !{!30, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_"}
!31 = distinct !{!31, !30, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_: argument 0"}
!32 = distinct !{!32, !30, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_: argument 2"}
!33 = distinct !{!33, !30, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16StrictModeSparseENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3a_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16StrictModeSparseENCNvXs1U_NtB6A_11conversionsNtB1I_22StrictModeSparseConfigINtNtBa_7convert4FromNtB6y_22StrictModeSparseConfigE4from0EE0E0EB6C_: argument 1"}
!34 = distinct !{!34, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!35 = distinct !{!35, !34, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!36 = distinct !{!36, !34, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!37 = distinct !{!37, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!38 = distinct !{!38, !37, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!39 = distinct !{!39, !37, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!40 = distinct !{!40, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!41 = distinct !{!41, !40, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!42 = distinct !{!42, !40, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!43 = !{!31}
!44 = !{!33, !32}
!45 = !{!36, !35}
!46 = !{!31, !33, !32}
!47 = !{!39, !38}
!48 = !{!42, !41}
!49 = distinct !{!49, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_"}
!50 = distinct !{!50, !49, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_: argument 0"}
!51 = distinct !{!51, !49, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_: argument 2"}
!52 = distinct !{!52, !49, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types21StrictModeMultivectorENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3f_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant21StrictModeMultivectorENCNvXs1T_NtB6B_11conversionsNtB1I_27StrictModeMultivectorConfigINtNtBa_7convert4FromNtB6z_27StrictModeMultivectorConfigE4from0EE0E0EB6D_: argument 1"}
!53 = distinct !{!53, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!54 = distinct !{!54, !53, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!55 = distinct !{!55, !53, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!56 = distinct !{!56, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!57 = distinct !{!57, !56, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!58 = distinct !{!58, !56, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!59 = distinct !{!59, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api"}
!60 = distinct !{!60, !59, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 1"}
!61 = distinct !{!61, !59, !"_RNvXsd_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_8SliceOrd7compareCshMzyYDJGtjv_3api: argument 0"}
!62 = !{!50}
!63 = !{!52, !51}
!64 = !{!55, !54}
!65 = !{!50, !52, !51}
!66 = !{!58, !57}
!67 = !{!61, !60}
!68 = distinct !{!68, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_"}
!69 = distinct !{!69, !68, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_: argument 0"}
!70 = distinct !{!70, !68, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_: argument 2"}
!71 = distinct !{!71, !68, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtB58_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringINtB63_3VecB7w_EEINtNtB8_4iter4IterB7w_ENCNvXs8_NtB7A_8validateNtB7y_17BatchVectorStructNtNtB1I_6traits8Validate8validate0EEs_0EE0E0EB7C_: argument 1"}
!72 = distinct !{!72, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api"}
!73 = distinct !{!73, !72, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api: argument 0"}
!74 = distinct !{!74, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEEECshMzyYDJGtjv_3api"}
!75 = distinct !{!75, !74, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEEECshMzyYDJGtjv_3api: argument 0"}
!76 = distinct !{!76, !74, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEEECshMzyYDJGtjv_3api: argument 1"}
!77 = !{!69}
!78 = !{!71, !70}
!79 = !{!75, !73, !69}
!80 = !{!76, !71, !70}
!81 = !{!75, !76, !73, !69}
!82 = !{!76, !73, !69}
!83 = !{!75, !71, !70}
!84 = !{!75}
!85 = !{!76}
!86 = distinct !{!86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_"}
!87 = distinct !{!87, !86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_: argument 0"}
!88 = distinct !{!88, !86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_: argument 2"}
!89 = distinct !{!89, !86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_: argument 1"}
!90 = distinct !{!90, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCshMzyYDJGtjv_3api"}
end_hunk_0
