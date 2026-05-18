inline.NumInlined: 8096
inline.NumDeleted: 3435
begin_hunk_0_@_ZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorE:bb.a
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  store i32 %i.p, ptr %i.aq, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ar = load i8, ptr %i.s, align 8, !tbaa !89
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSt7variantIJiljmfdbS6_S8_S9_SD_SJ_EEEE9_S_vtableE, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94
  invoke void %i.au(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN15LocalVarWrapperD2Ev.exit unwind label %bb.l, !inline_history !95

bb.l:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #37
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN15LocalVarWrapperD2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.m:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.ax = load i8, ptr %i.s, align 8, !tbaa !89
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSt7variantIJiljmfdbS6_S8_S9_SD_SJ_EEEE9_S_vtableE, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94
  invoke void %i.ba(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN15LocalVarWrapperD2Ev.exit43 unwind label %bb.n, !inline_history !95

bb.n:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #37
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN15LocalVarWrapperD2Ev.exit43: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection22UnsafeShallowSwapFieldEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 9 uses
  %i.c = load i8, ptr %i.b, align 1               ; 17 uses
  %i.d = and i8 %i.c, 32
  %.not = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !96
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !97   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %i.i, label %bb.e [
    i32 10, label %bb.c
    i32 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.do

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.do

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper28SwapNonMessageNonStringFieldEPKNS0_10ReflectionEPNS0_7MessageES7_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.do

bb.f:                                             ; preds = %bb.a
  switch i32 %i.i, label %bb.di [
    i32 1, label %bb.g
    i32 2, label %bb.t
    i32 3, label %bb.ag
    i32 4, label %bb.at
    i32 6, label %bb.bg
    i32 5, label %bb.bt
    i32 7, label %bb.cg
    i32 8, label %bb.ct
    i32 9, label %bb.dg
    i32 10, label %bb.dh
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.pre531 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i8 %.pre531, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not1.i.i.i, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.i
  %.sink7.in.i.i.i = phi ptr [ %i.t, %bb.j ], [ %i.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.n, %bb.i ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.u = ptrtoint ptr %3 to i64
  %i.v = ptrtoint ptr %.sink7.i.i.i to i64
  %i.w = sub i64 %i.u, %i.v
  %.0.in.i.i.i = sdiv exact i64 %i.w, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.x = ashr exact i64 %sext.i.i, 30
  %i.y = getelementptr inbounds i8, ptr %.pre.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.ab = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre528 = load i32, ptr %i.j, align 4, !tbaa !99
  %.pre.i55.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i57.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.g, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre531, 0
  br i1 %.not.i.i8.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i10.i, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.m:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.m, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.l
  %.sink7.in.i.i13.i = phi ptr [ %i.ak, %bb.m ], [ %i.ah, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.ae, %bb.l ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.al = ptrtoint ptr %3 to i64
  %i.am = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.an = sub i64 %i.al, %i.am
  %.0.in.i.i15.i = sdiv exact i64 %i.an, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ao = ashr exact i64 %sext.i16.i, 30
  %i.ap = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = and i32 %i.aq, 2147483640
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.k, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i57 = phi i8 [ %.pre18.i57.pre, %bb.k ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i55 = phi ptr [ %.pre.i55.pre, %bb.k ], [ %.pre.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.au = phi i32 [ %.pre528, %bb.k ], [ %i.k, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.ab, %bb.k ], [ %i.at, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i53 = icmp eq i32 %i.au, -1
  %.pre532 = and i8 %.pre18.i57, 8                ; 2 uses
  br i1 %.not.i.i53, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i67, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i58 = icmp eq i8 %.pre532, 0
  br i1 %.not.i.i.i58, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i59

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i59: ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i60 = icmp eq ptr %i.az, null
  br i1 %.not1.i.i.i60, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i61

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i61: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62

bb.p:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i59
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62: ; preds = %bb.p, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i61, %bb.o
  %.sink7.in.i.i.i63 = phi ptr [ %i.bd, %bb.p ], [ %i.ba, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i61 ], [ %i.ax, %bb.o ]
  %.sink7.i.i.i64 = load ptr, ptr %.sink7.in.i.i.i63, align 8, !tbaa !33
  %i.be = ptrtoint ptr %3 to i64
  %i.bf = ptrtoint ptr %.sink7.i.i.i64 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.0.in.i.i.i65 = sdiv exact i64 %i.bg, 88
  %sext.i.i66 = shl i64 %.0.in.i.i.i65, 32
  %i.bh = ashr exact i64 %sext.i.i66, 30
  %i.bi = getelementptr inbounds i8, ptr %.pre.i55, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.q, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i67, !prof !103

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62
  %i.bl = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit78

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i67: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i62
  %.not.i.i8.i68 = icmp eq i8 %.pre532, 0
  br i1 %.not.i.i8.i68, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i69

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i67
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i69: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i67
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i70 = icmp eq ptr %i.bq, null
  br i1 %.not1.i.i10.i70, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i71

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i71: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i69
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i69
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i71, %bb.r
  %.sink7.in.i.i13.i73 = phi ptr [ %i.bu, %bb.s ], [ %i.br, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i71 ], [ %i.bo, %bb.r ]
  %.sink7.i.i14.i74 = load ptr, ptr %.sink7.in.i.i13.i73, align 8, !tbaa !33
  %i.bv = ptrtoint ptr %3 to i64
  %i.bw = ptrtoint ptr %.sink7.i.i14.i74 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %.0.in.i.i15.i75 = sdiv exact i64 %i.bx, 88
  %sext.i16.i76 = shl i64 %.0.in.i.i15.i75, 32
  %i.by = ashr exact i64 %sext.i16.i76, 30
  %i.bz = getelementptr inbounds i8, ptr %.pre.i55, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = and i32 %i.ca, 2147483640
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit78

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit78: ; preds = %bb.q, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72
  %.0.i77 = phi ptr [ %i.bl, %bb.q ], [ %i.cd, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i72 ] ; 4 uses
  %i.ce = load i32, ptr %.0.i, align 4, !tbaa !104 ; 2 uses
  %i.cf = load i32, ptr %.0.i77, align 4, !tbaa !104
  %i.cg = xor i32 %i.cf, %i.ce
  %i.ch = and i32 %i.cg, 1                        ; 2 uses
  %i.ci = xor i32 %i.ch, %i.ce
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !104
  %i.cj = load i32, ptr %.0.i77, align 4, !tbaa !104
  %i.ck = xor i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %.0.i77, align 4, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i77, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %5 = load <12 x i8>, ptr %i.cm, align 4, !tbaa !31, !alias.scope !109, !noalias !106
  %6 = load <12 x i8>, ptr %i.cl, align 4, !tbaa !31, !alias.scope !106, !noalias !109
  store <12 x i8> %5, ptr %i.cl, align 4, !tbaa !31, !alias.scope !106, !noalias !109
  store <12 x i8> %6, ptr %i.cm, align 4, !tbaa !31, !alias.scope !109, !noalias !106
  br label %bb.do

bb.t:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !99 ; 2 uses
  %.not.i.i79 = icmp eq i32 %i.co, -1
  %.phi.trans.insert.i80 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i81 = load ptr, ptr %.phi.trans.insert.i80, align 8, !tbaa !100 ; 3 uses
  %.pre534 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i79, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i93, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i84 = icmp eq i8 %.pre534, 0
  br i1 %.not.i.i.i84, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i85

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i85: ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i86 = icmp eq ptr %i.ct, null
  br i1 %.not1.i.i.i86, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i87

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i87: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88

bb.w:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i85
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88: ; preds = %bb.w, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i87, %bb.v
  %.sink7.in.i.i.i89 = phi ptr [ %i.cx, %bb.w ], [ %i.cu, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i87 ], [ %i.cr, %bb.v ]
  %.sink7.i.i.i90 = load ptr, ptr %.sink7.in.i.i.i89, align 8, !tbaa !33
  %i.cy = ptrtoint ptr %3 to i64
  %i.cz = ptrtoint ptr %.sink7.i.i.i90 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %.0.in.i.i.i91 = sdiv exact i64 %i.da, 88
  %sext.i.i92 = shl i64 %.0.in.i.i.i91, 32
  %i.db = ashr exact i64 %sext.i.i92, 30
  %i.dc = getelementptr inbounds i8, ptr %.pre.i81, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.x, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i93, !prof !103

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88
  %i.df = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre525 = load i32, ptr %i.cn, align 4, !tbaa !99
  %.pre.i105.pre = load ptr, ptr %.phi.trans.insert.i80, align 8, !tbaa !100
  %.pre18.i107.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i93: ; preds = %bb.t, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i88
  %.not.i.i8.i94 = icmp eq i8 %.pre534, 0
  br i1 %.not.i.i8.i94, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i95

bb.y:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i93
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !101
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i95: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i93
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i96 = icmp eq ptr %i.dk, null
  br i1 %.not1.i.i10.i96, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i97

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i97: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i95
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.z:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i95
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i97, %bb.y
  %.sink7.in.i.i13.i98 = phi ptr [ %i.do, %bb.z ], [ %i.dl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i97 ], [ %i.di, %bb.y ]
  %.sink7.i.i14.i99 = load ptr, ptr %.sink7.in.i.i13.i98, align 8, !tbaa !33
  %i.dp = ptrtoint ptr %3 to i64
  %i.dq = ptrtoint ptr %.sink7.i.i14.i99 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %.0.in.i.i15.i100 = sdiv exact i64 %i.dr, 88
  %sext.i16.i101 = shl i64 %.0.in.i.i15.i100, 32
  %i.ds = ashr exact i64 %sext.i16.i101, 30
  %i.dt = getelementptr inbounds i8, ptr %.pre.i81, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = and i32 %i.du, 2147483640
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.x, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i107 = phi i8 [ %.pre18.i107.pre, %bb.x ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i105 = phi ptr [ %.pre.i105.pre, %bb.x ], [ %.pre.i81, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.dy = phi i32 [ %.pre525, %bb.x ], [ %i.co, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i102 = phi ptr [ %i.df, %bb.x ], [ %i.dx, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i103 = icmp eq i32 %i.dy, -1
  %.pre536 = and i8 %.pre18.i107, 8               ; 2 uses
  br i1 %.not.i.i103, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i108 = icmp eq i8 %.pre536, 0
  br i1 %.not.i.i.i108, label %bb.ab, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109: ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i110 = icmp eq ptr %i.ed, null
  br i1 %.not1.i.i.i110, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112

bb.ac:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i109
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !102
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112: ; preds = %bb.ac, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111, %bb.ab
  %.sink7.in.i.i.i113 = phi ptr [ %i.eh, %bb.ac ], [ %i.ee, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i111 ], [ %i.eb, %bb.ab ]
  %.sink7.i.i.i114 = load ptr, ptr %.sink7.in.i.i.i113, align 8, !tbaa !33
  %i.ei = ptrtoint ptr %3 to i64
  %i.ej = ptrtoint ptr %.sink7.i.i.i114 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %.0.in.i.i.i115 = sdiv exact i64 %i.ek, 88
  %sext.i.i116 = shl i64 %.0.in.i.i.i115, 32
  %i.el = ashr exact i64 %sext.i.i116, 30
  %i.em = getelementptr inbounds i8, ptr %.pre.i105, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.ad, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117, !prof !103

bb.ad:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112
  %i.ep = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit128

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i112
  %.not.i.i8.i118 = icmp eq i8 %.pre536, 0
  br i1 %.not.i.i8.i118, label %bb.ae, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i119

bb.ae:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !101
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i119: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i117
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i120 = icmp eq ptr %i.eu, null
  br i1 %.not1.i.i10.i120, label %bb.af, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i121

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i121: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i119
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122

bb.af:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i119
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !102
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122: ; preds = %bb.af, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i121, %bb.ae
  %.sink7.in.i.i13.i123 = phi ptr [ %i.ey, %bb.af ], [ %i.ev, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i121 ], [ %i.es, %bb.ae ]
  %.sink7.i.i14.i124 = load ptr, ptr %.sink7.in.i.i13.i123, align 8, !tbaa !33
  %i.ez = ptrtoint ptr %3 to i64
  %i.fa = ptrtoint ptr %.sink7.i.i14.i124 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %.0.in.i.i15.i125 = sdiv exact i64 %i.fb, 88
  %sext.i16.i126 = shl i64 %.0.in.i.i15.i125, 32
  %i.fc = ashr exact i64 %sext.i16.i126, 30
  %i.fd = getelementptr inbounds i8, ptr %.pre.i105, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = and i32 %i.fe, 2147483640
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit128

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit128: ; preds = %bb.ad, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122
  %.0.i127 = phi ptr [ %i.ep, %bb.ad ], [ %i.fh, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i122 ] ; 4 uses
  %i.fi = load i32, ptr %.0.i102, align 4, !tbaa !104 ; 2 uses
  %i.fj = load i32, ptr %.0.i127, align 4, !tbaa !104
  %i.fk = xor i32 %i.fj, %i.fi
  %i.fl = and i32 %i.fk, 1                        ; 2 uses
  %i.fm = xor i32 %i.fl, %i.fi
  store i32 %i.fm, ptr %.0.i102, align 4, !tbaa !104
  %i.fn = load i32, ptr %.0.i127, align 4, !tbaa !104
  %i.fo = xor i32 %i.fn, %i.fl
  store i32 %i.fo, ptr %.0.i127, align 4, !tbaa !104
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i102, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i127, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %7 = load <12 x i8>, ptr %i.fq, align 4, !tbaa !31, !alias.scope !114, !noalias !111
  %8 = load <12 x i8>, ptr %i.fp, align 4, !tbaa !31, !alias.scope !111, !noalias !114
  store <12 x i8> %7, ptr %i.fp, align 4, !tbaa !31, !alias.scope !111, !noalias !114
  store <12 x i8> %8, ptr %i.fq, align 4, !tbaa !31, !alias.scope !114, !noalias !111
  br label %bb.do

bb.ag:                                            ; preds = %bb.f
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !99 ; 2 uses
  %.not.i.i140 = icmp eq i32 %i.fs, -1
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i142 = load ptr, ptr %.phi.trans.insert.i141, align 8, !tbaa !100 ; 3 uses
  %.pre538 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i140, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i154, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i145 = icmp eq i8 %.pre538, 0
  br i1 %.not.i.i.i145, label %bb.ai, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i146

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !101
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i146: ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i147 = icmp eq ptr %i.fx, null
  br i1 %.not1.i.i.i147, label %bb.aj, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i148

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i148: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i146
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149

bb.aj:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i146
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !102
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149: ; preds = %bb.aj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i148, %bb.ai
  %.sink7.in.i.i.i150 = phi ptr [ %i.gb, %bb.aj ], [ %i.fy, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i148 ], [ %i.fv, %bb.ai ]
  %.sink7.i.i.i151 = load ptr, ptr %.sink7.in.i.i.i150, align 8, !tbaa !33
  %i.gc = ptrtoint ptr %3 to i64
  %i.gd = ptrtoint ptr %.sink7.i.i.i151 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %.0.in.i.i.i152 = sdiv exact i64 %i.ge, 88
  %sext.i.i153 = shl i64 %.0.in.i.i.i152, 32
  %i.gf = ashr exact i64 %sext.i.i153, 30
  %i.gg = getelementptr inbounds i8, ptr %.pre.i142, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.ak, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i154, !prof !103

bb.ak:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149
  %i.gj = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre522 = load i32, ptr %i.fr, align 4, !tbaa !99
  %.pre.i166.pre = load ptr, ptr %.phi.trans.insert.i141, align 8, !tbaa !100
  %.pre18.i168.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i154: ; preds = %bb.ag, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i149
  %.not.i.i8.i155 = icmp eq i8 %.pre538, 0
  br i1 %.not.i.i8.i155, label %bb.al, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i156

bb.al:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i154
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !101
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i156: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i154
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i157 = icmp eq ptr %i.go, null
  br i1 %.not1.i.i10.i157, label %bb.am, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i158

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i158: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i156
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.am:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i156
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !102
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.am, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i158, %bb.al
  %.sink7.in.i.i13.i159 = phi ptr [ %i.gs, %bb.am ], [ %i.gp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i158 ], [ %i.gm, %bb.al ]
  %.sink7.i.i14.i160 = load ptr, ptr %.sink7.in.i.i13.i159, align 8, !tbaa !33
  %i.gt = ptrtoint ptr %3 to i64
  %i.gu = ptrtoint ptr %.sink7.i.i14.i160 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %.0.in.i.i15.i161 = sdiv exact i64 %i.gv, 88
  %sext.i16.i162 = shl i64 %.0.in.i.i15.i161, 32
  %i.gw = ashr exact i64 %sext.i16.i162, 30
  %i.gx = getelementptr inbounds i8, ptr %.pre.i142, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = and i32 %i.gy, 2147483640
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ha
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ak, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i168 = phi i8 [ %.pre18.i168.pre, %bb.ak ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i166 = phi ptr [ %.pre.i166.pre, %bb.ak ], [ %.pre.i142, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.hc = phi i32 [ %.pre522, %bb.ak ], [ %i.fs, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i163 = phi ptr [ %i.gj, %bb.ak ], [ %i.hb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i164 = icmp eq i32 %i.hc, -1
  %.pre540 = and i8 %.pre18.i168, 8               ; 2 uses
  br i1 %.not.i.i164, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i178, label %bb.an

bb.an:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i169 = icmp eq i8 %.pre540, 0
  br i1 %.not.i.i.i169, label %bb.ao, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i170

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !101
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i170: ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i171 = icmp eq ptr %i.hh, null
  br i1 %.not1.i.i.i171, label %bb.ap, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i172

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i172: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i170
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173

bb.ap:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i170
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173: ; preds = %bb.ap, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i172, %bb.ao
  %.sink7.in.i.i.i174 = phi ptr [ %i.hl, %bb.ap ], [ %i.hi, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i172 ], [ %i.hf, %bb.ao ]
  %.sink7.i.i.i175 = load ptr, ptr %.sink7.in.i.i.i174, align 8, !tbaa !33
  %i.hm = ptrtoint ptr %3 to i64
  %i.hn = ptrtoint ptr %.sink7.i.i.i175 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %.0.in.i.i.i176 = sdiv exact i64 %i.ho, 88
  %sext.i.i177 = shl i64 %.0.in.i.i.i176, 32
  %i.hp = ashr exact i64 %sext.i.i177, 30
  %i.hq = getelementptr inbounds i8, ptr %.pre.i166, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %bb.aq, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i178, !prof !103

bb.aq:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173
  %i.ht = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit189

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i178: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i173
  %.not.i.i8.i179 = icmp eq i8 %.pre540, 0
  br i1 %.not.i.i8.i179, label %bb.ar, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i180

bb.ar:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i178
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !101
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i180: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i178
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i181 = icmp eq ptr %i.hy, null
  br i1 %.not1.i.i10.i181, label %bb.as, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i182

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i182: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i180
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183

bb.as:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i180
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183: ; preds = %bb.as, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i182, %bb.ar
  %.sink7.in.i.i13.i184 = phi ptr [ %i.ic, %bb.as ], [ %i.hz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i182 ], [ %i.hw, %bb.ar ]
  %.sink7.i.i14.i185 = load ptr, ptr %.sink7.in.i.i13.i184, align 8, !tbaa !33
  %i.id = ptrtoint ptr %3 to i64
  %i.ie = ptrtoint ptr %.sink7.i.i14.i185 to i64
  %i.if = sub i64 %i.id, %i.ie
  %.0.in.i.i15.i186 = sdiv exact i64 %i.if, 88
  %sext.i16.i187 = shl i64 %.0.in.i.i15.i186, 32
  %i.ig = ashr exact i64 %sext.i16.i187, 30
  %i.ih = getelementptr inbounds i8, ptr %.pre.i166, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = and i32 %i.ii, 2147483640
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 %i.ik
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit189

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit189: ; preds = %bb.aq, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183
  %.0.i188 = phi ptr [ %i.ht, %bb.aq ], [ %i.il, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i183 ] ; 4 uses
  %i.im = load i32, ptr %.0.i163, align 4, !tbaa !104 ; 2 uses
  %i.in = load i32, ptr %.0.i188, align 4, !tbaa !104
  %i.io = xor i32 %i.in, %i.im
  %i.ip = and i32 %i.io, 1                        ; 2 uses
  %i.iq = xor i32 %i.ip, %i.im
  store i32 %i.iq, ptr %.0.i163, align 4, !tbaa !104
  %i.ir = load i32, ptr %.0.i188, align 4, !tbaa !104
  %i.is = xor i32 %i.ir, %i.ip
  store i32 %i.is, ptr %.0.i188, align 4, !tbaa !104
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i163, i64 4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.i188, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %9 = load <12 x i8>, ptr %i.iu, align 4, !tbaa !31, !alias.scope !119, !noalias !116
  %10 = load <12 x i8>, ptr %i.it, align 4, !tbaa !31, !alias.scope !116, !noalias !119
  store <12 x i8> %9, ptr %i.it, align 4, !tbaa !31, !alias.scope !116, !noalias !119
  store <12 x i8> %10, ptr %i.iu, align 4, !tbaa !31, !alias.scope !119, !noalias !116
  br label %bb.do

bb.at:                                            ; preds = %bb.f
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !99 ; 2 uses
  %.not.i.i201 = icmp eq i32 %i.iw, -1
  %.phi.trans.insert.i202 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i203 = load ptr, ptr %.phi.trans.insert.i202, align 8, !tbaa !100 ; 3 uses
  %.pre542 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i201, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i215, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i206 = icmp eq i8 %.pre542, 0
  br i1 %.not.i.i.i206, label %bb.av, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i207

bb.av:                                            ; preds = %bb.au
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !101
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i207: ; preds = %bb.au
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i208 = icmp eq ptr %i.jb, null
  br i1 %.not1.i.i.i208, label %bb.aw, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i209

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i209: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i207
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210

bb.aw:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i207
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !102
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210: ; preds = %bb.aw, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i209, %bb.av
  %.sink7.in.i.i.i211 = phi ptr [ %i.jf, %bb.aw ], [ %i.jc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i209 ], [ %i.iz, %bb.av ]
  %.sink7.i.i.i212 = load ptr, ptr %.sink7.in.i.i.i211, align 8, !tbaa !33
  %i.jg = ptrtoint ptr %3 to i64
  %i.jh = ptrtoint ptr %.sink7.i.i.i212 to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %.0.in.i.i.i213 = sdiv exact i64 %i.ji, 88
  %sext.i.i214 = shl i64 %.0.in.i.i.i213, 32
  %i.jj = ashr exact i64 %sext.i.i214, 30
  %i.jk = getelementptr inbounds i8, ptr %.pre.i203, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jm = icmp slt i32 %i.jl, 0
  br i1 %i.jm, label %bb.ax, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i215, !prof !103

bb.ax:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210
  %i.jn = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre519 = load i32, ptr %i.iv, align 4, !tbaa !99
  %.pre.i227.pre = load ptr, ptr %.phi.trans.insert.i202, align 8, !tbaa !100
  %.pre18.i229.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i215: ; preds = %bb.at, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i210
  %.not.i.i8.i216 = icmp eq i8 %.pre542, 0
  br i1 %.not.i.i8.i216, label %bb.ay, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i217

bb.ay:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i215
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !101
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i217: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i215
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i218 = icmp eq ptr %i.js, null
  br i1 %.not1.i.i10.i218, label %bb.az, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i219

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i219: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i217
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.az:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i217
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !102
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.az, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i219, %bb.ay
  %.sink7.in.i.i13.i220 = phi ptr [ %i.jw, %bb.az ], [ %i.jt, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i219 ], [ %i.jq, %bb.ay ]
  %.sink7.i.i14.i221 = load ptr, ptr %.sink7.in.i.i13.i220, align 8, !tbaa !33
  %i.jx = ptrtoint ptr %3 to i64
  %i.jy = ptrtoint ptr %.sink7.i.i14.i221 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %.0.in.i.i15.i222 = sdiv exact i64 %i.jz, 88
  %sext.i16.i223 = shl i64 %.0.in.i.i15.i222, 32
  %i.ka = ashr exact i64 %sext.i16.i223, 30
  %i.kb = getelementptr inbounds i8, ptr %.pre.i203, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = and i32 %i.kc, 2147483640
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ke
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ax, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i229 = phi i8 [ %.pre18.i229.pre, %bb.ax ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i227 = phi ptr [ %.pre.i227.pre, %bb.ax ], [ %.pre.i203, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.kg = phi i32 [ %.pre519, %bb.ax ], [ %i.iw, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i224 = phi ptr [ %i.jn, %bb.ax ], [ %i.kf, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i225 = icmp eq i32 %i.kg, -1
  %.pre544 = and i8 %.pre18.i229, 8               ; 2 uses
  br i1 %.not.i.i225, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i239, label %bb.ba

bb.ba:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i230 = icmp eq i8 %.pre544, 0
  br i1 %.not.i.i.i230, label %bb.bb, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i231

bb.bb:                                            ; preds = %bb.ba
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !101
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i231: ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i232 = icmp eq ptr %i.kl, null
  br i1 %.not1.i.i.i232, label %bb.bc, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i233

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i233: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i231
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234

bb.bc:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i231
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !102
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234: ; preds = %bb.bc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i233, %bb.bb
  %.sink7.in.i.i.i235 = phi ptr [ %i.kp, %bb.bc ], [ %i.km, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i233 ], [ %i.kj, %bb.bb ]
  %.sink7.i.i.i236 = load ptr, ptr %.sink7.in.i.i.i235, align 8, !tbaa !33
  %i.kq = ptrtoint ptr %3 to i64
  %i.kr = ptrtoint ptr %.sink7.i.i.i236 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %.0.in.i.i.i237 = sdiv exact i64 %i.ks, 88
  %sext.i.i238 = shl i64 %.0.in.i.i.i237, 32
  %i.kt = ashr exact i64 %sext.i.i238, 30
  %i.ku = getelementptr inbounds i8, ptr %.pre.i227, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bd, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i239, !prof !103

bb.bd:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234
  %i.kx = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit250

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i239: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i234
  %.not.i.i8.i240 = icmp eq i8 %.pre544, 0
  br i1 %.not.i.i8.i240, label %bb.be, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i241

bb.be:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i239
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !101
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i241: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i239
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i242 = icmp eq ptr %i.lc, null
  br i1 %.not1.i.i10.i242, label %bb.bf, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i243

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i243: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i241
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244

bb.bf:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i241
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !102
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244: ; preds = %bb.bf, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i243, %bb.be
  %.sink7.in.i.i13.i245 = phi ptr [ %i.lg, %bb.bf ], [ %i.ld, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i243 ], [ %i.la, %bb.be ]
  %.sink7.i.i14.i246 = load ptr, ptr %.sink7.in.i.i13.i245, align 8, !tbaa !33
  %i.lh = ptrtoint ptr %3 to i64
  %i.li = ptrtoint ptr %.sink7.i.i14.i246 to i64
  %i.lj = sub i64 %i.lh, %i.li
  %.0.in.i.i15.i247 = sdiv exact i64 %i.lj, 88
  %sext.i16.i248 = shl i64 %.0.in.i.i15.i247, 32
  %i.lk = ashr exact i64 %sext.i16.i248, 30
  %i.ll = getelementptr inbounds i8, ptr %.pre.i227, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = and i32 %i.lm, 2147483640
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 %i.lo
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit250

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit250: ; preds = %bb.bd, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244
  %.0.i249 = phi ptr [ %i.kx, %bb.bd ], [ %i.lp, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i244 ] ; 4 uses
  %i.lq = load i32, ptr %.0.i224, align 4, !tbaa !104 ; 2 uses
  %i.lr = load i32, ptr %.0.i249, align 4, !tbaa !104
  %i.ls = xor i32 %i.lr, %i.lq
  %i.lt = and i32 %i.ls, 1                        ; 2 uses
  %i.lu = xor i32 %i.lt, %i.lq
  store i32 %i.lu, ptr %.0.i224, align 4, !tbaa !104
  %i.lv = load i32, ptr %.0.i249, align 4, !tbaa !104
  %i.lw = xor i32 %i.lv, %i.lt
  store i32 %i.lw, ptr %.0.i249, align 4, !tbaa !104
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i224, i64 4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i249, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %11 = load <12 x i8>, ptr %i.ly, align 4, !tbaa !31, !alias.scope !124, !noalias !121
  %12 = load <12 x i8>, ptr %i.lx, align 4, !tbaa !31, !alias.scope !121, !noalias !124
  store <12 x i8> %11, ptr %i.lx, align 4, !tbaa !31, !alias.scope !121, !noalias !124
  store <12 x i8> %12, ptr %i.ly, align 4, !tbaa !31, !alias.scope !124, !noalias !121
  br label %bb.do

bb.bg:                                            ; preds = %bb.f
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !99 ; 2 uses
  %.not.i.i262 = icmp eq i32 %i.ma, -1
  %.phi.trans.insert.i263 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i264 = load ptr, ptr %.phi.trans.insert.i263, align 8, !tbaa !100 ; 3 uses
  %.pre546 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i262, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i276, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i267 = icmp eq i8 %.pre546, 0
  br i1 %.not.i.i.i267, label %bb.bi, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i268

bb.bi:                                            ; preds = %bb.bh
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !101
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i268: ; preds = %bb.bh
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i269 = icmp eq ptr %i.mf, null
  br i1 %.not1.i.i.i269, label %bb.bj, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i270

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i270: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i268
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271

bb.bj:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i268
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !102
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271: ; preds = %bb.bj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i270, %bb.bi
  %.sink7.in.i.i.i272 = phi ptr [ %i.mj, %bb.bj ], [ %i.mg, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i270 ], [ %i.md, %bb.bi ]
  %.sink7.i.i.i273 = load ptr, ptr %.sink7.in.i.i.i272, align 8, !tbaa !33
  %i.mk = ptrtoint ptr %3 to i64
  %i.ml = ptrtoint ptr %.sink7.i.i.i273 to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %.0.in.i.i.i274 = sdiv exact i64 %i.mm, 88
  %sext.i.i275 = shl i64 %.0.in.i.i.i274, 32
  %i.mn = ashr exact i64 %sext.i.i275, 30
  %i.mo = getelementptr inbounds i8, ptr %.pre.i264, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %bb.bk, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i276, !prof !103

bb.bk:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271
  %i.mr = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre516 = load i32, ptr %i.lz, align 4, !tbaa !99
  %.pre.i288.pre = load ptr, ptr %.phi.trans.insert.i263, align 8, !tbaa !100
  %.pre18.i290.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i276: ; preds = %bb.bg, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i271
  %.not.i.i8.i277 = icmp eq i8 %.pre546, 0
  br i1 %.not.i.i8.i277, label %bb.bl, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i278

bb.bl:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i276
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !101
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i278: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i276
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i279 = icmp eq ptr %i.mw, null
  br i1 %.not1.i.i10.i279, label %bb.bm, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i280

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i280: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i278
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.bm:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i278
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !102
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.bm, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i280, %bb.bl
  %.sink7.in.i.i13.i281 = phi ptr [ %i.na, %bb.bm ], [ %i.mx, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i280 ], [ %i.mu, %bb.bl ]
  %.sink7.i.i14.i282 = load ptr, ptr %.sink7.in.i.i13.i281, align 8, !tbaa !33
  %i.nb = ptrtoint ptr %3 to i64
  %i.nc = ptrtoint ptr %.sink7.i.i14.i282 to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %.0.in.i.i15.i283 = sdiv exact i64 %i.nd, 88
  %sext.i16.i284 = shl i64 %.0.in.i.i15.i283, 32
  %i.ne = ashr exact i64 %sext.i16.i284, 30
  %i.nf = getelementptr inbounds i8, ptr %.pre.i264, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = and i32 %i.ng, 2147483640
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ni
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.bk, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i290 = phi i8 [ %.pre18.i290.pre, %bb.bk ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i288 = phi ptr [ %.pre.i288.pre, %bb.bk ], [ %.pre.i264, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.nk = phi i32 [ %.pre516, %bb.bk ], [ %i.ma, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i285 = phi ptr [ %i.mr, %bb.bk ], [ %i.nj, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i286 = icmp eq i32 %i.nk, -1
  %.pre548 = and i8 %.pre18.i290, 8               ; 2 uses
  br i1 %.not.i.i286, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i300, label %bb.bn

bb.bn:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i291 = icmp eq i8 %.pre548, 0
  br i1 %.not.i.i.i291, label %bb.bo, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i292

bb.bo:                                            ; preds = %bb.bn
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !101
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i292: ; preds = %bb.bn
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i293 = icmp eq ptr %i.np, null
  br i1 %.not1.i.i.i293, label %bb.bp, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i294

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i294: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i292
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295

bb.bp:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i292
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !102
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295: ; preds = %bb.bp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i294, %bb.bo
  %.sink7.in.i.i.i296 = phi ptr [ %i.nt, %bb.bp ], [ %i.nq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i294 ], [ %i.nn, %bb.bo ]
  %.sink7.i.i.i297 = load ptr, ptr %.sink7.in.i.i.i296, align 8, !tbaa !33
  %i.nu = ptrtoint ptr %3 to i64
  %i.nv = ptrtoint ptr %.sink7.i.i.i297 to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %.0.in.i.i.i298 = sdiv exact i64 %i.nw, 88
  %sext.i.i299 = shl i64 %.0.in.i.i.i298, 32
  %i.nx = ashr exact i64 %sext.i.i299, 30
  %i.ny = getelementptr inbounds i8, ptr %.pre.i288, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = icmp slt i32 %i.nz, 0
  br i1 %i.oa, label %bb.bq, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i300, !prof !103

bb.bq:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295
  %i.ob = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit311

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i300: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i295
  %.not.i.i8.i301 = icmp eq i8 %.pre548, 0
  br i1 %.not.i.i8.i301, label %bb.br, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i302

bb.br:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i300
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !101
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i302: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i300
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i303 = icmp eq ptr %i.og, null
  br i1 %.not1.i.i10.i303, label %bb.bs, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i304

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i304: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i302
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305

bb.bs:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i302
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !102
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305: ; preds = %bb.bs, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i304, %bb.br
  %.sink7.in.i.i13.i306 = phi ptr [ %i.ok, %bb.bs ], [ %i.oh, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i304 ], [ %i.oe, %bb.br ]
  %.sink7.i.i14.i307 = load ptr, ptr %.sink7.in.i.i13.i306, align 8, !tbaa !33
  %i.ol = ptrtoint ptr %3 to i64
  %i.om = ptrtoint ptr %.sink7.i.i14.i307 to i64
  %i.on = sub i64 %i.ol, %i.om
  %.0.in.i.i15.i308 = sdiv exact i64 %i.on, 88
  %sext.i16.i309 = shl i64 %.0.in.i.i15.i308, 32
  %i.oo = ashr exact i64 %sext.i16.i309, 30
  %i.op = getelementptr inbounds i8, ptr %.pre.i288, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !3
  %i.or = and i32 %i.oq, 2147483640
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 %i.os
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit311

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit311: ; preds = %bb.bq, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305
  %.0.i310 = phi ptr [ %i.ob, %bb.bq ], [ %i.ot, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i305 ] ; 4 uses
  %i.ou = load i32, ptr %.0.i285, align 4, !tbaa !104 ; 2 uses
  %i.ov = load i32, ptr %.0.i310, align 4, !tbaa !104
  %i.ow = xor i32 %i.ov, %i.ou
  %i.ox = and i32 %i.ow, 1                        ; 2 uses
  %i.oy = xor i32 %i.ox, %i.ou
  store i32 %i.oy, ptr %.0.i285, align 4, !tbaa !104
  %i.oz = load i32, ptr %.0.i310, align 4, !tbaa !104
  %i.pa = xor i32 %i.oz, %i.ox
  store i32 %i.pa, ptr %.0.i310, align 4, !tbaa !104
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i285, i64 4 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i310, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %13 = load <12 x i8>, ptr %i.pc, align 4, !tbaa !31, !alias.scope !129, !noalias !126
  %14 = load <12 x i8>, ptr %i.pb, align 4, !tbaa !31, !alias.scope !126, !noalias !129
  store <12 x i8> %13, ptr %i.pb, align 4, !tbaa !31, !alias.scope !126, !noalias !129
  store <12 x i8> %14, ptr %i.pc, align 4, !tbaa !31, !alias.scope !129, !noalias !126
  br label %bb.do

bb.bt:                                            ; preds = %bb.f
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !99 ; 2 uses
  %.not.i.i323 = icmp eq i32 %i.pe, -1
  %.phi.trans.insert.i324 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i325 = load ptr, ptr %.phi.trans.insert.i324, align 8, !tbaa !100 ; 3 uses
  %.pre550 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i323, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i337, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i.i328 = icmp eq i8 %.pre550, 0
  br i1 %.not.i.i.i328, label %bb.bv, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i329

bb.bv:                                            ; preds = %bb.bu
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !101
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i329: ; preds = %bb.bu
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i330 = icmp eq ptr %i.pj, null
  br i1 %.not1.i.i.i330, label %bb.bw, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i331

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i331: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i329
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332

bb.bw:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i329
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !102
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332: ; preds = %bb.bw, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i331, %bb.bv
  %.sink7.in.i.i.i333 = phi ptr [ %i.pn, %bb.bw ], [ %i.pk, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i331 ], [ %i.ph, %bb.bv ]
  %.sink7.i.i.i334 = load ptr, ptr %.sink7.in.i.i.i333, align 8, !tbaa !33
  %i.po = ptrtoint ptr %3 to i64
  %i.pp = ptrtoint ptr %.sink7.i.i.i334 to i64
  %i.pq = sub i64 %i.po, %i.pp
  %.0.in.i.i.i335 = sdiv exact i64 %i.pq, 88
  %sext.i.i336 = shl i64 %.0.in.i.i.i335, 32
  %i.pr = ashr exact i64 %sext.i.i336, 30
  %i.ps = getelementptr inbounds i8, ptr %.pre.i325, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !3
  %i.pu = icmp slt i32 %i.pt, 0
  br i1 %i.pu, label %bb.bx, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i337, !prof !103

bb.bx:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332
  %i.pv = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre513 = load i32, ptr %i.pd, align 4, !tbaa !99
  %.pre.i349.pre = load ptr, ptr %.phi.trans.insert.i324, align 8, !tbaa !100
  %.pre18.i351.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i337: ; preds = %bb.bt, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i332
  %.not.i.i8.i338 = icmp eq i8 %.pre550, 0
  br i1 %.not.i.i8.i338, label %bb.by, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i339

bb.by:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i337
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !101
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i339: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i337
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i340 = icmp eq ptr %i.qa, null
  br i1 %.not1.i.i10.i340, label %bb.bz, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i341

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i341: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i339
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.bz:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i339
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !102
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.bz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i341, %bb.by
  %.sink7.in.i.i13.i342 = phi ptr [ %i.qe, %bb.bz ], [ %i.qb, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i341 ], [ %i.py, %bb.by ]
  %.sink7.i.i14.i343 = load ptr, ptr %.sink7.in.i.i13.i342, align 8, !tbaa !33
  %i.qf = ptrtoint ptr %3 to i64
  %i.qg = ptrtoint ptr %.sink7.i.i14.i343 to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %.0.in.i.i15.i344 = sdiv exact i64 %i.qh, 88
  %sext.i16.i345 = shl i64 %.0.in.i.i15.i344, 32
  %i.qi = ashr exact i64 %sext.i16.i345, 30
  %i.qj = getelementptr inbounds i8, ptr %.pre.i325, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = and i32 %i.qk, 2147483640
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 %i.qm
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.bx, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i351 = phi i8 [ %.pre18.i351.pre, %bb.bx ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i349 = phi ptr [ %.pre.i349.pre, %bb.bx ], [ %.pre.i325, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.qo = phi i32 [ %.pre513, %bb.bx ], [ %i.pe, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i346 = phi ptr [ %i.pv, %bb.bx ], [ %i.qn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i347 = icmp eq i32 %i.qo, -1
  %.pre552 = and i8 %.pre18.i351, 8               ; 2 uses
  br i1 %.not.i.i347, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i361, label %bb.ca

bb.ca:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i352 = icmp eq i8 %.pre552, 0
  br i1 %.not.i.i.i352, label %bb.cb, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i353

bb.cb:                                            ; preds = %bb.ca
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !101
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i353: ; preds = %bb.ca
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i354 = icmp eq ptr %i.qt, null
  br i1 %.not1.i.i.i354, label %bb.cc, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i355

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i355: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i353
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356

bb.cc:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i353
  %i.qv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !102
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356: ; preds = %bb.cc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i355, %bb.cb
  %.sink7.in.i.i.i357 = phi ptr [ %i.qx, %bb.cc ], [ %i.qu, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i355 ], [ %i.qr, %bb.cb ]
  %.sink7.i.i.i358 = load ptr, ptr %.sink7.in.i.i.i357, align 8, !tbaa !33
  %i.qy = ptrtoint ptr %3 to i64
  %i.qz = ptrtoint ptr %.sink7.i.i.i358 to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %.0.in.i.i.i359 = sdiv exact i64 %i.ra, 88
  %sext.i.i360 = shl i64 %.0.in.i.i.i359, 32
  %i.rb = ashr exact i64 %sext.i.i360, 30
  %i.rc = getelementptr inbounds i8, ptr %.pre.i349, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3
  %i.re = icmp slt i32 %i.rd, 0
  br i1 %i.re, label %bb.cd, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i361, !prof !103

bb.cd:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356
  %i.rf = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit372

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i361: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i356
  %.not.i.i8.i362 = icmp eq i8 %.pre552, 0
  br i1 %.not.i.i8.i362, label %bb.ce, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i363

bb.ce:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i361
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !101
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i363: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i361
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i364 = icmp eq ptr %i.rk, null
  br i1 %.not1.i.i10.i364, label %bb.cf, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i365

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i365: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i363
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366

bb.cf:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i363
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !102
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366: ; preds = %bb.cf, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i365, %bb.ce
  %.sink7.in.i.i13.i367 = phi ptr [ %i.ro, %bb.cf ], [ %i.rl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i365 ], [ %i.ri, %bb.ce ]
  %.sink7.i.i14.i368 = load ptr, ptr %.sink7.in.i.i13.i367, align 8, !tbaa !33
  %i.rp = ptrtoint ptr %3 to i64
  %i.rq = ptrtoint ptr %.sink7.i.i14.i368 to i64
  %i.rr = sub i64 %i.rp, %i.rq
  %.0.in.i.i15.i369 = sdiv exact i64 %i.rr, 88
  %sext.i16.i370 = shl i64 %.0.in.i.i15.i369, 32
  %i.rs = ashr exact i64 %sext.i16.i370, 30
  %i.rt = getelementptr inbounds i8, ptr %.pre.i349, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !3
  %i.rv = and i32 %i.ru, 2147483640
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 %i.rw
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit372

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit372: ; preds = %bb.cd, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366
  %.0.i371 = phi ptr [ %i.rf, %bb.cd ], [ %i.rx, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i366 ] ; 4 uses
  %i.ry = load i32, ptr %.0.i346, align 4, !tbaa !104 ; 2 uses
  %i.rz = load i32, ptr %.0.i371, align 4, !tbaa !104
  %i.sa = xor i32 %i.rz, %i.ry
  %i.sb = and i32 %i.sa, 1                        ; 2 uses
  %i.sc = xor i32 %i.sb, %i.ry
  store i32 %i.sc, ptr %.0.i346, align 4, !tbaa !104
  %i.sd = load i32, ptr %.0.i371, align 4, !tbaa !104
  %i.se = xor i32 %i.sd, %i.sb
  store i32 %i.se, ptr %.0.i371, align 4, !tbaa !104
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i346, i64 4 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i371, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %15 = load <12 x i8>, ptr %i.sg, align 4, !tbaa !31, !alias.scope !134, !noalias !131
  %16 = load <12 x i8>, ptr %i.sf, align 4, !tbaa !31, !alias.scope !131, !noalias !134
  store <12 x i8> %15, ptr %i.sf, align 4, !tbaa !31, !alias.scope !131, !noalias !134
  store <12 x i8> %16, ptr %i.sg, align 4, !tbaa !31, !alias.scope !134, !noalias !131
  br label %bb.do

bb.cg:                                            ; preds = %bb.f
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !99 ; 2 uses
  %.not.i.i384 = icmp eq i32 %i.si, -1
  %.phi.trans.insert.i385 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i386 = load ptr, ptr %.phi.trans.insert.i385, align 8, !tbaa !100 ; 3 uses
  %.pre554 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i384, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i398, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i389 = icmp eq i8 %.pre554, 0
  br i1 %.not.i.i.i389, label %bb.ci, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i390

bb.ci:                                            ; preds = %bb.ch
  %i.sj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !101
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i390: ; preds = %bb.ch
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i391 = icmp eq ptr %i.sn, null
  br i1 %.not1.i.i.i391, label %bb.cj, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i392

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i392: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i390
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393

bb.cj:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i390
  %i.sp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !102
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393: ; preds = %bb.cj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i392, %bb.ci
  %.sink7.in.i.i.i394 = phi ptr [ %i.sr, %bb.cj ], [ %i.so, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i392 ], [ %i.sl, %bb.ci ]
  %.sink7.i.i.i395 = load ptr, ptr %.sink7.in.i.i.i394, align 8, !tbaa !33
  %i.ss = ptrtoint ptr %3 to i64
  %i.st = ptrtoint ptr %.sink7.i.i.i395 to i64
  %i.su = sub i64 %i.ss, %i.st
  %.0.in.i.i.i396 = sdiv exact i64 %i.su, 88
  %sext.i.i397 = shl i64 %.0.in.i.i.i396, 32
  %i.sv = ashr exact i64 %sext.i.i397, 30
  %i.sw = getelementptr inbounds i8, ptr %.pre.i386, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !3
  %i.sy = icmp slt i32 %i.sx, 0
  br i1 %i.sy, label %bb.ck, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i398, !prof !103

bb.ck:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393
  %i.sz = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre510 = load i32, ptr %i.sh, align 4, !tbaa !99
  %.pre.i410.pre = load ptr, ptr %.phi.trans.insert.i385, align 8, !tbaa !100
  %.pre18.i412.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i398: ; preds = %bb.cg, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i393
  %.not.i.i8.i399 = icmp eq i8 %.pre554, 0
  br i1 %.not.i.i8.i399, label %bb.cl, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i400

bb.cl:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i398
  %i.ta = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !101
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i400: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i398
  %i.td = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i401 = icmp eq ptr %i.te, null
  br i1 %.not1.i.i10.i401, label %bb.cm, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i402

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i402: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i400
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.cm:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i400
  %i.tg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !102
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.cm, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i402, %bb.cl
  %.sink7.in.i.i13.i403 = phi ptr [ %i.ti, %bb.cm ], [ %i.tf, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i402 ], [ %i.tc, %bb.cl ]
  %.sink7.i.i14.i404 = load ptr, ptr %.sink7.in.i.i13.i403, align 8, !tbaa !33
  %i.tj = ptrtoint ptr %3 to i64
  %i.tk = ptrtoint ptr %.sink7.i.i14.i404 to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %.0.in.i.i15.i405 = sdiv exact i64 %i.tl, 88
  %sext.i16.i406 = shl i64 %.0.in.i.i15.i405, 32
  %i.tm = ashr exact i64 %sext.i16.i406, 30
  %i.tn = getelementptr inbounds i8, ptr %.pre.i386, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !3
  %i.tp = and i32 %i.to, 2147483640
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 %i.tq
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ck, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i412 = phi i8 [ %.pre18.i412.pre, %bb.ck ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i410 = phi ptr [ %.pre.i410.pre, %bb.ck ], [ %.pre.i386, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.ts = phi i32 [ %.pre510, %bb.ck ], [ %i.si, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i407 = phi ptr [ %i.sz, %bb.ck ], [ %i.tr, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i408 = icmp eq i32 %i.ts, -1
  %.pre556 = and i8 %.pre18.i412, 8               ; 2 uses
  br i1 %.not.i.i408, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i422, label %bb.cn

bb.cn:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i413 = icmp eq i8 %.pre556, 0
  br i1 %.not.i.i.i413, label %bb.co, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i414

bb.co:                                            ; preds = %bb.cn
  %i.tt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !101
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i414: ; preds = %bb.cn
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i415 = icmp eq ptr %i.tx, null
  br i1 %.not1.i.i.i415, label %bb.cp, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i416

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i416: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i414
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417

bb.cp:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i414
  %i.tz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !102
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417: ; preds = %bb.cp, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i416, %bb.co
  %.sink7.in.i.i.i418 = phi ptr [ %i.ub, %bb.cp ], [ %i.ty, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i416 ], [ %i.tv, %bb.co ]
  %.sink7.i.i.i419 = load ptr, ptr %.sink7.in.i.i.i418, align 8, !tbaa !33
  %i.uc = ptrtoint ptr %3 to i64
  %i.ud = ptrtoint ptr %.sink7.i.i.i419 to i64
  %i.ue = sub i64 %i.uc, %i.ud
  %.0.in.i.i.i420 = sdiv exact i64 %i.ue, 88
  %sext.i.i421 = shl i64 %.0.in.i.i.i420, 32
  %i.uf = ashr exact i64 %sext.i.i421, 30
  %i.ug = getelementptr inbounds i8, ptr %.pre.i410, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !3
  %i.ui = icmp slt i32 %i.uh, 0
  br i1 %i.ui, label %bb.cq, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i422, !prof !103

bb.cq:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417
  %i.uj = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit433

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i422: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i417
  %.not.i.i8.i423 = icmp eq i8 %.pre556, 0
  br i1 %.not.i.i8.i423, label %bb.cr, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i424

bb.cr:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i422
  %i.uk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !101
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i424: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i422
  %i.un = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i425 = icmp eq ptr %i.uo, null
  br i1 %.not1.i.i10.i425, label %bb.cs, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i426

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i426: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i424
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427

bb.cs:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i424
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !102
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427: ; preds = %bb.cs, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i426, %bb.cr
  %.sink7.in.i.i13.i428 = phi ptr [ %i.us, %bb.cs ], [ %i.up, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i426 ], [ %i.um, %bb.cr ]
  %.sink7.i.i14.i429 = load ptr, ptr %.sink7.in.i.i13.i428, align 8, !tbaa !33
  %i.ut = ptrtoint ptr %3 to i64
  %i.uu = ptrtoint ptr %.sink7.i.i14.i429 to i64
  %i.uv = sub i64 %i.ut, %i.uu
  %.0.in.i.i15.i430 = sdiv exact i64 %i.uv, 88
  %sext.i16.i431 = shl i64 %.0.in.i.i15.i430, 32
  %i.uw = ashr exact i64 %sext.i16.i431, 30
  %i.ux = getelementptr inbounds i8, ptr %.pre.i410, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !3
  %i.uz = and i32 %i.uy, 2147483640
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 %i.va
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit433

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit433: ; preds = %bb.cq, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427
  %.0.i432 = phi ptr [ %i.uj, %bb.cq ], [ %i.vb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i427 ] ; 4 uses
  %i.vc = load i32, ptr %.0.i407, align 4, !tbaa !104 ; 2 uses
  %i.vd = load i32, ptr %.0.i432, align 4, !tbaa !104
  %i.ve = xor i32 %i.vd, %i.vc
  %i.vf = and i32 %i.ve, 1                        ; 2 uses
  %i.vg = xor i32 %i.vf, %i.vc
  store i32 %i.vg, ptr %.0.i407, align 4, !tbaa !104
  %i.vh = load i32, ptr %.0.i432, align 4, !tbaa !104
  %i.vi = xor i32 %i.vh, %i.vf
  store i32 %i.vi, ptr %.0.i432, align 4, !tbaa !104
  %i.vj = getelementptr inbounds nuw i8, ptr %.0.i407, i64 4 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0.i432, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %17 = load <12 x i8>, ptr %i.vk, align 4, !tbaa !31, !alias.scope !139, !noalias !136
  %18 = load <12 x i8>, ptr %i.vj, align 4, !tbaa !31, !alias.scope !136, !noalias !139
  store <12 x i8> %17, ptr %i.vj, align 4, !tbaa !31, !alias.scope !136, !noalias !139
  store <12 x i8> %18, ptr %i.vk, align 4, !tbaa !31, !alias.scope !139, !noalias !136
  br label %bb.do

bb.ct:                                            ; preds = %bb.f
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !99 ; 2 uses
  %.not.i.i445 = icmp eq i32 %i.vm, -1
  %.phi.trans.insert.i446 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i447 = load ptr, ptr %.phi.trans.insert.i446, align 8, !tbaa !100 ; 3 uses
  %.pre558 = and i8 %i.c, 8                       ; 2 uses
  br i1 %.not.i.i445, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i459, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.not.i.i.i450 = icmp eq i8 %.pre558, 0
  br i1 %.not.i.i.i450, label %bb.cv, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i451

bb.cv:                                            ; preds = %bb.cu
  %i.vn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !101
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i451: ; preds = %bb.cu
  %i.vq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i452 = icmp eq ptr %i.vr, null
  br i1 %.not1.i.i.i452, label %bb.cw, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i453

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i453: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i451
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454

bb.cw:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i451
  %i.vt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !102
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454: ; preds = %bb.cw, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i453, %bb.cv
  %.sink7.in.i.i.i455 = phi ptr [ %i.vv, %bb.cw ], [ %i.vs, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i453 ], [ %i.vp, %bb.cv ]
  %.sink7.i.i.i456 = load ptr, ptr %.sink7.in.i.i.i455, align 8, !tbaa !33
  %i.vw = ptrtoint ptr %3 to i64
  %i.vx = ptrtoint ptr %.sink7.i.i.i456 to i64
  %i.vy = sub i64 %i.vw, %i.vx
  %.0.in.i.i.i457 = sdiv exact i64 %i.vy, 88
  %sext.i.i458 = shl i64 %.0.in.i.i.i457, 32
  %i.vz = ashr exact i64 %sext.i.i458, 30
  %i.wa = getelementptr inbounds i8, ptr %.pre.i447, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !3
  %i.wc = icmp slt i32 %i.wb, 0
  br i1 %i.wc, label %bb.cx, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i459, !prof !103

bb.cx:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454
  %i.wd = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.vl, align 4, !tbaa !99
  %.pre.i473.pre = load ptr, ptr %.phi.trans.insert.i446, align 8, !tbaa !100
  %.pre18.i475.pre = load i8, ptr %i.b, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit470

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i459: ; preds = %bb.ct, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i454
  %.not.i.i8.i460 = icmp eq i8 %.pre558, 0
  br i1 %.not.i.i8.i460, label %bb.cy, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i461

bb.cy:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i459
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !101
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i461: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i459
  %i.wh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i462 = icmp eq ptr %i.wi, null
  br i1 %.not1.i.i10.i462, label %bb.cz, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i463

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i463: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i461
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464

bb.cz:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i461
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !102
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464: ; preds = %bb.cz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i463, %bb.cy
  %.sink7.in.i.i13.i465 = phi ptr [ %i.wm, %bb.cz ], [ %i.wj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i463 ], [ %i.wg, %bb.cy ]
  %.sink7.i.i14.i466 = load ptr, ptr %.sink7.in.i.i13.i465, align 8, !tbaa !33
  %i.wn = ptrtoint ptr %3 to i64
  %i.wo = ptrtoint ptr %.sink7.i.i14.i466 to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %.0.in.i.i15.i467 = sdiv exact i64 %i.wp, 88
  %sext.i16.i468 = shl i64 %.0.in.i.i15.i467, 32
  %i.wq = ashr exact i64 %sext.i16.i468, 30
  %i.wr = getelementptr inbounds i8, ptr %.pre.i447, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !3
  %i.wt = and i32 %i.ws, 2147483640
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 %i.wu
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit470

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit470: ; preds = %bb.cx, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464
  %.pre18.i475 = phi i8 [ %.pre18.i475.pre, %bb.cx ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464 ]
  %.pre.i473 = phi ptr [ %.pre.i473.pre, %bb.cx ], [ %.pre.i447, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464 ] ; 2 uses
  %i.ww = phi i32 [ %.pre, %bb.cx ], [ %i.vm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464 ]
  %.0.i469 = phi ptr [ %i.wd, %bb.cx ], [ %i.wv, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i464 ] ; 3 uses
  %.not.i.i471 = icmp eq i32 %i.ww, -1
  %.pre560 = and i8 %.pre18.i475, 8               ; 2 uses
  br i1 %.not.i.i471, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i485, label %bb.da

bb.da:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit470
  %.not.i.i.i476 = icmp eq i8 %.pre560, 0
  br i1 %.not.i.i.i476, label %bb.db, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i477

bb.db:                                            ; preds = %bb.da
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !101
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i477: ; preds = %bb.da
  %i.xa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i478 = icmp eq ptr %i.xb, null
  br i1 %.not1.i.i.i478, label %bb.dc, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i479

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i479: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i477
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480

bb.dc:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i477
  %i.xd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !102
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480: ; preds = %bb.dc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i479, %bb.db
  %.sink7.in.i.i.i481 = phi ptr [ %i.xf, %bb.dc ], [ %i.xc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i479 ], [ %i.wz, %bb.db ]
  %.sink7.i.i.i482 = load ptr, ptr %.sink7.in.i.i.i481, align 8, !tbaa !33
  %i.xg = ptrtoint ptr %3 to i64
  %i.xh = ptrtoint ptr %.sink7.i.i.i482 to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %.0.in.i.i.i483 = sdiv exact i64 %i.xi, 88
  %sext.i.i484 = shl i64 %.0.in.i.i.i483, 32
  %i.xj = ashr exact i64 %sext.i.i484, 30
  %i.xk = getelementptr inbounds i8, ptr %.pre.i473, i64 %i.xj
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !3
  %i.xm = icmp slt i32 %i.xl, 0
  br i1 %i.xm, label %bb.dd, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i485, !prof !103

bb.dd:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480
  %i.xn = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit496

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i485: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit470, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i480
  %.not.i.i8.i486 = icmp eq i8 %.pre560, 0
  br i1 %.not.i.i8.i486, label %bb.de, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i487

bb.de:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i485
  %i.xo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !101
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i487: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i485
  %i.xr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i488 = icmp eq ptr %i.xs, null
  br i1 %.not1.i.i10.i488, label %bb.df, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i489

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i489: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i487
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490

bb.df:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i487
  %i.xu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !102
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490: ; preds = %bb.df, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i489, %bb.de
  %.sink7.in.i.i13.i491 = phi ptr [ %i.xw, %bb.df ], [ %i.xt, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i489 ], [ %i.xq, %bb.de ]
  %.sink7.i.i14.i492 = load ptr, ptr %.sink7.in.i.i13.i491, align 8, !tbaa !33
  %i.xx = ptrtoint ptr %3 to i64
  %i.xy = ptrtoint ptr %.sink7.i.i14.i492 to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %.0.in.i.i15.i493 = sdiv exact i64 %i.xz, 88
  %sext.i16.i494 = shl i64 %.0.in.i.i15.i493, 32
  %i.ya = ashr exact i64 %sext.i16.i494, 30
  %i.yb = getelementptr inbounds i8, ptr %.pre.i473, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !3
  %i.yd = and i32 %i.yc, 2147483640
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ye
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit496

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit496: ; preds = %bb.dd, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490
  %.0.i495 = phi ptr [ %i.xn, %bb.dd ], [ %i.yf, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i490 ] ; 4 uses
  %i.yg = load i32, ptr %.0.i469, align 4, !tbaa !104 ; 2 uses
  %i.yh = load i32, ptr %.0.i495, align 4, !tbaa !104
  %i.yi = xor i32 %i.yh, %i.yg
  %i.yj = and i32 %i.yi, 1                        ; 2 uses
  %i.yk = xor i32 %i.yj, %i.yg
  store i32 %i.yk, ptr %.0.i469, align 4, !tbaa !104
  %i.yl = load i32, ptr %.0.i495, align 4, !tbaa !104
  %i.ym = xor i32 %i.yl, %i.yj
  store i32 %i.ym, ptr %.0.i495, align 4, !tbaa !104
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.i469, i64 4 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i495, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %19 = load <12 x i8>, ptr %i.yo, align 4, !tbaa !31, !alias.scope !144, !noalias !141
  %20 = load <12 x i8>, ptr %i.yn, align 4, !tbaa !31, !alias.scope !141, !noalias !144
  store <12 x i8> %19, ptr %i.yn, align 4, !tbaa !31, !alias.scope !141, !noalias !144
  store <12 x i8> %20, ptr %i.yo, align 4, !tbaa !31, !alias.scope !144, !noalias !141
  br label %bb.do

bb.dg:                                            ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper23SwapRepeatedStringFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.do

bb.dh:                                            ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper24SwapRepeatedMessageFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.do

bb.di:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 971) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 20, ptr nonnull @.str.7)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.yp = load i8, ptr %i.e, align 2, !tbaa !96
  %i.yq = zext i8 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !97
  store i32 %i.ys, ptr %i.a, align 4, !tbaa !97
  %i.yt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yt)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.dm

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.dl:                                            ; preds = %bb.di
  %i.yu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.do:                                            ; preds = %bb.c, %bb.e, %bb.d, %bb.dh, %bb.dg, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit496, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit433, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit372, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit311, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit250, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit189, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit128, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit78
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf10Reflection15NaiveSwapHasBitEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 7 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.l, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.p, %bb.d ], [ %i.m, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.j, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.q = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.r = ptrtoint ptr %.sink7.i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %.0.in.i.i = sdiv exact i64 %i.s, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.t = ashr exact i64 %sext.i, 30
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit61, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit
  %i.x = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.y = extractvalue { ptr, ptr } %i.x, 1        ; 2 uses
  %i.z = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.aa = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !146 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = icmp eq i32 %i.ac, -1
  br i1 %i.af, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !147
  %i.ai = load i8, ptr %i.e, align 1
  %i.aj = and i8 %i.ai, 8
  %.not.i.i21 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i21, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i22

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i22: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not1.i.i23, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i24

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i24: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i22
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i24, %bb.g
  %.sink7.in.i.i26 = phi ptr [ %i.as, %bb.h ], [ %i.ap, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i24 ], [ %i.am, %bb.g ]
  %.sink7.i.i27 = load ptr, ptr %.sink7.in.i.i26, align 8, !tbaa !33
  %i.at = ptrtoint ptr %.sink7.i.i27 to i64
  %i.au = sub i64 %i.q, %i.at
  %.0.in.i.i28 = sdiv exact i64 %i.au, 88
  %sext.i29 = shl i64 %.0.in.i.i28, 32
  %i.av = ashr exact i64 %sext.i29, 30
  %i.aw = getelementptr inbounds i8, ptr %i.ah, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit31

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit31: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25
  %.0.i30 = phi i32 [ %i.ax, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i25 ], [ -1, %bb.e ] ; 2 uses
  %i.ay = lshr i32 %.0.i30, 5
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = and i32 %.0.i30, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !146 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  %i.bj = icmp eq i32 %i.bg, -1
  br i1 %i.bj, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit42, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !147
  %i.bm = load i8, ptr %i.e, align 1
  %i.bn = and i8 %i.bm, 8
  %.not.i.i32 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i32, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i33

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i33: ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i34 = icmp eq ptr %i.bs, null
  br i1 %.not1.i.i34, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i35

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i35: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i36
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_:bb.a

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.20", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !272, !noalias !269
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !269, !noalias !272
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !269, !noalias !272
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !272, !noalias !269
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.307", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.24", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !277, !noalias !274
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !274, !noalias !277
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !274, !noalias !277
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !277, !noalias !274
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIlE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIlE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.311", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.26", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !282, !noalias !279
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !279, !noalias !282
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !279, !noalias !282
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !282, !noalias !279
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIjE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIjE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.315", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.28", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !287, !noalias !284
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !284, !noalias !287
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !284, !noalias !287
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !287, !noalias !284
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldImE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldImE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit

_ZN6google8protobuf13RepeatedFieldImED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldImED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.319", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.32", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !292, !noalias !289
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !289, !noalias !292
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !289, !noalias !292
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !292, !noalias !289
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIfE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIfE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.323", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.30", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !297, !noalias !294
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !294, !noalias !297
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !294, !noalias !297
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !297, !noalias !294
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIdE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIdE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = add nsw i64 %i.ax, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !104
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100 ; 2 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1 ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %.pre18, 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.f, %bb.c ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %.sink7.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i = sdiv exact i64 %i.o, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.h

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit
  %i.u = and i8 %.pre18, 8
  %.not.i.i8 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11, %bb.g
  %.sink7.in.i.i13 = phi ptr [ %i.ad, %bb.g ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11 ], [ %i.x, %bb.f ]
  %.sink7.i.i14 = load ptr, ptr %.sink7.in.i.i13, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15 = sdiv exact i64 %i.ag, 88
  %sext.i16 = shl i64 %.0.in.i.i15, 32
  %i.ah = ashr exact i64 %sext.i16, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit, %bb.e
  %.0 = phi ptr [ %i.t, %bb.e ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.327", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.34", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !302, !noalias !299
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !299, !noalias !302
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !299, !noalias !302
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !302, !noalias !299
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !256
  call void @_ZN6google8protobuf13RepeatedFieldIbE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  invoke void @_ZN6google8protobuf13RepeatedFieldIbE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !104
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = sext i32 %i.av to i64
  %i.ax = add nsw i64 %i.aw, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i32, ptr %3, align 8, !tbaa !104
  %i.ba = and i32 %i.az, 1
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = sext i32 %i.be to i64
  %i.bg = add nsw i64 %i.bf, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper23SwapRepeatedStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.k = add nsw i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22: ; preds = %bb.d, %bb.e
  %.0.i.i21 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 7
  switch i8 %i.q, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_.exit [
    i8 2, label %bb.f
    i8 1, label %bb.s
    i8 3, label %bb.s
  ]

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i = load i8, ptr %.phi.trans.insert17.i, align 1 ; 2 uses
  %.pre104 = and i8 %.pre18.i, 8                  ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i8 %.pre104, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.i:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.h
  %.sink7.in.i.i.i = phi ptr [ %i.ab, %bb.i ], [ %i.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.v, %bb.h ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.0.in.i.i.i = sdiv exact i64 %i.ae, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.af = ashr exact i64 %sext.i.i, 30
  %i.ag = getelementptr inbounds i8, ptr %.pre.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.aj = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.pre101 = load i32, ptr %i.r, align 4, !tbaa !99
  %.pre.i25.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i27.pre = load i8, ptr %.phi.trans.insert17.i, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre104, 0
  br i1 %.not.i.i8.i, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.ao, null
  br i1 %.not1.i.i10.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal15SwapFieldHelper23SwapRepeatedStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE:bb.a
  %.0.i = phi ptr [ %i.aj, %bb.j ], [ %i.bb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.not.i.i23 = icmp eq i32 %i.bc, -1
  %.pre105 = and i8 %.pre18.i27, 8                ; 2 uses
  br i1 %.not.i.i23, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i37, label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i28 = icmp eq i8 %.pre105, 0
  br i1 %.not.i.i.i28, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29: ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i30 = icmp eq ptr %i.bh, null
  br i1 %.not1.i.i.i30, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32

bb.o:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i29
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !102
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32: ; preds = %bb.o, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31, %bb.n
  %.sink7.in.i.i.i33 = phi ptr [ %i.bl, %bb.o ], [ %i.bi, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i31 ], [ %i.bf, %bb.n ]
  %.sink7.i.i.i34 = load ptr, ptr %.sink7.in.i.i.i33, align 8, !tbaa !33
  %i.bm = ptrtoint ptr %3 to i64
  %i.bn = ptrtoint ptr %.sink7.i.i.i34 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %.0.in.i.i.i35 = sdiv exact i64 %i.bo, 88
  %sext.i.i36 = shl i64 %.0.in.i.i.i35, 32
  %i.bp = ashr exact i64 %sext.i.i36, 30
  %i.bq = getelementptr inbounds i8, ptr %.pre.i25, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i37, !prof !103

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32
  %i.bt = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit48

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i37: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i32
  %.not.i.i8.i38 = icmp eq i8 %.pre105, 0
  br i1 %.not.i.i8.i38, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i39

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i37
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i39: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i37
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i40 = icmp eq ptr %i.by, null
  br i1 %.not1.i.i10.i40, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i41

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i41: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42

bb.r:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i39
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !102
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42: ; preds = %bb.r, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i41, %bb.q
  %.sink7.in.i.i13.i43 = phi ptr [ %i.cc, %bb.r ], [ %i.bz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i41 ], [ %i.bw, %bb.q ]
  %.sink7.i.i14.i44 = load ptr, ptr %.sink7.in.i.i13.i43, align 8, !tbaa !33
  %i.cd = ptrtoint ptr %3 to i64
  %i.ce = ptrtoint ptr %.sink7.i.i14.i44 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %.0.in.i.i15.i45 = sdiv exact i64 %i.cf, 88
  %sext.i16.i46 = shl i64 %.0.in.i.i15.i45, 32
  %i.cg = ashr exact i64 %sext.i16.i46, 30
  %i.ch = getelementptr inbounds i8, ptr %.pre.i25, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = and i32 %i.ci, 2147483640
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit48

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit48: ; preds = %bb.p, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42
  %.0.i47 = phi ptr [ %i.bt, %bb.p ], [ %i.cl, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i42 ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4SwapEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, ptr noundef %.0.i47)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !99 ; 2 uses
  %.not.i.i49 = icmp eq i32 %i.cn, -1
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i51 = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i52 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i53 = load i8, ptr %.phi.trans.insert17.i52, align 1 ; 2 uses
  %.pre107 = and i8 %.pre18.i53, 8                ; 2 uses
  br i1 %.not.i.i49, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i54 = icmp eq i8 %.pre107, 0
  br i1 %.not.i.i.i54, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !101
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55: ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i56 = icmp eq ptr %i.cs, null
  br i1 %.not1.i.i.i56, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

bb.v:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58: ; preds = %bb.v, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57, %bb.u
  %.sink7.in.i.i.i59 = phi ptr [ %i.cw, %bb.v ], [ %i.ct, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57 ], [ %i.cq, %bb.u ]
  %.sink7.i.i.i60 = load ptr, ptr %.sink7.in.i.i.i59, align 8, !tbaa !33
  %i.cx = ptrtoint ptr %3 to i64
  %i.cy = ptrtoint ptr %.sink7.i.i.i60 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.0.in.i.i.i61 = sdiv exact i64 %i.cz, 88
  %sext.i.i62 = shl i64 %.0.in.i.i.i61, 32
  %i.da = ashr exact i64 %sext.i.i62, 30
  %i.db = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.w, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, !prof !103

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %i.de = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.cm, align 4, !tbaa !99
  %.pre.i75.pre = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !100
  %.pre18.i77.pre = load i8, ptr %.phi.trans.insert17.i52, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63: ; preds = %bb.s, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %.not.i.i8.i64 = icmp eq i8 %.pre107, 0
  br i1 %.not.i.i8.i64, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !101
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i66 = icmp eq ptr %i.dj, null
  br i1 %.not1.i.i10.i66, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67, %bb.x
  %.sink7.in.i.i13.i68 = phi ptr [ %i.dn, %bb.y ], [ %i.dk, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67 ], [ %i.dh, %bb.x ]
  %.sink7.i.i14.i69 = load ptr, ptr %.sink7.in.i.i13.i68, align 8, !tbaa !33
  %i.do = ptrtoint ptr %3 to i64
  %i.dp = ptrtoint ptr %.sink7.i.i14.i69 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %.0.in.i.i15.i70 = sdiv exact i64 %i.dq, 88
  %sext.i16.i71 = shl i64 %.0.in.i.i15.i70, 32
  %i.dr = ashr exact i64 %sext.i16.i71, 30
  %i.ds = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = and i32 %i.dt, 2147483640
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.w, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i77 = phi i8 [ %.pre18.i77.pre, %bb.w ], [ %.pre18.i53, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i75 = phi ptr [ %.pre.i75.pre, %bb.w ], [ %.pre.i51, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.dx = phi i32 [ %.pre, %bb.w ], [ %i.cn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i72 = phi ptr [ %i.de, %bb.w ], [ %i.dw, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i73 = icmp eq i32 %i.dx, -1
  %.pre109 = and i8 %.pre18.i77, 8                ; 2 uses
  br i1 %.not.i.i73, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i78 = icmp eq i8 %.pre109, 0
  br i1 %.not.i.i.i78, label %bb.aa, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !101
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79: ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i80 = icmp eq ptr %i.ec, null
  br i1 %.not1.i.i.i80, label %bb.ab, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

bb.ab:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82: ; preds = %bb.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81, %bb.aa
  %.sink7.in.i.i.i83 = phi ptr [ %i.eg, %bb.ab ], [ %i.ed, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81 ], [ %i.ea, %bb.aa ]
  %.sink7.i.i.i84 = load ptr, ptr %.sink7.in.i.i.i83, align 8, !tbaa !33
  %i.eh = ptrtoint ptr %3 to i64
  %i.ei = ptrtoint ptr %.sink7.i.i.i84 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.0.in.i.i.i85 = sdiv exact i64 %i.ej, 88
  %sext.i.i86 = shl i64 %.0.in.i.i.i85, 32
  %i.ek = ashr exact i64 %sext.i.i86, 30
  %i.el = getelementptr inbounds i8, ptr %.pre.i75, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.ac, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87, !prof !103

bb.ac:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82
  %i.eo = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82
  %.not.i.i8.i88 = icmp eq i8 %.pre109, 0
  br i1 %.not.i.i8.i88, label %bb.ad, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89

bb.ad:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !101
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i90 = icmp eq ptr %i.et, null
  br i1 %.not1.i.i10.i90, label %bb.ae, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

bb.ae:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !102
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92: ; preds = %bb.ae, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91, %bb.ad
  %.sink7.in.i.i13.i93 = phi ptr [ %i.ex, %bb.ae ], [ %i.eu, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91 ], [ %i.er, %bb.ad ]
  %.sink7.i.i14.i94 = load ptr, ptr %.sink7.in.i.i13.i93, align 8, !tbaa !33
  %i.ey = ptrtoint ptr %3 to i64
  %i.ez = ptrtoint ptr %.sink7.i.i14.i94 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %.0.in.i.i15.i95 = sdiv exact i64 %i.fa, 88
  %sext.i16.i96 = shl i64 %.0.in.i.i15.i95, 32
  %i.fb = ashr exact i64 %sext.i16.i96, 30
  %i.fc = getelementptr inbounds i8, ptr %.pre.i75, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = and i32 %i.fd, 2147483640
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98: ; preds = %bb.ac, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92
  %.0.i97 = phi ptr [ %i.eo, %bb.ac ], [ %i.fg, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92 ] ; 3 uses
  %i.fh = icmp eq ptr %.0.i.i, %.0.i.i21
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %4 = load <12 x i8>, ptr %.0.i97, align 1, !tbaa !31, !alias.scope !312, !noalias !307
  %5 = load <12 x i8>, ptr %.0.i72, align 1, !tbaa !31, !alias.scope !307, !noalias !312
  store <12 x i8> %4, ptr %.0.i72, align 1, !tbaa !31, !alias.scope !307, !noalias !312
  store <12 x i8> %5, ptr %.0.i97, align 1, !tbaa !31, !alias.scope !312, !noalias !307
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_.exit

bb.ag:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase12SwapFallbackINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_(ptr noundef nonnull align 8 dereferenceable(16) %.0.i72, ptr noundef %.0.i.i, ptr noundef %.0.i97, ptr noundef %.0.i.i21)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_.exit: ; preds = %bb.ag, %bb.af, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit48, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper24SwapRepeatedMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 3
  %.val = load i8, ptr %i.a, align 1
  %i.b = and i8 %.val, 16
  %.not = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 3 uses
  %.not.i.i49 = icmp eq i32 %i.d, -1              ; 2 uses
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.pre.i51 = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !100 ; 6 uses
  %.phi.trans.insert17.i52 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %.pre18.i53 = load i8, ptr %.phi.trans.insert17.i52, align 1 ; 3 uses
  %.pre108 = and i8 %.pre18.i53, 8                ; 4 uses
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i49, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %.pre108, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not1.i.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.g, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %.sink7.i.i.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.0.in.i.i.i = sdiv exact i64 %i.p, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.q = ashr exact i64 %sext.i.i, 30
  %i.r = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.u = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !99
  %.pre.i23.pre = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !100
  %.pre18.i25.pre = load i8, ptr %.phi.trans.insert17.i52, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.b, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre108, 0
  br i1 %.not.i.i8.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.g
  %.sink7.in.i.i13.i = phi ptr [ %i.ad, %bb.h ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.x, %bb.g ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %3 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15.i = sdiv exact i64 %i.ag, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ah = ashr exact i64 %sext.i16.i, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i25 = phi i8 [ %.pre18.i25.pre, %bb.f ], [ %.pre18.i53, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i23 = phi ptr [ %.pre.i23.pre, %bb.f ], [ %.pre.i51, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.an = phi i32 [ %.pre, %bb.f ], [ %i.d, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.u, %bb.f ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.not.i.i21 = icmp eq i32 %i.an, -1
  %.pre113 = and i8 %.pre18.i25, 8                ; 2 uses
  br i1 %.not.i.i21, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i26 = icmp eq i8 %.pre113, 0
  br i1 %.not.i.i.i26, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i28 = icmp eq ptr %i.as, null
  br i1 %.not1.i.i.i28, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

bb.k:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30: ; preds = %bb.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29, %bb.j
  %.sink7.in.i.i.i31 = phi ptr [ %i.aw, %bb.k ], [ %i.at, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29 ], [ %i.aq, %bb.j ]
  %.sink7.i.i.i32 = load ptr, ptr %.sink7.in.i.i.i31, align 8, !tbaa !33
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = ptrtoint ptr %.sink7.i.i.i32 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.0.in.i.i.i33 = sdiv exact i64 %i.az, 88
  %sext.i.i34 = shl i64 %.0.in.i.i.i33, 32
  %i.ba = ashr exact i64 %sext.i.i34, 30
  %i.bb = getelementptr inbounds i8, ptr %.pre.i23, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35, !prof !103

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30
  %i.be = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30
  %.not.i.i8.i36 = icmp eq i8 %.pre113, 0
  br i1 %.not.i.i8.i36, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i38 = icmp eq ptr %i.bj, null
  br i1 %.not1.i.i10.i38, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39, %bb.m
  %.sink7.in.i.i13.i41 = phi ptr [ %i.bn, %bb.n ], [ %i.bk, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39 ], [ %i.bh, %bb.m ]
  %.sink7.i.i14.i42 = load ptr, ptr %.sink7.in.i.i13.i41, align 8, !tbaa !33
  %i.bo = ptrtoint ptr %3 to i64
  %i.bp = ptrtoint ptr %.sink7.i.i14.i42 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.0.in.i.i15.i43 = sdiv exact i64 %i.bq, 88
  %sext.i16.i44 = shl i64 %.0.in.i.i15.i43, 32
  %i.br = ashr exact i64 %sext.i16.i44, 30
  %i.bs = getelementptr inbounds i8, ptr %.pre.i23, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = and i32 %i.bt, 2147483640
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46: ; preds = %bb.l, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40
  %.0.i45 = phi ptr [ %i.be, %bb.l ], [ %i.bw, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i40 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !36 ; 3 uses
  %i.bz = trunc i64 %i.by to i1
  br i1 %i.bz, label %bb.o, label %bb.p, !prof !38

bb.o:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46
  %i.ca = add nsw i64 %i.by, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.p:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46
  %i.cd = inttoptr i64 %i.by to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.cc, %bb.o ], [ %i.cd, %bb.p ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36 ; 3 uses
  %i.cg = trunc i64 %i.cf to i1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ch = add nsw i64 %i.cf, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit48

bb.r:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ck = inttoptr i64 %i.cf to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit48

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit48: ; preds = %bb.q, %bb.r
  %.0.i.i47 = phi ptr [ %i.cj, %bb.q ], [ %i.ck, %bb.r ]
  tail call void @_ZN6google8protobuf8internal12MapFieldBase4SwapEPNS0_5ArenaEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %.0.i.i, ptr noundef %.0.i45, ptr noundef %.0.i.i47)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_.exit

bb.s:                                             ; preds = %bb.a
  br i1 %.not.i.i49, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i54 = icmp eq i8 %.pre108, 0
  br i1 %.not.i.i.i54, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !101
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55: ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i56 = icmp eq ptr %i.cp, null
  br i1 %.not1.i.i.i56, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

bb.v:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58: ; preds = %bb.v, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57, %bb.u
  %.sink7.in.i.i.i59 = phi ptr [ %i.ct, %bb.v ], [ %i.cq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57 ], [ %i.cn, %bb.u ]
  %.sink7.i.i.i60 = load ptr, ptr %.sink7.in.i.i.i59, align 8, !tbaa !33
  %i.cu = ptrtoint ptr %3 to i64
  %i.cv = ptrtoint ptr %.sink7.i.i.i60 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.0.in.i.i.i61 = sdiv exact i64 %i.cw, 88
  %sext.i.i62 = shl i64 %.0.in.i.i.i61, 32
  %i.cx = ashr exact i64 %sext.i.i62, 30
  %i.cy = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.w, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, !prof !103

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %i.db = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre105 = load i32, ptr %i.c, align 4, !tbaa !99
  %.pre.i75.pre = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !100
  %.pre18.i77.pre = load i8, ptr %.phi.trans.insert17.i52, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63: ; preds = %bb.s, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %.not.i.i8.i64 = icmp eq i8 %.pre108, 0
  br i1 %.not.i.i8.i64, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i66 = icmp eq ptr %i.dg, null
  br i1 %.not1.i.i10.i66, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67, %bb.x
  %.sink7.in.i.i13.i68 = phi ptr [ %i.dk, %bb.y ], [ %i.dh, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67 ], [ %i.de, %bb.x ]
  %.sink7.i.i14.i69 = load ptr, ptr %.sink7.in.i.i13.i68, align 8, !tbaa !33
  %i.dl = ptrtoint ptr %3 to i64
  %i.dm = ptrtoint ptr %.sink7.i.i14.i69 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %.0.in.i.i15.i70 = sdiv exact i64 %i.dn, 88
  %sext.i16.i71 = shl i64 %.0.in.i.i15.i70, 32
  %i.do = ashr exact i64 %sext.i16.i71, 30
  %i.dp = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = and i32 %i.dq, 2147483640
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.w, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i77 = phi i8 [ %.pre18.i77.pre, %bb.w ], [ %.pre18.i53, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i75 = phi ptr [ %.pre.i75.pre, %bb.w ], [ %.pre.i51, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.du = phi i32 [ %.pre105, %bb.w ], [ %i.d, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i72 = phi ptr [ %i.db, %bb.w ], [ %i.dt, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i73 = icmp eq i32 %i.du, -1
  %.pre109 = and i8 %.pre18.i77, 8                ; 2 uses
  br i1 %.not.i.i73, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i78 = icmp eq i8 %.pre109, 0
  br i1 %.not.i.i.i78, label %bb.aa, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !101
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79: ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i80 = icmp eq ptr %i.dz, null
  br i1 %.not1.i.i.i80, label %bb.ab, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

bb.ab:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i79
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82: ; preds = %bb.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81, %bb.aa
  %.sink7.in.i.i.i83 = phi ptr [ %i.ed, %bb.ab ], [ %i.ea, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i81 ], [ %i.dx, %bb.aa ]
  %.sink7.i.i.i84 = load ptr, ptr %.sink7.in.i.i.i83, align 8, !tbaa !33
  %i.ee = ptrtoint ptr %3 to i64
  %i.ef = ptrtoint ptr %.sink7.i.i.i84 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %.0.in.i.i.i85 = sdiv exact i64 %i.eg, 88
  %sext.i.i86 = shl i64 %.0.in.i.i.i85, 32
  %i.eh = ashr exact i64 %sext.i.i86, 30
  %i.ei = getelementptr inbounds i8, ptr %.pre.i75, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.ac, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87, !prof !103

bb.ac:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82
  %i.el = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i82
  %.not.i.i8.i88 = icmp eq i8 %.pre109, 0
  br i1 %.not.i.i8.i88, label %bb.ad, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89

bb.ad:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !101
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i87
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i90 = icmp eq ptr %i.eq, null
  br i1 %.not1.i.i10.i90, label %bb.ae, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

bb.ae:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i89
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !102
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92: ; preds = %bb.ae, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91, %bb.ad
  %.sink7.in.i.i13.i93 = phi ptr [ %i.eu, %bb.ae ], [ %i.er, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i91 ], [ %i.eo, %bb.ad ]
  %.sink7.i.i14.i94 = load ptr, ptr %.sink7.in.i.i13.i93, align 8, !tbaa !33
  %i.ev = ptrtoint ptr %3 to i64
  %i.ew = ptrtoint ptr %.sink7.i.i14.i94 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %.0.in.i.i15.i95 = sdiv exact i64 %i.ex, 88
  %sext.i16.i96 = shl i64 %.0.in.i.i15.i95, 32
  %i.ey = ashr exact i64 %sext.i16.i96, 30
  %i.ez = getelementptr inbounds i8, ptr %.pre.i75, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = and i32 %i.fa, 2147483640
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98: ; preds = %bb.ac, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92
  %.0.i97 = phi ptr [ %i.el, %bb.ac ], [ %i.fd, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i92 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !36 ; 3 uses
  %i.fg = trunc i64 %i.ff to i1
  br i1 %i.fg, label %bb.af, label %bb.ag, !prof !38

bb.af:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98
  %i.fh = add nsw i64 %i.ff, -1
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit100

bb.ag:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit98
  %i.fk = inttoptr i64 %i.ff to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit100

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit100: ; preds = %bb.af, %bb.ag
  %.0.i.i99 = phi ptr [ %i.fj, %bb.af ], [ %i.fk, %bb.ag ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !36 ; 3 uses
  %i.fn = trunc i64 %i.fm to i1
  br i1 %i.fn, label %bb.ah, label %bb.ai, !prof !38

bb.ah:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit100
  %i.fo = add nsw i64 %i.fm, -1
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit102

bb.ai:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit100
  %i.fr = inttoptr i64 %i.fm to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit102

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit102: ; preds = %bb.ah, %bb.ai
  %.0.i.i101 = phi ptr [ %i.fq, %bb.ah ], [ %i.fr, %bb.ai ] ; 2 uses
  %i.fs = icmp eq ptr %.0.i.i99, %.0.i.i101
  br i1 %i.fs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %4 = load <12 x i8>, ptr %.0.i97, align 1, !tbaa !31, !alias.scope !321, !noalias !316
  %5 = load <12 x i8>, ptr %.0.i72, align 1, !tbaa !31, !alias.scope !316, !noalias !321
  store <12 x i8> %4, ptr %.0.i72, align 1, !tbaa !31, !alias.scope !316, !noalias !321
  store <12 x i8> %5, ptr %.0.i97, align 1, !tbaa !31, !alias.scope !321, !noalias !316
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_.exit

bb.ak:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit102
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase12SwapFallbackINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_(ptr noundef nonnull align 8 dereferenceable(16) %.0.i72, ptr noundef %.0.i.i99, ptr noundef %.0.i97, ptr noundef %.0.i.i101)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase4SwapINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_.exit: ; preds = %bb.ak, %bb.aj, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.absl::lts_20250512::cord_internal::InlineData::Rep::AsTree", align 8 ; 4 uses
  %4 = alloca %"class.google::protobuf::internal::MicroString", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  switch i8 %i.c, label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit [
    i8 2, label %bb.b
    i8 1, label %bb.o
    i8 3, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i = load i8, ptr %.phi.trans.insert17.i, align 1 ; 2 uses
  %.pre144 = and i8 %.pre18.i, 8                  ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %.pre144, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not1.i.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.n, %bb.e ], [ %i.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.h, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %.sink7.i.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  %.0.in.i.i.i = sdiv exact i64 %i.q, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.r = ashr exact i64 %sext.i.i, 30
  %i.s = getelementptr inbounds i8, ptr %.pre.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.v = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre140 = load i32, ptr %i.d, align 4, !tbaa !99
  %.pre.i42.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i44.pre = load i8, ptr %.phi.trans.insert17.i, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.b, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre144, 0
  br i1 %.not.i.i8.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not1.i.i10.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.g
  %.sink7.in.i.i13.i = phi ptr [ %i.ae, %bb.h ], [ %i.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.y, %bb.g ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %.0.in.i.i15.i = sdiv exact i64 %i.ah, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ai = ashr exact i64 %sext.i16.i, 30
  %i.aj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = and i32 %i.ak, 2147483640
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  br label %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i44 = phi i8 [ %.pre18.i44.pre, %bb.f ], [ %.pre18.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i42 = phi ptr [ %.pre.i42.pre, %bb.f ], [ %.pre.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.ao = phi i32 [ %.pre140, %bb.f ], [ %i.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.v, %bb.f ], [ %i.an, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i40 = icmp eq i32 %i.ao, -1
  %.pre146 = and i8 %.pre18.i44, 8                ; 2 uses
  br i1 %.not.i.i40, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i54, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i45 = icmp eq i8 %.pre146, 0
  br i1 %.not.i.i.i45, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i47 = icmp eq ptr %i.at, null
  br i1 %.not1.i.i.i47, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49

bb.k:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i46
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49: ; preds = %bb.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48, %bb.j
  %.sink7.in.i.i.i50 = phi ptr [ %i.ax, %bb.k ], [ %i.au, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i48 ], [ %i.ar, %bb.j ]
  %.sink7.i.i.i51 = load ptr, ptr %.sink7.in.i.i.i50, align 8, !tbaa !33
  %i.ay = ptrtoint ptr %3 to i64
  %i.az = ptrtoint ptr %.sink7.i.i.i51 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %.0.in.i.i.i52 = sdiv exact i64 %i.ba, 88
  %sext.i.i53 = shl i64 %.0.in.i.i.i52, 32
  %i.bb = ashr exact i64 %sext.i.i53, 30
  %i.bc = getelementptr inbounds i8, ptr %.pre.i42, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.l, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i54, !prof !103

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49
  %i.bf = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit65

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i54: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i49
  %.not.i.i8.i55 = icmp eq i8 %.pre146, 0
  br i1 %.not.i.i8.i55, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i56

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i54
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i59

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i56: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i54
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i57 = icmp eq ptr %i.bk, null
  br i1 %.not1.i.i10.i57, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i58

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i58: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIN4absl12lts_202505124CordEEEjPKNS0_15FieldDescriptorE.exit.i59

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i56
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !102
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE:bb.a

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i113: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i111
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i114

bb.ag:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i111
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !102
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i114

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i114: ; preds = %bb.ag, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i113, %bb.af
  %.sink7.in.i.i13.i115 = phi ptr [ %i.ft, %bb.ag ], [ %i.fq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i113 ], [ %i.fn, %bb.af ]
  %.sink7.i.i14.i116 = load ptr, ptr %.sink7.in.i.i13.i115, align 8, !tbaa !33
  %i.fu = ptrtoint ptr %.sink7.i.i14.i116 to i64
  %i.fv = sub i64 %i.de, %i.fu
  %.0.in.i.i15.i117 = sdiv exact i64 %i.fv, 88
  %sext.i16.i118 = shl i64 %.0.in.i.i15.i117, 32
  %i.fw = ashr exact i64 %sext.i16.i118, 30
  %i.fx = getelementptr inbounds i8, ptr %.pre.i97, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = and i32 %i.fy, 2147483640
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ga
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit120

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit120: ; preds = %bb.ae, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i114
  %.0.i119 = phi ptr [ %i.fk, %bb.ae ], [ %i.gb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i114 ] ; 9 uses
  %i.gc = load i8, ptr %.0.i94, align 1, !tbaa !31
  %i.gd = load i8, ptr %.0.i119, align 1, !tbaa !31
  store i8 %i.gd, ptr %.0.i94, align 1, !tbaa !31
  store i8 %i.gc, ptr %.0.i119, align 1, !tbaa !31
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i119, i64 1 ; 2 uses
  %.079.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 1 ; 2 uses
  %i.gf = load i8, ptr %.079.i.i.ptr.1, align 1, !tbaa !31
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !31
  store i8 %i.gg, ptr %.079.i.i.ptr.1, align 1, !tbaa !31
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !31
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i119, i64 2 ; 2 uses
  %.079.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 2 ; 2 uses
  %i.gi = load i8, ptr %.079.i.i.ptr.2, align 1, !tbaa !31
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !31
  store i8 %i.gj, ptr %.079.i.i.ptr.2, align 1, !tbaa !31
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !31
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i119, i64 3 ; 2 uses
  %.079.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 3 ; 2 uses
  %i.gl = load i8, ptr %.079.i.i.ptr.3, align 1, !tbaa !31
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !31
  store i8 %i.gm, ptr %.079.i.i.ptr.3, align 1, !tbaa !31
  store i8 %i.gl, ptr %i.gk, align 1, !tbaa !31
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i119, i64 4 ; 2 uses
  %.079.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 4 ; 2 uses
  %i.go = load i8, ptr %.079.i.i.ptr.4, align 1, !tbaa !31
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !31
  store i8 %i.gp, ptr %.079.i.i.ptr.4, align 1, !tbaa !31
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !31
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i119, i64 5 ; 2 uses
  %.079.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 5 ; 2 uses
  %i.gr = load i8, ptr %.079.i.i.ptr.5, align 1, !tbaa !31
  %i.gs = load i8, ptr %i.gq, align 1, !tbaa !31
  store i8 %i.gs, ptr %.079.i.i.ptr.5, align 1, !tbaa !31
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i119, i64 6 ; 2 uses
  %.079.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 6 ; 2 uses
  %i.gu = load i8, ptr %.079.i.i.ptr.6, align 1, !tbaa !31
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !31
  store i8 %i.gv, ptr %.079.i.i.ptr.6, align 1, !tbaa !31
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i119, i64 7 ; 2 uses
  %.079.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %.0.i94, i64 7 ; 2 uses
  %i.gx = load i8, ptr %.079.i.i.ptr.7, align 1, !tbaa !31
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !31
  store i8 %i.gy, ptr %.079.i.i.ptr.7, align 1, !tbaa !31
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !31
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

bb.ah:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper21SwapNonInlinedStringsILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit120, %bb.r, %bb.ah, %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit54, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper23SwapRepeatedStringFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  switch i8 %i.c, label %bb.aa [
    i8 2, label %bb.a
    i8 1, label %bb.n
    i8 3, label %bb.n
  ]

bb.a:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i = load i8, ptr %.phi.trans.insert17.i, align 1 ; 2 uses
  %.pre102 = and i8 %.pre18.i, 8                  ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i8 %.pre102, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not1.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.d, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.c
  %.sink7.in.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.h, %bb.c ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %.sink7.i.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  %.0.in.i.i.i = sdiv exact i64 %i.q, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.r = ashr exact i64 %sext.i.i, 30
  %i.s = getelementptr inbounds i8, ptr %.pre.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.v = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.pre99 = load i32, ptr %i.d, align 4, !tbaa !99
  %.pre.i23.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i25.pre = load i8, ptr %.phi.trans.insert17.i, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre102, 0
  br i1 %.not.i.i8.i, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not1.i.i10.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.f
  %.sink7.in.i.i13.i = phi ptr [ %i.ae, %bb.g ], [ %i.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.y, %bb.f ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %.0.in.i.i15.i = sdiv exact i64 %i.ah, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ai = ashr exact i64 %sext.i16.i, 30
  %i.aj = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = and i32 %i.ak, 2147483640
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i25 = phi i8 [ %.pre18.i25.pre, %bb.e ], [ %.pre18.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i23 = phi ptr [ %.pre.i23.pre, %bb.e ], [ %.pre.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.ao = phi i32 [ %.pre99, %bb.e ], [ %i.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.v, %bb.e ], [ %i.an, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i21 = icmp eq i32 %i.ao, -1
  %.pre103 = and i8 %.pre18.i25, 8                ; 2 uses
  br i1 %.not.i.i21, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i26 = icmp eq i8 %.pre103, 0
  br i1 %.not.i.i.i26, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not1.i.i.i28, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29, %bb.i
  %.sink7.in.i.i.i31 = phi ptr [ %i.ax, %bb.j ], [ %i.au, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i29 ], [ %i.ar, %bb.i ]
  %.sink7.i.i.i32 = load ptr, ptr %.sink7.in.i.i.i31, align 8, !tbaa !33
  %i.ay = ptrtoint ptr %3 to i64
  %i.az = ptrtoint ptr %.sink7.i.i.i32 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %.0.in.i.i.i33 = sdiv exact i64 %i.ba, 88
  %sext.i.i34 = shl i64 %.0.in.i.i.i33, 32
  %i.bb = ashr exact i64 %sext.i.i34, 30
  %i.bc = getelementptr inbounds i8, ptr %.pre.i23, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35, !prof !103

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30
  %i.bf = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i30
  %.not.i.i8.i36 = icmp eq i8 %.pre103, 0
  br i1 %.not.i.i8.i36, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i35
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i38 = icmp eq ptr %i.bk, null
  br i1 %.not1.i.i10.i38, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40

bb.m:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i37
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40: ; preds = %bb.m, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39, %bb.l
  %.sink7.in.i.i13.i41 = phi ptr [ %i.bo, %bb.m ], [ %i.bl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i39 ], [ %i.bi, %bb.l ]
  %.sink7.i.i14.i42 = load ptr, ptr %.sink7.in.i.i13.i41, align 8, !tbaa !33
  %i.bp = ptrtoint ptr %3 to i64
  %i.bq = ptrtoint ptr %.sink7.i.i14.i42 to i64
  %i.br = sub i64 %i.bp, %i.bq
  %.0.in.i.i15.i43 = sdiv exact i64 %i.br, 88
  %sext.i16.i44 = shl i64 %.0.in.i.i15.i43, 32
  %i.bs = ashr exact i64 %sext.i16.i44, 30
  %i.bt = getelementptr inbounds i8, ptr %.pre.i23, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = and i32 %i.bu, 2147483640
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46

_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46: ; preds = %bb.k, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40
  %.0.i45 = phi ptr [ %i.bf, %bb.k ], [ %i.bx, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEjPKNS0_15FieldDescriptorE.exit.i40 ] ; 4 uses
  %i.by = load i32, ptr %.0.i, align 4, !tbaa !104 ; 2 uses
  %i.bz = load i32, ptr %.0.i45, align 4, !tbaa !104
  %i.ca = xor i32 %i.bz, %i.by
  %i.cb = and i32 %i.ca, 1                        ; 2 uses
  %i.cc = xor i32 %i.cb, %i.by
  store i32 %i.cc, ptr %.0.i, align 4, !tbaa !104
  %i.cd = load i32, ptr %.0.i45, align 4, !tbaa !104
  %i.ce = xor i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %.0.i45, align 4, !tbaa !104
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i45, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %4 = load <12 x i8>, ptr %i.cg, align 4, !tbaa !31, !alias.scope !326, !noalias !323
  %5 = load <12 x i8>, ptr %i.cf, align 4, !tbaa !31, !alias.scope !323, !noalias !326
  store <12 x i8> %4, ptr %i.cf, align 4, !tbaa !31, !alias.scope !323, !noalias !326
  store <12 x i8> %5, ptr %i.cg, align 4, !tbaa !31, !alias.scope !326, !noalias !323
  br label %bb.aa

bb.n:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !99 ; 2 uses
  %.not.i.i47 = icmp eq i32 %i.ci, -1
  %.phi.trans.insert.i48 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i49 = load ptr, ptr %.phi.trans.insert.i48, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i50 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i51 = load i8, ptr %.phi.trans.insert17.i50, align 1 ; 2 uses
  %.pre105 = and i8 %.pre18.i51, 8                ; 2 uses
  br i1 %.not.i.i47, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i61, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i52 = icmp eq i8 %.pre105, 0
  br i1 %.not.i.i.i52, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i53

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !101
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i53: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i54 = icmp eq ptr %i.cn, null
  br i1 %.not1.i.i.i54, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i55

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i55: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i53
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i53
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !102
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56: ; preds = %bb.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i55, %bb.p
  %.sink7.in.i.i.i57 = phi ptr [ %i.cr, %bb.q ], [ %i.co, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i55 ], [ %i.cl, %bb.p ]
  %.sink7.i.i.i58 = load ptr, ptr %.sink7.in.i.i.i57, align 8, !tbaa !33
  %i.cs = ptrtoint ptr %3 to i64
  %i.ct = ptrtoint ptr %.sink7.i.i.i58 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %.0.in.i.i.i59 = sdiv exact i64 %i.cu, 88
  %sext.i.i60 = shl i64 %.0.in.i.i.i59, 32
  %i.cv = ashr exact i64 %sext.i.i60, 30
  %i.cw = getelementptr inbounds i8, ptr %.pre.i49, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i61, !prof !103

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56
  %i.cz = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.ch, align 4, !tbaa !99
  %.pre.i73.pre = load ptr, ptr %.phi.trans.insert.i48, align 8, !tbaa !100
  %.pre18.i75.pre = load i8, ptr %.phi.trans.insert17.i50, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i61: ; preds = %bb.n, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i56
  %.not.i.i8.i62 = icmp eq i8 %.pre105, 0
  br i1 %.not.i.i8.i62, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i63

bb.s:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i61
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !101
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i63: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i61
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i64 = icmp eq ptr %i.de, null
  br i1 %.not1.i.i10.i64, label %bb.t, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i65

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i65: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i63
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.t:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i63
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.t, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i65, %bb.s
  %.sink7.in.i.i13.i66 = phi ptr [ %i.di, %bb.t ], [ %i.df, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i65 ], [ %i.dc, %bb.s ]
  %.sink7.i.i14.i67 = load ptr, ptr %.sink7.in.i.i13.i66, align 8, !tbaa !33
  %i.dj = ptrtoint ptr %3 to i64
  %i.dk = ptrtoint ptr %.sink7.i.i14.i67 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %.0.in.i.i15.i68 = sdiv exact i64 %i.dl, 88
  %sext.i16.i69 = shl i64 %.0.in.i.i15.i68, 32
  %i.dm = ashr exact i64 %sext.i16.i69, 30
  %i.dn = getelementptr inbounds i8, ptr %.pre.i49, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = and i32 %i.do, 2147483640
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.r, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i75 = phi i8 [ %.pre18.i75.pre, %bb.r ], [ %.pre18.i51, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i73 = phi ptr [ %.pre.i73.pre, %bb.r ], [ %.pre.i49, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.ds = phi i32 [ %.pre, %bb.r ], [ %i.ci, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i70 = phi ptr [ %i.cz, %bb.r ], [ %i.dr, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %.not.i.i71 = icmp eq i32 %i.ds, -1
  %.pre107 = and i8 %.pre18.i75, 8                ; 2 uses
  br i1 %.not.i.i71, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i85, label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i76 = icmp eq i8 %.pre107, 0
  br i1 %.not.i.i.i76, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !101
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77: ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i78 = icmp eq ptr %i.dx, null
  br i1 %.not1.i.i.i78, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80

bb.w:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80: ; preds = %bb.w, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79, %bb.v
  %.sink7.in.i.i.i81 = phi ptr [ %i.eb, %bb.w ], [ %i.dy, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79 ], [ %i.dv, %bb.v ]
  %.sink7.i.i.i82 = load ptr, ptr %.sink7.in.i.i.i81, align 8, !tbaa !33
  %i.ec = ptrtoint ptr %3 to i64
  %i.ed = ptrtoint ptr %.sink7.i.i.i82 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.0.in.i.i.i83 = sdiv exact i64 %i.ee, 88
  %sext.i.i84 = shl i64 %.0.in.i.i.i83, 32
  %i.ef = ashr exact i64 %sext.i.i84, 30
  %i.eg = getelementptr inbounds i8, ptr %.pre.i73, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.x, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i85, !prof !103

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80
  %i.ej = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit96

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i85: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i80
  %.not.i.i8.i86 = icmp eq i8 %.pre107, 0
  br i1 %.not.i.i8.i86, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i87

bb.y:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i85
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !101
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i87: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i85
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i88 = icmp eq ptr %i.eo, null
  br i1 %.not1.i.i10.i88, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i89

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i89: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i87
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90

bb.z:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i87
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !102
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90: ; preds = %bb.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i89, %bb.y
  %.sink7.in.i.i13.i91 = phi ptr [ %i.es, %bb.z ], [ %i.ep, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i89 ], [ %i.em, %bb.y ]
  %.sink7.i.i14.i92 = load ptr, ptr %.sink7.in.i.i13.i91, align 8, !tbaa !33
  %i.et = ptrtoint ptr %3 to i64
  %i.eu = ptrtoint ptr %.sink7.i.i14.i92 to i64
  %i.ev = sub i64 %i.et, %i.eu
  %.0.in.i.i15.i93 = sdiv exact i64 %i.ev, 88
  %sext.i16.i94 = shl i64 %.0.in.i.i15.i93, 32
  %i.ew = ashr exact i64 %sext.i16.i94, 30
  %i.ex = getelementptr inbounds i8, ptr %.pre.i73, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = and i32 %i.ey, 2147483640
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit96

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit96: ; preds = %bb.x, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90
  %.0.i95 = phi ptr [ %i.ej, %bb.x ], [ %i.fb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i90 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %6 = load <12 x i8>, ptr %.0.i95, align 1, !tbaa !31, !alias.scope !336, !noalias !331
  %7 = load <12 x i8>, ptr %.0.i70, align 1, !tbaa !31, !alias.scope !331, !noalias !336
  store <12 x i8> %6, ptr %.0.i70, align 1, !tbaa !31, !alias.scope !331, !noalias !336
  store <12 x i8> %7, ptr %.0.i95, align 1, !tbaa !31, !alias.scope !336, !noalias !331
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit96, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit46, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper24SwapRepeatedMessageFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 3
  %.val = load i8, ptr %i.a, align 1
  %i.b = and i8 %.val, 16
  %.not = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 3 uses
  %.not.i.i43 = icmp eq i32 %i.d, -1              ; 2 uses
  %.phi.trans.insert.i44 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.pre.i45 = load ptr, ptr %.phi.trans.insert.i44, align 8, !tbaa !100 ; 6 uses
  %.phi.trans.insert17.i46 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %.pre18.i47 = load i8, ptr %.phi.trans.insert17.i46, align 1 ; 3 uses
  %.pre98 = and i8 %.pre18.i47, 8                 ; 4 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i43, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %.pre98, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not1.i.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.g, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %.sink7.i.i.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.0.in.i.i.i = sdiv exact i64 %i.p, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.q = ashr exact i64 %sext.i.i, 30
  %i.r = getelementptr inbounds i8, ptr %.pre.i45, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.u = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !99
  %.pre.i19.pre = load ptr, ptr %.phi.trans.insert.i44, align 8, !tbaa !100
  %.pre18.i21.pre = load i8, ptr %.phi.trans.insert17.i46, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.b, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre98, 0
  br i1 %.not.i.i8.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.z, null
  br i1 %.not1.i.i10.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.g
  %.sink7.in.i.i13.i = phi ptr [ %i.ad, %bb.h ], [ %i.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.x, %bb.g ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %3 to i64
  %i.af = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.0.in.i.i15.i = sdiv exact i64 %i.ag, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ah = ashr exact i64 %sext.i16.i, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre.i45, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i32 %i.aj, 2147483640
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i21 = phi i8 [ %.pre18.i21.pre, %bb.f ], [ %.pre18.i47, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i19 = phi ptr [ %.pre.i19.pre, %bb.f ], [ %.pre.i45, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.an = phi i32 [ %.pre, %bb.f ], [ %i.d, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.u, %bb.f ], [ %i.am, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.not.i.i17 = icmp eq i32 %i.an, -1
  %.pre103 = and i8 %.pre18.i21, 8                ; 2 uses
  br i1 %.not.i.i17, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i31, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i22 = icmp eq i8 %.pre103, 0
  br i1 %.not.i.i.i22, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i23

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i23: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i24 = icmp eq ptr %i.as, null
  br i1 %.not1.i.i.i24, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i25

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i25: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26

bb.k:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i23
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26: ; preds = %bb.k, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i25, %bb.j
  %.sink7.in.i.i.i27 = phi ptr [ %i.aw, %bb.k ], [ %i.at, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i25 ], [ %i.aq, %bb.j ]
  %.sink7.i.i.i28 = load ptr, ptr %.sink7.in.i.i.i27, align 8, !tbaa !33
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = ptrtoint ptr %.sink7.i.i.i28 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.0.in.i.i.i29 = sdiv exact i64 %i.az, 88
  %sext.i.i30 = shl i64 %.0.in.i.i.i29, 32
  %i.ba = ashr exact i64 %sext.i.i30, 30
  %i.bb = getelementptr inbounds i8, ptr %.pre.i19, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i31, !prof !103

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26
  %i.be = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit42

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i31: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i26
  %.not.i.i8.i32 = icmp eq i8 %.pre103, 0
  br i1 %.not.i.i8.i32, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i33

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i31
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i33: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i31
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i34 = icmp eq ptr %i.bj, null
  br i1 %.not1.i.i10.i34, label %bb.n, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i35

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i35: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36

bb.n:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i33
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36: ; preds = %bb.n, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i35, %bb.m
  %.sink7.in.i.i13.i37 = phi ptr [ %i.bn, %bb.n ], [ %i.bk, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i35 ], [ %i.bh, %bb.m ]
  %.sink7.i.i14.i38 = load ptr, ptr %.sink7.in.i.i13.i37, align 8, !tbaa !33
  %i.bo = ptrtoint ptr %3 to i64
  %i.bp = ptrtoint ptr %.sink7.i.i14.i38 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.0.in.i.i15.i39 = sdiv exact i64 %i.bq, 88
  %sext.i16.i40 = shl i64 %.0.in.i.i15.i39, 32
  %i.br = ashr exact i64 %sext.i16.i40, 30
  %i.bs = getelementptr inbounds i8, ptr %.pre.i19, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = and i32 %i.bt, 2147483640
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit42

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit42: ; preds = %bb.l, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36
  %.0.i41 = phi ptr [ %i.be, %bb.l ], [ %i.bw, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i36 ]
  tail call void @_ZN6google8protobuf8internal12MapFieldBase12InternalSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %.0.i41)
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  br i1 %.not.i.i43, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i57, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i48 = icmp eq i8 %.pre98, 0
  br i1 %.not.i.i.i48, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i49

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !101
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i49: ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i50 = icmp eq ptr %i.cb, null
  br i1 %.not1.i.i.i50, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i51

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i51: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52

bb.r:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i49
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52: ; preds = %bb.r, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i51, %bb.q
  %.sink7.in.i.i.i53 = phi ptr [ %i.cf, %bb.r ], [ %i.cc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i51 ], [ %i.bz, %bb.q ]
  %.sink7.i.i.i54 = load ptr, ptr %.sink7.in.i.i.i53, align 8, !tbaa !33
  %i.cg = ptrtoint ptr %3 to i64
  %i.ch = ptrtoint ptr %.sink7.i.i.i54 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %.0.in.i.i.i55 = sdiv exact i64 %i.ci, 88
  %sext.i.i56 = shl i64 %.0.in.i.i.i55, 32
  %i.cj = ashr exact i64 %sext.i.i56, 30
  %i.ck = getelementptr inbounds i8, ptr %.pre.i45, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.s, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i57, !prof !103

bb.s:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52
  %i.cn = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre95 = load i32, ptr %i.c, align 4, !tbaa !99
  %.pre.i69.pre = load ptr, ptr %.phi.trans.insert.i44, align 8, !tbaa !100
  %.pre18.i71.pre = load i8, ptr %.phi.trans.insert17.i46, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i57: ; preds = %bb.o, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i52
  %.not.i.i8.i58 = icmp eq i8 %.pre98, 0
  br i1 %.not.i.i8.i58, label %bb.t, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i59

bb.t:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i57
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !101
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i59: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i57
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i60 = icmp eq ptr %i.cs, null
  br i1 %.not1.i.i10.i60, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i61

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i61: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i59
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.u:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i59
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.u, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i61, %bb.t
  %.sink7.in.i.i13.i62 = phi ptr [ %i.cw, %bb.u ], [ %i.ct, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i61 ], [ %i.cq, %bb.t ]
  %.sink7.i.i14.i63 = load ptr, ptr %.sink7.in.i.i13.i62, align 8, !tbaa !33
  %i.cx = ptrtoint ptr %3 to i64
  %i.cy = ptrtoint ptr %.sink7.i.i14.i63 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.0.in.i.i15.i64 = sdiv exact i64 %i.cz, 88
  %sext.i16.i65 = shl i64 %.0.in.i.i15.i64, 32
  %i.da = ashr exact i64 %sext.i16.i65, 30
  %i.db = getelementptr inbounds i8, ptr %.pre.i45, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = and i32 %i.dc, 2147483640
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.s, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i71 = phi i8 [ %.pre18.i71.pre, %bb.s ], [ %.pre18.i47, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i69 = phi ptr [ %.pre.i69.pre, %bb.s ], [ %.pre.i45, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.dg = phi i32 [ %.pre95, %bb.s ], [ %i.d, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i66 = phi ptr [ %i.cn, %bb.s ], [ %i.df, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %.not.i.i67 = icmp eq i32 %i.dg, -1
  %.pre99 = and i8 %.pre18.i71, 8                 ; 2 uses
  br i1 %.not.i.i67, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i81, label %bb.v

bb.v:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i72 = icmp eq i8 %.pre99, 0
  br i1 %.not.i.i.i72, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i73

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i73: ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i74 = icmp eq ptr %i.dl, null
  br i1 %.not1.i.i.i74, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i75

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i75: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i73
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76

bb.x:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i73
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !102
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76: ; preds = %bb.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i75, %bb.w
  %.sink7.in.i.i.i77 = phi ptr [ %i.dp, %bb.x ], [ %i.dm, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i75 ], [ %i.dj, %bb.w ]
  %.sink7.i.i.i78 = load ptr, ptr %.sink7.in.i.i.i77, align 8, !tbaa !33
  %i.dq = ptrtoint ptr %3 to i64
  %i.dr = ptrtoint ptr %.sink7.i.i.i78 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %.0.in.i.i.i79 = sdiv exact i64 %i.ds, 88
  %sext.i.i80 = shl i64 %.0.in.i.i.i79, 32
  %i.dt = ashr exact i64 %sext.i.i80, 30
  %i.du = getelementptr inbounds i8, ptr %.pre.i69, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.y, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i81, !prof !103

bb.y:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76
  %i.dx = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit92

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i81: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i76
  %.not.i.i8.i82 = icmp eq i8 %.pre99, 0
  br i1 %.not.i.i8.i82, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i83

bb.z:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i81
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !101
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i83: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i81
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i84 = icmp eq ptr %i.ec, null
  br i1 %.not1.i.i10.i84, label %bb.aa, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i85

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i85: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i83
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86

bb.aa:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i83
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86: ; preds = %bb.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i85, %bb.z
  %.sink7.in.i.i13.i87 = phi ptr [ %i.eg, %bb.aa ], [ %i.ed, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i85 ], [ %i.ea, %bb.z ]
  %.sink7.i.i14.i88 = load ptr, ptr %.sink7.in.i.i13.i87, align 8, !tbaa !33
  %i.eh = ptrtoint ptr %3 to i64
  %i.ei = ptrtoint ptr %.sink7.i.i14.i88 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.0.in.i.i15.i89 = sdiv exact i64 %i.ej, 88
  %sext.i16.i90 = shl i64 %.0.in.i.i15.i89, 32
  %i.ek = ashr exact i64 %sext.i16.i90, 30
  %i.el = getelementptr inbounds i8, ptr %.pre.i69, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = and i32 %i.em, 2147483640
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %i.eo
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit92

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit92: ; preds = %bb.y, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86
  %.0.i91 = phi ptr [ %i.dx, %bb.y ], [ %i.ep, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i86 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %4 = load <12 x i8>, ptr %.0.i91, align 1, !tbaa !31, !alias.scope !345, !noalias !340
  %5 = load <12 x i8>, ptr %.0.i66, align 1, !tbaa !31, !alias.scope !340, !noalias !345
  store <12 x i8> %4, ptr %.0.i66, align 1, !tbaa !31, !alias.scope !340, !noalias !345
  store <12 x i8> %5, ptr %.0.i91, align 1, !tbaa !31, !alias.scope !345, !noalias !340
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit92, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit42
  ret void
}

declare void @_ZN6google8protobuf7Message9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection15UnsafeArenaSwapEPNS0_7MessageES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6google8protobuf10Reflection12InternalSwapEPNS0_7MessageES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection10SwapFieldsEPNS0_7MessageES3_RKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6google8protobuf10Reflection14SwapFieldsImplILb0EEEvPNS0_7MessageES4_RKSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection23UnsafeShallowSwapFieldsEPNS0_7MessageES3_RKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6google8protobuf10Reflection14SwapFieldsImplILb1EEEvPNS0_7MessageES4_RKSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection21UnsafeArenaSwapFieldsEPNS0_7MessageES3_RKSt6vectorIPKNS0_15FieldDescriptorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6google8protobuf10Reflection14SwapFieldsImplILb1EEEvPNS0_7MessageES4_RKSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = and i8 %i.g, 32
  %.not18 = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42   ; 2 uses
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet13ExtensionSizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.o)
  %i.q = icmp ne i32 %i.p, 0
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet3HasEi(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.o)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 8
  %.not.i.i.not = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = and i8 %i.g, 16
  %.not.i.i.i = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !50 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = select i1 %.not.i.i.i, i64 0, i64 %i.ae
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 56
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, %i.z
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !42
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br label %bb.i

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.g
  %i.as = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.h
  %.0 = phi i1 [ %i.as, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit ], [ %i.ar, %bb.h ], [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  ret i1 %.0
}

; Function Attrs: cold mustprogress noreturn uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !346
  store ptr %3, ptr %i.b, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 209) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 86, ptr nonnull @.str.114)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi87EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi87EEERS2_RAT__Kc.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi87EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 17, ptr nonnull @.str.115)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.f, align 1
  %i.g = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.h = xor i64 %i.g, -1
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 %i.g, ptr nonnull %i.i)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 17, ptr nonnull @.str.116)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.0.copyload.i.i.i5 = load i16, ptr %i.m, align 1
  %i.n = zext i16 %.0.copyload.i.i.i5 to i64      ; 2 uses
  %i.o = xor i64 %i.n, -1
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 %i.n, ptr nonnull %i.p)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 17, ptr nonnull @.str.117)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit8 unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit8: ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit8
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit8, %bb.e, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi87EEERS2_RAT__Kc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable
}

declare noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet13ExtensionSizeEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet3HasEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection12InternalSwapEPNS0_7MessageES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.n, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_:bb.a
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !808
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !803, !noalias !806
  store i32 %i.al, ptr %i.af, align 4, !tbaa !3, !alias.scope !806, !noalias !803
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !814
  br label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !3, !alias.scope !809, !noalias !812
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !3, !alias.scope !812, !noalias !809
  br label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !818, !noalias !815
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !815, !noalias !818
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !815, !noalias !818
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !818, !noalias !815
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !851 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !852
  store ptr %i.au, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !851
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !852
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !104
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !31
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !861
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !253, !alias.scope !856, !noalias !859
  store i64 %i.al, ptr %i.af, align 8, !tbaa !253, !alias.scope !859, !noalias !856
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !867
  br label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !253, !alias.scope !862, !noalias !865
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !253, !alias.scope !865, !noalias !862
  br label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !851 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !852
  store ptr %i.as, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !851
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !852
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.az, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !104
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !878
  br label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !873, !noalias !876
  store i32 %i.al, ptr %i.af, align 4, !tbaa !3, !alias.scope !876, !noalias !873
  br label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !884
  br label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !3, !alias.scope !879, !noalias !882
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !3, !alias.scope !882, !noalias !879
  br label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !851 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !852
  store ptr %i.au, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !851
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !852
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !104
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !895
  br label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !253, !alias.scope !890, !noalias !893
  store i64 %i.al, ptr %i.af, align 8, !tbaa !253, !alias.scope !893, !noalias !890
  br label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !901
  br label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !253, !alias.scope !896, !noalias !899
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !253, !alias.scope !899, !noalias !896
  br label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldImE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !851 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !852
  store ptr %i.as, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !851
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !852
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.az, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !104
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !912
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load float, ptr %.0.i.i.i.i.i, align 4, !tbaa !259, !alias.scope !907, !noalias !910
  store float %i.al, ptr %i.af, align 4, !tbaa !259, !alias.scope !910, !noalias !907
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !918
  br label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load float, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !259, !alias.scope !913, !noalias !916
  store float %i.bv, ptr %i.bp, align 4, !tbaa !259, !alias.scope !916, !noalias !913
  br label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !851 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !852
  store ptr %i.au, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !851
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !852
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !104
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !929
  br label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load double, ptr %.0.i.i.i.i.i, align 8, !tbaa !261, !alias.scope !924, !noalias !927
  store double %i.al, ptr %i.af, align 8, !tbaa !261, !alias.scope !927, !noalias !924
  br label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !935
  br label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load double, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !261, !alias.scope !930, !noalias !933
  store double %i.bv, ptr %i.bp, align 8, !tbaa !261, !alias.scope !933, !noalias !930
  br label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !851 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !852
  store ptr %i.as, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !851
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !852
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.az, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !104
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 8, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.0.i.i.i.i.i, i64 %i.aj, i1 false), !alias.scope !946
  br label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !263, !range !84, !alias.scope !941, !noalias !944, !noundef !50
  store i8 %i.al, ptr %i.af, align 1, !tbaa !263, !alias.scope !944, !noalias !941
  br label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 8, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds i8, ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %.0.i.i.i.i.i.i7, i64 %i.bt, i1 false), !alias.scope !952
  br label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i8, ptr %.0.i.i.i.i.i.i7, align 1, !tbaa !263, !range !84, !alias.scope !947, !noalias !950, !noundef !50
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !263, !alias.scope !950, !noalias !947
  br label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = add nuw nsw i64 %i.i, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !31
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.t
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.u = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !820
  %i.ad = load i64, ptr %1, align 8, !tbaa !823
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !849 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.aj = sub nuw nsw i64 59, %i.ai               ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !850 ; 3 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.z, 3                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !851 ; 2 uses
  %i.ap = icmp ugt i8 %i.ak, 1
  br i1 %i.ap, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i8 %i.ak, 1
  br i1 %i.aq, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !852
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ao, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !850
  %i.as = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.am, %i.as
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.at = phi i64 [ %i.as, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.at, 3      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.av = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.av, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.an, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ag, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !851
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !852
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.az, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !104
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4SwapEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.331", align 8 ; 11 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.36", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ]
  %.0.i.i.i.i35 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i13 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i35, %.0.i.i.i.i13
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %4 = load <12 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  %5 = load <12 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <12 x i8> %4, ptr %i.ak, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <12 x i8> %5, ptr %i.al, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  br label %bb.aa

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14
  %.not = icmp eq ptr %.0.i.i.i.i13, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i13 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !463
  call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE20SwapFallbackWithTempEPNS0_5ArenaERS5_S7_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ap = load i32, ptr %2, align 8, !tbaa !104
  %i.aq = and i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.aq, 0                    ; 2 uses
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !463 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.i.i.i = select i1 %i.ar, ptr %i.au, ptr %i.aw ; 2 uses
  %i.ax = zext nneg i32 %i.as to i64
  %.idx.i = shl nuw nsw i64 %i.ax, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i, %bb.k
  %.05.i.i.i = phi ptr [ %i.bd, %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i ], [ %.0.i.i.i, %bb.k ] ; 3 uses
  %i.az = load i8, ptr %.05.i.i.i, align 1, !tbaa !31
  %i.ba = trunc i8 %i.az to i1
  br i1 %i.ba, label %bb.l, label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i)
          to label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #37
  unreachable

_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !465

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i: ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i, %bb.j
  br i1 %i.ar, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i
  %i.be = load i32, ptr %2, align 8, !tbaa !104
  %i.bf = and i32 %i.be, -2                       ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36 ; 3 uses
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.bl = add nsw i64 %i.bj, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bo = inttoptr i64 %i.bj to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi ptr [ %i.bo, %bb.q ], [ %i.bn, %bb.p ]
  %i.bp = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %i.bp, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !31
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 4
  %i.bv = add nsw i64 %i.bu, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #35
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.aa

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread, %bb.i
  %.0.i.i.i.i36 = phi ptr [ %.0.i.i.i.i35, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 0, ptr %3, align 8, !tbaa !104
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !463
  invoke void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE20SwapFallbackWithTempEPNS0_5ArenaERS5_S7_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %.thread
  %i.bx = load i32, ptr %3, align 8, !tbaa !104
  %i.by = and i32 %i.bx, 1
  %i.bz = icmp eq i32 %i.by, 0                    ; 2 uses
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !463 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.s, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i15

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.0.i.i.i19 = select i1 %i.bz, ptr %i.cc, ptr %i.ce ; 2 uses
  %i.cf = zext nneg i32 %i.ca to i64
  %.idx.i20 = shl nuw nsw i64 %i.cf, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i19, i64 %.idx.i20
  br label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23, %bb.s
  %.05.i.i.i22 = phi ptr [ %i.cl, %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23 ], [ %.0.i.i.i19, %bb.s ] ; 3 uses
  %i.ch = load i8, ptr %.05.i.i.i22, align 1, !tbaa !31
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.t, label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23

bb.t:                                             ; preds = %.lr.ph.i.i.i21
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i22)
          to label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #37
  unreachable

_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23: ; preds = %bb.t, %.lr.ph.i.i.i21
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i22, i64 16 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, %i.cg
  br i1 %.not.i.i.i24, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i15, label %.lr.ph.i.i.i21, !llvm.loop !465

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i15: ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i23, %bb.r
  br i1 %i.bz, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit25, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i15
  %i.cm = load i32, ptr %3, align 8, !tbaa !104
  %i.cn = and i32 %i.cm, -2                       ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i18, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36 ; 3 uses
  %i.cs = trunc i64 %i.cr to i1
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !38

bb.x:                                             ; preds = %bb.w
  %i.ct = add nsw i64 %i.cr, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i16

bb.y:                                             ; preds = %bb.w
  %i.cw = inttoptr i64 %i.cr to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i16

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i16: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i17 = phi ptr [ %i.cw, %bb.y ], [ %i.cv, %bb.x ]
  %i.cx = icmp eq ptr %.0.i.i.i.i.i17, null
  br i1 %i.cx, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i18, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit25

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i18: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i16, %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !31
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 4
  %i.dd = add nsw i64 %i.dc, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #35
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit25

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit25: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i15, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i16, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.de

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit, label %.lr.ph.i.i, !llvm.loop !465

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit: ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i, %bb.a
  br i1 %i.c, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb1EEEvPNS0_5ArenaE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit
  %i.q = load i32, ptr %0, align 8, !tbaa !104
  %i.r = and i32 %i.q, -2                         ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36   ; 3 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.v to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  %i.ab = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ab, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb1EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread: ; preds = %bb.e, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = add nsw i64 %i.ag, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #35
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb1EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb1EEEvPNS0_5ArenaE.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CopyFromERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.i.i.i = select i1 %i.d, ptr %i.e, ptr %i.g  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !463  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx.i = shl nsw i64 %i.j, 4
  %i.k = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %.idx.i
  %.not4.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i ], [ %.0.i.i.i, %bb.b ] ; 3 uses
  %i.l = load i8, ptr %.05.i.i.i, align 1, !tbaa !31
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i)
          to label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !465

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit: ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i, %bb.b
  store i32 0, ptr %i.h, align 4, !tbaa !463
  %i.q = load i32, ptr %1, align 8, !tbaa !104
  %i.r = and i32 %i.q, 1
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !463  ; 5 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit
  %i.v = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.w = and i32 %i.v, -2                         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.e ], [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = and i32 %i.v, 1                         ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i: ; preds = %bb.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i
  %i.ak = phi i32 [ %i.aj, %bb.i ], [ 0, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i.i ]
  %i.al = icmp sgt i32 %i.u, %i.ak
  br i1 %i.al, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i, !prof !38

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef 0, i32 noundef %i.u)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.h, align 4, !tbaa !463
  %.pre15.i = and i32 %.pre.i, 1
  %i.am = sext i32 %.pre14.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.j ]
  %i.an = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i ], [ %i.am, %bb.j ]
  %i.ao = icmp eq i32 %.pre-phi.i, 0
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.0.i.i.i.i = select i1 %i.ao, ptr %i.e, ptr %i.aq
  store i32 %i.u, ptr %i.h, align 4, !tbaa !463
  %i.ar = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.0.i.i.i.i.i = select i1 %i.s, ptr %i.as, ptr %i.au ; 2 uses
  %i.av = sext i32 %i.u to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i.i, i64 %i.av
  %i.ax = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN4absl12lts_202505124CordEPS2_ET0_T_S7_S6_(ptr noundef nonnull %.0.i.i.i.i.i, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ar) ; 0 uses
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE15UnsafeArenaSwapEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %2 = load <12 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  %3 = load <12 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <12 x i8> %2, ptr %i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <12 x i8> %3, ptr %i.j, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741815
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %.thread, !prof !508

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 16                 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %_ZN4absl12lts_202505124CordD2Ev.exit.preheader, label %.loopexit

_ZN4absl12lts_202505124CordD2Ev.exit.preheader:   ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 16 ; 3 uses
  %i.r = zext nneg i32 %3 to i64
  %.idx = shl nuw nsw i64 %i.r, 4                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.0.i.i.i = select i1 %2, ptr %i.t, ptr %i.v    ; 2 uses
  %i.w = add nsw i64 %.idx, -16                   ; 2 uses
  %i.x = lshr exact i64 %i.w, 4
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol

_ZN4absl12lts_202505124CordD2Ev.exit.prol:        ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.preheader, %_ZN4absl12lts_202505124CordD2Ev.exit.prol
  %.039.prol = phi ptr [ %i.aa, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ %.0.i.i.i, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ] ; 3 uses
  %.02638.prol = phi ptr [ %i.z, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ %i.q, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ 0, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02638.prol, ptr noundef nonnull align 8 dereferenceable(16) %.039.prol, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.039.prol, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.02638.prol, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol, !llvm.loop !968

_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit: ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader
  %.039.unr = phi ptr [ %.0.i.i.i, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ], [ %i.aa, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ]
  %.02638.unr = phi ptr [ %i.q, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ], [ %i.z, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ]
  %i.ab = icmp ult i64 %i.w, 48
  br i1 %i.ab, label %.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit

_ZN4absl12lts_202505124CordD2Ev.exit:             ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, %_ZN4absl12lts_202505124CordD2Ev.exit
  %.039 = phi ptr [ %i.aj, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ %.039.unr, %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit ] ; 6 uses
  %.02638 = phi ptr [ %i.ai, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ %.02638.unr, %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02638, ptr noundef nonnull align 8 dereferenceable(16) %.039, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.039, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02638, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.039, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.02638, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.039, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.02638, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.039, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.02638, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.039, i64 64
  %.not.3 = icmp eq ptr %i.ai, %i.s
  br i1 %.not.3, label %.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit, !llvm.loop !969

.loopexit:                                        ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, %_ZN4absl12lts_202505124CordD2Ev.exit, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = add nsw i64 %i.ao, 16                   ; 5 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #35
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !820
  %i.at = load i64, ptr %1, align 8, !tbaa !823
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !849 ; 5 uses
  %i.ax = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.az = sub nuw nsw i64 59, %i.ay               ; 2 uses
  %i.ba = load i8, ptr %i.aw, align 8, !tbaa !850 ; 3 uses
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.az, %i.bb
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.bc = lshr exact i64 %i.ap, 3                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !851 ; 2 uses
  %i.bf = icmp ugt i8 %i.ba, 1
  br i1 %i.bf, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i8 %i.ba, 1
  br i1 %i.bg, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !852
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.i
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.be, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aw, align 8, !tbaa !850
  %i.bi = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.bc, %i.bi
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.k, %bb.j
  %i.bj = phi i64 [ %i.bi, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.k ], [ 0, %bb.j ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.bj, 3      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ap, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bk, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.al, ptr %i.bd, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 64)
  %i.bl = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.bl, ptr %i.aw, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.l:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !851
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.az ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !852
  store ptr %i.bp, ptr %i.al, align 8, !tbaa !854
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a
  store i32 %i.br, ptr %0, align 8, !tbaa !104
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bs, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN4absl12lts_202505124CordEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.j, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 6 uses
  %.01215 = phi ptr [ %i.i, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = load i8, ptr %.01215, align 1, !tbaa !31
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not6.i.i.i = icmp ne ptr %i.d, null
  %.not.not.i.i.i = select i1 %i.b, i1 %.not6.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !31
  store i64 1, ptr %.016, align 8, !tbaa !31
  %i.h = load i64, ptr %.01215, align 8, !tbaa !31
  %.not.i.i.i.i = icmp ult i64 %i.h, 2
  br i1 %.not.i.i.i.i, label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %.016, ptr noundef nonnull align 8 dereferenceable(16) %.01215, i32 noundef 8)
          to label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016, ptr noundef nonnull align 8 dereferenceable(16) %.01215, i64 16, i1 false), !tbaa.struct !322
  br label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !970

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4absl12lts_202505124CordEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #40
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #37
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN4absl12lts_202505124CordEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i
  %.05.i = phi ptr [ %i.e, %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.05.i, align 1, !tbaa !31
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i)
          to label %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !971

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase12SwapFallbackINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::NoDestructor.341", align 8 ; 7 uses
  %5 = alloca %"class.google::protobuf::internal::RepeatedPtrFieldBase", align 8 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = ptrtoint ptr %3 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !36
  store ptr null, ptr %4, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !258
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.d, align 4, !tbaa !502
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !235
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq ptr %2, %0
  br i1 %i.d, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.a, align 8, !tbaa !258
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i

_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !258
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %1)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit: ; preds = %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %5 = load <12 x i8>, ptr %4, align 8, !tbaa !31, !alias.scope !980, !noalias !975
  %6 = load <12 x i8>, ptr %2, align 1, !tbaa !31, !alias.scope !975, !noalias !980
  store <12 x i8> %5, ptr %2, align 1, !tbaa !31, !alias.scope !975, !noalias !980
  store <12 x i8> %6, ptr %4, align 8, !tbaa !31, !alias.scope !980, !noalias !975
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = and i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre13 = add i64 %i.b, -1
  %.pre14 = inttoptr i64 %.pre13 to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !240
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi15 = phi ptr [ %.pre14, %bb.b ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre-phi15, i64 8
  %i.l = select i1 %i.d, ptr %0, ptr %i.k         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.n = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !235
  %.pre16 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre18 = and i64 %.pre16, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.pre-phi19 = phi i64 [ %.pre18, %._crit_edge.loopexit ], [ %i.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge.loopexit ], [ %i.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.o = icmp eq i64 %.pre-phi19, 0
  br i1 %i.o, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit ] ; 3 uses
  %i.p = add nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !250  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !31
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #39
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !981

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.ab = add nsw i64 %.pre-phi17, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !238
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #35
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %._crit_edge
  ret void
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf8internal12MapFieldBase4SwapEPNS0_5ArenaEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase12SwapFallbackINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::NoDestructor.341", align 8 ; 7 uses
  %5 = alloca %"class.google::protobuf::internal::RepeatedPtrFieldBase", align 8 ; 7 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = ptrtoint ptr %3 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !36
  store ptr null, ptr %4, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !258
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.d, align 4, !tbaa !502
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !235    ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i: ; preds = %bb.d
  %i.i = add nsw i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !240  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph.preheader.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i
  %i.o = phi ptr [ %i.m, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ], [ %5, %bb.d ] ; 2 uses
  %i.p = phi i32 [ %i.l, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ], [ 1, %bb.d ]
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !235
  %.pre16.i = ptrtoint ptr %.pre.i to i64         ; 2 uses
  %.pre18.i = and i64 %.pre16.i, 1
  %i.r = icmp eq i64 %.pre18.i, 0
  br i1 %i.r, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit, label %._crit_edge.i._ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i_crit_edge

._crit_edge.i._ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i_crit_edge: ; preds = %._crit_edge.i
  %.pre = add nsw i64 %.pre16.i, -1
  %.pre14 = inttoptr i64 %.pre to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %i.s = add nuw nsw i64 %indvars.iv.i, 5         ; 2 uses
  %i.t = icmp samesign ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.e, label %.noexc

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 0, i32 1)
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %.lr.ph.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  call void @_ZN6google8protobuf8internal34InternalOutOfLineDeleteMessageLiteEPNS0_11MessageLiteE(ptr noundef %i.x)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !982

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i: ; preds = %._crit_edge.i._ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i_crit_edge, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i
  %.pre-phi15 = phi ptr [ %.pre14, %._crit_edge.i._ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i_crit_edge ], [ %i.j, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ] ; 2 uses
  %i.y = load i32, ptr %.pre-phi15, align 8, !tbaa !238
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = add nsw i64 %i.aa, 8
  call void @_ZdlPvm(ptr noundef nonnull %.pre-phi15, i64 noundef %i.ab) #35
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i, %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPS2_S8_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_11MessageLiteEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq ptr %2, %0
  br i1 %i.d, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINS0_7MessageEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.a, align 8, !tbaa !258
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit.i

_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit.i: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !258
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINS0_7MessageEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit.i
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_11MessageLiteEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %1)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINS0_7MessageEEEEEvRKS2_PNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINS0_7MessageEEEEEvRKS2_PNS0_5ArenaE.exit: ; preds = %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINS0_7MessageEEEEEvv.exit.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %5 = load <12 x i8>, ptr %4, align 8, !tbaa !31, !alias.scope !991, !noalias !986
  %6 = load <12 x i8>, ptr %2, align 1, !tbaa !31, !alias.scope !986, !noalias !991
  store <12 x i8> %5, ptr %2, align 1, !tbaa !31, !alias.scope !986, !noalias !991
  store <12 x i8> %6, ptr %4, align 8, !tbaa !31, !alias.scope !991, !noalias !986
  ret void
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_11MessageLiteEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf8internal34InternalOutOfLineDeleteMessageLiteEPNS0_11MessageLiteE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper18SwapInlinedStringsILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i = load i8, ptr %.phi.trans.insert17.i, align 1 ; 2 uses
  %.pre53 = and i8 %.pre18.i, 8                   ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.a

bb.a:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.not.i.i.i = icmp eq i8 %.pre53, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.c:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.c, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.b
  %.sink7.in.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.f, %bb.b ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.m = ptrtoint ptr %3 to i64
  %i.n = ptrtoint ptr %.sink7.i.i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %.0.in.i.i.i = sdiv exact i64 %i.o, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 30
  %i.q = getelementptr inbounds i8, ptr %.pre.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.t = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !99
  %.pre.i21.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i23.pre = load i8, ptr %.phi.trans.insert17.i, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre53, 0
  br i1 %.not.i.i8.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.y, null
  br i1 %.not1.i.i10.i, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i

bb.f:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.f, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.e
  %.sink7.in.i.i13.i = phi ptr [ %i.ac, %bb.f ], [ %i.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.w, %bb.e ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.ad = ptrtoint ptr %3 to i64
  %i.ae = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.0.in.i.i15.i = sdiv exact i64 %i.af, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.ag = ashr exact i64 %sext.i16.i, 30
  %i.ah = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = and i32 %i.ai, 2147483640
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i23 = phi i8 [ %.pre18.i23.pre, %bb.d ], [ %.pre18.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i21 = phi ptr [ %.pre.i21.pre, %bb.d ], [ %.pre.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.am = phi i32 [ %.pre, %bb.d ], [ %i.c, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.t, %bb.d ], [ %i.al, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 3 uses
  %.not.i.i19 = icmp eq i32 %i.am, -1
  %.pre54 = and i8 %.pre18.i23, 8                 ; 2 uses
  br i1 %.not.i.i19, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i33, label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i24 = icmp eq i8 %.pre54, 0
  br i1 %.not.i.i.i24, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i26 = icmp eq ptr %i.ar, null
  br i1 %.not1.i.i.i26, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

bb.i:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i25
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28: ; preds = %bb.i, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27, %bb.h
  %.sink7.in.i.i.i29 = phi ptr [ %i.av, %bb.i ], [ %i.as, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i27 ], [ %i.ap, %bb.h ]
  %.sink7.i.i.i30 = load ptr, ptr %.sink7.in.i.i.i29, align 8, !tbaa !33
  %i.aw = ptrtoint ptr %3 to i64
  %i.ax = ptrtoint ptr %.sink7.i.i.i30 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.0.in.i.i.i31 = sdiv exact i64 %i.ay, 88
  %sext.i.i32 = shl i64 %.0.in.i.i.i31, 32
  %i.az = ashr exact i64 %sext.i.i32, 30
  %i.ba = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i33, !prof !103

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %i.bd = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit44

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i33: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal18InlinedStringFieldEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i28
  %.not.i.i8.i34 = icmp eq i8 %.pre54, 0
  br i1 %.not.i.i8.i34, label %bb.k, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i35

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i33
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i38

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i35: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i33
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i36 = icmp eq ptr %i.bi, null
  br i1 %.not1.i.i10.i36, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i37

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i37: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i38

bb.l:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i35
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i38

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_18InlinedStringFieldEEEjPKNS0_15FieldDescriptorE.exit.i38: ; preds = %bb.l, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i37, %bb.k
  %.sink7.in.i.i13.i39 = phi ptr [ %i.bm, %bb.l ], [ %i.bj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i37 ], [ %i.bg, %bb.k ]
  %.sink7.i.i14.i40 = load ptr, ptr %.sink7.in.i.i13.i39, align 8, !tbaa !33
  %i.bn = ptrtoint ptr %3 to i64
  %i.bo = ptrtoint ptr %.sink7.i.i14.i40 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %.0.in.i.i15.i41 = sdiv exact i64 %i.bp, 88
  %sext.i16.i42 = shl i64 %.0.in.i.i15.i41, 32
  %i.bq = ashr exact i64 %sext.i16.i42, 30
  %i.br = getelementptr inbounds i8, ptr %.pre.i21, i64 %i.bq
end_hunk_6
