Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DXContainerPSVInfo?download=true
inline.NumInlined: 503
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm6mcdxbc14PSVRuntimeInfo5writeERNS_11raw_ostreamEj:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i83.3
  %.not9.i84.3 = icmp eq i32 %i.ef, 0
  br i1 %.not9.i84.3, label %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.3, label %.lr.ph.split.us.i86.3

.lr.ph.split.us.i86.3:                            ; preds = %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.2, %.lr.ph.split.us.i86.3
  %.010.us.i87.3 = phi ptr [ %i.ek, %.lr.ph.split.us.i86.3 ], [ %i.ed, %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.2 ] ; 2 uses
  %i.ei = load i32, ptr %.010.us.i87.3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 %i.ei, ptr %i.a, align 4, !tbaa !12
  %i.ej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a, i64 noundef 4) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.us.i87.3, i64 4 ; 2 uses
  %.not.us.i88.3 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.us.i88.3, label %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.3, label %.lr.ph.split.us.i86.3

_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.3: ; preds = %.lr.ph.split.us.i86.3, %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit89.2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !15 ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %.idx.i69 = shl nuw nsw i64 %i.ep, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i69
  %.not9.i70 = icmp eq i32 %i.eo, 0
  br i1 %.not9.i70, label %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit75, label %.lr.ph.split.us.i72

_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit82: ; preds = %.lr.ph.split.us.i79, %_ZN4llvm7support6endian11write_arrayIjEEvRNS_11raw_ostreamENS_8ArrayRefIT_EENS_10endiannessE.exit75, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK4llvm18StringTableBuilder5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(62), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6mcdxbc14PSVRuntimeInfo8finalizeENS_6Triple15EnvironmentTypeEj(ptr noundef nonnull align 8 dereferenceable(2040) initializes((0, 1), (32, 35)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.19", align 8 ; 11 uses
  store i8 1, ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = trunc i32 %i.c to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.e, ptr %i.f, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.j, ptr %i.k, align 1, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !15
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.o, ptr %i.p, align 2, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 4 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !16
  call fastcc void @_ZL18ProcessElementListRN4llvm18StringTableBuilderERNS_15SmallVectorImplIjEERNS2_INS_4dxbc3PSV2v016SignatureElementEEERNS2_INS_9StringRefEEENS_8ArrayRefINS_6mcdxbc19PSVSignatureElementEEE(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.w, i64 %i.d)
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.y = load i32, ptr %i.h, align 8, !tbaa !15
  %i.z = zext i32 %i.y to i64
  call fastcc void @_ZL18ProcessElementListRN4llvm18StringTableBuilderERNS_15SmallVectorImplIjEERNS2_INS_4dxbc3PSV2v016SignatureElementEEERNS2_INS_9StringRefEEENS_8ArrayRefINS_6mcdxbc19PSVSignatureElementEEE(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.x, i64 %i.z)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !15
  %i.ac = zext i32 %i.ab to i64
  call fastcc void @_ZL18ProcessElementListRN4llvm18StringTableBuilderERNS_15SmallVectorImplIjEERNS2_INS_4dxbc3PSV2v016SignatureElementEEERNS2_INS_9StringRefEEENS_8ArrayRefINS_6mcdxbc19PSVSignatureElementEEE(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.aa, i64 %i.ac)
  %i.ad = icmp ugt i32 %2, 2                      ; 2 uses
  br i1 %i.ad, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !88 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.06.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %i.ai = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.06.0.copyload, i64 %i.af) #14
  %.sroa.4.8.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = and i64 %i.af, 4294967295
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.2.8.insert.ext.i
  %i.aj = call noundef i64 @_ZN4llvm18StringTableBuilder3addENS_19CachedHashStringRefEh(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr %.sroa.06.0.copyload, i64 %.sroa.2.8.insert.insert.i, i8 noundef zeroext 0) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @_ZN4llvm18StringTableBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(62) %i.t) #14
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !16, !noalias !89 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !16, !noalias !89 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.an = load i32, ptr %i.am, align 8, !tbaa !15, !noalias !90 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !15, !noalias !90 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx36 = shl nuw nsw i64 %i.ar, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx36
  %i.at = icmp ne i32 %i.an, 0
  %i.au = icmp ne i32 %i.aq, 0
  %.not3.i33 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %.not3.i33, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  br i1 %i.ad, label %bb.e, label %bb.g

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.020.035 = phi ptr [ %i.az, %.lr.ph ], [ %i.al, %bb.d ] ; 3 uses
  %.sroa.7.034 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ak, %bb.d ] ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.020.035, align 8, !tbaa !35 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %i.av = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.03.0.copyload, i64 %.sroa.4.0.copyload) #14
  %.sroa.4.8.insert.ext.i10 = zext i32 %i.av to i64
  %.sroa.4.8.insert.shift.i11 = shl nuw i64 %.sroa.4.8.insert.ext.i10, 32
  %.sroa.2.8.insert.ext.i12 = and i64 %.sroa.4.0.copyload, 4294967295
  %.sroa.2.8.insert.insert.i13 = or disjoint i64 %.sroa.4.8.insert.shift.i11, %.sroa.2.8.insert.ext.i12
  %i.aw = call noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr %.sroa.03.0.copyload, i64 %.sroa.2.8.insert.insert.i13) #14
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %.sroa.7.034, align 4, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.7.034, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.ay, %i.ap
  %i.bb = icmp ne ptr %i.az, %i.as
  %.not3.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !88 ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %i.bg = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload, i64 %i.bd) #14
  %.sroa.4.8.insert.ext.i14 = zext i32 %i.bg to i64
  %.sroa.4.8.insert.shift.i15 = shl nuw i64 %.sroa.4.8.insert.ext.i14, 32
  %.sroa.2.8.insert.ext.i16 = and i64 %i.bd, 4294967295
  %.sroa.2.8.insert.insert.i17 = or disjoint i64 %.sroa.4.8.insert.shift.i15, %.sroa.2.8.insert.ext.i16
  %i.bh = call noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62) %i.t, ptr %.sroa.0.0.copyload, i64 %.sroa.2.8.insert.insert.i17) #14
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %i.bk = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.q
  br i1 %i.bl, label %_ZN4llvm11SmallVectorINS_9StringRefELj32EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.bk) #14
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj32EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL18ProcessElementListRN4llvm18StringTableBuilderERNS_15SmallVectorImplIjEERNS2_INS_4dxbc3PSV2v016SignatureElementEEERNS2_INS_9StringRefEEENS_8ArrayRefINS_6mcdxbc19PSVSignatureElementEEE(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree readonly captures(address) %4, i64 %5) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %5, 96
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not67 = icmp eq i64 %5, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit
  %.068 = phi ptr [ %4, %.lr.ph ], [ %i.bm, %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit ] ; 15 uses
  %.sroa.030.0.copyload = load ptr, ptr %.068, align 8, !tbaa !35 ; 2 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.068, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load i64, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %i.g = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.030.0.copyload, i64 %.sroa.231.0.copyload) #14
  %.sroa.4.8.insert.ext.i = zext i32 %i.g to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = and i64 %.sroa.231.0.copyload, 4294967295
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.2.8.insert.ext.i
  %i.h = tail call noundef i64 @_ZN4llvm18StringTableBuilder3addENS_19CachedHashStringRefEh(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr %.sroa.030.0.copyload, i64 %.sroa.2.8.insert.insert.i, i8 noundef zeroext 0) #14 ; 0 uses
  %.sroa.028.0.copyload = load ptr, ptr %.068, align 8, !tbaa !35 ; 2 uses
  %.sroa.229.0.copyload = load i64, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !34
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.028.0.copyload, i64 %.sroa.229.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %3, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  store ptr %.sroa.028.0.copyload, ptr %i.m, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.229.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.n = load i32, ptr %i.b, align 8, !tbaa !15
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.068, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %.sroa.6.8.insert.ext = and i64 %i.s, 255
  %i.t = getelementptr inbounds nuw i8, ptr %.068, i64 80
  %i.u = load i8, ptr %i.t, align 8, !tbaa !96
  %.sroa.6.9.insert.ext = zext i8 %i.u to i64
  %.sroa.6.9.insert.shift = shl nuw nsw i64 %.sroa.6.9.insert.ext, 8
  %.sroa.6.9.insert.insert = or disjoint i64 %.sroa.6.9.insert.shift, %.sroa.6.8.insert.ext
  %i.v = getelementptr inbounds nuw i8, ptr %.068, i64 81
  %i.w = load i8, ptr %i.v, align 1, !tbaa !97
  %i.x = and i8 %i.w, 15
  %i.y = getelementptr inbounds nuw i8, ptr %.068, i64 82
  %i.z = load i8, ptr %i.y, align 2, !tbaa !98
  %i.aa = shl i8 %i.z, 4
  %i.ab = and i8 %i.aa, 48
  %i.ac = or disjoint i8 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.068, i64 83
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !99, !range !100, !noundef !101
  %i.af = shl nuw nsw i8 %i.ae, 6
  %i.ag = or disjoint i8 %i.ac, %i.af
  %.sroa.6.10.insert.ext16 = zext nneg i8 %i.ag to i64
  %.sroa.6.10.insert.shift17 = shl nuw nsw i64 %.sroa.6.10.insert.ext16, 16
  %.sroa.6.10.insert.insert19 = or disjoint i64 %.sroa.6.10.insert.shift17, %.sroa.6.9.insert.insert
  %i.ah = getelementptr inbounds nuw i8, ptr %.068, i64 84
  %6 = load i8, ptr %i.ah, align 4, !tbaa !102
  %.sroa.6.11.insert.ext = zext i8 %6 to i64
  %.sroa.6.11.insert.shift = shl nuw nsw i64 %.sroa.6.11.insert.ext, 24
  %.sroa.6.11.insert.insert = or disjoint i64 %.sroa.6.10.insert.insert19, %.sroa.6.11.insert.shift
  %7 = getelementptr inbounds nuw i8, ptr %.068, i64 85
  %8 = load i8, ptr %7, align 1, !tbaa !103
  %.sroa.6.12.insert.ext = zext i8 %8 to i64
  %.sroa.6.12.insert.shift = shl nuw nsw i64 %.sroa.6.12.insert.ext, 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.068, i64 86
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !104
  %.sroa.6.13.insert.ext = zext i8 %i.aj to i64
  %.sroa.6.13.insert.shift = shl nuw nsw i64 %.sroa.6.13.insert.ext, 40
  %.sroa.6.13.insert.mask = or disjoint i64 %.sroa.6.11.insert.insert, %.sroa.6.12.insert.shift
  %i.ak = getelementptr inbounds nuw i8, ptr %.068, i64 87
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !105
  %i.am = and i8 %i.al, 15
  %i.an = getelementptr inbounds nuw i8, ptr %.068, i64 88
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !106
  %i.ap = shl i8 %i.ao, 4
  %i.aq = and i8 %i.ap, 48
  %i.ar = or disjoint i8 %i.aq, %i.am
  %.sroa.6.14.insert.ext24 = zext nneg i8 %i.ar to i64
  %.sroa.6.14.insert.shift25 = shl nuw nsw i64 %.sroa.6.14.insert.ext24, 48
  %.sroa.6.14.insert.mask26 = or disjoint i64 %.sroa.6.13.insert.mask, %.sroa.6.13.insert.shift
  %.sroa.6.14.insert.insert27 = or i64 %.sroa.6.14.insert.shift25, %.sroa.6.14.insert.mask26 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.at = load i32, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 3 uses
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !16  ; 3 uses
  %i.aw = icmp ult i32 %i.at, %i.r
  br i1 %i.aw, label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.ax = sub nuw nsw i64 %i.au, %i.s
  %i.ay = shl nuw nsw i64 %i.s, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %.0614.i = phi i64 [ 0, %.preheader.i ], [ %i.bb, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0614.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.az, ptr readonly %i.av, i64 %i.ay)
  %i.ba = icmp eq i32 %bcmp.i, 0
  br i1 %i.ba, label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = add i64 %.0614.i, 1                     ; 2 uses
  %.not.i58 = icmp ugt i64 %i.bb, %i.ax
  br i1 %.not.i58, label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread, label %bb.e, !llvm.loop !94

_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.s
  %i.be = tail call noundef ptr @_ZN4llvm15SmallVectorImplIjE6insertIPKjvEEPjS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bc, ptr noundef %i.av, ptr noundef %i.bd) ; 0 uses
  br label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit

_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit:     ; preds = %bb.e, %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread
  %.sroa.02.sroa.4.0.in = phi i64 [ %i.au, %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread ], [ %.0614.i, %bb.e ]
  %.sroa.02.sroa.4.0.insert.ext = shl i64 %.sroa.02.sroa.4.0.in, 32 ; 2 uses
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.bg = load i32, ptr %i.f, align 4, !tbaa !34
  %.not.i59 = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i59, label %bb.h, label %bb.g, !prof !40

bb.g:                                             ; preds = %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.sroa.02.sroa.4.0.insert.ext, i64 %.sroa.6.14.insert.insert27)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit

bb.h:                                             ; preds = %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %2, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  store i64 %.sroa.02.sroa.4.0.insert.ext, ptr %i.bj, align 1
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.sroa.6.14.insert.insert27, ptr %.sroa.3.0..sroa_idx.i60, align 1
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !15
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.e, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit: ; preds = %bb.g, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.068, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm18StringTableBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(62)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6mcdxbc9Signature5writeERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.37", align 8 ; 12 uses
  %3 = alloca %"class.llvm::StringTableBuilder", align 8 ; 7 uses
  %4 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 11 uses
  %5 = alloca %"struct.llvm::dxbc::ProgramSignatureHeader", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_4dxbc23ProgramSignatureElementEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 32) #14
  br label %_ZN4llvm15SmallVectorImplINS_4dxbc23ProgramSignatureElementEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_4dxbc23ProgramSignatureElementEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN4llvm18StringTableBuilderC1ENS0_4KindENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(62) %3, i32 noundef 7, i8 0) #14
  %i.h = load i32, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl i32 %i.h, 5
  %i.k = or disjoint i32 %i.j, 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.idx = mul nuw nsw i64 %i.i, 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplINS_4dxbc23ProgramSignatureElementEE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit, %_ZN4llvm15SmallVectorImplINS_4dxbc23ProgramSignatureElementEE7reserveEm.exit
  call void @_ZN4llvm18StringTableBuilder15finalizeInOrderEv(ptr noundef nonnull align 8 dereferenceable(62) %3) #14
  %.val = load ptr, ptr %2, align 8, !tbaa !16    ; 6 uses
  %.val19 = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.t = zext i32 %.val19 to i64                  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.t, 5               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 4 uses
  %i.v = icmp eq i32 %.val19, 0
  br i1 %i.v, label %"_ZN4llvm11stable_sortIRNS_11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EEEZNS_6mcdxbc9Signature5writeERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = lshr i64 %i.w, 1                         ; 6 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %select.unfold.i.i.i.i.i, %bb.c
  %.010.i.i.i.i.i = phi i64 [ %i.ac, %select.unfold.i.i.i.i.i ], [ %i.x, %bb.c ] ; 6 uses
  %i.y = shl nuw nsw i64 %.010.i.i.i.i.i, 5
  %i.z = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.y, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #15 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.ab = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.ac = lshr i64 %i.ab, 1
  br i1 %i.aa, label %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !107

_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq i64 %i.x, %.010.i.i.i.i.i
  br i1 %i.ad, label %bb.d, label %bb.f, !prof !40

_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.thread.i: ; preds = %select.unfold.i.i.i.i.i
  %i.ae = icmp eq i64 %i.x, 0
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.thread.i, %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.i
  %.sroa.4.0.i.i7.i = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.thread.i ], [ %i.x, %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.i ]
  %.idx1.i = shl nuw nsw i64 %i.x, 5              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i ; 3 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %.val, ptr noundef %i.af, ptr noundef %i.z)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %i.af, ptr noundef nonnull %i.u, ptr noundef %i.z)
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx1.i
  %i.ag = ashr exact i64 %gepdiff.i, 5
  call fastcc void @"_ZSt16__merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr noundef %.val, ptr noundef %i.af, ptr noundef nonnull %i.u, i64 noundef %i.x, i64 noundef %i.ag, ptr noundef %i.z)
  br label %bb.g

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.thread.i
  call fastcc void @"_ZSt21__inplace_stable_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %.val, ptr noundef nonnull %i.u)
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIPN4llvm4dxbc23ProgramSignatureElementES2_EC2ES3_l.exit.i.i.i
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %.val, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i64 noundef %.010.i.i.i.i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i.i5.i = phi i64 [ %.010.i.i.i.i.i, %bb.f ], [ 0, %bb.e ], [ %.sroa.4.0.i.i7.i, %bb.d ]
  %i.ah = shl nuw nsw i64 %.sroa.4.0.i.i5.i, 5
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ah) #14
  br label %"_ZN4llvm11stable_sortIRNS_11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EEEZNS_6mcdxbc9Signature5writeERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit"

"_ZN4llvm11stable_sortIRNS_11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EEEZNS_6mcdxbc9Signature5writeERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit": ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !15
  store i32 %i.ai, ptr %5, align 4, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.aj, align 4, !tbaa !110
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %5, i64 noundef 8) #14 ; 0 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !16
  %i.am = load i32, ptr %i.b, align 8, !tbaa !15
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.al, i64 noundef %i.ao) #14 ; 0 uses
  call void @_ZNK4llvm18StringTableBuilder5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(62) %3, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN4llvm18StringTableBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(62) dereferenceable(62) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.aq = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZN4llvm11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %"_ZN4llvm11stable_sortIRNS_11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EEEZNS_6mcdxbc9Signature5writeERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit"
  call void @free(ptr noundef %i.aq) #14
  br label %_ZN4llvm11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EED2Ev.exit: ; preds = %"_ZN4llvm11stable_sortIRNS_11SmallVectorINS_4dxbc23ProgramSignatureElementELj1EEEZNS_6mcdxbc9Signature5writeERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit
  %.023 = phi ptr [ %i.l, %.lr.ph ], [ %i.bn, %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  %i.as = load i32, ptr %.023, align 8, !tbaa !112
  store i32 %i.as, ptr %4, align 4, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %i.au = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #14
  %.sroa.4.8.insert.ext.i = zext i32 %i.au to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = and i64 %.sroa.2.0.copyload, 4294967295
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.2.8.insert.ext.i
  %i.av = call noundef i64 @_ZN4llvm18StringTableBuilder3addENS_19CachedHashStringRefEh(ptr noundef nonnull align 8 dereferenceable(62) %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.8.insert.insert.i, i8 noundef zeroext 0) #14
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.k, %i.aw
  store i32 %i.ax, ptr %i.n, align 4, !tbaa !115
  %i.ay = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.az = load <4 x i32>, ptr %i.ay, align 8, !tbaa !46
  store <4 x i32> %i.az, ptr %i.o, align 4, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %.023, i64 40
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !116
  store i8 %i.bb, ptr %i.p, align 4, !tbaa !117
  %i.bc = getelementptr inbounds nuw i8, ptr %.023, i64 41
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  store i8 %i.bd, ptr %i.q, align 1, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %.023, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !120
  store i32 %i.bf, ptr %i.r, align 4, !tbaa !121
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !34
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(32) %4)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = zext i32 %i.bg to i64
  %i.bj = load ptr, ptr %2, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bk, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false)
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !15
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.b, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE9push_backERKS2_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %.023, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.m
  br i1 %.not, label %._crit_edge, label %bb.i
}

declare void @_ZN4llvm18StringTableBuilderC1ENS0_4KindENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(62), i32 noundef, i8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN4llvm18StringTableBuilder15finalizeInOrderEv(ptr noundef nonnull align 8 dereferenceable(62)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm18StringTableBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(62) dereferenceable(62)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIjE6insertIPKjvEEPjS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 4) #14
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !15
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i:    ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 4 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !15
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 2                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 4) #14
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %.pre64 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit:      ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre64, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ]
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 2            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 2 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 4) #14
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !15
  %.pre11.i = zext i32 %.pre.i47 to i64
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46:  ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.ai, %bb.g ], [ %.pre60, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.g ], [ %.pre11.i, %bb.h ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.pre-phi.i ; 2 uses
  %i.av = icmp sgt i64 %i.l, 4                    ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.j, !prof !40

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.au, ptr nonnull align 4 %i.an, i64 %i.l, i1 false)
  br label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i46
  %i.aw = icmp eq i64 %i.l, 4
  br i1 %i.aw, label %bb.k, label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.an, align 4, !tbaa !12
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit

_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !15
  %i.az = trunc i64 %i.aa to i32
  %i.ba = add i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !15
  %i.bb = add i64 %i.d, %i.l
  %gepdiff53 = sub i64 %.idx, %i.bb               ; 3 uses
  %i.bc = ashr exact i64 %gepdiff53, 2            ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !40

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 4 %i.ak, i64 %gepdiff53, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE6appendISt13move_iteratorIPjEvEEvT_S6_.exit
  %i.bg = icmp eq i64 %gepdiff53, 4
  br i1 %i.bg, label %bb.n, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.bi = load i32, ptr %i.ak, align 4, !tbaa !12
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !12
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.l, %bb.m, %bb.n
  br i1 %i.av, label %bb.o, label %bb.p, !prof !40

bb.o:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit

bb.p:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %i.bj = icmp eq i64 %i.l, 4
  br i1 %i.bj, label %bb.q, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %2, align 4, !tbaa !12
  store i32 %i.bk, ptr %i.ak, align 4, !tbaa !12
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.bl = trunc i64 %i.aa to i32
  %i.bm = add i32 %i.ah, %i.bl                    ; 2 uses
  store i32 %i.bm, ptr %i.e, align 8, !tbaa !15
  %.not.i.i48 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bn
  %i.bp = sub nsw i64 0, %i.am
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 4 %i.ak, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %i.am, 16
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.br = add i64 %i.aj, %i.b
  %i.bs = add i64 %i.c, %i.k
  %i.bt = sub i64 %i.bs, %i.br
  %diff.check = icmp ugt i64 %i.bt, -32
  br i1 %diff.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.bu = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ak, i64 %i.bu
  %i.bw = and i64 %i.am, 7
  %i.bx = getelementptr i8, ptr %2, i64 %i.bu     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.by ; 2 uses
  %next.gep74 = getelementptr i8, ptr %2, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep74, align 4, !tbaa !12
  %wide.load75 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !12
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !12
  store <4 x i32> %wide.load75, ptr %i.ca, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.preheader ], [ %i.bv, %middle.block ] ; 2 uses
  %.04057.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 4 uses
  %.04256.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bx, %middle.block ] ; 2 uses
  %i.cc = add nsw i64 %.04057.ph, -1
  %xtraiter = and i64 %.04057.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader78, %.lr.ph.prol
  %.058.prol = phi ptr [ %i.ce, %.lr.ph.prol ], [ %.058.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.04057.prol = phi i64 [ %i.cg, %.lr.ph.prol ], [ %.04057.ph, %.lr.ph.preheader78 ]
  %.04256.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.04256.ph, %.lr.ph.preheader78 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader78 ]
  %i.cd = load i32, ptr %.04256.prol, align 4, !tbaa !12
  store i32 %i.cd, ptr %.058.prol, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.058.prol, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04256.prol, i64 4 ; 3 uses
  %i.cg = add i64 %.04057.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !123

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader78
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %.058.unr = phi ptr [ %.058.ph, %.lr.ph.preheader78 ], [ %i.ce, %.lr.ph.prol ]
  %.04057.unr = phi i64 [ %.04057.ph, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %.04256.unr = phi ptr [ %.04256.ph, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.r
  %.042.lcssa = phi ptr [ %2, %bb.r ], [ %i.bx, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ci = ptrtoint ptr %.042.lcssa to i64
  %i.cj = sub i64 %i.j, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 4 %.042.lcssa, i64 %i.cj, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058 = phi ptr [ %i.dg, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04057 = phi i64 [ %i.di, %.lr.ph ], [ %.04057.unr, %.lr.ph.prol.loopexit ]
  %.04256 = phi ptr [ %i.dh, %.lr.ph ], [ %.04256.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ck = load i32, ptr %.04256, align 4, !tbaa !12
  store i32 %i.ck, ptr %.058, align 4, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.04256, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.04256, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %.04256, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.04256, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %.058, i64 20
  %i.cy = getelementptr inbounds nuw i8, ptr %.04256, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.058, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.04256, i64 24
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.058, i64 28
  %i.de = getelementptr inbounds nuw i8, ptr %.04256, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.058, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %.04256, i64 32 ; 2 uses
  %i.di = add i64 %.04057, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.di, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !124

_ZSt4copyIPKjPjET0_T_S4_S3_.exit:                 ; preds = %bb.s, %._crit_edge, %bb.q, %bb.p, %bb.o, %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %._crit_edge ], [ %i.ak, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare noundef i64 @_ZN4llvm18StringTableBuilder3addENS_19CachedHashStringRefEh(ptr noundef nonnull align 8 dereferenceable(62), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc23ProgramSignatureElementELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt21__inplace_stable_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr noundef %1)
  br label %common.ret25

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr noundef %i.g)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %i.g, ptr noundef %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 5
  tail call fastcc void @"_ZSt22__merge_without_bufferIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.j)
  br label %common.ret25
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [32 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_SE_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 192
  br i1 %i.f, label %.lr.ph.i, label %"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit"

.lr.ph.i:                                         ; preds = %bb.a, %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i"
  %i.g = phi i64 [ %i.ah, %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i" ], [ %i.b, %bb.a ]
  %.013.i = phi ptr [ %i.ag, %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i" ], [ %0, %bb.a ] ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.lr.ph.i
  %.022.i.idx.i = phi i64 [ 32, %.lr.ph.i ], [ %.022.i.add.i, %bb.m ] ; 2 uses
  %.pn21.i.i = phi ptr [ %.013.i, %.lr.ph.i ], [ %.022.i.ptr.i, %bb.m ] ; 6 uses
  %.022.i.ptr.i = getelementptr inbounds nuw i8, ptr %.013.i, i64 %.022.i.idx.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.013.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4, !tbaa !12
  %.sroa.31.0.copyload.i.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i.i, align 4, !tbaa !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 36 ; 2 uses
  %i.j = load i32, ptr %.022.i.ptr.i, align 4, !tbaa !12 ; 5 uses
  %i.k = icmp ult i32 %i.j, %.sroa.0.0.copyload.i.i.i
  br i1 %i.k, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %.sroa.0.0.copyload.i.i.i, %i.j
  br i1 %i.l, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.n = icmp ult i32 %i.m, %.sroa.31.0.copyload.i.i.i
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult i32 %.sroa.31.0.copyload.i.i.i, %i.m
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i.i": ; preds = %bb.e
  %i.p = load i32, ptr %i.i, align 4, !tbaa !12
  %i.q = icmp ult i32 %i.p, %.sroa.2.0.copyload.i.i.i
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i.i", %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %.022.i.ptr.i, i64 32, i1 false), !tbaa.struct !51
  %i.r = ptrtoint ptr %.022.i.ptr.i to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 5                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 64
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, ptr noundef nonnull align 4 dereferenceable(1) %.013.i, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.i

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i.i"
  %i.y = icmp eq i64 %i.s, 32
  br i1 %i.y, label %bb.h, label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.z, ptr noundef nonnull align 4 dereferenceable(32) %.013.i, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.013.i, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i.i", %bb.e, %bb.c
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 40
  %.sroa.6.i.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %.sroa.612.0.copyload.i.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn21.i.i, i64 56
  %i.aa = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i"
  %.09.i.i.i = phi ptr [ %.022.i.ptr.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18.i.i" ], [ %.0.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i" ] ; 9 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -32 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0.i.i.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -28
  %.sroa.2.0.copyload.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -12
  %.sroa.31.0.copyload.i.i.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i.i.i, align 4, !tbaa !12 ; 2 uses
  %i.ab = icmp ult i32 %i.j, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp ult i32 %.sroa.0.0.copyload.i.i.i.i, %i.j
  br i1 %i.ac, label %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ult i32 %.sroa.612.0.copyload.i.i.i, %.sroa.31.0.copyload.i.i.i.i
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp uge i32 %.sroa.31.0.copyload.i.i.i.i, %.sroa.612.0.copyload.i.i.i
  %i.af = icmp ult i32 %.sroa.5.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i", label %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i.i.i": ; preds = %bb.l, %bb.k, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.09.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.0.i.i.i, i64 32, i1 false), !tbaa.struct !51
  br label %bb.i, !llvm.loop !0

"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i": ; preds = %bb.l, %bb.j
  store i32 %i.j, ptr %.09.i.i.i, align 4, !tbaa !12
  %.sroa.5.0..09.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i, align 4, !tbaa !12
  %.sroa.6.0..09.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  store <3 x i32> %.sroa.6.i.i.i.sroa.0.0.copyload, ptr %.sroa.6.0..09.sroa_idx.i.i.i, align 4
  %.sroa.612.0..09.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 20
  store i32 %.sroa.612.0.copyload.i.i.i, ptr %.sroa.612.0..09.sroa_idx.i.i.i, align 4, !tbaa !12
  %.sroa.7.0..09.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  store i64 %i.aa, ptr %.sroa.7.0..09.sroa_idx.i.i.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit.i.i", %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.i
  %.022.i.add.i = add nuw nsw i64 %.022.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.022.i.add.i, 224
  br i1 %.not.i.i, label %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i", label %bb.b, !llvm.loop !1

"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i": ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i, i64 224 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = sub i64 %i.a, %i.ah
  %i.aj = icmp sgt i64 %i.ai, 192
  br i1 %i.aj, label %.lr.ph.i, label %"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit", !llvm.loop !128

"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit": ; preds = %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i", %bb.a
  %.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.ag, %"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_.exit.i" ]
  tail call fastcc void @"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %.0.lcssa.i, ptr noundef %1)
  %i.ak = icmp sgt i64 %i.d, 7
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit", %.lr.ph
  %.023 = phi i64 [ %i.am, %.lr.ph ], [ 7, %"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit" ] ; 3 uses
  tail call fastcc void @"_ZSt17__merge_sort_loopIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.023)
  %i.al = shl nuw nsw i64 %.023, 1
  tail call fastcc void @"_ZSt17__merge_sort_loopIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %2, ptr noundef %i.e, ptr noundef %0, i64 noundef %i.al)
  %i.am = shl nsw i64 %.023, 2                    ; 2 uses
  %i.an = icmp slt i64 %i.am, %i.d
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %.lr.ph, %"_ZSt22__chunk_insertion_sortIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #9 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 32
  br i1 %i.e, label %bb.e, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %i.g = icmp ne ptr %1, %0                       ; 2 uses
  %i.h = icmp ne ptr %1, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, %bb.i
  %.026.i = phi ptr [ %i.v, %bb.i ], [ %0, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ] ; 3 uses
  %.01825.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ] ; 6 uses
  %.01924.i = phi ptr [ %.120.i, %bb.i ], [ %1, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.01825.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 4
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 20
  %.sroa.31.0.copyload.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01924.i, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %.01924.i, i64 4
  %i.l = load i32, ptr %.01924.i, align 4, !tbaa !12 ; 2 uses
  %i.m = icmp ult i32 %i.l, %.sroa.0.0.copyload.i.i
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.n = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.l
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %i.p = icmp ult i32 %i.o, %.sroa.31.0.copyload.i.i
  br i1 %i.p, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ult i32 %.sroa.31.0.copyload.i.i, %i.o
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i": ; preds = %bb.h
  %i.r = load i32, ptr %i.k, align 4, !tbaa !12
  %i.s = icmp ult i32 %i.r, %.sroa.2.0.copyload.i.i
  br i1 %i.s, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i", %bb.g, %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i, ptr noundef nonnull align 4 dereferenceable(32) %.01924.i, i64 32, i1 false), !tbaa.struct !51
  %i.t = getelementptr inbounds nuw i8, ptr %.01924.i, i64 32
  br label %bb.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i", %bb.h, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i, ptr noundef nonnull align 4 dereferenceable(32) %.01825.i, i64 32, i1 false), !tbaa.struct !51
  %i.u = getelementptr inbounds nuw i8, ptr %.01825.i, i64 32
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i"
  %.120.i = phi ptr [ %i.t, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i" ], [ %.01924.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i" ] ; 2 uses
  %.1.i = phi ptr [ %.01825.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i" ], [ %i.u, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i" ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.026.i, i64 32 ; 2 uses
  %i.w = icmp ne ptr %.1.i, %i.f                  ; 2 uses
  %i.x = icmp ne ptr %.120.i, %2
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !130

._crit_edge.i:                                    ; preds = %bb.i, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit
  %.018.lcssa.i = phi ptr [ %5, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ], [ %.1.i, %bb.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ], [ %i.v, %bb.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.g, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ], [ %i.w, %bb.i ]
  br i1 %.lcssa.i, label %bb.j, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.j:                                             ; preds = %._crit_edge.i
  %i.z = ptrtoint ptr %i.f to i64
  %i.aa = ptrtoint ptr %.018.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 32
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !40

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i, ptr align 4 %.018.lcssa.i, i64 %i.ab, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.ab, 32
  br i1 %i.ad, label %bb.m, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.0.lcssa.i, ptr noundef nonnull align 4 dereferenceable(32) %.018.lcssa.i, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.n:                                             ; preds = %bb.a
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 7 uses
  %i.ah = icmp sgt i64 %i.ag, 32
  br i1 %i.ah, label %bb.o, label %bb.p, !prof !40

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ag, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20

bb.p:                                             ; preds = %bb.n
  %i.ai = icmp eq i64 %i.ag, 32
  br i1 %i.ai, label %bb.q, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = getelementptr inbounds i8, ptr %5, i64 %i.ag
  %i.ak = icmp eq ptr %0, %1
  br i1 %i.ak, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20
  %i.al = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %bb.t, !prof !40

bb.s:                                             ; preds = %bb.r
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [32 x i8], ptr %2, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %5, i64 %i.ag, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.t:                                             ; preds = %bb.r
  %i.ap = icmp eq i64 %i.ag, 32
  br i1 %i.ap, label %bb.u, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.v:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit20
  %i.ar = icmp eq ptr %2, %1
  br i1 %i.ar, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 -32
  br label %.outer

.outer:                                           ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29", %bb.w
  %.026.i21.ph.pn = phi ptr [ %1, %bb.w ], [ %.026.i21.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29" ] ; 3 uses
  %.024.i.ph = phi ptr [ %i.as, %bb.w ], [ %.024.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29" ]
  %.0.i.ph = phi ptr [ %2, %bb.w ], [ %i.bd, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29" ]
  %.026.i21.ph = getelementptr inbounds i8, ptr %.026.i21.ph.pn, i64 -32 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i23 = getelementptr inbounds i8, ptr %.026.i21.ph.pn, i64 -28
  %.sroa.31.0..sroa_idx.i.i25 = getelementptr inbounds i8, ptr %.026.i21.ph.pn, i64 -12
  br label %bb.x

bb.x:                                             ; preds = %.outer, %bb.af
  %.024.i = phi ptr [ %i.br, %bb.af ], [ %.024.i.ph, %.outer ] ; 8 uses
  %.0.i = phi ptr [ %i.bp, %bb.af ], [ %.0.i.ph, %.outer ] ; 3 uses
  %.sroa.0.0.copyload.i.i22 = load i32, ptr %.026.i21.ph, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0.copyload.i.i24 = load i32, ptr %.sroa.2.0..sroa_idx.i.i23, align 4, !tbaa !12
  %.sroa.31.0.copyload.i.i26 = load i32, ptr %.sroa.31.0..sroa_idx.i.i25, align 4, !tbaa !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.024.i, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  %i.av = load i32, ptr %.024.i, align 4, !tbaa !12 ; 2 uses
  %i.aw = icmp ult i32 %i.av, %.sroa.0.0.copyload.i.i22
  br i1 %i.aw, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = icmp ult i32 %.sroa.0.0.copyload.i.i22, %i.av
  br i1 %i.ax, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.az = icmp ult i32 %i.ay, %.sroa.31.0.copyload.i.i26
  br i1 %i.az, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = icmp ult i32 %.sroa.31.0.copyload.i.i26, %i.ay
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i27"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i27": ; preds = %bb.aa
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !12
  %i.bc = icmp ult i32 %i.bb, %.sroa.2.0.copyload.i.i24
  br i1 %i.bc, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i27", %bb.z, %bb.x
  %i.bd = getelementptr inbounds i8, ptr %.0.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bd, ptr noundef nonnull align 4 dereferenceable(32) %.026.i21.ph, i64 32, i1 false), !tbaa.struct !51
  %i.be = icmp eq ptr %0, %.026.i21.ph
  br i1 %i.be, label %bb.ab, label %.outer, !llvm.loop !131

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i29"
  %i.bf = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %5 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = ashr exact i64 %i.bi, 5                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.ac, label %bb.ad, !prof !40

bb.ac:                                            ; preds = %bb.ab
  %i.bl = sub nsw i64 0, %i.bj
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %5, i64 %i.bi, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.ad:                                            ; preds = %bb.ab
  %i.bn = icmp eq i64 %i.bi, 32
  br i1 %i.bn, label %bb.ae, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.ae:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds i8, ptr %.0.i, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bo, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i27", %bb.aa, %bb.y
  %i.bp = getelementptr inbounds i8, ptr %.0.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, ptr noundef nonnull align 4 dereferenceable(32) %.024.i, i64 32, i1 false), !tbaa.struct !51
  %i.bq = icmp eq ptr %5, %.024.i
  br i1 %i.bq, label %"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i"
  %i.br = getelementptr inbounds i8, ptr %.024.i, i64 -32
  br label %bb.x, !llvm.loop !131

"_ZSt21__move_merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_SE_T1_T2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread34.i", %bb.ae, %bb.ad, %bb.ac, %bb.v, %bb.u, %bb.t, %bb.s, %bb.m, %bb.l, %bb.k, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt17__merge_sort_loopIPN4llvm4dxbc23ProgramSignatureElementES3_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef range(i64 -9223372036854775808, 576460752303423485) %3) unnamed_addr #8 {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 5                           ; 10 uses
  %.idx47 = shl nsw i64 %3, 6                     ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 32
  %i.i = icmp eq i64 %.idx, 32
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us"
  %.055.us = phi ptr [ %i.j, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us" ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %.02054.us = phi ptr [ %i.o, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us" ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.055.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %._crit_edge.i.us
  br i1 %i.g, label %.thread, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.us

.thread:                                          ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.02054.us, ptr noundef nonnull align 4 dereferenceable(32) %.055.us, i64 32, i1 false), !tbaa.struct !51
  %i.k = getelementptr inbounds nuw i8, ptr %.02054.us, i64 %.idx
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.02054.us, ptr align 4 %.055.us, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.us

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.us: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds i8, ptr %.02054.us, i64 %.idx ; 4 uses
  br i1 %i.h, label %bb.f, label %bb.d, !prof !134

bb.d:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.us
  br i1 %i.i, label %bb.e, label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us"

bb.e:                                             ; preds = %.thread, %bb.d
  %i.m = phi ptr [ %i.k, %.thread ], [ %i.l, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.m, ptr noundef nonnull align 4 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us"

bb.f:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.j, i64 %.idx, i1 false)
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us"

"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us": ; preds = %bb.f, %bb.e, %bb.d
  %i.n = phi ptr [ %i.l, %bb.f ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %.idx ; 2 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %.not.us = icmp slt i64 %i.r, %i.a
  br i1 %.not.us, label %._crit_edge, label %._crit_edge.i.us, !llvm.loop !132

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit"
  %.055 = phi ptr [ %i.t, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit" ], [ %0, %.lr.ph ] ; 3 uses
  %.02054 = phi ptr [ %i.av, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit" ], [ %2, %.lr.ph ]
  %i.s = getelementptr inbounds i8, ptr %.055, i64 %.idx ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.055, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.026.i = phi ptr [ %i.ag, %bb.j ], [ %.02054, %.lr.ph.i.preheader ] ; 3 uses
  %.01825.i = phi ptr [ %.1.i, %bb.j ], [ %.055, %.lr.ph.i.preheader ] ; 6 uses
  %.01924.i = phi ptr [ %.120.i, %bb.j ], [ %i.s, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.01825.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 4
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01825.i, i64 20
  %.sroa.31.0.copyload.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01924.i, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.01924.i, i64 4
  %i.w = load i32, ptr %.01924.i, align 4, !tbaa !12 ; 2 uses
  %i.x = icmp ult i32 %i.w, %.sroa.0.0.copyload.i.i
  br i1 %i.x, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.w
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.u, align 4, !tbaa !12   ; 2 uses
  %i.aa = icmp ult i32 %i.z, %.sroa.31.0.copyload.i.i
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp ult i32 %.sroa.31.0.copyload.i.i, %i.z
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i": ; preds = %bb.i
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !12
  %i.ad = icmp ult i32 %i.ac, %.sroa.2.0.copyload.i.i
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i", %bb.h, %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i, ptr noundef nonnull align 4 dereferenceable(32) %.01924.i, i64 32, i1 false), !tbaa.struct !51
  %i.ae = getelementptr inbounds nuw i8, ptr %.01924.i, i64 32
  br label %bb.j

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i", %bb.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i, ptr noundef nonnull align 4 dereferenceable(32) %.01825.i, i64 32, i1 false), !tbaa.struct !51
  %i.af = getelementptr inbounds nuw i8, ptr %.01825.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i"
  %.120.i = phi ptr [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i" ], [ %.01924.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i" ] ; 5 uses
  %.1.i = phi ptr [ %.01825.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i" ], [ %i.af, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i" ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.026.i, i64 32 ; 4 uses
  %i.ah = icmp ne ptr %.1.i, %i.s
  %i.ai = icmp ne ptr %.120.i, %i.t
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !133

._crit_edge.i.loopexit:                           ; preds = %bb.j
  %i.ak = ptrtoint ptr %i.s to i64
  %i.al = ptrtoint ptr %.1.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 32
  br i1 %i.an, label %bb.k, label %bb.l, !prof !40

bb.k:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull align 4 %.1.i, i64 %i.am, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.loopexit
  %i.ao = icmp eq i64 %i.am, 32
  br i1 %i.ao, label %bb.m, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %.1.i, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %i.am ; 3 uses
  %i.aq = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ar = ptrtoint ptr %.120.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp sgt i64 %i.as, 32
  br i1 %i.at, label %bb.n, label %bb.o, !prof !40

bb.n:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %.120.i, i64 %i.as, i1 false)
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit"

bb.o:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i
  %i.au = icmp eq i64 %i.as, 32
  br i1 %i.au, label %bb.p, label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit"

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %.120.i, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit"

"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit": ; preds = %bb.n, %bb.o, %bb.p
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 %i.as ; 2 uses
  %i.aw = sub i64 %i.b, %i.aq
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %.not = icmp slt i64 %i.ax, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !132

._crit_edge:                                      ; preds = %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit", %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us", %bb.a
  %.020.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us" ], [ %i.av, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit" ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us" ], [ %i.t, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit" ] ; 3 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.r, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit.us" ], [ %i.ax, %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit" ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 5
  %i.ay = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx49 ; 5 uses
  %i.az = icmp ne i64 %.sroa.speculated, 0
  %i.ba = icmp ne ptr %i.ay, %1
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i28, label %._crit_edge.i23

.lr.ph.i28:                                       ; preds = %._crit_edge, %bb.t
  %.026.i29 = phi ptr [ %i.bo, %bb.t ], [ %.020.lcssa, %._crit_edge ] ; 3 uses
  %.01825.i30 = phi ptr [ %.1.i40, %bb.t ], [ %.0.lcssa, %._crit_edge ] ; 6 uses
  %.01924.i31 = phi ptr [ %.120.i39, %bb.t ], [ %i.ay, %._crit_edge ] ; 6 uses
  %.sroa.0.0.copyload.i.i32 = load i32, ptr %.01825.i30, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.01825.i30, i64 4
  %.sroa.2.0.copyload.i.i34 = load i32, ptr %.sroa.2.0..sroa_idx.i.i33, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %.01825.i30, i64 20
  %.sroa.31.0.copyload.i.i36 = load i32, ptr %.sroa.31.0..sroa_idx.i.i35, align 4, !tbaa !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01924.i31, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.01924.i31, i64 4
  %i.be = load i32, ptr %.01924.i31, align 4, !tbaa !12 ; 2 uses
  %i.bf = icmp ult i32 %i.be, %.sroa.0.0.copyload.i.i32
  br i1 %i.bf, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i28
  %i.bg = icmp ult i32 %.sroa.0.0.copyload.i.i32, %i.be
  br i1 %i.bg, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !12 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %.sroa.31.0.copyload.i.i36
  br i1 %i.bi, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp ult i32 %.sroa.31.0.copyload.i.i36, %i.bh
  br i1 %i.bj, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i37"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i37": ; preds = %bb.s
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bl = icmp ult i32 %i.bk, %.sroa.2.0.copyload.i.i34
  br i1 %i.bl, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i37", %bb.r, %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i29, ptr noundef nonnull align 4 dereferenceable(32) %.01924.i31, i64 32, i1 false), !tbaa.struct !51
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i31, i64 32
  br label %bb.t

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.i37", %bb.s, %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.026.i29, ptr noundef nonnull align 4 dereferenceable(32) %.01825.i30, i64 32, i1 false), !tbaa.struct !51
  %i.bn = getelementptr inbounds nuw i8, ptr %.01825.i30, i64 32
  br label %bb.t

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41"
  %.120.i39 = phi ptr [ %i.bm, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41" ], [ %.01924.i31, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38" ] ; 3 uses
  %.1.i40 = phi ptr [ %.01825.i30, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread.i41" ], [ %i.bn, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread23.i38" ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i29, i64 32 ; 2 uses
  %i.bp = icmp ne ptr %.1.i40, %i.ay
  %i.bq = icmp ne ptr %.120.i39, %1
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.i28, label %._crit_edge.i23, !llvm.loop !133

._crit_edge.i23:                                  ; preds = %bb.t, %._crit_edge
  %.019.lcssa.i24 = phi ptr [ %i.ay, %._crit_edge ], [ %.120.i39, %bb.t ] ; 3 uses
  %.018.lcssa.i25 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i40, %bb.t ] ; 3 uses
  %.0.lcssa.i26 = phi ptr [ %.020.lcssa, %._crit_edge ], [ %i.bo, %bb.t ] ; 3 uses
  %i.bs = ptrtoint ptr %i.ay to i64
  %i.bt = ptrtoint ptr %.018.lcssa.i25 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, 32
  br i1 %i.bv, label %bb.u, label %bb.v, !prof !40

bb.u:                                             ; preds = %._crit_edge.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i26, ptr align 4 %.018.lcssa.i25, i64 %i.bu, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27

bb.v:                                             ; preds = %._crit_edge.i23
  %i.bw = icmp eq i64 %i.bu, 32
  br i1 %i.bw, label %bb.w, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.0.lcssa.i26, ptr noundef nonnull align 4 dereferenceable(32) %.018.lcssa.i25, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27: ; preds = %bb.w, %bb.v, %bb.u
  %i.bx = getelementptr inbounds i8, ptr %.0.lcssa.i26, i64 %i.bu ; 2 uses
  %i.by = ptrtoint ptr %.019.lcssa.i24 to i64
  %i.bz = sub i64 %i.b, %i.by                     ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, 32
  br i1 %i.ca, label %bb.x, label %bb.y, !prof !40

bb.x:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bx, ptr align 4 %.019.lcssa.i24, i64 %i.bz, i1 false)
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit42"

bb.y:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit.i27
  %i.cb = icmp eq i64 %i.bz, 32
  br i1 %i.cb, label %bb.z, label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit42"

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bx, ptr noundef nonnull align 4 dereferenceable(32) %.019.lcssa.i24, i64 32, i1 false), !tbaa.struct !51
  br label %"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit42"

"_ZSt12__move_mergeIPN4llvm4dxbc23ProgramSignatureElementES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET0_T_SE_SE_SE_SD_T1_.exit42": ; preds = %bb.x, %bb.y, %bb.z
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #9 {
bb.a:
  %2 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not20 = icmp eq ptr %.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.022 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.m ] ; 6 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.022, %bb.m ] ; 6 uses
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.31.0.copyload.i = load i32, ptr %.sroa.31.0..sroa_idx.i, align 4, !tbaa !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.pn21, i64 52 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn21, i64 36 ; 2 uses
  %i.e = load i32, ptr %.022, align 4, !tbaa !12  ; 5 uses
  %i.f = icmp ult i32 %i.e, %.sroa.0.0.copyload.i
  br i1 %i.f, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %.sroa.0.0.copyload.i, %i.e
  br i1 %i.g, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %i.i = icmp ult i32 %i.h, %.sroa.31.0.copyload.i
  br i1 %i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult i32 %.sroa.31.0.copyload.i, %i.h
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit": ; preds = %bb.e
  %i.k = load i32, ptr %i.d, align 4, !tbaa !12
  %i.l = icmp ult i32 %i.k, %.sroa.2.0.copyload.i
  br i1 %i.l, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread": ; preds = %bb.d, %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %.022, i64 32, i1 false), !tbaa.struct !51
  %i.m = ptrtoint ptr %.022 to i64
  %i.n = sub i64 %i.m, %i.b                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 5                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread"
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 64
  %i.r = sub nsw i64 0, %i.o
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.s, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.n, i1 false)
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread"
  %i.t = icmp eq i64 %i.n, 32
  br i1 %i.t, label %bb.h, label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.m

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18": ; preds = %bb.c, %bb.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit"
  %.sroa.5.0.copyload.i = load i32, ptr %i.d, align 4, !tbaa !12 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %.sroa.6.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.612.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 56
  %i.v = load i64, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18"
  %.09.i = phi ptr [ %.022, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread18" ], [ %.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i" ] ; 9 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -32 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.0.i, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.09.i, i64 -28
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.09.i, i64 -12
  %.sroa.31.0.copyload.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  %i.w = icmp ult i32 %i.e, %.sroa.0.0.copyload.i.i
  br i1 %i.w, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.e
  br i1 %i.x, label %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ult i32 %.sroa.612.0.copyload.i, %.sroa.31.0.copyload.i.i
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = icmp uge i32 %.sroa.31.0.copyload.i.i, %.sroa.612.0.copyload.i
  %i.aa = icmp ult i32 %.sroa.5.0.copyload.i, %.sroa.2.0.copyload.i.i
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i", label %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclINS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.thread.i": ; preds = %bb.l, %bb.k, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.09.i, ptr noundef nonnull align 4 dereferenceable(32) %.0.i, i64 32, i1 false), !tbaa.struct !51
  br label %bb.i, !llvm.loop !0

"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit": ; preds = %bb.j, %bb.l
  store i32 %i.e, ptr %.09.i, align 4, !tbaa !12
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..09.sroa_idx.i, align 4, !tbaa !12
  %.sroa.6.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store <3 x i32> %.sroa.6.i.sroa.0.0.copyload, ptr %.sroa.6.0..09.sroa_idx.i, align 4
  %.sroa.612.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 20
  store i32 %.sroa.612.0.copyload.i, ptr %.sroa.612.0..09.sroa_idx.i, align 4, !tbaa !12
  %.sroa.7.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  store i64 %i.v, ptr %.sroa.7.0..09.sroa_idx.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, %"_ZSt25__unguarded_linear_insertIPN4llvm4dxbc23ProgramSignatureElementEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_T0_.exit"
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond78 = or i1 %i.a, %i.b
  br i1 %or.cond78, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread68", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7483 = phi i64 [ %4, %.lr.ph ], [ %i.by, %tailrecurse ] ; 4 uses
  %.tr7382 = phi i64 [ %3, %.lr.ph ], [ %i.bx, %tailrecurse ] ; 4 uses
  %.tr7180 = phi ptr [ %1, %.lr.ph ], [ %.065, %tailrecurse ] ; 10 uses
end_hunk_0
begin_hunk_1_@"_ZSt22__merge_without_bufferIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_":bb.a
  br i1 %i.v, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.s, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.31.0.copyload.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  br label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.thread22.i, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.029.i = phi i64 [ %i.u, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.ap, %.thread22.i ] ; 3 uses
  %.01128.i = phi ptr [ %.tr7180, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.ao, %.thread22.i ] ; 4 uses
  %i.w = lshr i64 %.029.i, 1                      ; 6 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.01128.i, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !12  ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %.sroa.0.0.copyload.i.i
  br i1 %i.ab, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ac = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.aa
  br i1 %i.ac, label %.thread22.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !12  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %.sroa.31.0.copyload.i.i
  br i1 %i.ae, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = icmp ult i32 %.sroa.31.0.copyload.i.i, %i.ad
  br i1 %i.af, label %.thread22.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i"

.thread.i:                                        ; preds = %bb.i, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = xor i64 %i.w, -1
  %i.ai = add nsw i64 %.029.i, %i.ah
  br label %.thread22.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i": ; preds = %bb.j
  %i.aj = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ak = icmp ult i32 %i.aj, %.sroa.2.0.copyload.i.i
  %cond.fr16.i = freeze i1 %i.ak                  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.am = xor i64 %i.w, -1
  %i.an = add nsw i64 %.029.i, %i.am
  %spec.select.i = select i1 %cond.fr16.i, ptr %i.al, ptr %.01128.i
  %spec.select27.i = select i1 %cond.fr16.i, i64 %i.an, i64 %i.w
  br label %.thread22.i

.thread22.i:                                      ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i", %.thread.i, %bb.j, %bb.h
  %i.ao = phi ptr [ %.01128.i, %bb.h ], [ %spec.select.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i" ], [ %.01128.i, %bb.j ], [ %i.ag, %.thread.i ] ; 3 uses
  %i.ap = phi i64 [ %i.w, %bb.h ], [ %spec.select27.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i" ], [ %i.w, %bb.j ], [ %i.ai, %.thread.i ] ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !2

"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %.thread22.i
  %.pre = ptrtoint ptr %i.ao to i64
  br label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.q, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %i.ao, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr7180, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ar = sub i64 %.pre-phi, %i.q
  %i.as = ashr exact i64 %i.ar, 5
  br label %tailrecurse

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.g
  %i.at = sdiv i64 %.tr7483, 2                    ; 2 uses
  %i.au = getelementptr inbounds [32 x i8], ptr %.tr7180, i64 %i.at ; 4 uses
  %i.av = ptrtoint ptr %.tr79 to i64              ; 3 uses
  %i.aw = sub i64 %i.q, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !12 ; 2 uses
  %i.bc = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bd = load i32, ptr %i.ba, align 4
  br label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %.thread.i54, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.028.i = phi i64 [ %i.ax, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %i.bs, %.thread.i54 ] ; 3 uses
  %.01127.i = phi ptr [ %.tr79, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %i.br, %.thread.i54 ] ; 4 uses
  %i.be = lshr i64 %.028.i, 1                     ; 6 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.01127.i, i64 %i.be ; 5 uses
  %.sroa.0.0.copyload.i.i48 = load i32, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.sroa.2.0.copyload.i.i50 = load i32, ptr %.sroa.2.0..sroa_idx.i.i49, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %.sroa.31.0.copyload.i.i52 = load i32, ptr %.sroa.31.0..sroa_idx.i.i51, align 4, !tbaa !12 ; 2 uses
  %i.bg = icmp ult i32 %i.bb, %.sroa.0.0.copyload.i.i48
  br i1 %i.bg, label %.thread.i54, label %bb.k

bb.k:                                             ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %i.bh = icmp ult i32 %.sroa.0.0.copyload.i.i48, %i.bb
  br i1 %i.bh, label %.thread22.i55, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ult i32 %i.bc, %.sroa.31.0.copyload.i.i52
  br i1 %i.bi, label %.thread.i54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp ult i32 %.sroa.31.0.copyload.i.i52, %i.bc
  br i1 %i.bj, label %.thread22.i55, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i"

.thread22.i55:                                    ; preds = %bb.m, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bl = xor i64 %i.be, -1
  %i.bm = add nsw i64 %.028.i, %i.bl
  br label %.thread.i54

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i": ; preds = %bb.m
  %i.bn = icmp ult i32 %i.bd, %.sroa.2.0.copyload.i.i50
  %cond.fr16.i53 = freeze i1 %i.bn
  br i1 %cond.fr16.i53, label %.thread.i54, label %bb.n

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i"
  %i.bo = xor i64 %i.be, -1
  %i.bp = add nsw i64 %.028.i, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  br label %.thread.i54

.thread.i54:                                      ; preds = %bb.n, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i", %.thread22.i55, %bb.l, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %i.br = phi ptr [ %i.bk, %.thread22.i55 ], [ %i.bq, %bb.n ], [ %.01127.i, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45 ], [ %.01127.i, %bb.l ], [ %.01127.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i" ] ; 3 uses
  %i.bs = phi i64 [ %i.bm, %.thread22.i55 ], [ %i.bp, %bb.n ], [ %i.be, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45 ], [ %i.be, %bb.l ], [ %i.be, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i" ] ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !3

"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %.thread.i54
  %.pre87 = ptrtoint ptr %i.br to i64
  br label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi88 = phi i64 [ %.pre87, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.av, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.011.lcssa.i43 = phi ptr [ %i.br, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr79, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.bu = sub i64 %.pre-phi88, %i.av
  %i.bv = ashr exact i64 %i.bu, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit", %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"
  %.066 = phi ptr [ %i.s, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %.011.lcssa.i43, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.065 = phi ptr [ %.011.lcssa.i, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.au, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.036 = phi i64 [ %i.as, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.at, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.r, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.bv, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %i.bw = tail call noundef ptr @_ZNSt3_V28__rotateIPN4llvm4dxbc23ProgramSignatureElementEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %.066, ptr noundef %.tr7180, ptr noundef %.065) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIPN4llvm4dxbc23ProgramSignatureElementElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr noundef %.tr79, ptr noundef %.066, ptr noundef %i.bw, i64 noundef %.0, i64 noundef %.036)
  %i.bx = sub nsw i64 %.tr7382, %.0               ; 2 uses
  %i.by = sub nsw i64 %.tr7483, %.036             ; 2 uses
  %i.bz = icmp eq i64 %i.bx, 0
  %i.ca = icmp eq i64 %i.by, 0
  %or.cond = or i1 %i.bz, %i.ca
  br i1 %or.cond, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread68", label %bb.b

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread68": ; preds = %tailrecurse, %bb.a, %bb.d, %bb.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementESC_EEbT_T0_.exit.thread"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN4llvm4dxbc23ProgramSignatureElementEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 12 uses
  %4 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 12 uses
  %5 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %6 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %7 = alloca %"struct.llvm::dxbc::ProgramSignatureElement", align 4 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %.079.i, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.079.i, ptr noundef nonnull align 4 dereferenceable(32) %.010.i, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.010.i, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %.lr.ph.i, !llvm.loop !135

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.053 = phi ptr [ %0, %bb.d ], [ %.053.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %bb.g

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %.053, i64 32, i1 false), !tbaa.struct !51
  %i.s = getelementptr inbounds nuw i8, ptr %.053, i64 32
  %.idx96 = shl nuw nsw i64 %.085, 5              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.053, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.053, ptr nonnull align 4 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, ptr noundef nonnull align 4 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [32 x i8], ptr %.053, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.1105.epil.init = phi ptr [ %.053, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %.1105.epil.init, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.1105.epil.init, ptr noundef nonnull align 4 dereferenceable(32) %.052106.epil.init, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.052106.epil.init, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.1105.epil.init, i64 32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.1.lcssa = phi ptr [ %.053, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.1105 = phi ptr [ %.053, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %.1105, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.1105, ptr noundef nonnull align 4 dereferenceable(32) %.052106, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.052106, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.1105, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %i.aa, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(32) %i.ab, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ab, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.1105, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 64 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !136

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds [32 x i8], ptr %.053, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !51
  %.idx = shl nuw nsw i64 %.085, 5
  %i.ai = add nsw i64 %.idx, -32                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !40

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 4 %.053, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %.053, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.053, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [32 x i8], ptr %.053, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.2102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.2102.epil.init, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %i.at, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.at, ptr noundef nonnull align 4 dereferenceable(32) %i.au, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.au, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.2.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.053, %._crit_edge.loopexit.unr-lcssa ], [ %.053, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.053.be = phi ptr [ %.1.lcssa, %bb.h ], [ %.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !137

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.2102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.2102, i64 -32 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %i.aw, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aw, ptr noundef nonnull align 4 dereferenceable(32) %i.ax, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ax, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.2102, i64 -64 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %i.ay, i64 32, i1 false), !tbaa.struct !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ay, ptr noundef nonnull align 4 dereferenceable(32) %i.az, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !138

_ZSt11swap_rangesIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ], [ %i.o, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_SE_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 144115188075855872) %6) unnamed_addr #0 {
bb.a:
  %.not94 = icmp sgt i64 %3, %6
  %.not5695 = icmp sgt i64 %4, %6
  %or.cond96 = and i1 %.not94, %.not5695
  br i1 %or.cond96, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bj, %tailrecurse ]
  %.tr87.lcssa = phi ptr [ %1, %bb.a ], [ %.083, %tailrecurse ]
  %.tr89.lcssa = phi i64 [ %3, %bb.a ], [ %i.bi, %tailrecurse ]
  %.tr90.lcssa = phi i64 [ %4, %bb.a ], [ %i.bk, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr noundef %.tr.lcssa, ptr noundef %.tr87.lcssa, ptr noundef %2, i64 noundef %.tr89.lcssa, i64 noundef %.tr90.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90100 = phi i64 [ %4, %.lr.ph ], [ %i.bk, %tailrecurse ] ; 3 uses
  %.tr8999 = phi i64 [ %3, %.lr.ph ], [ %i.bi, %tailrecurse ] ; 3 uses
  %.tr8798 = phi ptr [ %1, %.lr.ph ], [ %.083, %tailrecurse ] ; 5 uses
  %.tr97 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8999, %.tr90100
  %i.c = ptrtoint ptr %.tr8798 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8999, 2                     ; 2 uses
  %i.e = getelementptr inbounds [32 x i8], ptr %.tr97, i64 %i.d ; 4 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.31.0.copyload.i.i = load i32, ptr %.sroa.31.0..sroa_idx.i.i, align 4, !tbaa !12 ; 2 uses
  br label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.thread22.i, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.029.i = phi i64 [ %i.g, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.ab, %.thread22.i ] ; 3 uses
  %.01128.i = phi ptr [ %.tr8798, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.aa, %.thread22.i ] ; 4 uses
  %i.i = lshr i64 %.029.i, 1                      ; 6 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.01128.i, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %i.n = icmp ult i32 %i.m, %.sroa.0.0.copyload.i.i
  br i1 %i.n, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.o = icmp ult i32 %.sroa.0.0.copyload.i.i, %i.m
  br i1 %i.o, label %.thread22.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.q = icmp ult i32 %i.p, %.sroa.31.0.copyload.i.i
  br i1 %i.q, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i32 %.sroa.31.0.copyload.i.i, %i.p
  br i1 %i.r, label %.thread22.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i"

.thread.i:                                        ; preds = %bb.d, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.t = xor i64 %i.i, -1
  %i.u = add nsw i64 %.029.i, %i.t
  br label %.thread22.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i": ; preds = %bb.e
  %i.v = load i32, ptr %i.l, align 4, !tbaa !12
  %i.w = icmp ult i32 %i.v, %.sroa.2.0.copyload.i.i
  %cond.fr16.i = freeze i1 %i.w                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = xor i64 %i.i, -1
  %i.z = add nsw i64 %.029.i, %i.y
  %spec.select.i = select i1 %cond.fr16.i, ptr %i.x, ptr %.01128.i
  %spec.select27.i = select i1 %cond.fr16.i, i64 %i.z, i64 %i.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i", %.thread.i, %bb.e, %bb.c
  %i.aa = phi ptr [ %.01128.i, %bb.c ], [ %spec.select.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i" ], [ %.01128.i, %bb.e ], [ %i.s, %.thread.i ] ; 3 uses
  %i.ab = phi i64 [ %i.i, %bb.c ], [ %spec.select27.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIPNS2_4dxbc23ProgramSignatureElementEKSB_EEbT_RT0_.exit.i" ], [ %i.i, %bb.e ], [ %i.u, %.thread.i ] ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !2

"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %.thread22.i
  %.pre = ptrtoint ptr %i.aa to i64
  br label %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.c, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %i.aa, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr8798, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ad = sub i64 %.pre-phi, %i.c
  %i.ae = ashr exact i64 %i.ad, 5
  br label %tailrecurse

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.af = sdiv i64 %.tr90100, 2                   ; 2 uses
  %i.ag = getelementptr inbounds [32 x i8], ptr %.tr8798, i64 %i.af ; 4 uses
  %i.ah = ptrtoint ptr %.tr97 to i64              ; 3 uses
  %i.ai = sub i64 %i.c, %i.ah
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4            ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4
  br label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %.thread.i72, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.028.i = phi i64 [ %i.aj, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.be, %.thread.i72 ] ; 3 uses
  %.01127.i = phi ptr [ %.tr97, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bd, %.thread.i72 ] ; 4 uses
  %i.aq = lshr i64 %.028.i, 1                     ; 6 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.01127.i, i64 %i.aq ; 5 uses
  %.sroa.0.0.copyload.i.i66 = load i32, ptr %i.ar, align 4, !tbaa !12 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.2.0.copyload.i.i68 = load i32, ptr %.sroa.2.0..sroa_idx.i.i67, align 4, !tbaa !12
  %.sroa.31.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %.sroa.31.0.copyload.i.i70 = load i32, ptr %.sroa.31.0..sroa_idx.i.i69, align 4, !tbaa !12 ; 2 uses
  %i.as = icmp ult i32 %i.an, %.sroa.0.0.copyload.i.i66
  br i1 %i.as, label %.thread.i72, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.at = icmp ult i32 %.sroa.0.0.copyload.i.i66, %i.an
  br i1 %i.at, label %.thread22.i73, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ult i32 %i.ao, %.sroa.31.0.copyload.i.i70
  br i1 %i.au, label %.thread.i72, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = icmp ult i32 %.sroa.31.0.copyload.i.i70, %i.ao
  br i1 %i.av, label %.thread22.i73, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i"

.thread22.i73:                                    ; preds = %bb.h, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = xor i64 %i.aq, -1
  %i.ay = add nsw i64 %.028.i, %i.ax
  br label %.thread.i72

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i": ; preds = %bb.h
  %i.az = icmp ult i32 %i.ap, %.sroa.2.0.copyload.i.i68
  %cond.fr16.i71 = freeze i1 %i.az
  br i1 %cond.fr16.i71, label %.thread.i72, label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i"
  %i.ba = xor i64 %i.aq, -1
  %i.bb = add nsw i64 %.028.i, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %.thread.i72

.thread.i72:                                      ; preds = %bb.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i", %.thread22.i73, %bb.g, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.bd = phi ptr [ %i.aw, %.thread22.i73 ], [ %i.bc, %bb.i ], [ %.01127.i, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63 ], [ %.01127.i, %bb.g ], [ %.01127.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i" ] ; 3 uses
  %i.be = phi i64 [ %i.ay, %.thread22.i73 ], [ %i.bb, %bb.i ], [ %i.aq, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63 ], [ %i.aq, %bb.g ], [ %i.aq, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm6mcdxbc9Signature5writeERNS2_11raw_ostreamEE3$_0EclIKNS2_4dxbc23ProgramSignatureElementEPSB_EEbRT_T0_.exit.i" ] ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !3

"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %.thread.i72
  %.pre108 = ptrtoint ptr %i.bd to i64
  br label %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi109 = phi i64 [ %.pre108, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.ah, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.011.lcssa.i61 = phi ptr [ %i.bd, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr97, %_ZSt9__advanceIPN4llvm4dxbc23ProgramSignatureElementElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.bg = sub i64 %.pre-phi109, %i.ah
  %i.bh = ashr exact i64 %i.bg, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit", %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit"
  %.084 = phi ptr [ %i.e, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %.011.lcssa.i61, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.083 = phi ptr [ %.011.lcssa.i, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.ag, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 3 uses
  %.052 = phi i64 [ %i.ae, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.af, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.d, %"_ZSt13__lower_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ], [ %i.bh, %"_ZSt13__upper_boundIPN4llvm4dxbc23ProgramSignatureElementES2_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %i.bi = sub nsw i64 %.tr8999, %.0               ; 4 uses
  %i.bj = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_lET_S4_S4_S4_T1_S5_T0_S5_(ptr noundef %.084, ptr noundef %.tr8798, ptr noundef %.083, i64 noundef %i.bi, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPN4llvm4dxbc23ProgramSignatureElementElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_6mcdxbc9Signature5writeERNS0_11raw_ostreamEE3$_0EEEvT_SD_SD_T0_SE_T1_SE_T2_"(ptr noundef %.tr97, ptr noundef %.084, ptr noundef %i.bj, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bk = sub nsw i64 %.tr90100, %.052            ; 3 uses
  %.not = icmp sgt i64 %i.bi, %6
  %.not56 = icmp sgt i64 %i.bk, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

end_hunk_1
begin_hunk_2_@_ZSt17__rotate_adaptiveIPN4llvm4dxbc23ProgramSignatureElementES3_lET_S4_S4_S4_T1_S5_T0_S5_:bb.a

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 32
  br i1 %i.x, label %bb.s, label %bb.t, !prof !40

bb.s:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.w, i1 false)
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit37
  %i.y = icmp eq i64 %i.w, 32
  br i1 %i.y, label %bb.u, label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38

_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.z = ashr exact i64 %i.s, 5                   ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !40

bb.v:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [32 x i8], ptr %2, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %5, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit38
  %i.ad = icmp eq i64 %i.s, 32
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  br label %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39

_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [32 x i8], ptr %2, i64 %i.af
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.ah = tail call noundef ptr @_ZNSt3_V28__rotateIPN4llvm4dxbc23ProgramSignatureElementEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit36
  %.0 = phi ptr [ %i.p, %_ZSt4moveIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit36 ], [ %i.ah, %bb.y ], [ %i.ag, %_ZSt13move_backwardIPN4llvm4dxbc23ProgramSignatureElementES3_ET0_T_S5_S4_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !9, i64 8, !9, i64 12}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !13, i64 0}
!17 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_19CachedHashStringRefEhEE", !13, i64 0}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"_ZTSN4llvm8DenseMapINS_19CachedHashStringRefEhNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_hEEEE", !17, i64 0, !18, i64 8, !9, i64 16, !9, i64 20}
!20 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_19CachedHashStringRefEmEE", !13, i64 0}
!21 = !{!"_ZTSN4llvm8DenseMapINS_19CachedHashStringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEEE", !20, i64 0, !18, i64 8, !9, i64 16, !9, i64 20}
!22 = !{!"long", !8, i64 0}
!23 = !{!"_ZTSN4llvm18StringTableBuilder4KindE", !8, i64 0}
!24 = !{!"_ZTSN4llvm5AlignE", !8, i64 0}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"_ZTSN4llvm18StringTableBuilderE", !19, i64 0, !21, i64 24, !22, i64 48, !23, i64 56, !24, i64 60, !25, i64 61}
!27 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !14, i64 0}
!28 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !27, i64 0}
!29 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !28, i64 0}
!30 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !8, i64 0}
!31 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !29, i64 0, !30, i64 16}
!32 = !{!"p1 omnipotent char", !13, i64 0}
!33 = !{!"_ZTSN4llvm9StringRefE", !32, i64 0, !22, i64 8}
!34 = !{!14, !9, i64 12}
!35 = !{!32, !32, i64 0}
!36 = !{!22, !22, i64 0}
!37 = !{!"_ZTSN4llvm4dxbc3PSV12SemanticKindE", !8, i64 0}
!38 = !{!"_ZTSN4llvm4dxbc3PSV13ComponentTypeE", !8, i64 0}
!39 = !{!"_ZTSN4llvm4dxbc3PSV17InterpolationModeE", !8, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"_ZTSN4llvm4dxbc14D3DSystemValueE", !8, i64 0}
!43 = !{!"_ZTSN4llvm4dxbc16SigComponentTypeE", !8, i64 0}
!44 = !{!"_ZTSN4llvm4dxbc15SigMinPrecisionE", !8, i64 0}
!45 = !{!"short", !8, i64 0}
!46 = !{!8, !8, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!43, !43, i64 0}
!49 = !{!45, !45, i64 0}
!50 = !{!44, !44, i64 0}
!51 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !47, i64 16, i64 4, !48, i64 20, i64 4, !12, i64 24, i64 1, !46, i64 25, i64 1, !46, i64 26, i64 2, !49, i64 28, i64 4, !50}
!52 = !{!26, !22, i64 48}
!53 = distinct !{!53, i1 true, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE5beginEv"}
!54 = distinct !{!54, !53, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE5beginEv: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE10begin_implIJLm0ELm1EEEENS2_IJPS7_PSA_EEESt16integer_sequenceImJXspT_EEE"}
!56 = distinct !{!56, !55, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE10begin_implIJLm0ELm1EEEENS2_IJPS7_PSA_EEESt16integer_sequenceImJXspT_EEE: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE3endEv"}
!58 = distinct !{!58, !57, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE3endEv: argument 0"}
!59 = distinct !{!59, i1 true, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE8end_implIJLm0ELm1EEEENS2_IJPS7_PSA_EEESt16integer_sequenceImJXspT_EEE"}
!60 = distinct !{!60, !59, !"_ZN4llvm6detail5zippyINS0_12zip_shortestEJRNS_11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEERNS3_INS_9StringRefELj32EEEEE8end_implIJLm0ELm1EEEENS2_IJPS7_PSA_EEESt16integer_sequenceImJXspT_EEE: argument 0"}
!61 = !{!"_ZTSN4llvm4dxbc3PSV2v011RuntimeInfoE", !8, i64 0, !9, i64 16, !9, i64 20}
!62 = !{!"_ZTSN4llvm4dxbc3PSV2v111RuntimeInfoE", !61, i64 0, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32}
!63 = !{!"_ZTSN4llvm4dxbc3PSV2v211RuntimeInfoE", !62, i64 0, !9, i64 36, !9, i64 40, !9, i64 44}
!64 = !{!"_ZTSN4llvm4dxbc3PSV2v311RuntimeInfoE", !63, i64 0, !9, i64 48}
!65 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4dxbc3PSV2v216ResourceBindInfoEvEE", !14, i64 0}
!66 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v216ResourceBindInfoELb1EEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm15SmallVectorImplINS_4dxbc3PSV2v216ResourceBindInfoEEE", !66, i64 0}
!68 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4dxbc3PSV2v216ResourceBindInfoELj2EEE", !8, i64 0}
!69 = !{!"_ZTSN4llvm11SmallVectorINS_4dxbc3PSV2v216ResourceBindInfoELj2EEE", !67, i64 0, !68, i64 16}
!70 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6mcdxbc19PSVSignatureElementEvEE", !14, i64 0}
!71 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6mcdxbc19PSVSignatureElementELb0EEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm15SmallVectorImplINS_6mcdxbc19PSVSignatureElementEEE", !71, i64 0}
!73 = !{!"_ZTSN4llvm18SmallVectorStorageINS_6mcdxbc19PSVSignatureElementELj1EEE", !8, i64 0}
!74 = !{!"_ZTSN4llvm11SmallVectorINS_6mcdxbc19PSVSignatureElementELj1EEE", !72, i64 0, !73, i64 16}
!75 = !{!"_ZTSSt5arrayIN4llvm11SmallVectorIjLj12EEELm4EE", !8, i64 0}
!76 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj64EEE", !8, i64 0}
!77 = !{!"_ZTSN4llvm11SmallVectorIjLj64EEE", !29, i64 0, !76, i64 16}
!78 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4dxbc3PSV2v016SignatureElementEvEE", !14, i64 0}
!79 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EEE", !78, i64 0}
!80 = !{!"_ZTSN4llvm15SmallVectorImplINS_4dxbc3PSV2v016SignatureElementEEE", !79, i64 0}
!81 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4dxbc3PSV2v016SignatureElementELj32EEE", !8, i64 0}
!82 = !{!"_ZTSN4llvm11SmallVectorINS_4dxbc3PSV2v016SignatureElementELj32EEE", !80, i64 0, !81, i64 16}
!83 = !{!"_ZTSN4llvm6mcdxbc14PSVRuntimeInfoE", !25, i64 0, !64, i64 4, !69, i64 56, !74, i64 120, !74, i64 232, !74, i64 344, !75, i64 456, !31, i64 712, !75, i64 776, !31, i64 1032, !31, i64 1096, !33, i64 1160, !77, i64 1176, !82, i64 1448, !26, i64 1976}
!84 = !{!83, !25, i64 0}
!85 = !{!62, !8, i64 28}
!86 = !{!62, !8, i64 29}
!87 = !{!62, !8, i64 30}
!88 = !{!33, !22, i64 8}
!89 = !{!56, !54}
!90 = !{!60, !58}
!91 = !{!"_ZTSN4llvm4dxbc3PSV2v016SignatureElementE", !9, i64 0, !9, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 10, !8, i64 10, !8, i64 10, !37, i64 11, !38, i64 12, !39, i64 13, !8, i64 14, !8, i64 14, !8, i64 14, !8, i64 15}
!92 = !{!91, !9, i64 0}
!93 = !{!83, !9, i64 52}
!94 = distinct !{!94, !41}
!95 = !{!"_ZTSN4llvm6mcdxbc19PSVSignatureElementE", !33, i64 0, !31, i64 16, !8, i64 80, !8, i64 81, !8, i64 82, !25, i64 83, !37, i64 84, !38, i64 85, !39, i64 86, !8, i64 87, !8, i64 88}
!96 = !{!95, !8, i64 80}
!97 = !{!95, !8, i64 81}
!98 = !{!95, !8, i64 82}
!99 = !{!95, !25, i64 83}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!95, !37, i64 84}
!103 = !{!95, !38, i64 85}
!104 = !{!95, !39, i64 86}
!105 = !{!95, !8, i64 87}
!106 = !{!95, !8, i64 88}
!107 = distinct !{!107, !41}
!108 = !{!"_ZTSN4llvm4dxbc22ProgramSignatureHeaderE", !9, i64 0, !9, i64 4}
!109 = !{!108, !9, i64 0}
!110 = !{!108, !9, i64 4}
!111 = !{!"_ZTSN4llvm6mcdxbc9Signature9ParameterE", !9, i64 0, !33, i64 8, !9, i64 24, !42, i64 28, !43, i64 32, !9, i64 36, !8, i64 40, !8, i64 41, !44, i64 44}
!112 = !{!111, !9, i64 0}
!113 = !{!"_ZTSN4llvm4dxbc23ProgramSignatureElementE", !9, i64 0, !9, i64 4, !9, i64 8, !42, i64 12, !43, i64 16, !9, i64 20, !8, i64 24, !8, i64 25, !45, i64 26, !44, i64 28}
!114 = !{!113, !9, i64 0}
!115 = !{!113, !9, i64 4}
!116 = !{!111, !8, i64 40}
!117 = !{!113, !8, i64 24}
!118 = !{!111, !8, i64 41}
!119 = !{!113, !8, i64 25}
!120 = !{!111, !44, i64 44}
!121 = !{!113, !44, i64 28}
!122 = distinct !{!122, !41, !125, !126}
!123 = distinct !{!123, !127}
!124 = distinct !{!124, !41, !125}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
end_hunk_2
