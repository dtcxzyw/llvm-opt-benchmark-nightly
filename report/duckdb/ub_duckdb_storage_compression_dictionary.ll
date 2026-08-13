inline.NumInlined: 904
inline.NumDeleted: 469
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb34DictionaryCompressionCompressState26CalculateSpaceRequirementsEbm:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !224
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load i8, ptr %i.n, align 8, !tbaa !217
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83, !nonnull !85, !align !86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.u = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = sub i64 %i.s, %i.u
  %i.w = trunc i64 %i.d to i32
  %i.x = and i32 %i.w, 31                         ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.c, 33
  %i.aa = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.x)
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit

_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.d, %bb.b ]
  %i.ac = zext i8 %i.o to i64
  %i.ad = mul i64 %.0.i.i.i.i, %i.ac
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add i64 %i.i, 20
  %i.ag = sub i64 %i.af, %i.j
  %i.ah = add i64 %i.ag, %i.m
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = icmp ule i64 %i.ai, %i.v
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !215 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = sub nuw nsw i8 64, %i.au
  %i.aw = icmp ugt i64 %i.as, 72057594037927935
  %..i.i.i = select i1 %i.aw, i8 64, i8 %i.av
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit: ; preds = %bb.d, %.preheader.preheader.i.i
  %.09.i.i = phi i8 [ %..i.i.i, %.preheader.preheader.i.i ], [ 0, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 2 uses
  store i8 %.09.i.i, ptr %i.ax, align 1, !tbaa !218
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %i.ba = load atomic i64, ptr %i.az seq_cst, align 8 ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 2 uses
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !215
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !169
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = and i64 %i.bg, -4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !224
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load i8, ptr %i.ax, align 1, !tbaa !218
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83, !nonnull !85, !align !86 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bp = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.br = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = trunc i64 %i.bb to i32
  %i.bu = and i32 %i.bt, 31                       ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit6, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit
  %i.bw = add i64 %i.ba, 33
  %i.bx = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.bu)
  %i.by = sub i64 %i.bw, %i.bx
  br label %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit6

_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit6: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, %bb.e
  %.0.i.i.i.i5 = phi i64 [ %i.by, %bb.e ], [ %i.bb, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit ]
  %i.bz = zext i8 %i.bl to i64
  %i.ca = mul i64 %.0.i.i.i.i5, %i.bz
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add i64 %2, 24
  %i.cd = add i64 %i.cc, %i.bk
  %i.ce = add i64 %i.cd, %i.bh
  %i.cf = add i64 %i.ce, %i.cb
  %i.cg = icmp ule i64 %i.cf, %i.bs
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit6, %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit
  %.0 = phi i1 [ %i.cg, %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit6 ], [ %i.aj, %_ZN6duckdb21DictionaryCompression14HasEnoughSpaceEmmmhm.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34DictionaryCompressionCompressState5FlushEb(ptr noundef nonnull align 8 dereferenceable(296) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.54", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::BufferHandle", align 8 ; 4 uses
  %i.a = tail call noundef i64 @_ZN6duckdb34DictionaryCompressionCompressState8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(296) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198, !nonnull !85, !align !86
  %i.d = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb24ColumnDataCheckpointData18GetCheckpointStateEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !213
  store i64 %i.f, ptr %2, align 8, !tbaa !213
  store ptr null, ptr %i.e, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN6duckdb12BufferHandleC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #28
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  %i.k = load ptr, ptr %2, align 8, !tbaa !213    ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.k) #28
  call void @_ZdlPv(ptr noundef nonnull %i.k) #30
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  br i1 %1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb34DictionaryCompressionCompressState18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(296) %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb34DictionaryCompressionCompressState8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %1 = alloca %"class.duckdb::BufferHandle", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198, !nonnull !85, !align !86
  %i.d = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr %i.l seq_cst, align 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !217
  %i.p = trunc i64 %i.m to i32
  %i.q = and i32 %i.p, 31                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.q)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.t = add i64 %i.m, 32
  %i.u = sub i64 %i.t, %i.s
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %.0.i.i = phi i64 [ %i.u, %.noexc ], [ %i.m, %bb.b ]
  %i.v = zext i8 %i.o to i64
  %i.w = mul i64 %.0.i.i, %i.v
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !215
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !169
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = add nuw nsw i64 %i.x, 20                ; 3 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !224
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.ag, %i.aj                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !169 ; 2 uses
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %i.at = load atomic i64, ptr %i.ar seq_cst, align 8 ; 2 uses
  %i.au = load i8, ptr %i.n, align 8, !tbaa !217  ; 4 uses
  %i.av = and i64 %i.at, 31                       ; 2 uses
  %i.aw = and i64 %i.at, -32                      ; 4 uses
  %.not22.i = icmp eq i64 %i.aw, 0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ax = zext i8 %i.au to i64
  %i.ay = zext i8 %i.au to i32
  br label %bb.g

._crit_edge.i:                                    ; preds = %.noexc39, %bb.f
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit, label %bb.h

bb.g:                                             ; preds = %.noexc39, %.lr.ph.i
  %.021.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %.noexc39 ] ; 3 uses
  %i.az = mul i64 %.021.i, %i.ax
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.021.i
  invoke void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef %i.bc, ptr noundef nonnull %i.bb, i32 noundef %i.ay)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.g
  %i.bd = add nuw i64 %.021.i, 32                 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.aw
  br i1 %i.be, label %bb.g, label %._crit_edge.i, !llvm.loop !227

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.aw
  %i.bg = shl nuw nsw i64 %i.av, 2                ; 3 uses
  %i.bh = sub nuw nsw i64 128, %i.bg
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bi, i8 0, i64 %i.bh, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %i.bf, i64 %i.bg, i1 false)
  %i.bj = zext i8 %i.au to i64
  %i.bk = mul i64 %i.aw, %i.bj
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bl
  %i.bn = zext i8 %i.au to i32
  invoke void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bm, i32 noundef %i.bn)
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit

_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit: ; preds = %.noexc40, %._crit_edge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 4 %i.bp, i64 %i.ae, i1 false)
  %i.bq = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.af)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit unwind label %bb.m

_ZN6duckdb11NumericCastIjmvEET_T0_.exit:          ; preds = %_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.bq, ptr %i.br, align 1
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !215
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !169
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bx)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit43 unwind label %bb.n

_ZN6duckdb11NumericCastIjmvEET_T0_.exit43:        ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %i.by, ptr %i.bz, align 1
  %i.ca = load i8, ptr %i.n, align 8, !tbaa !217
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %i.cb, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83, !nonnull !85, !align !86 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cg = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  %i.ci = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.noexc44
  %i.cj = sub i64 %i.cg, %i.ci
  %i.ck = udiv i64 %i.cj, 5
  %i.cl = shl nuw i64 %i.ck, 2
  %.not = icmp ult i64 %i.ak, %i.cl
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !83, !nonnull !85, !align !86 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 128 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.cq = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %_ZNK6duckdb15CompressionInfo12GetBlockSizeEv.exit unwind label %.loopexit.split-lp

_ZNK6duckdb15CompressionInfo12GetBlockSizeEv.exit: ; preds = %.noexc46
  %i.cr = sub i64 %i.co, %i.cq
  br label %bb.t

bb.k:                                             ; preds = %bb.c, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.e, %bb.h, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit43, %.noexc44, %bb.j, %.noexc46
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.m:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.i
  %i.cw = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %.noexc48 unwind label %bb.r

.noexc48:                                         ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.cy = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.noexc48
  %.neg54 = sub i64 %i.ak, %i.cw
  %.neg = add i64 %.neg54, %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !219
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dc
  %i.de = load i32, ptr %i.ah, align 8, !tbaa !224
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.dh, i64 %i.df, i1 false)
  %i.di = load i32, ptr %i.da, align 4, !tbaa !219
  %i.dj = trunc i64 %.neg to i32
  %i.dk = add i32 %i.di, %i.dj
  store i32 %i.dk, ptr %i.da, align 4, !tbaa !219
  %i.dl = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload = load i64, ptr %i.ah, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN6duckdb21DictionaryCompression13SetDictionaryERNS_13ColumnSegmentERNS_12BufferHandleENS_25StringDictionaryContainerE.exit unwind label %bb.s

_ZN6duckdb21DictionaryCompression13SetDictionaryERNS_13ColumnSegmentERNS_12BufferHandleENS_25StringDictionaryContainerE.exit: ; preds = %bb.q
  %i.dm = load ptr, ptr %i.al, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 216
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  store i64 %.sroa.0.0.copyload, ptr %i.dr, align 1
  br label %bb.t

bb.r:                                             ; preds = %.noexc48, %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZN6duckdb21DictionaryCompression13SetDictionaryERNS_13ColumnSegmentERNS_12BufferHandleENS_25StringDictionaryContainerE.exit, %_ZNK6duckdb15CompressionInfo12GetBlockSizeEv.exit
  %.0 = phi i64 [ %i.cr, %_ZNK6duckdb15CompressionInfo12GetBlockSizeEv.exit ], [ %i.ak, %_ZN6duckdb21DictionaryCompression13SetDictionaryERNS_13ColumnSegmentERNS_12BufferHandleENS_25StringDictionaryContainerE.exit ]
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %.0

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.r, %bb.s, %bb.n, %bb.m, %bb.k
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.k ], [ %i.ct, %bb.l ], [ %i.ds, %bb.r ], [ %i.cu, %bb.m ], [ %i.cv, %bb.n ], [ %i.dt, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn34.pn.pn
}

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb24ColumnDataCheckpointData18GetCheckpointStateEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i16 @_ZN6duckdb25CompressedStringScanState15GetStringLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228  ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = add i32 %1, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = sub i32 %i.f, %i.j
  %i.l = trunc i32 %i.k to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_ZN6duckdb25CompressedStringScanState19FetchStringFromDictEit(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #12 align 2 {
bb.a:
  %.sroa.0 = alloca %struct.anon, align 8         ; 7 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
end_hunk_0
