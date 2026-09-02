Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.06?download=true
inline.NumInlined: 1225
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client:bb.a
  %i.ab = sub i64 %2, %.sroa.0.4
  %i.ac = icmp ugt i64 %.sroa.032.0, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub i64 %.val168, %storemerge181183
  %i.ae = icmp ugt i64 %.sroa.032.0, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  store i64 1, ptr %0, align 8
  br label %bb.ax

bb.l:                                             ; preds = %bb.j
  %i.af = add i64 %.sroa.032.0, %.sroa.0.4        ; 4 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.0.4
  %.not144 = icmp ugt i64 %i.af, %2
  %or.cond150 = or i1 %i.ag, %.not144
  br i1 %or.cond150, label %bb.n, label %bb.o, !prof !745

bb.m:                                             ; preds = %bb.j
  %i.ah = add i64 %storemerge181183, %.sroa.032.0
  store i64 0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val168, ptr %.sroa.555.0..sroa_idx, align 8
  br label %bb.ax

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.4, i64 noundef %i.af, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #34
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.aj = add i64 %storemerge181183, %.sroa.032.0 ; 5 uses
  %i.ak = icmp ult i64 %i.aj, %storemerge181183
  %.not4.i.i = icmp ugt i64 %i.aj, %.val168
  %or.cond.i.i = or i1 %i.ak, %.not4.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.p, !prof !745

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %storemerge181183 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.am = icmp eq i64 %.sroa.032.0, 0
  br i1 %i.am, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = icmp samesign ult i64 %.sroa.032.0, 4
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = icmp samesign ult i64 %.sroa.032.0, 8
  br i1 %i.ao, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.ap = load i8, ptr %i.ai, align 1, !alias.scope !772, !noalias !773, !noundef !4
  store i8 %i.ap, ptr %i.al, align 1, !alias.scope !774, !noalias !775
  %.not12.i.i.i = icmp eq i64 %.sroa.032.0, 1
  br i1 %.not12.i.i.i, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.s
  %i.aq = load i16, ptr %i.ai, align 1, !alias.scope !776, !noalias !780
  store i16 %i.aq, ptr %i.al, align 1, !alias.scope !782, !noalias !783
  %i.ar = add nsw i64 %.sroa.032.0, -2            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.au = load i16, ptr %i.as, align 1, !alias.scope !784, !noalias !788
  store i16 %i.au, ptr %i.at, align 1, !alias.scope !790, !noalias !791
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.t:                                             ; preds = %bb.r
  %i.av = icmp samesign ult i64 %.sroa.032.0, 17
  br i1 %i.av, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.u

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.r
  %i.aw = load i32, ptr %i.ai, align 1, !alias.scope !792, !noalias !796
  store i32 %i.aw, ptr %i.al, align 1, !alias.scope !798, !noalias !799
  %i.ax = add nsw i64 %.sroa.032.0, -4            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ax
  %i.ba = load i32, ptr %i.ay, align 1, !alias.scope !800, !noalias !804
  store i32 %i.ba, ptr %i.az, align 1, !alias.scope !806, !noalias !807
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.u:                                             ; preds = %bb.t
  %i.bb = icmp samesign ult i64 %.sroa.032.0, 33
  br i1 %i.bb, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.t
  %i.bc = load i64, ptr %i.ai, align 1, !alias.scope !808, !noalias !812
  store i64 %i.bc, ptr %i.al, align 1, !alias.scope !814, !noalias !815
  %i.bd = add nsw i64 %.sroa.032.0, -8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bd
  %i.bg = load i64, ptr %i.be, align 1, !alias.scope !816, !noalias !820
  store i64 %i.bg, ptr %i.bf, align 1, !alias.scope !822, !noalias !823
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i: ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, -9223372036854775808) %.sroa.032.0, i1 false), !alias.scope !824, !noalias !828
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !830, !noalias !834
  %i.bh = add nsw i64 %.sroa.032.0, -16           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.bi, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !836, !noalias !840
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.v:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge181183, i64 noundef %i.aj, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !842
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit: ; preds = %bb.p, %bb.s, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !843, !noalias !844
  br label %bb.g

bb.w:                                             ; preds = %bb.g
  %i.bk = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i169 = icmp ugt i64 %i.bk, %2
  br i1 %.not.i169, label %bb.y, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.bl, align 1, !alias.scope !845, !noalias !848 ; 4 uses
  %i.bm = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.bm, label %bb.y, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.x:                                             ; preds = %bb.g
  %i.bn = sub i64 %.val157, %.val161
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ax

bb.y:                                             ; preds = %bb.w, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i ], [ 2, %bb.w ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.ax

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %i.bp = zext i16 %.sroa.030.0.copyload.i to i64 ; 7 uses
  %narrow147 = add nuw nsw i8 %i.i, 4             ; 2 uses
  %i.bq = zext nneg i8 %narrow147 to i64
  %i.br = icmp eq i8 %narrow147, 19
  br i1 %i.br, label %.preheader.preheader, label %bb.aa

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i173111 = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not.i173111, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph114

.preheader:                                       ; preds = %.lr.ph114
  %exitcond.not.i173 = icmp eq i64 %i.bu, %2
  br i1 %exitcond.not.i173, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i172113 = phi i64 [ %i.bw, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.6112 = phi i64 [ %i.bu, %.preheader ], [ %i.bk, %.preheader.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.6112
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !851, !noalias !854, !noundef !4 ; 2 uses
  %i.bu = add i64 %.sroa.0.6112, 1                ; 3 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = add i64 %.sroa.0.0.i172113, %i.bv       ; 2 uses
  %i.bx = icmp eq i8 %i.bt, -1
  br i1 %i.bx, label %.preheader, label %bb.z

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.ax

bb.z:                                             ; preds = %.lr.ph114
  %i.by = add i64 %i.bw, 19
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.z
  %.sroa.0.8 = phi i64 [ %i.bu, %bb.z ], [ %i.bk, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 6 uses
  %.sroa.066.0 = phi i64 [ %i.by, %bb.z ], [ %i.bq, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %i.bz = add i64 %.val157, %.sroa.066.0          ; 12 uses
  %i.ca = icmp ugt i64 %i.bz, %.val168
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val168, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.ax

bb.ac:                                            ; preds = %bb.aa
  %i.cb = icmp ugt i64 %.sroa.066.0, %i.bp
  %i.cc = sub nuw i64 %.val157, %i.bp             ; 9 uses
  %i.cd = icmp ult i64 %.val157, %i.bp            ; 2 uses
  br i1 %i.cb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.ce, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cf = icmp ult i64 %i.cc, %.val168
  br i1 %i.cf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #34, !noalias !857
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ], !noalias !863
  %i.cg = icmp ult i64 %i.bz, %.val157
  br i1 %i.cg, label %bb.ai, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !745

bb.ai:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val157, i64 noundef %i.bz, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #34, !noalias !864
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !857, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 %i.ci, i64 range(i64 1, 0) %.sroa.066.0, i1 false), !noalias !864
  br label %.backedge

bb.aj:                                            ; preds = %bb.af
  %i.ck = icmp ult i64 %.val157, %i.bz
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %.backedge

.lr.ph.i.i.preheader:                             ; preds = %bb.aj
  %i.cl = sub i64 %.val157, %i.bp
  %i.cm = tail call i64 @llvm.umax.i64(i64 %.val168, i64 %i.cl)
  %i.cn = add i64 %i.cm, %i.bp
  %i.co = sub i64 %i.cn, %.val157
  %i.cp = sub i64 %.val168, %.val157
  %i.cq = add i64 %.sroa.066.0, -1
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cp)
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cq)
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ct, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond128 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond128, label %.lr.ph.i.i.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.cu = and i64 %i.ct, 15                       ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = select i1 %i.cv, i64 16, i64 %i.cu
  %n.vec = sub i64 %i.ct, %i.cw                   ; 2 uses
  %i.cx = add i64 %.val157, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = add i64 %.val157, %index                ; 2 uses
  %i.cz = sub i64 %i.cy, %i.bp
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cz
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !noalias !867
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cy
  store <16 x i8> %wide.load, ptr %i.db, align 1, !noalias !867
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %.lr.ph.i.i.preheader130, label %vector.body, !llvm.loop !870

.lr.ph.i.i.preheader130:                          ; preds = %vector.body, %.lr.ph.i.i.preheader
  %.sroa.01.010.i.i.ph = phi i64 [ %.val157, %.lr.ph.i.i.preheader ], [ %i.cx, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader130, %bb.am
  %.sroa.01.010.i.i = phi i64 [ %i.dd, %bb.am ], [ %.sroa.01.010.i.i.ph, %.lr.ph.i.i.preheader130 ] ; 4 uses
  %i.dd = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.de = sub i64 %.sroa.01.010.i.i, %i.bp        ; 3 uses
  %i.df = icmp ult i64 %i.de, %.val168
  br i1 %i.df, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %.val168
  br i1 %exitcond.not.i.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !867
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !867, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i.i
  store i8 %i.dh, ptr %i.di, align 1, !noalias !867
  %exitcond15.not.i.i = icmp eq i64 %i.dd, %i.bz
  br i1 %exitcond15.not.i.i, label %.backedge, label %.lr.ph.i.i, !llvm.loop !873

bb.an:                                            ; preds = %bb.ak
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val168, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !867
  unreachable

bb.ao:                                            ; preds = %bb.ad
  %i.dj = icmp ult i64 %.sroa.066.0, 33
  br i1 %i.dj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = icmp ugt i64 %.sroa.066.0, 64
  %i.dl = add i64 %.val157, 64
  %.not.i = icmp ugt i64 %i.dl, %.val168
  %or.cond78 = or i1 %i.dk, %.not.i
  br i1 %or.cond78, label %bb.ar, label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.dm = add i64 %.val157, 32
  %.not4.i = icmp ugt i64 %i.dm, %.val168
  br i1 %.not4.i, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dn = add i64 %i.cc, %.sroa.066.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874), !noalias !863
  %i.do = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.dn, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !877 ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { i64, i64 } %i.do, 1
  %i.dr = sub i64 %i.dq, %i.dp                    ; 2 uses
  %i.ds = sub i64 %.val168, %i.dr
  %.not.i.i179 = icmp ugt i64 %.val157, %i.ds
  br i1 %.not.i.i179, label %bb.as, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !9

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !877
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dt, i64 %i.dr, i1 false), !alias.scope !874, !noalias !880
  br label %.backedge

bb.at:                                            ; preds = %bb.ap
  %i.dv = add i64 %i.cc, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881), !noalias !863
  %i.dw = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.dv, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !884 ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i64, i64 } %i.dw, 1
  %i.dz = sub i64 %i.dy, %i.dx                    ; 2 uses
  %i.ea = sub i64 %.val168, %i.dz
  %.not.i.i180 = icmp ugt i64 %.val157, %i.ea
  br i1 %.not.i.i180, label %bb.au, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181, !prof !9

bb.au:                                            ; preds = %bb.at
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !884
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181: ; preds = %bb.at
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 1 %i.eb, i64 %i.dz, i1 false), !alias.scope !881, !noalias !887
  br label %.backedge

bb.av:                                            ; preds = %bb.aq
  %i.ed = add i64 %i.cc, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888), !noalias !863
  %i.ee = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.ed, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !891 ; 2 uses
  %i.ef = extractvalue { i64, i64 } %i.ee, 0      ; 2 uses
  %i.eg = extractvalue { i64, i64 } %i.ee, 1
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  %i.ei = sub i64 %.val168, %i.eh
  %.not.i.i182 = icmp ugt i64 %.val157, %i.ei
  br i1 %.not.i.i182, label %bb.aw, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183, !prof !9

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !891
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183: ; preds = %bb.av
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.ej, i64 %i.eh, i1 false), !alias.scope !888, !noalias !894
  br label %.backedge

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ae, %bb.ad
  store i64 4, ptr %0, align 8
  br label %bb.ax

.backedge:                                        ; preds = %bb.bg, %bb.am, %bb.aj, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183
  %.sink = phi i64 [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181 ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183 ], [ %i.bz, %bb.am ], [ %i.gk, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196 ], [ %i.bz, %bb.aj ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ez, %bb.bg ] ; 2 uses
  %.sroa.0.0.be = phi i64 [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181 ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183 ], [ %.sroa.0.8, %bb.am ], [ %i.ev, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196 ], [ %.sroa.0.8, %bb.aj ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ev, %bb.bg ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  %i.el = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.el, label %bb.b, label %._crit_edge

bb.ax:                                            ; preds = %._crit_edge, %bb.y, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %bb.ab, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.k, %bb.m, %bb.bd, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192, %bb.x
  ret void

bb.ay:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #34
  unreachable

bb.az:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.em = add nuw i64 %storemerge181183, 16       ; 2 uses
  %.not4.i185 = icmp ugt i64 %i.em, %.val168
  br i1 %.not4.i185, label %bb.ba, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189, !prof !745

bb.ba:                                            ; preds = %bb.az
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge181183, i64 noundef %i.em, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !900
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189: ; preds = %bb.az
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 %storemerge181183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.ep = load <2 x i64>, ptr %i.en, align 1, !alias.scope !906, !noalias !907
  store <2 x i64> %i.ep, ptr %i.eo, align 1, !alias.scope !904, !noalias !908
  %i.eq = add i64 %storemerge181183, %i.q         ; 11 uses
  store i64 %i.eq, ptr %i.a, align 8, !alias.scope !895, !noalias !898
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.q
  %.sroa.030.0.copyload.i190 = load i16, ptr %i.er, align 1, !alias.scope !909, !noalias !912 ; 3 uses
  %i.es = icmp eq i16 %.sroa.030.0.copyload.i190, 0
  br i1 %i.es, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192, label %bb.bb

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189
  store i64 3, ptr %0, align 8
  br label %bb.ax

bb.bb:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189
  %i.et = zext i16 %.sroa.030.0.copyload.i190 to i64 ; 7 uses
  %i.eu = add nuw nsw i64 %.sroa.0.0184, 3
  %i.ev = add nuw nsw i64 %i.eu, %i.q             ; 2 uses
  %narrow = add nuw nsw i8 %i.i, 4
  %i.ew = zext nneg i8 %narrow to i64             ; 3 uses
  %i.ex = sub nuw i64 %i.eq, %i.et                ; 2 uses
  %i.ey = icmp ult i64 %i.eq, %i.et
  br i1 %i.ey, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not142 = icmp samesign ult i64 %i.et, %i.ew
  br i1 %.not142, label %.lr.ph.i, label %bb.bi

bb.bd:                                            ; preds = %bb.bb
  store i64 4, ptr %0, align 8
  br label %bb.ax

.lr.ph.i:                                         ; preds = %bb.bc
  %i.ez = add nuw i64 %i.eq, %i.ew                ; 2 uses
  %umax.i193 = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %.val168) ; 3 uses
  %i.fa = add i64 %storemerge181183, %i.q
  %i.fb = sub i64 %i.fa, %i.et
  %i.fc = tail call i64 @llvm.umax.i64(i64 %.val168, i64 %i.fb)
  %i.fd = add i64 %i.fc, %i.et
  %i.fe = add i64 %storemerge181183, %i.q
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = add i64 %storemerge181183, %i.q
  %i.fh = sub i64 %umax.i193, %i.fg
  %i.fi = and i8 %i.g, 15
  %narrow127 = add nuw nsw i8 %i.fi, 3
  %i.fj = zext nneg i8 %narrow127 to i64
  %i.fk = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 %i.fh)
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fj) ; 2 uses
  %min.iters.check118 = icmp samesign ult i64 %i.fl, 16
  %diff.check116 = icmp ult i16 %.sroa.030.0.copyload.i190, 16
  %or.cond129 = or i1 %min.iters.check118, %diff.check116
  br i1 %or.cond129, label %scalar.ph117.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph.i
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fn = and i64 %i.fm, 15                       ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = select i1 %i.fo, i64 16, i64 %i.fn
  %n.vec120 = sub nsw i64 %i.fm, %i.fp            ; 2 uses
  %i.fq = add i64 %i.eq, %n.vec120
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next124, %vector.body121 ] ; 2 uses
  %i.fr = add i64 %i.eq, %index122                ; 2 uses
  %i.fs = sub i64 %i.fr, %i.et
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fs
  %wide.load123 = load <16 x i8>, ptr %i.ft, align 1, !noalias !915
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fr
  store <16 x i8> %wide.load123, ptr %i.fu, align 1, !noalias !915
  %index.next124 = add nuw i64 %index122, 16      ; 2 uses
  %i.fv = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.fv, label %scalar.ph117.preheader, label %vector.body121, !llvm.loop !918

scalar.ph117.preheader:                           ; preds = %vector.body121, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %i.eq, %.lr.ph.i ], [ %i.fq, %vector.body121 ]
  br label %scalar.ph117

scalar.ph117:                                     ; preds = %scalar.ph117.preheader, %bb.bg
  %.sroa.01.010.i = phi i64 [ %i.fw, %bb.bg ], [ %.sroa.01.010.i.ph, %scalar.ph117.preheader ] ; 4 uses
  %i.fw = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.fx = sub i64 %.sroa.01.010.i, %i.et          ; 3 uses
  %i.fy = icmp ult i64 %i.fx, %.val168
  br i1 %i.fy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %scalar.ph117
  %exitcond.not.i194 = icmp eq i64 %.sroa.01.010.i, %umax.i193
  br i1 %exitcond.not.i194, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %scalar.ph117
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !915
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !915, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i
  store i8 %i.ga, ptr %i.gb, align 1, !noalias !915
  %exitcond15.not.i = icmp eq i64 %i.fw, %i.ez
  br i1 %exitcond15.not.i, label %.backedge, label %scalar.ph117, !llvm.loop !919

bb.bh:                                            ; preds = %bb.be
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i193, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !915
  unreachable

bb.bi:                                            ; preds = %bb.bc
  %i.gc = add nuw i64 %i.ex, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.gd = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.ex, i64 noundef %i.gc, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !923 ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 0      ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.gd, 1
  %i.gg = sub i64 %i.gf, %i.ge                    ; 2 uses
  %i.gh = sub i64 %.val168, %i.gg
  %.not.i.i195 = icmp ugt i64 %i.eq, %i.gh
  br i1 %.not.i.i195, label %bb.bj, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196, !prof !9

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !923
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196: ; preds = %bb.bi
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull align 1 %i.gi, i64 %i.gg, i1 false), !alias.scope !920, !noalias !926
  %i.gk = add nuw i64 %i.eq, %i.ew
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.val219 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val226 = load i64, ptr %i.c, align 8, !noundef !4 ; 37 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val226, i64 51)
  %.not532 = icmp eq i64 %2, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.e = load ptr, ptr %3, align 8                ; 23 uses
  br label %bb.a

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.a:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0530 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.val214523529 = phi i64 [ %.val219, %.lr.ph ], [ %.val214524, %.backedge ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0530
  %i.g = load i8, ptr %i.f, align 1, !noundef !4  ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0530, 1         ; 6 uses
  %i.i = and i8 %i.g, 15                          ; 3 uses
  %i.j = icmp eq i8 %i.i, 15
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i8 %i.g, -16
  %i.l = icmp ult i64 %.sroa.0.0530, %i.b
  %or.cond = and i1 %i.l, %i.k
  %i.m = icmp ult i64 %.val214523529, %i.d
  %or.cond531 = select i1 %or.cond, i1 %i.m, i1 false
  br i1 %or.cond531, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = lshr i8 %i.g, 4                          ; 3 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i8 %i.g, 4
  %i.q = zext nneg i8 %i.p to i64                 ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.0.0530, 17        ; 2 uses
  %.not = icmp ugt i64 %i.r, %2
  br i1 %.not, label %bb.bj, label %bb.bk, !prof !745

bb.e:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.n to i64
  %i.t = icmp eq i8 %i.n, 15
  br i1 %i.t, label %.preheader533.preheader, label %bb.h

.preheader533.preheader:                          ; preds = %bb.e
  %exitcond.not.i985 = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i985, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph988

bb.f:                                             ; preds = %bb.c, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit
  %.val215 = phi i64 [ %.val214523529, %bb.c ], [ %i.aj, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit ] ; 8 uses
  %.sroa.0.1 = phi i64 [ %i.h, %bb.c ], [ %i.af, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit ] ; 3 uses
  %.not200 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not200, label %bb.v, label %bb.w

.preheader533:                                    ; preds = %.lr.ph988
  %exitcond.not.i = icmp eq i64 %i.w, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph988

.lr.ph988:                                        ; preds = %.preheader533.preheader, %.preheader533
  %.sroa.0.0.i987 = phi i64 [ %i.y, %.preheader533 ], [ 0, %.preheader533.preheader ]
  %.sroa.0.5986 = phi i64 [ %i.w, %.preheader533 ], [ %i.h, %.preheader533.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.5986
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !927, !noalias !930, !noundef !4 ; 2 uses
  %i.w = add i64 %.sroa.0.5986, 1                 ; 3 uses
  %i.x = zext i8 %i.v to i64
  %i.y = add i64 %.sroa.0.0.i987, %i.x            ; 2 uses
  %i.z = icmp eq i8 %i.v, -1
  br i1 %i.z, label %.preheader533, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader533.preheader, %.preheader533
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.g:                                             ; preds = %.lr.ph988
  %i.aa = add i64 %i.y, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.2 = phi i64 [ %i.w, %bb.g ], [ %i.h, %bb.e ] ; 5 uses
  %.sroa.051.0 = phi i64 [ %i.aa, %bb.g ], [ %i.s, %bb.e ] ; 16 uses
  %i.ab = sub i64 %2, %.sroa.0.2
  %i.ac = icmp ugt i64 %.sroa.051.0, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sub i64 %.val226, %.val214523529
  %i.ae = icmp ugt i64 %.sroa.051.0, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  br label %bb.bi

bb.k:                                             ; preds = %bb.i
  %i.af = add i64 %.sroa.051.0, %.sroa.0.2        ; 4 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.0.2
  %.not199 = icmp ugt i64 %i.af, %2
  %or.cond206 = or i1 %i.ag, %.not199
  br i1 %or.cond206, label %bb.m, label %bb.n, !prof !745

bb.l:                                             ; preds = %bb.i
  %i.ah = add i64 %.val214523529, %.sroa.051.0
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val226, ptr %.sroa.574.0..sroa_idx, align 8
  br label %bb.bi

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2, i64 noundef %i.af, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #34
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.aj = add i64 %.val214523529, %.sroa.051.0    ; 5 uses
  %i.ak = icmp ult i64 %i.aj, %.val214523529
  %.not4.i.i = icmp ugt i64 %i.aj, %.val226
  %or.cond.i.i = or i1 %i.ak, %.not4.i.i
  br i1 %or.cond.i.i, label %bb.u, label %bb.o, !prof !745

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214523529 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.am = icmp eq i64 %.sroa.051.0, 0
  br i1 %i.am, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = icmp samesign ult i64 %.sroa.051.0, 4
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = icmp samesign ult i64 %.sroa.051.0, 8
  br i1 %i.ao, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.ap = load i8, ptr %i.ai, align 1, !alias.scope !953, !noalias !954, !noundef !4
  store i8 %i.ap, ptr %i.al, align 1, !alias.scope !955, !noalias !956
  %.not12.i.i.i = icmp eq i64 %.sroa.051.0, 1
  br i1 %.not12.i.i.i, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.r
  %i.aq = load i16, ptr %i.ai, align 1, !alias.scope !957, !noalias !961
  store i16 %i.aq, ptr %i.al, align 1, !alias.scope !963, !noalias !964
  %i.ar = add nsw i64 %.sroa.051.0, -2            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.au = load i16, ptr %i.as, align 1, !alias.scope !965, !noalias !969
  store i16 %i.au, ptr %i.at, align 1, !alias.scope !971, !noalias !972
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.s:                                             ; preds = %bb.q
  %i.av = icmp samesign ult i64 %.sroa.051.0, 17
  br i1 %i.av, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.t

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.q
  %i.aw = load i32, ptr %i.ai, align 1, !alias.scope !973, !noalias !977
  store i32 %i.aw, ptr %i.al, align 1, !alias.scope !979, !noalias !980
  %i.ax = add nsw i64 %.sroa.051.0, -4            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ax
end_hunk_0
begin_hunk_1_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client:.split
  %i.bg = load i64, ptr %i.be, align 1, !alias.scope !997, !noalias !1001
  store i64 %i.bg, ptr %i.bf, align 1, !alias.scope !1003, !noalias !1004
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i: ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, -9223372036854775808) %.sroa.051.0, i1 false), !alias.scope !1005, !noalias !1009
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !1011, !noalias !1015
  %i.bh = add nsw i64 %.sroa.051.0, -16           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.bi, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !1017, !noalias !1021
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.u:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val214523529, i64 noundef %i.aj, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1023
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit: ; preds = %bb.o, %bb.r, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1024, !noalias !1025
  br label %bb.f

bb.v:                                             ; preds = %bb.f
  %i.bk = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i227 = icmp ugt i64 %i.bk, %2
  br i1 %.not.i227, label %bb.x, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.bl, align 1, !alias.scope !1026, !noalias !1029 ; 4 uses
  %i.bm = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.bm, label %bb.x, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.w:                                             ; preds = %bb.f
  %i.bn = sub i64 %.val215, %.val219
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bi

bb.x:                                             ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i ], [ 2, %bb.v ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.bi

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %i.bp = zext i16 %.sroa.030.0.copyload.i to i64 ; 9 uses
  %narrow202 = add nuw nsw i8 %i.i, 4             ; 2 uses
  %i.bq = zext nneg i8 %narrow202 to i64
  %i.br = icmp eq i8 %narrow202, 19
  br i1 %i.br, label %.preheader.preheader, label %bb.z

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i231989 = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not.i231989, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph992

.preheader:                                       ; preds = %.lr.ph992
  %exitcond.not.i231 = icmp eq i64 %i.bu, %2
  br i1 %exitcond.not.i231, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph992

.lr.ph992:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i230991 = phi i64 [ %i.bw, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.8990 = phi i64 [ %i.bu, %.preheader ], [ %i.bk, %.preheader.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.8990
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !1032, !noalias !1035, !noundef !4 ; 2 uses
  %i.bu = add i64 %.sroa.0.8990, 1                ; 3 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = add i64 %.sroa.0.0.i230991, %i.bv       ; 2 uses
  %i.bx = icmp eq i8 %i.bt, -1
  br i1 %i.bx, label %.preheader, label %bb.y

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.y:                                             ; preds = %.lr.ph992
  %i.by = add i64 %i.bw, 19
  br label %bb.z

bb.z:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.y
  %.sroa.0.3 = phi i64 [ %i.bu, %bb.y ], [ %i.bk, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %.sroa.085.0 = phi i64 [ %i.by, %bb.y ], [ %i.bq, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 5 uses
  %i.bz = add i64 %.val215, %.sroa.085.0          ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, %.val226
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val226, ptr %.sroa.5106.0..sroa_idx, align 8
  br label %bb.bi

bb.ab:                                            ; preds = %bb.z
  %i.cb = icmp ult i64 %.val215, %i.bp
  br i1 %i.cb, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.cc = sub nuw nsw i64 %i.bp, %.val215         ; 4 uses
  %i.cd = icmp samesign ult i64 %5, %i.cc
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = sub nuw nsw i64 %5, %i.cc
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.cc, i64 %.sroa.085.0) ; 13 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.ce ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %i.cg = add nuw nsw i64 %..i.i, %.val215        ; 5 uses
  %.not4.i.i.i = icmp ugt i64 %i.cg, %.val226
  br i1 %.not4.i.i.i, label %bb.ak, label %bb.ae, !prof !745

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val215 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.ci = icmp eq i64 %..i.i, 0
  br i1 %i.ci, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp samesign ult i64 %..i.i, 4
  br i1 %i.cj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = icmp samesign ult i64 %..i.i, 8
  br i1 %i.ck, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.cl = load i8, ptr %i.cf, align 1, !alias.scope !1063, !noalias !1064, !noundef !4
  store i8 %i.cl, ptr %i.ch, align 1, !alias.scope !1066, !noalias !1067
  %.not12.i.i.i.i = icmp eq i64 %..i.i, 1
  br i1 %.not12.i.i.i.i, label %bb.bg, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.cm = load i16, ptr %i.cf, align 1, !alias.scope !1068, !noalias !1072
  store i16 %i.cm, ptr %i.ch, align 1, !alias.scope !1074, !noalias !1075
  %i.cn = add nsw i64 %..i.i, -2                  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cq = load i16, ptr %i.co, align 1, !alias.scope !1076, !noalias !1080
  store i16 %i.cq, ptr %i.cp, align 1, !alias.scope !1082, !noalias !1083
  br label %bb.bg

bb.ai:                                            ; preds = %bb.ag
  %i.cr = icmp samesign ult i64 %..i.i, 17
  br i1 %i.cr, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %bb.aj

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.ag
  %i.cs = load i32, ptr %i.cf, align 1, !alias.scope !1084, !noalias !1088
  store i32 %i.cs, ptr %i.ch, align 1, !alias.scope !1090, !noalias !1091
  %i.ct = add nsw i64 %..i.i, -4                  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ct
  %i.cw = load i32, ptr %i.cu, align 1, !alias.scope !1092, !noalias !1096
  store i32 %i.cw, ptr %i.cv, align 1, !alias.scope !1098, !noalias !1099
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ai
  %i.cx = icmp samesign ult i64 %..i.i, 33
  br i1 %i.cx, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cf, align 1, !alias.scope !1100, !noalias !1104
  store i64 %i.cy, ptr %i.ch, align 1, !alias.scope !1106, !noalias !1107
  %i.cz = add nsw i64 %..i.i, -8                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz
  %i.dc = load i64, ptr %i.da, align 1, !alias.scope !1108, !noalias !1112
  store i64 %i.dc, ptr %i.db, align 1, !alias.scope !1114, !noalias !1115
  br label %bb.bg

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i: ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %i.cf, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !alias.scope !1116, !noalias !1120
  br label %bb.bg

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !1122, !noalias !1126
  %i.dd = add nsw i64 %..i.i, -16                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.df, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.de, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !1128, !noalias !1132
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val215, i64 noundef %i.cg, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1134
  unreachable

bb.al:                                            ; preds = %bb.ab, %bb.bh
  %.val214527 = phi i64 [ %i.cg, %bb.bh ], [ %.val215, %bb.ab ] ; 26 uses
  %.sroa.085.1 = phi i64 [ %i.fv, %bb.bh ], [ %.sroa.085.0, %bb.ab ] ; 11 uses
  %i.dg = icmp ugt i64 %.sroa.085.1, %i.bp
  %i.dh = sub nuw i64 %.val214527, %i.bp          ; 9 uses
  %i.di = icmp ult i64 %.val214527, %i.bp         ; 2 uses
  br i1 %i.dg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.di, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ax

bb.an:                                            ; preds = %bb.al
  br i1 %i.di, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.dj, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dk = icmp ult i64 %i.dh, %.val226
  br i1 %i.dk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #34, !noalias !1135
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ], !noalias !1141
  %i.dl = add i64 %.val214527, %.sroa.085.1       ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %.val214527
  %.not.i.i = icmp ugt i64 %i.dl, %.val226
  %or.cond.i.i240 = or i1 %i.dm, %.not.i.i
  br i1 %or.cond.i.i240, label %bb.ar, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !745

bb.ar:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val214527, i64 noundef %i.dl, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #34, !noalias !1142
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dh
  %i.do = load i8, ptr %i.dn, align 1, !noalias !1135, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214527
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, i8 %i.do, i64 range(i64 1, 0) %.sroa.085.1, i1 false), !noalias !1142
  br label %.backedge.sink.split

bb.as:                                            ; preds = %bb.ao
  %i.dq = add i64 %.val214527, %.sroa.085.1       ; 4 uses
  %i.dr = icmp ult i64 %.val214527, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i, label %.backedge.sink.split

.lr.ph.i.i:                                       ; preds = %bb.as
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val214527, i64 %.val226) ; 3 uses
  %i.ds = sub i64 %.val214527, %i.bp
  %i.dt = tail call i64 @llvm.umax.i64(i64 %.val226, i64 %i.ds)
  %i.du = add i64 %i.dt, %i.bp
  %i.dv = sub i64 %i.du, %.val214527
  %i.dw = sub i64 %umax.i.i, %.val214527
  %i.dx = add i64 %.sroa.085.1, -1
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dw)
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.dx)
  %i.ea = add i64 %i.dz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ea, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond1005 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1005, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.eb = and i64 %i.ea, 15                       ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = select i1 %i.ec, i64 16, i64 %i.eb
  %n.vec = sub i64 %i.ea, %i.ed                   ; 2 uses
  %i.ee = add i64 %.val214527, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = add i64 %.val214527, %index             ; 2 uses
  %i.eg = sub i64 %i.ef, %i.bp
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eg
  %wide.load = load <16 x i8>, ptr %i.eh, align 1, !noalias !1145
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ef
  store <16 x i8> %wide.load, ptr %i.ei, align 1, !noalias !1145
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1148

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val214527, %.lr.ph.i.i ], [ %i.ee, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.av
  %.sroa.01.010.i.i = phi i64 [ %i.ek, %bb.av ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ek = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.el = sub i64 %.sroa.01.010.i.i, %i.bp        ; 3 uses
  %i.em = icmp ult i64 %i.el, %.val226
  br i1 %i.em, label %bb.at, label %bb.au

bb.at:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !1145
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !noalias !1145, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i.i
  store i8 %i.eo, ptr %i.ep, align 1, !noalias !1145
  %exitcond15.not.i.i = icmp eq i64 %i.ek, %i.dq
  br i1 %exitcond15.not.i.i, label %.backedge.sink.split, label %scalar.ph, !llvm.loop !1149

bb.aw:                                            ; preds = %bb.at
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !1145
  unreachable

bb.ax:                                            ; preds = %bb.am
  %i.eq = icmp ult i64 %.sroa.085.1, 33
  br i1 %i.eq, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = icmp ugt i64 %.sroa.085.1, 64
  %i.es = add i64 %.val214527, 64
  %.not.i = icmp ugt i64 %i.es, %.val226
  %or.cond366 = or i1 %i.er, %.not.i
  br i1 %or.cond366, label %bb.ba, label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.et = add i64 %.val214527, 32
  %.not4.i = icmp ugt i64 %i.et, %.val226
  br i1 %.not4.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.eu = add i64 %i.dh, %.sroa.085.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !noalias !1141
  %i.ev = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.eu, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1153 ; 2 uses
  %i.ew = extractvalue { i64, i64 } %i.ev, 0      ; 2 uses
  %i.ex = extractvalue { i64, i64 } %i.ev, 1
  %i.ey = sub i64 %i.ex, %i.ew                    ; 2 uses
  %i.ez = sub i64 %.val226, %i.ey
  %.not.i.i241.a = icmp ugt i64 %.val214527, %i.ez
  br i1 %.not.i.i241.a, label %bb.bb, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !9

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1153
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.ba
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214527
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr nonnull align 1 %i.fa, i64 %i.ey, i1 false), !alias.scope !1150, !noalias !1156
  %i.fc = add i64 %.val214527, %.sroa.085.1
  br label %.backedge.sink.split

bb.bc:                                            ; preds = %bb.ay
  %i.fd = add i64 %i.dh, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157), !noalias !1141
  %i.fe = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.fd, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1160 ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0      ; 2 uses
  %i.fg = extractvalue { i64, i64 } %i.fe, 1
  %i.fh = sub i64 %i.fg, %i.ff                    ; 2 uses
  %i.fi = sub i64 %.val226, %i.fh
  %.not.i.i242 = icmp ugt i64 %.val214527, %i.fi
  br i1 %.not.i.i242, label %bb.bd, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, !prof !9

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1160
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243: ; preds = %bb.bc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214527
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fj, i64 %i.fh, i1 false), !alias.scope !1157, !noalias !1163
  %i.fl = add i64 %.val214527, %.sroa.085.1
  br label %.backedge.sink.split

bb.be:                                            ; preds = %bb.az
  %i.fm = add i64 %i.dh, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164), !noalias !1141
  %i.fn = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.fm, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1167 ; 2 uses
  %i.fo = extractvalue { i64, i64 } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { i64, i64 } %i.fn, 1
  %i.fq = sub i64 %i.fp, %i.fo                    ; 2 uses
  %i.fr = sub i64 %.val226, %i.fq
  %.not.i.i244 = icmp ugt i64 %.val214527, %i.fr
  br i1 %.not.i.i244, label %bb.bf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit245, !prof !9

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1167
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit245: ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214527
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 1 %i.fs, i64 %i.fq, i1 false), !alias.scope !1164, !noalias !1170
  %i.fu = add i64 %.val214527, %.sroa.085.1
  br label %.backedge.sink.split

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ac
  store i64 4, ptr %0, align 8
  br label %bb.bi

bb.bg:                                            ; preds = %bb.ae, %bb.ah, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i
  store i64 %i.cg, ptr %i.a, align 8, !alias.scope !1171, !noalias !1172
  %.not368 = icmp ugt i64 %.sroa.085.0, %i.cc
  br i1 %.not368, label %bb.bh, label %.backedge

bb.bh:                                            ; preds = %bb.bg
  %i.fv = sub nuw i64 %.sroa.085.0, %..i.i
  br label %bb.al

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.an, %bb.am
  store i64 4, ptr %0, align 8
  br label %bb.bi

.backedge.sink.split:                             ; preds = %bb.cb, %bb.av, %bb.as, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit245, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit273
  %.sink = phi i64 [ %i.dq, %bb.av ], [ %i.iv, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit273 ], [ %i.fc, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.fl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %i.fu, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit245 ], [ %i.dl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.dq, %bb.as ], [ %i.ho, %bb.cb ] ; 2 uses
  %.sroa.0.0.be.ph = phi i64 [ %.sroa.0.3, %bb.av ], [ %i.gg, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit273 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit243 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit245 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.3, %bb.as ], [ %i.gg, %bb.cb ]
  store i64 %.sink, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.bg, %bb.bv
  %.val214524 = phi i64 [ %i.cg, %bb.bg ], [ %i.gn, %bb.bv ], [ %.sink, %.backedge.sink.split ]
  %.sroa.0.0.be = phi i64 [ %.sroa.0.3, %bb.bg ], [ %i.gg, %bb.bv ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.fw = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.fw, label %bb.a, label %._crit_edge

bb.bi:                                            ; preds = %._crit_edge, %bb.x, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %bb.aa, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit269, %bb.by, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit254, %bb.w
  ret void

bb.bj:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #34
  unreachable

bb.bk:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.fx = add nuw i64 %.val214523529, 16          ; 2 uses
  %.not4.i247 = icmp ugt i64 %i.fx, %.val226
  br i1 %.not4.i247, label %bb.bl, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i251, !prof !745

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val214523529, i64 noundef %i.fx, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1178
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i251: ; preds = %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214523529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.ga = load <2 x i64>, ptr %i.fy, align 1, !alias.scope !1184, !noalias !1185
  store <2 x i64> %i.ga, ptr %i.fz, align 1, !alias.scope !1182, !noalias !1186
  %i.gb = add nuw i64 %.val214523529, %i.q        ; 7 uses
  store i64 %i.gb, ptr %i.a, align 8, !alias.scope !1173, !noalias !1176
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.q
  %.sroa.030.0.copyload.i252 = load i16, ptr %i.gc, align 1, !alias.scope !1187, !noalias !1190 ; 3 uses
  %i.gd = icmp eq i16 %.sroa.030.0.copyload.i252, 0
  br i1 %i.gd, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit254, label %bb.bm

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit254: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i251
  store i64 3, ptr %0, align 8
  br label %bb.bi

bb.bm:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i251
  %i.ge = zext i16 %.sroa.030.0.copyload.i252 to i64 ; 9 uses
  %i.gf = add nuw nsw i64 %.sroa.0.0530, 3
  %i.gg = add nuw nsw i64 %i.gf, %i.q             ; 3 uses
  %narrow = add nuw nsw i8 %i.i, 4
  %i.gh = zext nneg i8 %narrow to i64             ; 4 uses
  %i.gi = icmp ult i64 %i.gb, %i.ge
  br i1 %i.gi, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.gj = sub nuw nsw i64 %i.ge, %i.gb            ; 6 uses
  %i.gk = icmp samesign ult i64 %5, %i.gj
  br i1 %i.gk, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit269, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gl = sub nuw nsw i64 %5, %i.gj
  %..i.i256 = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.gj, i64 %i.gh) ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 %i.gl ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.gn = add nuw nsw i64 %..i.i256, %i.gb        ; 5 uses
  %.not4.i.i.i259 = icmp ugt i64 %i.gn, %.val226
  br i1 %.not4.i.i.i259, label %bb.bt, label %bb.bp, !prof !745

bb.bp:                                            ; preds = %bb.bo
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gb ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.gp = icmp samesign ult i64 %i.gj, 4
  br i1 %i.gp, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gq = icmp samesign ult i64 %..i.i256, 8
  br i1 %i.gq, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i266, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.gr = load i8, ptr %i.gm, align 1, !alias.scope !1218, !noalias !1219, !noundef !4
  store i8 %i.gr, ptr %i.go, align 1, !alias.scope !1221, !noalias !1222
  %.not12.i.i.i.i267 = icmp eq i64 %i.gj, 1
  br i1 %.not12.i.i.i.i267, label %bb.bv, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i268

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i268: ; preds = %bb.br
  %i.gs = load i16, ptr %i.gm, align 1, !alias.scope !1223, !noalias !1227
  store i16 %i.gs, ptr %i.go, align 1, !alias.scope !1229, !noalias !1230
  %i.gt = add nsw i64 %..i.i256, -2               ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt
  %i.gw = load i16, ptr %i.gu, align 1, !alias.scope !1231, !noalias !1235
  store i16 %i.gw, ptr %i.gv, align 1, !alias.scope !1237, !noalias !1238
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.gx = icmp samesign ult i64 %..i.i256, 17
  br i1 %i.gx, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i265, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i266: ; preds = %bb.bq
  %i.gy = load i32, ptr %i.gm, align 1, !alias.scope !1239, !noalias !1243
  store i32 %i.gy, ptr %i.go, align 1, !alias.scope !1245, !noalias !1246
  %i.gz = add nsw i64 %..i.i256, -4               ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gz
  %i.hc = load i32, ptr %i.ha, align 1, !alias.scope !1247, !noalias !1251
  store i32 %i.hc, ptr %i.hb, align 1, !alias.scope !1253, !noalias !1254
  br label %bb.bv

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i265: ; preds = %bb.bs
  %i.hd = load i64, ptr %i.gm, align 1, !alias.scope !1255, !noalias !1259
  store i64 %i.hd, ptr %i.go, align 1, !alias.scope !1261, !noalias !1262
  %i.he = add nsw i64 %..i.i256, -8               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.he
  %i.hh = load i64, ptr %i.hf, align 1, !alias.scope !1263, !noalias !1267
  store i64 %i.hh, ptr %i.hg, align 1, !alias.scope !1269, !noalias !1270
  br label %bb.bv

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264: ; preds = %bb.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.go, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gm, i64 16, i1 false), !alias.scope !1271, !noalias !1275
  %i.hi = add nsw i64 %..i.i256, -16              ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.hj, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !1277, !noalias !1281
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bo
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.gb, i64 noundef %i.gn, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1283
  unreachable

bb.bu:                                            ; preds = %bb.bm, %bb.bw
  %.val214528 = phi i64 [ %i.gn, %bb.bw ], [ %i.gb, %bb.bm ] ; 13 uses
  %.sroa.032.0 = phi i64 [ %i.hn, %bb.bw ], [ %i.gh, %bb.bm ]
  %.sroa.032.0.fr = freeze i64 %.sroa.032.0       ; 4 uses
  %i.hl = sub nuw i64 %.val214528, %i.ge          ; 2 uses
  %i.hm = icmp ult i64 %.val214528, %i.ge
  br i1 %i.hm, label %bb.by, label %bb.bx

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit269: ; preds = %bb.bn
  store i64 4, ptr %0, align 8
  br label %bb.bi

bb.bv:                                            ; preds = %bb.br, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i268, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i266, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i265, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264
  store i64 %i.gn, ptr %i.a, align 8, !alias.scope !1284, !noalias !1285
  %.not367 = icmp samesign ult i64 %i.gj, %i.gh
  br i1 %.not367, label %bb.bw, label %.backedge

bb.bw:                                            ; preds = %bb.bv
  %i.hn = sub nuw nsw i64 %i.gh, %..i.i256
  br label %bb.bu

bb.bx:                                            ; preds = %bb.bu
  %.not197 = icmp samesign ugt i64 %.sroa.032.0.fr, %i.ge
  br i1 %.not197, label %.lr.ph.i, label %bb.cd

bb.by:                                            ; preds = %bb.bu
  store i64 4, ptr %0, align 8
  br label %bb.bi

.lr.ph.i:                                         ; preds = %bb.bx
  %i.ho = add nuw i64 %.val214528, %.sroa.032.0.fr ; 2 uses
  %umax.i270 = tail call i64 @llvm.umax.i64(i64 %.val214528, i64 %.val226) ; 3 uses
  %i.hp = add i64 %.sroa.032.0.fr, -1
  %i.hq = sub i64 %.val214528, %i.ge
  %i.hr = tail call i64 @llvm.umax.i64(i64 %.val226, i64 %i.hq)
  %i.hs = add i64 %i.hr, %i.ge
  %i.ht = sub i64 %i.hs, %.val214528
  %i.hu = sub i64 %umax.i270, %.val214528
  %i.hv = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.hu)
  %i.hw = tail call i64 @llvm.umin.i64(i64 %i.hp, i64 %i.hv)
  %i.hx = add i64 %i.hw, 1                        ; 3 uses
  %min.iters.check996 = icmp ult i64 %i.hx, 17
  %diff.check994 = icmp ult i16 %.sroa.030.0.copyload.i252, 16
  %or.cond1006 = or i1 %min.iters.check996, %diff.check994
  br i1 %or.cond1006, label %scalar.ph995.preheader, label %vector.ph997

vector.ph997:                                     ; preds = %.lr.ph.i
  %i.hy = and i64 %i.hx, 15                       ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = select i1 %i.hz, i64 16, i64 %i.hy
  %n.vec998 = sub i64 %i.hx, %i.ia                ; 2 uses
  %i.ib = add i64 %.val214528, %n.vec998
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1002, %vector.body999 ] ; 2 uses
  %i.ic = add i64 %.val214528, %index1000         ; 2 uses
  %i.id = sub i64 %i.ic, %i.ge
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.id
  %wide.load1001 = load <16 x i8>, ptr %i.ie, align 1, !noalias !1286
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ic
  store <16 x i8> %wide.load1001, ptr %i.if, align 1, !noalias !1286
  %index.next1002 = add nuw i64 %index1000, 16    ; 2 uses
  %i.ig = icmp eq i64 %index.next1002, %n.vec998
  br i1 %i.ig, label %scalar.ph995.preheader, label %vector.body999, !llvm.loop !1289

scalar.ph995.preheader:                           ; preds = %vector.body999, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %.val214528, %.lr.ph.i ], [ %i.ib, %vector.body999 ]
  br label %scalar.ph995

scalar.ph995:                                     ; preds = %scalar.ph995.preheader, %bb.cb
  %.sroa.01.010.i = phi i64 [ %i.ih, %bb.cb ], [ %.sroa.01.010.i.ph, %scalar.ph995.preheader ] ; 4 uses
  %i.ih = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.ii = sub i64 %.sroa.01.010.i, %i.ge          ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %.val226
  br i1 %i.ij, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %scalar.ph995
  %exitcond.not.i271 = icmp eq i64 %.sroa.01.010.i, %umax.i270
  br i1 %exitcond.not.i271, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %scalar.ph995
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !1286
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ii
  %i.il = load i8, ptr %i.ik, align 1, !noalias !1286, !noundef !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i
  store i8 %i.il, ptr %i.im, align 1, !noalias !1286
  %exitcond15.not.i = icmp eq i64 %i.ih, %i.ho
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph995, !llvm.loop !1290

bb.cc:                                            ; preds = %bb.bz
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i270, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !1286
  unreachable

bb.cd:                                            ; preds = %bb.bx
  %i.in = add nuw i64 %i.hl, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.io = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.hl, i64 noundef %i.in, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1294 ; 2 uses
  %i.ip = extractvalue { i64, i64 } %i.io, 0      ; 2 uses
  %i.iq = extractvalue { i64, i64 } %i.io, 1
  %i.ir = sub i64 %i.iq, %i.ip                    ; 2 uses
  %i.is = sub i64 %.val226, %i.ir
  %.not.i.i272 = icmp ugt i64 %.val214528, %i.is
  br i1 %.not.i.i272, label %bb.ce, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit273, !prof !9

bb.ce:                                            ; preds = %bb.cd
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1294
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit273: ; preds = %bb.cd
  %i.it = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ip
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214528
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull align 1 %i.it, i64 %i.ir, i1 false), !alias.scope !1291, !noalias !1297
  %i.iv = add nuw i64 %.val214528, %.sroa.032.0.fr
  br label %.backedge.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keyB1a_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2i_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val17 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.val18 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val19 = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val19)
  %i.d = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1298 ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp eq i32 %i.d, 0
  %i.g = sub i64 %.val17, %.val19
  %spec.select.i.i.i.i.i = select i1 %i.f, i64 %i.g, i64 %i.e ; 2 uses
  %i.h = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val12 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr i8, ptr %0, i64 104
  %.val13 = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %.val14 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr i8, ptr %0, i64 72
  %.val15 = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val15)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i.i.i.i20), !alias.scope !1308 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %i.p = sub i64 %.val13, %.val15
  %spec.select.i.i.i.i.i21 = select i1 %i.o, i64 %i.p, i64 %i.n
  %i.q = icmp slt i64 %spec.select.i.i.i.i.i21, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 4 uses
  %i.s = zext i1 %i.h to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %i.q, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.u ; 5 uses
  %i.w = select i1 %i.q, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w ; 4 uses
  %.val8 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val9 = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.val10 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %.val11 = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %.val9, i64 %.val11)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i.i.i.i22), !alias.scope !1318 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val9, %.val11
  %spec.select.i.i.i.i.i23 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i.i23, 0 ; 3 uses
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr i8, ptr %i.x, i64 8
  %.val5 = load i64, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.t, i64 8
  %.val7 = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val5, i64 %.val7)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i.i.i.i24), !alias.scope !1328 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val5, %.val7
  %spec.select.i.i.i.i.i25 = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i25, 0 ; 3 uses
  %i.am = select i1 %i.ae, ptr %i.v, ptr %i.r, !unpredictable !4
  %i.an = select i1 %i.al, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ao = select i1 %i.al, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ap = select i1 %i.ae, ptr %i.r, ptr %i.ao, !unpredictable !4 ; 4 uses
  %i.aq = select i1 %i.ae, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.ar = select i1 %i.al, ptr %i.x, ptr %i.aq, !unpredictable !4 ; 4 uses
  %.val = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val1 = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.val2 = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val3 = load i64, ptr %i.at, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !1338 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %.val1, %.val3
  %spec.select.i.i.i.i.i27 = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = icmp slt i64 %spec.select.i.i.i.i.i27, 0 ; 2 uses
  %i.az = select i1 %i.ay, ptr %i.ar, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.ap, ptr %i.ar, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMNtB1e_5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverseNtNtCsG258MDvU3F_3std4time10SystemTimeENCNCNvMs0_NtB1L_18shard_file_managerNtB4R_16ShardFileManager15register_shards00E0ECsiAynQAjgDuT_10xet_client(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val9.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.e = load i32, ptr %i.d, align 8, !range !1348, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.i = load i32, ptr %i.h, align 8, !range !1348, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.c
  %i.k = icmp samesign ult i32 %i.i, %i.e
  %i.l = icmp slt i64 %i.g, %i.c
  %i.m = select i1 %i.j, i1 %i.k, i1 %i.l         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val7.i = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val6.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48
  %i.s = load i32, ptr %i.r, align 8, !range !1348, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.w = load i32, ptr %i.v, align 8, !range !1348, !noundef !4
  %i.x = icmp eq i64 %i.u, %i.q
  %i.y = icmp samesign ult i32 %i.w, %i.s
  %i.z = icmp slt i64 %i.u, %i.q
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z        ; 2 uses
  %i.ab = zext i1 %i.m to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = xor i1 %i.m, true
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.aa, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 3 uses
  %i.ai = select i1 %i.aa, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.val4.i = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.val5.i = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val4.i, i64 48
  %i.an = load i32, ptr %i.am, align 8, !range !1348, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5.i, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !range !1348, !noundef !4
  %i.as = icmp eq i64 %i.ap, %i.al
  %i.at = icmp samesign ult i32 %i.ar, %i.an
  %i.au = icmp slt i64 %i.ap, %i.al
  %i.av = select i1 %i.as, i1 %i.at, i1 %i.au     ; 3 uses
  %.val2.i = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !range !1348, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !range !1348, !noundef !4
  %i.be = icmp eq i64 %i.bb, %i.ax
  %i.bf = icmp samesign ult i32 %i.bd, %i.az
  %i.bg = icmp slt i64 %i.bb, %i.ax
  %i.bh = select i1 %i.be, i1 %i.bf, i1 %i.bg     ; 3 uses
  %i.bi = select i1 %i.bh, ptr %i.ah, ptr %i.af, !unpredictable !4
  %i.bj = select i1 %i.av, ptr %i.ac, ptr %i.bi, !unpredictable !4 ; 3 uses
  %i.bk = select i1 %i.av, ptr %i.af, ptr %i.ah, !unpredictable !4
  %i.bl = select i1 %i.bh, ptr %i.aj, ptr %i.bk, !unpredictable !4 ; 3 uses
  %.val.i = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !range !1348, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 40
end_hunk_1
