inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.af = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.af, label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit, label %bb.g, !prof !410

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !952
  unreachable

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt3_block.exit: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  %i.ah = load <8 x i8>, ptr %.sroa.0.023, align 1, !alias.scope !947, !noalias !950
  %i.ai = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.aj = and <16 x i8> %i.ai, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.ak = lshr <16 x i8> %i.ai, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  %i.am = mul nuw <16 x i8> %i.al, splat (i8 17)  ; 16 uses
  %i.an = extractelement <16 x i8> %i.am, i64 0
  store i8 %i.an, ptr %i.g, align 1, !alias.scope !950, !noalias !947
  %i.ao = extractelement <16 x i8> %i.am, i64 1
  store i8 %i.ao, ptr %i.h, align 1, !alias.scope !950, !noalias !947
  %i.ap = extractelement <16 x i8> %i.am, i64 2
  store i8 %i.ap, ptr %i.i, align 1, !alias.scope !950, !noalias !947
  %i.aq = extractelement <16 x i8> %i.am, i64 3
  store i8 %i.aq, ptr %i.j, align 1, !alias.scope !950, !noalias !947
  %i.ar = extractelement <16 x i8> %i.am, i64 4
  store i8 %i.ar, ptr %i.k, align 1, !alias.scope !950, !noalias !947
  %i.as = extractelement <16 x i8> %i.am, i64 5
  store i8 %i.as, ptr %i.l, align 1, !alias.scope !950, !noalias !947
  %i.at = extractelement <16 x i8> %i.am, i64 6
  store i8 %i.at, ptr %i.m, align 1, !alias.scope !950, !noalias !947
  %i.au = extractelement <16 x i8> %i.am, i64 7
  store i8 %i.au, ptr %i.n, align 1, !alias.scope !950, !noalias !947
  %i.av = extractelement <16 x i8> %i.am, i64 8
  store i8 %i.av, ptr %i.o, align 1, !alias.scope !950, !noalias !947
  %i.aw = extractelement <16 x i8> %i.am, i64 9
  store i8 %i.aw, ptr %i.p, align 1, !alias.scope !950, !noalias !947
  %i.ax = extractelement <16 x i8> %i.am, i64 10
  store i8 %i.ax, ptr %i.q, align 1, !alias.scope !950, !noalias !947
  %i.ay = extractelement <16 x i8> %i.am, i64 11
  store i8 %i.ay, ptr %i.r, align 1, !alias.scope !950, !noalias !947
  %i.az = extractelement <16 x i8> %i.am, i64 12
  store i8 %i.az, ptr %i.s, align 1, !alias.scope !950, !noalias !947
  %i.ba = extractelement <16 x i8> %i.am, i64 13
  store i8 %i.ba, ptr %i.t, align 1, !alias.scope !950, !noalias !947
  %i.bb = extractelement <16 x i8> %i.am, i64 14
  store i8 %i.bb, ptr %i.u, align 1, !alias.scope !950, !noalias !947
  %i.bc = extractelement <16 x i8> %i.am, i64 15
  store i8 %i.bc, ptr %i.v, align 1, !alias.scope !950, !noalias !947
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, ptr noalias nofree noundef nonnull %i.a, i64 noundef 64, i1 noundef zeroext false)
  %i.bd = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.w
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !921

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.a, i64 16, i1 false), !alias.scope !953, !noalias !957
  %i.bg = add nuw nsw i64 %i.d, %.sroa.10.021
  %i.bh = shl nuw i64 %i.bg, 4                    ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 15
  %or.cond.not.1 = icmp ult i64 %i.bi, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !410

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !953, !noalias !957
  %i.bk = add nuw nsw i64 %i.y, %.sroa.10.021
  %i.bl = shl i64 %i.bk, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.bl, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !410

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !953, !noalias !957
  %i.bn = add nuw nsw i64 %i.aa, %.sroa.10.021
  %i.bo = shl i64 %i.bn, 4                        ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 15
  %or.cond.not.3 = icmp ult i64 %i.bp, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !410

.loopexit:                                        ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !953, !noalias !957
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
  br i1 %i.d, label %bb.c, label %bb.b, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %1, 4                     ; 2 uses
  %i.f = shl i64 %1, 2
  %.not = icmp ult i64 %3, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !177

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.ag = icmp ugt i64 %.sroa.5.022, 15
  br i1 %i.ag, label %.lr.ph.i.preheader.i, label %bb.g, !prof !410

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 7
  %.val.i.i = load i8, ptr %.ptr.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 6
  %.val.i.1.i = load i8, ptr %.ptr.1.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 5
  %.val.i.2.i = load i8, ptr %.ptr.2.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4
  %.val.i.3.i = load i8, ptr %.ptr.3.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 3
  %.val.i.4.i = load i8, ptr %.ptr.4.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  %.val.i.5.i = load i8, ptr %.ptr.5.i, align 1, !alias.scope !959, !noalias !962, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !964
  %4 = load i16, ptr %.sroa.0.023, align 1, !alias.scope !959, !noalias !962 ; 4 uses
  %5 = zext i16 %4 to i64
  %6 = trunc i16 %4 to i8
  %7 = lshr i16 %4, 8                             ; 8 uses
  %8 = trunc nuw i16 %7 to i8
  %9 = icmp ugt i8 %6, %8
  %10 = shl nuw nsw i16 %7, 1                     ; 2 uses
  %11 = and i16 %4, 255                           ; 5 uses
  %12 = mul nuw nsw i16 %7, 3                     ; 2 uses
  br i1 %9, label %.preheader.i.i, label %.preheader9.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28, !noalias !964
  unreachable

.preheader9.i.i:                                  ; preds = %.lr.ph.i.preheader.i
  %i.ah = insertelement <4 x i16> poison, i16 %7, i64 0
  %13 = insertelement <4 x i16> %i.ah, i16 %11, i64 1 ; 2 uses
  %14 = shufflevector <4 x i16> %13, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %15 = mul nuw nsw <4 x i16> %14, <i16 4, i16 2, i16 3, i16 4>
  %16 = shufflevector <4 x i16> %13, <4 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.ai = insertelement <4 x i16> %16, i16 %12, i64 1
  %i.aj = insertelement <4 x i16> %i.ai, i16 %10, i64 2
  %i.ak = add nuw nsw <4 x i16> %15, %i.aj
  %i.al = udiv <4 x i16> %i.ak, splat (i16 5)
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

.preheader.i.i:                                   ; preds = %.lr.ph.i.preheader.i
  %17 = insertelement <2 x i16> poison, i16 %11, i64 0
  %18 = insertelement <2 x i16> %17, i16 %12, i64 1
  %19 = mul nuw nsw <2 x i16> %18, <i16 3, i16 1>
  %20 = insertelement <4 x i16> poison, i16 %7, i64 0
  %21 = insertelement <4 x i16> %20, i16 %11, i64 1
  %22 = shufflevector <4 x i16> %21, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %23 = mul nuw nsw <4 x i16> %22, <i16 4, i16 4, i16 5, i16 6>
  %24 = shufflevector <2 x i16> %19, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = insertelement <4 x i16> %24, i16 %10, i64 2
  %i.am = insertelement <4 x i16> %25, i16 %7, i64 3
  %i.an = add nuw nsw <4 x i16> %i.am, %23
  %i.ao = udiv <4 x i16> %i.an, splat (i16 7)
  %26 = shl nuw nsw i16 %11, 1
  %27 = mul nuw nsw i16 %7, 5
  %28 = add nuw nsw i16 %27, %26
  %i.ap = udiv i16 %28, 7
  %29 = mul nuw nsw i16 %7, 6
  %30 = add nuw nsw i16 %29, %11
  %i.aq = udiv i16 %30, 7
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 56
  %i.at = zext nneg i16 %i.ap to i64
  %i.au = shl nuw nsw i64 %i.at, 48
  %i.av = add nuw nsw i64 %i.as, %i.au
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.aw = phi <4 x i16> [ %i.ao, %.preheader.i.i ], [ %i.al, %.preheader9.i.i ] ; 4 uses
  %i.ax = zext i8 %.val.i.i to i64                ; 3 uses
  %i.ay = shl nuw nsw i64 %i.ax, 16
  %i.az = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ba, %i.ay            ; 2 uses
  %i.bc = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.bd = or disjoint i64 %i.bb, %i.bc            ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 16
  %i.bf = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.bi = or disjoint i64 %i.bg, %i.be
  %i.bj = or disjoint i64 %i.bi, %i.bh            ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.bm = or disjoint i64 %i.bk, %i.bl
  %i.bn = extractelement <4 x i16> %i.aw, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.bn to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.bo = extractelement <4 x i16> %i.aw, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.bo to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.bp = extractelement <4 x i16> %i.aw, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.bp to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.bq = extractelement <4 x i16> %i.aw, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.bq to i64
  %.sroa.3.0.insert.shift.i.i.a = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %5
  %.sroa.3.0.insert.mask.masked.masked.i.i = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i.a
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !964
  %i.br = and i64 %i.bl, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !964, !noundef !5
  store i8 %i.bt, ptr %i.h, align 1, !alias.scope !962, !noalias !959
  %i.bu = lshr i64 %i.bl, 3
  %i.bv = and i64 %i.bu, 7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !964, !noundef !5
  store i8 %i.bx, ptr %i.i, align 1, !alias.scope !962, !noalias !959
  %i.by = lshr i64 %i.bm, 6
  %i.bz = and i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !964, !noundef !5
  store i8 %i.cb, ptr %i.j, align 1, !alias.scope !962, !noalias !959
  %i.cc = lshr i64 %i.bh, 1
  %i.cd = and i64 %i.cc, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !964, !noundef !5
  store i8 %i.cf, ptr %i.k, align 1, !alias.scope !962, !noalias !959
  %i.cg = lshr i64 %i.bh, 4
  %i.ch = and i64 %i.cg, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !964, !noundef !5
  store i8 %i.cj, ptr %i.l, align 1, !alias.scope !962, !noalias !959
  %i.ck = lshr i64 %i.bj, 7
  %i.cl = and i64 %i.ck, 7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !964, !noundef !5
  store i8 %i.cn, ptr %i.m, align 1, !alias.scope !962, !noalias !959
  %i.co = lshr i64 %i.bf, 2
  %i.cp = and i64 %i.co, 7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !964, !noundef !5
  store i8 %i.cr, ptr %i.n, align 1, !alias.scope !962, !noalias !959
  %i.cs = lshr i64 %i.bf, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !964, !noundef !5
  store i8 %i.cu, ptr %i.o, align 1, !alias.scope !962, !noalias !959
  %i.cv = and i64 %i.bc, 7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !964, !noundef !5
  store i8 %i.cx, ptr %i.p, align 1, !alias.scope !962, !noalias !959
  %i.cy = lshr i64 %i.bc, 3
  %i.cz = and i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !964, !noundef !5
  store i8 %i.db, ptr %i.q, align 1, !alias.scope !962, !noalias !959
  %i.dc = lshr i64 %i.bd, 6
  %i.dd = and i64 %i.dc, 7
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !964, !noundef !5
  store i8 %i.df, ptr %i.r, align 1, !alias.scope !962, !noalias !959
  %i.dg = lshr i64 %i.az, 1
  %i.dh = and i64 %i.dg, 7
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !964, !noundef !5
  store i8 %i.dj, ptr %i.s, align 1, !alias.scope !962, !noalias !959
  %i.dk = lshr i64 %i.az, 4
  %i.dl = and i64 %i.dk, 7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !964, !noundef !5
  store i8 %i.dn, ptr %i.t, align 1, !alias.scope !962, !noalias !959
  %i.do = lshr i64 %i.bb, 15
  %i.dp = and i64 %i.do, 7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !964, !noundef !5
  store i8 %i.dr, ptr %i.u, align 1, !alias.scope !962, !noalias !959
  %i.ds = lshr i64 %i.ax, 2
  %i.dt = and i64 %i.ds, 7
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !964, !noundef !5
  store i8 %i.dv, ptr %i.v, align 1, !alias.scope !962, !noalias !959
  %i.dw = lshr i64 %i.ax, 5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !964, !noundef !5
  store i8 %i.dy, ptr %i.w, align 1, !alias.scope !962, !noalias !959
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !964
  %i.dz = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !921

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.dz, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.ed, %bb.i ], [ %i.eh, %bb.j ], [ %i.ek, %bb.k ] ; 2 uses
  %i.ea = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.ea, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eb, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !965, !noalias !969
  %i.ec = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.ed = shl nuw i64 %i.ec, 4                    ; 3 uses
  %i.ee = or disjoint i64 %i.ed, 15
  %or.cond.not.1 = icmp ult i64 %i.ee, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !410

bb.j:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ef, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !965, !noalias !969
  %i.eg = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.eh = shl i64 %i.eg, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.eh, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !410

bb.k:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ei, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !965, !noalias !969
  %i.ej = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.ek = shl i64 %i.ej, 4                        ; 3 uses
  %i.el = or disjoint i64 %i.ek, 15
  %or.cond.not.3 = icmp ult i64 %i.el, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !410

.loopexit:                                        ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.em, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !965, !noalias !969
  %i.en = icmp eq i64 %i.ae, 0
  br i1 %i.en, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !971

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
  %i.h = lshr i64 %2, 4                           ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  %i.j = load i8, ptr %i.d, align 1, !noundef !5
  %i.k = load i8, ptr %i.c, align 1, !noundef !5
  %i.l = load i8, ptr %i.b, align 1, !noundef !5
  %i.m = load i8, ptr %0, align 1, !noundef !5
  %i.n = zext i8 %i.k to i16                      ; 2 uses
  %i.o = zext i8 %i.j to i16                      ; 2 uses
  %i.p = zext i8 %i.m to i16                      ; 2 uses
  %i.q = zext i8 %i.l to i16                      ; 2 uses
  %i.r = shl nuw i16 %i.q, 8
  %i.s = or disjoint i16 %i.r, %i.p               ; 2 uses
  %i.t = shl nuw i16 %i.o, 8
  %i.u = or disjoint i16 %i.t, %i.n               ; 2 uses
  %i.v = lshr i16 %i.s, 5
  %i.w = lshr i16 %i.q, 3
  %i.x = lshr i16 %i.u, 5
  %i.y = lshr i16 %i.o, 3
  %i.z = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.v, i64 1
  %i.ab = insertelement <4 x i16> %i.aa, i16 %i.p, i64 2
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 3 ; 2 uses
  %i.ad = and <4 x i16> %i.ac, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ae = shufflevector <4 x i16> %i.ac, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.af = insertelement <4 x i16> %i.ae, i16 %i.x, i64 1
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.n, i64 2
  %i.ah = and <4 x i16> %i.ag, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ai = mul nuw nsw <4 x i16> %i.ad, <i16 255, i16 85, i16 255, i16 255>
  %i.aj = mul nuw nsw <4 x i16> %i.ah, <i16 255, i16 85, i16 255, i16 255>
  %i.ak = udiv <4 x i16> %i.ai, <i16 31, i16 21, i16 31, i16 31> ; 5 uses
  %i.al = udiv <4 x i16> %i.aj, <i16 31, i16 21, i16 31, i16 31> ; 9 uses
  %i.am = bitcast <4 x i16> %i.al to <8 x i8>
  %i.an = extractelement <8 x i8> %i.am, i64 2
  %i.ao = bitcast <4 x i16> %i.al to <8 x i8>
  %i.ap = extractelement <8 x i8> %i.ao, i64 4
  %i.aq = shufflevector <4 x i16> %i.al, <4 x i16> %i.ak, <4 x i32> <i32 3, i32 5, i32 6, i32 0>
  %i.ar = trunc <4 x i16> %i.aq to <4 x i8>
  store <4 x i8> %i.ar, ptr %i.a, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.an, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ap, ptr %.sroa.53.0..sroa_idx, align 1
  %i.as = icmp ule i16 %i.s, %i.u
  %brmerge.not = and i1 %3, %i.as
  br i1 %brmerge.not, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.c
  %i.at = shl nuw nsw <4 x i16> %i.ak, splat (i16 1)
  %i.au = add nuw nsw <4 x i16> %i.al, splat (i16 1)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10
end_hunk_0
