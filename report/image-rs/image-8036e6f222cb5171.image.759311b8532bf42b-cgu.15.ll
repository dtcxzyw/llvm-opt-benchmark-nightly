Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt3_row:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.af = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.af, label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !912
  unreachable

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  %i.ah = load <8 x i8>, ptr %.sroa.0.023, align 1, !alias.scope !910
  %i.ai = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.aj = and <16 x i8> %i.ai, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.ak = lshr <16 x i8> %i.ai, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  %i.am = mul nuw <16 x i8> %i.al, splat (i8 17)  ; 16 uses
  %i.an = extractelement <16 x i8> %i.am, i64 0
  store i8 %i.an, ptr %i.g, align 1, !alias.scope !911
  %i.ao = extractelement <16 x i8> %i.am, i64 1
  store i8 %i.ao, ptr %i.h, align 1, !alias.scope !911
  %i.ap = extractelement <16 x i8> %i.am, i64 2
  store i8 %i.ap, ptr %i.i, align 1, !alias.scope !911
  %i.aq = extractelement <16 x i8> %i.am, i64 3
  store i8 %i.aq, ptr %i.j, align 1, !alias.scope !911
  %i.ar = extractelement <16 x i8> %i.am, i64 4
  store i8 %i.ar, ptr %i.k, align 1, !alias.scope !911
  %i.as = extractelement <16 x i8> %i.am, i64 5
  store i8 %i.as, ptr %i.l, align 1, !alias.scope !911
  %i.at = extractelement <16 x i8> %i.am, i64 6
  store i8 %i.at, ptr %i.m, align 1, !alias.scope !911
  %i.au = extractelement <16 x i8> %i.am, i64 7
  store i8 %i.au, ptr %i.n, align 1, !alias.scope !911
  %i.av = extractelement <16 x i8> %i.am, i64 8
  store i8 %i.av, ptr %i.o, align 1, !alias.scope !911
  %i.aw = extractelement <16 x i8> %i.am, i64 9
  store i8 %i.aw, ptr %i.p, align 1, !alias.scope !911
  %i.ax = extractelement <16 x i8> %i.am, i64 10
  store i8 %i.ax, ptr %i.q, align 1, !alias.scope !911
  %i.ay = extractelement <16 x i8> %i.am, i64 11
  store i8 %i.ay, ptr %i.r, align 1, !alias.scope !911
  %i.az = extractelement <16 x i8> %i.am, i64 12
  store i8 %i.az, ptr %i.s, align 1, !alias.scope !911
  %i.ba = extractelement <16 x i8> %i.am, i64 13
  store i8 %i.ba, ptr %i.t, align 1, !alias.scope !911
  %i.bb = extractelement <16 x i8> %i.am, i64 14
  store i8 %i.bb, ptr %i.u, align 1, !alias.scope !911
  %i.bc = extractelement <16 x i8> %i.am, i64 15
  store i8 %i.bc, ptr %i.v, align 1, !alias.scope !911
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.a, i64 16, i1 false), !alias.scope !913
  %i.bg = add nuw nsw i64 %i.d, %.sroa.10.021
  %i.bh = shl nuw i64 %i.bg, 4                    ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 15
  %or.cond.not.1 = icmp ult i64 %i.bi, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !913
  %i.bk = add nuw nsw i64 %i.y, %.sroa.10.021
  %i.bl = shl i64 %i.bk, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.bl, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !913
  %i.bn = add nuw nsw i64 %i.aa, %.sroa.10.021
  %i.bo = shl i64 %i.bn, 4                        ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 15
  %or.cond.not.3 = icmp ult i64 %i.bp, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !913
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.ag = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.ag, label %.lr.ph.i.preheader.i, label %bb.g, !prof !25

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 7
  %.val.i.i = load i8, ptr %.ptr.i, align 1, !alias.scope !920, !noundef !5
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 6
  %.val.i.1.i = load i8, ptr %.ptr.1.i, align 1, !alias.scope !920, !noundef !5
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 5
  %.val.i.2.i = load i8, ptr %.ptr.2.i, align 1, !alias.scope !920, !noundef !5
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4
  %.val.i.3.i = load i8, ptr %.ptr.3.i, align 1, !alias.scope !920, !noundef !5
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 3
  %.val.i.4.i = load i8, ptr %.ptr.4.i, align 1, !alias.scope !920, !noundef !5
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  %.val.i.5.i = load i8, ptr %.ptr.5.i, align 1, !alias.scope !920, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !922
  %i.ah = load i16, ptr %.sroa.0.023, align 1, !alias.scope !920 ; 5 uses
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = lshr i16 %i.ah, 8                       ; 8 uses
  %i.ak = trunc nuw i16 %i.aj to i8
  %i.al = icmp ugt i8 %i.ai, %i.ak
  %i.am = shl nuw nsw i16 %i.aj, 1                ; 2 uses
  %i.an = and i16 %i.ah, 255                      ; 5 uses
  %i.ao = mul nuw nsw i16 %i.aj, 3                ; 2 uses
  br i1 %i.al, label %.preheader.i.i, label %.preheader9.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28, !noalias !922
  unreachable

.preheader9.i.i:                                  ; preds = %.lr.ph.i.preheader.i
  %i.ap = insertelement <4 x i16> poison, i16 %i.aj, i64 0
  %i.aq = insertelement <4 x i16> %i.ap, i16 %i.an, i64 1
  %i.ar = shufflevector <4 x i16> %i.aq, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.as = mul nuw nsw <4 x i16> %i.ar, <i16 4, i16 2, i16 3, i16 4>
  %i.at = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %i.au = insertelement <4 x i16> %i.at, i16 %i.ao, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.am, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.aj, i64 3
  %i.ax = add nuw nsw <4 x i16> %i.as, %i.aw
  %i.ay = udiv <4 x i16> %i.ax, splat (i16 5)
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

.preheader.i.i:                                   ; preds = %.lr.ph.i.preheader.i
  %i.az = insertelement <2 x i16> poison, i16 %i.an, i64 0
  %i.ba = insertelement <2 x i16> %i.az, i16 %i.ao, i64 1
  %i.bb = mul nuw nsw <2 x i16> %i.ba, <i16 3, i16 1>
  %i.bc = bitcast i16 %i.ah to <2 x i8>
  %i.bd = shufflevector <2 x i8> %i.bc, <2 x i8> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.be = zext <4 x i8> %i.bd to <4 x i16>
  %i.bf = mul nuw nsw <4 x i16> %i.be, <i16 4, i16 4, i16 5, i16 6>
  %i.bg = shufflevector <2 x i16> %i.bb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.am, i64 2
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.aj, i64 3
  %i.bj = add nuw nsw <4 x i16> %i.bi, %i.bf
  %i.bk = udiv <4 x i16> %i.bj, splat (i16 7)
  %i.bl = shl nuw nsw i16 %i.an, 1
  %i.bm = mul nuw nsw i16 %i.aj, 5
  %i.bn = add nuw nsw i16 %i.bm, %i.bl
  %i.bo = udiv i16 %i.bn, 7
  %i.bp = mul nuw nsw i16 %i.aj, 6
  %i.bq = add nuw nsw i16 %i.bp, %i.an
  %i.br = udiv i16 %i.bq, 7
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = shl nuw i64 %i.bs, 56
  %i.bu = zext nneg i16 %i.bo to i64
  %i.bv = shl nuw nsw i64 %i.bu, 48
  %i.bw = add nuw nsw i64 %i.bt, %i.bv
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.bw, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.bx = phi <4 x i16> [ %i.bk, %.preheader.i.i ], [ %i.ay, %.preheader9.i.i ] ; 4 uses
  %4 = zext i16 %i.ah to i64
  %i.by = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.cb = shl nuw nsw i64 %i.ca, 8
  %i.cc = or disjoint i64 %i.cb, %i.bz            ; 2 uses
  %i.cd = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %i.cg = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.cj = or disjoint i64 %i.ch, %i.cf
  %i.ck = or disjoint i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 8
  %i.cm = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = extractelement <4 x i16> %i.bx, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.co to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.cp = extractelement <4 x i16> %i.bx, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.cp to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.cq = extractelement <4 x i16> %i.bx, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.cq to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.cr = extractelement <4 x i16> %i.bx, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.cr to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i.a = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %4
  %.sroa.3.0.insert.mask.masked.masked.i.i.a = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i.a, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i.a = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i.a, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i.a, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !922
  %i.cs = and i64 %i.cm, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !922, !noundef !5
  store i8 %i.cu, ptr %i.h, align 1, !alias.scope !921
  %i.cv = lshr i64 %i.cm, 3
  %i.cw = and i64 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !922, !noundef !5
  store i8 %i.cy, ptr %i.i, align 1, !alias.scope !921
  %i.cz = lshr i64 %i.cn, 6
  %i.da = and i64 %i.cz, 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !922, !noundef !5
  store i8 %i.dc, ptr %i.j, align 1, !alias.scope !921
  %i.dd = lshr i64 %i.ci, 1
  %i.de = and i64 %i.dd, 7
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !922, !noundef !5
  store i8 %i.dg, ptr %i.k, align 1, !alias.scope !921
  %i.dh = lshr i64 %i.ci, 4
  %i.di = and i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !922, !noundef !5
  store i8 %i.dk, ptr %i.l, align 1, !alias.scope !921
  %i.dl = lshr i64 %i.ck, 7
  %i.dm = and i64 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !922, !noundef !5
  store i8 %i.do, ptr %i.m, align 1, !alias.scope !921
  %i.dp = lshr i64 %i.cg, 2
  %i.dq = and i64 %i.dp, 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !922, !noundef !5
  store i8 %i.ds, ptr %i.n, align 1, !alias.scope !921
  %i.dt = lshr i64 %i.cg, 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !922, !noundef !5
  store i8 %i.dv, ptr %i.o, align 1, !alias.scope !921
  %i.dw = and i64 %i.cd, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !922, !noundef !5
  store i8 %i.dy, ptr %i.p, align 1, !alias.scope !921
  %i.dz = lshr i64 %i.cd, 3
  %i.ea = and i64 %i.dz, 7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !922, !noundef !5
  store i8 %i.ec, ptr %i.q, align 1, !alias.scope !921
  %i.ed = lshr i64 %i.ce, 6
  %i.ee = and i64 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !922, !noundef !5
  store i8 %i.eg, ptr %i.r, align 1, !alias.scope !921
  %i.eh = lshr i64 %i.ca, 1
  %i.ei = and i64 %i.eh, 7
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !922, !noundef !5
  store i8 %i.ek, ptr %i.s, align 1, !alias.scope !921
  %i.el = lshr i64 %i.ca, 4
  %i.em = and i64 %i.el, 7
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !922, !noundef !5
  store i8 %i.eo, ptr %i.t, align 1, !alias.scope !921
  %i.ep = lshr i64 %i.cc, 15
  %i.eq = and i64 %i.ep, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noalias !922, !noundef !5
  store i8 %i.es, ptr %i.u, align 1, !alias.scope !921
  %i.et = lshr i64 %i.by, 2
  %i.eu = and i64 %i.et, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !922, !noundef !5
  store i8 %i.ew, ptr %i.v, align 1, !alias.scope !921
  %i.ex = lshr i64 %i.by, 5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !922, !noundef !5
  store i8 %i.ez, ptr %i.w, align 1, !alias.scope !921
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !922
  %i.fa = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.fa, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.fe, %bb.i ], [ %i.fi, %bb.j ], [ %i.fl, %bb.k ] ; 2 uses
  %i.fb = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.fb, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !923
  %i.fd = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.fe = shl nuw i64 %i.fd, 4                    ; 3 uses
  %i.ff = or disjoint i64 %i.fe, 15
  %or.cond.not.1 = icmp ult i64 %i.ff, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !923
  %i.fh = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.fi = shl i64 %i.fh, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.fi, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !923
  %i.fk = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.fl = shl i64 %i.fk, 4                        ; 3 uses
  %i.fm = or disjoint i64 %i.fl, 15
  %or.cond.not.3 = icmp ult i64 %i.fm, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !923
  %i.fo = icmp eq i64 %i.ae, 0
  br i1 %i.fo, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !927

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.h = lshr i64 %2, 4                           ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  %i.j = load i8, ptr %0, align 1, !noundef !5
  %i.k = load i8, ptr %i.b, align 1, !noundef !5
  %i.l = load i8, ptr %i.c, align 1, !noundef !5
  %i.m = load i8, ptr %i.d, align 1, !noundef !5
  %i.n = zext i8 %i.j to i16                      ; 2 uses
  %i.o = zext i8 %i.k to i16                      ; 2 uses
  %i.p = shl nuw i16 %i.o, 8
  %i.q = or disjoint i16 %i.p, %i.n               ; 2 uses
  %i.r = zext i8 %i.l to i16                      ; 2 uses
  %i.s = zext i8 %i.m to i16                      ; 2 uses
  %i.t = shl nuw i16 %i.s, 8
  %i.u = or disjoint i16 %i.t, %i.r               ; 2 uses
  %i.v = lshr i16 %i.o, 3
  %i.w = lshr i16 %i.q, 5
  %i.x = lshr i16 %i.s, 3
end_hunk_0
