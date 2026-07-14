inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_19EnumDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !554
  %i.aw = mul i32 %i.av, 48
  %i.ax = add i32 %i.aw, %i.an                    ; 2 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !3
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !554
  %i.az = shl nsw i32 %i.ay, 1
  %i.ba = add nsw i32 %i.y, %i.az                 ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !3
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !557
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = add i64 %i.bc, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = select i1 %i.be, ptr %i.at, ptr %i.bh   ; 4 uses
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !554 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.idx.i = shl nsw i64 %i.bk, 3                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %.idx.i
  %.not19.i = icmp eq i32 %i.bj, 0
  br i1 %.not19.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit.i
  %i.bm = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.bn = and i64 %i.bm, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !323
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = and i32 %i.bq, 2
  %.not18.i.prol = icmp eq i32 %i.br, 0
  br i1 %.not18.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol: ; preds = %.lr.ph.i.prol
  %i.bs = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.bs, ptr %i.v, align 8, !tbaa !3
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol, %.lr.ph.i.prol
  %i.bt = phi i32 [ %i.bs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.prol ], [ %i.x, %.lr.ph.i.prol ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr46 = phi i32 [ %i.x, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.020.i.unr = phi ptr [ %i.bi, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.bv = icmp eq i64 %i.bm, 0
  br i1 %i.bv, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.d
  %i.bw = phi i32 [ %i.cl, %bb.d ], [ %.unr46, %.lr.ph.i.prol.loopexit ]
  %i.bx = phi i32 [ %i.cm, %bb.d ], [ %.unr46, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.cn, %bb.d ], [ %.sroa.015.020.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.015.020.i, align 8, !tbaa !323
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = and i32 %i.ca, 2
  %.not18.i = icmp eq i32 %i.cb, 0
  br i1 %.not18.i, label %.lr.ph.i.1, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i: ; preds = %.lr.ph.i
  %i.cc = add nsw i32 %i.bx, 1                    ; 3 uses
  store i32 %i.cc, ptr %i.v, align 8, !tbaa !3
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i, %.lr.ph.i
  %i.cd = phi i32 [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i ], [ %i.bw, %.lr.ph.i ]
  %i.ce = phi i32 [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i ], [ %i.bx, %.lr.ph.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !323
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = and i32 %i.ci, 2
  %.not18.i.1 = icmp eq i32 %i.cj, 0
  br i1 %.not18.i.1, label %bb.d, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1: ; preds = %.lr.ph.i.1
  %i.ck = add nsw i32 %i.ce, 1                    ; 3 uses
  store i32 %i.ck, ptr %i.v, align 8, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1, %.lr.ph.i.1
  %i.cl = phi i32 [ %i.ck, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1 ], [ %i.cd, %.lr.ph.i.1 ] ; 2 uses
  %i.cm = phi i32 [ %i.ck, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISF_EEvi.exit.i.1 ], [ %i.ce, %.lr.ph.i.1 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 16 ; 2 uses
  %.not.i25.1 = icmp eq ptr %i.cn, %i.bl
  br i1 %.not.i25.1, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.lr.ph.i

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
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.035.041, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cz, %i.r
  br i1 %.not38, label %._crit_edge, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15PlanEntityNamesEm.exit
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !270
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62, i32 noundef 415, ptr noundef nonnull @.str.291) #43
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !554
  %i.d = mul i32 %i.c, 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = add i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = select i1 %i.k, ptr %0, ptr %i.n         ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !554  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 3
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.not.i21 = icmp eq i64 %1, 0
  %i.t = add i64 %1, 18
  %i.u = select i1 %.not.i21, i64 17, i64 %i.t    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.promoted = load i32, ptr %i.s, align 8
  %.promoted66 = load i32, ptr %i.v, align 4
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.w = phi i32 [ %.promoted66, %.lr.ph ], [ %i.eg, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.sroa.026.039 = phi ptr [ %i.o, %.lr.ph ], [ %i.eh, %bb.j ] ; 2 uses
  %i.y = phi i32 [ %i.g, %.lr.ph ], [ %.sink, %bb.j ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.026.039, align 8, !tbaa !323 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = and i32 %i.ab, 32
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit: ; preds = %bb.d
  %i.ad = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ad, ptr %i.s, align 8, !tbaa !3
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit, %bb.d
  %i.ae = phi i32 [ %i.ad, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.x, %bb.d ]
  %i.af = phi i32 [ %.pre, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !276
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 15 uses
  %4 = ptrtoint ptr %i.al to i64                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23 ; 13 uses
  %i.ao = and i32 %i.af, 16
  %.not37 = icmp eq i32 %i.ao, 0
  br i1 %.not37, label %.critedge.i.thread, label %.critedge.i

.critedge.i.thread:                               ; preds = %bb.e
  %.025.i30 = add i64 %i.u, %i.an
  br label %bb.f

.critedge.i:                                      ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -4                       ; 2 uses
  %.025.i = add i64 %i.u, %i.an                   ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread

bb.f:                                             ; preds = %.critedge.i.thread, %.critedge.i
  %.025.i34 = phi i64 [ %.025.i30, %.critedge.i.thread ], [ %.025.i, %.critedge.i ] ; 4 uses
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.al, align 1, !tbaa !22
  %i.aw = add i8 %i.av, -97
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  br i1 %i.ax, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.0146.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %bb.g ]
  %.0185.i.i = phi ptr [ %i.bd, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.az = load i8, ptr %.0185.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ba = add i8 %i.az, -65
  %i.bb = icmp ult i8 %i.ba, 26
  br i1 %i.bb, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bc = icmp eq i8 %i.az, 95
  %spec.select.i.i = select i1 %i.bc, i32 1, i32 %.0146.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0185.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, label %.lr.ph.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i: ; preds = %bb.h
  %i.be = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.be, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i
  %min.iters.check88 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check88, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec91 = and i64 %i.an, -4                    ; 3 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body92 ] ; 2 uses
  %vec.phi94 = phi <2 x i64> [ zeroinitializer, %vector.ph89 ], [ %i.bl, %vector.body92 ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph89 ], [ %i.bm, %vector.body92 ]
  %next.gep96 = getelementptr i8, ptr %i.al, i64 %index93 ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep96, i64 2
  %wide.load97 = load <2 x i8>, ptr %next.gep96, align 1, !tbaa !22
  %wide.load98 = load <2 x i8>, ptr %i.bg, align 1, !tbaa !22
  %i.bh = icmp eq <2 x i8> %wide.load97, splat (i8 95)
  %i.bi = icmp eq <2 x i8> %wide.load98, splat (i8 95)
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = add <2 x i64> %vec.phi94, %i.bj         ; 2 uses
  %i.bm = add <2 x i64> %vec.phi95, %i.bk         ; 2 uses
  %index.next99 = add nuw i64 %index93, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec91
  br i1 %i.bn, label %middle.block100, label %vector.body92, !llvm.loop !2217

middle.block100:                                  ; preds = %vector.body92
  %bin.rdx101 = add <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx101) ; 2 uses
  %cmp.n102 = icmp eq i64 %i.an, %n.vec91
  br i1 %cmp.n102, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.preheader106:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block100
  %.08.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block100 ]
  %.057.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %middle.block100 ]
  br label %.lr.ph.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, %bb.f
  %i.bp = trunc i64 %.025.i34 to i32
  %i.bq = add i32 %i.bp, 7
  %i.br = and i32 %i.bq, -8
  %i.bs = add i32 %i.y, %i.br
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ]
  %.057.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %i.bt = load i8, ptr %.057.i.i.i.i.i, align 1, !tbaa !22
  %i.bu = icmp eq i8 %i.bt, 95
  %i.bv = zext i1 %i.bu to i64
  %spec.select.i.i.i.i.i = add nuw nsw i64 %.08.i.i.i.i.i, %i.bv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.ay
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2218

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block100
  %spec.select.i.i.i.i.i.lcssa = phi i64 [ %i.bo, %middle.block100 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bx = add i64 %.025.i34, %i.an
  %i.by = sub i64 %i.bx, %spec.select.i.i.i.i.i.lcssa
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, -8
  %i.cb = add i32 %i.ca, 8
  %i.cc = add i32 %i.cb, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i: ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i.i.i.i35.preheader.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread: ; preds = %.critedge.i
  %i.ce = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %.not6.i.i.i.i34.i62 = icmp samesign eq i64 %i.an, 0
  br i1 %.not6.i.i.i.i34.i62, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i.i.i35.preheader.i:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %bb.g
  %i.cg = phi i1 [ true, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ true, %bb.g ], [ false, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i32 = phi i64 [ %.025.i34, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %.025.i34, %bb.g ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 2 uses
  %i.ch = phi ptr [ null, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ null, %bb.g ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.ci = phi ptr [ %i.cd, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %i.ay, %bb.g ], [ %i.cf, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 3 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = sub i64 %i.cj, %4                       ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.ck, 4
  br i1 %min.iters.check70, label %.lr.ph.i.i.i.i35.i.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.i.i.i.i35.preheader.i
  %n.vec73 = and i64 %i.ck, -4                    ; 3 uses
  %i.cl = getelementptr i8, ptr %i.al, i64 %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph71
  %index75 = phi i64 [ 0, %vector.ph71 ], [ %index.next81, %vector.body74 ] ; 2 uses
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.cr, %vector.body74 ]
  %vec.phi77 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.cs, %vector.body74 ]
  %next.gep78 = getelementptr i8, ptr %i.al, i64 %index75 ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep78, i64 2
  %wide.load79 = load <2 x i8>, ptr %next.gep78, align 1, !tbaa !22
  %wide.load80 = load <2 x i8>, ptr %i.cm, align 1, !tbaa !22
  %i.cn = icmp eq <2 x i8> %wide.load79, splat (i8 95)
  %i.co = icmp eq <2 x i8> %wide.load80, splat (i8 95)
  %i.cp = zext <2 x i1> %i.cn to <2 x i64>
  %i.cq = zext <2 x i1> %i.co to <2 x i64>
  %i.cr = add <2 x i64> %vec.phi76, %i.cp         ; 2 uses
  %i.cs = add <2 x i64> %vec.phi77, %i.cq         ; 2 uses
  %index.next81 = add nuw i64 %index75, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next81, %n.vec73
  br i1 %i.ct, label %middle.block82, label %vector.body74, !llvm.loop !2219

middle.block82:                                   ; preds = %vector.body74
  %bin.rdx83 = add <2 x i64> %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx83) ; 2 uses
  %cmp.n84 = icmp eq i64 %i.ck, %n.vec73
  br i1 %cmp.n84, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i.preheader

.lr.ph.i.i.i.i35.i.preheader:                     ; preds = %.lr.ph.i.i.i.i35.preheader.i, %middle.block82
  %.08.i.i.i.i36.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.cu, %middle.block82 ]
  %.057.i.i.i.i37.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.cl, %middle.block82 ]
  br label %.lr.ph.i.i.i.i35.i

.lr.ph.i.i.i.i35.i:                               ; preds = %.lr.ph.i.i.i.i35.i.preheader, %.lr.ph.i.i.i.i35.i
  %.08.i.i.i.i36.i = phi i64 [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ], [ %.08.i.i.i.i36.i.ph, %.lr.ph.i.i.i.i35.i.preheader ]
  %.057.i.i.i.i37.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i35.i ], [ %.057.i.i.i.i37.i.ph, %.lr.ph.i.i.i.i35.i.preheader ] ; 2 uses
  %i.cv = load i8, ptr %.057.i.i.i.i37.i, align 1, !tbaa !22
  %i.cw = icmp eq i8 %i.cv, 95
  %i.cx = zext i1 %i.cw to i64
  %spec.select.i.i.i.i38.i = add nuw nsw i64 %.08.i.i.i.i36.i, %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i37.i, i64 1 ; 2 uses
  %.not.i.i.i.i39.i = icmp eq ptr %i.cy, %i.ci
  br i1 %.not.i.i.i.i39.i, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i, !llvm.loop !2220

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread: ; preds = %.lr.ph.i.i.i.i35.i, %middle.block82
  %spec.select.i.i.i.i38.i.lcssa = phi i64 [ %i.cu, %middle.block82 ], [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ] ; 2 uses
  br i1 %i.cg, label %.lr.ph.i.i.i.i43.i.preheader, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64

.lr.ph.i.i.i.i43.i.preheader:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %i.cz = sub i64 %i.cj, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i43.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i43.i.preheader
  %n.vec = and i64 %i.cz, -4                      ; 3 uses
  %i.da = getelementptr i8, ptr %i.al, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi67 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !22
  %wide.load68 = load <2 x i8>, ptr %i.db, align 1, !tbaa !22
  %i.dc = icmp eq <2 x i8> %wide.load, splat (i8 95)
  %i.dd = icmp eq <2 x i8> %wide.load68, splat (i8 95)
  %i.de = zext <2 x i1> %i.dc to <2 x i64>
  %i.df = zext <2 x i1> %i.dd to <2 x i64>
  %i.dg = add <2 x i64> %vec.phi, %i.de           ; 2 uses
  %i.dh = add <2 x i64> %vec.phi67, %i.df         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !2221

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dh, %i.dg
  %i.dj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i.preheader105

.lr.ph.i.i.i.i43.i.preheader105:                  ; preds = %.lr.ph.i.i.i.i43.i.preheader, %middle.block
  %.08.i.i.i.i44.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.dj, %middle.block ]
  %.057.i.i.i.i45.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i43.i

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %.0.lcssa.i.i.i.i40.i52 = phi i64 [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.dk = phi ptr [ %i.ch, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i3148 = phi i64 [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !23
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

.lr.ph.i.i.i.i43.i:                               ; preds = %.lr.ph.i.i.i.i43.i.preheader105, %.lr.ph.i.i.i.i43.i
  %.08.i.i.i.i44.i = phi i64 [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ], [ %.08.i.i.i.i44.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ]
  %.057.i.i.i.i45.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i43.i ], [ %.057.i.i.i.i45.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ] ; 2 uses
  %i.dn = load i8, ptr %.057.i.i.i.i45.i, align 1, !tbaa !22
  %i.do = icmp eq i8 %i.dn, 95
  %i.dp = zext i1 %i.do to i64
  %spec.select.i.i.i.i46.i = add nuw nsw i64 %.08.i.i.i.i44.i, %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i45.i, i64 1 ; 2 uses
  %.not.i.i.i.i47.i = icmp eq ptr %i.dq, %i.ci
  br i1 %.not.i.i.i.i47.i, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i, !llvm.loop !2222

_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.i43.i, %middle.block
  %spec.select.i.i.i.i46.i.lcssa = phi i64 [ %i.dj, %middle.block ], [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ]
  %i.dr = sub i64 %i.an, %spec.select.i.i.i.i46.i.lcssa
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64
  %.0.lcssa.i.i.i.i40.i51 = phi i64 [ %.0.lcssa.i.i.i.i40.i52, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.025.i3147 = phi i64 [ %.025.i3148, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %i.ds = phi i64 [ %i.dm, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %i.dr, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %factor.i = shl i64 %i.an, 1
  %i.dt = add i64 %factor.i, 3
  %i.du = add i64 %i.dt, %.025.i3147
  %i.dv = sub i64 %i.du, %.0.lcssa.i.i.i.i40.i51
  %i.dw = add i64 %i.dv, %i.ds
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = add i32 %i.dx, 7
  %i.dz = and i32 %i.dy, -8
  %i.ea = add i32 %i.dz, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i
  %.sink = phi i32 [ %i.bs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ], [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i ], [ %i.ea, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i ] ; 2 uses
  store i32 %.sink, ptr %i.e, align 8, !tbaa !3
  %i.eb = load i32, ptr %i.aa, align 8, !tbaa !3
  %i.ec = and i32 %i.eb, 1032
  %or.cond = icmp eq i32 %i.ec, 1032
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !22
  switch i32 %i.ee, label %bb.j [
    i32 9, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
    i32 12, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  ]

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %bb.i, %bb.i
  %i.ef = add nsw i32 %i.w, 1                     ; 2 uses
  store i32 %i.ef, ptr %i.v, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.eg = phi i32 [ %i.w, %bb.i ], [ %i.ef, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ], [ %i.w, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.r
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SF_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_202505129CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2IPKPKcEET_SI_mRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.377", align 8    ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, label %bb.c

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i13, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %i.j = and i64 %i.i, 4294967295
  %i.k = lshr i64 -1, %i.j
  br label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.k, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = icmp ugt i64 %.0.i, 1
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i)
end_hunk_0
