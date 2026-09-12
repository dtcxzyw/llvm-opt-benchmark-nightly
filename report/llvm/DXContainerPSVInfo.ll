Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DXContainerPSVInfo?download=true
inline.NumInlined: 503
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm6mcdxbc14PSVRuntimeInfo8finalizeENS_6Triple15EnvironmentTypeEj:bb.a
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
  %.068 = phi ptr [ %4, %.lr.ph ], [ %i.bp, %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit ] ; 15 uses
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
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !102
  %.sroa.6.11.insert.ext = zext i8 %i.ai to i64
  %.sroa.6.11.insert.shift = shl nuw nsw i64 %.sroa.6.11.insert.ext, 24
  %.sroa.6.11.insert.insert = or disjoint i64 %.sroa.6.10.insert.insert19, %.sroa.6.11.insert.shift
  %i.aj = getelementptr inbounds nuw i8, ptr %.068, i64 85
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !103
  %.sroa.6.12.insert.ext = zext i8 %i.ak to i64
  %.sroa.6.12.insert.shift = shl nuw nsw i64 %.sroa.6.12.insert.ext, 32
  %i.al = getelementptr inbounds nuw i8, ptr %.068, i64 86
  %i.am = load i8, ptr %i.al, align 2, !tbaa !104
  %.sroa.6.13.insert.ext = zext i8 %i.am to i64
  %.sroa.6.13.insert.shift = shl nuw nsw i64 %.sroa.6.13.insert.ext, 40
  %.sroa.6.13.insert.mask = or disjoint i64 %.sroa.6.11.insert.insert, %.sroa.6.12.insert.shift
  %i.an = getelementptr inbounds nuw i8, ptr %.068, i64 87
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !105
  %i.ap = and i8 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %.068, i64 88
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !106
  %i.as = shl i8 %i.ar, 4
  %i.at = and i8 %i.as, 48
  %i.au = or disjoint i8 %i.at, %i.ap
  %.sroa.6.14.insert.ext24 = zext nneg i8 %i.au to i64
  %.sroa.6.14.insert.shift25 = shl nuw nsw i64 %.sroa.6.14.insert.ext24, 48
  %.sroa.6.14.insert.mask26 = or disjoint i64 %.sroa.6.13.insert.mask, %.sroa.6.13.insert.shift
  %.sroa.6.14.insert.insert27 = or i64 %.sroa.6.14.insert.shift25, %.sroa.6.14.insert.mask26 ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !16  ; 3 uses
  %i.az = icmp ult i32 %i.aw, %i.r
  br i1 %i.az, label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.ba = sub nuw nsw i64 %i.ax, %i.s
  %i.bb = shl nuw nsw i64 %i.s, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %.0614.i = phi i64 [ 0, %.preheader.i ], [ %i.be, %bb.f ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0614.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.bc, ptr readonly %i.ay, i64 %i.bb)
  %i.bd = icmp eq i32 %bcmp.i, 0
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = add i64 %.0614.i, 1                     ; 2 uses
  %.not.i58 = icmp ugt i64 %i.be, %i.ba
  br i1 %.not.i58, label %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread, label %bb.e, !llvm.loop !94

_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread: ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.s
  %i.bh = tail call noundef ptr @_ZN4llvm15SmallVectorImplIjE6insertIPKjvEEPjS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bf, ptr noundef %i.ay, ptr noundef %i.bg) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread
  %.sroa.02.sroa.4.0.in = phi i64 [ %i.ax, %_ZL12FindSequenceN4llvm8ArrayRefIjEES1_.exit.thread ], [ %.0614.i, %bb.e ]
  %.sroa.02.sroa.4.0.insert.ext = shl i64 %.sroa.02.sroa.4.0.in, 32 ; 2 uses
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.bj = load i32, ptr %i.f, align 4, !tbaa !34
  %.not.i59 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i59, label %bb.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.sroa.02.sroa.4.0.insert.ext, i64 %.sroa.6.14.insert.insert27)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %2, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  store i64 %.sroa.02.sroa.4.0.insert.ext, ptr %i.bm, align 1
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.sroa.6.14.insert.insert27, ptr %.sroa.3.0..sroa_idx.i60, align 1
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !15
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.e, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_4dxbc3PSV2v016SignatureElementELb1EE9push_backES4_.exit: ; preds = %bb.h, %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.068, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.a
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
end_hunk_0
