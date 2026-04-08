inline.NumInlined: 266
inline.NumDeleted: 180
begin_hunk_0_@_ZN6hermes2vm10JSCallSite11getFileNameERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a
bb.d:                                             ; preds = %.critedge
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(280) %i.ac) #6, !inline_history !109
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !91
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm10JSCallSite11getFileNameERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a
  %i.ah = phi ptr [ %.pre.i, %bb.d ], [ %i.ae, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !111
  store i8 0, ptr %i.ai, align 8, !tbaa !52
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !112
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !116 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !118
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm10JSCallSite11getFileNameERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a
  %i.az = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIhEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ax, i64 %i.ay, i1 noundef zeroext false) #6 ; 2 uses
  %i.ba = extractvalue { i32, i64 } %i.az, 0
  %i.bb = extractvalue { i32, i64 } %i.az, 1
  %i.bc = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ai
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN6hermes2vm10JSCallSite11getFileNameERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !111 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !119
  %i.bl = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIhEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bk, i64 %i.bh, i1 noundef zeroext false) #6 ; 2 uses
  %i.bm = extractvalue { i32, i64 } %i.bl, 0
  %i.bn = extractvalue { i32, i64 } %i.bl, 1
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm10JSCallSite13getLineNumberERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !120
  br label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm10JSCallSite13getLineNumberERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !121
  %i.ah = add i32 %i.ag, 1
  br label %bb.f

end_hunk_5
begin_hunk_6_@_ZSt24__throw_out_of_range_fmtPKcz
!106 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"vtable pointer", !6, i64 0}
!109 = distinct !{null}
!110 = !{!106, !15, i64 0}
!111 = !{!105, !26, i64 8}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !16, i64 0}
!115 = !{!85, !4, i64 4}
!116 = !{!117, !15, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!118 = !{!117, !15, i64 8}
!119 = !{!105, !15, i64 0}
!120 = !{!85, !4, i64 12}
!121 = !{!92, !4, i64 184}
end_hunk_6
