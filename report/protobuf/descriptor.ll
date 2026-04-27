inline.NumInlined: 22183
inline.NumDeleted: 7890
begin_hunk_0_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_15DescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !554
  %i.ay = mul i32 %i.ax, 40
  %i.az = load i32, ptr %i.e, align 8, !tbaa !3
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !3
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !557
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_15DescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %.prol.loopexit, %bb.k, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_10Descriptor14ExtensionRangeEEEvi.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !554
  %i.dd = shl i32 %i.dc, 3
  %i.de = add i32 %i.dd, %i.ba                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 144 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !554
  %i.dh = shl i32 %i.dg, 3
  %i.di = add i32 %i.dh, %i.de
  store i32 %i.di, ptr %i.e, align 8, !tbaa !3
  %i.dj = load i32, ptr %i.df, align 8, !tbaa !554
  %i.dk = load i32, ptr %i.v, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !554
  %i.aw = mul i32 %i.av, 48
  %i.ax = add i32 %i.aw, %i.an                    ; 2 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !3
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !554
  %i.az = shl nsw i32 %i.ay, 1
end_hunk_2
begin_hunk_3_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.d, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.co = phi i32 [ %i.x, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %bb.d ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !554
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.cr, %i.ax                    ; 2 uses
  store i32 %i.cs, ptr %i.e, align 8, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !554
  %i.cv = shl i32 %i.cu, 3
  %i.cw = add i32 %i.cv, %i.cs                    ; 2 uses
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !3
  %i.cx = load i32, ptr %i.ct, align 8, !tbaa !554
  %i.cy = add nsw i32 %i.cx, %i.ba                ; 2 uses
end_hunk_3
