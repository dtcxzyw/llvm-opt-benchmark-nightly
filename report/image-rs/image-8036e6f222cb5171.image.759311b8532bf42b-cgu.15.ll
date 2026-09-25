Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt3_row:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 51
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 55
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  %i.w = lshr i64 %3, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = lshr exact i64 %1, 3
  %invariant.op = add nsw i64 %3, -15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = mul nuw nsw i64 %i.d, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.023 = phi ptr [ %0, %.lr.ph ], [ %i.ac, %.loopexit ] ; 3 uses
  %.sroa.5.022 = phi i64 [ %1, %.lr.ph ], [ %i.ad, %.loopexit ] ; 3 uses
  %.sroa.10.021 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit ] ; 6 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.022, i64 16) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 %..i.i.i
  %i.ad = sub nuw nsw i64 %.sroa.5.022, %..i.i.i  ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.10.021, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.af = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.af, label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !972
  unreachable

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  %i.ah = load <8 x i8>, ptr %.sroa.0.023, align 1, !alias.scope !970, !noalias !971
  %i.ai = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.aj = and <16 x i8> %i.ai, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.ak = lshr <16 x i8> %i.ai, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  %i.am = mul nuw <16 x i8> %i.al, splat (i8 17)  ; 16 uses
  %i.an = extractelement <16 x i8> %i.am, i64 0
  store i8 %i.an, ptr %i.g, align 1, !alias.scope !971, !noalias !970
  %i.ao = extractelement <16 x i8> %i.am, i64 1
  store i8 %i.ao, ptr %i.h, align 1, !alias.scope !971, !noalias !970
  %i.ap = extractelement <16 x i8> %i.am, i64 2
  store i8 %i.ap, ptr %i.i, align 1, !alias.scope !971, !noalias !970
  %i.aq = extractelement <16 x i8> %i.am, i64 3
  store i8 %i.aq, ptr %i.j, align 1, !alias.scope !971, !noalias !970
  %i.ar = extractelement <16 x i8> %i.am, i64 4
  store i8 %i.ar, ptr %i.k, align 1, !alias.scope !971, !noalias !970
  %i.as = extractelement <16 x i8> %i.am, i64 5
  store i8 %i.as, ptr %i.l, align 1, !alias.scope !971, !noalias !970
  %i.at = extractelement <16 x i8> %i.am, i64 6
  store i8 %i.at, ptr %i.m, align 1, !alias.scope !971, !noalias !970
  %i.au = extractelement <16 x i8> %i.am, i64 7
  store i8 %i.au, ptr %i.n, align 1, !alias.scope !971, !noalias !970
  %i.av = extractelement <16 x i8> %i.am, i64 8
  store i8 %i.av, ptr %i.o, align 1, !alias.scope !971, !noalias !970
  %i.aw = extractelement <16 x i8> %i.am, i64 9
  store i8 %i.aw, ptr %i.p, align 1, !alias.scope !971, !noalias !970
  %i.ax = extractelement <16 x i8> %i.am, i64 10
  store i8 %i.ax, ptr %i.q, align 1, !alias.scope !971, !noalias !970
  %i.ay = extractelement <16 x i8> %i.am, i64 11
  store i8 %i.ay, ptr %i.r, align 1, !alias.scope !971, !noalias !970
  %i.az = extractelement <16 x i8> %i.am, i64 12
  store i8 %i.az, ptr %i.s, align 1, !alias.scope !971, !noalias !970
  %i.ba = extractelement <16 x i8> %i.am, i64 13
  store i8 %i.ba, ptr %i.t, align 1, !alias.scope !971, !noalias !970
  %i.bb = extractelement <16 x i8> %i.am, i64 14
  store i8 %i.bb, ptr %i.u, align 1, !alias.scope !971, !noalias !970
  %i.bc = extractelement <16 x i8> %i.am, i64 15
  store i8 %i.bc, ptr %i.v, align 1, !alias.scope !971, !noalias !970
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, ptr noalias nofree noundef nonnull %i.a, i64 noundef 64, i1 noundef zeroext false)
  %i.bd = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.w
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit
  %.lcssa = phi i64 [ %i.bd, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit ], [ %i.bh, %bb.i ], [ %i.bl, %bb.j ], [ %i.bo, %bb.k ] ; 2 uses
  %i.be = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.be, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.a, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bg = add nuw nsw i64 %i.d, %.sroa.10.021
  %i.bh = shl nuw i64 %i.bg, 4                    ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 15
  %or.cond.not.1 = icmp ult i64 %i.bi, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bk = add nuw nsw i64 %i.y, %.sroa.10.021
  %i.bl = shl i64 %i.bk, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.bl, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.bn = add nuw nsw i64 %i.aa, %.sroa.10.021
  %i.bo = shl i64 %i.bn, 4                        ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 15
  %or.cond.not.3 = icmp ult i64 %i.bp, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !973, !noalias !974
  %i.br = icmp eq i64 %i.ad, 0
  br i1 %i.br, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt5_row(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 19 uses
  %i.b = alloca [64 x i8], align 1                ; 24 uses
  %i.c = and i64 %1, 15
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %1, 4                     ; 2 uses
  %i.f = shl i64 %1, 2
  %.not = icmp ult i64 %3, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 63, i1 false)
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 39
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 43
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 55
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  %i.x = lshr i64 %3, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = lshr exact i64 %1, 3
  %invariant.op = add nsw i64 %3, -15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = mul nuw nsw i64 %i.e, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.023 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %.loopexit ] ; 9 uses
  %.sroa.5.022 = phi i64 [ %1, %.lr.ph ], [ %i.ae, %.loopexit ] ; 3 uses
  %.sroa.10.021 = phi i64 [ 0, %.lr.ph ], [ %i.af, %.loopexit ] ; 6 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.022, i64 16) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 %..i.i.i
  %i.ae = sub nuw nsw i64 %.sroa.5.022, %..i.i.i  ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.10.021, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ag = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.ag, label %.lr.ph.i.preheader.i, label %bb.g, !prof !25

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 7
  %.val.i.i = load i8, ptr %.ptr.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 6
  %.val.i.1.i = load i8, ptr %.ptr.1.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 5
  %.val.i.2.i = load i8, ptr %.ptr.2.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4
  %.val.i.3.i = load i8, ptr %.ptr.3.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 3
  %.val.i.4.i = load i8, ptr %.ptr.4.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  %.val.i.5.i = load i8, ptr %.ptr.5.i, align 1, !alias.scope !982, !noalias !983, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !984
  %i.ah = load i16, ptr %.sroa.0.023, align 1, !alias.scope !982, !noalias !983 ; 4 uses
  %i.ai = zext i16 %i.ah to i64
  %i.aj = trunc i16 %i.ah to i8
  %i.ak = lshr i16 %i.ah, 8                       ; 8 uses
  %i.al = trunc nuw i16 %i.ak to i8
  %i.am = icmp ugt i8 %i.aj, %i.al
  %i.an = shl nuw nsw i16 %i.ak, 1                ; 2 uses
  %i.ao = and i16 %i.ah, 255                      ; 5 uses
  %i.ap = mul nuw nsw i16 %i.ak, 3                ; 2 uses
  br i1 %i.am, label %.preheader.i.i, label %.preheader9.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28, !noalias !984
  unreachable

.preheader9.i.i:                                  ; preds = %.lr.ph.i.preheader.i
  %i.aq = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.ao, i64 1 ; 2 uses
  %i.as = shufflevector <4 x i16> %i.ar, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.at = mul nuw nsw <4 x i16> %i.as, <i16 4, i16 2, i16 3, i16 4>
  %4 = shufflevector <4 x i16> %i.ar, <4 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.au = insertelement <4 x i16> %4, i16 %i.ap, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.an, i64 2
  %i.aw = add nuw nsw <4 x i16> %i.at, %i.av
  %i.ax = udiv <4 x i16> %i.aw, splat (i16 5)
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

.preheader.i.i:                                   ; preds = %.lr.ph.i.preheader.i
  %i.ay = insertelement <2 x i16> poison, i16 %i.ao, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ap, i64 1
  %i.ba = mul nuw nsw <2 x i16> %i.az, <i16 3, i16 1>
  %5 = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %6 = insertelement <4 x i16> %5, i16 %i.ao, i64 1
  %7 = shufflevector <4 x i16> %6, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bb = mul nuw nsw <4 x i16> %7, <i16 4, i16 4, i16 5, i16 6>
  %i.bc = shufflevector <2 x i16> %i.ba, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = insertelement <4 x i16> %i.bc, i16 %i.an, i64 2
  %i.be = insertelement <4 x i16> %i.bd, i16 %i.ak, i64 3
  %i.bf = add nuw nsw <4 x i16> %i.be, %i.bb
  %i.bg = udiv <4 x i16> %i.bf, splat (i16 7)
  %i.bh = shl nuw nsw i16 %i.ao, 1
  %i.bi = mul nuw nsw i16 %i.ak, 5
  %i.bj = add nuw nsw i16 %i.bi, %i.bh
  %i.bk = udiv i16 %i.bj, 7
  %i.bl = mul nuw nsw i16 %i.ak, 6
  %i.bm = add nuw nsw i16 %i.bl, %i.ao
  %i.bn = udiv i16 %i.bm, 7
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 56
  %i.bq = zext nneg i16 %i.bk to i64
  %i.br = shl nuw nsw i64 %i.bq, 48
  %i.bs = add nuw nsw i64 %i.bp, %i.br
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.bs, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.bt = phi <4 x i16> [ %i.bg, %.preheader.i.i ], [ %i.ax, %.preheader9.i.i ] ; 4 uses
  %i.bu = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bv = shl nuw nsw i64 %i.bu, 16
  %i.bw = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.bx = shl nuw nsw i64 %i.bw, 8
  %i.by = or disjoint i64 %i.bx, %i.bv            ; 2 uses
  %i.bz = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.ca = or disjoint i64 %i.by, %i.bz            ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 16
  %i.cc = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.cd = shl nuw nsw i64 %i.cc, 8
  %i.ce = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.cf = or disjoint i64 %i.cd, %i.cb
  %i.cg = or disjoint i64 %i.cf, %i.ce            ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.cj = or disjoint i64 %i.ch, %i.ci
  %i.ck = extractelement <4 x i16> %i.bt, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.ck to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.cl = extractelement <4 x i16> %i.bt, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.cl to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.cm = extractelement <4 x i16> %i.bt, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.cm to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.cn = extractelement <4 x i16> %i.bt, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.cn to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %i.ai
  %.sroa.3.0.insert.mask.masked.masked.i.i = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !984
  %i.co = and i64 %i.ci, 7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !984, !noundef !5
  store i8 %i.cq, ptr %i.h, align 1, !alias.scope !983, !noalias !982
  %i.cr = lshr i64 %i.ci, 3
  %i.cs = and i64 %i.cr, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !984, !noundef !5
  store i8 %i.cu, ptr %i.i, align 1, !alias.scope !983, !noalias !982
  %i.cv = lshr i64 %i.cj, 6
  %i.cw = and i64 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !984, !noundef !5
  store i8 %i.cy, ptr %i.j, align 1, !alias.scope !983, !noalias !982
  %i.cz = lshr i64 %i.ce, 1
  %i.da = and i64 %i.cz, 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !984, !noundef !5
  store i8 %i.dc, ptr %i.k, align 1, !alias.scope !983, !noalias !982
  %i.dd = lshr i64 %i.ce, 4
  %i.de = and i64 %i.dd, 7
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !984, !noundef !5
  store i8 %i.dg, ptr %i.l, align 1, !alias.scope !983, !noalias !982
  %i.dh = lshr i64 %i.cg, 7
  %i.di = and i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !984, !noundef !5
  store i8 %i.dk, ptr %i.m, align 1, !alias.scope !983, !noalias !982
  %i.dl = lshr i64 %i.cc, 2
  %i.dm = and i64 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !984, !noundef !5
  store i8 %i.do, ptr %i.n, align 1, !alias.scope !983, !noalias !982
  %i.dp = lshr i64 %i.cc, 5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !984, !noundef !5
  store i8 %i.dr, ptr %i.o, align 1, !alias.scope !983, !noalias !982
  %i.ds = and i64 %i.bz, 7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noalias !984, !noundef !5
  store i8 %i.du, ptr %i.p, align 1, !alias.scope !983, !noalias !982
  %i.dv = lshr i64 %i.bz, 3
  %i.dw = and i64 %i.dv, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !984, !noundef !5
  store i8 %i.dy, ptr %i.q, align 1, !alias.scope !983, !noalias !982
  %i.dz = lshr i64 %i.ca, 6
  %i.ea = and i64 %i.dz, 7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !984, !noundef !5
  store i8 %i.ec, ptr %i.r, align 1, !alias.scope !983, !noalias !982
  %i.ed = lshr i64 %i.bw, 1
  %i.ee = and i64 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !984, !noundef !5
  store i8 %i.eg, ptr %i.s, align 1, !alias.scope !983, !noalias !982
  %i.eh = lshr i64 %i.bw, 4
  %i.ei = and i64 %i.eh, 7
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !984, !noundef !5
  store i8 %i.ek, ptr %i.t, align 1, !alias.scope !983, !noalias !982
  %i.el = lshr i64 %i.by, 15
  %i.em = and i64 %i.el, 7
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !984, !noundef !5
  store i8 %i.eo, ptr %i.u, align 1, !alias.scope !983, !noalias !982
  %i.ep = lshr i64 %i.bu, 2
  %i.eq = and i64 %i.ep, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noalias !984, !noundef !5
  store i8 %i.es, ptr %i.v, align 1, !alias.scope !983, !noalias !982
  %i.et = lshr i64 %i.bu, 5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !noalias !984, !noundef !5
  store i8 %i.ev, ptr %i.w, align 1, !alias.scope !983, !noalias !982
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !984
  %i.ew = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.ew, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.fa, %bb.i ], [ %i.fe, %bb.j ], [ %i.fh, %bb.k ] ; 2 uses
  %i.ex = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.ex, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ey, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.ez = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.fa = shl nuw i64 %i.ez, 4                    ; 3 uses
  %i.fb = or disjoint i64 %i.fa, 15
  %or.cond.not.1 = icmp ult i64 %i.fb, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fd = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.fe = shl i64 %i.fd, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.fe, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ff, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fg = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.fh = shl i64 %i.fg, 4                        ; 3 uses
  %i.fi = or disjoint i64 %i.fh, 15
  %or.cond.not.3 = icmp ult i64 %i.fi, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fk = icmp eq i64 %i.ae, 0
  br i1 %i.fk, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !991

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderINtB5_10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_:bb.a

.lr.ph147.preheader.i.i:                          ; preds = %bb.cm, %.thread.i.i
  %i.mi = phi i64 [ %i.mf, %.thread.i.i ], [ %i.mg, %bb.cm ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ky
  %i.mk = sub nuw i64 %i.dc, %.sroa.0.0148.i.i
  br label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i, %.lr.ph147.preheader.i.i
  %.sroa.092.0146.i.i = phi ptr [ %i.mo, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ %i.d, %.lr.ph147.preheader.i.i ] ; 2 uses
  %.sroa.7.0145.i.i = phi i64 [ %i.mn, %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i ], [ 0, %.lr.ph147.preheader.i.i ] ; 3 uses
  %i.ml = add nuw nsw i64 %.sroa.7.0145.i.i, %.sroa.0.0148.i.i ; 2 uses
  %exitcond164.not.i.i = icmp eq i64 %.sroa.7.0145.i.i, %i.mk
  br i1 %exitcond164.not.i.i, label %.invoke.i, label %_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i

_RNCINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Ba_.exit90.i.i: ; preds = %.lr.ph147.i.i
  %i.mm = load i8, ptr %.sroa.092.0146.i.i, align 1, !noalias !1666, !noundef !5
  %i.mn = add nuw nsw i64 %.sroa.7.0145.i.i, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.092.0146.i.i, i64 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ml
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  store i8 %i.mm, ptr %i.mq, align 1, !alias.scope !1665, !noalias !1679
  %i.mr = icmp eq ptr %i.mo, %i.mj
  br i1 %i.mr, label %.loopexit.i.i, label %.lr.ph147.i.i

.noexc57.thread.i:                                ; preds = %bb.cl, %bb.ch, %bb.cc
  store i64 %.val1.i.i.i.i, ptr %i.bu, align 8, !alias.scope !1669, !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1666
  br label %.loopexit160.i

.noexc57.i:                                       ; preds = %.noexc76.i, %.noexc74.i, %.noexc73.i
  %.pr.i = load i8, ptr %i.u, align 8, !noalias !1575 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1666
  %.not21.i.i = icmp eq i8 %.pr.i, -1
  br i1 %.not21.i.i, label %bb.cn, label %.loopexit160.loopexit.i

.loopexit160.loopexit.i:                          ; preds = %.noexc57.i
  %.sroa.1289.0..sroa_idx98.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.1289.0.copyload99.pre.i = load ptr, ptr %.sroa.1289.0..sroa_idx98.phi.trans.insert.i, align 8, !noalias !1602
  br label %.loopexit160.i

.loopexit160.i:                                   ; preds = %.loopexit160.loopexit.i, %.noexc57.thread.i
  %.sroa.1289.0.copyload99.i = phi ptr [ @18, %.noexc57.thread.i ], [ %.sroa.1289.0.copyload99.pre.i, %.loopexit160.loopexit.i ]
  %i.ms = phi i8 [ 9, %.noexc57.thread.i ], [ %.pr.i, %.loopexit160.loopexit.i ]
  %.sroa.12.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx88.i, i64 7, i1 false), !noalias !1558
  %.sroa.13.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx104.i, i64 48, i1 false), !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i

bb.cn:                                            ; preds = %.noexc57.i, %.noexc57.thread139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i

bb.co:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i
  %.sroa.1289.0.copyload91.i = phi ptr [ %.sroa.1289.0.copyload91.pre.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i ], [ @18, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i ]
  %.sroa.078.0.copyload79.i = phi i8 [ %.pr87.i.i, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i._crit_edge.i ], [ 9, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread89.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx84.i, i64 7, i1 false), !noalias !1558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx100.i, i64 48, i1 false), !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1575
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1558
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i unwind label %bb.cp, !noalias !1556

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.cx unwind label %bb.cq, !noalias !1556

bb.cq:                                            ; preds = %bb.cp
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1556
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit39.i, %bb.k
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.cw unwind label %bb.cv

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i: ; preds = %bb.co, %.loopexit160.i, %bb.ca, %bb.bn, %bb.ba, %bb.ab
  %.sroa.078.0150.i = phi i8 [ 9, %bb.ab ], [ %i.ms, %.loopexit160.i ], [ %.sroa.078.0.copyload81.i, %bb.bn ], [ %.sroa.078.0.copyload79.i, %bb.co ], [ %.sroa.078.0.copyload80.i, %bb.ba ], [ %.sroa.078.0.copyload82.i, %bb.ca ]
  %.sroa.1289.0149.i = phi ptr [ @18, %bb.ab ], [ %.sroa.1289.0.copyload99.i, %.loopexit160.i ], [ %.sroa.1289.0.copyload95.i, %bb.bn ], [ %.sroa.1289.0.copyload91.i, %bb.co ], [ %.sroa.1289.0.copyload93.i, %bb.ba ], [ %.sroa.1289.0.copyload97.i, %bb.ca ]
  store i8 %.sroa.078.0150.i, ptr %0, align 8, !alias.scope !1556, !noalias !1562
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4131.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, i64 7, i1 false), !noalias !1562
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1289.0149.i, ptr %.sroa.5132.0..sroa_idx.i, align 8, !alias.scope !1556, !noalias !1562
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6133.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i, i64 48, i1 false), !noalias !1562
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cs unwind label %bb.cr, !noalias !1561

bb.cr:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body29.i unwind label %bb.ct, !noalias !1561

bb.cs:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread145.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit65.i unwind label %bb.d, !noalias !1561

bb.ct:                                            ; preds = %bb.cr
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1561
  unreachable

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder14decode_old_rleINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i.i, %bb.cn
  %i.mx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.44.0253.i, i64 %i.ai
  %i.my = load ptr, ptr %i.br, align 8, !noalias !1558, !nonnull !5, !noundef !5 ; 2 uses
  %i.mz = load i64, ptr %i.bs, align 8, !noalias !1558, !noundef !5
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mz
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhjc_EINtBZ_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEINtB5_7ZipImplBW_B1v_E3newB1O_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noundef nonnull %.sroa.44.0253.i, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.my, ptr noundef nonnull %i.na)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i unwind label %.loopexit.i, !noalias !1561

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i: ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder13read_scanlineINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEB8_.exit.thread.i
  %.sroa.0108.0.copyload.i = load ptr, ptr %i.aa, align 8, !noalias !1558 ; 5 uses
  %.sroa.4110.0.copyload.i = load ptr, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !1558 ; 5 uses
  %.sroa.5112.0.copyload.i = load i64, ptr %.sroa.5112.0..sroa_idx.i, align 8, !noalias !1558 ; 8 uses
  %.sroa.7113.0.copyload.i = load i64, ptr %.sroa.7113.0..sroa_idx.i, align 8, !noalias !1558 ; 5 uses
  %i.nb = icmp ult i64 %.sroa.5112.0.copyload.i, %.sroa.7113.0.copyload.i
  br i1 %i.nb, label %.lr.ph.i, label %.thread151.loopexit.i

.lr.ph.i:                                         ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutAhjc_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IterNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1U_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0108.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4110.0.copyload.i) ]
  %i.nc = sub nuw i64 %.sroa.7113.0.copyload.i, %.sroa.5112.0.copyload.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.nc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.nd = mul i64 %.sroa.5112.0.copyload.i, 12
  %scevgep = getelementptr i8, ptr %.sroa.0108.0.copyload.i, i64 %i.nd
  %i.ne = mul i64 %.sroa.7113.0.copyload.i, 12
  %scevgep388 = getelementptr i8, ptr %.sroa.0108.0.copyload.i, i64 %i.ne
  %i.nf = shl i64 %.sroa.5112.0.copyload.i, 2
  %scevgep389 = getelementptr i8, ptr %.sroa.4110.0.copyload.i, i64 %i.nf
  %i.ng = shl i64 %.sroa.7113.0.copyload.i, 2
  %scevgep390 = getelementptr i8, ptr %.sroa.4110.0.copyload.i, i64 %i.ng
  %bound0 = icmp ult ptr %scevgep, %scevgep390
  %bound1 = icmp ult ptr %scevgep389, %scevgep388
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nc, -4                      ; 3 uses
  %i.nh = add i64 %.sroa.5112.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ni = add nuw i64 %.sroa.5112.0.copyload.i, %index ; 2 uses
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0108.0.copyload.i, i64 %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4110.0.copyload.i, i64 %i.ni
  %wide.load = load <4 x i32>, ptr %i.nk, align 1, !alias.scope !1690, !noalias !1561 ; 5 uses
  %i.nl = lshr <4 x i32> %wide.load, splat (i32 24) ; 2 uses
  %i.nm = icmp ugt <4 x i32> %wide.load, splat (i32 33554431)
  %i.nn = shl nuw nsw <4 x i32> %i.nl, splat (i32 23)
  %i.no = add nuw <4 x i32> %i.nn, splat (i32 2139095040)
  %i.np = and <4 x i32> %i.no, splat (i32 2139095040)
  %i.nq = shl nuw nsw <4 x i32> %i.nl, splat (i32 22)
  %i.nr = select <4 x i1> %i.nm, <4 x i32> %i.np, <4 x i32> %i.nq
  %i.ns = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.nt = trunc <4 x i32> %i.ns to <4 x i8>
  %i.nu = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.nv = bitcast <4 x i32> %i.nr to <4 x float>
  %i.nw = fmul <4 x float> %i.nv, splat (float 3.906250e-03) ; 2 uses
  %i.nx = uitofp <4 x i8> %i.nt to <4 x float>
  %i.ny = fmul <4 x float> %i.nw, %i.nx
  %i.nz = shufflevector <4 x float> %i.nw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oa = shufflevector <4 x i32> %wide.load, <4 x i32> %i.nu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ob = trunc <8 x i32> %i.oa to <8 x i8>
  %i.oc = uitofp <8 x i8> %i.ob to <8 x float>
  %i.od = fmul <8 x float> %i.nz, %i.oc
  %i.oe = shufflevector <4 x float> %i.ny, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.od, <8 x float> %i.oe, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.nj, align 1, !alias.scope !1691, !noalias !1692
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.of = icmp eq i64 %index.next, %n.vec
  br i1 %i.of, label %middle.block, label %vector.body, !llvm.loop !1554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nc, %n.vec
  br i1 %cmp.n, label %.thread151.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.5112.0249.i.ph = phi i64 [ %.sroa.5112.0.copyload.i, %vector.memcheck ], [ %.sroa.5112.0.copyload.i, %.lr.ph.i ], [ %i.nh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.5112.0249.i = phi i64 [ %i.oi, %scalar.ph ], [ %.sroa.5112.0249.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0108.0.copyload.i, i64 %.sroa.5112.0249.i ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4110.0.copyload.i, i64 %.sroa.5112.0249.i
  %i.oi = add nuw i64 %.sroa.5112.0249.i, 1       ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %i.oh, align 1, !noalias !1561 ; 5 uses
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 24 ; 2 uses
  %i.oj = icmp ugt i32 %.sroa.011.0.copyload.i, 33554431
  %i.ok = shl nuw nsw i32 %.sroa.6.0.extract.shift.i.i, 23
  %i.ol = add nuw i32 %i.ok, 2139095040
  %i.om = and i32 %i.ol, 2139095040
  %i.on = shl nuw nsw i32 %.sroa.6.0.extract.shift.i.i, 22
  %.sroa.03.0.i.i = select i1 %i.oj, i32 %i.om, i32 %i.on
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.42.0.extract.shift.i.i = lshr i32 %.sroa.011.0.copyload.i, 8
  %4 = bitcast i32 %.sroa.03.0.i.i to float
  %5 = fmul float %4, 3.906250e-03                ; 2 uses
  %6 = uitofp i8 %.sroa.5.0.extract.trunc.i.i to float
  %i.oo = fmul float %5, %6
  %7 = trunc i32 %.sroa.011.0.copyload.i to i8
  %8 = insertelement <2 x i8> poison, i8 %7, i64 0
  %9 = trunc i32 %.sroa.42.0.extract.shift.i.i to i8
  %10 = insertelement <2 x i8> %8, i8 %9, i64 1
  %11 = uitofp <2 x i8> %10 to <2 x float>
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %13, %11
  store <2 x float> %14, ptr %i.og, align 1, !alias.scope !1691, !noalias !1692
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store float %i.oo, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !1691, !noalias !1692
  %exitcond.not.i = icmp eq i64 %i.oi, %.sroa.7113.0.copyload.i
  br i1 %exitcond.not.i, label %.thread151.loopexit.i, label %scalar.ph, !llvm.loop !1555

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10Rgbe8PixelEEB1g_.exit65.i: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1558
  br label %bb.k

bb.cu:                                            ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.cu, %bb.s, %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1556
  unreachable

bb.cv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder10HdrDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 96, i64 noundef 8) #30
  ret void

bb.cx:                                            ; preds = %bb.cv, %bb.cp, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.oq, %bb.cv ], [ %i.mt, %bb.cp ], [ %i.ax, %bb.l ], [ %.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder11HdrMetadataEBJ_.exit.i.i ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 96, i64 noundef 8) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1v_6cursor6CursorRShEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1702, !noalias !1703, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1702, !noalias !1703, !noundef !5
  %.not.i.not.i = icmp eq i64 %i.d, %i.b
  br i1 %.not.i.not.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.b

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  tail call void @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1G_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) #33
  br label %_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1702, !noalias !1703, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %.val2.i.i = load i8, ptr %i.f, align 1, !noalias !1704, !noundef !5
  %i.g = add i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1702, !noalias !1703
  store i8 0, ptr %0, align 8, !alias.scope !1699, !noalias !1700
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val2.i.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !1699, !noalias !1700
  br label %_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1c_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1U_6cursor6CursorRShEEENtNtB9_4util12SpecReadByte14spec_read_byte0ECsa5QsYiPB8Gl_5image.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesQDNtNtB7_4read4ReadEL_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1716
  store i8 0, ptr %i.b, align 1, !noalias !1716
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !noalias !1717, !nonnull !5 ; 2 uses
  %i.f = call { i64, ptr } %i.e(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1) #34, !noalias !1716, !inline_history !1711 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i, %.lr.ph.i.i
  %i.k = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i ] ; 8 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split2.i.i
    i64 0, label %.split3.i.i
    i64 1, label %.split.i.i
  ], !prof !16

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.f, !noalias !1716

.noexc.i.i:                                       ; preds = %bb.c
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1716, !nonnull !5, !noundef !5
  %i.s = invoke noundef zeroext i1 %i.r(i32 noundef %i.p)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i unwind label %bb.f, !noalias !1716, !inline_history !0

.split2.i.i:                                      ; preds = %bb.b
  %i.t = lshr i64 %i.l, 32
  %i.u = icmp ult ptr %i.k, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.t to i8
  %spec.select.i.i.i.i.i = select i1 %i.u, i8 %switch.idx.cast.i.i.i.i.i, i8 -1 ; 2 uses
  %i.v = icmp ne i8 %spec.select.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i8 %spec.select.i.i.i.i.i, 35
  br i1 %i.w, label %bb.h, label %bb.g

.split3.i.i:                                      ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !23, !noalias !1716, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %.thread.i.i, label %bb.g

.split.i.i:                                       ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.k, i64 31
  %i.ab = load i8, ptr %i.aa, align 8, !range !23, !noalias !1716, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  %.lcssa.i.i = phi ptr [ %i.h, %bb.a ], [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i ]
  %i.ad = icmp eq ptr %.lcssa.i.i, null
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  store i8 2, ptr %0, align 8, !alias.scope !1716
  br label %_RNvXs6_NtNtCs4wP2HXfJTCR_5alloc2io4utilQDNtNtB7_4read4ReadEL_NtB5_12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.b, align 1, !noalias !1716, !noundef !5
  store i8 0, ptr %0, align 8, !alias.scope !1716
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ae, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1716
  br label %_RNvXs6_NtNtCs4wP2HXfJTCR_5alloc2io4utilQDNtNtB7_4read4ReadEL_NtB5_12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %.noexc.i.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 1, ptr nonnull %i.k) #31
          to label %bb.k unwind label %bb.j, !noalias !1716

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %.noexc.i.i
  br i1 %i.s, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.split.i.i, %.split3.i.i, %.split2.i.i
  store i8 1, ptr %0, align 8, !alias.scope !1716
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !1716
  br label %_RNvXs6_NtNtCs4wP2HXfJTCR_5alloc2io4utilQDNtNtB7_4read4ReadEL_NtB5_12SpecReadByte14spec_read_byteCsa5QsYiPB8Gl_5image.exit

.thread.i.i:                                      ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.split3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1716
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i

bb.h:                                             ; preds = %.split2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1716
  %i.ag = and i64 %i.l, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.u)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.ai = getelementptr i8, ptr %i.k, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1716
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.j, align 8, !alias.scope !1718, !noalias !1716
  store i8 3, ptr %i.a, align 8, !alias.scope !1718, !noalias !1716
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !1716
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.i, %bb.h, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1716
  %i.aj = call { i64, ptr } %i.e(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1) #34, !noalias !1716, !inline_history !1711 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 2 uses
  %i.am = trunc nuw i64 %i.ak to i1
  br i1 %i.am, label %bb.b, label %._crit_edge.i.i

end_hunk_1
