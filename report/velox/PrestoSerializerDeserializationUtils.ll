inline.NumInlined: 14590
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_12UnknownValueEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

_ZNK8facebook5velox6Buffer9asMutableINS0_12UnknownValueEEEPT_v.exit.i: ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeINS0_12UnknownValueEEEiRKN5boost13intrusive_ptrINS0_6BufferEEESC_ii.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !238
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 %2, ptr %i.d, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !238 ; 6 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i, align 8
  %.sroa.6.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.c, ptr %.sroa.6.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i, align 8
  %.sroa.7.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.3.0..sroa_idx.i.i.sroa_idx.i, align 8
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.d, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.c, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.i.sroa_idx.i, align 8
  store i8 1, ptr %13, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.bo, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %14, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bo, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i = icmp sgt i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i

bb.p:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_12UnknownValueEEEPT_v.exit.i
  %i.bp = add i32 %2, 63                          ; 2 uses
  %i.bq = srem i32 %i.bp, 64
  %i.br = sub nsw i32 %i.bp, %i.bq                ; 6 uses
  %i.bs = and i32 %i.v, -64                       ; 6 uses
  %i.bt = icmp slt i32 %i.bs, %i.br
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = ashr i32 %i.v, 6
  %i.bv = and i32 %i.v, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.i.i.i.i, -1
  %i.by = sub nsw i32 %i.br, %2                   ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bz
  %i.ca = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cb = sub nsw i32 64, %i.by
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl i64 %i.ca, %i.cc
  %i.ce = and i64 %i.cd, %i.bx
  %i.cf = sext i32 %i.bu to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !185
  %i.ci = and i64 %i.ce, %i.ch                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.q, %.noexc43
  %.011.i.i.i.i.i = phi i64 [ %i.cn, %.noexc43 ], [ %i.ci, %bb.q ] ; 3 uses
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %i.bs, %i.ck
  invoke fastcc void @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.cl)
          to label %.noexc43 unwind label %.loopexit

.noexc43:                                         ; preds = %.preheader.i.i.i.i.i
  %i.cm = add nsw i64 %.011.i.i.i.i.i, -1
  %i.cn = and i64 %i.cm, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !691

bb.r:                                             ; preds = %bb.p
  %.not32.i.i.i.i = icmp eq i32 %2, %i.br
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = sdiv i32 %2, 64                         ; 2 uses
  %i.cp = sub nsw i32 %i.br, %2                   ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cq
  %i.cr = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.cs = sub nsw i32 64, %i.cp
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl i64 %i.cr, %i.ct
  %i.cv = sext i32 %i.co to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !185
  %i.cy = and i64 %i.cx, %i.cu                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.s
  %i.cz = shl nsw i32 %i.co, 6
  br label %bb.t

bb.t:                                             ; preds = %.noexc44, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.cy, %.preheader.i37.i.i.i.i ], [ %i.de, %.noexc44 ] ; 3 uses
  %i.da = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  invoke fastcc void @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.dc)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %bb.t
  %i.dd = add i64 %.011.i38.i.i.i.i, -1
  %i.de = and i64 %i.dd, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.t, !llvm.loop !691

_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc44, %bb.s, %bb.r
  %i.df = add nsw i32 %i.br, 64                   ; 2 uses
  %.not3360.i.i.i.i = icmp sgt i32 %i.df, %i.bs
  br i1 %.not3360.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.v, %i.bs
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %bb.ah

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.dg = phi i32 [ %i.fn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.df, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.061.i.i.i.i = phi i32 [ %i.dg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.br, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.dh = sdiv i32 %.061.i.i.i.i, 64              ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !185 ; 2 uses
  switch i64 %i.dk, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.u
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.dl = shl nsw i32 %i.dh, 6                    ; 2 uses
  %.promoted.i.pre.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %.pre.pre27.i = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dm = add i32 %i.dl, -1
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dn = shl nsw i32 %i.dh, 6                    ; 2 uses
  %i.do = add i32 %i.dn, 64
  %i.dp = sext i32 %i.do to i64
  %.0.off.i.i.i.i = add i32 %.061.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.u
  %i.dq = sext i32 %i.dn to i64
  br label %bb.v

bb.v:                                             ; preds = %.noexc45, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph21.i.i.i.i.i ], [ %i.ds, %.noexc45 ] ; 2 uses
  %i.dr = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.dr)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc45:                                         ; preds = %bb.v
  %i.ds = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  br i1 %i.dt, label %bb.v, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !692

bb.w:                                             ; preds = %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pre.i = phi i32 [ %.pre.pre27.i, %.lr.ph.i.i.i.i.i ], [ %.pre28.i, %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.promoted.i.i.i.i.i = phi i32 [ %.promoted.i.pre.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fk, %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i ] ; 7 uses
  %.01519.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %i.fm, %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %i.du = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32          ; 2 uses
  %i.dw = or disjoint i32 %i.dl, %i.dv            ; 5 uses
  %i.dx = icmp slt i32 %.promoted.i.i.i.i.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i49.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i49.i.i.i.preheader.i:                     ; preds = %bb.w
  %smax.i = call i32 @llvm.smax.i32(i32 %.promoted.i.i.i.i.i, i32 %.pre.i) ; 3 uses
  %i.dy = add i32 %i.dm, %i.dv
  %i.dz = sub i32 %i.dy, %.promoted.i.i.i.i.i
  %i.ea = sub i32 %smax.i, %.promoted.i.i.i.i.i
  %umin = call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.ea)
  %i.eb = add i32 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.eb, 33
  br i1 %min.iters.check, label %.lr.ph.i49.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i49.i.i.i.preheader.i
  %n.mod.vf = and i32 %i.eb, 31                   ; 2 uses
  %i.ec = icmp eq i32 %n.mod.vf, 0
  %i.ed = select i1 %i.ec, i32 32, i32 %n.mod.vf
  %n.vec = sub i32 %i.eb, %i.ed                   ; 2 uses
  %i.ee = add i32 %.promoted.i.i.i.i.i, %n.vec
  %i.ef = add i32 %.promoted.i.i.i.i.i, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.eg = phi i32 [ %i.ef, %vector.ph ], [ %i.eh, %vector.body ] ; 2 uses
  %18 = add i32 %i.eg, 25
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.eh = add i32 %i.eg, 32
  %i.ei = icmp eq i32 %index.next, %n.vec
  br i1 %i.ei, label %.lr.ph.i49.i.i.i.i.preheader.loopexit, label %vector.body, !llvm.loop !693

.lr.ph.i49.i.i.i.i.preheader.loopexit:            ; preds = %vector.body
  store i32 %18, ptr %i.d, align 4, !tbaa !3
  br label %.lr.ph.i49.i.i.i.i.preheader

.lr.ph.i49.i.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i.i.preheader.loopexit, %.lr.ph.i49.i.i.i.preheader.i
  %.ph = phi i32 [ %.promoted.i.i.i.i.i, %.lr.ph.i49.i.i.i.preheader.i ], [ %i.ee, %.lr.ph.i49.i.i.i.i.preheader.loopexit ]
  br label %.lr.ph.i49.i.i.i.i

.lr.ph.i49.i.i.i.i:                               ; preds = %.lr.ph.i49.i.i.i.i.preheader, %bb.aa
  %i.ej = phi i32 [ %i.er, %bb.aa ], [ %.ph, %.lr.ph.i49.i.i.i.i.preheader ] ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ej, %smax.i
  br i1 %exitcond.not.i, label %bb.x, label %bb.aa, !prof !36

bb.x:                                             ; preds = %.lr.ph.i49.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !694
  store i32 %smax.i, ptr %10, align 16, !tbaa !40, !noalias !694
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.pre.i, ptr %i.ek, align 16, !tbaa !40, !noalias !694
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.22, i64 11, i64 17, ptr nonnull %10)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !694
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.22) #39
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc46
  unreachable

bb.z:                                             ; preds = %.noexc46
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !40
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.aa:                                            ; preds = %.lr.ph.i49.i.i.i.i
  %i.er = add i32 %i.ej, 1                        ; 3 uses
  store i32 %i.er, ptr %i.d, align 4, !tbaa !3
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.er, %i.dw
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i49.i.i.i.i, !llvm.loop !697

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %bb.w
  %.not.i48.i.i.i.i = icmp slt i32 %i.dw, %.pre.i
  br i1 %.not.i48.i.i.i.i, label %bb.ae, label %bb.ab, !prof !47

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !698
  store i32 %i.dw, ptr %9, align 16, !tbaa !40, !noalias !698
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.pre.i, ptr %i.es, align 16, !tbaa !40, !noalias !698
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.22, i64 11, i64 17, ptr nonnull %9)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !698
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEiE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.22) #39
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc47
  unreachable

bb.ad:                                            ; preds = %.noexc47
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i.i: ; preds = %bb.ad
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !40
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !7  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11
  %i.fe = add i64 %i.fd, 1                        ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !15
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.fe, %i.fg
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !11
  br label %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull %8, i32 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !701

.noexc48:                                         ; preds = %bb.ag
  %.pre.pre.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i

_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc48, %bb.af
  %.pre28.i = phi i32 [ %.pre.pre.i, %.noexc48 ], [ %.pre.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.fk = add nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.fk, ptr %i.d, align 4, !tbaa !3
  %i.fl = add i64 %.01519.i.i.i.i.i, -1
  %i.fm = and i64 %i.fl, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.w, !llvm.loop !702

_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc45, %_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi.exit.i.i.i.i, %bb.u, %.lr.ph.i.i.i.i
  %i.fn = add nsw i32 %i.dg, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fn, %i.bs
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !703

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fo = ashr i32 %i.v, 6
  %i.fp = and i32 %i.v, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fq
  %i.fr = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !185
  %i.fv = and i64 %i.fu, %i.fr                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ah, %.noexc49
  %.011.i45.i.i.i.i = phi i64 [ %i.ga, %.noexc49 ], [ %i.fv, %bb.ah ] ; 3 uses
  %i.fw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = or disjoint i32 %i.bs, %i.fx
  invoke fastcc void @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fy)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fz = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.ga = and i64 %i.fz, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !691

_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc49, %.noexc43, %bb.ah, %._crit_edge.i.i.i.i, %bb.q, %_ZNK8facebook5velox6Buffer9asMutableINS0_12UnknownValueEEEPT_v.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit

bb.ai:                                            ; preds = %bb.g
  %i.gb = getelementptr inbounds nuw i8, ptr %.val34, i64 44
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !233
  %i.gd = and i8 %i.gc, 2
  %.not.i15.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i15.i, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i, label %.invoke, !prof !47

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i: ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !238
  %i.gg = sext i32 %2 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  %i.gi = load ptr, ptr %0, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gh, i32 noundef %i.t)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !701

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_EUliE_EEvPKmiiT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_12UnknownValueEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_.exit, %bb.f, %bb.e
  %i.gl = load ptr, ptr %17, align 8, !tbaa !232  ; 7 uses
  %.not.i52 = icmp eq ptr %i.gl, null
  br i1 %.not.i52, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = atomicrmw sub ptr %i.gm, i32 1 acq_rel, align 4
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.ak
end_hunk_0
