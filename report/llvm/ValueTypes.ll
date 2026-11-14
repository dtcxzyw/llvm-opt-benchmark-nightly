Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTypes?download=true
inline.NumInlined: 805
inline.NumDeleted: 200
begin_hunk_0_@_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 19
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef %i.d, i1 noundef zeroext false)
  ret { i16, ptr } %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.b [
    i8 11, label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
    i8 13, label %bb.c
    i8 12, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i16 @_ZN4llvm3MVT5getVTEPNS_4TypeEb(ptr noundef nonnull %0, i1 noundef zeroext %1)
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.e = lshr i32 %i.b, 8                         ; 3 uses
  %i.f = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.split.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i:                                       ; preds = %bb.c
  %i.h = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true) ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, 10
  br i1 %i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.h to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i:       ; preds = %.split.i.i, %bb.c
  %i.j = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e) #19
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.l = lshr i32 %i.b, 8                         ; 3 uses
  %i.m = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.split.i.i17, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12

.split.i.i17:                                     ; preds = %bb.d
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true) ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 10
  br i1 %i.p, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i18, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12

_ZN4llvm3MVT12getIntegerVTEj.exit.i18:            ; preds = %.split.i.i17
  %switch.idx.cast.i.i19 = trunc nuw nsw i32 %i.o to i16
  %switch.offset.i.i20 = add nuw nsw i16 %switch.idx.cast.i.i19, 2
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12:     ; preds = %.split.i.i17, %bb.d
  %i.q = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.l) #19
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef %i.t, i1 noundef zeroext false) ; 2 uses
  %i.v = extractvalue { i16, ptr } %i.u, 0        ; 3 uses
  %i.w = extractvalue { i16, ptr } %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29   ; 3 uses
  %i.z = load i32, ptr %i.a, align 8
  %i.aa = and i32 %i.z, 255
  %.not = icmp eq i32 %i.aa, 19                   ; 2 uses
  %.sroa.2.0.insert.shift.i.i = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.y to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.v, i32 noundef %i.y)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.v, i32 noundef %i.y)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.04.0.i.i = phi i16 [ %i.ab, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %.not.i = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i, label %bb.h, label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

bb.h:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i16 %i.v, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.ad, align 8
  %i.ae = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.af = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ae, i64 %.sroa.0.0.insert.insert.i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit: ; preds = %bb.h, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12, %_ZN4llvm3MVT12getIntegerVTEj.exit.i18, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.i, %bb.a, %bb.b
  %.sroa.6.0 = phi ptr [ null, %bb.b ], [ null, %_ZN4llvm3MVT12getIntegerVTEj.exit.i18 ], [ null, %bb.a ], [ null, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ], [ %i.j, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.q, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12 ], [ %i.af, %bb.h ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.sroa.0.0 = phi i16 [ %i.c, %bb.b ], [ %switch.offset.i.i20, %_ZN4llvm3MVT12getIntegerVTEj.exit.i18 ], [ 251, %bb.a ], [ %switch.offset.i.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ], [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i12 ], [ 0, %bb.h ], [ %.sroa.04.0.i.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 19
  br i1 %i.h, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor7warningEv() #19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 177
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str, i64 noundef 177) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(177) %i.m, ptr noundef nonnull align 1 dereferenceable(177) @.str, i64 177, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 177
  store ptr %i.t, ptr %i.l, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  ret i32 %i.d
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor7warningEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp eq i32 %i.g, 19
  %.sroa.2.0.insert.shift.i.i = select i1 %i.h, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  ret i64 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [21 x i8], align 16               ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.g = load i16, ptr %1, align 8, !tbaa !23     ; 6 uses
  switch i16 %i.g, label %bb.b [
    i16 12, label %._crit_edge.i.i
    i16 18, label %._crit_edge.i.i64
    i16 250, label %._crit_edge.i.i66
    i16 1, label %._crit_edge.i.i68
    i16 249, label %._crit_edge.i.i70
    i16 248, label %._crit_edge.i.i72
    i16 255, label %._crit_edge.i.i74
    i16 256, label %._crit_edge.i.i76
    i16 266, label %._crit_edge.i.i78
    i16 251, label %._crit_edge.i.i80
    i16 252, label %._crit_edge.i.i82
    i16 254, label %._crit_edge.i.i84
    i16 253, label %._crit_edge.i.i86
    i16 257, label %._crit_edge.i.i88
    i16 258, label %._crit_edge.i.i90
    i16 259, label %._crit_edge.i.i92
    i16 260, label %._crit_edge.i.i94
    i16 261, label %._crit_edge.i.i96
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = add i16 %i.g, -216
  %spec.select.i.i = icmp ult i16 %i.h, 32
  br i1 %spec.select.i.i, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit, label %bb.l

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b
  %i.i = zext nneg i16 %i.g to i64                ; 2 uses
  %i.j = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 16
  %i.l = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.m = getelementptr i8, ptr @_ZZNK4llvm3MVT28getRISCVVectorTupleNumFieldsEvE7NFTable, i64 %i.i
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42    ; 3 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 3                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19, !noalias !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 21 ; 2 uses
  %i.s = icmp ugt i32 %i.q, %i.l
  br i1 %i.s, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.t = udiv i32 %i.l, %i.q
  %i.u = zext nneg i32 %i.t to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  store i8 48, ptr %i.v, align 4, !tbaa !42, !noalias !62
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.r, %.lr.ph.i.preheader ]
  %.0810.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  %i.w = urem i64 %.0810.i, 10
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.y, ptr %i.z, align 1, !tbaa !42, !noalias !62
  %i.aa = udiv i64 %.0810.i, 10
  %.not.i16 = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.v, %.thread.i ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !45, !alias.scope !62
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !47, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !62
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = ptrtoint ptr %.1.lcssa.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.af, ptr %i.e, align 8, !tbaa !48, !noalias !62
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !49, !alias.scope !62
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !48, !noalias !62
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !42, !alias.scope !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %._crit_edge.i
  %i.aj = phi ptr [ %i.ah, %bb.c ], [ %i.ab, %._crit_edge.i ] ; 2 uses
  switch i64 %i.af, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %.1.lcssa.i, align 1, !tbaa !42, !noalias !62
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !42
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %.1.lcssa.i, i64 %i.af, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

_ZN4llvm6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.al = load i64, ptr %i.e, align 8, !tbaa !48, !noalias !62 ; 2 uses
  store i64 %i.al, ptr %i.ac, align 8, !tbaa !47, !alias.scope !62
  %i.am = load ptr, ptr %4, align 8, !tbaa !49, !alias.scope !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19, !noalias !62
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 9) #19, !noalias !63 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !45, !alias.scope !63
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  store ptr %i.aq, ptr %3, align 8, !tbaa !49, !alias.scope !63
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !42
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !42, !alias.scope !63
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = phi i64 [ %i.au, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !47, !alias.scope !63
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !49
  store i64 0, ptr %i.az, align 8, !tbaa !47
  store i8 0, ptr %i.ar, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.bb = add i64 %i.ay, -4611686018427387901
  %i.bc = icmp ult i64 %i.bb, 3
  br i1 %i.bc, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #18, !noalias !64
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, i64 noundef 3) #19, !noalias !64 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !45, !alias.scope !64
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bf, ptr %2, align 8, !tbaa !49, !alias.scope !64
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !42
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !42, !alias.scope !64
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8, !tbaa !47
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.bn = phi i64 [ %i.bj, %bb.h ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !47, !alias.scope !64
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !49
  store i64 0, ptr %i.bo, align 8, !tbaa !47
  store i8 0, ptr %i.bg, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 21 ; 2 uses
  %i.br = icmp eq i8 %i.o, 0
  br i1 %i.br, label %.thread.i27, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %13 = zext i8 %i.o to i64
  br label %.lr.ph.i20

.thread.i27:                                      ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  store i8 48, ptr %i.bs, align 4, !tbaa !42, !noalias !65
  br label %._crit_edge.i24

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20
  %.111.i21 = phi ptr [ %i.bu, %.lr.ph.i20 ], [ %i.bq, %.lr.ph.i20.preheader ]
  %.0810.i22 = phi i64 [ %16, %.lr.ph.i20 ], [ %13, %.lr.ph.i20.preheader ] ; 3 uses
  %14 = urem i64 %.0810.i22, 10
  %15 = trunc nuw nsw i64 %14 to i8
  %i.bt = or disjoint i8 %15, 48
  %i.bu = getelementptr inbounds i8, ptr %.111.i21, i64 -1 ; 3 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !42, !noalias !65
  %16 = udiv i64 %.0810.i22, 10
  %.not.i23.a = icmp samesign ult i64 %.0810.i22, 10
  br i1 %.not.i23.a, label %._crit_edge.i24, label %.lr.ph.i20, !llvm.loop !0

._crit_edge.i24:                                  ; preds = %.lr.ph.i20, %.thread.i27
  %.1.lcssa.i25 = phi ptr [ %i.bs, %.thread.i27 ], [ %i.bu, %.lr.ph.i20 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bv, ptr %5, align 8, !tbaa !45, !alias.scope !65
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !47, !alias.scope !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !65
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = ptrtoint ptr %.1.lcssa.i25 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  store i64 %i.bz, ptr %i.c, align 8, !tbaa !48, !noalias !65
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.i, label %._crit_edge.i.i.i26

bb.i:                                             ; preds = %._crit_edge.i24
  %i.cb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #19 ; 2 uses
  store ptr %i.cb, ptr %5, align 8, !tbaa !49, !alias.scope !65
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !48, !noalias !65
  store i64 %i.cc, ptr %i.bv, align 8, !tbaa !42, !alias.scope !65
  br label %._crit_edge.i.i.i26

._crit_edge.i.i.i26:                              ; preds = %bb.i, %._crit_edge.i24
  %i.cd = phi ptr [ %i.cb, %bb.i ], [ %i.bv, %._crit_edge.i24 ] ; 2 uses
  switch i64 %i.bz, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit28
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i26
  %i.ce = load i8, ptr %.1.lcssa.i25, align 1, !tbaa !42, !noalias !65
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !42
  br label %_ZN4llvm6utostrB5cxx11Emb.exit28

bb.k:                                             ; preds = %._crit_edge.i.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %.1.lcssa.i25, i64 %i.bz, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit28

_ZN4llvm6utostrB5cxx11Emb.exit28:                 ; preds = %._crit_edge.i.i.i26, %bb.j, %bb.k
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !48, !noalias !65 ; 2 uses
  store i64 %i.cf, ptr %i.bw, align 8, !tbaa !47, !alias.scope !65
  %i.cg = load ptr, ptr %5, align 8, !tbaa !49, !alias.scope !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !65
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.ci = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bv
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit28
  %i.ck = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cm = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.be
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %i.be, align 8, !tbaa !42
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.cq = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ap
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cs = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.cu = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cw = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.w

bb.l:                                             ; preds = %bb.b
  %.not.i39 = icmp eq i16 %i.g, 0
  br i1 %.not.i39, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.l
  %i.cy = add i16 %i.g, -19
  %spec.select.i.i40 = icmp ult i16 %i.cy, 197
  br i1 %spec.select.i.i40, label %bb.m, label %bb.o

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8            ; 2 uses
  %i.dd = and i32 %i.dc, 254
  %spec.select.i.i.i = icmp eq i32 %i.dd, 18
  br i1 %spec.select.i.i.i, label %bb.n, label %bb.o

bb.m:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.de = add nsw i16 %i.g, -163
  %spec.select.i.i42 = icmp ult i16 %i.de, 53
  br label %_ZNK4llvm3EVT16isScalableVectorEv.exit

bb.n:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.df = and i32 %i.dc, 19
  %i.dg = icmp eq i32 %i.df, 19
  br label %_ZNK4llvm3EVT16isScalableVectorEv.exit

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %bb.m, %bb.n
  %i.dh = phi i1 [ %spec.select.i.i42, %bb.m ], [ %i.dg, %bb.n ]
  %i.di = select i1 %i.dh, ptr @.str.3, ptr @.str.4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dj = tail call i64 @_ZNK4llvm3EVT21getVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.dk = and i64 %i.dj, 4294967295
  call void @_ZN4llvm6utostrB5cxx11Emb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 noundef %i.dk, i1 noundef zeroext false)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.di, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.dl = call { i16, ptr } @_ZNK4llvm3EVT20getVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.dm = extractvalue { i16, ptr } %i.dl, 0
  store i16 %i.dm, ptr %9, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.do = extractvalue { i16, ptr } %i.dl, 1
  store ptr %i.do, ptr %i.dn, align 8
  call void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.dp = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !42
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.du = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !42
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.dz = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !42
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.w

bb.o:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ee = tail call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.ee, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ef = tail call { i64, i8 } @_ZNK4llvm3EVT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.fca.1.extract6 = extractvalue { i64, i8 } %i.ef, 1
  %i.eg = trunc nuw i8 %.fca.1.extract6 to i1
  br i1 %i.eg, label %bb.q, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.32) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.p
end_hunk_0
