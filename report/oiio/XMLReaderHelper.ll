inline.NumInlined: 699
inline.NumDeleted: 274
begin_hunk_0_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp eq i64 %i.m, 24
  br i1 %.not, label %10, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.as

10:                                               ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load ptr, ptr %11, align 8, !tbaa !57     ; 2 uses
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb.r, label %14

14:                                               ; preds = %10
  %15 = call ptr @__dynamic_cast(ptr nonnull %12, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_523XmlReaderSOPNodeBaseEltE, i64 0) #31
  br label %bb.r

bb.r:                                             ; preds = %10, %14
  %16 = phi ptr [ %15, %14 ], [ null, %10 ]       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.bh = load ptr, ptr %16, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(99) %16)
          to label %bb.s unwind label %bb.y       ; 2 uses

bb.s:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 96
  store i8 1, ptr %i.cd, align 8, !tbaa !114
  br label %bb.ai

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 97
  store i8 1, ptr %i.cn, align 1, !tbaa !118
  br label %bb.ai

end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv:bb.a

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 98
  store i8 1, ptr %i.cw, align 2, !tbaa !119
  br label %bb.ai

end_hunk_4
