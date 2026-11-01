Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryStreamReader?download=true
inline.NumInlined: 599
inline.NumDeleted: 299
begin_hunk_0
@_ZN4llvm18BinaryStreamReaderC1ENS_9StringRefENS_10endiannessE = unnamed_addr alias void (ptr, ptr, i64, i32), ptr @_ZN4llvm18BinaryStreamReaderC2ENS_9StringRefENS_10endiannessE

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReaderC2ENS_15BinaryStreamRefE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !23
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !25
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !25
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit

_ZN4llvm15BinaryStreamRefC2ERKS0_.exit:           ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.l, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReaderC2ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm15BinaryStreamRefC1ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !38
  ret void
}

declare void @_ZN4llvm15BinaryStreamRefC1ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReaderC2ENS_8ArrayRefIhEENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0, ptr %1, i64 %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm15BinaryStreamRefC1ENS_8ArrayRefIhEENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %1, i64 %2, i32 noundef %3) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN4llvm15BinaryStreamRefC1ENS_8ArrayRefIhEENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReaderC2ENS_9StringRefENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0, ptr %1, i64 %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm15BinaryStreamRefC1ENS_9StringRefENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %1, i64 %2, i32 noundef %3) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !38
  ret void
}

declare void @_ZN4llvm15BinaryStreamRefC1ENS_9StringRefENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader26readLongestContiguousChunkERNS_8ArrayRefIhEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  tail call void @_ZNK4llvm15BinaryStreamRef26readLongestContiguousChunkEmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %i.d = load ptr, ptr %0, align 8, !tbaa !41
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit5, label %bb.a

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = load i64, ptr %i.b, align 8, !tbaa !38
  %i.h = add i64 %i.g, %i.f
  store i64 %i.h, ptr %i.b, align 8, !tbaa !38
  br label %bb.a

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit5
  ret void
}

declare void @_ZNK4llvm15BinaryStreamRef26readLongestContiguousChunkEmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = zext i32 %3 to i64                       ; 2 uses
  tail call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.c, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %i.e = load ptr, ptr %0, align 8, !tbaa !41
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit6, label %bb.a

_ZN4llvm5ErrorD2Ev.exit6:                         ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.f = load i64, ptr %i.b, align 8, !tbaa !38
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.b, align 8, !tbaa !38
  br label %bb.a

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit6
  ret void
}

declare void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader11readULEB128ERm(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 10, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !79
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.g = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !79
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge.loopexit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !79
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.e, align 8, !tbaa !38, !noalias !79
  %i.j = load ptr, ptr %4, align 8, !tbaa !49
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !48
  %.not.i4 = icmp ult i64 %i.l, %i.m
  br i1 %.not.i4, label %bb.d, label %bb.c, !prof !50

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 %i.k, ptr %i.o, align 1
  %i.p = load i64, ptr %i.b, align 8, !tbaa !47
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.b, align 8, !tbaa !47
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit: ; preds = %bb.c, %bb.d
  %i.r = load ptr, ptr %4, align 8, !tbaa !49
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %.not = icmp sgt i8 %i.s, -1
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !77

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !46     ; 3 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %_ZN4llvm5ErrorD2Ev.exit6, label %.lr.ph, !prof !52

bb.f:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %.031.i11, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 7
  %i.x = icmp eq ptr %5, %i.v
  br i1 %i.x, label %_ZN4llvm5ErrorD2Ev.exit6, label %.lr.ph, !prof !53, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.029.i12 = phi i64 [ %.130.i, %bb.f ], [ 0, %bb.e ]
  %.031.i11 = phi ptr [ %5, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %indvars.iv10 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %i.y = load i8, ptr %.031.i11, align 1, !tbaa !24 ; 2 uses
  %i.z = and i8 %i.y, 127                         ; 3 uses
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = icmp samesign ugt i64 %indvars.iv10, 62
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i64 %indvars.iv10, 63
  %.not.i5 = icmp samesign ugt i8 %i.z, 1
  %i.ac = icmp ne i8 %i.z, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i5, i1 %i.ac
  br i1 %or.cond43.i, label %_ZN4llvm5ErrorD2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ad = icmp samesign ult i64 %indvars.iv10, 64
  %i.ae = shl i64 %i.aa, %indvars.iv10
  %i.af = select i1 %i.ad, i64 %i.ae, i64 0, !prof !50
  %.130.i = add i64 %i.af, %.029.i12              ; 2 uses
  %i.ag = icmp slt i8 %i.y, 0
  br i1 %i.ag, label %bb.f, label %._ZN4llvm5ErrorD2Ev.exit6_crit_edge, !llvm.loop !78

._ZN4llvm5ErrorD2Ev.exit6_crit_edge:              ; preds = %bb.h
  br label %_ZN4llvm5ErrorD2Ev.exit6, !llvm.loop !78

_ZN4llvm5ErrorD2Ev.exit6:                         ; preds = %bb.g, %bb.f, %._ZN4llvm5ErrorD2Ev.exit6_crit_edge, %bb.e
  %.3.i = phi i64 [ %.130.i, %._ZN4llvm5ErrorD2Ev.exit6_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i64 %.3.i, ptr %2, align 8, !tbaa !55
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN4llvm5ErrorD2Ev.exit6
  %i.ah = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.t, %_ZN4llvm5ErrorD2Ev.exit6 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIhLj10EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #14
  br label %_ZN4llvm11SmallVectorIhLj10EED2Ev.exit

_ZN4llvm11SmallVectorIhLj10EED2Ev.exit:           ; preds = %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader11readSLEB128ERl(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 10, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !84
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.g = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !84
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge.loopexit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !84
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.e, align 8, !tbaa !38, !noalias !84
  %i.j = load ptr, ptr %4, align 8, !tbaa !49
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !48
  %.not.i4 = icmp ult i64 %i.l, %i.m
  br i1 %.not.i4, label %bb.d, label %bb.c, !prof !50

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 %i.k, ptr %i.o, align 1
  %i.p = load i64, ptr %i.b, align 8, !tbaa !47
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.b, align 8, !tbaa !47
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit: ; preds = %bb.c, %bb.d
  %i.r = load ptr, ptr %4, align 8, !tbaa !49
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %.not = icmp sgt i8 %i.s, -1
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !82

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !46     ; 3 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %_ZN4llvm5ErrorD2Ev.exit5, label %.lr.ph, !prof !52

bb.f:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.050.i13, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv16, 7
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_ZN4llvm5ErrorD2Ev.exit5, label %.lr.ph, !prof !53, !llvm.loop !83

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.045.i14 = phi i64 [ %.146.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.050.i13 = phi ptr [ %i.x, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %indvars.iv16 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.z = load i8, ptr %.050.i13, align 1, !tbaa !24 ; 4 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i64               ; 2 uses
  %i.ac = icmp samesign ugt i64 %indvars.iv16, 62
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %.lr.ph
  %i.ad = icmp eq i64 %indvars.iv16, 63
  br i1 %i.ad, label %switch.early.test.i, label %.critedge66.i

switch.early.test.i:                              ; preds = %bb.g
  switch i8 %i.z, label %_ZN4llvm5ErrorD2Ev.exit5 [
    i8 -1, label %bb.h
    i8 -128, label %bb.h
    i8 127, label %bb.h
    i8 0, label %bb.h
  ]

.critedge66.i:                                    ; preds = %bb.g
  %i.ae = icmp slt i64 %.045.i14, 0
  %i.af = select i1 %i.ae, i64 127, i64 0
  %.not58.i = icmp eq i64 %i.af, %i.ab
  br i1 %.not58.i, label %bb.h, label %_ZN4llvm5ErrorD2Ev.exit5

bb.h:                                             ; preds = %.critedge66.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.ag = icmp samesign ult i64 %indvars.iv16, 64
  %i.ah = shl i64 %i.ab, %indvars.iv16
  %i.ai = select i1 %i.ag, i64 %i.ah, i64 0, !prof !50
  %.146.i = or i64 %i.ai, %.045.i14               ; 2 uses
  %i.aj = icmp slt i8 %i.z, 0
  br i1 %i.aj, label %bb.f, label %bb.i, !llvm.loop !83

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp samesign ugt i64 %indvars.iv16, 56
  %.not61.i = icmp samesign ult i8 %i.z, 64
  %or.cond.i = select i1 %i.ak, i1 true, i1 %.not61.i
  %i.al = shl nsw i64 -128, %indvars.iv16
  %i.am = select i1 %or.cond.i, i64 0, i64 %i.al
  %.3.i = or i64 %.146.i, %i.am
  br label %_ZN4llvm5ErrorD2Ev.exit5

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %switch.early.test.i, %.critedge66.i, %bb.f, %bb.e, %bb.i
  %.249.i = phi i64 [ %.3.i, %bb.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge66.i ], [ 0, %switch.early.test.i ]
  store i64 %.249.i, ptr %2, align 8, !tbaa !55
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN4llvm5ErrorD2Ev.exit5
  %i.an = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.t, %_ZN4llvm5ErrorD2Ev.exit5 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIhLj10EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.an) #14
  br label %_ZN4llvm11SmallVectorIhLj10EED2Ev.exit

_ZN4llvm11SmallVectorIhLj10EED2Ev.exit:           ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader11readCStringERNS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef", align 8    ; 7 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZNK4llvm15BinaryStreamRef26readLongestContiguousChunkEmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.d = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !95
  %.not.i42 = icmp eq ptr %i.d, null
  br i1 %.not.i42, label %_ZN4llvm5ErrorD2Ev.exit.lr.ph, label %.critedge.thread

_ZN4llvm5ErrorD2Ev.exit.lr.ph:                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_ZN4llvm5ErrorD2Ev.exit

.critedge.thread:                                 ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.critedge22

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit.lr.ph, %.critedge
  %i.f = phi i64 [ %i.b, %_ZN4llvm5ErrorD2Ev.exit.lr.ph ], [ %i.i, %.critedge ]
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44, !noalias !96 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !96
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !38, !noalias !96
  %.not38 = icmp eq i64 %i.g, 0
  br i1 %.not38, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.j = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.k = call ptr @memchr(ptr noundef %i.j, i32 noundef 0, i64 noundef %i.g) #14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %or.cond = or i1 %.not.i.i.i, %.not
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !97

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZNK4llvm15BinaryStreamRef26readLongestContiguousChunkEmRNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.o = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !98
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge.thread

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.p = add i64 %i.n, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  store i64 %i.b, ptr %i.a, align 8, !tbaa !38
  %i.q = sub i64 %i.p, %i.b
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !99
  %i.r = and i64 %i.q, 4294967295
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.b, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  %i.s = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !100
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4llvm5ErrorD2Ev.exit25, label %_ZN4llvm18BinaryStreamReader15readFixedStringERNS_9StringRefEj.exit.thread

_ZN4llvm18BinaryStreamReader15readFixedStringERNS_9StringRefEj.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !99
  br label %.critedge22

_ZN4llvm5ErrorD2Ev.exit25:                        ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !49, !noalias !99
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44, !noalias !99
  store ptr %i.t, ptr %2, align 8, !tbaa !56, !noalias !99
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !99
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !38
  br label %.critedge22

.critedge22:                                      ; preds = %_ZN4llvm18BinaryStreamReader15readFixedStringERNS_9StringRefEj.exit.thread, %.critedge.thread, %_ZN4llvm5ErrorD2Ev.exit25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader15readFixedStringERNS_9StringRefEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !103
  %i.d = zext i32 %3 to i64                       ; 2 uses
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.c, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.e = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !103
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit5, label %.critedge

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !103
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.b, align 8, !tbaa !38, !noalias !103
  %i.h = load ptr, ptr %4, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  store ptr %i.h, ptr %2, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BinaryStreamReader14readWideStringERNS_8ArrayRefItEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef", align 8    ; 6 uses
  %4 = alloca %"class.llvm::ArrayRef", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !123
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.b, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.d = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !124
  %.not.i.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i.i23, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm18BinaryStreamReader10readObjectItEENS_5ErrorERPKT_.exit.thread

_ZN4llvm18BinaryStreamReader10readObjectItEENS_5ErrorERPKT_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !125
  br label %.critedge14

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %.01224 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !126
  %i.f = add i64 %i.e, 2                          ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !38, !noalias !126
  %i.g = load ptr, ptr %4, align 8, !tbaa !49, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !125
  %i.h = load i16, ptr %i.g, align 2, !tbaa !128
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.j = add i64 %.01224, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !129
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.f, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.k = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !130
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm18BinaryStreamReader10readObjectItEENS_5ErrorERPKT_.exit.thread, !llvm.loop !116

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  store i64 %i.b, ptr %i.a, align 8, !tbaa !38
  %i.l = trunc i64 %.01224 to i32                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !131
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm18BinaryStreamReader9readArrayItEENS_5ErrorERNS_8ArrayRefIT_EEj.exit.thread20, label %bb.d

_ZN4llvm18BinaryStreamReader9readArrayItEENS_5ErrorERNS_8ArrayRefIT_EEj.exit.thread20: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !131
end_hunk_0
