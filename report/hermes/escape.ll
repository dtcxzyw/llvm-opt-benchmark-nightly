inline.NumInlined: 629
inline.NumDeleted: 306
begin_hunk_0_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  %i.a = alloca i16, align 2                      ; 11 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.b = alloca [4 x i8], align 1                 ; 11 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 32, ptr %i.m, align 4, !tbaa !35
  %i.n = icmp ugt i64 %i.j, 141733920767
  br i1 %i.n, label %bb.b, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  br label %bb.bh

_ZNK6hermes2vm10StringView14const_iteratorgeERKS2_.exit152: ; preds = %.preheader451.2, %.preheader451.3, %.preheader451.4
  %exitcond.not.1 = phi i1 [ true, %.preheader451.3 ], [ false, %.preheader451.4 ], [ false, %.preheader451.2 ]
  %.056458.lcssa = phi i32 [ 3, %.preheader451.3 ], [ 4, %.preheader451.4 ], [ 2, %.preheader451.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 %i.eq, ptr %i.b, align 1, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep, i8 0, i64 3, i1 false), !tbaa !44
  %11 = mul nuw nsw i32 %.056458.lcssa, 3
  %12 = add nsw i32 %11, -3
  %13 = zext nneg i32 %12 to i64                  ; 2 uses
  %.not.i144 = icmp eq ptr %spec.select, null     ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select, i64 %13
  %.sroa.3.0.idx.i145 = select i1 %.not.i144, i64 %13, i64 0
  %.sroa.3.0.i146 = getelementptr inbounds nuw [2 x i8], ptr %spec.select440, i64 %.sroa.3.0.idx.i145
  %.sroa.0.0.i147 = select i1 %.not.i144, ptr null, ptr %i.fu ; 2 uses
  %.not.i.i150 = icmp eq ptr %.sroa.0.0.i147, null
  %i.fv = icmp uge ptr %.sroa.0.0.i147, %.sroa.0.0.i76
  %i.fw = icmp uge ptr %.sroa.3.0.i146, %.sroa.3.0.i75
  %.0.i.i151 = select i1 %.not.i.i150, i1 %i.fw, i1 %i.fv
  br i1 %.0.i.i151, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit154, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgeERKS2_.exit152
  %wide.trip.count = zext nneg i32 %.056458.lcssa to i64
  %.not.i155 = icmp eq ptr %spec.select, null     ; 6 uses
  br i1 %.not.i155, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157.thread

_ZN6hermes2vm11TwineChar16C2EPKc.exit154:         ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgeERKS2_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
end_hunk_2
begin_hunk_3_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.thread412

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157: ; preds = %.lr.ph.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %spec.select440, i64 2 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !45
  %.not62 = icmp eq i16 %i.gd, 37
  br i1 %.not62, label %bb.am, label %.critedge9

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157.thread: ; preds = %.lr.ph.preheader
  %i.ge = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !44
  %.not62372 = icmp eq i8 %i.gf, 37
end_hunk_3
begin_hunk_4_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr %i.b, ptr %i.d, align 8, !tbaa !57
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 %wide.trip.count
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr %i.c, ptr %i.e, align 8, !tbaa !61
  %i.lu = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF32EPPKhS1_PPjS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.d, ptr noundef nonnull %14, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cb, i32 noundef 0) #11
  %.not65 = icmp eq i32 %i.lu, 0
  br i1 %.not65, label %bb.bc, label %bb.bb

end_hunk_4
