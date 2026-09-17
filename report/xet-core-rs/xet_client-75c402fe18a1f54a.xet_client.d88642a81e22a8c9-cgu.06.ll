Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.06?download=true
inline.NumInlined: 1225
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client:.split
  %i.an = icmp samesign ult i64 %.sroa.032.0, 4
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = icmp samesign ult i64 %.sroa.032.0, 8
  br i1 %i.ao, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ap = load i8, ptr %i.ai, align 1, !alias.scope !879, !noalias !880, !noundef !16
  store i8 %i.ap, ptr %i.al, align 1, !alias.scope !881, !noalias !882
  %.not12.i.i.i = icmp eq i64 %.sroa.032.0, 1
  br i1 %.not12.i.i.i, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.r
  %i.aq = load i16, ptr %i.ai, align 1, !alias.scope !883, !noalias !884
  store i16 %i.aq, ptr %i.al, align 1, !alias.scope !885, !noalias !886
  %i.ar = add nsw i64 %.sroa.032.0, -2            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %i.au = load i16, ptr %i.as, align 1, !alias.scope !887, !noalias !888
  store i16 %i.au, ptr %i.at, align 1, !alias.scope !889, !noalias !890
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.s:                                             ; preds = %bb.q
  %i.av = icmp samesign ult i64 %.sroa.032.0, 17
  br i1 %i.av, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %bb.t

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.q
  %i.aw = load i32, ptr %i.ai, align 1, !alias.scope !891, !noalias !892
  store i32 %i.aw, ptr %i.al, align 1, !alias.scope !893, !noalias !894
  %i.ax = add nsw i64 %.sroa.032.0, -4            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ax
  %i.ba = load i32, ptr %i.ay, align 1, !alias.scope !895, !noalias !896
  store i32 %i.ba, ptr %i.az, align 1, !alias.scope !897, !noalias !898
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.t:                                             ; preds = %bb.s
  %i.bb = icmp samesign ult i64 %.sroa.032.0, 33
  br i1 %i.bb, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.s
  %i.bc = load i64, ptr %i.ai, align 1, !alias.scope !899, !noalias !900
  store i64 %i.bc, ptr %i.al, align 1, !alias.scope !901, !noalias !902
  %i.bd = add nsw i64 %.sroa.032.0, -8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bd
  %i.bg = load i64, ptr %i.be, align 1, !alias.scope !903, !noalias !904
  store i64 %i.bg, ptr %i.bf, align 1, !alias.scope !905, !noalias !906
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i: ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, -9223372036854775808) %.sroa.032.0, i1 false), !alias.scope !907, !noalias !908
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !909, !noalias !910
  %i.bh = add nsw i64 %.sroa.032.0, -16           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.bi, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !911, !noalias !912
  br label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit

bb.u:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge181183, i64 noundef %i.aj, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !913
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit: ; preds = %bb.o, %bb.r, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !914, !noalias !915
  br label %bb.f

bb.v:                                             ; preds = %bb.f
  %i.bk = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i169 = icmp ugt i64 %i.bk, %2
  br i1 %.not.i169, label %bb.x, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.bl, align 1, !alias.scope !916, !noalias !917 ; 4 uses
  %i.bm = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.bm, label %bb.x, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.w:                                             ; preds = %bb.f
  %i.bn = sub i64 %.val157, %.val161
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.as

bb.x:                                             ; preds = %bb.v, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i ], [ 2, %bb.v ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.as

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i
  %i.bp = zext i16 %.sroa.030.0.copyload.i to i64 ; 10 uses
  %narrow147 = add nuw nsw i8 %i.i, 4             ; 2 uses
  %i.bq = zext nneg i8 %narrow147 to i64
  %i.br = icmp eq i8 %narrow147, 19
  br i1 %i.br, label %.preheader.preheader, label %bb.z

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i17398 = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not.i17398, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph101

.preheader:                                       ; preds = %.lr.ph101
  %exitcond.not.i173 = icmp eq i64 %i.bu, %2
  br i1 %exitcond.not.i173, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i172100 = phi i64 [ %i.bw, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.699 = phi i64 [ %i.bu, %.preheader ], [ %i.bk, %.preheader.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.699
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !918, !noalias !919, !noundef !16 ; 2 uses
  %i.bu = add i64 %.sroa.0.699, 1                 ; 3 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = add i64 %.sroa.0.0.i172100, %i.bv       ; 2 uses
  %i.bx = icmp eq i8 %i.bt, -1
  br i1 %i.bx, label %.preheader, label %bb.y

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.y:                                             ; preds = %.lr.ph101
  %i.by = add i64 %i.bw, 19
  br label %bb.z

bb.z:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.y
  %.sroa.0.8 = phi i64 [ %i.bu, %bb.y ], [ %i.bk, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 9 uses
  %.sroa.066.0 = phi i64 [ %i.by, %bb.y ], [ %i.bq, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 15 uses
  %i.bz = add i64 %.val157, %.sroa.066.0          ; 15 uses
  %i.ca = icmp ugt i64 %i.bz, %.val168
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val168, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  %i.cb = icmp ugt i64 %.sroa.066.0, %i.bp
  %i.cc = sub nuw i64 %.val157, %i.bp             ; 9 uses
  %i.cd = icmp ult i64 %.val157, %i.bp            ; 2 uses
  br i1 %i.cb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.ce, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cf = icmp ult i64 %i.cc, %.val168
  br i1 %i.cf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #34, !noalias !920
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ], !noalias !921
  %i.cg = icmp ult i64 %i.bz, %.val157
  br i1 %i.cg, label %bb.ah, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !28

bb.ah:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val157, i64 noundef %i.bz, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #34, !noalias !922
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !920, !noundef !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 %i.ci, i64 range(i64 1, 0) %.sroa.066.0, i1 false), !noalias !922
  br label %.backedge

bb.ai:                                            ; preds = %bb.ae
  %i.ck = icmp ult i64 %.val157, %i.bz
  br i1 %i.ck, label %iter.check, label %.backedge

iter.check:                                       ; preds = %bb.ai
  %min.iters.check = icmp ult i64 %.sroa.066.0, 8
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 32
  %or.cond121 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond121, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check102 = icmp ult i64 %.sroa.066.0, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %.sroa.066.0, 24
  %n.vec = and i64 %.sroa.066.0, -32              ; 4 uses
  %5 = add i64 %.val157, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = add i64 %.val157, %index                ; 2 uses
  %i.cm = sub nuw i64 %i.cl, %i.bp
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <16 x i8>, ptr %i.cn, align 1, !noalias !923
  %wide.load103 = load <16 x i8>, ptr %i.co, align 1, !noalias !923
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <16 x i8> %wide.load, ptr %i.cp, align 1, !noalias !923
  store <16 x i8> %wide.load103, ptr %i.cq, align 1, !noalias !923
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.066.0, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %.sroa.066.0, -8            ; 3 uses
  %6 = add i64 %.val157, %n.vec104
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = add i64 %.val157, %index105             ; 2 uses
  %i.ct = sub nuw i64 %i.cs, %i.bp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ct
  %wide.load106 = load <8 x i8>, ptr %i.cu, align 1, !noalias !923
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cs
  store <8 x i8> %wide.load106, ptr %i.cv, align 1, !noalias !923
  %index.next107 = add nuw i64 %index105, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next107, %n.vec104
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !836

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %.sroa.066.0, %n.vec104
  br i1 %cmp.n108, label %.backedge, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.010.i.i.ph = phi i64 [ %.val157, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ] ; 4 uses
  %i.cx = add i64 %.val157, %.sroa.066.0
  %i.cy = sub i64 %i.cx, %.sroa.01.010.i.i.ph
  %i.cz = add i64 %.val157, -1
  %i.da = add i64 %i.cz, %.sroa.066.0
  %i.db = sub i64 %i.da, %.sroa.01.010.i.i.ph
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.01.010.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.prol ], [ %.sroa.01.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dc = add i64 %.sroa.01.010.i.i.prol, 1       ; 2 uses
  %i.dd = sub nuw i64 %.sroa.01.010.i.i.prol, %i.bp
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !923, !noundef !16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i.i.prol
  store i8 %i.df, ptr %i.dg, align 1, !noalias !923
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !837

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.01.010.i.i.unr = phi i64 [ %.sroa.01.010.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.prol ]
  %i.dh = icmp ult i64 %i.db, 3
  br i1 %i.dh, label %.backedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.01.010.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %.sroa.01.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.di = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.dj = sub nuw i64 %.sroa.01.010.i.i, %i.bp
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !923, !noundef !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i.i
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !923
  %i.dn = add i64 %.sroa.01.010.i.i, 2            ; 2 uses
  %i.do = sub nuw i64 %i.di, %i.bp
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !923, !noundef !16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.di
  store i8 %i.dq, ptr %i.dr, align 1, !noalias !923
  %i.ds = add i64 %.sroa.01.010.i.i, 3            ; 2 uses
  %i.dt = sub nuw i64 %i.dn, %i.bp
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !923, !noundef !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dn
  store i8 %i.dv, ptr %i.dw, align 1, !noalias !923
  %i.dx = add i64 %.sroa.01.010.i.i, 4            ; 2 uses
  %i.dy = sub nuw i64 %i.ds, %i.bp
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !923, !noundef !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ds
  store i8 %i.ea, ptr %i.eb, align 1, !noalias !923
  %exitcond15.not.i.i.3 = icmp eq i64 %i.dx, %i.bz
  br i1 %exitcond15.not.i.i.3, label %.backedge, label %.lr.ph.i.i, !llvm.loop !838

bb.aj:                                            ; preds = %bb.ac
  %i.ec = icmp ult i64 %.sroa.066.0, 33
  br i1 %i.ec, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = icmp ugt i64 %.sroa.066.0, 64
  %i.ee = add i64 %.val157, 64
  %.not.i = icmp ugt i64 %i.ee, %.val168
  %or.cond78 = or i1 %i.ed, %.not.i
  br i1 %or.cond78, label %bb.am, label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.ef = add i64 %.val157, 32
  %.not4.i = icmp ugt i64 %i.ef, %.val168
  br i1 %.not4.i, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eg = add i64 %i.cc, %.sroa.066.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !noalias !921
  %i.eh = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.eg, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !925 ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.eh, 1
  %i.ek = sub i64 %i.ej, %i.ei                    ; 2 uses
  %i.el = sub i64 %.val168, %i.ek
  %.not.i.i179 = icmp ugt i64 %.val157, %i.el
  br i1 %.not.i.i179, label %bb.an, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !18

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !925
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull align 1 %i.em, i64 %i.ek, i1 false), !alias.scope !924, !noalias !926
  br label %.backedge

bb.ao:                                            ; preds = %bb.ak
  %i.eo = add i64 %i.cc, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927), !noalias !921
  %i.ep = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.eo, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !928 ; 2 uses
  %i.eq = extractvalue { i64, i64 } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { i64, i64 } %i.ep, 1
  %i.es = sub i64 %i.er, %i.eq                    ; 2 uses
  %i.et = sub i64 %.val168, %i.es
  %.not.i.i180 = icmp ugt i64 %.val157, %i.et
  br i1 %.not.i.i180, label %bb.ap, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181, !prof !18

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !928
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181: ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr nonnull align 1 %i.eu, i64 %i.es, i1 false), !alias.scope !927, !noalias !929
  br label %.backedge

bb.aq:                                            ; preds = %bb.al
  %i.ew = add i64 %i.cc, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930), !noalias !921
  %i.ex = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.cc, i64 noundef %i.ew, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !931 ; 2 uses
  %i.ey = extractvalue { i64, i64 } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { i64, i64 } %i.ex, 1
  %i.fa = sub i64 %i.ez, %i.ey                    ; 2 uses
  %i.fb = sub i64 %.val168, %i.fa
  %.not.i.i182 = icmp ugt i64 %.val157, %i.fb
  br i1 %.not.i.i182, label %bb.ar, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183, !prof !18

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !931
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183: ; preds = %bb.aq
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 1 %i.fc, i64 %i.fa, i1 false), !alias.scope !930, !noalias !932
  br label %.backedge

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ad, %bb.ac
  store i64 4, ptr %0, align 8
  br label %bb.as

.backedge:                                        ; preds = %bb.bb, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.ai, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183
  %.sink = phi i64 [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181 ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183 ], [ %i.bz, %middle.block ], [ %i.hc, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196 ], [ %i.bz, %bb.ai ], [ %i.bz, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.bz, %.lr.ph.i.i.prol.loopexit ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bz, %.lr.ph.i.i ], [ %i.fs, %bb.bb ] ; 2 uses
  %.sroa.0.0.be = phi i64 [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit181 ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit183 ], [ %.sroa.0.8, %middle.block ], [ %i.fo, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196 ], [ %.sroa.0.8, %bb.ai ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.8, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.8, %vec.epilog.middle.block ], [ %.sroa.0.8, %.lr.ph.i.i ], [ %i.fo, %bb.bb ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  %i.fe = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.fe, label %bb.a, label %._crit_edge

bb.as:                                            ; preds = %._crit_edge, %bb.x, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %bb.aa, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %bb.ay, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192, %bb.w
  ret void

bb.at:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #34
  unreachable

bb.au:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.ff = add nuw i64 %storemerge181183, 16       ; 2 uses
  %.not4.i185 = icmp ugt i64 %i.ff, %.val168
  br i1 %.not4.i185, label %bb.av, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189, !prof !28

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %storemerge181183, i64 noundef %i.ff, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !935
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189: ; preds = %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 %storemerge181183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.fi = load <2 x i64>, ptr %i.fg, align 1, !alias.scope !938, !noalias !939
  store <2 x i64> %i.fi, ptr %i.fh, align 1, !alias.scope !937, !noalias !940
  %i.fj = add i64 %storemerge181183, %i.q         ; 11 uses
  store i64 %i.fj, ptr %i.a, align 8, !alias.scope !933, !noalias !934
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.q
  %.sroa.030.0.copyload.i190 = load i16, ptr %i.fk, align 1, !alias.scope !941, !noalias !942 ; 3 uses
  %i.fl = icmp eq i16 %.sroa.030.0.copyload.i190, 0
  br i1 %i.fl, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192, label %bb.aw

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit192: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189
  store i64 3, ptr %0, align 8
  br label %bb.as

bb.aw:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i189
  %i.fm = zext i16 %.sroa.030.0.copyload.i190 to i64 ; 7 uses
  %i.fn = add nuw nsw i64 %.sroa.0.0184, 3
  %i.fo = add nuw nsw i64 %i.fn, %i.q             ; 2 uses
  %narrow = add nuw nsw i8 %i.i, 4
  %i.fp = zext nneg i8 %narrow to i64             ; 3 uses
  %i.fq = sub nuw i64 %i.fj, %i.fm                ; 2 uses
  %i.fr = icmp ult i64 %i.fj, %i.fm
  br i1 %i.fr, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not142 = icmp samesign ult i64 %i.fm, %i.fp
  br i1 %.not142, label %.lr.ph.i, label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  store i64 4, ptr %0, align 8
  br label %bb.as

.lr.ph.i:                                         ; preds = %bb.ax
  %i.fs = add nuw i64 %i.fj, %i.fp                ; 2 uses
  %umax.i193 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 %.val168) ; 3 uses
  %i.ft = add i64 %storemerge181183, %i.q
  %i.fu = sub i64 %i.ft, %i.fm
  %i.fv = tail call i64 @llvm.umax.i64(i64 %.val168, i64 %i.fu)
  %i.fw = add i64 %i.fv, %i.fm
  %i.fx = add i64 %storemerge181183, %i.q
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = add i64 %storemerge181183, %i.q
  %i.ga = sub i64 %umax.i193, %i.fz
  %i.gb = and i8 %i.g, 15
  %narrow120 = add nuw nsw i8 %i.gb, 3
  %i.gc = zext nneg i8 %narrow120 to i64
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.ga)
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gc) ; 2 uses
  %min.iters.check112 = icmp samesign ult i64 %i.ge, 16
  %diff.check111 = icmp ult i16 %.sroa.030.0.copyload.i190, 16
  %or.cond122 = or i1 %min.iters.check112, %diff.check111
  br i1 %or.cond122, label %scalar.ph.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %i.gg = and i64 %i.gf, 15                       ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  %i.gi = select i1 %i.gh, i64 16, i64 %i.gg
  %n.vec114 = sub nsw i64 %i.gf, %i.gi            ; 2 uses
  %7 = add i64 %i.fj, %n.vec114
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next118, %vector.body115 ] ; 2 uses
  %i.gj = add i64 %i.fj, %index116                ; 2 uses
  %i.gk = sub nuw i64 %i.gj, %i.fm
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gk
  %wide.load117 = load <16 x i8>, ptr %i.gl, align 1, !noalias !943
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gj
  store <16 x i8> %wide.load117, ptr %i.gm, align 1, !noalias !943
  %index.next118 = add nuw i64 %index116, 16      ; 2 uses
  %i.gn = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.gn, label %scalar.ph.preheader, label %vector.body115, !llvm.loop !863

scalar.ph.preheader:                              ; preds = %vector.body115, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %i.fj, %.lr.ph.i ], [ %7, %vector.body115 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bb
  %.sroa.01.010.i = phi i64 [ %i.go, %bb.bb ], [ %.sroa.01.010.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.go = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.gp = sub nuw i64 %.sroa.01.010.i, %i.fm      ; 3 uses
  %i.gq = icmp ult i64 %i.gp, %.val168
  br i1 %i.gq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %scalar.ph
  %exitcond.not.i194 = icmp eq i64 %.sroa.01.010.i, %umax.i193
  br i1 %exitcond.not.i194, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !943
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !943, !noundef !16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i
  store i8 %i.gs, ptr %i.gt, align 1, !noalias !943
  %exitcond15.not.i = icmp eq i64 %i.go, %i.fs
  br i1 %exitcond15.not.i, label %.backedge, label %scalar.ph, !llvm.loop !864

bb.bc:                                            ; preds = %bb.az
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i193, i64 noundef %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !943
  unreachable

bb.bd:                                            ; preds = %bb.ax
  %i.gu = add nuw i64 %i.fq, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.gv = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.fq, i64 noundef %i.gu, i64 noundef range(i64 0, -9223372036854775808) %.val168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !945 ; 2 uses
  %i.gw = extractvalue { i64, i64 } %i.gv, 0      ; 2 uses
  %i.gx = extractvalue { i64, i64 } %i.gv, 1
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  %i.gz = sub i64 %.val168, %i.gy
  %.not.i.i195 = icmp ugt i64 %i.fj, %i.gz
  br i1 %.not.i.i195, label %bb.be, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196, !prof !18

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !945
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit196: ; preds = %bb.bd
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr nonnull align 1 %i.ha, i64 %i.gy, i1 false), !alias.scope !944, !noalias !946
  %i.hc = add nuw i64 %i.fj, %i.fp
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.val219 = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val226 = load i64, ptr %i.c, align 8, !noundef !16 ; 37 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val226, i64 51)
  %.not530 = icmp eq i64 %2, 0
  br i1 %.not530, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.e = load ptr, ptr %3, align 8                ; 23 uses
  br label %bb.a

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.a:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0528 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.val214521527 = phi i64 [ %.val219, %.lr.ph ], [ %.val214522, %.backedge ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0528
  %i.g = load i8, ptr %i.f, align 1, !noundef !16 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0528, 1         ; 6 uses
  %i.i = and i8 %i.g, 15                          ; 3 uses
  %i.j = icmp eq i8 %i.i, 15
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i8 %i.g, -16
  %i.l = icmp ult i64 %.sroa.0.0528, %i.b
  %or.cond = and i1 %i.l, %i.k
  %i.m = icmp ult i64 %.val214521527, %i.d
  %or.cond529 = select i1 %or.cond, i1 %i.m, i1 false
  br i1 %or.cond529, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = lshr i8 %i.g, 4                          ; 3 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i8 %i.g, 4
  %i.q = zext nneg i8 %i.p to i64                 ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.0.0528, 17        ; 2 uses
  %.not = icmp ugt i64 %i.r, %2
  br i1 %.not, label %bb.bj, label %bb.bk, !prof !28

bb.e:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.n to i64
  %i.t = icmp eq i8 %i.n, 15
  br i1 %i.t, label %.preheader531.preheader, label %bb.h

.preheader531.preheader:                          ; preds = %bb.e
  %exitcond.not.i983 = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i983, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph986

bb.f:                                             ; preds = %bb.c, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit
  %.val215 = phi i64 [ %.val214521527, %bb.c ], [ %i.aj, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit ] ; 8 uses
  %.sroa.0.1 = phi i64 [ %i.h, %bb.c ], [ %i.af, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit ] ; 3 uses
  %.not200 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not200, label %bb.v, label %bb.w

.preheader531:                                    ; preds = %.lr.ph986
  %exitcond.not.i = icmp eq i64 %i.w, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph986

.lr.ph986:                                        ; preds = %.preheader531.preheader, %.preheader531
  %.sroa.0.0.i985 = phi i64 [ %i.y, %.preheader531 ], [ 0, %.preheader531.preheader ]
  %.sroa.0.5984 = phi i64 [ %i.w, %.preheader531 ], [ %i.h, %.preheader531.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.5984
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1148, !noalias !1149, !noundef !16 ; 2 uses
  %i.w = add i64 %.sroa.0.5984, 1                 ; 3 uses
  %i.x = zext i8 %i.v to i64
  %i.y = add i64 %.sroa.0.0.i985, %i.x            ; 2 uses
  %i.z = icmp eq i8 %i.v, -1
  br i1 %i.z, label %.preheader531, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader531.preheader, %.preheader531
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.g:                                             ; preds = %.lr.ph986
  %i.aa = add i64 %i.y, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.2 = phi i64 [ %i.w, %bb.g ], [ %i.h, %bb.e ] ; 5 uses
  %.sroa.051.0 = phi i64 [ %i.aa, %bb.g ], [ %i.s, %bb.e ] ; 16 uses
  %i.ab = sub i64 %2, %.sroa.0.2
  %i.ac = icmp ugt i64 %.sroa.051.0, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sub i64 %.val226, %.val214521527
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
  br i1 %or.cond206, label %bb.m, label %bb.n, !prof !28

bb.l:                                             ; preds = %bb.i
  %i.ah = add i64 %.val214521527, %.sroa.051.0
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.aj = add i64 %.val214521527, %.sroa.051.0    ; 5 uses
  %i.ak = icmp ult i64 %i.aj, %.val214521527
  %.not4.i.i = icmp ugt i64 %i.aj, %.val226
  %or.cond.i.i = or i1 %i.ak, %.not4.i.i
  br i1 %or.cond.i.i, label %bb.u, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214521527 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.am = icmp eq i64 %.sroa.051.0, 0
  br i1 %i.am, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink17extend_from_slice.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = icmp samesign ult i64 %.sroa.051.0, 4
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client:.split
  %i.bu = add i64 %.sroa.0.8988, 1                ; 3 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = add i64 %.sroa.0.0.i230989, %i.bv       ; 2 uses
  %i.bx = icmp eq i8 %i.bt, -1
  br i1 %i.bx, label %.preheader, label %bb.y

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.y:                                             ; preds = %.lr.ph990
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.cc = sub nuw nsw i64 %i.bp, %.val215         ; 4 uses
  %i.cd = icmp samesign ult i64 %5, %i.cc
  br i1 %i.cd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = sub nuw nsw i64 %5, %i.cc
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.cc, i64 %.sroa.085.0) ; 13 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.ce ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.cg = add nuw nsw i64 %..i.i, %.val215        ; 5 uses
  %.not4.i.i.i = icmp ugt i64 %i.cg, %.val226
  br i1 %.not4.i.i.i, label %bb.ak, label %bb.ae, !prof !28

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val215 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.ci = icmp eq i64 %..i.i, 0
  br i1 %i.ci, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp samesign ult i64 %..i.i, 4
  br i1 %i.cj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = icmp samesign ult i64 %..i.i, 8
  br i1 %i.ck, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.cl = load i8, ptr %i.cf, align 1, !alias.scope !1209, !noalias !1210, !noundef !16
  store i8 %i.cl, ptr %i.ch, align 1, !alias.scope !1211, !noalias !1212
  %.not12.i.i.i.i = icmp eq i64 %..i.i, 1
  br i1 %.not12.i.i.i.i, label %bb.bg, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.cm = load i16, ptr %i.cf, align 1, !alias.scope !1213, !noalias !1214
  store i16 %i.cm, ptr %i.ch, align 1, !alias.scope !1215, !noalias !1216
  %i.cn = add nsw i64 %..i.i, -2                  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cq = load i16, ptr %i.co, align 1, !alias.scope !1217, !noalias !1218
  store i16 %i.cq, ptr %i.cp, align 1, !alias.scope !1219, !noalias !1220
  br label %bb.bg

bb.ai:                                            ; preds = %bb.ag
  %i.cr = icmp samesign ult i64 %..i.i, 17
  br i1 %i.cr, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %bb.aj

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.ag
  %i.cs = load i32, ptr %i.cf, align 1, !alias.scope !1221, !noalias !1222
  store i32 %i.cs, ptr %i.ch, align 1, !alias.scope !1223, !noalias !1224
  %i.ct = add nsw i64 %..i.i, -4                  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ct
  %i.cw = load i32, ptr %i.cu, align 1, !alias.scope !1225, !noalias !1226
  store i32 %i.cw, ptr %i.cv, align 1, !alias.scope !1227, !noalias !1228
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ai
  %i.cx = icmp samesign ult i64 %..i.i, 33
  br i1 %i.cx, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cf, align 1, !alias.scope !1229, !noalias !1230
  store i64 %i.cy, ptr %i.ch, align 1, !alias.scope !1231, !noalias !1232
  %i.cz = add nsw i64 %..i.i, -8                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz
  %i.dc = load i64, ptr %i.da, align 1, !alias.scope !1233, !noalias !1234
  store i64 %i.dc, ptr %i.db, align 1, !alias.scope !1235, !noalias !1236
  br label %bb.bg

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i: ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %i.cf, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !alias.scope !1237, !noalias !1238
  br label %bb.bg

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i: ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !1239, !noalias !1240
  %i.dd = add nsw i64 %..i.i, -16                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.df, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.de, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !1241, !noalias !1242
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val215, i64 noundef %i.cg, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1243
  unreachable

bb.al:                                            ; preds = %bb.ab, %bb.bh
  %.val214525 = phi i64 [ %i.cg, %bb.bh ], [ %.val215, %bb.ab ] ; 26 uses
  %.sroa.085.1 = phi i64 [ %i.fu, %bb.bh ], [ %.sroa.085.0, %bb.ab ] ; 11 uses
  %i.dg = icmp ugt i64 %.sroa.085.1, %i.bp
  %i.dh = sub nuw i64 %.val214525, %i.bp          ; 9 uses
  %i.di = icmp ult i64 %.val214525, %i.bp         ; 2 uses
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #34, !noalias !1244
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ], !noalias !1245
  %i.dl = add i64 %.val214525, %.sroa.085.1       ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %.val214525
  %.not.i.i = icmp ugt i64 %i.dl, %.val226
  %or.cond.i.i239 = or i1 %i.dm, %.not.i.i
  br i1 %or.cond.i.i239, label %bb.ar, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !28

bb.ar:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val214525, i64 noundef %i.dl, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #34, !noalias !1246
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dh
  %i.do = load i8, ptr %i.dn, align 1, !noalias !1244, !noundef !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214525
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, i8 %i.do, i64 range(i64 1, 0) %.sroa.085.1, i1 false), !noalias !1246
  br label %.backedge.sink.split

bb.as:                                            ; preds = %bb.ao
  %i.dq = add i64 %.val214525, %.sroa.085.1       ; 4 uses
  %i.dr = icmp ult i64 %.val214525, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i, label %.backedge.sink.split

.lr.ph.i.i:                                       ; preds = %bb.as
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val214525, i64 %.val226) ; 3 uses
  %i.ds = sub i64 %.val214525, %i.bp
  %i.dt = tail call i64 @llvm.umax.i64(i64 %.val226, i64 %i.ds)
  %i.du = add i64 %i.dt, %i.bp
  %i.dv = sub i64 %i.du, %.val214525
  %i.dw = sub i64 %umax.i.i, %.val214525
  %i.dx = add i64 %.sroa.085.1, -1
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dw)
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.dx)
  %i.ea = add i64 %i.dz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ea, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond1003 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1003, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.eb = and i64 %i.ea, 15                       ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = select i1 %i.ec, i64 16, i64 %i.eb
  %n.vec = sub i64 %i.ea, %i.ed                   ; 2 uses
  %6 = add i64 %.val214525, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = add i64 %.val214525, %index             ; 2 uses
  %i.ef = sub nuw i64 %i.ee, %i.bp
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ef
  %wide.load = load <16 x i8>, ptr %i.eg, align 1, !noalias !1247
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ee
  store <16 x i8> %wide.load, ptr %i.eh, align 1, !noalias !1247
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1068

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val214525, %.lr.ph.i.i ], [ %6, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.av
  %.sroa.01.010.i.i = phi i64 [ %i.ej, %bb.av ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ej = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.ek = sub nuw i64 %.sroa.01.010.i.i, %i.bp    ; 3 uses
  %i.el = icmp ult i64 %i.ek, %.val226
  br i1 %i.el, label %bb.at, label %bb.au

bb.at:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !1247
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !noalias !1247, !noundef !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i.i
  store i8 %i.en, ptr %i.eo, align 1, !noalias !1247
  %exitcond15.not.i.i = icmp eq i64 %i.ej, %i.dq
  br i1 %exitcond15.not.i.i, label %.backedge.sink.split, label %scalar.ph, !llvm.loop !1069

bb.aw:                                            ; preds = %bb.at
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !1247
  unreachable

bb.ax:                                            ; preds = %bb.am
  %i.ep = icmp ult i64 %.sroa.085.1, 33
  br i1 %i.ep, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eq = icmp ugt i64 %.sroa.085.1, 64
  %i.er = add i64 %.val214525, 64
  %.not.i = icmp ugt i64 %i.er, %.val226
  %or.cond364 = or i1 %i.eq, %.not.i
  br i1 %or.cond364, label %bb.ba, label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.es = add i64 %.val214525, 32
  %.not4.i = icmp ugt i64 %i.es, %.val226
  br i1 %.not4.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.et = add i64 %i.dh, %.sroa.085.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248), !noalias !1245
  %i.eu = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.et, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1249 ; 2 uses
  %i.ev = extractvalue { i64, i64 } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { i64, i64 } %i.eu, 1
  %i.ex = sub i64 %i.ew, %i.ev                    ; 2 uses
  %i.ey = sub i64 %.val226, %i.ex
  %.not.i.i240 = icmp ugt i64 %.val214525, %i.ey
  br i1 %.not.i.i240, label %bb.bb, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !18

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1249
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214525
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull align 1 %i.ez, i64 %i.ex, i1 false), !alias.scope !1248, !noalias !1250
  %i.fb = add i64 %.val214525, %.sroa.085.1
  br label %.backedge.sink.split

bb.bc:                                            ; preds = %bb.ay
  %i.fc = add i64 %i.dh, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251), !noalias !1245
  %i.fd = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.fc, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1252 ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1
  %i.fg = sub i64 %i.ff, %i.fe                    ; 2 uses
  %i.fh = sub i64 %.val226, %i.fg
  %.not.i.i241 = icmp ugt i64 %.val214525, %i.fh
  br i1 %.not.i.i241, label %bb.bd, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242, !prof !18

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1252
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242: ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214525
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %i.fi, i64 %i.fg, i1 false), !alias.scope !1251, !noalias !1253
  %i.fk = add i64 %.val214525, %.sroa.085.1
  br label %.backedge.sink.split

bb.be:                                            ; preds = %bb.az
  %i.fl = add i64 %i.dh, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254), !noalias !1245
  %i.fm = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.dh, i64 noundef %i.fl, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1255 ; 2 uses
  %i.fn = extractvalue { i64, i64 } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { i64, i64 } %i.fm, 1
  %i.fp = sub i64 %i.fo, %i.fn                    ; 2 uses
  %i.fq = sub i64 %.val226, %i.fp
  %.not.i.i243 = icmp ugt i64 %.val214525, %i.fq
  br i1 %.not.i.i243, label %bb.bf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244, !prof !18

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1255
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244: ; preds = %bb.be
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fn
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214525
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %i.fr, i64 %i.fp, i1 false), !alias.scope !1254, !noalias !1256
  %i.ft = add i64 %.val214525, %.sroa.085.1
  br label %.backedge.sink.split

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ac
  store i64 4, ptr %0, align 8
  br label %bb.bi

bb.bg:                                            ; preds = %bb.ae, %bb.ah, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client.exit9.i.i.i.i, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i
  store i64 %i.cg, ptr %i.a, align 8, !alias.scope !1257, !noalias !1258
  %.not366 = icmp ugt i64 %.sroa.085.0, %i.cc
  br i1 %.not366, label %bb.bh, label %.backedge

bb.bh:                                            ; preds = %bb.bg
  %i.fu = sub nuw i64 %.sroa.085.0, %..i.i
  br label %bb.al

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.an, %bb.am
  store i64 4, ptr %0, align 8
  br label %bb.bi

.backedge.sink.split:                             ; preds = %bb.cb, %bb.av, %bb.as, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit271
  %.sink = phi i64 [ %i.dq, %bb.av ], [ %i.it, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit271 ], [ %i.fb, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.fk, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242 ], [ %i.ft, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244 ], [ %i.dl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.dq, %bb.as ], [ %i.hn, %bb.cb ] ; 2 uses
  %.sroa.0.0.be.ph = phi i64 [ %.sroa.0.3, %bb.av ], [ %i.gf, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit271 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.3, %bb.as ], [ %i.gf, %bb.cb ]
  store i64 %.sink, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.bg, %bb.bv
  %.val214522 = phi i64 [ %i.cg, %bb.bg ], [ %i.gm, %bb.bv ], [ %.sink, %.backedge.sink.split ]
  %.sroa.0.0.be = phi i64 [ %.sroa.0.3, %bb.bg ], [ %i.gf, %bb.bv ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.fv, label %bb.a, label %._crit_edge

bb.bi:                                            ; preds = %._crit_edge, %bb.x, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit, %bb.aa, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit267, %bb.by, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253, %bb.w
  ret void

bb.bj:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #34
  unreachable

bb.bk:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.fw = add nuw i64 %.val214521527, 16          ; 2 uses
  %.not4.i246 = icmp ugt i64 %i.fw, %.val226
  br i1 %.not4.i246, label %bb.bl, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i250, !prof !28

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val214521527, i64 noundef %i.fw, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1261
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i250: ; preds = %bb.bk
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214521527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %i.fz = load <2 x i64>, ptr %i.fx, align 1, !alias.scope !1264, !noalias !1265
  store <2 x i64> %i.fz, ptr %i.fy, align 1, !alias.scope !1263, !noalias !1266
  %i.ga = add nuw i64 %.val214521527, %i.q        ; 7 uses
  store i64 %i.ga, ptr %i.a, align 8, !alias.scope !1259, !noalias !1260
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.q
  %.sroa.030.0.copyload.i251 = load i16, ptr %i.gb, align 1, !alias.scope !1267, !noalias !1268 ; 3 uses
  %i.gc = icmp eq i16 %.sroa.030.0.copyload.i251, 0
  br i1 %i.gc, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253, label %bb.bm

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i250
  store i64 3, ptr %0, align 8
  br label %bb.bi

bb.bm:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i250
  %i.gd = zext i16 %.sroa.030.0.copyload.i251 to i64 ; 9 uses
  %i.ge = add nuw nsw i64 %.sroa.0.0528, 3
  %i.gf = add nuw nsw i64 %i.ge, %i.q             ; 3 uses
  %narrow = add nuw nsw i8 %i.i, 4
  %i.gg = zext nneg i8 %narrow to i64             ; 4 uses
  %i.gh = icmp ult i64 %i.ga, %i.gd
  br i1 %i.gh, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.gi = sub nuw nsw i64 %i.gd, %i.ga            ; 6 uses
  %i.gj = icmp samesign ult i64 %5, %i.gi
  br i1 %i.gj, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit267, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gk = sub nuw nsw i64 %5, %i.gi
  %..i.i255 = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.gi, i64 %i.gg) ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 %i.gk ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.gm = add nuw nsw i64 %..i.i255, %i.ga        ; 5 uses
  %.not4.i.i.i257 = icmp ugt i64 %i.gm, %.val226
  br i1 %.not4.i.i.i257, label %bb.bt, label %bb.bp, !prof !28

bb.bp:                                            ; preds = %bb.bo
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ga ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.go = icmp samesign ult i64 %i.gi, 4
  br i1 %i.go, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gp = icmp samesign ult i64 %..i.i255, 8
  br i1 %i.gp, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.gq = load i8, ptr %i.gl, align 1, !alias.scope !1279, !noalias !1280, !noundef !16
  store i8 %i.gq, ptr %i.gn, align 1, !alias.scope !1281, !noalias !1282
  %.not12.i.i.i.i265 = icmp eq i64 %i.gi, 1
  br i1 %.not12.i.i.i.i265, label %bb.bv, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i266

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i266: ; preds = %bb.br
  %i.gr = load i16, ptr %i.gl, align 1, !alias.scope !1283, !noalias !1284
  store i16 %i.gr, ptr %i.gn, align 1, !alias.scope !1285, !noalias !1286
  %i.gs = add nsw i64 %..i.i255, -2               ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  %i.gv = load i16, ptr %i.gt, align 1, !alias.scope !1287, !noalias !1288
  store i16 %i.gv, ptr %i.gu, align 1, !alias.scope !1289, !noalias !1290
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.gw = icmp samesign ult i64 %..i.i255, 17
  br i1 %i.gw, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i263, label %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i262

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264: ; preds = %bb.bq
  %i.gx = load i32, ptr %i.gl, align 1, !alias.scope !1291, !noalias !1292
  store i32 %i.gx, ptr %i.gn, align 1, !alias.scope !1293, !noalias !1294
  %i.gy = add nsw i64 %..i.i255, -4               ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gy
  %i.hb = load i32, ptr %i.gz, align 1, !alias.scope !1295, !noalias !1296
  store i32 %i.hb, ptr %i.ha, align 1, !alias.scope !1297, !noalias !1298
  br label %bb.bv

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i263: ; preds = %bb.bs
  %i.hc = load i64, ptr %i.gl, align 1, !alias.scope !1299, !noalias !1300
  store i64 %i.hc, ptr %i.gn, align 1, !alias.scope !1301, !noalias !1302
  %i.hd = add nsw i64 %..i.i255, -8               ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hd
  %i.hg = load i64, ptr %i.he, align 1, !alias.scope !1303, !noalias !1304
  store i64 %i.hg, ptr %i.hf, align 1, !alias.scope !1305, !noalias !1306
  br label %bb.bv

_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i262: ; preds = %bb.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gl, i64 16, i1 false), !alias.scope !1307, !noalias !1308
  %i.hh = add nsw i64 %..i.i255, -16              ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.hi, i64 range(i64 0, -9223372036854775808) 16, i1 false), !alias.scope !1309, !noalias !1310
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bo
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ga, i64 noundef %i.gm, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #34, !noalias !1311
  unreachable

bb.bu:                                            ; preds = %bb.bm, %bb.bw
  %.val214526 = phi i64 [ %i.gm, %bb.bw ], [ %i.ga, %bb.bm ] ; 13 uses
  %.sroa.032.0 = phi i64 [ %i.hm, %bb.bw ], [ %i.gg, %bb.bm ]
  %.sroa.032.0.fr = freeze i64 %.sroa.032.0       ; 4 uses
  %i.hk = sub nuw i64 %.val214526, %i.gd          ; 2 uses
  %i.hl = icmp ult i64 %.val214526, %i.gd
  br i1 %i.hl, label %bb.by, label %bb.bx

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECsiAynQAjgDuT_10xet_client.exit267: ; preds = %bb.bn
  store i64 4, ptr %0, align 8
  br label %bb.bi

bb.bv:                                            ; preds = %bb.br, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj2_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i.i266, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj4_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i264, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj8_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i263, %_RINvNtCs6f1wo00zwKs_8lz4_flex7fastcpy17double_copy_trickKj10_ECsiAynQAjgDuT_10xet_client.exit.i.i.i.i262
  store i64 %i.gm, ptr %i.a, align 8, !alias.scope !1312, !noalias !1313
  %.not365 = icmp samesign ult i64 %i.gi, %i.gg
  br i1 %.not365, label %bb.bw, label %.backedge

bb.bw:                                            ; preds = %bb.bv
  %i.hm = sub nuw nsw i64 %i.gg, %..i.i255
  br label %bb.bu

bb.bx:                                            ; preds = %bb.bu
  %.not197 = icmp samesign ugt i64 %.sroa.032.0.fr, %i.gd
  br i1 %.not197, label %.lr.ph.i, label %bb.cd

bb.by:                                            ; preds = %bb.bu
  store i64 4, ptr %0, align 8
  br label %bb.bi

.lr.ph.i:                                         ; preds = %bb.bx
  %i.hn = add nuw i64 %.val214526, %.sroa.032.0.fr ; 2 uses
  %umax.i268 = tail call i64 @llvm.umax.i64(i64 %.val214526, i64 %.val226) ; 3 uses
  %i.ho = add i64 %.sroa.032.0.fr, -1
  %i.hp = sub i64 %.val214526, %i.gd
  %i.hq = tail call i64 @llvm.umax.i64(i64 %.val226, i64 %i.hp)
  %i.hr = add i64 %i.hq, %i.gd
  %i.hs = sub i64 %i.hr, %.val214526
  %i.ht = sub i64 %umax.i268, %.val214526
  %i.hu = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.ht)
  %i.hv = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hu)
  %i.hw = add i64 %i.hv, 1                        ; 3 uses
  %min.iters.check994 = icmp ult i64 %i.hw, 17
  %diff.check992 = icmp ult i16 %.sroa.030.0.copyload.i251, 16
  %or.cond1004 = or i1 %min.iters.check994, %diff.check992
  br i1 %or.cond1004, label %scalar.ph993.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %.lr.ph.i
  %i.hx = and i64 %i.hw, 15                       ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = select i1 %i.hy, i64 16, i64 %i.hx
  %n.vec996 = sub i64 %i.hw, %i.hz                ; 2 uses
  %7 = add i64 %.val214526, %n.vec996
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1000, %vector.body997 ] ; 2 uses
  %i.ia = add i64 %.val214526, %index998          ; 2 uses
  %i.ib = sub nuw i64 %i.ia, %i.gd
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ib
  %wide.load999 = load <16 x i8>, ptr %i.ic, align 1, !noalias !1314
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ia
  store <16 x i8> %wide.load999, ptr %i.id, align 1, !noalias !1314
  %index.next1000 = add nuw i64 %index998, 16     ; 2 uses
  %i.ie = icmp eq i64 %index.next1000, %n.vec996
  br i1 %i.ie, label %scalar.ph993.preheader, label %vector.body997, !llvm.loop !1142

scalar.ph993.preheader:                           ; preds = %vector.body997, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %.val214526, %.lr.ph.i ], [ %7, %vector.body997 ]
  br label %scalar.ph993

scalar.ph993:                                     ; preds = %scalar.ph993.preheader, %bb.cb
  %.sroa.01.010.i = phi i64 [ %i.if, %bb.cb ], [ %.sroa.01.010.i.ph, %scalar.ph993.preheader ] ; 4 uses
  %i.if = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.ig = sub nuw i64 %.sroa.01.010.i, %i.gd      ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.val226
  br i1 %i.ih, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %scalar.ph993
  %exitcond.not.i269 = icmp eq i64 %.sroa.01.010.i, %umax.i268
  br i1 %exitcond.not.i269, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %scalar.ph993
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #34, !noalias !1314
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ig
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !1314, !noundef !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.010.i
  store i8 %i.ij, ptr %i.ik, align 1, !noalias !1314
  %exitcond15.not.i = icmp eq i64 %i.if, %i.hn
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph993, !llvm.loop !1143

bb.cc:                                            ; preds = %bb.bz
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i268, i64 noundef %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #34, !noalias !1314
  unreachable

bb.cd:                                            ; preds = %bb.bx
  %i.il = add nuw i64 %i.hk, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.im = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsiAynQAjgDuT_10xet_client(i64 noundef %i.hk, i64 noundef %i.il, i64 noundef range(i64 0, -9223372036854775808) %.val226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116), !noalias !1316 ; 2 uses
  %i.in = extractvalue { i64, i64 } %i.im, 0      ; 2 uses
  %i.io = extractvalue { i64, i64 } %i.im, 1
  %i.ip = sub i64 %i.io, %i.in                    ; 2 uses
  %i.iq = sub i64 %.val226, %i.ip
  %.not.i.i270 = icmp ugt i64 %.val214526, %i.iq
  br i1 %.not.i.i270, label %bb.ce, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit271, !prof !18

bb.ce:                                            ; preds = %bb.cd
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #34, !noalias !1316
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit271: ; preds = %bb.cd
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.in
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 %.val214526
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull align 1 %i.ir, i64 %i.ip, i1 false), !alias.scope !1315, !noalias !1317
  %i.it = add nuw i64 %.val214526, %.sroa.032.0.fr
  br label %.backedge.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTReRShENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_11sort_by_keyB1a_NCNvNtNtCsiAynQAjgDuT_10xet_client6common11http_client11headers_tags_0E0EB2i_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val17 = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %.val18 = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val19 = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val19)
  %i.d = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %spec.store.select.i.i.i.i.i), !alias.scope !1363 ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp eq i32 %i.d, 0
  %i.g = sub i64 %.val17, %.val19
  %spec.select.i.i.i.i.i = select i1 %i.f, i64 %i.g, i64 %i.e ; 2 uses
  %i.h = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val12 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.k = getelementptr i8, ptr %0, i64 104
  %.val13 = load i64, ptr %i.k, align 8, !noundef !16 ; 2 uses
  %.val14 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %0, i64 72
  %.val15 = load i64, ptr %i.l, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val15)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i.i.i.i20), !alias.scope !1364 ; 2 uses
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
  %.val8 = load ptr, ptr %i.v, align 8, !nonnull !16, !noundef !16
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val9 = load i64, ptr %i.y, align 8, !noundef !16 ; 2 uses
  %.val10 = load ptr, ptr %i.r, align 8, !nonnull !16, !noundef !16
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %.val11 = load i64, ptr %i.z, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %.val9, i64 %.val11)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i.i.i.i22), !alias.scope !1365 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val9, %.val11
  %spec.select.i.i.i.i.i23 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i.i23, 0 ; 3 uses
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !16, !noundef !16
  %i.af = getelementptr i8, ptr %i.x, i64 8
  %.val5 = load i64, ptr %i.af, align 8, !noundef !16 ; 2 uses
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16
  %i.ag = getelementptr i8, ptr %i.t, i64 8
  %.val7 = load i64, ptr %i.ag, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val5, i64 %.val7)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i.i.i.i24), !alias.scope !1366 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val5, %.val7
  %spec.select.i.i.i.i.i25 = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i25, 0 ; 3 uses
  %i.am = select i1 %i.ae, ptr %i.v, ptr %i.r, !unpredictable !16
  %i.an = select i1 %i.al, ptr %i.t, ptr %i.x, !unpredictable !16
  %i.ao = select i1 %i.al, ptr %i.v, ptr %i.t, !unpredictable !16
  %i.ap = select i1 %i.ae, ptr %i.r, ptr %i.ao, !unpredictable !16 ; 4 uses
  %i.aq = select i1 %i.ae, ptr %i.t, ptr %i.v, !unpredictable !16
  %i.ar = select i1 %i.al, ptr %i.x, ptr %i.aq, !unpredictable !16 ; 4 uses
  %.val = load ptr, ptr %i.ar, align 8, !nonnull !16, !noundef !16
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val1 = load i64, ptr %i.as, align 8, !noundef !16 ; 2 uses
  %.val2 = load ptr, ptr %i.ap, align 8, !nonnull !16, !noundef !16
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val3 = load i64, ptr %i.at, align 8, !noundef !16 ; 2 uses
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !1367 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %.val1, %.val3
  %spec.select.i.i.i.i.i27 = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = icmp slt i64 %spec.select.i.i.i.i.i27, 0 ; 2 uses
  %i.az = select i1 %i.ay, ptr %i.ar, ptr %i.ap, !unpredictable !16
  %i.ba = select i1 %i.ay, ptr %i.ap, ptr %i.ar, !unpredictable !16
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
  %.val8.i = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.val9.i = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.e = load i32, ptr %i.d, align 8, !range !33, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.i = load i32, ptr %i.h, align 8, !range !33, !noundef !16
  %i.j = icmp eq i64 %i.g, %i.c
  %i.k = icmp samesign ult i32 %i.i, %i.e
  %i.l = icmp slt i64 %i.g, %i.c
  %i.m = select i1 %i.j, i1 %i.k, i1 %i.l         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load ptr, ptr %i.n, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.val7.i = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val6.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48
  %i.s = load i32, ptr %i.r, align 8, !range !33, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.w = load i32, ptr %i.v, align 8, !range !33, !noundef !16
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
  %.val4.i = load ptr, ptr %i.ah, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.val5.i = load ptr, ptr %i.ac, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val4.i, i64 48
  %i.an = load i32, ptr %i.am, align 8, !range !33, !noundef !16
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEE32forget_allocation_drop_remainingCsiAynQAjgDuT_10xet_client:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEECsiAynQAjgDuT_10xet_client.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEECsiAynQAjgDuT_10xet_client.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEECsiAynQAjgDuT_10xet_client.exit7.i, %bb.b
  resume { ptr, i32 } %i.q

bb.c:                                             ; preds = %.lr.ph4
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEECsiAynQAjgDuT_10xet_client.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE6resizeCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 8 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8truncateCsiAynQAjgDuT_10xet_client.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %i.f = load i64, ptr %0, align 8, !range !17, !alias.scope !1619, !noalias !1620, !noundef !16
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 40), !noalias !1620
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1621, !noalias !1620
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1621, !noalias !1620, !nonnull !16, !noundef !16
  %i.l = icmp ult i64 %i.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.i ; 3 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 2 uses
  %i.q = add i64 %1, -2
  %i.r = sub i64 %i.q, %i.b
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.p, -4
  br label %.lr.ph.i

._crit_edge.thread.i.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.a, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.thread.i.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.021.i.epil.init = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.aa, %._crit_edge.thread.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.021.i.epil = phi ptr [ %i.t, %.lr.ph.i.epil ], [ %.sroa.0.021.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.021.i.epil, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa.0.0.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.epil, i64 32
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.epil, align 8, !noalias !1620
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.epil, i64 40 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.a, label %.lr.ph.i.epil, !llvm.loop !1618

._crit_edge.thread.i.a:                           ; preds = %.lr.ph.i.epil, %._crit_edge.thread.i.unr-lcssa
  %.lcssa = phi ptr [ %i.aa, %._crit_edge.thread.i.unr-lcssa ], [ %i.t, %.lr.ph.i.epil ]
  %i.u = add i64 %i.e, -1
  %i.v = add i64 %i.u, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i, %._crit_edge.thread.i.a
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i.a ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i ] ; 2 uses
  %storemerge.lcssa27.i = phi i64 [ %i.v, %._crit_edge.thread.i.a ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsiAynQAjgDuT_10xet_client.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa28.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.5.0..sroa.0.0.lcssa28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa28.i, i64 32
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa.0.0.lcssa28.i.sroa_idx, align 8
  %i.w = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8truncateCsiAynQAjgDuT_10xet_client.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.021.i = phi ptr [ %i.m, %.lr.ph.i.preheader.new ], [ %i.aa, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.021.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 32
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !1620
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa.0.0.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 72
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.1, align 8, !noalias !1620
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa.0.0.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 112
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.2, align 8, !noalias !1620
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa.0.0.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 152
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.3, align 8, !noalias !1620
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 160 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.unr-lcssa, label %.lr.ph.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8truncateCsiAynQAjgDuT_10xet_client.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.w, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1628, !noundef !16 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !1628, !noundef !16
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i, !prof !18

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !1629, !noundef !16 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1629, !nonnull !16, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1629
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiAynQAjgDuT_10xet_client.exit

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiAynQAjgDuT_10xet_client.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1629
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE11extend_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1634, !noundef !16 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !1634, !noundef !16
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE7reserveCsiAynQAjgDuT_10xet_client.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE7reserveCsiAynQAjgDuT_10xet_client.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE7reserveCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 5 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE7reserveCsiAynQAjgDuT_10xet_client.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %i.j, i64 %4         ; 2 uses
  %6 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %3, i64 0
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> %broadcast.splatinsert31, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.m
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %next.gep33 = getelementptr i8, ptr %i.n, i64 16
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  store <8 x i16> %interleaved.vec, ptr %next.gep33, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.a, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.023.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %5, %middle.block ]
  %.sroa.03.022.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %6, %middle.block ]
  br label %.lr.ph

._crit_edge.thread.a:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %5, %middle.block ], [ %i.v, %.lr.ph ]
  %i.p = add i64 %i.f, %1
  %i.q = add i64 %i.p, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE7reserveCsiAynQAjgDuT_10xet_client.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.a, %._crit_edge
  %.sroa.0.0.lcssa30 = phi ptr [ %.lcssa, %._crit_edge.thread.a ], [ %i.j, %._crit_edge ] ; 2 uses
  %storemerge.lcssa29 = phi i64 [ %i.q, %._crit_edge.thread.a ], [ %i.f, %._crit_edge ]
  store i16 %2, ptr %.sroa.0.0.lcssa30, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30, i64 2
  store i16 %3, ptr %i.r, align 2
  %i.s = add i64 %storemerge.lcssa29, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge20 = phi i64 [ %i.s, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge20, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.sroa.0.023 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.0.023.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.sroa.03.022 = phi i64 [ %i.t, %.lr.ph ], [ %.sroa.03.022.ph, %.lr.ph.preheader36 ]
  %i.t = add nuw i64 %.sroa.03.022, 1             ; 2 uses
  store i16 %2, ptr %.sroa.0.023, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  store i16 %3, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %1
  br i1 %exitcond.not, label %._crit_edge.thread.a, label %.lr.ph, !llvm.loop !1633
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE13push_back_mutCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e
  %i.k = select i1 %.not, i64 0, i64 %i.e
  %.sroa.03.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.03.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret ptr %i.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE4growCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8
  %.pre6 = load i64, ptr %0, align 8, !range !17
  br label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !1641, !nonnull !16, !align !23, !noundef !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1641, !nonnull !16, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1641, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1641, !noundef !16
  invoke void %i.r(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit unwind label %bb.e, !inline_history !4

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE4growCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !16 ; 4 uses
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.b = load i64, ptr %0, align 8, !range !17, !alias.scope !1644, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1644, !noundef !16 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1644, !noundef !16 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE24handle_capacity_increaseCsiAynQAjgDuT_10xet_client.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1644, !nonnull !16, !noundef !16 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !1644
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !1644
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE24handle_capacity_increaseCsiAynQAjgDuT_10xet_client.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1644, !nonnull !16, !noundef !16 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !1644
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE24handle_capacity_increaseCsiAynQAjgDuT_10xet_client.exit

_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE24handle_capacity_increaseCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE4iterCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !16
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsiAynQAjgDuT_10xet_client(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !1647 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsiAynQAjgDuT_10xet_client.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsiAynQAjgDuT_10xet_client.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9pop_frontCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !16 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !17, !noundef !16 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2C_6copied6CopiedINtNtNtNtB6_11collections5btree3map4KeysBV_NtNtNtB11_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5s_12MemoryClientNtNtB5u_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EE9from_iterB5y_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !1822
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1825
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB22_14metadata_shard12file_structs11MDBFileInfoEENtNtNtB8_6traits8iterator8Iterator9size_hintCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d)
          to label %.noexc.i unwind label %bb.h, !noalias !1822

.noexc.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !19, !noalias !1825, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !1825 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1825
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.d, label %bb.f, !prof !27

bb.d:                                             ; preds = %.noexc.i
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.e, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBH_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2h_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysBH_NtNtNtBN_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB56_12MemoryClientNtNtB58_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EEB5c_.exit.i.i, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 8, i64 noundef 64)
          to label %.noexc2.i unwind label %bb.h, !noalias !1822

.noexc2.i:                                        ; preds = %bb.e
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1826, !noalias !1827
  %.pre.i = load ptr, ptr %i.t, align 8, !alias.scope !1826, !noalias !1827
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBH_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2h_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysBH_NtNtNtBN_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB56_12MemoryClientNtNtB58_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EEB5c_.exit.i.i

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #34
          to label %.noexc3.i unwind label %bb.h, !noalias !1822

.noexc3.i:                                        ; preds = %bb.f
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBH_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2h_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysBH_NtNtNtBN_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB56_12MemoryClientNtNtB58_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EEB5c_.exit.i.i: ; preds = %.noexc2.i, %bb.d
  %i.ab = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %.noexc2.i ]
  %i.ac = phi i64 [ 0, %bb.d ], [ %.pre.i.i.i, %.noexc2.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1825
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !1825
  store ptr %i.u, ptr %i.a, align 8, !noalias !1825
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !1825
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB2k_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB4r_12MemoryClientNtNtB4t_17deletion_controls25DeletionControlableClient23list_file_shard_entries00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7e_8for_each4callTB2e_B2e_ENCINvMsk_NtB1s_3vecINtB8A_3VecB8h_E14extend_trustedBN_E0E0EB4x_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashB14_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2T_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysB14_NtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5K_12MemoryClientNtNtB5M_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EE9from_iterB5Q_.exit unwind label %bb.h, !noalias !1822

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #34, !noalias !1822
  unreachable

bb.h:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBH_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2h_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysBH_NtNtNtBN_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB56_12MemoryClientNtNtB58_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EEB5c_.exit.i.i, %bb.f, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiAynQAjgDuT_10xet_client.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashB19_EEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.i, !noalias !1822

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1822
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashB19_EEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.h
  resume { ptr, i32 } %i.af

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashB14_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2T_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysB14_NtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5K_12MemoryClientNtNtB5M_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EE9from_iterB5Q_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashBH_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2h_6copied6CopiedINtNtNtNtB8_11collections5btree3map4KeysBH_NtNtNtBN_14metadata_shard12file_structs11MDBFileInfoEENCNCNvXs2_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB56_12MemoryClientNtNtB58_17deletion_controls25DeletionControlableClient23list_file_shard_entries00EEB5c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1821
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtB4_5drain5DrainhEE9from_iterCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1858
  invoke void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.q, !noalias !1859

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !19, !noalias !1858, !noundef !16
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1858, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1858
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.q, !noalias !1859

.noexc.i:                                         ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !range !19, !noalias !1858, !noundef !16
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !20, !noalias !1858, !noundef !16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %.noexc.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !1858
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #29
          to label %.noexc3.i unwind label %bb.q, !noalias !1859

.noexc3.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #29
          to label %bb.p unwind label %bb.q, !noalias !1859

bb.f:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.p, align 8, !noalias !1858, !nonnull !16, !noundef !16 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1858
  store i64 %i.o, ptr %i.f, align 8, !noalias !1858
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !noalias !1858
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8, !noalias !1858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1859
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1862
  invoke void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.l, !noalias !1863

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !19, !noalias !1862, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !1862 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1862
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i, !prof !18

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit_crit_edge.i.i.i unwind label %bb.l, !noalias !1859

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit_crit_edge.i.i.i: ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1864, !noalias !1865
  %.pre.i = load ptr, ptr %i.t, align 8, !alias.scope !1864, !noalias !1865
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29
          to label %bb.k unwind label %bb.l, !noalias !1863

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit_crit_edge.i.i.i, %bb.h
  %i.ab = phi ptr [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit_crit_edge.i.i.i ], [ %i.r, %bb.h ] ; 8 uses
  %i.ac = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit_crit_edge.i.i.i ], [ 0, %bb.h ] ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1866
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !1869, !noalias !1870, !nonnull !16, !noundef !16 ; 8 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !1869, !noalias !1870, !nonnull !16, !noundef !16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtB6_5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 3 uses
  %i.aj = sub i64 %i.ai, %i.ag                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ak = add i64 %i.ac, %i.ad
  %i.al = sub i64 %i.ag, %i.ak
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %2 = and i64 %i.aj, 24
  %n.vec = and i64 %i.aj, -32                     ; 5 uses
  %3 = add i64 %i.ac, %n.vec                      ; 2 uses
  %4 = getelementptr i8, ptr %i.af, i64 %n.vec    ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !1872
  %wide.load9 = load <16 x i8>, ptr %i.an, align 1, !noalias !1872
  %i.ao = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !noalias !1873
  store <16 x i8> %wide.load9, ptr %i.ap, align 1, !noalias !1873
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %2, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.aj, -8                    ; 4 uses
  %5 = add i64 %i.ac, %n.vec11                    ; 2 uses
  %6 = getelementptr i8, ptr %i.af, i64 %n.vec11  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %i.af, i64 %index12
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !noalias !1872
  %i.as = getelementptr i8, ptr %i.ar, i64 %index12
  store <8 x i8> %wide.load14, ptr %i.as, align 1, !noalias !1873
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1852

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.aj, %n.vec11
  br i1 %cmp.n16, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %3, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ] ; 2 uses
  %.ph19 = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ] ; 3 uses
  %.ph1922 = ptrtoaddr ptr %.ph19 to i64          ; 2 uses
  %i.au = sub i64 %i.ai, %.ph1922
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.av = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aw = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.prol ], [ %.ph19, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.aw, align 1, !noalias !1872, !noundef !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.av
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1873
  %i.ba = add i64 %i.av, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1853

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa21.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i.prol ]
  %.unr23 = phi ptr [ %.ph19, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.prol ]
  %i.bb = sub i64 %.ph1922, %i.ai
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.bd = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.be = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.unr23, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.be, align 1, !noalias !1872, !noundef !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  store i8 %i.bg, ptr %i.bh, align 1, !noalias !1873
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bj = load i8, ptr %i.bf, align 1, !noalias !1874, !noundef !16
  %i.bk = getelementptr i8, ptr %i.ab, i64 %i.bd
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 %i.bj, ptr %i.bl, align 1, !noalias !1873
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bn = load i8, ptr %i.bi, align 1, !noalias !1875, !noundef !16
  %i.bo = getelementptr i8, ptr %i.ab, i64 %i.bd
  %i.bp = getelementptr i8, ptr %i.bo, i64 2
  store i8 %i.bn, ptr %i.bp, align 1, !noalias !1873
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.br = load i8, ptr %i.bm, align 1, !noalias !1876, !noundef !16
  %i.bs = getelementptr i8, ptr %i.ab, i64 %i.bd
  %i.bt = getelementptr i8, ptr %i.bs, i64 3
  store i8 %i.br, ptr %i.bt, align 1, !noalias !1873
  %i.bu = add i64 %i.bd, 4                        ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.bq, %i.ah
  br i1 %.not.i.i.i.i.i.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1857

_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa7 = phi ptr [ %6, %vec.epilog.middle.block ], [ %4, %middle.block ], [ %.lcssa21.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  %.lcssa = phi i64 [ %5, %vec.epilog.middle.block ], [ %3, %middle.block ], [ %.lcssa20.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  store ptr %.lcssa7, ptr %i.a, align 8, !alias.scope !1877, !noalias !1870
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtB6_5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body.i unwind label %bb.m, !noalias !1859

bb.m:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1859
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtB6_5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i
  %.val7.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i ], [ %.lcssa, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callhNCINvMsk_B8_INtB8_3VechE14extend_trustedB3_E0E0ECsiAynQAjgDuT_10xet_client.exit.loopexit.i.i.i.i ]
  store i64 %.val7.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !1864, !noalias !1878
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsiAynQAjgDuT_10xet_client.exit unwind label %bb.n, !noalias !1859

bb.n:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtB6_5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %lpad.thr_comm.i.i.i, %bb.l ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.o, !noalias !1859

bb.o:                                             ; preds = %bb.q, %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1859
  unreachable

bb.p:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.q, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.by, %bb.q ]
  resume { ptr, i32 } %.pn9.i

bb.q:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.o, !noalias !1859

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtB6_5drain5DrainhEE9from_iterCsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtB6_5drain5DrainhEECsiAynQAjgDuT_10xet_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1858
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB1q_2io6cursor6CursorIBL_hEEE0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1890
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1889, !noalias !1891, !nonnull !16, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !1889, !noalias !1891, !nonnull !16, !noundef !16
  %i.e = ptrtoint ptr %.val2.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1890
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1890
  %i.i = load i64, ptr %i.b, align 8, !range !19, !noalias !1890, !noundef !16
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !20, !noalias !1890, !noundef !16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB17_2io6cursor6CursorIBx_hEEE0EEB2o_.exit.i.i, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !1890
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #29, !noalias !1890
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB17_2io6cursor6CursorIBx_hEEE0EEB2o_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !1890, !nonnull !16, !noundef !16 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1890
  store i64 %i.l, ptr %i.c, align 8, !noalias !1890
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !1890
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1892
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !1892
  store ptr %i.r, ptr %i.a, align 8, !noalias !1892
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !1892
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtBc_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callmNCINvMsk_B3b_IB39_mE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB1F_2io6cursor6CursorIBU_hEEE0EE9from_iterB2W_.exit unwind label %bb.c, !noalias !1891

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB17_2io6cursor6CursorIBx_hEEE0EEB2o_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.d, !noalias !1890

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1890
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB1F_2io6cursor6CursorIBU_hEEE0EE9from_iterB2W_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtB17_2io6cursor6CursorIBx_hEEE0EEB2o_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1890
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4ItermENCINvNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk25get_range_from_cache_fileINtNtNtNtB6_2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEE0EE9from_iterB2H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
end_hunk_3
