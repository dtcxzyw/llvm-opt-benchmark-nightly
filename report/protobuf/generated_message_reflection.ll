inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i64, i64 16, i1 false), !tbaa.struct !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i64, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

bb.o:                                             ; preds = %bb.a, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cc = and i8 %i.cb, 8
  %.not.i.i.i66 = icmp eq i8 %i.cc, 0             ; 4 uses
  br i1 %.not.i.i.i66, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i67

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i67: ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i68 = icmp eq ptr %i.ch, null
  br i1 %.not1.i.i.i68, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i69

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i69: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

bb.q:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i67
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i69, %bb.p
  %.sink7.in.i.i.i70 = phi ptr [ %i.cl, %bb.q ], [ %i.ci, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i69 ], [ %i.cf, %bb.p ]
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !96
  switch i8 %i.cn, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit.thread [
    i8 12, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
    i8 9, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  ]

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.co = ptrtoint ptr %3 to i64
  %.sink7.i.i.i71 = load ptr, ptr %.sink7.in.i.i.i70, align 8, !tbaa !33
  %i.cp = ptrtoint ptr %.sink7.i.i.i71 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.0.in.i.i.i72 = sdiv exact i64 %i.cq, 88
  %sext.i.i73 = shl i64 %.0.in.i.i.i72, 32
  %i.cr = ashr exact i64 %sext.i.i73, 30
  %i.cs = getelementptr inbounds i8, ptr %i.bz, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit.thread

bb.r:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper18SwapInlinedStringsILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i.i66, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i75

bb.s:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !101
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i75: ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i76 = icmp eq ptr %i.cz, null
  br i1 %.not1.i.i.i76, label %bb.t, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i77

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i77: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i75
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.t:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i75
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !102
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 136
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i77, %bb.t
  %.sink7.in.i.i.i78 = phi ptr [ %i.dd, %bb.t ], [ %i.da, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i77 ], [ %i.cx, %bb.s ]
  %.sink7.i.i.i79 = load ptr, ptr %.sink7.in.i.i.i78, align 8, !tbaa !33
  %i.de = ptrtoint ptr %3 to i64                  ; 5 uses
  %i.df = ptrtoint ptr %.sink7.i.i.i79 to i64
  %i.dg = sub i64 %i.de, %i.df
  %.0.in.i.i.i80 = sdiv exact i64 %i.dg, 88
  %sext.i.i81 = shl i64 %.0.in.i.i.i80, 32
  %i.dh = ashr exact i64 %sext.i.i81, 30
  %i.di = getelementptr inbounds i8, ptr %i.bz, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = and i32 %i.dj, 2
  %.not = icmp eq i32 %i.dk, 0
  br i1 %.not, label %bb.as, label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !99 ; 2 uses
  %.not.i.i82 = icmp eq i32 %i.dm, -1
  br i1 %.not.i.i82, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i96, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i.i.i66, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i88

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i88: ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i89 = icmp eq ptr %i.dr, null
  br i1 %.not1.i.i.i89, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i90

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i90: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91

bb.x:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i88
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !102
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91: ; preds = %bb.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i90, %bb.w
  %.sink7.in.i.i.i92 = phi ptr [ %i.dv, %bb.x ], [ %i.ds, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i90 ], [ %i.dp, %bb.w ]
  %.sink7.i.i.i93 = load ptr, ptr %.sink7.in.i.i.i92, align 8, !tbaa !33
  %i.dw = ptrtoint ptr %.sink7.i.i.i93 to i64
  %i.dx = sub i64 %i.de, %i.dw
  %.0.in.i.i.i94 = sdiv exact i64 %i.dx, 88
  %sext.i.i95 = shl i64 %.0.in.i.i.i94, 32
  %i.dy = ashr exact i64 %sext.i.i95, 30
  %i.dz = getelementptr inbounds i8, ptr %i.bz, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %bb.y, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i96, !prof !103

bb.y:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91
  %i.ec = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.dl, align 4, !tbaa !99
  %.pre.i108.pre = load ptr, ptr %i.by, align 8, !tbaa !100
  %.pre18.i110.pre = load i8, ptr %i.ca, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i96: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i91, %bb.u
  br i1 %.not.i.i.i66, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i98

bb.z:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i96
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i98: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i96
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i99 = icmp eq ptr %i.eh, null
  br i1 %.not1.i.i10.i99, label %bb.aa, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i100

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i100: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i98
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

bb.aa:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i98
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !102
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.aa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i100, %bb.z
  %.sink7.in.i.i13.i101 = phi ptr [ %i.el, %bb.aa ], [ %i.ei, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i100 ], [ %i.ef, %bb.z ]
  %.sink7.i.i14.i102 = load ptr, ptr %.sink7.in.i.i13.i101, align 8, !tbaa !33
  %i.em = ptrtoint ptr %.sink7.i.i14.i102 to i64
  %i.en = sub i64 %i.de, %i.em
  %.0.in.i.i15.i103 = sdiv exact i64 %i.en, 88
  %sext.i16.i104 = shl i64 %.0.in.i.i15.i103, 32
  %i.eo = ashr exact i64 %sext.i16.i104, 30
  %i.ep = getelementptr inbounds i8, ptr %i.bz, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = and i32 %i.eq, 2147483640
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.y, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i110 = phi i8 [ %.pre18.i110.pre, %bb.y ], [ %i.cb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i108 = phi ptr [ %.pre.i108.pre, %bb.y ], [ %i.bz, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.eu = phi i32 [ %.pre, %bb.y ], [ %i.dm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i105 = phi ptr [ %i.ec, %bb.y ], [ %i.et, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 17 uses
  %.0.i105159 = ptrtoaddr ptr %.0.i105 to i64     ; 2 uses
  %.not.i.i106 = icmp eq i32 %i.eu, -1
  %.pre148 = and i8 %.pre18.i110, 8               ; 2 uses
  br i1 %.not.i.i106, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i120, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i111 = icmp eq i8 %.pre148, 0
  br i1 %.not.i.i.i111, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112

bb.ac:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !101
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112: ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i113 = icmp eq ptr %i.ez, null
  br i1 %.not1.i.i.i113, label %bb.ad, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115

bb.ad:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !102
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115: ; preds = %bb.ad, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114, %bb.ac
  %.sink7.in.i.i.i116 = phi ptr [ %i.fd, %bb.ad ], [ %i.fa, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114 ], [ %i.ex, %bb.ac ]
  %.sink7.i.i.i117 = load ptr, ptr %.sink7.in.i.i.i116, align 8, !tbaa !33
  %i.fe = ptrtoint ptr %.sink7.i.i.i117 to i64
  %i.ff = sub i64 %i.de, %i.fe
  %.0.in.i.i.i118 = sdiv exact i64 %i.ff, 88
  %sext.i.i119 = shl i64 %.0.in.i.i.i118, 32
  %i.fg = ashr exact i64 %sext.i.i119, 30
  %i.fh = getelementptr inbounds i8, ptr %.pre.i108, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.ae, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i120, !prof !103

bb.ae:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115
  %i.fk = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit131

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i120: ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i115
  %.not.i.i8.i121 = icmp eq i8 %.pre148, 0
  br i1 %.not.i.i8.i121, label %bb.af, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i122

bb.af:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i120
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !101
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i122: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i120
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i123 = icmp eq ptr %i.fp, null
  br i1 %.not1.i.i10.i123, label %bb.ag, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i124

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i124: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i122
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125

bb.ag:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i122
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !102
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125: ; preds = %bb.ag, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i124, %bb.af
  %.sink7.in.i.i13.i126 = phi ptr [ %i.ft, %bb.ag ], [ %i.fq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i124 ], [ %i.fn, %bb.af ]
  %.sink7.i.i14.i127 = load ptr, ptr %.sink7.in.i.i13.i126, align 8, !tbaa !33
  %i.fu = ptrtoint ptr %.sink7.i.i14.i127 to i64
  %i.fv = sub i64 %i.de, %i.fu
  %.0.in.i.i15.i128 = sdiv exact i64 %i.fv, 88
  %sext.i16.i129 = shl i64 %.0.in.i.i15.i128, 32
  %i.fw = ashr exact i64 %sext.i16.i129, 30
  %i.fx = getelementptr inbounds i8, ptr %.pre.i108, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = and i32 %i.fy, 2147483640
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ga
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit131

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit131: ; preds = %bb.ae, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125
  %.0.i130 = phi ptr [ %i.fk, %bb.ae ], [ %i.gb, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_11MicroStringEEEjPKNS0_15FieldDescriptorE.exit.i125 ] ; 17 uses
  %.0.i130160 = ptrtoaddr ptr %.0.i130 to i64     ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !36 ; 3 uses
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %bb.ah, label %bb.ai, !prof !38

bb.ah:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit131
  %i.gf = add nsw i64 %i.gd, -1
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.ai:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal11MicroStringEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit131
  %i.gi = inttoptr i64 %i.gd to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.ah, %bb.ai
  %.0.i.i = phi ptr [ %i.gh, %bb.ah ], [ %i.gi, %bb.ai ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !36 ; 3 uses
  %i.gl = trunc i64 %i.gk to i1
  br i1 %i.gl, label %bb.aj, label %bb.ak, !prof !38

bb.aj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.gm = add nsw i64 %i.gk, -1
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit133

bb.ak:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.gp = inttoptr i64 %i.gk to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit133

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit133: ; preds = %bb.aj, %bb.ak
  %.0.i.i132 = phi ptr [ %i.go, %bb.aj ], [ %i.gp, %bb.ak ] ; 3 uses
  %i.gq = icmp eq ptr %.0.i.i, %.0.i.i132
  br i1 %i.gq, label %.lr.ph.i.i.preheader, label %bb.al

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit133
  %i.gr = add i64 %.0.i105159, 8
  %i.gs = add i64 %.0.i130160, 8
  %rt.bound0 = icmp ugt i64 %i.gs, %.0.i105159
  %rt.bound1 = icmp ugt i64 %i.gr, %.0.i130160
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.i.i.preheader.rtscalar, label %.lr.ph.i.i.preheader.rtvec

bb.al:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr null, ptr %4, align 8, !tbaa !265
  %i.gt = load ptr, ptr %.0.i105, align 8
  %i.gu = ptrtoint ptr %i.gt to i64               ; 3 uses
  %i.gv = and i64 %i.gu, 3
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i64 %i.gu, ptr %4, align 8, !tbaa !94
  br label %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit

bb.an:                                            ; preds = %bb.al
  call void @_ZN6google8protobuf8internal11MicroString16SetFromOtherSlowERKS2_PNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %.0.i105, ptr noundef %.0.i.i132, i64 noundef 7)
  %.pre139 = load ptr, ptr %.0.i105, align 8, !tbaa !265
  %.pre143 = ptrtoint ptr %.pre139 to i64
  br label %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit

_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit: ; preds = %bb.am, %bb.an
  %.pre-phi = phi i64 [ %i.gu, %bb.am ], [ %.pre143, %bb.an ]
  %i.gx = load ptr, ptr %.0.i130, align 8
  %i.gy = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.gz = or i64 %.pre-phi, %i.gy
  %i.ha = and i64 %i.gz, 3
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit
  store i64 %i.gy, ptr %.0.i105, align 8, !tbaa !94
  br label %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit135

bb.ap:                                            ; preds = %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit
  call void @_ZN6google8protobuf8internal11MicroString16SetFromOtherSlowERKS2_PNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %.0.i105, ptr noundef nonnull align 8 dereferenceable(8) %.0.i130, ptr noundef %.0.i.i, i64 noundef 7)
  br label %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit135

_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit135: ; preds = %bb.ao, %bb.ap
  %i.hc = icmp eq ptr %.0.i.i132, null
  br i1 %i.hc, label %bb.aq, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.aq:                                            ; preds = %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit135
  %i.hd = load ptr, ptr %.0.i130, align 8, !tbaa !265
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, 3
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %.0.i130)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

_ZN6google8protobuf8internal11MicroString7DestroyEv.exit: ; preds = %bb.ar, %bb.aq, %_ZN6google8protobuf8internal11MicroString3SetERKS2_PNS0_5ArenaE.exit135
  %i.hh = load i64, ptr %4, align 8, !tbaa !94
  store i64 %i.hh, ptr %.0.i130, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

bb.as:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper21SwapNonInlinedStringsILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit: ; preds = %.lr.ph.i.i.preheader.rtvec, %.lr.ph.i.i.preheader.rtscalar, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, %bb.r, %bb.as, %_ZNK6google8protobuf10Reflection10MutableRawIN4absl12lts_202505124CordEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit65, %bb.a
  ret void

.lr.ph.i.i.preheader.rtvec:                       ; preds = %.lr.ph.i.i.preheader
  %5 = load <8 x i8>, ptr %.0.i130, align 1, !tbaa !31
  %i.hi = load <8 x i8>, ptr %.0.i105, align 1, !tbaa !31
  store <8 x i8> %5, ptr %.0.i105, align 1, !tbaa !31
  store <8 x i8> %i.hi, ptr %.0.i130, align 1, !tbaa !31
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

.lr.ph.i.i.preheader.rtscalar:                    ; preds = %.lr.ph.i.i.preheader
  %i.hj = load i8, ptr %.0.i105, align 1, !tbaa !31
  %i.hk = load i8, ptr %.0.i130, align 1, !tbaa !31
  store i8 %i.hk, ptr %.0.i105, align 1, !tbaa !31
  store i8 %i.hj, ptr %.0.i130, align 1, !tbaa !31
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1 ; 2 uses
  %.079.i.i.ptr.1.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 1 ; 2 uses
  %i.hm = load i8, ptr %.079.i.i.ptr.1.scalar, align 1, !tbaa !31
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !31
  store i8 %i.hn, ptr %.079.i.i.ptr.1.scalar, align 1, !tbaa !31
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !31
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i130, i64 2 ; 2 uses
  %.079.i.i.ptr.2.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 2 ; 2 uses
  %i.hp = load i8, ptr %.079.i.i.ptr.2.scalar, align 1, !tbaa !31
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !31
  store i8 %i.hq, ptr %.079.i.i.ptr.2.scalar, align 1, !tbaa !31
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i130, i64 3 ; 2 uses
  %.079.i.i.ptr.3.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 3 ; 2 uses
  %i.hs = load i8, ptr %.079.i.i.ptr.3.scalar, align 1, !tbaa !31
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !31
  store i8 %i.ht, ptr %.079.i.i.ptr.3.scalar, align 1, !tbaa !31
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i130, i64 4 ; 2 uses
  %.079.i.i.ptr.4.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 4 ; 2 uses
  %i.hv = load i8, ptr %.079.i.i.ptr.4.scalar, align 1, !tbaa !31
  %i.hw = load i8, ptr %i.hu, align 1, !tbaa !31
  store i8 %i.hw, ptr %.079.i.i.ptr.4.scalar, align 1, !tbaa !31
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !31
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i130, i64 5 ; 2 uses
  %.079.i.i.ptr.5.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 5 ; 2 uses
  %i.hy = load i8, ptr %.079.i.i.ptr.5.scalar, align 1, !tbaa !31
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !31
  store i8 %i.hz, ptr %.079.i.i.ptr.5.scalar, align 1, !tbaa !31
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !31
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i130, i64 6 ; 2 uses
  %.079.i.i.ptr.6.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 6 ; 2 uses
  %i.ib = load i8, ptr %.079.i.i.ptr.6.scalar, align 1, !tbaa !31
  %i.ic = load i8, ptr %i.ia, align 1, !tbaa !31
  store i8 %i.ic, ptr %.079.i.i.ptr.6.scalar, align 1, !tbaa !31
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i130, i64 7 ; 2 uses
  %.079.i.i.ptr.7.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 7 ; 2 uses
  %i.ie = load i8, ptr %.079.i.i.ptr.7.scalar, align 1, !tbaa !31
  %i.if = load i8, ptr %i.id, align 1, !tbaa !31
  store i8 %i.if, ptr %.079.i.i.ptr.7.scalar, align 1, !tbaa !31
  store i8 %i.ie, ptr %i.id, align 1, !tbaa !31
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb1EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.pre18.i = load i8, ptr %.phi.trans.insert17.i, align 1 ; 2 uses
  %.pre34 = and i8 %.pre18.i, 8                   ; 2 uses
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i8 %.pre34, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not1.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.d, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.c
  %.sink7.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.e, %bb.c ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.l = ptrtoint ptr %3 to i64
  %i.m = ptrtoint ptr %.sink7.i.i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %.0.in.i.i.i = sdiv exact i64 %i.n, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.o = ashr exact i64 %sext.i.i, 30
  %i.p = getelementptr inbounds i8, ptr %.pre.i, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.s = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %3)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !99
  %.pre.i8.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100
  %.pre18.i10.pre = load i8, ptr %.phi.trans.insert17.i, align 1
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.a, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre34, 0
  br i1 %.not.i.i8.i, label %bb.f, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i10.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

bb.g:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.f
  %.sink7.in.i.i13.i = phi ptr [ %i.ab, %bb.g ], [ %i.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.v, %bb.f ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.0.in.i.i15.i = sdiv exact i64 %i.ae, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.af = ashr exact i64 %sext.i16.i, 30
  %i.ag = getelementptr inbounds i8, ptr %.pre.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = and i32 %i.ah, 2147483640
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  br label %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i
  %.pre18.i10 = phi i8 [ %.pre18.i10.pre, %bb.e ], [ %.pre18.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.pre.i8 = phi ptr [ %.pre.i8.pre, %bb.e ], [ %.pre.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %i.al = phi i32 [ %.pre, %bb.e ], [ %i.b, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %i.ak, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIPNS0_7MessageEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 2 uses
  %.not.i.i6 = icmp eq i32 %i.al, -1
  %.pre35 = and i8 %.pre18.i10, 8                 ; 2 uses
  br i1 %.not.i.i6, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i20, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf10Reflection10MutableRawIPNS0_7MessageEEEPT_S4_PKNS0_15FieldDescriptorE.exit
  %.not.i.i.i11 = icmp eq i8 %.pre35, 0
  br i1 %.not.i.i.i11, label %bb.i, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i15

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not1.i.i.i13, label %bb.j, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i15

bb.j:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i12
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i15

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i15: ; preds = %bb.j, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14, %bb.i
  %.sink7.in.i.i.i16 = phi ptr [ %i.au, %bb.j ], [ %i.ar, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i14 ], [ %i.ao, %bb.i ]
  %.sink7.i.i.i17 = load ptr, ptr %.sink7.in.i.i.i16, align 8, !tbaa !33
  %i.av = ptrtoint ptr %3 to i64
  %i.aw = ptrtoint ptr %.sink7.i.i.i17 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.0.in.i.i.i18 = sdiv exact i64 %i.ax, 88
  %sext.i.i19 = shl i64 %.0.in.i.i.i18, 32
  %i.ay = ashr exact i64 %sext.i.i19, 30
  %i.az = getelementptr inbounds i8, ptr %.pre.i8, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
end_hunk_0
