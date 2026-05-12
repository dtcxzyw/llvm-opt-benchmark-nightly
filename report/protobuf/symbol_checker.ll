inline.NumInlined: 381
inline.NumDeleted: 263
begin_hunk_0_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_":bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_":bb.a
bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

end_hunk_1
begin_hunk_2_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_":bb.a
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  %3 = load ptr, ptr %i.f, align 8, !tbaa !132
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %5) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
end_hunk_2
begin_hunk_3_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 88 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %.not.i.i8.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i8.i.i, label %bb.j, label %bb.i
end_hunk_3
begin_hunk_4_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !146 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

end_hunk_4
begin_hunk_5_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  %2 = load ptr, ptr %i.aq, align 8, !tbaa !143
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %4) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
end_hunk_5
begin_hunk_6_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !142 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !143
  %.not.i.i9.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i9.i.i, label %bb.o, label %bb.n
end_hunk_6
begin_hunk_7_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
bb.o:                                             ; preds = %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !146 ; 4 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %bb.p, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i10.i.i

end_hunk_7
begin_hunk_8_@"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_":bb.a
  br i1 %.not.i17.i.i.i14.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
  %5 = load ptr, ptr %i.bm, align 8, !tbaa !143
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %7) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i15.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_14EnumDescriptorENS1_19EnumDescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i13.i.i
end_hunk_8
