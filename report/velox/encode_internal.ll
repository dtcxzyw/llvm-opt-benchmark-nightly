inline.NumInlined: 704
inline.NumDeleted: 166
begin_hunk_0_@_ZN5arrow7compute12EncoderNulls14EncodeSelectedEPNS0_12RowTableImplERKSt6vectorINS0_14KeyColumnArrayESaIS5_EEjPKt:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us, !llvm.loop !135

..loopexit_crit_edge.us.loopexit:                 ; preds = %bb.c
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !12
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !15
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph29.split.us
  %i.az = phi ptr [ %.pre33, %..loopexit_crit_edge.us.loopexit ], [ %i.u, %.lr.ph29.split.us ] ; 2 uses
  %i.ba = phi ptr [ %.pre, %..loopexit_crit_edge.us.loopexit ], [ %i.v, %.lr.ph29.split.us ] ; 2 uses
  %i.bb = add nuw i64 %.027.us, 1                 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 72
  %i.bg = icmp ult i64 %i.bb, %i.bf
  br i1 %i.bg, label %.lr.ph29.split.us, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph29, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !26, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !41, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !41, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  br label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_(ptr dead_on_unwind noalias writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.arrow::compute::KeyColumnMetadata", align 4 ; 5 uses
  %4 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ne i32 %i.e, 0
  %not. = xor i1 %i.c, true
  %or.cond.i = select i1 %not., i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.h = load i8, ptr %i.g, align 1, !range !28
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %or.cond.i, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !187
  store i8 1, ptr %3, align 4, !tbaa !26, !noalias !187
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !42, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !187
  call void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 1), !noalias !187
  call void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !187
  br label %bb.c

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !20
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !41, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load i64, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr i8, ptr %1, i64 32
  %.val5 = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr i8, ptr %1, i64 68
  %.val6 = load i32, ptr %i.m, align 4, !tbaa !3
  %.val7 = load i64, ptr %2, align 8, !tbaa !34
  %i.n = trunc i64 %.val4 to i32
  tail call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7, i32 noundef %i.n, ptr noundef %.val, ptr noundef %.val5, i32 noundef %.val6)
  br label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute14EncoderInteger6DecodeEjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEPNS0_12LightContextES6_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.arrow::compute::KeyColumnMetadata", align 4 ; 5 uses
  %8 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 4 uses
  %9 = alloca %"class.arrow::compute::KeyColumnArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i.i, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !41, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, label %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit

_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !190
  store i8 1, ptr %7, align 4, !tbaa !26, !noalias !190
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !42, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !190
  call void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef 1), !noalias !190
  call void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::KeyColumnArray") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !190
  %.sroa.11.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.sroa.11.0.copyload.pre = load i64, ptr %.sroa.11.0..sroa_idx.phi.trans.insert, align 8, !tbaa !24
  %.sroa.8119.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 52
  %.sroa.8119.0.copyload.pre = load i32, ptr %.sroa.8119.0..sroa_idx.phi.trans.insert, align 4, !tbaa !3
  %.sroa.5113.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.5113.0.copyload.pre = load ptr, ptr %.sroa.5113.0..sroa_idx.phi.trans.insert, align 8
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.b

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread: ; preds = %bb.a, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit
  %.sroa.4.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload111 = load ptr, ptr %.sroa.4.0..sroa_idx110, align 8
  %.sroa.5113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5113.0.copyload115 = load ptr, ptr %.sroa.5113.0..sroa_idx114, align 8
  %.sroa.11.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.11.0.copyload125 = load i64, ptr %.sroa.11.0..sroa_idx124, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %.sroa.11.0.copyload125, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ]
  %.sroa.8119.0 = phi i32 [ %.sroa.8119.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %i.e, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ] ; 7 uses
  %.sroa.5113.0 = phi ptr [ %.sroa.5113.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %.sroa.5113.0.copyload115, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ] ; 50 uses
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload.pre, %_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_.exit ], [ %.sroa.4.0.copyload111, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit.thread ]
  %.sroa.5113.0261 = ptrtoaddr ptr %.sroa.5113.0 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !88, !range !28, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64   ; 25 uses
  %i.p = icmp eq i32 %.sroa.8119.0, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 5 uses
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.e, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !67, !range !28, !noundef !29
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.x, %bb.e ], [ null, %bb.d ]
  %i.y = mul i32 %.sroa.8119.0, %0
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.z
  %i.ab = mul i32 %.sroa.8119.0, %1
  %i.ac = zext i32 %i.ab to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.5113.0, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit101, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !67, !range !28, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %i.af, ptr %i.ah, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit101

_ZNK5arrow7compute12RowTableImpl4dataEi.exit101:  ; preds = %bb.f, %bb.g
  %.0.i100 = phi ptr [ %i.ai, %bb.g ], [ null, %bb.f ] ; 6 uses
  %.0.i100262 = ptrtoaddr ptr %.0.i100 to i64
  %i.aj = zext i32 %0 to i64                      ; 6 uses
  %i.ak = zext i32 %i.o to i64
  %i.al = mul nuw nsw i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i100, i64 %i.al
  %i.an = zext i32 %2 to i64                      ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 38 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.8119.0)
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %.split, label %.loopexit

.split:                                           ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit101
  %i.ar = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.8119.0, i1 true)
  switch i32 %i.ar, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader128
    i32 2, label %.preheader130
    i32 3, label %.preheader132
  ]

.preheader132:                                    ; preds = %.split
  %.not160 = icmp eq i32 %1, 0
  br i1 %.not160, label %.loopexit, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.preheader132
  %wide.trip.count190 = zext i32 %1 to i64        ; 2 uses
  %xtraiter320 = and i64 %wide.trip.count190, 3   ; 3 uses
  %i.as = icmp ult i32 %1, 4
  br i1 %i.as, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter324 = and i64 %wide.trip.count190, 4294967292
  br label %.lr.ph150

.preheader130:                                    ; preds = %.split
  %.not161 = icmp eq i32 %1, 0
  br i1 %.not161, label %.loopexit, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.preheader130
  %wide.trip.count195 = zext i32 %1 to i64        ; 7 uses
  %min.iters.check = icmp ugt i32 %1, 39
  %ident.check.not = icmp eq i32 %i.o, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph152.preheader294

vector.memcheck:                                  ; preds = %.lr.ph152.preheader
  %i.at = shl nuw nsw i64 %wide.trip.count195, 2
  %scevgep = getelementptr i8, ptr %.sroa.5113.0, i64 %i.at
  %i.au = getelementptr i8, ptr %.0.i100, i64 %i.an
  %scevgep230 = getelementptr i8, ptr %i.au, i64 %i.aj
  %i.av = getelementptr i8, ptr %.0.i100, i64 %i.an
  %i.aw = getelementptr i8, ptr %i.av, i64 %wide.trip.count195
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.aj
  %scevgep231 = getelementptr i8, ptr %i.ax, i64 3
  %bound0 = icmp ult ptr %.sroa.5113.0, %scevgep231
  %bound1 = icmp ult ptr %scevgep230, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph152.preheader294, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count195, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.ay = and i64 %index, 4294967288
  %i.az = and i64 %index, 4294967288
  %i.ba = and i64 %index, 4294967288
  %i.bb = and i64 %index, 4294967288
  %i.bc = and i64 %index, 4294967288
  %i.bd = and i64 %index, 4294967288
  %i.be = and i64 %index, 4294967288
  %i.bf = and i64 %index, 4294967288
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ba
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bb
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.be
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bf
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 7
  %i.bv = load i32, ptr %i.bg, align 4, !tbaa !3, !alias.scope !195
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !3, !alias.scope !195
  %i.bx = load i32, ptr %i.bk, align 4, !tbaa !3, !alias.scope !195
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !3, !alias.scope !195
  %i.bz = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 3
  %i.cd = load i32, ptr %i.bo, align 4, !tbaa !3, !alias.scope !195
  %i.ce = load i32, ptr %i.bq, align 4, !tbaa !3, !alias.scope !195
  %i.cf = load i32, ptr %i.bs, align 4, !tbaa !3, !alias.scope !195
  %i.cg = load i32, ptr %i.bu, align 4, !tbaa !3, !alias.scope !195
  %i.ch = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ce, i64 1
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cf, i64 2
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.cg, i64 3
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %i.cc, ptr %i.cl, align 4, !tbaa !3, !alias.scope !198, !noalias !195
  store <4 x i32> %i.ck, ptr %i.cm, align 4, !tbaa !3, !alias.scope !198, !noalias !195
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count195
  br i1 %cmp.n, label %.loopexit, label %.lr.ph152.preheader294

.lr.ph152.preheader294:                           ; preds = %vector.memcheck, %.lr.ph152.preheader, %middle.block
  %indvars.iv192.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph152.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter326 = and i64 %wide.trip.count195, 3   ; 2 uses
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.lr.ph152.prol.loopexit, label %.lr.ph152.prol

.lr.ph152.prol:                                   ; preds = %.lr.ph152.preheader294, %.lr.ph152.prol
  %indvars.iv192.prol = phi i64 [ %indvars.iv.next193.prol, %.lr.ph152.prol ], [ %indvars.iv192.ph, %.lr.ph152.preheader294 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph152.prol ], [ 0, %.lr.ph152.preheader294 ]
  %i.co = trunc nuw i64 %indvars.iv192.prol to i32
  %i.cp = mul i32 %i.o, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv192.prol
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !3
  %indvars.iv.next193.prol = add nuw nsw i64 %indvars.iv192.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter326
  br i1 %prol.iter.cmp.not, label %.lr.ph152.prol.loopexit, label %.lr.ph152.prol, !llvm.loop !201

.lr.ph152.prol.loopexit:                          ; preds = %.lr.ph152.prol, %.lr.ph152.preheader294
  %indvars.iv192.unr = phi i64 [ %indvars.iv192.ph, %.lr.ph152.preheader294 ], [ %indvars.iv.next193.prol, %.lr.ph152.prol ]
  %i.cu = sub nsw i64 %indvars.iv192.ph, %wide.trip.count195
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %.loopexit, label %.lr.ph152

.preheader128:                                    ; preds = %.split
  %.not162 = icmp eq i32 %1, 0
  br i1 %.not162, label %.loopexit, label %iter.check.a

iter.check.a:                                     ; preds = %.preheader128
  %wide.trip.count200 = zext i32 %1 to i64        ; 7 uses
  %min.iters.check242 = icmp ugt i32 %1, 23
  %ident.check233.not = icmp eq i32 %i.o, 1
  %or.cond291 = and i1 %min.iters.check242, %ident.check233.not
  br i1 %or.cond291, label %vector.memcheck234, label %.lr.ph154.preheader

vector.memcheck234:                               ; preds = %iter.check.a
  %i.cw = shl nuw nsw i64 %wide.trip.count200, 1
  %scevgep235 = getelementptr i8, ptr %.sroa.5113.0, i64 %i.cw
  %i.cx = getelementptr i8, ptr %.0.i100, i64 %i.an
  %scevgep236 = getelementptr i8, ptr %i.cx, i64 %i.aj
  %i.cy = getelementptr i8, ptr %.0.i100, i64 %i.an
  %i.cz = getelementptr i8, ptr %i.cy, i64 %wide.trip.count200
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.aj
  %scevgep237 = getelementptr i8, ptr %i.da, i64 1
  %bound0238 = icmp ult ptr %.sroa.5113.0, %scevgep237
  %bound1239 = icmp ult ptr %scevgep236, %scevgep235
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph154.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck234
  %n.vec246 = and i64 %wide.trip.count200, 4294967288 ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next249, %vector.body247 ] ; 10 uses
  %i.db = and i64 %index248, 4294967288
  %i.dc = and i64 %index248, 4294967288
  %i.dd = and i64 %index248, 4294967288
  %i.de = and i64 %index248, 4294967288
  %i.df = and i64 %index248, 4294967288
  %i.dg = and i64 %index248, 4294967288
  %i.dh = and i64 %index248, 4294967288
  %i.di = and i64 %index248, 4294967288
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.db
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dc
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dd
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.de
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.df
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dg
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dh
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.di
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 7
  %i.dy = load i16, ptr %i.dj, align 2, !tbaa !133, !alias.scope !202
  %i.dz = load i16, ptr %i.dl, align 2, !tbaa !133, !alias.scope !202
  %i.ea = load i16, ptr %i.dn, align 2, !tbaa !133, !alias.scope !202
  %i.eb = load i16, ptr %i.dp, align 2, !tbaa !133, !alias.scope !202
  %i.ec = load i16, ptr %i.dr, align 2, !tbaa !133, !alias.scope !202
  %i.ed = load i16, ptr %i.dt, align 2, !tbaa !133, !alias.scope !202
  %i.ee = load i16, ptr %i.dv, align 2, !tbaa !133, !alias.scope !202
  %i.ef = load i16, ptr %i.dx, align 2, !tbaa !133, !alias.scope !202
  %i.eg = insertelement <8 x i16> poison, i16 %i.dy, i64 0
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.dz, i64 1
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ea, i64 2
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 3
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ec, i64 4
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ed, i64 5
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 6
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 7
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %index248
  store <8 x i16> %i.en, ptr %i.eo, align 2, !tbaa !133, !alias.scope !205, !noalias !202
  %index.next249 = add nuw i64 %index248, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next249, %n.vec246
  br i1 %i.ep, label %vec.epilog.middle.block.a, label %vector.body247, !llvm.loop !207

vec.epilog.middle.block.a:                        ; preds = %vector.body247
  %cmp.n256 = icmp eq i64 %n.vec246, %wide.trip.count200
  br i1 %cmp.n256, label %.loopexit, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %vector.memcheck234, %iter.check.a, %vec.epilog.middle.block.a
  %indvars.iv197.ph = phi i64 [ 0, %vector.memcheck234 ], [ 0, %iter.check.a ], [ %n.vec246, %vec.epilog.middle.block.a ] ; 3 uses
  %xtraiter328 = and i64 %wide.trip.count200, 3   ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.lr.ph154.prol.loopexit, label %.lr.ph154.prol

.lr.ph154.prol:                                   ; preds = %.lr.ph154.preheader, %.lr.ph154.prol
  %indvars.iv197.prol = phi i64 [ %indvars.iv.next198.prol, %.lr.ph154.prol ], [ %indvars.iv197.ph, %.lr.ph154.preheader ] ; 3 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %.lr.ph154.prol ], [ 0, %.lr.ph154.preheader ]
  %i.eq = trunc nuw i64 %indvars.iv197.prol to i32
  %i.er = mul i32 %i.o, %i.eq
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !133
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv197.prol
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !133
  %indvars.iv.next198.prol = add nuw nsw i64 %indvars.iv197.prol, 1 ; 2 uses
  %prol.iter330.next = add i64 %prol.iter330, 1   ; 2 uses
  %prol.iter330.cmp.not = icmp eq i64 %prol.iter330.next, %xtraiter328
  br i1 %prol.iter330.cmp.not, label %.lr.ph154.prol.loopexit, label %.lr.ph154.prol, !llvm.loop !208

.lr.ph154.prol.loopexit:                          ; preds = %.lr.ph154.prol, %.lr.ph154.preheader
  %indvars.iv197.unr = phi i64 [ %indvars.iv197.ph, %.lr.ph154.preheader ], [ %indvars.iv.next198.prol, %.lr.ph154.prol ]
  %i.ew = sub nsw i64 %indvars.iv197.ph, %wide.trip.count200
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %.loopexit, label %.lr.ph154

.preheader:                                       ; preds = %.split
  %.not163 = icmp eq i32 %1, 0
  br i1 %.not163, label %.loopexit, label %iter.check277

iter.check277:                                    ; preds = %.preheader
  %wide.trip.count205 = zext i32 %1 to i64        ; 8 uses
  %min.iters.check264 = icmp ugt i32 %1, 3
  %ident.check259.not = icmp eq i32 %i.o, 1
  %or.cond292 = and i1 %min.iters.check264, %ident.check259.not
  br i1 %or.cond292, label %vector.memcheck260, label %.lr.ph156.preheader

vector.memcheck260:                               ; preds = %iter.check277
  %i.ey = add i64 %.0.i100262, %i.an
  %i.ez = add i64 %i.ey, %i.aj
  %i.fa = sub i64 %.sroa.5113.0261, %i.ez
  %diff.check = icmp ult i64 %i.fa, 32
  br i1 %diff.check, label %.lr.ph156.preheader, label %vector.main.loop.iter.check265

vector.main.loop.iter.check265:                   ; preds = %vector.memcheck260
  %min.iters.check266 = icmp ult i32 %1, 32
  br i1 %min.iters.check266, label %vec.epilog.ph281, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check265
  %n.mod.vf268 = and i64 %wide.trip.count205, 28
  %n.vec269 = and i64 %wide.trip.count205, 4294967264 ; 4 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph267
  %index271.a = phi i64 [ 0, %vector.ph267 ], [ %index.next273.a, %vector.body270 ] ; 3 uses
  %i.fb = and i64 %index271.a, 4294967264
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <16 x i8>, ptr %i.fc, align 1, !tbaa !21
  %wide.load272.a = load <16 x i8>, ptr %i.fd, align 1, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %index271.a ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <16 x i8> %wide.load, ptr %i.fe, align 1, !tbaa !21
  store <16 x i8> %wide.load272.a, ptr %i.ff, align 1, !tbaa !21
  %index.next273.a = add nuw i64 %index271.a, 32  ; 2 uses
  %i.fg = icmp eq i64 %index.next273.a, %n.vec269
  br i1 %i.fg, label %middle.block274, label %vector.body270, !llvm.loop !209

middle.block274:                                  ; preds = %vector.body270
  %cmp.n275 = icmp eq i64 %n.vec269, %wide.trip.count205
  br i1 %cmp.n275, label %.loopexit, label %vec.epilog.iter.check279

vec.epilog.iter.check279:                         ; preds = %middle.block274
  %min.epilog.iters.check280 = icmp eq i64 %n.mod.vf268, 0
  br i1 %min.epilog.iters.check280, label %.lr.ph156.preheader, label %vec.epilog.ph281, !prof !210

vec.epilog.ph281:                                 ; preds = %vector.main.loop.iter.check265, %vec.epilog.iter.check279
  %vec.epilog.resume.val276 = phi i64 [ %n.vec269, %vec.epilog.iter.check279 ], [ 0, %vector.main.loop.iter.check265 ]
  %n.vec283 = and i64 %wide.trip.count205, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph281
  %index285 = phi i64 [ %vec.epilog.resume.val276, %vec.epilog.ph281 ], [ %index.next287, %vec.epilog.vector.body284 ] ; 3 uses
  %i.fh = and i64 %index285, 4294967292
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fh
  %wide.load286 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %index285
  store <4 x i8> %wide.load286, ptr %i.fj, align 1, !tbaa !21
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.fk, label %vec.epilog.middle.block288, label %vec.epilog.vector.body284, !llvm.loop !211

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body284
  %cmp.n289 = icmp eq i64 %n.vec283, %wide.trip.count205
  br i1 %cmp.n289, label %.loopexit, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %vector.memcheck260, %iter.check277, %vec.epilog.iter.check279, %vec.epilog.middle.block288
  %indvars.iv202.ph = phi i64 [ 0, %iter.check277 ], [ 0, %vector.memcheck260 ], [ %n.vec269, %vec.epilog.iter.check279 ], [ %n.vec283, %vec.epilog.middle.block288 ] ; 3 uses
  %xtraiter331 = and i64 %wide.trip.count205, 3   ; 2 uses
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader, %.lr.ph156.prol
  %indvars.iv202.prol = phi i64 [ %indvars.iv.next203.prol, %.lr.ph156.prol ], [ %indvars.iv202.ph, %.lr.ph156.preheader ] ; 3 uses
  %prol.iter333 = phi i64 [ %prol.iter333.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader ]
  %i.fl = trunc nuw i64 %indvars.iv202.prol to i32
  %i.fm = mul i32 %i.o, %i.fl
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv202.prol
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !21
  %indvars.iv.next203.prol = add nuw nsw i64 %indvars.iv202.prol, 1 ; 2 uses
  %prol.iter333.next = add i64 %prol.iter333, 1   ; 2 uses
  %prol.iter333.cmp.not = icmp eq i64 %prol.iter333.next, %xtraiter331
  br i1 %prol.iter333.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !212

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader
  %indvars.iv202.unr = phi i64 [ %indvars.iv202.ph, %.lr.ph156.preheader ], [ %indvars.iv.next203.prol, %.lr.ph156.prol ]
  %i.fr = sub nsw i64 %indvars.iv202.ph, %wide.trip.count205
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %.loopexit, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.3, %.lr.ph156 ], [ %indvars.iv202.unr, %.lr.ph156.prol.loopexit ] ; 6 uses
  %i.ft = trunc nuw i64 %indvars.iv202 to i32
  %i.fu = mul i32 %i.o, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv202
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.fz = trunc nuw i64 %indvars.iv.next203 to i32
  %i.ga = mul i32 %i.o, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next203
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !21
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv202, 2 ; 2 uses
  %i.gf = trunc nuw i64 %indvars.iv.next203.1 to i32
  %i.gg = mul i32 %i.o, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next203.1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !21
  %indvars.iv.next203.2 = add nuw nsw i64 %indvars.iv202, 3 ; 2 uses
  %i.gl = trunc nuw i64 %indvars.iv.next203.2 to i32
  %i.gm = mul i32 %i.o, %i.gl
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next203.2
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !21
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %exitcond206.not.3 = icmp eq i64 %indvars.iv.next203.3, %wide.trip.count205
  br i1 %exitcond206.not.3, label %.loopexit, label %.lr.ph156, !llvm.loop !213

.lr.ph154:                                        ; preds = %.lr.ph154.prol.loopexit, %.lr.ph154
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.3, %.lr.ph154 ], [ %indvars.iv197.unr, %.lr.ph154.prol.loopexit ] ; 6 uses
  %i.gr = trunc nuw i64 %indvars.iv197 to i32
  %i.gs = mul i32 %i.o, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !133
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv197
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !133
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.gx = trunc nuw i64 %indvars.iv.next198 to i32
  %i.gy = mul i32 %i.o, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !133
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next198
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !133
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %i.hd = trunc nuw i64 %indvars.iv.next198.1 to i32
  %i.he = mul i32 %i.o, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !133
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next198.1
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !133
  %indvars.iv.next198.2 = add nuw nsw i64 %indvars.iv197, 3 ; 2 uses
  %i.hj = trunc nuw i64 %indvars.iv.next198.2 to i32
  %i.hk = mul i32 %i.o, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !133
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next198.2
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !133
  %indvars.iv.next198.3 = add nuw nsw i64 %indvars.iv197, 4 ; 2 uses
  %exitcond201.not.3 = icmp eq i64 %indvars.iv.next198.3, %wide.trip.count200
  br i1 %exitcond201.not.3, label %.loopexit, label %.lr.ph154, !llvm.loop !214

.lr.ph152:                                        ; preds = %.lr.ph152.prol.loopexit, %.lr.ph152
  %indvars.iv192 = phi i64 [ %indvars.iv.next193.3, %.lr.ph152 ], [ %indvars.iv192.unr, %.lr.ph152.prol.loopexit ] ; 6 uses
  %i.hp = trunc nuw i64 %indvars.iv192 to i32
  %i.hq = mul i32 %i.o, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv192
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !3
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.hv = trunc nuw i64 %indvars.iv.next193 to i32
  %i.hw = mul i32 %i.o, %i.hv
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next193
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !3
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %i.ib = trunc nuw i64 %indvars.iv.next193.1 to i32
  %i.ic = mul i32 %i.o, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next193.1
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !3
  %indvars.iv.next193.2 = add nuw nsw i64 %indvars.iv192, 3 ; 2 uses
  %i.ih = trunc nuw i64 %indvars.iv.next193.2 to i32
  %i.ii = mul i32 %i.o, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next193.2
  store i32 %i.il, ptr %i.im, align 4, !tbaa !3
  %indvars.iv.next193.3 = add nuw nsw i64 %indvars.iv192, 4 ; 2 uses
  %exitcond196.not.3 = icmp eq i64 %indvars.iv.next193.3, %wide.trip.count195
  br i1 %exitcond196.not.3, label %.loopexit, label %.lr.ph152, !llvm.loop !215

.lr.ph150:                                        ; preds = %.lr.ph150, %.lr.ph150.preheader.new
  %indvars.iv187 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %indvars.iv.next188.3, %.lr.ph150 ] ; 6 uses
  %niter325 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter325.next.3, %.lr.ph150 ]
  %i.in = trunc nuw i64 %indvars.iv187 to i32
  %i.io = mul i32 %i.o, %i.in
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !24
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv187
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !24
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.it = trunc nuw i64 %indvars.iv.next188 to i32
  %i.iu = mul i32 %i.o, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !24
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next188
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !24
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.iz = trunc nuw i64 %indvars.iv.next188.1 to i32
  %i.ja = mul i32 %i.o, %i.iz
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.jb
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !24
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next188.1
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !24
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.jf = trunc nuw i64 %indvars.iv.next188.2 to i32
  %i.jg = mul i32 %i.o, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !24
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next188.2
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !24
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %niter325.next.3 = add i64 %niter325, 4         ; 2 uses
  %niter325.ncmp.3 = icmp eq i64 %niter325.next.3, %unroll_iter324
  br i1 %niter325.ncmp.3, label %.loopexit.loopexit296.unr-lcssa, label %.lr.ph150, !llvm.loop !216

bb.h:                                             ; preds = %bb.b
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !57 ; 3 uses
  %.not.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !67, !range !28, !noundef !29
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = select i1 %i.jp, ptr %i.jr, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.js, %bb.i ], [ null, %bb.h ]
  %i.jt = zext i32 %0 to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.jt ; 20 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !57 ; 3 uses
  %.not.i102 = icmp eq ptr %i.jw, null
  br i1 %.not.i102, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit104, label %bb.j, !prof !59

bb.j:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 9
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !67, !range !28, !noundef !29
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = select i1 %i.jz, ptr %i.kb, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit104

_ZNK5arrow7compute12RowTableImpl4dataEi.exit104:  ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, %bb.j
  %.0.i103 = phi ptr [ %i.kc, %bb.j ], [ null, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit ]
  %i.kd = zext i32 %2 to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i103, i64 %i.kd ; 20 uses
  %i.kf = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.8119.0)
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %.split1, label %.loopexit

.split1:                                          ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit104
  %i.kh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.8119.0, i1 true)
  switch i32 %i.kh, label %.loopexit [
    i32 0, label %.preheader134
    i32 1, label %.preheader136
    i32 2, label %.preheader138
    i32 3, label %.preheader140
  ]

.preheader140:                                    ; preds = %.split1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader140
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ki = icmp ult i32 %1, 4
  br i1 %i.ki, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader138:                                    ; preds = %.split1
  %.not157 = icmp eq i32 %1, 0
  br i1 %.not157, label %.loopexit, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %.preheader138
  %wide.trip.count175 = zext i32 %1 to i64        ; 2 uses
  %xtraiter302 = and i64 %wide.trip.count175, 3   ; 3 uses
  %i.kj = icmp ult i32 %1, 4
  br i1 %i.kj, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter306 = and i64 %wide.trip.count175, 4294967292
  br label %.lr.ph144

.preheader136:                                    ; preds = %.split1
  %.not158 = icmp eq i32 %1, 0
  br i1 %.not158, label %.loopexit, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %.preheader136
  %wide.trip.count180 = zext i32 %1 to i64        ; 2 uses
  %xtraiter308 = and i64 %wide.trip.count180, 3   ; 3 uses
  %i.kk = icmp ult i32 %1, 4
  br i1 %i.kk, label %.lr.ph146.epil.preheader, label %.lr.ph146.preheader.new

.lr.ph146.preheader.new:                          ; preds = %.lr.ph146.preheader
  %unroll_iter312 = and i64 %wide.trip.count180, 4294967292
  br label %.lr.ph146

.preheader134:                                    ; preds = %.split1
  %.not159 = icmp eq i32 %1, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %.preheader134
  %wide.trip.count185 = zext i32 %1 to i64        ; 2 uses
  %xtraiter314 = and i64 %wide.trip.count185, 3   ; 3 uses
  %i.kl = icmp ult i32 %1, 4
  br i1 %i.kl, label %.lr.ph148.epil.preheader, label %.lr.ph148.preheader.new

.lr.ph148.preheader.new:                          ; preds = %.lr.ph148.preheader
  %unroll_iter318 = and i64 %wide.trip.count185, 4294967292
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148, %.lr.ph148.preheader.new
  %indvars.iv182 = phi i64 [ 0, %.lr.ph148.preheader.new ], [ %indvars.iv.next183.3, %.lr.ph148 ] ; 6 uses
  %niter319 = phi i64 [ 0, %.lr.ph148.preheader.new ], [ %niter319.next.3, %.lr.ph148 ]
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv182
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !24
  %i.ko = getelementptr inbounds i8, ptr %i.ke, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !21
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv182
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !21
  %indvars.iv.next183 = or disjoint i64 %indvars.iv182, 1 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next183
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !24
  %i.kt = getelementptr inbounds i8, ptr %i.ke, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !21
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next183
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !21
  %indvars.iv.next183.1 = or disjoint i64 %indvars.iv182, 2 ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next183.1
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !24
  %i.ky = getelementptr inbounds i8, ptr %i.ke, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next183.1
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !21
  %indvars.iv.next183.2 = or disjoint i64 %indvars.iv182, 3 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next183.2
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !24
  %i.ld = getelementptr inbounds i8, ptr %i.ke, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !21
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv.next183.2
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !21
  %indvars.iv.next183.3 = add nuw nsw i64 %indvars.iv182, 4 ; 2 uses
  %niter319.next.3 = add i64 %niter319, 4         ; 2 uses
  %niter319.ncmp.3 = icmp eq i64 %niter319.next.3, %unroll_iter318
  br i1 %niter319.ncmp.3, label %.loopexit.loopexit297.unr-lcssa, label %.lr.ph148, !llvm.loop !217

.lr.ph146:                                        ; preds = %.lr.ph146, %.lr.ph146.preheader.new
  %indvars.iv177 = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %indvars.iv.next178.3, %.lr.ph146 ] ; 6 uses
  %niter313 = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %niter313.next.3, %.lr.ph146 ]
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv177
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !24
  %i.li = getelementptr inbounds i8, ptr %i.ke, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !133
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv177
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !133
  %indvars.iv.next178 = or disjoint i64 %indvars.iv177, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next178
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !24
  %i.ln = getelementptr inbounds i8, ptr %i.ke, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !133
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next178
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !133
  %indvars.iv.next178.1 = or disjoint i64 %indvars.iv177, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next178.1
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !24
  %i.ls = getelementptr inbounds i8, ptr %i.ke, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !133
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next178.1
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !133
  %indvars.iv.next178.2 = or disjoint i64 %indvars.iv177, 3 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next178.2
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !24
  %i.lx = getelementptr inbounds i8, ptr %i.ke, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !133
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next178.2
  store i16 %i.ly, ptr %i.lz, align 2, !tbaa !133
  %indvars.iv.next178.3 = add nuw nsw i64 %indvars.iv177, 4 ; 2 uses
  %niter313.next.3 = add i64 %niter313, 4         ; 2 uses
  %niter313.ncmp.3 = icmp eq i64 %niter313.next.3, %unroll_iter312
  br i1 %niter313.ncmp.3, label %.loopexit.loopexit298.unr-lcssa, label %.lr.ph146, !llvm.loop !218

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next173.3, %.lr.ph144 ] ; 6 uses
  %niter307 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter307.next.3, %.lr.ph144 ]
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv172
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !24
  %i.mc = getelementptr inbounds i8, ptr %i.ke, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv172
  store i32 %i.md, ptr %i.me, align 4, !tbaa !3
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next173
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !24
  %i.mh = getelementptr inbounds i8, ptr %i.ke, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next173
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !3
  %indvars.iv.next173.1 = or disjoint i64 %indvars.iv172, 2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next173.1
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !24
  %i.mm = getelementptr inbounds i8, ptr %i.ke, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next173.1
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !3
  %indvars.iv.next173.2 = or disjoint i64 %indvars.iv172, 3 ; 2 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next173.2
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !24
  %i.mr = getelementptr inbounds i8, ptr %i.ke, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !3
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next173.2
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !3
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter307.next.3 = add i64 %niter307, 4         ; 2 uses
  %niter307.ncmp.3 = icmp eq i64 %niter307.next.3, %unroll_iter306
  br i1 %niter307.ncmp.3, label %.loopexit.loopexit299.unr-lcssa, label %.lr.ph144, !llvm.loop !219

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !24
  %i.mw = getelementptr inbounds i8, ptr %i.ke, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !24
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !24
  %i.nb = getelementptr inbounds i8, ptr %i.ke, i64 %i.na
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !24
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !24
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next.1
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !24
  %i.ng = getelementptr inbounds i8, ptr %i.ke, i64 %i.nf
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !24
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next.1
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !24
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next.2
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !24
  %i.nl = getelementptr inbounds i8, ptr %i.ke, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !24
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.next.2
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit300.unr-lcssa, label %.lr.ph, !llvm.loop !220

.loopexit.loopexit296.unr-lcssa:                  ; preds = %.lr.ph150
  %lcmp.mod322.not = icmp eq i64 %xtraiter320, 0
  br i1 %lcmp.mod322.not, label %.loopexit, label %.lr.ph150.epil.preheader

.lr.ph150.epil.preheader:                         ; preds = %.loopexit.loopexit296.unr-lcssa, %.lr.ph150.preheader
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %indvars.iv.next188.3, %.loopexit.loopexit296.unr-lcssa ]
  %lcmp.mod323 = icmp ne i64 %xtraiter320, 0
  call void @llvm.assume(i1 %lcmp.mod323)
  br label %.lr.ph150.epil

.lr.ph150.epil:                                   ; preds = %.lr.ph150.epil, %.lr.ph150.epil.preheader
  %indvars.iv187.epil = phi i64 [ %indvars.iv187.epil.init, %.lr.ph150.epil.preheader ], [ %indvars.iv.next188.epil, %.lr.ph150.epil ] ; 3 uses
  %epil.iter321 = phi i64 [ 0, %.lr.ph150.epil.preheader ], [ %epil.iter321.next, %.lr.ph150.epil ]
  %i.no = trunc nuw i64 %indvars.iv187.epil to i32
  %i.np = mul i32 %i.o, %i.no
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.nq
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !24
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv187.epil
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !24
  %indvars.iv.next188.epil = add nuw nsw i64 %indvars.iv187.epil, 1
  %epil.iter321.next = add i64 %epil.iter321, 1   ; 2 uses
  %epil.iter321.cmp.not = icmp eq i64 %epil.iter321.next, %xtraiter320
  br i1 %epil.iter321.cmp.not, label %.loopexit, label %.lr.ph150.epil, !llvm.loop !221

.loopexit.loopexit297.unr-lcssa:                  ; preds = %.lr.ph148
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod316.not, label %.loopexit, label %.lr.ph148.epil.preheader

.lr.ph148.epil.preheader:                         ; preds = %.loopexit.loopexit297.unr-lcssa, %.lr.ph148.preheader
  %indvars.iv182.epil.init = phi i64 [ 0, %.lr.ph148.preheader ], [ %indvars.iv.next183.3, %.loopexit.loopexit297.unr-lcssa ]
  %lcmp.mod317 = icmp ne i64 %xtraiter314, 0
  call void @llvm.assume(i1 %lcmp.mod317)
  br label %.lr.ph148.epil

.lr.ph148.epil:                                   ; preds = %.lr.ph148.epil, %.lr.ph148.epil.preheader
  %indvars.iv182.epil = phi i64 [ %indvars.iv182.epil.init, %.lr.ph148.epil.preheader ], [ %indvars.iv.next183.epil, %.lr.ph148.epil ] ; 3 uses
  %epil.iter315 = phi i64 [ 0, %.lr.ph148.epil.preheader ], [ %epil.iter315.next, %.lr.ph148.epil ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv182.epil
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !24
  %i.nw = getelementptr inbounds i8, ptr %i.ke, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !21
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.5113.0, i64 %indvars.iv182.epil
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !21
  %indvars.iv.next183.epil = add nuw nsw i64 %indvars.iv182.epil, 1
  %epil.iter315.next = add i64 %epil.iter315, 1   ; 2 uses
  %epil.iter315.cmp.not = icmp eq i64 %epil.iter315.next, %xtraiter314
  br i1 %epil.iter315.cmp.not, label %.loopexit, label %.lr.ph148.epil, !llvm.loop !222

.loopexit.loopexit298.unr-lcssa:                  ; preds = %.lr.ph146
  %lcmp.mod310.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod310.not, label %.loopexit, label %.lr.ph146.epil.preheader

.lr.ph146.epil.preheader:                         ; preds = %.loopexit.loopexit298.unr-lcssa, %.lr.ph146.preheader
  %indvars.iv177.epil.init = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next178.3, %.loopexit.loopexit298.unr-lcssa ]
  %lcmp.mod311 = icmp ne i64 %xtraiter308, 0
  call void @llvm.assume(i1 %lcmp.mod311)
  br label %.lr.ph146.epil

.lr.ph146.epil:                                   ; preds = %.lr.ph146.epil, %.lr.ph146.epil.preheader
  %indvars.iv177.epil = phi i64 [ %indvars.iv177.epil.init, %.lr.ph146.epil.preheader ], [ %indvars.iv.next178.epil, %.lr.ph146.epil ] ; 3 uses
  %epil.iter309 = phi i64 [ 0, %.lr.ph146.epil.preheader ], [ %epil.iter309.next, %.lr.ph146.epil ]
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv177.epil
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !24
  %i.ob = getelementptr inbounds i8, ptr %i.ke, i64 %i.oa
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !133
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.sroa.5113.0, i64 %indvars.iv177.epil
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !133
  %indvars.iv.next178.epil = add nuw nsw i64 %indvars.iv177.epil, 1
  %epil.iter309.next = add i64 %epil.iter309, 1   ; 2 uses
  %epil.iter309.cmp.not = icmp eq i64 %epil.iter309.next, %xtraiter308
  br i1 %epil.iter309.cmp.not, label %.loopexit, label %.lr.ph146.epil, !llvm.loop !223

.loopexit.loopexit299.unr-lcssa:                  ; preds = %.lr.ph144
  %lcmp.mod304.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod304.not, label %.loopexit, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %.loopexit.loopexit299.unr-lcssa, %.lr.ph144.preheader
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next173.3, %.loopexit.loopexit299.unr-lcssa ]
  %lcmp.mod305 = icmp ne i64 %xtraiter302, 0
  call void @llvm.assume(i1 %lcmp.mod305)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.lr.ph144.epil.preheader ], [ %indvars.iv.next173.epil, %.lr.ph144.epil ] ; 3 uses
  %epil.iter303 = phi i64 [ 0, %.lr.ph144.epil.preheader ], [ %epil.iter303.next, %.lr.ph144.epil ]
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv172.epil
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !24
  %i.og = getelementptr inbounds i8, ptr %i.ke, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !3
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5113.0, i64 %indvars.iv172.epil
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !3
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter303.next = add i64 %epil.iter303, 1   ; 2 uses
  %epil.iter303.cmp.not = icmp eq i64 %epil.iter303.next, %xtraiter302
  br i1 %epil.iter303.cmp.not, label %.loopexit, label %.lr.ph144.epil, !llvm.loop !224

.loopexit.loopexit300.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit300.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit300.unr-lcssa ]
  %lcmp.mod301 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.epil
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !24
  %i.ol = getelementptr inbounds i8, ptr %i.ke, i64 %i.ok
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !24
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5113.0, i64 %indvars.iv.epil
  store i64 %i.om, ptr %i.on, align 8, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !225

.loopexit:                                        ; preds = %.loopexit.loopexit300.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit299.unr-lcssa, %.lr.ph144.epil, %.loopexit.loopexit298.unr-lcssa, %.lr.ph146.epil, %.loopexit.loopexit297.unr-lcssa, %.lr.ph148.epil, %.loopexit.loopexit296.unr-lcssa, %.lr.ph150.epil, %.lr.ph152.prol.loopexit, %.lr.ph152, %.lr.ph154.prol.loopexit, %.lr.ph154, %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block, %vec.epilog.middle.block.a, %middle.block274, %vec.epilog.middle.block288, %.preheader140, %.preheader138, %.preheader136, %.preheader134, %.preheader132, %.preheader130, %.preheader128, %.preheader, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit104, %.split1, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit101, %.split, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.oo = load i8, ptr %i.a, align 4, !tbaa !26, !range !28, !noundef !29
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = load i32, ptr %i.d, align 4
  %i.or = icmp eq i32 %i.oq, 0
  %or.cond.i.i105 = select i1 %i.op, i1 %i.or, i1 false
  br i1 %or.cond.i.i105, label %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit106, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit106: ; preds = %.loopexit
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 49
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !41, !range !28, !noundef !29
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit, label %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i

_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i: ; preds = %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit106
  %i.ov = getelementptr i8, ptr %4, i64 32
  %.val5.i = load ptr, ptr %i.ov, align 8, !tbaa !32
  %i.ow = getelementptr i8, ptr %4, i64 68
  %.val6.i = load i32, ptr %i.ow, align 4, !tbaa !3
  %.val7.i = load i64, ptr %5, align 8, !tbaa !34
  %i.ox = trunc i64 %.sroa.11.0 to i32
  call void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef %.val7.i, i32 noundef %i.ox, ptr noundef %.sroa.4.0, ptr noundef %.val5.i, i32 noundef %.val6.i)
  br label %_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit

_ZN5arrow7compute14EncoderInteger10PostDecodeERKNS0_14KeyColumnArrayEPS2_PNS0_12LightContextE.exit: ; preds = %.loopexit, %_ZN5arrow7compute14EncoderInteger9IsBooleanERKNS0_17KeyColumnMetadataE.exit.i, %_ZN5arrow7compute14EncoderInteger13UsesTransformERKNS0_14KeyColumnArrayE.exit106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow7compute13EncoderBinary9IsIntegerERKNS0_17KeyColumnMetadataE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !41, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = load i8, ptr %0, align 4, !range !28
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %i.h = icmp ult i32 %i.g, 9
  br i1 %i.h, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = trunc nuw i32 %i.g to i9
  %switch.downshift = lshr i9 -233, %switch.cast
  %switch.masked = trunc i9 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %switch.masked, %switch.lookup ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EhhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.as, ptr %i.at, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !226
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EthEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !133
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 2, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i8, ptr %i.au, align 2, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !227
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EjhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i8, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i8, ptr %i.au, align 4, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !228
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EmhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !229
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EhtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.v
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i16, ptr %i.am, align 2, !tbaa !133
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.as, ptr %i.at, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i16, ptr %i.au, align 2, !tbaa !133
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !133
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !230
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EttEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.v
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !133
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !133
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 2, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !133
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !133
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !231
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EjtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.v
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i16, ptr %i.am, align 4, !tbaa !133
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i16, ptr %i.au, align 4, !tbaa !133
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !133
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !232
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EmtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.v
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i16, ptr %i.am, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i16, ptr %i.au, align 8, !tbaa !133
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !133
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !233
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EhjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.as, ptr %i.at, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !234
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EtjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !133
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 2, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !235
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EjjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !236
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EmjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !237
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EhmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.as, ptr %i.at, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !238
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EtmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !133
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 2, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !239
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EjmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !240
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb0EmmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit:  ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ null, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.s ; 3 uses
  %i.u = icmp ult i32 %0, %2
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  %i.v = zext i32 %0 to i64                       ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %i.af, %i.v
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !241
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EhhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i8, ptr %.02122, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !242
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EthEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i16, ptr %i.x, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i16, ptr %.02122, align 2, !tbaa !133
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !133
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !243
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EjhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i32, ptr %.02122, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !244
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EmhEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i64, ptr %.02122, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !245
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EhtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.y
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i8, ptr %.02122, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 1
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.al, ptr %i.am, align 2, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !133
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !246
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EttEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i16, ptr %i.x, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.y
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i16, ptr %.02122, align 2, !tbaa !133
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !133
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.al, ptr %i.am, align 2, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !133
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !133
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !247
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EjtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.y
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i32, ptr %.02122, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !133
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.al, ptr %i.am, align 2, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !133
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !248
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EmtEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !133
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.y
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i64, ptr %.02122, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !133
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.al, ptr %i.am, align 2, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !133
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !249
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EhjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i8, ptr %.02122, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EtjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i16, ptr %i.x, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i16, ptr %.02122, align 2, !tbaa !133
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !133
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !251
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EjjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i32, ptr %.02122, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !252
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EmjEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i64, ptr %.02122, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !253
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EhmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.y
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i8, ptr %.02122, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 1
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !254
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EtmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i16, ptr %i.x, align 2, !tbaa !133
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.y
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i16, ptr %.02122, align 2, !tbaa !133
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 2
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !133
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !255
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EjmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.y
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i32, ptr %.02122, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 4
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !256
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute17EncoderBinaryPair9DecodeImpILb1EmmEEvjjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayES7_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(209) %4, ptr noundef %5, ptr noundef %6) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !78
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.o = zext i32 %i.f to i64                     ; 4 uses
  %i.p = icmp ult i32 %0, %2
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.q = zext i32 %1 to i64
  %i.r = mul nuw nsw i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.r
  %i.t = zext i32 %3 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = mul i32 %i.f, %0
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  %i.y = zext i32 %0 to i64                       ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.y
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  %indvars.iv.next.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02122.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02122 = phi ptr [ %i.at, %.lr.ph ], [ %.02122.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ai = load i64, ptr %.02122, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.02122, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.02122, i64 %i.o ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNK5arrow7compute14KeyColumnArray14WithBufferFromERKS1_i(ptr dead_on_unwind writable sret(%"class.arrow::compute::KeyColumnArray") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #1

declare void @_ZNK5arrow7compute14KeyColumnArray12WithMetadataERKNS0_17KeyColumnMetadataE(ptr dead_on_unwind writable sret(%"class.arrow::compute::KeyColumnArray") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !258
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !tbaa.struct !20
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !12
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 128102389400760775) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 72
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, i8 0, i64 72, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !tbaa.struct !20
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !259

_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ag = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #20
  br label %_ZNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %1
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !258
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute14KeyColumnArrayEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !3
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !260
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

declare void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute17KeyColumnMetadataESaIS2_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 _ZTSN5arrow7compute17KeyColumnMetadataE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSN5arrow7compute14KeyColumnArrayE", !10, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!17, !18, i64 0}
!20 = !{i64 0, i64 24, !21, i64 24, i64 24, !21, i64 48, i64 1, !22, i64 49, i64 1, !22, i64 52, i64 4, !3, i64 56, i64 8, !24, i64 64, i64 8, !21}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!27, !23, i64 0}
!27 = !{!"_ZTSN5arrow7compute17KeyColumnMetadataE", !23, i64 0, !23, i64 1, !4, i64 4}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !10, i64 0}
!34 = !{!35, !25, i64 0}
!35 = !{!"_ZTSN5arrow7compute12LightContextE", !25, i64 0, !36, i64 8}
!36 = !{!"p1 _ZTSN5arrow4util15TempVectorStackE", !10, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!39, !36, i64 0}
!39 = !{!"_ZTSN5arrow4util16TempVectorHolderItEE", !36, i64 0, !33, i64 8, !4, i64 16, !4, i64 20}
!40 = !{!39, !4, i64 20}
!41 = !{!27, !23, i64 1}
!42 = !{!27, !4, i64 4}
!43 = !{!39, !33, i64 8}
!44 = !{!45, !23, i64 0}
!45 = !{!"_ZTSN5arrow7compute15RowTableEncoderE", !46, i64 0, !53, i64 120, !53, i64 144, !50, i64 168}
!46 = !{!"_ZTSN5arrow7compute16RowTableMetadataE", !23, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !47, i64 24, !50, i64 48, !50, i64 72, !50, i64 96}
!47 = !{!"_ZTSSt6vectorIN5arrow7compute17KeyColumnMetadataESaIS2_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN5arrow7compute17KeyColumnMetadataESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute17KeyColumnMetadataESaIS2_EE12_Vector_implE", !8, i64 0}
!50 = !{!"_ZTSSt6vectorIjSaIjEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !17, i64 0}
!53 = !{!"_ZTSSt6vectorIN5arrow7compute14KeyColumnArrayESaIS2_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute14KeyColumnArrayESaIS2_EE12_Vector_implE", !13, i64 0}
!56 = !{!14, !14, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !10, i64 0}
!59 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!46, !4, i64 20}
!63 = !{!46, !4, i64 8}
!64 = !{!46, !4, i64 4}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = !{!68, !23, i64 9}
!68 = !{!"_ZTSN5arrow6BufferE", !23, i64 8, !23, i64 9, !33, i64 16, !25, i64 24, !25, i64 32, !69, i64 40, !70, i64 48, !75, i64 64}
!69 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!70 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !71, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !73, i64 8}
!72 = !{!"p1 _ZTSN5arrow6BufferE", !10, i64 0}
!73 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!75 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !76, i64 0}
!76 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !77, i64 0, !73, i64 8}
!77 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !10, i64 0}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = distinct !{!79, !31}
!80 = !{!39, !4, i64 16}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !61}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_: argument 0"}
!85 = distinct !{!85, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_"}
!86 = distinct !{!86, !87, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_: argument 0"}
!87 = distinct !{!87, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_"}
!88 = !{!46, !23, i64 0}
!89 = distinct !{!89, !31, !90, !91}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = distinct !{!92, !31, !90}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31, !90, !91}
!95 = distinct !{!95, !31, !90}
!96 = distinct !{!96, !31}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_: argument 0"}
!99 = distinct !{!99, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_"}
!100 = distinct !{!100, !101, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_: argument 0"}
!101 = distinct !{!101, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_"}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_: argument 0"}
!104 = distinct !{!104, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_"}
!105 = distinct !{!105, !106, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_: argument 0"}
!106 = distinct !{!106, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_"}
!107 = !{!10, !10, i64 0}
!108 = !{!109, !25, i64 56}
!109 = !{!"_ZTSN5arrow7compute14KeyColumnArrayE", !5, i64 0, !5, i64 24, !27, i64 48, !25, i64 56, !5, i64 64}
!110 = !{!46, !4, i64 12}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31, !90, !91}
!115 = distinct !{!115, !31, !90}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31, !90, !91}
!118 = distinct !{!118, !31, !90}
!119 = distinct !{!119, !31}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!122 = distinct !{!122, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSN5arrow6StatusE", !125, i64 0}
!125 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!128 = distinct !{!128, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!131 = distinct !{!131, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!132 = distinct !{!132, !31}
!133 = !{!134, !134, i64 0}
!134 = !{!"short", !5, i64 0}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN5arrow6Status2OKEv: argument 0"}
!139 = distinct !{!139, !"_ZN5arrow6Status2OKEv"}
!140 = distinct !{!140, !31}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !31, !90, !91}
!144 = distinct !{!144, !31}
!145 = distinct !{!145, !31}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31, !91, !90}
!148 = !{!46, !4, i64 16}
!149 = distinct !{!149, !31}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
!154 = distinct !{!154, !61}
!155 = distinct !{!155, !31}
!156 = distinct !{!156, !31}
!157 = distinct !{!157, !61}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !61}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = distinct !{!163, !61}
!164 = distinct !{!164, !31}
!165 = distinct !{!165, !31}
!166 = distinct !{!166, !61}
!167 = distinct !{!167, !31}
!168 = distinct !{!168, !31}
!169 = distinct !{!169, !61}
!170 = distinct !{!170, !31}
!171 = distinct !{!171, !31}
!172 = distinct !{!172, !61}
!173 = distinct !{!173, !31}
!174 = distinct !{!174, !31}
!175 = distinct !{!175, !61}
!176 = distinct !{!176, !31}
!177 = distinct !{!177, !31}
!178 = distinct !{!178, !31}
!179 = distinct !{!179, !31}
!180 = distinct !{!180, !31}
!181 = distinct !{!181, !31}
!182 = distinct !{!182, !31}
!183 = distinct !{!183, !31}
!184 = distinct !{!184, !31}
!185 = distinct !{!185, !31}
!186 = distinct !{!186, !31}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_: argument 0"}
!189 = distinct !{!189, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_"}
!190 = !{!191, !193}
!191 = distinct !{!191, !192, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_: argument 0"}
!192 = distinct !{!192, !"_ZN5arrow7compute12_GLOBAL__N_116TransformBoolean12ArrayReplaceERKNS0_14KeyColumnArrayES5_"}
!193 = distinct !{!193, !194, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_: argument 0"}
!194 = distinct !{!194, !"_ZN5arrow7compute14EncoderInteger12ArrayReplaceERKNS0_14KeyColumnArrayES4_"}
!195 = !{!196}
!196 = distinct !{!196, !197}
!197 = distinct !{!197, !"LVerDomain"}
!198 = !{!199}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !31, !90, !91}
!201 = distinct !{!201, !61}
!202 = !{!203}
!203 = distinct !{!203, !204}
!204 = distinct !{!204, !"LVerDomain"}
!205 = !{!206}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !31, !90, !91}
!208 = distinct !{!208, !61}
!209 = distinct !{!209, !31, !90, !91}
!210 = !{!"branch_weights", i32 4, i32 28}
!211 = distinct !{!211, !31, !90, !91}
!212 = distinct !{!212, !61}
!213 = distinct !{!213, !31, !90}
!214 = distinct !{!214, !31, !90}
!215 = distinct !{!215, !31, !90}
!216 = distinct !{!216, !31}
!217 = distinct !{!217, !31}
!218 = distinct !{!218, !31}
!219 = distinct !{!219, !31}
!220 = distinct !{!220, !31}
!221 = distinct !{!221, !61}
!222 = distinct !{!222, !61}
!223 = distinct !{!223, !61}
!224 = distinct !{!224, !61}
!225 = distinct !{!225, !61}
!226 = distinct !{!226, !31}
!227 = distinct !{!227, !31}
!228 = distinct !{!228, !31}
!229 = distinct !{!229, !31}
!230 = distinct !{!230, !31}
!231 = distinct !{!231, !31}
!232 = distinct !{!232, !31}
!233 = distinct !{!233, !31}
!234 = distinct !{!234, !31}
!235 = distinct !{!235, !31}
!236 = distinct !{!236, !31}
!237 = distinct !{!237, !31}
!238 = distinct !{!238, !31}
!239 = distinct !{!239, !31}
!240 = distinct !{!240, !31}
!241 = distinct !{!241, !31}
!242 = distinct !{!242, !31}
!243 = distinct !{!243, !31}
!244 = distinct !{!244, !31}
!245 = distinct !{!245, !31}
!246 = distinct !{!246, !31}
!247 = distinct !{!247, !31}
!248 = distinct !{!248, !31}
!249 = distinct !{!249, !31}
!250 = distinct !{!250, !31}
!251 = distinct !{!251, !31}
!252 = distinct !{!252, !31}
!253 = distinct !{!253, !31}
!254 = distinct !{!254, !31}
!255 = distinct !{!255, !31}
!256 = distinct !{!256, !31}
!257 = distinct !{!257, !31}
!258 = !{!13, !14, i64 16}
!259 = distinct !{!259, !31}
!260 = !{!17, !18, i64 16}
end_hunk_0
